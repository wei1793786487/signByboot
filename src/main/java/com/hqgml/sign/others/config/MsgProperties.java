package com.hqgml.sign.others.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;


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
