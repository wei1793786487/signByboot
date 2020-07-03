package com.hqgml.sign.servce.impl;

import com.hqgml.sign.others.exception.ExceptionEnums;
import com.hqgml.sign.others.exception.XxException;
import com.hqgml.sign.others.utlis.TreeUtils;
import com.hqgml.sign.pojo.Menu;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import com.hqgml.sign.mapper.MenuMapper;
import com.hqgml.sign.servce.MenuService;
import sun.reflect.annotation.TypeNotPresentExceptionProxy;

import java.util.List;

/**
 * @author Devil
 * @date 2020/1/5 16:28
 */
@Service
@Slf4j
public class MenuServiceImpl implements MenuService {

    @Resource
    private MenuMapper menuMapper;

    @Autowired
    private StringRedisTemplate redisTemplate;


    @Override
    public List<Menu> findMenu(Integer type) {

        List<Menu> menus = menuMapper.selectAll();
        if (menus.size() == 0) {
            throw new XxException(ExceptionEnums.MENU_NOT_FIND);
        }
        if (type == 0) {
           return TreeUtils.setParentName(menus);
        } else {
            return TreeUtils.toTree(menus, 0);
        }
    }

    @Override
    public void deleteMenu(Integer[] ids) {

    }

    @Override
    public void updateMenu(Menu menu, Integer id) {

    }
}


