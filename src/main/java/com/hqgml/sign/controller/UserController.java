package com.hqgml.sign.controller;

import cn.hutool.http.HttpUtil;
import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Persons;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.servce.MeetingService;
import com.hqgml.sign.servce.PersonsService;
import com.hqgml.sign.servce.SysUserService;
import com.hqgml.sign.utlis.CookieUtils;
import com.hqgml.sign.utlis.annotation.ControllerLog;
import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.XxException;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Collection;

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

    @Resource
    private MeetingService meetingService;


    @Resource

    private PersonsService personsService;

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
        String lastaddress = (String) session.getAttribute("address");
        SysUser user = sysUserService.findUserByUserName(username);
        //如果是超管，那么就获取所有的会议以及人员的数量
        if (StringUtils.equals("ROLE_ADMIN",user.getRole())){
            Integer mCount = meetingService.slectCount();
            Integer pCount = personsService.selectCount();
            user.setMeetingcount(mCount);
            user.setPersoncount(pCount);
        }
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
        CookieUtils.deleteCookie(request,response,"username");
        CookieUtils.deleteCookie(request,response,"remember");
        new SecurityContextLogoutHandler().logout(request, response, auth);
        Common common = new Common("更新成功");
        return ResponseEntity.ok(common);
    }

    @PutMapping()
    @ControllerLog(describe = "更新用户信息")
    public ResponseEntity<Common> updateUser(SysUser sysUser) {
         boolean isSuper=false;
         //todo 超管可以设置自己的账号不可用，这样就全部都不可用了，哈哈哈哈
        //判断更新用户是不是当前存在的用户，防止恶意请求
        User userDetails = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Collection<GrantedAuthority> authorities = userDetails.getAuthorities();
        for (GrantedAuthority authority : authorities) {
            if (StringUtils.contains(authority.getAuthority(),"ADMIN")){
                isSuper=true;
            }
        }

        if (!isSuper&&!userDetails.getUsername().equals(sysUser.getUsername())){
            throw new XxException(ExceptionEnums.INSUFFICIENT_AUTHORITY);
        }

        sysUserService.updateUser(sysUser);
        Common common = new Common("更新成功");
        return ResponseEntity.ok(common);
    }


    @GetMapping("isHave")
    @ControllerLog(describe = "查看用户是否存在")
    public ResponseEntity<Common> updateUser(@RequestParam("username") String username) {
        try {
            sysUserService.findUserByUserName(username);
            throw new XxException(ExceptionEnums.USER_ISHAVE);
        } catch (XxException e) {
           //如果抛异常了就是没有用户
            if (e.getExceptionEnums()==ExceptionEnums.USER_NOT_FIND){
                Common common = new Common("用户不存在");
                return ResponseEntity.ok(common);
            }else {
                throw e;
            }

        }
    }


    @Secured("ROLE_ADMIN")
    @PostMapping
    @ControllerLog(describe = "新建用户")
    public ResponseEntity<Common> insertUser(@Valid SysUser sysUser) throws TencentCloudSDKException {
        sysUserService.insertUser(sysUser);
        Common common = new Common("新建成功");
        return ResponseEntity.ok(common);

    }

    @Secured("ROLE_ADMIN")
    @GetMapping()
    @ControllerLog(describe = "查看所有用户")
    public LayUi<SysUser> selectAll(Integer page, Integer limit, String search) {
      return sysUserService.findUserList(page,limit,search);
    }

}
