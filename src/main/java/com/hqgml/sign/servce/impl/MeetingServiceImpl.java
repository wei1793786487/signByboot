package com.hqgml.sign.servce.impl;

import cn.hutool.core.util.IdUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hqgml.sign.mapper.MeetingMapper;
import com.hqgml.sign.mapper.MeetingPersionMapper;
import com.hqgml.sign.mapper.PersonsMapper;
import com.hqgml.sign.others.exception.ExceptionEnums;
import com.hqgml.sign.others.exception.XxException;
import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.others.utlis.UserUtils;
import com.hqgml.sign.pojo.*;
import com.hqgml.sign.servce.MeetingService;
import com.hqgml.sign.servce.PersonsService;
import com.hqgml.sign.servce.SysUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Devil
 * @date 2019/12/31 10:47
 */
@Service
@Slf4j
public class MeetingServiceImpl implements MeetingService {

    @Resource
    private MeetingMapper meetingMapper;

    @Resource
    private SysUserService sysUserService;

    @Resource
    private MeetingPersionMapper meetingPersionMapper;


    @Resource
    private PersonsService personsService;


    @Resource
    private PersonsMapper personsMapper;

    @Override
    public void addMeeting(Meeting meeting) {
        SysUser sysUser = sysUserService.findUserByUserName(null);
        meeting.setAddId(sysUser.getId());
        String uuid = IdUtil.simpleUUID();
        meeting.setUuid(uuid);
        int insert = meetingMapper.insert(meeting);
        if (insert != 1) {
            throw new XxException(ExceptionEnums.MEETING_ADD_ERROR);
        }
    }

    @Override
    public MyPageInfo<Meeting> getMeetingByUser(String username, Integer page, Integer limit, String meetingName, HttpServletRequest request) {
        List<Meeting> meetings;
        SysUser sysUser = UserUtils.getUserByToken(request);
        SysUser userById = sysUserService.findUserById(sysUser.getId());
        Boolean isAdmin = UserUtils.isAdmin(userById.getRoles());
        if (isAdmin) {
            PageHelper.startPage(page, limit);
            meetings = meetingMapper.selectAllAdmin(meetingName);
        } else {
            PageHelper.startPage(page, limit);
            meetings = meetingMapper.selectAllByAddId(sysUser.getId(), meetingName);
        }

        if (meetings == null || meetings.size() == 0) {
            throw new XxException(ExceptionEnums.MEETING_NOT_FIND);
        }

        PageInfo<Meeting> brandPageInfo = new PageInfo<>(meetings);
        return new MyPageInfo<>(brandPageInfo.getTotal(), meetings);

    }

    @Override
    public void updateMeeting(Meeting meeting) {
        int update = meetingMapper.updateByPrimaryKeySelective(meeting);
        if (update != 1) {
            throw new XxException(ExceptionEnums.UPDATE_ERROR);
        }
    }

    @Override
    public void deleteMeeting(Integer[] ids) {
        for (Integer id : ids) {
            log.info("删除id为" + id + "的会议");
            meetingMapper.deleteById(id);
        }
    }

    @Override
    public List<String> addMeetingPeople(Integer mid, Integer[] pids) {
        List<String> list = new ArrayList<>();

        Meeting meeting = meetingMapper.findOneById(mid);
        if (meeting == null) {
            throw new XxException(ExceptionEnums.MEETING_NOT_FIND);
        }
        for (Integer pid : pids) {
            //这里面已经处理了person为null的情况
            Persons per = personsMapper.selectById(pid);
            if (per == null) {
                list.add("人员不存在");
            } else {
                MeetingPersion one = meetingPersionMapper.selectOneByMidAndPid(mid, pid);
                if (one != null) {
                    log.error("{}，人员以存在该会议", pid);
                    Persons persons = personsService.selectById(pid);
                    list.add(persons.getPersonName() + "已经存在该会议");
                } else {
                    MeetingPersion meetingPersion = new MeetingPersion();
                    meetingPersion.setMid(mid);
                    meetingPersion.setPid(pid);
                    meetingPersion.setIscheck(0);
                    int insert = meetingPersionMapper.insert(meetingPersion);
                    if (insert != 1) {
                        log.error("添加异常");
                        Persons persons = personsService.selectById(pid);
                        list.add(persons.getPersonName() + "添加异常");
                    } else {
                        list.add(per.getPersonName() + "添加成功");
                    }
                }

            }

        }
        return list;

    }

    @Override
    public Meeting findMeetingByName(String meetingname) {
        Meeting oneByMeetingName = meetingMapper.findOneByMeetingName(meetingname);
        if (oneByMeetingName == null) {
            throw new XxException(ExceptionEnums.MEETING_NOT_FIND);
        }
        return oneByMeetingName;
    }

    @Override
    public List<String> addMeetingAllPeople(Integer mid) {
        List<String> list = new ArrayList<>();

        Meeting meeting = meetingMapper.findOneById(mid);
        if (meeting == null) {
            throw new XxException(ExceptionEnums.MEETING_NOT_FIND);
        }
        SysUser user = sysUserService.findUserByUserName(null);
        List<Persons> persons = personsMapper.findAllByAddId(user.getId(), null);
        for (Persons person : persons) {
            MeetingPersion meetingPersion = new MeetingPersion();
            meetingPersion.setMid(mid);
            meetingPersion.setPid(person.getId());
            meetingPersion.setIscheck(0);

            int insert = meetingPersionMapper.insert(meetingPersion);
            if (insert != 1) {
                log.error("添加异常");
                list.add(person.getPersonName() + "添加异常");
            } else {
                list.add(person.getPersonName() + "添加成功");
            }
        }
        return list;
    }

    @Override
    public Meeting selectByuuid(String uuid) {
        Meeting oneByUuid = meetingMapper.findOneByUuid(uuid);
        if (oneByUuid == null) {
            throw new XxException(ExceptionEnums.MEETING_NOT_FIND);
        }
        return oneByUuid;
    }

    @Override
    public Meeting selectById(Integer id) {
        Meeting meeting = meetingMapper.selectById(id);
        if (meeting == null) {
            throw new XxException(ExceptionEnums.MEETING_NOT_FIND);
        }
        return meeting;
    }

    @Override
    public Integer slectCount(Integer addId) {
        Integer count = meetingMapper.count(addId);
        return count;
    }

    @Override
    public List<Meeting> selectLikeMeetingName(String meetingname) {
        List<Meeting> meetings = meetingMapper.selectAllByMeetingNameLike(meetingname);
        if (meetings.size() == 0) {
            throw new XxException(ExceptionEnums.MEETING_NOT_FIND);
        }
        return meetings;
    }

    @Override
    public void removePerson(Integer[] ids, Integer mid) {
        personsMapper.romovePerson(ids, mid);
    }

    @Override
    public List<Meeting> findMeetingByPerson(Integer pId) {
        List<Meeting> meetings = meetingMapper.findMeetingByPerson(pId);
        if (meetings.size() == 0) {
            throw new XxException(ExceptionEnums.MEETING_NOT_FIND);
        }
        return meetings;
    }

}








