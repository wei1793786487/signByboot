package com.hqgml.sign.controller;

import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.servce.impl.MeetingServiceImpl;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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


    @PostMapping
    public ResponseEntity<Common> addMeeting(@Valid Meeting meeting) {
        meetingService.addMeeting(meeting);
        Common common = new Common("添加成功");
        return ResponseEntity.ok(common);
    }

    @GetMapping()
    public ResponseEntity<LayUi> getAllByUser(
            @RequestParam(name = "username", required = false) String username,
            @RequestParam(name = "page", required = false, defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "15") Integer limit,
            @RequestParam(name = "meetingName", required = false) String meetingName
    ) {
        LayUi data = meetingService.getMeetingByUser(username, page, limit, meetingName);
        return ResponseEntity.ok(data);
    }

    @PutMapping
    public ResponseEntity<Common> update(@Valid Meeting meeting) {
        meetingService.updateMeeting(meeting);
        Common common = new Common("修改成功");
        return ResponseEntity.ok(common);
    }

    @DeleteMapping
    public ResponseEntity<Common> delete(@RequestParam("ids[]") Integer[] ids){
        meetingService.deleteMeeting(ids);
        Common common=new Common("删除成功");
        return ResponseEntity.ok(common);
    }


}
