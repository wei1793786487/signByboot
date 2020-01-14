package com.hqgml.sign.controller;

import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.servce.impl.MeetingServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author Devil
 * @date 2019/12/31 23:08
 */
@RestController()
@RequestMapping("meeting")
public class MeetingController {
    @Autowired
    private MeetingServiceImpl meetingService;
    @GetMapping
    public LayUi<Meeting> getAll() {

        LayUi<Meeting> layUi = new LayUi<>();
        List<Meeting> mall = meetingService.getAll();
        layUi.setCount(1000L);
        layUi.setData(mall);
        return layUi;
    }
}
