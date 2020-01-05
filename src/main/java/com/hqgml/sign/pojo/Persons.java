package com.hqgml.sign.pojo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;
import lombok.Data;

/**
 * @author Devil
 * @date 2020/1/3 20:16
 */
@Data
@Table(name = "persons")
public class Persons implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    @Column(name = "photo_name")
    private String photoName;

    @Column(name = "person_name")
    private String personName;

    @Column(name = "add_time")
    private Date addTime;

    @Column(name = "IsCheck")
    private String ischeck;

    private static final long serialVersionUID = 1L;
}