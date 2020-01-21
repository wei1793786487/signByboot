package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;

import lombok.Data;

/**
 * @author Devil
 * @date 2020/1/12 13:20
 */
@Data
@Table(name = "meeting")
public class Meeting implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    @Column(name = "add_id")
    private Integer addId;

    @NotNull
    @Column(name = "metting_address")
    private String mettingAddress;

    @NotNull
    @Column(name = "meeting_name")
    private String meetingName;

    @NotNull
    @Column(name = "start_time")
    private String startTime;

    @NotNull
    @Column(name = "end_time")
    private String endTime;

    @Column(name = "meeting_phone")
    private String meetingPhone;

    @Column(name = "uuid")
    private String uuid;

    @Column(name = "information")
    private String information;

    @Transient
    private Integer persionNumber;

    private static final long serialVersionUID = 1L;
}