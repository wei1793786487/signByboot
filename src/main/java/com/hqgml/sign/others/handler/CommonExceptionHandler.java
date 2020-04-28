package com.hqgml.sign.others.handler;

import com.hqgml.sign.others.exception.ExceptionEnums;
import com.hqgml.sign.others.exception.ExceptionResult;
import com.hqgml.sign.others.exception.XxException;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import org.apache.ibatis.exceptions.TooManyResultsException;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.BadSqlGrammarException;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.authentication.rememberme.CookieTheftException;
import org.springframework.validation.BindException;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import java.util.List;

/**
 * @author Devil
 * @date 2019/12/18 21:01
 */
@SuppressWarnings("all")
@ControllerAdvice
public class CommonExceptionHandler {

    @ExceptionHandler(Exception.class)
    public ResponseEntity<ExceptionResult> Exception(Exception e) {
        if (e instanceof XxException) {
            /**
             * 普通异常
             */
            return ResponseEntity.status(200).body(new ExceptionResult(((XxException) e).getExceptionEnums()));
        } else if (e instanceof TooManyResultsException) {
            /**
             * 结果集不唯一
             */
            return ResponseEntity.status(200).body(new ExceptionResult(ExceptionEnums.RESOUT_NOT_ONE));
        } else if (e instanceof CookieTheftException) {
            /**
             * remember cookie异常
             */
            return ResponseEntity.status(200).body(new ExceptionResult(2001, "用户信息异常"));
        } else if (e instanceof MethodArgumentNotValidException) {

            /**
             * 校异常验
             */
            String message = ((MethodArgumentNotValidException) e).getBindingResult().getFieldError().getDefaultMessage();
            return ResponseEntity.status(200).body(new ExceptionResult(200, message));
        } else if (e instanceof TencentCloudSDKException) {
            /**
             * 腾讯异常
             */
            String message = ((TencentCloudSDKException) e).getMessage().toString();
            //提取返回错误信息里面的中文
            String replaceAll = message.replaceAll("[^\\u4e00-\\u9fa5]", "");
            return ResponseEntity.status(200).body(new ExceptionResult(400, replaceAll));
        } else if (e instanceof CookieTheftException) {
            return ResponseEntity.status(200).body(new ExceptionResult(400, "登录失效"));
        } else if (e instanceof BindException) {
            //校验的异常
            StringBuilder stringBuilder=new StringBuilder();
            List<FieldError> fieldErrors = ((BindException) e).getFieldErrors();
            for (FieldError fieldError : fieldErrors) {
                String message = fieldError.getDefaultMessage();
                 stringBuilder.append(message+",");
            }
            String message = stringBuilder.toString();
            return ResponseEntity.status(200).body(new ExceptionResult(400, message));

        } else if (e instanceof MissingServletRequestParameterException){
            /**
             * 参数缺少的处理
             */
            String parm = ((MissingServletRequestParameterException) e).getParameterName();
            return ResponseEntity.status(200).body(new ExceptionResult(400, "确少必要的参数"+parm));
        }  else if (e instanceof AccessDeniedException){
            return ResponseEntity.status(403).body(new ExceptionResult(403, "权限不足"));
        } else if (e instanceof BadSqlGrammarException){
            /**
             * mybaits参数异常
             */
            e.printStackTrace();
            return ResponseEntity.status(400).body(new ExceptionResult(400, "数据库参数错误,请按照接口要求调用数据"));
        }

        else {
            e.printStackTrace();
        }
        return null;
    }


}
