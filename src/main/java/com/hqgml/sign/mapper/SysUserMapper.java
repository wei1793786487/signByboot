package com.hqgml.sign.mapper;

import com.hqgml.sign.pojo.SysUser;
import org.apache.ibatis.annotations.Param;import tk.mybatis.mapper.common.Mapper;import java.util.List;

/**
 * @author Devil
 * @date 2020/4/20 16:47
 */
public interface SysUserMapper extends Mapper<SysUser> {
    SysUser findOneByUsername(@Param("username") String username);

    int updateLasttimeByUsername(@Param("updatedLasttime") String updatedLasttime, @Param("username") String username);

    int updateAddressByUsername(@Param("updatedAddress") String updatedAddress, @Param("username") String username);

    int updatePasswordByUsername(@Param("updatedPassword") String updatedPassword, @Param("username") String username);

    List<SysUser> selectAllUser(@Param("search") String search);

    SysUser findOneById(@Param("id")Integer id);
   int updateIsenabledById(@Param("updatedIsenabled")Integer updatedIsenabled,@Param("id")Integer id);

   int deleteById(@Param("id")Integer id);




}