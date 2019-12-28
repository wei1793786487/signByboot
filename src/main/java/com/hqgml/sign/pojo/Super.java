package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import lombok.Data;

/**
*@author Devil
*@date  2019/12/29 0:36
*/
@Data
@Table(name = "super")
public class Super implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    @Column(name = "`name`")
    private String name;

    @Column(name = "pswd")
    private String pswd;

    @Column(name = "address")
    private String address;

    @Column(name = "lasttime")
    private String lasttime;

    private static final long serialVersionUID = 1L;
}