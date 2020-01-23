package com.hqgml.sign.controller;

import cn.hutool.http.HttpUtil;
import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.servce.SysUserService;
import com.hqgml.sign.utlis.annotation.ControllerLog;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

/**
 * @author Devil
 * @date 2020/1/9 20:54
 */
@RestController()
@RequestMapping("user")
@Slf4j
public class UserController {

    @Autowired
    private SysUserService sysUserService;


    /**
     * 获取用户上次的参数
     * @param username
     * @param request
     * @return
     */
    @GetMapping("{username}")
    public ResponseEntity<Common> getUserByUsername(@PathVariable("username") String username, HttpServletRequest request) {
        HttpSession session = request.getSession();
        String lasttime = (String) session.getAttribute("lasttime");
        String lastaddress = (String) session.getAttribute("lastaddress");
        SysUser user = sysUserService.findUserByUserName(username);
        if (lastaddress != null && lasttime != null) {
            log.debug("设置上次登录的时间与地点");
            user.setAddress(lastaddress);
            user.setLasttime(lasttime);
        }
        Common common = new Common(user);
        return ResponseEntity.ok(common);
    }

    @PutMapping("password")
    @ControllerLog(describe = "修改密码")
    public ResponseEntity<Common> updatePassword(
            @RequestParam("old_password") String oldPassword,
            @RequestParam("new_password") String newPassword,
            HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User userDetails = (User) auth.getPrincipal();
        sysUserService.updateUserPasswordByUserName(oldPassword, newPassword, userDetails.getUsername());
        //清除用户信息
        new SecurityContextLogoutHandler().logout(request, response, auth);
        Common common = new Common("更新成功");
        return ResponseEntity.ok(common);
    }

    @PutMapping()
    @ControllerLog(describe = "更新用户信息")

    public ResponseEntity<Common> updateUser(@Valid SysUser sysUser) {
        sysUserService.updateUser(sysUser);
        Common common = new Common("更新成功");
        return ResponseEntity.ok(common);
    }
}
