package com.hqgml.sign.others.pojo;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * @author Devil
 * @date 2020/4/20 22:06
 */
@Component
@Data
@ConfigurationProperties(prefix = "hqgml.redis")
public class RedisProperties {
    /**
     * token的浅醉
     */
    private  String tokenPre;

    /**
     * token的过期时间
     */
    private int redisCache;

    /**
     * 多长时间未登录刷新token失效
     */
    private int disparity;
}
