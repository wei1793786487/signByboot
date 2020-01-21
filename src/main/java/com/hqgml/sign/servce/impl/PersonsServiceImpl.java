package com.hqgml.sign.servce.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.tobato.fastdfs.service.FastFileStorageClient;
import com.hqgml.sign.mapper.MeetingPersionMapper;
import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Persons;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.servce.SysUserService;
import com.hqgml.sign.servce.TenlentServices;
import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.XxException;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.validation.Valid;

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
    private FastFileStorageClient storageClient;

    @Resource
    private TenlentServices tenlentServices;

    @Resource
    private SysUserService userService;

     @Resource
     private MeetingPersionMapper meetingPersionMapper;


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
    public LayUi selectAllByusername(String username, Integer page, Integer limit, String personName) {
        SysUser sysUser;
        if (username == null) {
            sysUser = userService.findUserByUserName(null);
        } else {
            sysUser = userService.findUserByUserName(username);
        }

        PageHelper.startPage(page, limit);
        List<Persons> persons = personsMapper.findAllByAddId(sysUser.getId(), personName);
        if (persons == null) {
            throw new XxException(ExceptionEnums.PERSON_NOT_FIND);
        }
        PageInfo<Persons> brandPageInfo = new PageInfo<>(persons);
        LayUi<Persons> layUi = new LayUi<>();
        layUi.setCount(brandPageInfo.getTotal());
        layUi.setData(persons);
        return layUi;
    }

    @Override
    public void updatePersonById(@Valid Persons persons) {
        //这个接口只允许修改手机号以及姓名，不可以修改其他的所以使用@Valid来约束
        int update = personsMapper.updateByPrimaryKeySelective(persons);
        if (update != 1) {
            throw new XxException(ExceptionEnums.UPDATE_ERROR);
        }

    }

    @Override
    public void deleteByids(Integer[] ids) throws TencentCloudSDKException {

        for (Integer id : ids) {
            Persons persons = selectById(id);
            storageClient.deleteFile(persons.getUrl());
            log.info("删除服务器图片信息");

            tenlentServices.deletePerson(persons.getUuid());
            log.info("删除腾讯云");

            int isdelect = personsMapper.deleteById(id);
            if (isdelect != 1) {
                log.error("数据库删除id为" + id + "失败");
            }
        }
    }

    @Override
    public Persons selectById(Integer id) {
        Persons persons = personsMapper.selectAllById(id);
        if (persons == null) {
            throw new XxException(ExceptionEnums.PERSON_NOT_FIND);
        }
        return persons;
    }

    @Override
    public Persons selectByName(String name) {
        Persons persons = personsMapper.selectOneByPersonName(name);
        if (persons == null) {
            throw new XxException(ExceptionEnums.MEETING_NOT_FIND);
        }
        return persons;
    }







}








