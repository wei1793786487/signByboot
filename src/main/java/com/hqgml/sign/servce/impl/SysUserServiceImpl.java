package com.hqgml.sign.servce.impl;

import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.XxException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import com.hqgml.sign.mapper.SysUserMapper;
import com.hqgml.sign.servce.SysUserService;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/**
 * @author Devil
 * @date 2020/1/5 19:33
 */

@Service
@Transactional(rollbackFor = Exception.class)
@Slf4j
public class SysUserServiceImpl implements SysUserService {

    @Resource
    private SysUserMapper sysUserMapper;

    @Autowired
    private PasswordEncoder passwordEncode;

    /**
     * spring security的认证的方法
     *
     * @param username
     * @return
     * @throws UsernameNotFoundException
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        if (username == null || "".equals(username)) {
            throw new RuntimeException("用户名不能为空");
        }
        SysUser sysUser = sysUserMapper.findOneByUsername(username);
        if (sysUser == null) {
            throw new RuntimeException("查找不到用户");
        }
        List<SimpleGrantedAuthority> grantedAuthorities = new ArrayList<>();
        /**
         * 储存用户的权限
         * 这里只是简单的权限的控制因此只有一个权限
         */
        grantedAuthorities.add(new SimpleGrantedAuthority(sysUser.getRole()));

        User user = new User(sysUser.getUsername(), sysUser.getPassword(), sysUser.getIsenabled().equals(0) ? true : false, true, true, true, grantedAuthorities);


        return user;
    }

    /**
     * 查询用户
     *
     * @param username
     * @return
     */
    @Override
    public SysUser findUserByUserName(String username) {

        if (username == null) {
            //如果用户没有传 自动读取security容器里面的用户名
            User userDetails = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            username = userDetails.getUsername();
        }
        SysUser User = sysUserMapper.findOneByUsername(username);
        if (User == null) {
            throw new XxException(ExceptionEnums.USER_NOT_FIND);

        }
        return User;
    }

    /**
     * 更新登录时间
     *
     * @param lasttime
     * @param username
     */
    @Override
    public void updateLastimeByUserName(String lasttime, String username) {
        log.info("更新登录时间");
        int isUpdte = sysUserMapper.updateLasttimeByUsername(lasttime, username);
        if (isUpdte != 1) {
            log.error("更新时间失败");
        }

    }

    /**
     * 更新登录地点
     *
     * @param address
     * @param username
     */
    @Override
    public void updateLastAddressByUserName(String address, String username) {
        log.info("更新登录地点");
        int isUpdate = sysUserMapper.updateAddressByUsername(address, username);
        if (isUpdate != 1) {
            log.error("更新地点失败");
        }
    }

    /**
     * 更新密码
     *
     * @param oldPassword
     * @param newPassword
     * @param userName
     */
    @Override
    public void updateUserPasswordByUserName(String oldPassword, String newPassword, String userName) {
        log.info("更新用户密码");
        String rgx = "^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z\\\\W]{6,18}$";
        boolean matches = Pattern.matches(rgx, newPassword);
        if (matches) {
            SysUser user = findUserByUserName(userName);
            boolean isRigth = passwordEncode.matches(oldPassword, user.getPassword());
            if (isRigth) {
                String encodepssword = passwordEncode.encode(newPassword);
                int isUpdate = sysUserMapper.updatePasswordByUsername(encodepssword, userName);
                if (isUpdate != 1) {
                    throw new XxException(ExceptionEnums.UPDATE_ERROR);
                }
            } else {
                throw new XxException(ExceptionEnums.UPDATEPASSWORD_ERROR);
            }
        } else {
            throw new XxException(ExceptionEnums.PASSWORD_ERROR);
        }


    }

    /**
     * 更新用户
     *
     * @param sysUser
     */
    @Override
    public void updateUser(SysUser sysUser) {
        if (sysUser == null) {
            throw new XxException(ExceptionEnums.USER_NOT_FIND);
        }
        int isupdate = sysUserMapper.updateByPrimaryKeySelective(sysUser);
        if (isupdate != 1) {
            throw new XxException(ExceptionEnums.UPDATEUSER_ERROR);
        }
    }
}
