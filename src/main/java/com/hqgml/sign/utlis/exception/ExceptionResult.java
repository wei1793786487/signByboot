package com.hqgml.sign.utlis.exception;

import lombok.Data;

/**
 * @author Devil
 * @date 2019/12/18 21:06
 */
@Data
public class ExceptionResult {
    private int status;
    private String message;
    private long timestamp;

    public ExceptionResult(ExceptionEnums e) {
        this.status = e.getCode();
        this.message = e.getMsg();
        this.timestamp = System.currentTimeMillis();
    }
}
