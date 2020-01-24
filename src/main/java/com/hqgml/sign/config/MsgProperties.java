package com.hqgml.sign.config;

import com.hqgml.sign.config.KeyProperties;
import com.hqgml.sign.utlis.MsgUtils;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Properties;

/**
 * @author Devil
 * @date 2020/1/23 21:40
 */
@Component
@ConfigurationProperties(prefix = "tenlent.sms")
@Data
public class MsgProperties {


    /**
     * 应用id
     */
    private Integer appId;

    /**
     * 应用密码
     */
    private String appKey;

;

    /**
     * 全体通知的模板id
     */
    private Integer sendAllTemplateId;


    /**
     * 通知单个的模板id
     */
    private Integer sendOneTemplateId;


    /**
     * 签名
     */
    private String sign;






}
