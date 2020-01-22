package com.hqgml.sign.handler;

import cn.hutool.core.date.DateUtil;
import com.alibaba.fastjson.JSON;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.servce.impl.SysUserServiceImpl;
import com.hqgml.sign.utlis.AddressUtils;
import com.hqgml.sign.utlis.CookieUtils;
import com.hqgml.sign.utlis.JsonWriteUtlis;
import com.hqgml.sign.utlis.annotation.ControllerLog;
import com.hqgml.sign.utlis.annotation.ServiceLog;
import com.hqgml.sign.utlis.result.pojo.JsonResult;
import com.hqgml.sign.utlis.result.utils.ResultTool;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author Devil
 * @date 2020/1/5 16:48
 * 自定义登录的处理的逻辑
 */
@Component
@Slf4j
public class CustomizeAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

    @Autowired
    private SysUserServiceImpl userService;

    @ControllerLog(describe = "用户登录")
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        String rememember = request.getParameter("remember-me");
        if (StringUtils.isNotBlank(rememember)){
          log.info("用户选择了记住我");
            Cookie cookie = new Cookie("remember", "true");
            cookie.setPath("/");
            cookie.setDomain("wukaka.com");
            cookie.setMaxAge(60*60*24*7);
            response.addCookie(cookie);
        }
        HttpSession session = request.getSession();
        /**
         * 通过这个方法可以获取存在与security容器里面的security对象
         * 根据用户名
         */
        User userDetails = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        SysUser sysUser = userService.findUserByUserName(userDetails.getUsername());
        String now = DateUtil.now();
        String address = AddressUtils.GetAddress(request);
        userService.updateLastimeByUserName(now, sysUser.getUsername());
        session.setAttribute("address", sysUser.getAddress());
        session.setAttribute("lastaddress", sysUser.getLasttime());
        userService.updateLastimeByUserName(now, sysUser.getUsername());
        userService.updateLastAddressByUserName(address, sysUser.getUsername());
        //这里还可以进行其他的逻辑处理
        CookieUtils.setCookie(request, response, "username", sysUser.getUsername());
        JsonWriteUtlis.success(response);
    }
}
