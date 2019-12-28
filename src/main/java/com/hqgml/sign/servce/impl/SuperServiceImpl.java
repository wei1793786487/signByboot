package com.hqgml.sign.servce.impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.hqgml.sign.mapper.SuperMapper;
import com.hqgml.sign.servce.SuperService;
/**
*@author Devil
*@date  2019/12/29 0:36
*/
@Service
public class SuperServiceImpl implements SuperService{

    @Resource
    private SuperMapper superMapper;

}
