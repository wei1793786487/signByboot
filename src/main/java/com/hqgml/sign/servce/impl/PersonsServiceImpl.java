package com.hqgml.sign.servce.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.tobato.fastdfs.service.FastFileStorageClient;
import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.others.utlis.UserUtils;
import com.hqgml.sign.pojo.Persons;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.servce.SysUserService;
import com.hqgml.sign.servce.TenlentService;
import com.hqgml.sign.others.exception.ExceptionEnums;
import com.hqgml.sign.others.exception.XxException;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import com.hqgml.sign.mapper.PersonsMapper;
import com.hqgml.sign.servce.PersonsService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
    private TenlentService tenlentServices;

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
    public MyPageInfo<Persons> selectAllByusername(String username, Integer page, Integer limit, String personName, HttpServletRequest request) {
        SysUser sysUser = UserUtils.getUserByToken(request);
        PageHelper.startPage(page, limit);
        List<Persons> persons = personsMapper.findAllByAddId(sysUser.getId(), personName);
        if (persons == null || persons.size() == 0) {
            throw new XxException(ExceptionEnums.PERSON_NOT_FIND);
        }
        PageInfo<Persons> brandPageInfo = new PageInfo<>(persons);
        return new MyPageInfo<>(brandPageInfo.getTotal(), persons);

    }

    @Override
    public void updatePersonById(@Valid Persons persons) {
        //这个接口只允许修改手机号以及姓名，不可以修改其他的所以使用@Valid来约束
        if (StringUtils.isNotBlank(persons.getPhone())){
            String regex = "^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(17[013678])|(18[0,5-9]))\\d{8}$";
            Pattern p = Pattern.compile(regex);
            Matcher m = p.matcher(persons.getPhone());
            boolean isMatch = m.matches();
            if (!isMatch){
                throw  new XxException(ExceptionEnums.PHONE_ERROT);
            }
        }
        int update = personsMapper.updateByPrimaryKeySelective(persons);
        if (update != 1) {
            throw new XxException(ExceptionEnums.UPDATE_ERROR);
        }

    }

    @Override
    public void deleteByids(Integer[] ids, String url) throws TencentCloudSDKException {
        if (ids != null) {
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
        if (url != null) {
            Persons persons = personsMapper.selectByUrl(url);
            storageClient.deleteFile(persons.getUrl());
            tenlentServices.deletePerson(persons.getUuid());
            log.info("删除腾讯云");
            personsMapper.deleteById(persons.getId());
        }
    }

    @Override
    public Persons selectById(Integer id) {
        Persons persons = personsMapper.selectById(id);
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

    @Override
    public Persons selectByUuid(String uuid) {
        Persons persons = personsMapper.selectOneByUuid(uuid);
        if (persons == null) {
            throw new XxException(ExceptionEnums.PERSON_NOT_FIND);
        }
        return persons;
    }

    @Override
    public Integer selectCount() {

        return personsMapper.count();
    }


}








