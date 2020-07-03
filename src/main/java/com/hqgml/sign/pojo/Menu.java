package com.hqgml.sign.pojo;

import java.io.Serializable;
import java.util.List;
import javax.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author Devil
 * @date 2020/4/22 17:28
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
     * Layout is root component
     * Others are front-end component paths
     */
    @Column(name = "component")
    private String component;



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

    /**
     * if set true, item will not show in the sidebar(default is false，0 is flase，1 is ture )
     */
    @Column(name = "hidden")
    private Integer hidden;

    /**
     * if set noRedirect will no redirect in the breadcrumb,Has been set automatically
     */
    @Transient
    private String redirect;

    @Transient
    private String parentName;


    @Transient
    private Meta meta;

    @Transient
    private List<Menu> children;

    private static final long serialVersionUID = 1L;


}