package com.hqgml.sign.servce.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hqgml.sign.mapper.MeetingPersionMapper;
import com.hqgml.sign.mapper.PersonsMapper;
import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Persons;
import com.hqgml.sign.servce.CheckServices;
import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.XxException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Devil
 * @date 2020/1/21 18:01
 */
@Service
@Slf4j
public class CheckServiceImpl implements CheckServices {

    @Resource
    private PersonsMapper personsMapper;

    @Resource
    private MeetingPersionMapper meetingPersionMapper;

    @Override
    public LayUi selectCheck(Integer mid, Integer page, Integer limit, String personName, Integer isCheck) {
        PageHelper.startPage(page, limit);
        List<Persons> checkPerson = personsMapper.findCheckPerson(mid, personName,isCheck);
        if (checkPerson == null||checkPerson.size()==0) {
            log.error("未找到人员");
            throw new XxException(ExceptionEnums.PERSON_NOT_FIND);
        }


        PageInfo<Persons> brandPageInfo = new PageInfo<>(checkPerson);
        LayUi<Persons> layUi = new LayUi<>();
        layUi.setCount(brandPageInfo.getTotal());
        layUi.setData(checkPerson);
        return layUi;
    }

    @Override
    public void updateCheck(Integer mid, Integer check, Integer[] ids) {

        for (Integer id : ids) {
            log.info("修改id为{}的签到状态为{}",id,check==1?"已签到":"未签到");
            int is = meetingPersionMapper.updateIscheckByMidAndPid(check, mid, id);
            if (is!=1){
                log.error("修改失败");
            }
        }
    }

    @Override
    public void deletePerson(Integer mid, Integer pid) {
        log.info("删除mid为{}，pid为{}",mid,pid);
        int i = meetingPersionMapper.deleteByMidAndPid(mid, pid);
        if (i!=1){
            log.error("删除失败");
            throw new XxException(ExceptionEnums.DELETE_ERROR);
        }
    }

    @Override
    public Integer countCheck(Integer isCheck,Integer mid) {

        Integer integer = meetingPersionMapper.countByIscheckAndMid(isCheck, mid);
        if (integer<0){
            throw new XxException(ExceptionEnums.SELECT_ERROR);
        }
        return integer;
    }


}
