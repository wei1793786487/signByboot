package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.Null;

import com.sun.istack.internal.NotNull;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.Range;

/**
*@author Devil
*@date  2020/4/27 22:55
*/
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "todos")
public class Todos implements Serializable {

    @Id
    @Column(name = "id")
    private Integer id;

    @Null(message = "uid禁止添加")
    @Column(name = "`uid`")
    private Integer uid;


    @ApiModelProperty(value = "需要完成的todo",example="打完这局游戏就睡",required = false)
    @NotNull
    @Column(name = "things")
    private String things;

    /**
     * 是否完成，0为未完成，1为完成
     */
    @Range(min = 0,max = 1 ,message = "改接口只允许输入0(未完成)或1(已完成)")
    @ApiModelProperty(value = "是否完成 0为未完成，1为完成")
    @Column(name = "done")
    private Integer done;

    private static final long serialVersionUID = 1L;
}