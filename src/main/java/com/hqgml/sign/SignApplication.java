package com.hqgml.sign;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan("com.hqgml.sign.mapper")
public class SignApplication {

    public static void main(String[] args) {
        SpringApplication.run(SignApplication.class, args);
    }

}
