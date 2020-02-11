package com.hqgml.sign;


import com.alibaba.fastjson.JSON;
import com.github.qcloudsms.SmsSingleSenderResult;
import com.github.tobato.fastdfs.domain.fdfs.StorePath;
import com.github.tobato.fastdfs.domain.fdfs.ThumbImageConfig;
import com.github.tobato.fastdfs.service.FastFileStorageClient;
import com.hqgml.sign.controller.LogController;
import com.hqgml.sign.mapper.PersonsMapper;
import com.hqgml.sign.config.MsgProperties;
import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.servce.MeetingService;
import com.hqgml.sign.servce.MsgServices;
import com.hqgml.sign.servce.SysUserService;
import com.hqgml.sign.utlis.IdWorker;
import com.hqgml.sign.utlis.MsgUtils;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.List;

@SpringBootTest
@EnableConfigurationProperties(MsgProperties.class)
class SignApplicationTests {


    @Autowired
    private SysUserService sysUserService;
    @Autowired
    private MeetingService meetingService;


    @Autowired
    @Test
    void findUser() {
        List<Meeting> meetings = meetingService.selectLikeMeetingName("瑶瑶");
        System.out.println(meetings);
    }

}
