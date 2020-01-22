package com.hqgml.sign.servce.impl;

import com.hqgml.sign.pojo.UserLog;
import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.XxException;
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

public class UserLogServiceImpl implements UserLogService {

    @Resource
    private UserLogMapper userLogMapper;


    /**
     * 查询所有日志
     *
     * @return
     */
    public List<UserLog> findAll() {
        List<UserLog> userLogs = userLogMapper.selectAll();
        if (userLogs == null) {
            throw new XxException(ExceptionEnums.LOG_NOT_FIND);
        }
        return userLogs;
    }

    @Override
    public void insertLog(UserLog userLog) {
        userLogMapper.insert(userLog);
    }
}


