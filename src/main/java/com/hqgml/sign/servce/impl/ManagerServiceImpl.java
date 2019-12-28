package com.hqgml.sign.servce.impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.hqgml.sign.mapper.ManagerMapper;
import com.hqgml.sign.servce.ManagerService;
/**
*@author Devil
*@date  2019/12/29 0:35
*/
@Service
public class ManagerServiceImpl implements ManagerService{

    @Resource
    private ManagerMapper managerMapper;

}
