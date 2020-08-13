package com.hqgml.sign.mapper;

import com.hqgml.sign.pojo.VxUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author Devil
 * @date 2020/7/22 23:03
 */
public interface VxUserMapper {
    VxUser findByOpenid(@Param("openid") String openid);

    int insertSelective(VxUser vxUser);

    VxUser findById(@Param("id") Integer id);

    int updatePIdByOpenid(@Param("updatedPId") Integer updatedPId, @Param("openid") String openid);

    List<VxUser> findAll();

    VxUser findByPId(@Param("pId") Integer pId);

    int deleteById(@Param("id") Integer id);
    Integer count();



}