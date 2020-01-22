package com.hqgml.sign.mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

import com.hqgml.sign.pojo.UserLog;
import tk.mybatis.mapper.common.Mapper;

/**
 * @author Devil
 * @date 2020/1/22 19:19
 */
public interface UserLogMapper extends Mapper<UserLog> {
 List<UserLog> selectByUser(@Param("user")String user,@Param("serch")String serch);

int deleteById(@Param("id")Integer id);


}