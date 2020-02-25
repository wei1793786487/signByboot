package com.hqgml.sign.controller;

import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.servce.CheckServices;
import com.hqgml.sign.utlis.annotation.ControllerLog;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Devil
 * @date 2020/1/21 17:55
 */
@RestController
@RequestMapping("check")
@Api(tags = "人员签到管理接口")
public class CheckController {

    @Resource
    private CheckServices checkServices;


    /**
     * 查询签到情况
     *
     * @param mid 会议的id
     * @return 返回签到人员的列表
     */
    @GetMapping("{mid}")
    @ControllerLog(describe = "查询签到情况")
    @ApiOperation(value = "查询签到情况")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "mid",value = "要查询的会议的id"),
            @ApiImplicitParam(name = "page",value = "当前页",defaultValue = "1",type = "Integer"),
            @ApiImplicitParam(name = "limit",value = "每页的大小",defaultValue = "15",type = "Integer"),
            @ApiImplicitParam(name = "personName",value = "人员的名字，用来查询某个单独的人员签到状态"),
            @ApiImplicitParam(name = "isCheck",value = "要查询的签到状态,0为未签到,1为签到",type = "Integer")

    })
    public ResponseEntity<LayUi> selectSignPerson(
            @PathVariable("mid") Integer mid,
            @RequestParam(name = "page", required = false, defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "15") Integer limit,
            @RequestParam(name = "personName", required = false) String personName,
            @RequestParam(name = "isCheck", required = false) Integer isCheck
    ) {
        LayUi layUi = checkServices.selectCheck(mid, page, limit, personName, isCheck);
        return ResponseEntity.ok(layUi);
    }

    /**
     * 更改签到状态
     *
     * @param mid 会议id
     * @param check 要修改的签到状态,0为未签到,1为签到
     * @param ids 要修改的id
     * @return 返回200表示成功
     */
    @ApiOperation(value = "修改签到状态")
    @PutMapping("{isCheck}/{mid}")
    @ControllerLog(describe = "修改签到状态")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "mid",value = "要查询的会议的id"),
            @ApiImplicitParam(name = "isCheck",value = "要修改的签到状态,0为未签到,1为签到",type = "Integer"),
            @ApiImplicitParam(name = "ids",value = "要修改的id,数组类型，如[1,2,3]",type = "Integer[]"),
    })
    public ResponseEntity<Common> chanceCheck(@PathVariable("mid") Integer mid, @PathVariable("isCheck") Integer check, @RequestParam("ids[]") Integer[] ids) {
        checkServices.updateCheck(mid, check, ids);
        return ResponseEntity.ok(new Common("修改完成"));
    }

    /**
     * 删除
     * @param pid  要删除的人员id
     * @param mid  要删除的会议id
     *
     */
    @DeleteMapping
    @ControllerLog(describe = "删除会议人员")
    @ApiOperation(value = "删除会议人员")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pid",value = "要删除的人员的id"),
            @ApiImplicitParam(name = "mid",value = "要删除的会议的id")
    })
    public ResponseEntity<Common> deleteCheckPserson(@RequestParam("pid") Integer pid, @RequestParam("mid") Integer mid) {
        checkServices.deletePerson(mid, pid);
        return ResponseEntity.ok(new Common("删除成功"));
    }

    /**
     * 查看签到与未签到的人数
     * @param mid 要查询的会议的id
     */
    @GetMapping
    @ControllerLog(describe = "查询签到比例")
    @ApiOperation(value = "查看签到与未签到的数量")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "mid",value = "要查询的会议的id")
    })
    public ResponseEntity<Common> findCheckNumber(@RequestParam("mid") Integer mid){
        Integer checkNumber=checkServices.countCheck(1,mid);
        Integer uncheckNumber=checkServices.countCheck(0,mid);
        Map<String,Integer> number=new HashMap<>();
        number.put("checkNumber",checkNumber);
        number.put("uncheckNumber",uncheckNumber);
        return ResponseEntity.ok(new Common(number));
    }
}
