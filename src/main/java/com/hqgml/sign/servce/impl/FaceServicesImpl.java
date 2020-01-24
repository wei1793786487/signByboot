package com.hqgml.sign.servce.impl;

import com.hqgml.sign.mapper.MeetingPersionMapper;
import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.pojo.MeetingPersion;
import com.hqgml.sign.pojo.Persons;
import com.hqgml.sign.servce.*;
import com.hqgml.sign.utlis.TimeUtils;
import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.XxException;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import com.tencentcloudapi.iai.v20180301.models.Candidate;
import com.tencentcloudapi.iai.v20180301.models.Result;
import com.tencentcloudapi.iai.v20180301.models.SearchPersonsResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Devil
 * @date 2020/1/25 1:42
 */
@Service
@Slf4j
public class FaceServicesImpl implements FaceService {

    @Resource
    private TenlentService tenlentService;

    @Resource
    private PersonsService personsService;

    @Resource
    private MeetingPersionMapper meetingPersionMapper;


    @Resource
    private MeetingService meetingService;
    /**
     * 签到
     * @param img
     * @param mid
     * @return
     * @throws TencentCloudSDKException
     */
    @Override
    public Map<String, Object> face(String img, String mid) throws TencentCloudSDKException {

        Float score = 90f;
        Map<String, Object> information = new HashMap<>();
        SearchPersonsResponse search;
        Meeting meeting = meetingService.selectById(Integer.parseInt(mid));

        boolean isBetwoon = TimeUtils.hourMinuteBetween(meeting.getStartTime(), meeting.getEndTime());

        if (!isBetwoon){
            throw new XxException(ExceptionEnums.TIME_ERROR);
        }

        try {
            search = tenlentService.search(meeting.getAddId().toString(), img);
        } catch (TencentCloudSDKException e) {
            e.printStackTrace();
            log.error("人脸识别异常,失败原因是{}", e.getMessage());
            throw e;
        }


        try {
            Result[] results = search.getResults();
            //获取返回的单个人员信息
            Candidate candidate = results[0].getCandidates()[0];

            Float faceScore = candidate.getScore();

            if (faceScore > score) {
                String personId = candidate.getPersonId();
                Persons persons = personsService.selectByUuid(personId);

                MeetingPersion meetingPersion = meetingPersionMapper.selectOneByMidAndPid(Integer.parseInt(mid), persons.getId());
                if (meetingPersion.getIscheck()==1){
                    information.put("message", "您已经签到过滤");
                }else {
                    int isupdata = meetingPersionMapper.updateIscheckByMidAndPid(1, Integer.parseInt(mid), persons.getId());
                    if (isupdata == 1) {
                        information.put("message", persons.getPersonName() + "签到成功");
                    } else {
                        information.put("message", "服务器异常");
                    }
                }

            } else {
                information.put("message", "签到失败,请摆正姿势");
            }
        } catch (Exception e) {
            information.put("message", "签到失败,服务器异常");
        }

        return information;
    }
}
