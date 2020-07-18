package com.hqgml.sign.servce;

import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.pojo.Persons;

/**
 * @author Devil
 * @date 2020/1/21 18:01
 */
public interface CheckServices {

    /**
     * 查看签到状态
     * @param mid
     * @param page
     * @param limit
     * @param personName
     * @param isCheck
     * @return
     */
    MyPageInfo<Persons> selectCheck(Integer mid, Integer page, Integer limit, String personName, Integer isCheck);

    /**
     * 改变签到状态
     * @param mid
     * @param ids
     * @param check
     */
    void updateCheck(Integer mid, Integer check,Integer[] ids) ;

    /**
     * 删除人员
     * @param mid
     * @param pid
     */
    void deletePerson(Integer mid, Integer pid);

    /**
     * 查看某会议签到用与未签到人数
     * @param mid
     * @param isCheck 签到情况
     * @return
     */
    Integer countCheck(Integer isCheck,Integer mid);

}
