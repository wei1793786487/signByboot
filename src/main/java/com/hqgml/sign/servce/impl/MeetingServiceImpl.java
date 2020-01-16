package com.hqgml.sign.servce.impl;

import cn.hutool.core.util.IdUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.servce.SysUserService;
import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.XxException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import com.hqgml.sign.mapper.MeetingMapper;
import com.hqgml.sign.servce.MeetingService;
import org.springframework.transaction.annotation.Transactional;

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
        List<Meeting> meetings = meetingMapper.selectAllByAddId(sysUser.getId(),meetingName);
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
        if (update!=1){
            throw new XxException(ExceptionEnums.UPDATE_ERROR);
        }
    }

    @Override
    public void deleteMeeting(Integer[] ids) {
        for (Integer id : ids) {
            log.info("删除id为"+id+"的会议");
            meetingMapper.deleteById(id);
        }
    }


}



