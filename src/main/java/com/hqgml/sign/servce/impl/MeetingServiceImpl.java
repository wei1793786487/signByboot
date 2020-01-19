package com.hqgml.sign.servce.impl;

import cn.hutool.core.net.NetUtil;
import cn.hutool.core.util.IdUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hqgml.sign.mapper.MeetingPersionMapper;
import com.hqgml.sign.pojo.*;
import com.hqgml.sign.servce.PersonsService;
import com.hqgml.sign.servce.SysUserService;
import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.XxException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import com.hqgml.sign.mapper.MeetingMapper;
import com.hqgml.sign.servce.MeetingService;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;
import sun.security.provider.MD2;

import java.util.List;

/**
 * @author Devil
 * @date 2019/12/31 10:47
 */
@Service
@Slf4j
@Transactional(rollbackFor = Exception.class)
public class MeetingServiceImpl implements MeetingService {

    @Resource
    private MeetingMapper meetingMapper;

    @Resource
    private SysUserService sysUserService;

    @Resource
    private MeetingPersionMapper meetingPersionMapper;


    @Resource
    private PersonsService personsService;


    @Override
    public void addMeeting(Meeting meeting) {
        SysUser sysUser = sysUserService.findUserByUserName(null);
        meeting.setAddId(sysUser.getId());
        String uuid = IdUtil.simpleUUID();
        meeting.setUuid(uuid);
        meeting.setPersionNumber("0");
        int insert = meetingMapper.insert(meeting);
        if (insert != 1) {
            throw new XxException(ExceptionEnums.MEETING_ADD_ERROR);
        }
    }

    @Override
    public LayUi getMeetingByUser(String username, Integer page, Integer limit, String meetingName) {
        SysUser sysUser;
        if (username == null) {
            sysUser = sysUserService.findUserByUserName(null);
        } else {
            sysUser = sysUserService.findUserByUserName(username);
        }
        PageHelper.startPage(page, limit);
        List<Meeting> meetings = meetingMapper.selectAllByAddId(sysUser.getId(), meetingName);
        if (meetings == null) {
            throw new XxException(ExceptionEnums.MEETING_NOT_FIND);
        }
        PageInfo<Meeting> brandPageInfo = new PageInfo<>(meetings);
        LayUi<Meeting> layUi = new LayUi<>();
        layUi.setCount(brandPageInfo.getTotal());
        layUi.setData(meetings);
        return layUi;
    }

    @Override
    public void updateMeeting(Meeting meeting) {
        int update = meetingMapper.updateByPrimaryKeySelective(meeting);
        if (update != 1) {
            throw new XxException(ExceptionEnums.UPDATE_ERROR);
        }
    }

    @Override
    public void deleteMeeting(Integer[] ids) {
        for (Integer id : ids) {
            log.info("删除id为" + id + "的会议");
            meetingMapper.deleteById(id);
        }
    }

    @Override
    public void addMeetingPeople(Integer mid, Integer[] pids) {
        Meeting meeting = meetingMapper.findOneById(mid);
        if (meeting == null) {
            throw new XxException(ExceptionEnums.MEETING_NOT_FIND);
        }
        for (Integer pid : pids) {
            //这里面已经处理了person为null的情况
            personsService.selectById(pid);

            MeetingPersion one = meetingPersionMapper.selectOneByMidAndPid(mid, pid);
            if (one != null) {
                throw new XxException(ExceptionEnums.PERSON_IS_HAVE);
            }
            MeetingPersion meetingPersion = new MeetingPersion();
            meetingPersion.setMid(mid);
            meetingPersion.setPid(pid);
            meetingPersion.setIscheck(0);
            int insert = meetingPersionMapper.insert(meetingPersion);
            if (insert != 1) {

            }
        }

    }

    @Override
    public Meeting findMeetingByName(String meetingname) {
        Meeting oneByMeetingName = meetingMapper.findOneByMeetingName(meetingname);
        if (oneByMeetingName == null) {
            throw new XxException(ExceptionEnums.MEETING_NOT_FIND);
        }
        return oneByMeetingName;
    }


}



