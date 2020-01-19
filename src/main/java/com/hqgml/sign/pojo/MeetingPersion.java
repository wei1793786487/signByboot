package com.hqgml.sign.pojo;

import java.io.Serializable;
import javax.persistence.*;
import lombok.Data;

/**
*@author Devil
*@date  2020/1/19 10:58
*/
@Data
@Table(name = "meeting_persion")
public class MeetingPersion implements Serializable {
    @Column(name = "pid")
    private Integer pid;

    @Column(name = "mid")
    private Integer mid;

    @Column(name = "IsCheck")
    private Integer ischeck;

    private static final long serialVersionUID = 1L;
}