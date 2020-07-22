package com.hqgml.sign.others.config;

import com.hqgml.sign.others.handler.*;
import com.hqgml.sign.others.jwt.JwtUtils;
import com.hqgml.sign.others.pojo.JwtProperties;
import com.hqgml.sign.others.pojo.RedisProperties;
import com.hqgml.sign.servce.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

/**
 * @author Devil
 * @date 2020/1/3 20:53
 */
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled = true)
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

   @Autowired
   private StringRedisTemplate redisTemplate;

   @Autowired
   private RedisProperties redisProperties;
    /**
     * jwt的参数
     */
    @Autowired
    private JwtProperties jwtProperties;


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
        String[] allowUrl = {"/meeting/winformation/**", "/meeting/information/**", "/findAddress", "/face/search"};
        String[] swagger = {"/swagger-ui.html", "/swagger-resources/**", "/images/**", "/webjars/**",
                "/v2/api-docs", "/configuration/ui", "/configuration/security"
        };
        String[] wxLogin={"/vx/login"};
        //如果需要验证码 将下面这段放入即可
        //"/verifyCode.jpg",放行这个url
        //addFilterBefore(new CustomizeValidateCodeFilter(redisTemplate,errorFailureHandler), UsernamePasswordAuthenticationFilter.class)
        http.cors().and().csrf().disable();
        http
                .authorizeRequests()
                .antMatchers(allowUrl).permitAll()
                .antMatchers(swagger).permitAll()
                .antMatchers(wxLogin).permitAll()
                .antMatchers("/**").authenticated()
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
                .deleteCookies("JSESSIONID", "SESSION", "username")
                .and().exceptionHandling().
                //权限拒绝处理逻辑
                        accessDeniedHandler(accessDeniedHandler).
                //匿名用户访问无权限资源时的异常处理
                        authenticationEntryPoint(authenticationEntryPoint)
                .and().addFilterAfter(new CustomizeVerifyFilter(super.authenticationManager(),jwtProperties,redisTemplate,redisProperties), UsernamePasswordAuthenticationFilter.class)
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);

    }
}
