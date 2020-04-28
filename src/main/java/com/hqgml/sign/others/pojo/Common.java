package com.hqgml.sign.others.pojo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.apache.poi.ss.formula.functions.T;

/**
 * @author Devil
 * @date 2020/1/9 1:33
 * 统一返回格式
 */
@Data
public class Common<T> {


    @ApiModelProperty(value = "返回的code,200为正常",example="200")
    private Integer code;

    @ApiModelProperty(value = "返回的当前时间的时间戳",example="1582678820")
    private long timestamp;

    @ApiModelProperty(value = "返回的信息")
    private T data;

    public Common(T data) {
        this.code = 200;
        this.data = data;
        this.timestamp = System.currentTimeMillis();
    }
    public Common(Integer code, T data) {
        this.code = code;
        this.data = data;
        this.timestamp = System.currentTimeMillis();
    }
}
