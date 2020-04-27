package com.hqgml.sign.servce.impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.hqgml.sign.mapper.MetaMapper;
import com.hqgml.sign.servce.MetaService;
/**
*@author Devil
*@date  2020/4/22 8:41
*/
@Service
public class MetaServiceImpl implements MetaService{

    @Resource
    private MetaMapper metaMapper;

}
