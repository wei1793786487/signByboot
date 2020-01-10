package com.hqgml.sign.handler;

import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.ExceptionResult;
import com.hqgml.sign.utlis.exception.ValidateCodeException;
import com.hqgml.sign.utlis.exception.XxException;
import org.apache.ibatis.exceptions.TooManyResultsException;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.web.authentication.rememberme.CookieTheftException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * @author Devil
 * @date 2019/12/18 21:01
 */
@ControllerAdvice
public class CommonExceptionHandler {
    @ExceptionHandler(XxException.class)
    public ResponseEntity<ExceptionResult> handleException(XxException e) {
        return ResponseEntity.status(e.getExceptionEnums().getCode()).body(new ExceptionResult(e.getExceptionEnums()));
    }

    @ExceptionHandler(TooManyResultsException.class)
    public ResponseEntity<ExceptionResult> handleException(TooManyResultsException e) {
        return ResponseEntity.status(400).body(new ExceptionResult(ExceptionEnums.RESOUT_NOT_ONE));
    }

    @ExceptionHandler(ValidateCodeException.class)
    public ResponseEntity<ExceptionResult> handleException(ValidateCodeException e) {
        return ResponseEntity.status(400).body(new ExceptionResult(400,e.getMessage()));
    }

    @ExceptionHandler(CookieTheftException.class)
    public ResponseEntity<ExceptionResult> handleException(CookieTheftException e) {
        return ResponseEntity.status(2001).body(new ExceptionResult(2001,"用户信息异常"));
    }


}
