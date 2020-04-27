package com.hqgml.sign.others.pojo;


import lombok.Data;

import java.util.List;

/**
 * @author Devil
 * @date 2019/12/31 23:10
 *
 */
@Data
public class LayUi<T> {
    {
        this.code="0";
        this.msg="";
    }
    private String code;
    private String msg;
    private Long count;
    private List<T> data;
}
