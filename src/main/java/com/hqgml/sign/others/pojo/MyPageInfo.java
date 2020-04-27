package com.hqgml.sign.others.pojo;

import lombok.Data;

import java.util.List;

/**
 * @author Devil
 * @date 2020/4/27 23:58
 * 页面返回的统一的格式
 */
@Data
public class MyPageInfo<T> {
    /**
     *总条数
     */
  private Long count;

    /**
     * 信息
     */
    private List<T> data;

}
