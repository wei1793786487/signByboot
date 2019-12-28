package com.hqgml.sign.servce.impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.hqgml.sign.mapper.SuperLogMapper;
import com.hqgml.sign.servce.SuperLogService;
/**
*@author Devil
*@date  2019/12/29 0:36
*/
@Service
public class SuperLogServiceImpl implements SuperLogService{

    @Resource
    private SuperLogMapper superLogMapper;

}
