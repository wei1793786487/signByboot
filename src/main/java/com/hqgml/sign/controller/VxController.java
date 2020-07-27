package com.hqgml.sign.controller;


import com.hqgml.sign.others.annotation.ControllerLog;
import com.hqgml.sign.others.pojo.Common;
import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.others.utlis.UserUtils;
import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.pojo.VxLoginToken;
import com.hqgml.sign.pojo.VxUser;
import com.hqgml.sign.servce.MiniUserService;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.nio.charset.MalformedInputException;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("vx")
public class VxController {
    @Autowired
    private MiniUserService MiniUserService;

    /**
     * 登录
     * @param code
     * @param
     * @return
     */
    @GetMapping("login")
    public ResponseEntity<Common> login(@RequestParam String code) {
        String token = MiniUserService.getUserInfo(code);
        return ResponseEntity.ok(new Common<>(token));
    }

    @GetMapping("bandinfo")
    public ResponseEntity<Common> getbandinfo(HttpServletRequest request) {
        VxUser vxUser = UserUtils.getVxUserByToken(request);
        Map band= MiniUserService.getBrand(vxUser);
        return ResponseEntity.ok(new Common<>(band));
    }

    @PostMapping("band")
    public ResponseEntity<Common> setBand(
            HttpServletRequest request,
            @RequestParam("pname") String personName,
            @RequestParam("phone") String phone
            ) {
        VxUser vxUser = UserUtils.getVxUserByToken(request);
        //0代表绑定管理员添加的人脸,1代表绑定了但是为绑定人脸
        Integer info = MiniUserService.setBand(vxUser, personName, phone);
        return ResponseEntity.ok(new Common<>(info));
    }


    @PostMapping("unband/{openid}/{type}")
    public ResponseEntity<Common> setUnBand(
            @PathVariable("openid") String openid,
            @PathVariable(value = "type") Integer type
    ) {
        MiniUserService.setUnBand(openid,type);
        return ResponseEntity.ok(new Common<>("解绑成功"));
    }




    @GetMapping
    @ControllerLog(describe = "查询小程序人员")
    @ApiOperation(value = "查询小程序人员")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "page",value = "当前页",defaultValue = "1",type = "Integer"),
            @ApiImplicitParam(name = "limit",value = "每页的大小",defaultValue = "15",type = "Integer"),
    })
    public MyPageInfo getMiniAll(
            @RequestParam(name = "page", required = false, defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "15") Integer limit
    ) {
        return MiniUserService.selectAll(page,limit);
    }






}
