package com.hqgml.sign.servce.impl;

import com.hqgml.sign.pojo.Meeting;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import com.hqgml.sign.mapper.MeetingMapper;
import com.hqgml.sign.servce.MeetingService;

import java.util.List;

/**
 * @author Devil
 * @date 2019/12/31 10:47
 */
@Service
public class MeetingServiceImpl implements MeetingService {

    @Resource
    private MeetingMapper meetingMapper;

    public List<Meeting> getAll() {
        return meetingMapper.selectAll();
    }
}


