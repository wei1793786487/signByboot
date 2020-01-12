package com.hqgml.sign.servce.impl;

import com.hqgml.sign.pojo.Menu;
import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.XxException;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import com.hqgml.sign.mapper.MenuMapper;
import com.hqgml.sign.servce.MenuService;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author Devil
 * @date 2020/1/5 16:28
 */
@Service
@Transactional(rollbackFor = Exception.class)

public class MenuServiceImpl implements MenuService {

    @Resource
    private MenuMapper menuMapper;

    @Override
    public Menu findByUsername(String username) {
        if (StringUtils.isBlank(username)) {
            throw new XxException(ExceptionEnums.USER_NOT_FIND);
        }
        Menu menu= menuMapper.findOneByRoleName(username);
        if (menu == null) {
            throw new XxException(ExceptionEnums.MENU_NOT_FIND);
        }
        return menu;
    }
}

