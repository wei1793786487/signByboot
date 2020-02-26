package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author Devil
 * @date 2020/2/5 0:00
 */
@Data
@Table(name = "meeting")
@ApiModel(value="会议请求参数" )
public class Meeting implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    @ApiModelProperty(value = "添加人id",example="无需传入，后台自动识别")
    @Column(name = "add_id")
    private Integer addId;

    @NotNull
    @ApiModelProperty(value = "会议地点的名称",example="天安门广场")
    @Column(name = "address_name")
    private String addressName;

    @NotNull
    @ApiModelProperty(value = "会议的地址",example="山东省临沂市莒南县")
    @Column(name = "meeting_address")
    private String meetingAddress;

    @NotNull
    @ApiModelProperty(value = "会议的名字",example="这是一个测试会议")
    @Column(name = "meeting_name")
    private String meetingName;

    @NotNull
    @ApiModelProperty(value = "开始时间",example="2020-02-05 00:00")
    @Column(name = "start_time")
    private String startTime;


    @NotNull
    @ApiModelProperty(value = "结束时间",example="2020-02-05 00:00")
    @Column(name = "end_time")
    private String endTime;

    @NotNull
    @ApiModelProperty(value = "会议联系人电话",example="158XXXXXXXX")
    @Column(name = "meeting_phone")
    private String meetingPhone;

    @Column(name = "uuid")
    private String uuid;

    @NotNull
    @ApiModelProperty(value = "defaultStr",example="mockStrValue")
    @Column(name = "lng")
    private Double lng;

    @NotNull
    @ApiModelProperty(value = "defaultStr",example="mockStrValue")
    @Column(name = "lat")
    private Double lat;

    @Column(name = "information")
    private String information;

    private static final long serialVersionUID = 1L;
    @Transient
    private Integer persionNumber;
}