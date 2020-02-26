package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.Pattern;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author Devil
 * @date 2020/1/27 21:54
 */
@Data
@Table(name = "sys_user")
@ApiModel(value="会议请求参数" )
public class SysUser implements Serializable {
    @Id
    @Column(name = "id")
    @ApiModelProperty(hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ApiModelProperty(value = "人员姓名",example="张三",required = true)
    @Column(name = "username")
    private String username;

    @ApiModelProperty(value = "人员性别",example="男",required = true)
    @Column(name = "sex")
    private String sex;

    @ApiModelProperty(value = "人员联系方式(手机号)",example="157xxxxxxxx",required = true)
    @Pattern(regexp = "^1[3456789]\\d{9}$",message = "请输入合法手机号")
    @Column(name = "phone")
    private String phone;

    @ApiModelProperty(value = "密码",example="dadad51d5a",required = true)
    @Pattern(regexp = "^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z\\\\W]{6,18}$",message = "密码必须包含字母与数字，且在6到18位之间")
    @Column(name = "`password`")
    private String password;

    @ApiModelProperty(hidden = true)
    @Column(name = "address")
    private String address;

    @ApiModelProperty(hidden = true)
    @Column(name = "lasttime")
    private String lasttime;

    @ApiModelProperty(value = "用户角色",example="ROLR_ADMIN",required = true)
    @Column(name = "`role`")
    private String role;

    @ApiModelProperty(value = "是否可用，0为可用，1为不可用",example="0",required = true)
    @Column(name = "isEnabled")
    private Integer isenabled;

    @ApiModelProperty(hidden = true)
    private int personcount;

    @ApiModelProperty(hidden = true)
    private int meetingcount;


    private static final long serialVersionUID = 1L;
}