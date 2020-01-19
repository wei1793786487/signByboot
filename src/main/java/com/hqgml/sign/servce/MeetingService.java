package com.hqgml.sign.servce;

import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Meeting;

/**
 * @author Devil
 * @date 2019/12/31 10:47
 */
public interface MeetingService {

    void addMeeting(Meeting meeting);

    LayUi getMeetingByUser(String username, Integer page, Integer limit, String personName);

    void updateMeeting(Meeting meeting);


    void deleteMeeting(Integer[] ids);

    void addMeetingPeople(Integer mid, Integer[] pids);

    Meeting findMeetingByName(String meetingname);
}



