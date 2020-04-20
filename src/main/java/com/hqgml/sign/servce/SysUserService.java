package com.hqgml.sign.servce;

import com.hqgml.sign.others.pojo.LayUi;
import com.hqgml.sign.pojo.SysUser;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 * @author Devil
 * @date 2020/1/5 19:33
 */
public interface SysUserService extends UserDetailsService {

    /**
     * 根据用户名查询用户
     *
     * @return
     */
    SysUser findUserByUserName(String username);

    /**
     * 根据用户名更新时间
     *
     * @param lasttime
     * @param username
     */
    void updateLastimeByUserName(String lasttime, String username);

    /**
     * 根据用户名更新时间
     *
     * @param address
     * @param username
     */
    void updateLastAddressByUserName(String address, String username);

    /**
     * 更新密码
     *
     * @param oldPassword
     * @param newPassword
     * @param userName
     */
    void updateUserPasswordByUserName(String oldPassword, String newPassword, String userName);


    /**
     * 更新用户
     *
     * @param sysUser
     */
    void updateUser(SysUser sysUser);


    /**
     * 新增用户
     *
     * @param sysUser
     */
    void insertUser(SysUser sysUser) throws TencentCloudSDKException;

    /**
     * 查找所有用户
     */
    LayUi<SysUser> findUserList(Integer page, Integer limit, String search);

    /**
     * 根据id查询用户
     *
     * @param id
     * @return
     */
    SysUser findUserById(Integer id);
}




