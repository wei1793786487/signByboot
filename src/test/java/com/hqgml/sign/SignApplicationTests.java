package com.hqgml.sign;

import cn.hutool.core.date.DateUtil;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class SignApplicationTests {

    @Test
    void contextLoads() {
        String now = DateUtil.now();
        System.out.println( "时间是"+now);
    }

}
