package com.hqgml.sign.pojo;

import java.io.Serializable;
import java.util.List;
import javax.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
*@author Devil
*@date  2020/4/22 8:41
*/
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "meta")
public class Meta implements Serializable {
    @Id
    @Column(name = "id")
    private Integer id;

    /**
     * the name show in sidebar and breadcrumb (recommend set)
     */
    @Column(name = "title")
    private String title;

    /**
     * the icon show in the sidebar
     */
    @Column(name = "icon")
    private String icon;

    /**
     * if set false, the item will hidden in breadcrumb(1 is true,0 is false)
     */
    @Column(name = "breadcrumb")
    private Integer breadcrumb;

    /**
     * if set path, the sidebar will highlight the path you set
     */
    @Column(name = "activeMenu")
    private String activemenu;


    @Transient
    private List<Role> roleList;



    private static final long serialVersionUID = 1L;
}