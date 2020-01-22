package com.hqgml.sign.servce;

import com.hqgml.sign.pojo.LayUi;
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


    /**
     *
     * @param username
     * @param serch
     * @param page
     * @param limit
     * @return
     */
    LayUi selectLog(String username,String serch, Integer page, Integer limit);

    /**
     *
     * @param ids
     */
    void deleteLog(Integer[] ids);
}



