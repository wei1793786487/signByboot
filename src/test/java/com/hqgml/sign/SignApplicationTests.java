package com.hqgml.sign;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.StringRedisTemplate;

import java.util.concurrent.TimeUnit;

@SpringBootTest
class SignApplicationTests {

    @Autowired
    private StringRedisTemplate redisTemplate;

    @Test
    void contextLoads() {
        Long role_user = redisTemplate.getExpire("2222222", TimeUnit.DAYS);
        System.out.println(role_user);
    }

    @Test
    void add() {
        redisTemplate.opsForValue().set("111","1",10,TimeUnit.HOURS);
    }
}
