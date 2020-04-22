package com.hqgml.sign.mapper;

import com.hqgml.sign.pojo.Menu;
import com.hqgml.sign.pojo.Meta;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

/**
 * @author Devil
 * @date 2020/4/22 9:23
 */
@SpringBootTest
public class meau {

    @Autowired
    private MenuMapper menuMapper;


    @Test
    void findAll(){
        List<Menu> menus = menuMapper.selectAll();
        System.out.println(menus);
    }
}
