package com.hqgml.sign.controller;

import com.hqgml.sign.mapper.PersonsMapper;
import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.servce.MeetingService;
import com.hqgml.sign.utlis.annotation.ControllerLog;
import io.swagger.annotations.Api;
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
@Api(tags = "会议管理接口")

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
    @ControllerLog(describe = "添加会议")

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
    @ControllerLog(describe = "查询会议")
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
    @ControllerLog(describe = "修改会议")

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
    @ControllerLog(describe = "删除所选会议")
    public ResponseEntity<Common> delete(@RequestParam("ids[]") Integer[] ids) {
        meetingService.deleteMeeting(ids);
        Common common = new Common("删除成功");
        return ResponseEntity.ok(common);
    }

    /**
     * 将人员添加进会议
     *
     * @param mid
     * @param pids
     * @return
     */
    @PostMapping("person")
    @ControllerLog(describe = "添加人员进入会议")

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
    @ControllerLog(describe = "添加该用户下所有人员进入会议")
    public ResponseEntity<Common> addPerson(@RequestParam("mid") Integer mid) {
        List<String> message = meetingService.addMeetingAllPeople(mid);
        return ResponseEntity.ok(new Common(message));
    }

//    /**
//     * 查询用户信息根据uuid(不限制次数应该使用这个id)
//     * @param uuid
//     * @return
//     */
//    @GetMapping("/information/{uuid}")
//    public ResponseEntity<Common> selectMeetingByuuid(@PathVariable("uuid") String uuid) {
//        Meeting meeting = meetingService.selectByuuid(uuid);
//        return ResponseEntity.ok(new Common(meeting));
//    }


    /**
     * 查询会议信息根据id
     * @param
     * @return
     */
    @GetMapping("/information/{id}")
    public ResponseEntity<Common> selectMeetingByid(@PathVariable("id") Integer id) {
        Meeting meeting = meetingService.selectById(id);
        return ResponseEntity.ok(new Common(meeting));
    }

    @GetMapping("/winformation/{meetingname}")
    public ResponseEntity<Common>selectMeetingInformation(@PathVariable("meetingname") String meetingname){
     List<Meeting> meetings=  meetingService.selectLikeMeetingName(meetingname);
        return ResponseEntity.ok(new Common(meetings));

    }


}
