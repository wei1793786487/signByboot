package com.hqgml.sign.servce.impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.hqgml.sign.mapper.VxUserMapper;
import com.hqgml.sign.servce.VxUserService;
/**
*@author Devil
*@date  2020/7/22 21:40
*/
@Service
public class VxUserServiceImpl implements VxUserService{

    @Resource
    private VxUserMapper vxUserMapper;

}
