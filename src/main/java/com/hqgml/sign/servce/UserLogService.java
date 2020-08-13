package com.hqgml.sign.servce;

import com.hqgml.sign.others.pojo.LayUi;
import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.pojo.UserLog;

import javax.servlet.http.HttpServletRequest;

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
     * @param serch
     * @param page
     * @param limit
     * @param request
     * @return
     */
    MyPageInfo<UserLog> selectLog(String serch, Integer page, Integer limit, HttpServletRequest request);

    /**
     * @param ids
     */
    void deleteLog(Integer[] ids);

    /**
     * 超管查询日志
     * @param serch
     * @param page
     * @param limit
     * @return
     */
    LayUi selectAllLog(String serch, Integer page, Integer limit);
}




