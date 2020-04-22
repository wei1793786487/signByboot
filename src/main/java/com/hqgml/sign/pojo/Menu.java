package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author Devil
 * @date 2020/4/22 8:41
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "menu")
public class Menu implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * access path
     */
    @Column(name = "`path`")
    private String path;

    /**
     * components corresponding to the front end
     */
    @Column(name = "component")
    private String component;

    /**
     * if set noRedirect will no redirect in the breadcrumb
     */
    @Column(name = "redirect")
    private String redirect;

    /**
     * the name is used by <keep-alive> (must set!!!)
     */
    @Column(name = "`name`")
    private String name;

    @Column(name = "meta_id")
    private Integer metaId;

    /**
     * ID of parent node, 0 is the top node
     */
    @Column(name = "parent")
    private Integer parent;

    @Transient
    private Meta meta;

    private static final long serialVersionUID = 1L;
}