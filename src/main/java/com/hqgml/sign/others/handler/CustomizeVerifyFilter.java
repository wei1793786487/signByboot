package com.hqgml.sign.others.handler;

import com.hqgml.sign.others.jwt.JwtUtils;
import com.hqgml.sign.others.pojo.JwtProperties;
import com.hqgml.sign.others.pojo.Payload;
import com.hqgml.sign.others.result.enums.ResultCode;
import com.hqgml.sign.others.result.pojo.JsonResult;
import com.hqgml.sign.others.result.utils.ResultTool;
import com.hqgml.sign.others.utlis.JsonWriteUtlis;
import com.hqgml.sign.pojo.SysUser;
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

/**
 * @author Devil
 * @date 2020/4/15 12:39
 * 登录认证的过滤器
 */
public class CustomizeVerifyFilter extends BasicAuthenticationFilter {
    private final JwtProperties jwtProperties;

    public CustomizeVerifyFilter(AuthenticationManager authenticationManager, JwtProperties jwtProperties) {
        super(authenticationManager);
        this.jwtProperties = jwtProperties;
    }


    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
        String header = request.getHeader(jwtProperties.getTokenName());
        if (header == null || !header.startsWith(jwtProperties.getPreToken())) {
            //如果携带的是错误的token 那么返回错误
            chain.doFilter(request, response);
            JsonResult result = ResultTool.fail(ResultCode.USER_NOT_LOGIN);
            JsonWriteUtlis.fail(request, response, result);
        } else {
        //正确格式的token
            String token = header.replace(jwtProperties.getPreToken(), "");
            try {
                Payload<SysUser> payload = JwtUtils.getInfoFromToken(token, jwtProperties.getPublicKey(), SysUser.class);
                SysUser userInfo = payload.getUserInfo();
                UsernamePasswordAuthenticationToken auth=new UsernamePasswordAuthenticationToken(userInfo.getUsername(),userInfo.getPassword(),userInfo.getRoles());
                SecurityContextHolder.getContext().setAuthentication(auth);
            } catch (Exception e) {
                e.printStackTrace();
                JsonResult result = ResultTool.fail(ResultCode.TOKEN_ERROR);
                JsonWriteUtlis.fail(request, response, result);
            }
            chain.doFilter(request, response);
        }

    }
}
