package com.hqgml.sign.others.handler;

import com.alibaba.fastjson.JSON;
import com.hqgml.sign.others.jwt.JwtUtils;
import com.hqgml.sign.others.pojo.JwtProperties;
import com.hqgml.sign.others.pojo.Payload;
import com.hqgml.sign.others.pojo.RedisProperties;
import com.hqgml.sign.others.result.enums.ResultCode;
import com.hqgml.sign.others.result.pojo.JsonResult;
import com.hqgml.sign.others.result.utils.ResultTool;
import com.hqgml.sign.others.utlis.JsonWriteUtlis;
import com.hqgml.sign.others.utlis.TimeUtils;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.pojo.VxUser;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/**
 * @author Devil
 * @date 2020/4/15 12:39
 * 登录认证的过滤器
 */
@SuppressWarnings("all")
public class CustomizeVerifyFilter extends BasicAuthenticationFilter {

    private static final Logger logger = LoggerFactory.getLogger(CustomizeVerifyFilter.class);
    private final JwtProperties jwtProperties;
    private final StringRedisTemplate redisTemplate;
    private final RedisProperties redisProperties;

    public CustomizeVerifyFilter(AuthenticationManager authenticationManager, JwtProperties jwtProperties, StringRedisTemplate redisTemplate, RedisProperties redisProperties) {
        super(authenticationManager);
        this.jwtProperties = jwtProperties;
        this.redisTemplate = redisTemplate;
        this.redisProperties = redisProperties;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
        String header = request.getHeader(jwtProperties.getTokenName());
        String vxheader = request.getHeader(jwtProperties.getPrevxToken());

        if (header == null && vxheader == null ) {
            chain.doFilter(request, response);
        } else if (!header.startsWith(jwtProperties.getPreToken())&&!vxheader.startsWith(jwtProperties.getPrevxToken())) {
     //如果携带的是错误的token 进行下面过滤器 说明也不是vx用户
            chain.doFilter(request, response);
        } else {
            //如果这两个都存在 也说明登录错误
            if (header != null && vxheader != null) {
                chain.doFilter(request, response);
            }
            if (header != null) {
                //客户端
                //正确格式的token
                String token = header.replace(jwtProperties.getPreToken(), "");
                try {
                    Payload<SysUser> payload = JwtUtils.getInfoFromToken(token, jwtProperties.getPublicKey(), SysUser.class);
                    SysUser userInfo = payload.getUserInfo();
                    UsernamePasswordAuthenticationToken auth = new UsernamePasswordAuthenticationToken(userInfo.getUsername(), userInfo.getPassword(), userInfo.getRoles());
                    SecurityContextHolder.getContext().setAuthentication(auth);
                    //没有问题之后再放行过滤器
                    chain.doFilter(request, response);
                } catch (Exception e) {
                    //如果是时间过期的异常的话
                    if (e instanceof ExpiredJwtException) {
                        Claims claims = ((ExpiredJwtException) e).getClaims();
                        String userString = claims.get("user", String.class);
                        SysUser user = JSON.parseObject(userString, SysUser.class);

                        //如果过期了 那么看看redis里面有没有缓存
                        String refresh = redisTemplate.opsForValue().get(redisProperties.getTokenPre() + user.getId());
                        Boolean isoverTime = TimeUtils.CalculateTime(user.getLasttime(), redisProperties.getDisparity());
                        if (refresh != null && isoverTime) {
                            //如果redis里面有缓存的话并且没有超过一定时间没有登录，那么生成新的token.
                            String newToken = JwtUtils.generateTokenExpireInMinutes(user, jwtProperties.getPrivateKey(), jwtProperties.getExpire());
                            JsonResult result = ResultTool.fail(ResultCode.TOKEN_REFRESH, newToken);
                            JsonWriteUtlis.fail(request, response, result);
                        } else {
                            JsonResult result = ResultTool.fail(ResultCode.USER_ACCOUNT_EXPIRED);
                            JsonWriteUtlis.fail(request, response, result);
                        }
                    } else {
                        JsonResult result = ResultTool.fail(ResultCode.TOKEN_ERROR);
                        JsonWriteUtlis.fail(request, response, result);
                    }
                }
            }
            if (vxheader != null) {
                //微信小程序
                String token = header.replace(jwtProperties.getPrevxToken(), "");
                try {
                    Payload<VxUser> vxUer = JwtUtils.getInfoFromToken(token, jwtProperties.getPublicKey(), VxUser.class);
                    VxUser vxUser = vxUer.getUserInfo();
                    UsernamePasswordAuthenticationToken auth = new UsernamePasswordAuthenticationToken(vxUser.getOpenid(), null, null);
                    SecurityContextHolder.getContext().setAuthentication(auth);
                    //没有问题之后再放行过滤器
                    chain.doFilter(request, response);
                } catch (Exception e) {
                    //如果是时间过期的异常的话
                    if (e instanceof ExpiredJwtException) {
                        Claims claims = ((ExpiredJwtException) e).getClaims();
                        String userString = claims.get("user", String.class);
                        VxUser vxUser = JSON.parseObject(userString, VxUser.class);
                        String vxRefresh = redisTemplate.opsForValue().get(redisProperties.getTokenPre() + "vx" + vxUser.getId());
                        if (vxRefresh != null) {
                            String newToken = JwtUtils.generateTokenExpireInMinutes(vxUser, jwtProperties.getPrivateKey(), jwtProperties.getExpire());
                            JsonResult result = ResultTool.fail(ResultCode.TOKEN_REFRESH, newToken);
                            JsonWriteUtlis.fail(request, response, result);
                        } else {
                            JsonResult result = ResultTool.fail(ResultCode.USER_ACCOUNT_EXPIRED);
                            JsonWriteUtlis.fail(request, response, result);
                        }
                    } else {
                        JsonResult result = ResultTool.fail(ResultCode.TOKEN_ERROR);
                        JsonWriteUtlis.fail(request, response, result);
                    }
                }
            }

        }
    }
}
