package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.Pattern;

import lombok.Data;

/**
 * @author Devil
 * @date 2020/1/27 21:54
 */
@Data
@Table(name = "sys_user")
public class SysUser implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "username")
    private String username;

    @Column(name = "sex")
    private String sex;

    @Pattern(regexp = "^1[3456789]\\d{9}$",message = "请输入合法手机号")
    @Column(name = "phone")
    private String phone;

    @Pattern(regexp = "^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z\\\\W]{6,18}$",message = "密码必须包含字母与数字，且在6到18位之间")
    @Column(name = "`password`")
    private String password;

    @Column(name = "address")
    private String address;

    @Column(name = "lasttime")
    private String lasttime;

    @Column(name = "`role`")
    private String role;

    @Column(name = "isEnabled")
    private Integer isenabled;


    private int personcount;

    private int meetingcount;


    private static final long serialVersionUID = 1L;
}