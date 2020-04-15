package com.hqgml.sign.servce.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hqgml.sign.others.pojo.LayUi;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.pojo.UserLog;
import com.hqgml.sign.servce.SysUserService;
import com.hqgml.sign.others.exception.ExceptionEnums;
import com.hqgml.sign.others.exception.XxException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import com.hqgml.sign.mapper.UserLogMapper;
import com.hqgml.sign.servce.UserLogService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Devil
 * @date 2019/12/31 10:48
 */
@Service
@Transactional(rollbackFor = Exception.class)
@Slf4j
public class UserLogServiceImpl implements UserLogService {


    @Resource
    private UserLogMapper userLogMapper;

    @Resource
    private SysUserService SysUserService ;


    /**
     * 查询所有日志
     *
     * @return
     */
    public List<UserLog> findAll() {
        List<UserLog> userLogs = userLogMapper.selectAll();
        if (userLogs == null || userLogs.size() == 0) {
            throw new XxException(ExceptionEnums.LOG_NOT_FIND);
        }
        return userLogs;
    }

    @Override
    public void insertLog(UserLog userLog) {
        userLogMapper.insert(userLog);
    }

    @Override
    public LayUi selectLog( String serch, Integer page, Integer limit) {
        SysUser user =SysUserService.findUserByUserName(null);
        PageHelper.startPage(page, limit);
        List<UserLog> userLogs = userLogMapper.selectByAddId(user.getId(), serch);
        if (userLogs == null || userLogs.size() == 0) {
            log.error("日志未找到");
            throw new XxException(ExceptionEnums.LOG_NOT_FIND);
        }
        PageInfo<UserLog> brandPageInfo = new PageInfo<>(userLogs);
        LayUi<UserLog> layUi = new LayUi<>();
        layUi.setCount(brandPageInfo.getTotal());
        layUi.setData(userLogs);
        return layUi;
    }

    @Override
    public void deleteLog(Integer[] ids) {
        for (Integer id : ids) {
            log.info("删除id为" + id + "的会议");
            userLogMapper.deleteById(id);
        }
    }

    @Override
    public LayUi selectAllLog(String search, Integer page, Integer limit) {
        PageHelper.startPage(page, limit);
        List<UserLog> userLogs = userLogMapper.selectAllLog(search);
        if (userLogs == null || userLogs.size() == 0) {
            log.error("日志未找到");
            throw new XxException(ExceptionEnums.LOG_NOT_FIND);
        }
        PageInfo<UserLog> brandPageInfo = new PageInfo<>(userLogs);
        LayUi<UserLog> layUi = new LayUi<>();
        layUi.setCount(brandPageInfo.getTotal());
        layUi.setData(userLogs);
        return layUi;
    }


}




