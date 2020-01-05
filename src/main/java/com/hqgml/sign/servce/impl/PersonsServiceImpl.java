package com.hqgml.sign.servce.impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.hqgml.sign.mapper.PersonsMapper;
import com.hqgml.sign.servce.PersonsService;

/**
 * @author Devil
 * @date 2019/12/31 10:47
 */
@Service
public class PersonsServiceImpl implements PersonsService {

    @Resource
    private PersonsMapper personsMapper;

}

