package com.hqgml.sign.mapper;

import com.hqgml.sign.pojo.Meeting;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * @author Devil
 * @date 2020/2/5 0:00
 */
public interface MeetingMapper extends Mapper<Meeting> {

    /**
     * 根据添加人id查询会议
     * @param addId  添加id
     * @param meetingName 会议名称
     * @return 会议列表
     */
    List<Meeting> selectAllByAddId(@Param("addId") Integer addId, @Param("meetingName") String meetingName);

    /**
     * 通过id删除
     * @param id id
     * @return 删除的条数
     */
    int deleteById(@Param("id") Integer id);


    /**
     * id查询
     * @param id id
     * @return  单个会议
     */
    Meeting findOneById(@Param("id") Integer id);

    /**
     * 根据会议名字查询
     * @param meetingName 会议名称
     * @return 单个会议
     */
    Meeting findOneByMeetingName(@Param("meetingName") String meetingName);

    /**
     * 根据uuid查询
     * @param uuid
     * @return
     */
    Meeting findOneByUuid(@Param("uuid") String uuid);

    Meeting selectById(@Param("id") Integer id);

    /**
     * 总条数
     * @return
     */
    Integer count(Integer addId);

    /**
     * 查询相似名字的
     * @param likeMeetingName
     * @return
     */
    List<Meeting> selectAllByMeetingNameLike(@Param("likeMeetingName")String likeMeetingName);

    List<Meeting> findMeetingByPerson(@Param("id")Integer id);

    List<Meeting> selectAll(@Param("meetingName") String meetingName);



}