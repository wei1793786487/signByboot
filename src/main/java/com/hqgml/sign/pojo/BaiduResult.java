package com.hqgml.sign.pojo;

import lombok.Data;

import java.util.List;

/**
 * @author Devil
 * @date 2020/2/4 18:58
 * 百度云的地点检索对象
 */
@Data
public class BaiduResult {
    private Integer status;
    private String message;
    private List<Address> result;
}
