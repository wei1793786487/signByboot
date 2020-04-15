package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import lombok.Data;

/**
*@author Devil
*@date  2020/4/15 7:56
*/
@Data
@Table(name = "`role`")
public class Role implements Serializable {
    @Column(name = "id")
    private Integer id;

    /**
     * 角色名称
     */
    @Column(name = "role_name")
    private String roleName;

    /**
     * 角色的描述
     */
    @Column(name = "`describe`")
    private String describe;

    private static final long serialVersionUID = 1L;
}