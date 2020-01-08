package com.hqgml.sign.utlis.exception;

import org.apache.ibatis.exceptions.TooManyResultsException;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationServiceException;
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



}
