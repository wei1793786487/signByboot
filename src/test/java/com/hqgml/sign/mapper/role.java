package com.hqgml.sign.mapper;

import com.hqgml.sign.pojo.Role;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

/**
 * @author Devil
 * @date 2020/4/22 9:08
 */
@SpringBootTest

public class role {

    @Autowired
    private RoleMapper roleMapper;

    @Test
    void findRoleByMetaId(){
        List<Role> roles = roleMapper.selectAllByMetaId(1);
        System.out.println(roles);
    }

}
