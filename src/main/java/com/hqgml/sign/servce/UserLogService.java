package com.hqgml.sign.servce;

import com.hqgml.sign.pojo.UserLog;

/**
 * @author Devil
 * @date 2019/12/31 10:48
 */
public interface UserLogService {

    /**
     * 日志保存
     */
    void insertLog(UserLog userLog);

}


