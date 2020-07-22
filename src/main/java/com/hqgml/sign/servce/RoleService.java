package com.hqgml.sign.servce;

import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.pojo.Role;

import java.util.List;

/**
*@author Devil
*@date  2020/4/15 7:56
*/
public interface RoleService{

   List<Role> selectRoleListByUid(Integer id);

   void insertOne(Role role);

   void updateRole(Role role);

   MyPageInfo<Role> findAll(String roleName, Integer page, Integer limit);

   void desRole(Integer[] rid, Integer mid);

   List<Role> findRoleDes(Integer id);

   Role findById(String id);

   void deleteRole(Integer[] ids);

   void desUserRole(Integer[] rid, Integer uid);
}
