package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.Null;

import lombok.Data;

/**
 * @author Devil
 * @date 2020/1/16 23:08
 */
@Data
@Table(name = "persons")
public class Persons implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    @Null
    @Column(name = "add_id")
    private Integer addId;

    @Null
    @Column(name = "url")
    private String url;


    @Column(name = "person_name")
    private String personName;

    @Column(name = "phone")
    private String phone;

    @Null
    @Column(name = "add_time")
    private String addTime;

    @Null
    @Column(name = "uuid")
    private String uuid;


    @Transient
    private Integer isCheck;

    private static final long serialVersionUID = 1L;
}