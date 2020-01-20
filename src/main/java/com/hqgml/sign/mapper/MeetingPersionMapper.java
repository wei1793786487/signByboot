package com.hqgml.sign.mapper;
import org.apache.ibatis.annotations.Param;

import java.nio.channels.SelectableChannel;
import java.util.List;

import com.hqgml.sign.pojo.MeetingPersion;
import tk.mybatis.mapper.common.Mapper;

/**
*@author Devil
*@date  2020/1/19 10:58
*/
public interface MeetingPersionMapper extends Mapper<MeetingPersion> {
MeetingPersion selectOneByMidAndPid(@Param("mid")Integer mid,@Param("pid")Integer pid);



}