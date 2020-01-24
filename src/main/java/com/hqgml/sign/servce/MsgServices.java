package com.hqgml.sign.servce;

import com.hqgml.sign.utlis.annotation.ServiceLog;
import org.springframework.stereotype.Service;

import javax.annotation.Priority;
import javax.annotation.Resource;

/**
 * @author Devil
 * @date 2020/1/23 23:42
 */
@Service
public interface MsgServices  {


    /** 通知这个会议所有的用户
     *
     *
     * @param metingId
     */
    void  sendMsgAllMeeting(Integer metingId) ;

    /**
     * 通知单个用户
     * @param metingId
     */
    void  sendMsgOneMeeting(Integer metingId,Integer psersonId) ;

}
