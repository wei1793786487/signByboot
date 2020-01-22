package com.hqgml.sign.controller;

import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.servce.CheckServices;
import com.hqgml.sign.utlis.annotation.ControllerLog;
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
public class CheckController {

    @Resource
    private CheckServices checkServices;




    /**
     * 查询签到情况
     *
     * @param mid
     * @return
     */
    @GetMapping("{mid}")
    @ControllerLog(describe = "查询签到情况")
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
     * @param mid
     * @param check
     * @param ids
     * @return
     */
    @PutMapping("{isCheck}/{mid}")
    @ControllerLog(describe = "修改签到状态")
    public ResponseEntity<Common> chanceCheck(@PathVariable("mid") Integer mid, @PathVariable("isCheck") Integer check, @RequestParam("ids[]") Integer[] ids) {
        checkServices.updateCheck(mid, check, ids);
        return ResponseEntity.ok(new Common("修改完成"));
    }

    /**
     * 删除
     * @param pid
     * @param mid
     * @return
     */
    @DeleteMapping
    @ControllerLog(describe = "删除会议人员")
    public ResponseEntity<Common> deleteCheckPserson(@RequestParam("pid") Integer pid, @RequestParam("mid") Integer mid) {
        checkServices.deletePerson(mid, pid);
        return ResponseEntity.ok(new Common("删除成功"));
    }

    /**
     * 查看签到与未签到的人数
     * @param mid
     * @return
     */
    @GetMapping
    @ControllerLog(describe = "查询签到比例")
    public ResponseEntity<Common> findCheckNumber(@RequestParam("mid") Integer mid){
        Integer checkNumber=checkServices.countCheck(1,mid);
        Integer uncheckNumber=checkServices.countCheck(0,mid);
        Map<String,Integer> number=new HashMap<>();
        number.put("checkNumber",checkNumber);
        number.put("uncheckNumber",uncheckNumber);
        return ResponseEntity.ok(new Common(number));
    }
}
