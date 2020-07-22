package com.hqgml.sign.mapper;

import com.hqgml.sign.pojo.VxUser;
import org.apache.ibatis.annotations.Param;import tk.mybatis.mapper.common.Mapper;

/**
 * @author Devil
 * @date 2020/7/22 23:03
 */
public interface VxUserMapper extends Mapper<VxUser> {
    VxUser findByOpenid(@Param("openid") String openid);
}