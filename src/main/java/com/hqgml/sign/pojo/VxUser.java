package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author Devil
 * @date 2020/7/22 23:03
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "vx_user")
public class VxUser implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    @Column(name = "p_id")
    private Integer pId;

    @Column(name = "openid")
    private String openid;

    @Column(name = "last_time")
    private String lastTime;

    @Column(name = "create_time")
    private String createTime;

    private Persons persons;


    private static final long serialVersionUID = 1L;
}