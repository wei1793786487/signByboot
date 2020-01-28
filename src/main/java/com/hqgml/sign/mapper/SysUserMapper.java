package com.hqgml.sign.mapper;

import com.hqgml.sign.pojo.SysUser;
import org.apache.ibatis.annotations.Param;import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * @author Devil
 * @date 2020/1/27 21:54
 */
public interface SysUserMapper extends Mapper<SysUser> {
    SysUser findOneByUsername(@Param("username") String username);

    int updateLasttimeByUsername(@Param("updatedLasttime") String updatedLasttime, @Param("username") String username);

    int updateAddressByUsername(@Param("updatedAddress") String updatedAddress, @Param("username") String username);

    int updatePasswordByUsername(@Param("updatedPassword") String updatedPassword, @Param("username") String username);

    List<SysUser> selectAllUser();





}