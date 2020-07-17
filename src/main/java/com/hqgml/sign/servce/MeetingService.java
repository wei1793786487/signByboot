package com.hqgml.sign.servce;

import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.pojo.Meeting;

import java.util.List;

/**
 * @author Devil
 * @date 2019/12/31 10:47
 */
public interface MeetingService {

    void addMeeting(Meeting meeting);

    MyPageInfo<Meeting> getMeetingByUser(String username, Integer page, Integer limit, String personName);

    void updateMeeting(Meeting meeting);


    void deleteMeeting(Integer[] ids);

    List<String> addMeetingPeople(Integer mid, Integer[] pids);

    Meeting findMeetingByName(String meetingname);

    /**
     * 将本账号所属的所有人员添加进该会议
     *
     * @param mid
     * @return
     */
    List<String> addMeetingAllPeople(Integer mid);

    /**
     * 根据uuid查询单个用户
     *
     * @param uuid
     * @return
     */
    Meeting selectByuuid(String uuid);

    Meeting selectById(Integer id);

    /**
     * 获取总数量
     *
     * @return
     */
    Integer slectCount();


    /**
     * 根据名字迷糊查询
     * @return
     * @param meetingname
     */
    List<Meeting> selectLikeMeetingName(String meetingname);

}








