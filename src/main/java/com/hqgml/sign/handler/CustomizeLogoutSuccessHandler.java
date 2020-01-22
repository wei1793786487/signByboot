package com.hqgml.sign.handler;

import com.hqgml.sign.utlis.CookieUtils;
import com.hqgml.sign.utlis.JsonWriteUtlis;
import com.hqgml.sign.utlis.annotation.ServiceLog;
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
    @ServiceLog(describe = "用户退出登录")

    @Override
    public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        CookieUtils.deleteCookie(request,response,"username");
        CookieUtils.deleteCookie(request,response,"remember");
        JsonWriteUtlis.success(response);
    }
}
