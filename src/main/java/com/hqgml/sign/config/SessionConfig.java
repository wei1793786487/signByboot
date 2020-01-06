package com.hqgml.sign.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;

/**
 * spring session的问他
 */
@Configuration
@EnableRedisHttpSession
public class SessionConfig {
    
}
