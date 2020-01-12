package com.hqgml.sign.pojo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;
import lombok.Data;

/**
 * @author Devil
 * @date 2020/1/12 13:32
 */
@Data
@Table(name = "persons")
public class Persons implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    @Column(name = "add_id")
    private Integer addId;

    @Column(name = "photo_name")
    private String photoName;

    @Column(name = "person_name")
    private String personName;

    @Column(name = "add_time")
    private Date addTime;

    @Column(name = "phone")
    private Integer phone;

    private static final long serialVersionUID = 1L;
}