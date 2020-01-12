package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
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

    @Column(name = "metting_address")
    private String mettingAddress;

    @Column(name = "meeting_name")
    private String meetingName;

    @Column(name = "start_time")
    private String startTime;

    @Column(name = "end_time")
    private String endTime;

    @Column(name = "meeting_phone")
    private String meetingPhone;

    @Column(name = "persion_number")
    private String persionNumber;

    @Column(name = "uuid")
    private String uuid;

    @Column(name = "information")
    private String information;

    private static final long serialVersionUID = 1L;
}