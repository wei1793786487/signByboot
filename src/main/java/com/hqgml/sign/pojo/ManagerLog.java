package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import lombok.Data;

/**
*@author Devil
*@date  2019/12/29 0:35
*/
@Data
@Table(name = "manager_log")
public class ManagerLog implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    @Column(name = "`uid`")
    private Integer uid;

    @Column(name = "ip")
    private String ip;

    @Column(name = "`action`")
    private String action;

    @Column(name = "`sql`")
    private String sql;

    @Column(name = "`time`")
    private String time;

    private static final long serialVersionUID = 1L;
}