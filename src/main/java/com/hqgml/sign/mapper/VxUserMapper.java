package com.hqgml.sign.mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

import com.hqgml.sign.pojo.VxUser;
import tk.mybatis.mapper.common.Mapper;

/**
*@author Devil
*@date  2020/7/22 21:40
*/
public interface VxUserMapper extends Mapper<VxUser> {
    VxUser findByOpenid(@Param("openid")String openid);


}