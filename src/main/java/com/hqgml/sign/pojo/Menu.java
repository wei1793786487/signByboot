package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import lombok.Data;

/**
 * @author Devil
 * @date 2020/1/5 16:43
 */
@Data
@Table(name = "menu")
public class Menu implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    @Column(name = "role_name")
    private String roleName;

    @Column(name = "menu")
    private String menu;

    private static final long serialVersionUID = 1L;
}