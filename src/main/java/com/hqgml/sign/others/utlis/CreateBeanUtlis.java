package com.hqgml.sign.others.utlis;

import com.hqgml.sign.others.config.KeyProperties;
import com.qcloud.cos.COSClient;
import com.qcloud.cos.ClientConfig;
import com.qcloud.cos.auth.BasicCOSCredentials;
import com.qcloud.cos.auth.COSCredentials;
import com.qcloud.cos.region.Region;
import com.tencentcloudapi.common.Credential;
import com.tencentcloudapi.common.profile.ClientProfile;
import com.tencentcloudapi.common.profile.HttpProfile;
import com.tencentcloudapi.iai.v20180301.IaiClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.sql.DataSource;


/**
 * @author Devil
 * @data 2019/12/13 12:20
 **/

@Component
@EnableConfigurationProperties(KeyProperties.class)
@Configuration
public class CreateBeanUtlis {


    @Resource
    private DataSource dataSource;

    @Value("${tenlent.region}")
    private String region;

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
        IaiClient client = new IaiClient(cred, region, clientProfile);
        return client;
    }

    /**
     * 获取生成唯一标识
     *
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


    @Bean
    public PersistentTokenRepository persistentTokenRepository() {
        JdbcTokenRepositoryImpl tokenRepository = new JdbcTokenRepositoryImpl();
        //数据源设置
        tokenRepository.setDataSource(dataSource);
        //启动的时候创建表，这里只执行一次，第二次就注释掉，否则每次启动都重新创建表
        //tokenRepository.setCreateTableOnStartup(true);
        return tokenRepository;
    }

    @Bean
    public COSClient createCOS() {
        COSCredentials cred = new BasicCOSCredentials(keyProperties.getSecretId(),keyProperties.getSecretKey());
        Region region = new Region(this.region);
        ClientConfig clientConfig = new ClientConfig(region);
        return new COSClient(cred, clientConfig);
    }

}
