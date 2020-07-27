package com.hqgml.sign;

import com.hqgml.sign.controller.PersonController;
import com.hqgml.sign.controller.RoleController;
import com.hqgml.sign.others.jwt.JwtUtils;
import com.hqgml.sign.others.pojo.Common;
import com.hqgml.sign.others.pojo.JwtProperties;
import com.hqgml.sign.others.pojo.Payload;
import com.hqgml.sign.others.pojo.RedisProperties;
import com.hqgml.sign.others.utlis.AddressUtils;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.servce.MeetingService;
import com.hqgml.sign.servce.MiniUserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.http.ResponseEntity;

import java.util.concurrent.TimeUnit;

@SpringBootTest
class SignApplicationTests {

    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private JwtProperties jwtProperties;

    @Autowired
    private RedisProperties redisProperties;

    @Autowired
    private PersonController personController;

    @Autowired
    private RoleController roleController;


    @Autowired
    private MeetingService meetingService;


    @Autowired
    private MiniUserService miniUserService;

    @Test
    void contextLoads() {
        Long role_user = redisTemplate.getExpire("2222222", TimeUnit.DAYS);
        System.out.println(role_user);
    }

    @Test
    void add() {
        redisTemplate.opsForValue().set("111","1",43200,TimeUnit.MINUTES);
    }

    @Test
    void  testJwt(){
        System.out.println(jwtProperties.getExpire());
    }

    @Test
    void  get(){
        String dsadadadadad = redisTemplate.opsForValue().get("dsadadadadad");
        System.out.println(dsadadadadad);
    }

    @Test
    void  token(){
        SysUser sysUser=new SysUser();
        sysUser.setUsername("dadada");
        sysUser.setPassword("dadada");
        String s = JwtUtils.generateTokenExpireInMinutes(sysUser, jwtProperties.getPrivateKey(), 1000033);
        System.out.println(s);
        redisTemplate.opsForValue().set("token",s);
    }

    @Test
    void getgoken(){
        String token = redisTemplate.opsForValue().get("token");
        Payload<SysUser> infoFromToken = JwtUtils.getInfoFromToken(token, jwtProperties.getPublicKey(), SysUser.class);
        System.out.println(infoFromToken);
    }


    @Test
    void getredis(){
        System.out.println(redisProperties.getRedisCache());
    }



    @Test
    void findRole(){
        ResponseEntity<Common> des = roleController.getDes(1);
        System.out.println(des);
    }
    @Test
    void Person(){
//        miniUserService.setUnBand("o8o2v4k6ePvEwXJma99DFatP6hR4");
    }

    @Test
    void tara(){
//        Meeting meeting = meetingService.selectById(93);
//        @NotNull Double lat = meeting.getLat();
//        @NotNull Double lng = meeting.getLng();
//        System.out.println(lat+","+lng);
          AddressUtils.BaiduTransformTen("35.4635124206543,119.53459167480469");
    }
    @Test
    void getAddress(){
        String qq = AddressUtils.getCoordinateQQ("日照职业技术学院", "日照", null);
        System.out.println(qq);
    }



}
