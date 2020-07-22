package com.hqgml.sign.others.handler;

import com.hqgml.sign.others.pojo.RedisProperties;
import com.hqgml.sign.others.utlis.CookieUtils;
import com.hqgml.sign.others.utlis.JsonWriteUtlis;
import com.hqgml.sign.others.annotation.ControllerLog;
import com.hqgml.sign.others.utlis.UserUtils;
import com.hqgml.sign.pojo.SysUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Devil
 * @date 2020/1/5 20:55
 * 登出成功
 */
@Component
public class CustomizeLogoutSuccessHandler implements LogoutSuccessHandler {


    @Autowired
    private StringRedisTemplate stringRedisTemplate;


    @Autowired
    private RedisProperties redisProperties;


    @ControllerLog(describe = "用户退出登录")
    @Override
    public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        SysUser sysUser = UserUtils.getUserByToken(request);
        stringRedisTemplate.delete(redisProperties.getTokenPre()+sysUser.getId());
        JsonWriteUtlis.success(response);
    }
}
