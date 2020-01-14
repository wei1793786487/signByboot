package com.hqgml.sign.servce.impl;

import com.hqgml.sign.pojo.Persons;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.servce.SysUserService;
import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.XxException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.hqgml.sign.mapper.PersonsMapper;
import com.hqgml.sign.servce.PersonsService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Devil
 * @date 2019/12/31 10:47
 */
@Service
@Transactional(rollbackFor = Exception.class)
@Slf4j
public class PersonsServiceImpl implements PersonsService {

    @Resource
    private PersonsMapper personsMapper;

    @Resource
    private SysUserService userService;


    @Override
    public void createPersion(Persons persons) {
        personsMapper.insertSelective(persons);
    }

    @Override
    public void delectByuuid(String uuid) {
        int i = personsMapper.deleteByUuid(uuid);
        if (i != 1) {
            log.error("删除异常");
        }
    }

    @Override
    public Persons selectOneByUsername(String username) {
        return personsMapper.selectOneByPersonName(username);
    }

    @Override
    public List<Persons> selectAllByusername(String username) {
        SysUser sysUser = null;
        if (username == null) {
            sysUser = userService.findUserByUserName(null);
        } else {
            sysUser = userService.findUserByUserName(username);
        }
        List<Persons> persons = personsMapper.findAllByAddId(sysUser.getId());
        if (persons == null) {
            throw new XxException(ExceptionEnums.PERSON_NOT_FIND);
        }
        return persons;
    }
}






