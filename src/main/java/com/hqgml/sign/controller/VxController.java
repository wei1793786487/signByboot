package com.hqgml.sign.controller;


import com.hqgml.sign.others.pojo.Common;
import com.hqgml.sign.others.utlis.UserUtils;
import com.hqgml.sign.pojo.VxLoginToken;
import com.hqgml.sign.pojo.VxUser;
import com.hqgml.sign.servce.MiniUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

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

    @GetMapping("band")
    public ResponseEntity<Common> getband(HttpServletRequest request) {
        VxUser vxUser = UserUtils.getVxUserByToken(request);
        Map band= MiniUserService.getBrand(vxUser);
        return ResponseEntity.ok(new Common<>(band));
    }


}
