package com.hqgml.sign.others.pojo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * @author Devil
 * @date 2020/4/27 23:58
 * 页面返回的统一的格式
 */
@Data
public class MyPageInfo<T> {

    {
        this.code=200;
        this.timestamp=System.currentTimeMillis();
    }

    @ApiModelProperty(value = "返回的当前时间的时间戳",example="1582678820")
    private long timestamp;

    @ApiModelProperty(value = "返回的code,200为正常",example="200")
    private Integer code;


    /**
     * 总条数
     */
    @ApiModelProperty(value = "返回的数据条数",example="222")
    private Long count;

    /**
     * 信息
     */
    @ApiModelProperty(value = "返回的数据")
    private List<T> data;



}
