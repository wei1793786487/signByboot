package com.hqgml.sign.mapper;
import java.util.List;

import com.hqgml.sign.pojo.VxUser;
import org.apache.ibatis.annotations.Param;import tk.mybatis.mapper.common.Mapper;

/**
 * @author Devil
 * @date 2020/7/22 23:03
 */
public interface VxUserMapper  {
    VxUser findByOpenid(@Param("openid") String openid);
    int insertSelective(VxUser vxUser);
    VxUser findById(@Param("id")Integer id);





}