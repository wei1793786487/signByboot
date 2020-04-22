package com.hqgml.sign.mapper;
import org.apache.ibatis.annotations.Param;

import com.hqgml.sign.pojo.Role;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
*@author Devil
*@date  2020/4/15 7:56
*/
public interface RoleMapper  {

    List<Role> selectByUserId(@Param("id")Integer id);


    List<Role> selectAllByMetaId(@Param("id")Integer id);


}