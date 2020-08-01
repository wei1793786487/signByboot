package com.hqgml.sign.controller;

import com.hqgml.sign.others.annotation.ControllerLog;
import com.hqgml.sign.others.exception.ExceptionEnums;
import com.hqgml.sign.others.exception.XxException;
import com.hqgml.sign.others.pojo.Common;
import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.others.pojo.RedisProperties;
import com.hqgml.sign.others.utlis.UserUtils;
import com.hqgml.sign.pojo.Role;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.servce.MeetingService;
import com.hqgml.sign.servce.PersonsService;
import com.hqgml.sign.servce.SysUserService;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Map;

/**
 * @author Devil
 * @date 2020/1/9 20:54
 */
@RestController()
@RequestMapping("user")
@Slf4j
@Api(tags = "用户管理接口")

public class UserController {

    @Autowired
    private SysUserService sysUserService;

    @Autowired
    private MeetingService meetingService;

    @Autowired
    private PersonsService personsService;


    @Autowired
    private StringRedisTemplate stringRedisTemplate;


    @Autowired
    private RedisProperties redisProperties;

    /**
     * 获取用户上次的参数
     * userInfo
     *
     * @param username 用户名
     * @param request  request队形
     */
    @GetMapping("{username}")
    @ApiOperation(value = "获取用户上次登录信息")
    @ApiImplicitParam(name = "username", value = "要获取的用户名")
    public ResponseEntity<Common> getUserByUsername(@PathVariable("username") String username, HttpServletRequest request) {
        HttpSession session = request.getSession();
        String lasttime = (String) session.getAttribute("lasttime");
        String lastaddress = (String) session.getAttribute("address");
        SysUser user = sysUserService.findUserByUserName(username);
        //如果是超管，那么就获取所有的会议以及人员的数量

        boolean isAdmin = false;
        for (Role role : user.getRoles()) {
            if (StringUtils.equals("ADMIN", role.getRoleName())) {
                isAdmin = true;
            }
        }
        if (isAdmin) {
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

    /**
     * 修改密码
     *
     * @param oldPassword 老密码
     * @param newPassword 新密码
     * @param request     ？？
     * @param response    ？？
     */
    @PutMapping("password")
    @ControllerLog(describe = "修改密码")
    @ApiOperation(value = "修改密码")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "old_password", value = "旧密码"),
            @ApiImplicitParam(name = "new_password", value = "新密码"),
    })
    public ResponseEntity<Common> updatePassword(
            @RequestParam("old_password") String oldPassword,
            @RequestParam("new_password") String newPassword,
            HttpServletRequest request, HttpServletResponse response) {
        SysUser userByToken = UserUtils.getUserByToken(request);
        sysUserService.updateUserPasswordByUserName(oldPassword, newPassword,userByToken.getUsername());
        //清除用户信息
        stringRedisTemplate.delete(redisProperties.getTokenPre()+userByToken.getId());
        Common common = new Common("更新成功");
        return ResponseEntity.ok(common);
    }


    /**
     * 更新用户信息
     *
     * @param sysUser 用户对象
     */
    @PutMapping()
    @ControllerLog(describe = "更新用户信息")
    @ApiOperation(value = "跟新用户信息")
    public ResponseEntity<Common> updateUser(SysUser sysUser, HttpServletRequest request) {
        sysUser.setIsenabled(null);
        SysUser user = UserUtils.getUserByToken(request);
        if (user.getUsername().equals(sysUser.getUsername())) {
            throw new XxException(ExceptionEnums.INSUFFICIENT_AUTHORITY);
        }
        sysUserService.updateUser(sysUser);
        Common common = new Common("更新成功");
        return ResponseEntity.ok(common);
    }


    /**
     * 更新用户可以状态
     */
    @PutMapping("{userId}/{state}")
    @ControllerLog(describe = "更新用户状态")
    @ApiOperation(value = "更新用户状态")
    public ResponseEntity<Common> updateUserState(
            @PathVariable("userId") Integer userId,
            @PathVariable("state") Integer state,
            HttpServletRequest request) {
        sysUserService.updateState(userId,state,request);
        return ResponseEntity.ok(new Common("更新成功"));
    }


    /**
     * 查看用户是不是存在
     *
     * @param username 用户名
     */
    @GetMapping("isHave")
    @ControllerLog(describe = "查看用户是否存在")
    @ApiOperation(value = "查看用户名是不是已经存在")
    @ApiImplicitParam(name = "username", value = "要查询的用户名")
    public ResponseEntity<Common> updateUser(@RequestParam("username") String username) {
        try {
            sysUserService.findUserByUserName(username);
            throw new XxException(ExceptionEnums.USER_ISHAVE);
        } catch (XxException e) {
            //如果抛异常了就是没有用户
            if (e.getExceptionEnums() == ExceptionEnums.USER_NOT_FIND) {
                Common common = new Common("用户不存在");
                return ResponseEntity.ok(common);
            } else {
                throw e;
            }

        }
    }


    /**
     * 新建用户
     *
     * @param sysUser 用户对象
     */
    @PostMapping
    @ControllerLog(describe = "新建用户")
    @ApiOperation(value = "新建用户，仅admin有访问的权限")
    public ResponseEntity<Common> insertUser(@Valid SysUser sysUser) throws TencentCloudSDKException {
        sysUserService.insertUser(sysUser);
        Common common = new Common("新建成功");
        return ResponseEntity.ok(common);
    }


    /**
     * 查找所有用户
     *
     * @param page   页面
     * @param limit  多少行
     * @param search 搜索
     */
    @GetMapping()

    @ControllerLog(describe = "查看所有用户")
    @ApiOperation(value = "查找所有的用户，仅admin有访问权限")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "page", value = "当前页", defaultValue = "1", type = "Integer"),
            @ApiImplicitParam(name = "limit", value = "每页的大小", defaultValue = "15", type = "Integer"),
            @ApiImplicitParam(name = "search", value = "要查询的用户"),
    })
    public MyPageInfo<SysUser> selectAll(Integer page, Integer limit, String search) {
        return sysUserService.findUserList(page, limit, search);
    }


    @GetMapping("userInfo")
    public ResponseEntity<Common> getUserInfo(HttpServletRequest request) {
        SysUser user = UserUtils.getUserByToken(request);
        SysUser findsUser = sysUserService.findUserById(user.getId());
        findsUser.setLasttime(user.getLasttime());
        return ResponseEntity.ok(new Common(findsUser));
    }


    @GetMapping("find/{userId}")
    public ResponseEntity<Common> findUserById(@PathVariable("userId") Integer userId) {
        SysUser findsUser = sysUserService.findUserById(userId);
        return ResponseEntity.ok(new Common(findsUser));
    }


    @GetMapping("bashboard")
    public ResponseEntity<Common> findBashBoard(HttpServletRequest request) {
        SysUser user = UserUtils.getUserByToken(request);
         Map<String,Integer> info= sysUserService.findBashBoard(user);
         return ResponseEntity.ok(new Common(info));
    }



}
