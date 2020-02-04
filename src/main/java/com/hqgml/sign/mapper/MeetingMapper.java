package com.hqgml.sign.mapper;

import com.hqgml.sign.pojo.Meeting;
import org.apache.ibatis.annotations.Param;import tk.mybatis.mapper.common.Mapper;import java.util.List;

/**
 * @author Devil
 * @date 2020/2/5 0:00
 */
public interface MeetingMapper extends Mapper<Meeting> {
    List<Meeting> selectAllByAddId(@Param("addId") Integer addId, @Param("meetingName") String meetingName);

    int deleteById(@Param("id") Integer id);

    Meeting findOneById(@Param("id") Integer id);

    Meeting findOneByMeetingName(@Param("meetingName") String meetingName);

    Meeting findOneByUuid(@Param("uuid") String uuid);

    Meeting selectById(@Param("id") Integer id);

    Integer count();
}