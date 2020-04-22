package com.hqgml.sign.servce.impl;

import com.alibaba.fastjson.JSON;
import com.hqgml.sign.pojo.Menu;
import com.hqgml.sign.others.exception.ExceptionEnums;
import com.hqgml.sign.others.exception.XxException;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import com.hqgml.sign.mapper.MenuMapper;
import com.hqgml.sign.servce.MenuService;
import org.springframework.transaction.annotation.Transactional;

import java.util.concurrent.TimeUnit;

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
    public Menu findMenu() {


        return null;
    }
}

