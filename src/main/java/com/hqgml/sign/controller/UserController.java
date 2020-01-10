package com.hqgml.sign.controller;

import cn.hutool.http.HttpUtil;
import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.servce.SysUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
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
    public ResponseEntity<Common> updatePassword(@RequestParam("old_password") String oldPassword, @RequestParam("new_password") String newPassword) {
        //TODO 这里不知道怎么清楚用户信息，只能让用户修改完密码之后再发一次退出登录请求
        User userDetails = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        sysUserService.updateUserPasswordByUserName(oldPassword, newPassword, userDetails.getUsername());
        Common common = new Common("更新成功");
        return ResponseEntity.ok(common);
    }
}
