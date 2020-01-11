package com.hqgml.sign.config;

import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.XxException;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Devil
 * @date 2019/12/18 22:50
 */
@Component
@Aspect
public class AOP {

//    /**
//     * 上传组件没找到方法传送cooke，所以设置上传为所有人可以访问，但security查找当前用户来
//     * 判断是不是已经登录了
//     */
//    @After("execution(* com.hqgml.sign.controller.UploadController.*(..))")
//    public void isLogin() {
//        User userDetails = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//        if (userDetails==null){
//            throw new XxException(ExceptionEnums.USER_NOT_lOGIN);
//        }
//    }
}
