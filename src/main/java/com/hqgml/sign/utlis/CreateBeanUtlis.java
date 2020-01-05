package com.hqgml.sign.utlis;

import com.hqgml.sign.config.KeyProperties;
import com.tencentcloudapi.common.Credential;
import com.tencentcloudapi.common.profile.ClientProfile;
import com.tencentcloudapi.common.profile.HttpProfile;
import com.tencentcloudapi.iai.v20180301.IaiClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;


/**
 * @data 2019/12/13 12:20
 * @author Devil
 **/

@Component
@EnableConfigurationProperties(KeyProperties.class)
@Configuration
public class CreateBeanUtlis {

    @Autowired
    private KeyProperties keyProperties;

    /**
     * 获取 IaiClient执行对象 反射注入容器
     *
     * @return
     */
    @Bean
    public IaiClient getClient() {
        Credential cred = new Credential(keyProperties.getSecretId(), keyProperties.getSecretKey());
        HttpProfile httpProfile = new HttpProfile();
        httpProfile.setEndpoint("iai.tencentcloudapi.com");
        ClientProfile clientProfile = new ClientProfile();
        clientProfile.setHttpProfile(httpProfile);
        IaiClient client = new IaiClient(cred, "ap-beijing", clientProfile);
        return client;
    }

    /**
     * 获取生成唯一标识
     * @return
     */
    @Bean
    public IdWorker getIdwork() {
        IdWorker idWorker = new IdWorker(1, 1);
        return idWorker;
    }


    /**
     * BCrypt加密
     *
     * @return
     */
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }


}
