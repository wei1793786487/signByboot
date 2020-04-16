package com.hqgml.sign.others.handler;

import cn.hutool.core.date.DateUtil;
import com.hqgml.sign.others.jwt.JwtUtils;
import com.hqgml.sign.others.pojo.JwtProperties;
import com.hqgml.sign.pojo.Role;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.servce.impl.SysUserServiceImpl;
import com.hqgml.sign.others.utlis.AddressUtils;
import com.hqgml.sign.others.utlis.CookieUtils;
import com.hqgml.sign.others.utlis.JsonWriteUtlis;
import com.hqgml.sign.others.annotation.ControllerLog;
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
import java.util.List;

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
    @Autowired
    private JwtProperties jwtProperties;



    @ControllerLog(describe = "用户登录")
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {


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
        session.setAttribute("lasttime", sysUser.getLasttime());
        userService.updateLastAddressByUserName(address, sysUser.getUsername());
        //这里还可以进行其他的逻辑处理
        CookieUtils.setCookie(request, response, "username", sysUser.getUsername());
        try {

            String token = JwtUtils.generateTokenExpireInMinutes(sysUser, jwtProperties.getPrivateKey(), jwtProperties.getExpire());
            response.addHeader(jwtProperties.getTokenName(),jwtProperties.getPreToken()+token);
        } catch (Exception e) {
            e.printStackTrace();
        }
        JsonWriteUtlis.success(response);
    }
}
