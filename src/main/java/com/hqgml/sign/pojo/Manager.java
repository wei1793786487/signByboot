package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import lombok.Data;

/**
*@author Devil
*@date  2019/12/29 0:35
*/
@Data
@Table(name = "manager")
public class Manager implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    @Column(name = "`name`")
    private String name;

    @Column(name = "sex")
    private String sex;

    @Column(name = "idcard")
    private Integer idcard;

    @Column(name = "phone")
    private Integer phone;

    @Column(name = "pswd")
    private String pswd;

    @Column(name = "address")
    private String address;

    @Column(name = "lasttime")
    private String lasttime;

    private static final long serialVersionUID = 1L;
}