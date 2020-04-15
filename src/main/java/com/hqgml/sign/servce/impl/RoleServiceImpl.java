package com.hqgml.sign.servce.impl;

import com.hqgml.sign.pojo.Role;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import com.hqgml.sign.mapper.RoleMapper;
import com.hqgml.sign.servce.RoleService;

import java.util.List;

/**
 * @author Devil
 * @date 2020/4/15 7:56
 */
@Service
public class RoleServiceImpl implements RoleService {

    @Resource
    private RoleMapper roleMapper;

    private static final Logger logger = LoggerFactory.getLogger(RoleServiceImpl.class);

    @Override
    public List<Role> selectRoleListByUid(Integer id) {
        List<Role> roles = roleMapper.selectByUserId(id);
        if (roles.size() == 0) {
            logger.warn(id + "id的用户未找到角色");
        }
        return roles;
    }
}
