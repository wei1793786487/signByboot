package com.hqgml.sign.pojo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;
import lombok.Data;

/**
 * @author Devil
 * @date 2020/1/13 11:09
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

    @Column(name = "url")
    private String url;

    @Column(name = "person_name")
    private String personName;

    @Column(name = "add_time")
    private Date addTime;

    @Column(name = "uuid")
    private String uuid;

    private static final long serialVersionUID = 1L;
}