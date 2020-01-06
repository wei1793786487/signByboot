package com.hqgml.sign.config;

import com.hqgml.sign.handler.*;
import com.hqgml.sign.servce.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * @author Devil
 * @date 2020/1/3 20:53
 */
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {


    /**
     * 成功的处理
     */
    @Autowired
    CustomizeAuthenticationSuccessHandler authenticationSuccessHandler;
    /**
     * 失败的处理器
     */
    @Autowired
    CustomizeAuthenticationFailureHandler authenticationFailureHandler;

    /**
     * 登出成功的处理器
     */
    @Autowired
    private CustomizeLogoutSuccessHandler logoutSuccessHandler;

    /**
     * 匿名用户访问无权限资源时的异常
     */
    @Autowired
    CustomizeAuthenticationEntryPoint authenticationEntryPoint;

    /**
     * 权限拒绝处理逻辑
     */
    @Autowired
    CustomizeAccessDeniedHandler accessDeniedHandler;


    /**
     * 会话失效
     */
    @Autowired
    CustomizeSessionInformationExpiredStrategy sessionInformationExpiredStrategy;


    @Autowired
    private SysUserService userService;


    @Autowired
    private PasswordEncoder passwordEncoder;

    /**
     * 认证用户的来源
     *
     * @param auth
     * @throws Exception
     */
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        /**
         * 设置为数据库认证并指定是什么认证
         */
        auth.userDetailsService(userService).passwordEncoder(passwordEncoder);
    }

    /**
     * 配置springsecuryy的相关信息
     *
     * @param http
     * @throws Exception
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.cors().and().csrf().disable();
        http.authorizeRequests()
                .antMatchers("/meeting").hasAnyRole("ADMIN")
                .antMatchers("/**").fullyAuthenticated()
                .and()
                .formLogin()
                .permitAll()
                //成功的与失败的处理器
                .successHandler(authenticationSuccessHandler)
                .failureHandler(authenticationFailureHandler)
                .and().logout()
                .permitAll()
                //退出成功
                .logoutSuccessHandler(logoutSuccessHandler)
                .deleteCookies("JSESSIONID","SESSION","username")
                .and().exceptionHandling().
                //权限拒绝处理逻辑
                accessDeniedHandler(accessDeniedHandler).
                //匿名用户访问无权限资源时的异常处理
                authenticationEntryPoint(authenticationEntryPoint)
                .and()
                .sessionManagement()
                .maximumSessions(1)
                //同一账号同时登录最大用户数
                .expiredSessionStrategy(sessionInformationExpiredStrategy);
    }
}
