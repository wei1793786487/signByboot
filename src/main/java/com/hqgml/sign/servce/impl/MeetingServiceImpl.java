package com.hqgml.sign.servce.Impl;

import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.utlis.Exception.ExceptionEnums;
import com.hqgml.sign.utlis.Exception.XxException;
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
        List<Meeting> meetings = meetingMapper.selectAll();
        if (meetings == null) {
            throw new XxException(ExceptionEnums.MEETING_NOT_FIND);
        }
        return meetings;
    }
}


