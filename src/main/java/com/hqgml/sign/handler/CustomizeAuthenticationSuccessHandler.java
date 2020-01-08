package com.hqgml.sign.handler;

import cn.hutool.core.date.DateUtil;
import com.alibaba.fastjson.JSON;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.servce.impl.SysUserServiceImpl;
import com.hqgml.sign.utlis.CookieUtils;
import com.hqgml.sign.utlis.JsonWriteUtlis;
import com.hqgml.sign.utlis.result.pojo.JsonResult;
import com.hqgml.sign.utlis.result.utils.ResultTool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Devil
 * @date 2020/1/5 16:48
 * 自定义登录的处理的逻辑
 */
@Component
public class CustomizeAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
    @Autowired
    private SysUserServiceImpl userService;


    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        /**
         * 通过这个方法可以获取存在与security容器里面的security对象
         * 根据用户名
         */
        User userDetails = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        SysUser sysUser = userService.findUserByUserName(userDetails.getUsername());
        String now = DateUtil.now();
        userService.updateLastimeByUserName(now, sysUser.getUsername());
        //这里还可以进行其他的逻辑处理
        CookieUtils.setCookie(request,response,"username",sysUser.getUsername());
        JsonWriteUtlis.success(response);
    }
}
