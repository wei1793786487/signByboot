package com.hqgml.sign.handler;

import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.ExceptionResult;
import com.hqgml.sign.utlis.exception.ValidateCodeException;
import com.hqgml.sign.utlis.exception.XxException;
import org.apache.ibatis.exceptions.TooManyResultsException;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.web.authentication.rememberme.CookieTheftException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

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
            return ResponseEntity.status(((XxException) e).getExceptionEnums().getCode()).body(new ExceptionResult(((XxException) e).getExceptionEnums()));
        } else if (e instanceof TooManyResultsException) {
            /**
             * 结果集不唯一
             */
            return ResponseEntity.status(400).body(new ExceptionResult(ExceptionEnums.RESOUT_NOT_ONE));
        } else if (e instanceof CookieTheftException) {
            /**
             * remember cookie异常
             */
            return ResponseEntity.status(2001).body(new ExceptionResult(2001, "用户信息异常"));
        } else if (e instanceof MethodArgumentNotValidException) {
            /**
             * 参数校验错误
             */
            String message = ((MethodArgumentNotValidException) e).getBindingResult().getFieldError().getDefaultMessage();
            return ResponseEntity.status(400).body(new ExceptionResult(400, message));
        } else {
            return ResponseEntity.status(500).body(new ExceptionResult(500, e.getMessage()));
        }
    }


}
