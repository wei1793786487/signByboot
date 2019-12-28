package com.hqgml.sign.servce.impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.hqgml.sign.mapper.ManagerLogMapper;
import com.hqgml.sign.servce.ManagerLogService;
/**
*@author Devil
*@date  2019/12/29 0:35
*/
@Service
public class ManagerLogServiceImpl implements ManagerLogService{

    @Resource
    private ManagerLogMapper managerLogMapper;

}
