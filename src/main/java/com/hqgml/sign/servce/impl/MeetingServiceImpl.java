package com.hqgml.sign.servce.impl;

import cn.hutool.core.util.IdUtil;
import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.servce.SysUserService;
import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.XxException;
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
@Transactional(rollbackFor = Exception.class)

public class MeetingServiceImpl implements MeetingService {

    @Resource
    private MeetingMapper meetingMapper;

    @Resource
    private SysUserService sysUserService;

    public List<Meeting> getAll() {
        return meetingMapper.selectAll();
    }

    @Override
    public void addMeeting(Meeting meeting) {
        SysUser sysUser = sysUserService.findUserByUserName(null);
        meeting.setAddId(sysUser.getId());
        String uuid = IdUtil.simpleUUID();
        meeting.setUuid(uuid);
        meeting.setPersionNumber("0");
        int insert = meetingMapper.insert(meeting);
        if (insert!=1){
            throw new XxException(ExceptionEnums.MEETING_ADD_ERROR);
        }
    }
}



