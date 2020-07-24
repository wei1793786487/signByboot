package com.hqgml.sign.controller;


import com.hqgml.sign.others.pojo.Common;
import com.hqgml.sign.others.utlis.UserUtils;
import com.hqgml.sign.pojo.VxLoginToken;
import com.hqgml.sign.pojo.VxUser;
import com.hqgml.sign.servce.MiniUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.nio.charset.MalformedInputException;
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
          MiniUserService.setBand(vxUser,personName,phone);
        return ResponseEntity.ok(new Common<>("绑定成功"));
    }


}
