package com.hqgml.sign;

import cn.hutool.core.date.DateUtil;
import com.hqgml.sign.utlis.getverUtils;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class SignApplicationTests {

    @Test
    void contextLoads() {
        String s = getverUtils.generateVerifyCode(4);
        System.out.println(s);
    }

}
