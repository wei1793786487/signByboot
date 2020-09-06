package com.hqgml.sign.servce.impl;

import com.github.qcloudsms.SmsSingleSenderResult;
import com.hqgml.sign.mapper.PersonsMapper;
import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.pojo.Persons;
import com.hqgml.sign.servce.MeetingService;
import com.hqgml.sign.servce.MsgServices;
import com.hqgml.sign.others.utlis.MsgUtils;
import com.hqgml.sign.others.annotation.ServiceLog;
import com.hqgml.sign.others.exception.ExceptionEnums;
import com.hqgml.sign.others.exception.XxException;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * @author Devil
 * @date 2020/1/23 23:43
 */
@Service
@Slf4j
public class MsgServicesImpl implements MsgServices {


    @Resource
    private MsgUtils msgUtils;

    @Resource
    private PersonsMapper personsMapper;

    @Resource
    private MeetingService meetingService;

    @Override
    @ServiceLog(describe = "通知会议人员")
    public void sendMsgAllMeeting(Integer metingId) {

        List<Persons> persons = personsMapper.selectBelongAllByMid(metingId);
        if (persons.size()== 0) {
            throw new XxException(ExceptionEnums.PERSON_NOT_FIND);
        }
        Meeting meeting = meetingService.selectById(metingId);
        @NotNull String startTime = meeting.getStartTime();
        @NotNull String endTime = meeting.getEndTime();
        int startIndex = startTime.indexOf("-");
        int endIndex = endTime.indexOf("-");

        //开始时间
        String subsTime = startTime.substring(startIndex + 1);
        //结束时间
        String subeTime = endTime.substring(endIndex + 1);

        for (Persons person : persons) {
            if (person.getPhone() == null || StringUtils.equals("", person.getPhone())) {
                log.debug("{}用户没有手机号", person.getPersonName());
            } else {
                String[] parms = {person.getPersonName(), meeting.getMeetingName(),
                        subsTime, subeTime, meeting.getAddressName()};
                SmsSingleSenderResult result = msgUtils.sendAllNotice(person.getPhone(), parms);
                System.out.println(result);
                if (result.result == 0) {
                    log.info("给{}发送群体信息", person.getPersonName());
                } else {
                    log.error("给{}发送信息失败，原因是", person.getPersonName(), result.errMsg);
                }
            }

        }

    }


    @ServiceLog(describe = "通知会议人员")
    @Override
    public void sendMsgOneMeeting(Integer metingId,Integer psersonId) {
        Persons persons = personsMapper.selectById(psersonId);
        if (persons==null){
            throw new XxException(ExceptionEnums.PERSON_NOT_FIND);
        }
        if (persons.getPhone()==null||StringUtils.equals("",persons.getPhone())){
            throw new XxException(ExceptionEnums.PHONE_NOT_FIND);
        }
        Meeting meeting = meetingService.selectById(metingId);
        if (meeting==null){
            throw new XxException(ExceptionEnums.MEETING_NOT_FIND);
        }
        @NotNull String endTime = meeting.getEndTime();
        int endIndex = endTime.indexOf("-");
        String subeTime = endTime.substring(endIndex + 1);

        String[] parm={meeting.getMeetingName(),subeTime};
        log.info("给{}发送单独消息",persons.getPersonName());
        SmsSingleSenderResult smsSingleSenderResult = msgUtils.sendOneNotice(persons.getPhone(), parm);

        if (smsSingleSenderResult.result == 0) {
            log.info("给{}发送单独消息",persons.getPersonName());
        } else {
            log.error("给{}发送信息失败，原因是", persons.getPersonName(), smsSingleSenderResult.errMsg);
        }
    }

}
