package com.hqgml.sign.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;

import com.hqgml.sign.pojo.Meeting;
import tk.mybatis.mapper.common.Mapper;

/**
 * @author Devil
 * @date 2020/1/12 13:20
 */
public interface MeetingMapper extends Mapper<Meeting> {
    List<Meeting> selectAllByAddId(@Param("addId") Integer addId, @Param("meetingName") String meetingName);

    int deleteById(@Param("id") Integer id);

    Meeting findOneById(@Param("id") Integer id);

    Meeting findOneByMeetingName(@Param("meetingName") String meetingName);

    Meeting findOneByUuid(@Param("uuid")String uuid);


    Meeting selectById(@Param("id")Integer id);

   Integer count();




}