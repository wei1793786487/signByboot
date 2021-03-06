package com.hqgml.sign.mapper;

import com.hqgml.sign.pojo.UserLog;
import org.apache.ibatis.annotations.Param;import tk.mybatis.mapper.common.Mapper;import java.util.List;

/**
 * @author Devil
 * @date 2020/1/28 22:06
 */
public interface UserLogMapper extends Mapper<UserLog> {
    List<UserLog> selectByUser(@Param("user") String user, @Param("serch") String serch);

    List<UserLog> selectByAddId(@Param("userid") Integer uid, @Param("serch") String serch);

    int deleteById(@Param("id") Integer id);

    List<UserLog> selectAllLog( @Param("serch") String search);

}