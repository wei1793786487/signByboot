package com.hqgml.sign.servce;

import com.hqgml.sign.pojo.Role;

import java.util.List;

/**
*@author Devil
*@date  2020/4/15 7:56
*/
public interface RoleService{

   List<Role> selectRoleListByUid(Integer id);

   void insertObe(Role role);

   void deleteById(Integer id);

   void updateRole(Role role);

   List<Role> findAll();

   void desRole(Integer[] rid, Integer mid);

   List<Role> findRoleDes(Integer id);

}
