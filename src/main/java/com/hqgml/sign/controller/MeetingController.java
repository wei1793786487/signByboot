package com.hqgml.sign.controller;

import com.hqgml.sign.mapper.PersonsMapper;
import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.servce.MeetingService;
import com.hqgml.sign.servce.PersonsService;
import com.hqgml.sign.servce.impl.MeetingServiceImpl;
import com.sun.xml.internal.bind.v2.TODO;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;
import java.util.Map;

/**
 * @author Devil
 * @date 2019/12/31 23:08
 */
@RestController()
@RequestMapping("meeting")
public class MeetingController {
    @Resource
    private MeetingService meetingService;


    /**
     * 添加会议
     *
     * @param meeting
     * @return
     */
    @PostMapping
    public ResponseEntity<Common> addMeeting(@Valid Meeting meeting) {
        meetingService.addMeeting(meeting);
        Common common = new Common("添加成功");
        return ResponseEntity.ok(common);
    }


    /**
     * 查询会议
     *
     * @param username
     * @param page
     * @param limit
     * @param meetingName
     * @return
     */
    @GetMapping
    public ResponseEntity<LayUi> getAllByUser(
            @RequestParam(name = "username", required = false) String username,
            @RequestParam(name = "page", required = false, defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "15") Integer limit,
            @RequestParam(name = "meetingName", required = false) String meetingName
    ) {
        LayUi data = meetingService.getMeetingByUser(username, page, limit, meetingName);
        return ResponseEntity.ok(data);
    }

    /**
     * 修改会议
     *
     * @param meeting
     * @return
     */
    @PutMapping
    public ResponseEntity<Common> update(@Valid Meeting meeting) {
        meetingService.updateMeeting(meeting);
        Common common = new Common("修改成功");
        return ResponseEntity.ok(common);
    }

    /**
     * 删除所选会议
     *
     * @param ids
     * @return
     */
    @DeleteMapping
    public ResponseEntity<Common> delete(@RequestParam("ids[]") Integer[] ids) {
        meetingService.deleteMeeting(ids);
        Common common = new Common("删除成功");
        return ResponseEntity.ok(common);
    }

    /**
     * 添加选择的人员进入会议
     *
     * @param mid
     * @param pids
     * @return
     */
    @PostMapping("person")
    public ResponseEntity<Common> addPerson(@RequestParam("mid") Integer mid, @RequestParam("pids") Integer[] pids) {
        List<String> message = meetingService.addMeetingPeople(mid, pids);
        return ResponseEntity.ok(new Common(message));
    }

    /**
     * 将该用户下所有人员添加进会议
     *
     * @param mid
     * @return
     */
    @PostMapping("addAll")
    public ResponseEntity<Common> addPerson(@RequestParam("mid") Integer mid) {
        List<String> message = meetingService.addMeetingAllPeople(mid);
        return ResponseEntity.ok(new Common(message));
    }



}
