package com.hqgml.sign.servce.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hqgml.sign.mapper.UserLogMapper;
import com.hqgml.sign.others.exception.ExceptionEnums;
import com.hqgml.sign.others.exception.XxException;
import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.others.utlis.UserUtils;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.pojo.UserLog;
import com.hqgml.sign.servce.SysUserService;
import com.hqgml.sign.servce.UserLogService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author Devil
 * @date 2019/12/31 10:48
 */
@Service
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
    public MyPageInfo<UserLog> selectLog(String serch, Integer page, Integer limit, HttpServletRequest request) {
        SysUser user = SysUserService.findUserById(UserUtils.getUserByToken(request).getId());
        Boolean admin = UserUtils.isAdmin(user.getRoles());
        List<UserLog> userLogs;
        if (admin){
            PageHelper.startPage(page, limit);
           userLogs = userLogMapper.selectAllLog(serch);
        }else {
            PageHelper.startPage(page, limit);
             userLogs= userLogMapper.selectByAddId(user.getId(), serch);
        }

        if (userLogs == null || userLogs.size() == 0) {
            log.error("日志未找到");
            throw new XxException(ExceptionEnums.LOG_NOT_FIND);
        }
        PageInfo<UserLog> brandPageInfo = new PageInfo<>(userLogs);
        MyPageInfo<UserLog> logs=new MyPageInfo<UserLog>(brandPageInfo.getTotal(),userLogs);
        return logs;
    }

    @Override
    public void deleteLog(Integer[] ids) {
        for (Integer id : ids) {
            log.info("删除id为" + id + "的会议");
            userLogMapper.deleteById(id);
        }
    }



}




