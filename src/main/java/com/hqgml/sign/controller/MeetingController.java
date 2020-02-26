package com.hqgml.sign.controller;

import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.servce.MeetingService;
import com.hqgml.sign.utlis.annotation.ControllerLog;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
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
    @Autowired
    private MeetingService meetingService;


    /**
     * 添加会议
     *
     * @param meeting 会议对象
     *
     */
    @PostMapping
    @ControllerLog(describe = "添加会议")
    @ApiOperation(value = "添加会议相关接口")
    public ResponseEntity<Common> addMeeting(@Valid Meeting meeting) {
        meetingService.addMeeting(meeting);
        Common common = new Common("添加成功");
        return ResponseEntity.ok(common);
    }


    /**
     * 查询会议
     *
     * @param username 用户名
     * @param page 当前的页面
     * @param limit 要搜索的条数
     * @param meetingName 会议的名称
     *
     */
    @GetMapping
    @ControllerLog(describe = "查询会议")
    @ApiOperation(value = "查询签到情况")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "username",value = "要查询的用户名，可以不传，默认为当前登录用户"),
            @ApiImplicitParam(name = "page",value = "当前页",defaultValue = "1",type = "Integer"),
            @ApiImplicitParam(name = "limit",value = "每页的大小",defaultValue = "15",type = "Integer"),
            @ApiImplicitParam(name = "meetingName",value = "搜索的会议的名字，仅支持会议的名字"),
    })
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
     * @param meeting 要修改的会议的对象
     *
     */
    @PutMapping
    @ControllerLog(describe = "修改会议")
    @ApiOperation(value = "修改会议")
    public ResponseEntity<Common> update(@Valid Meeting meeting) {
        meetingService.updateMeeting(meeting);
        Common common = new Common("修改成功");
        return ResponseEntity.ok(common);
    }

    /**
     * 删除所选会议
     *
     * @param ids 要删除的会议的id数组
     *
     */
    @DeleteMapping
    @ControllerLog(describe = "删除所选会议")
    @ApiOperation(value = "删除会议")

    @ApiImplicitParam(name = "ids[]",value = "要删除的会议的id的数组",required = true)

    public ResponseEntity<Common> delete(@RequestParam("ids[]") Integer[] ids) {
        meetingService.deleteMeeting(ids);
        Common common = new Common("删除成功");
        return ResponseEntity.ok(common);
    }

    /**
     * 将人员添加进会议
     *
     * @param mid 会议的id
     * @param pids 人员的id数组
     *
     */
    @PostMapping("person")
    @ControllerLog(describe = "添加人员进入会议")
    @ApiOperation(value = "添加人员进入会议")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "mid",value = "要添加的会议的id",required = true),
            @ApiImplicitParam(name = "pids",value = "要添加的人员id 数组类型",required = true),
    })
    @ApiImplicitParam(name = "mid",value = "要删除的会议的id的数组")

    public ResponseEntity<Common> addPerson(@RequestParam("mid") Integer mid, @RequestParam("pids") Integer[] pids) {
        List<String> message = meetingService.addMeetingPeople(mid, pids);
        return ResponseEntity.ok(new Common(message));
    }

    /**
     * 将该用户下所有人员添加进会议
     *
     * @param mid  会议的id
     *
     */
    @PostMapping("addAll")
    @ControllerLog(describe = "添加该用户下所有人员进入会议")
    @ApiOperation(value = "将登录用户所属的所有的人员添加到该会议")
    @ApiImplicitParam(name = "mid",value = "要添加的会议的id",required = true)

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
     * @param id 会议的id
     *
     */
    @ApiOperation(value = "根据用户的id查询单个会议信息，这个接口不需要登录")
    @ApiImplicitParam(name = "mid",value = "要搜索的会议的id",required = true)
    @GetMapping("/information/{id}")
    public ResponseEntity<Common> selectMeetingByid(@PathVariable("id") Integer id) {
        Meeting meeting = meetingService.selectById(id);
        return ResponseEntity.ok(new Common(meeting));
    }

    /**
     * 根据会议的名字模糊查询
     * @param meetingname  会议的名字
     */
    @GetMapping("/winformation/{meetingname}")
    @ApiOperation(value = "根据会议的名字模糊查询")
    @ApiImplicitParam(name = "mid",value = "要搜索的会议的会议名称，这个接口不需要登录",required = true)
    public ResponseEntity<Common>selectMeetingInformation(@PathVariable("meetingname") String meetingname){
     List<Meeting> meetings=  meetingService.selectLikeMeetingName(meetingname);
        return ResponseEntity.ok(new Common(meetings));

    }


}
