package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import lombok.Data;

/**
 * @author Devil
 * @date 2020/2/5 0:00
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

    @Column(name = "address_name")
    private String addressName;

    @Column(name = "meeting_address")
    private String meetingAddress;

    @Column(name = "meeting_name")
    private String meetingName;

    @Column(name = "start_time")
    private String startTime;

    @Column(name = "end_time")
    private String endTime;

    @Column(name = "meeting_phone")
    private String meetingPhone;

    @Column(name = "uuid")
    private String uuid;

    @Column(name = "lng")
    private Double lng;

    @Column(name = "lat")
    private Double lat;

    @Column(name = "information")
    private String information;

    private static final long serialVersionUID = 1L;
    @Transient
    private Integer persionNumber;
}