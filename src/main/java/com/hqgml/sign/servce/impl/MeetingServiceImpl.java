package com.hqgml.sign.servce.impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.hqgml.sign.mapper.MeetingMapper;
import com.hqgml.sign.servce.MeetingService;
/**
*@author Devil
*@date  2019/12/29 0:35
*/
@Service
public class MeetingServiceImpl implements MeetingService{

    @Resource
    private MeetingMapper meetingMapper;

}
