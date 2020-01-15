package com.hqgml.sign.controller;

import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.servce.impl.MeetingServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;

/**
 * @author Devil
 * @date 2019/12/31 23:08
 */
@RestController()
@RequestMapping("meeting")
public class MeetingController {
    @Resource
    private MeetingServiceImpl meetingService;
    @GetMapping
    public LayUi<Meeting> getAll() {
        LayUi<Meeting> layUi = new LayUi<>();
        List<Meeting> mall = meetingService.getAll();
        layUi.setCount(1000L);
        layUi.setData(mall);
        return layUi;
    }

    @PostMapping
    public ResponseEntity<Common> addMeeting(@Valid Meeting meeting){
        meetingService.addMeeting(meeting);
        Common common=new Common("添加成功");
        return ResponseEntity.ok(common);
    }


}
