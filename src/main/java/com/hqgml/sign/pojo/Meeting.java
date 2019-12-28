package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import lombok.Data;

/**
*@author Devil
*@date  2019/12/29 0:35
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

    @Column(name = "times")
    private String times;

    @Column(name = "meeting_phone")
    private String meetingPhone;

    @Column(name = "meeting_number")
    private String meetingNumber;

    @Column(name = "uuid")
    private String uuid;

    private static final long serialVersionUID = 1L;
}