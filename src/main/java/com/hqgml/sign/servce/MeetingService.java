package com.hqgml.sign.servce;

import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Meeting;

import java.util.List;

/**
 * @author Devil
 * @date 2019/12/31 10:47
 */
public interface MeetingService {

    void addMeeting(Meeting meeting);

    LayUi getMeetingByUser(String username, Integer page, Integer limit, String personName);

    void updateMeeting(Meeting meeting);


    void deleteMeeting(Integer[] ids);

    List<String> addMeetingPeople(Integer mid, Integer[] pids);

    Meeting findMeetingByName(String meetingname);

    /**
     * 将本账号所属的所有人员添加进该会议
     * @param mid
     * @return
     */
    List<String> addMeetingAllPeople(Integer mid);

    /**
     * 根据uuid查询单个用户
     * @param uuid
     * @return
     */
    Meeting selectByuuid(String uuid);

    Meeting selectById(Integer id);
}



