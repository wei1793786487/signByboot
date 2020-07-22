package com.hqgml.sign.pojo;

import lombok.Data;

@Data
public class VxLoginToken {
    {
        this.code=200;
        this.timestamp=System.currentTimeMillis();
    }
    private Integer code;
    private Long timestamp;
    private Boolean isband;
    private String token;
}
