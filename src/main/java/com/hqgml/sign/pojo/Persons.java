package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.Null;

import com.hqgml.sign.others.annotation.Phone;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author Devil
 * @date 2020/1/16 23:08
 */
@Data
@Table(name = "persons")
@ApiModel(value="人员请求参数" )

public class Persons implements Serializable {
    @Id
    @Column(name = "id")
    @ApiModelProperty(hidden = true)

    @GeneratedValue(generator = "JDBC")
    private Integer id;

    @Null
    @ApiModelProperty(hidden = true)
    @Column(name = "add_id")
    private Integer addId;

    @Null
    @ApiModelProperty(hidden = true)
    @Column(name = "url")
    private String url;

    @ApiModelProperty(value = "人员姓名",example="张三",required = true)
    @Column(name = "person_name")
    private String personName;

    @ApiModelProperty(value = "人员联系方式",example="151xxxxxxx",required = true)
    @Column(name = "phone")
    @Phone
    private String phone;

    @Null
    @ApiModelProperty(hidden = true)
    @Column(name = "add_time")
    private String addTime;

    @Null
    @ApiModelProperty(hidden = true)
    @Column(name = "uuid")
    private String uuid;


    @Transient
    @ApiModelProperty(hidden = true)
    private Integer isCheck;

    private static final long serialVersionUID = 1L;
}