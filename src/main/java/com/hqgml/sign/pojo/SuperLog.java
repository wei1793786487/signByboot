package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import lombok.Data;

/**
*@author Devil
*@date  2019/12/29 0:36
*/
@Data
@Table(name = "super_log")
public class SuperLog implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    @Column(name = "`uid`")
    private Integer uid;

    @Column(name = "ip")
    private Integer ip;

    @Column(name = "`action`")
    private String action;

    @Column(name = "`sql`")
    private String sql;

    @Column(name = "`time`")
    private String time;

    private static final long serialVersionUID = 1L;
}