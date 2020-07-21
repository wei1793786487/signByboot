package com.hqgml.sign.servce.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hqgml.sign.others.exception.ExceptionEnums;
import com.hqgml.sign.others.exception.XxException;
import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.pojo.Role;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import com.hqgml.sign.mapper.RoleMapper;
import com.hqgml.sign.servce.RoleService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Devil
 * @date 2020/4/15 7:56
 */
@Service

public class RoleServiceImpl implements RoleService {

    private static final Logger logger = LoggerFactory.getLogger(RoleServiceImpl.class);

    @Resource
    private RoleMapper roleMapper;


    @Override
    public List<Role> selectRoleListByUid(Integer id) {
        List<Role> roles = roleMapper.selectByUserId(id);
        if (roles.size() == 0) {
            logger.warn(id + "id的用户未找到角色");
        }
        return roles;
    }

    @Override
    public void insertOne(Role role) {
        int i = roleMapper.insertSelective(role);
        if (i!=1){
            throw new XxException(ExceptionEnums.INSERT_ERROR);
        }
    }

    @Override
    public void updateRole(Role role) {
        int i = roleMapper.updateById(role, role.getId());
        if (i!=1){
            throw new XxException(ExceptionEnums.UPDATE_ERROR);
        }
    }

    @Override
    public MyPageInfo<Role> findAll(String roleName, Integer page, Integer limit) {
        PageHelper.startPage(page,limit);
        List<Role> roles = roleMapper.selectAll(roleName);
        if (roles.size()==0){
            throw new XxException(ExceptionEnums.ROLE_NOT_FIND);
        }
        PageInfo<Role> brandPageInfo = new PageInfo<>(roles);

        return new MyPageInfo<Role>(brandPageInfo.getTotal(),roles);
    }


    @Override
    @Transactional(rollbackFor = Exception.class)
    public void desRole(Integer[] rids, Integer mid) {
        int i = roleMapper.cleanRole(mid);
        if (i==0){
            logger.warn("没有要移除的角色");
        }
        for (Integer rid: rids) {
            roleMapper.desRole(rid,mid);
        }
    }


    @Override
    public List<Role> findRoleDes(Integer id) {
        return  roleMapper.selectAllById(id);
    }

    @Override
    public Role findById(String id) {
        Role role = roleMapper.findById(Integer.parseInt(id));
        if (role==null){
            throw new XxException(ExceptionEnums.ROLE_NOT_FIND);
        }
        return role;
    }

    @Override
    public void deleteRole(Integer[] ids) {
        for (Integer id : ids) {
            roleMapper.deleteById(id);
        }
    }
}
