package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import lombok.Data;

/**
*@author Devil
*@date  2019/12/31 10:48
*/
@Data
@Table(name = "user_log")
public class UserLog implements Serializable {
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