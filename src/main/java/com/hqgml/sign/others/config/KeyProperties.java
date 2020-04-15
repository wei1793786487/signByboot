package com.hqgml.sign.others.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;


/**@author Devil
 * @Data 2019/12/13 12:13
 **/
@Component
@ConfigurationProperties(prefix = "tenlent.keys")
@Data
public class KeyProperties {
    private String secretId;
    private String secretKey;
    private Integer appId;
    private String appKey;
}
