package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.Pattern;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

/**
 * @author Devil
 * @date 2020/1/10 22:23
 */
@Data
@Table(name = "sys_user")
public class SysUser implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    @Column(name = "username")
    private String username;

    @Column(name = "sex")
    private String sex;

    @Pattern(regexp = "/^[1]([3-9])[0-9]{9}$/",message = "请输入合法手机号")
    @Column(name = "phone")
    private Integer phone;

    @JsonIgnore
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