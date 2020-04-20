package com.hqgml.sign;

import com.hqgml.sign.others.jwt.JwtUtils;
import com.hqgml.sign.others.pojo.JwtProperties;
import com.hqgml.sign.others.pojo.Payload;
import com.hqgml.sign.pojo.SysUser;
import javafx.scene.chart.XYChart;
import org.apache.commons.collections4.SplitMapUtils;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.StringRedisTemplate;

import java.util.concurrent.TimeUnit;

@SpringBootTest
class SignApplicationTests {

    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private JwtProperties jwtProperties;

    @Test
    void contextLoads() {
        Long role_user = redisTemplate.getExpire("2222222", TimeUnit.DAYS);
        System.out.println(role_user);
    }

    @Test
    void add() {
        redisTemplate.opsForValue().set("111","1",10,TimeUnit.HOURS);
    }

    @Test
    void  testJwt(){
        System.out.println(jwtProperties);
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
        String s = JwtUtils.generateTokenExpireInMinutes(sysUser, jwtProperties.getPrivateKey(), 1);
        System.out.println(s);
        redisTemplate.opsForValue().set("token",s);
    }

    @Test
    void getgoken(){
        String token = redisTemplate.opsForValue().get("token");
        Payload<SysUser> infoFromToken = JwtUtils.getInfoFromToken(token, jwtProperties.getPublicKey(), SysUser.class);
        System.out.println(infoFromToken);
    }
}
