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


	int deleteById(@Param("id")Integer id);

	List<Role> selectAll(@Param("roleName") String roleName);

    void desRole(@Param("rid")int rid,@Param("mid") int mid);

    List<Role> selectAllById(@Param("id")Integer id);


    /**
     * 清除所有的角色绑定信息
     * @param mid
     * @return
     */
    int cleanRole(@Param("mid")Integer mid);

  Role findById(@Param("id")Integer id);


    int updateById(@Param("updated")Role updated,@Param("id")Integer id);



   int insertList(@Param("list")List<Role> list);


   int insertSelective(Role role);






}