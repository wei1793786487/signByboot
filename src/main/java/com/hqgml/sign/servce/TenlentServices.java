package com.hqgml.sign.servce;

import com.tencentcloudapi.iai.v20180301.models.SearchPersonsResponse;

/**
 * @author Devil
 * @date 2020/1/12 17:28
 */
public interface TenlentServices {

    /**
     * 创建组
     * @param groupName
     * @param groupId
     */
    void createGroup(String groupName, String groupId) throws Exception;

    /**
     * 删除组
     * @param groupId
     */
    void deleteGroup(String groupId) throws Exception;

    /**
     * 获取组
     */
    String getGroup()throws Exception;

    /**
     * 创建人员
     * @param groupId
     * @param personName
     * @param personId
     * @param url
     */
    String createPerson(String groupId, String personName, String personId, String url)throws Exception;

    /**
     * 删除人员
     * @param personId
     */
    void deletePerson(String personId)throws Exception;

    /**
     * 获取人员列表
     * @param groupId
     */
    String getPersonList(String groupId)throws Exception;

    /**
     * 查询
     * @param groupId
     * @param image
     */
    SearchPersonsResponse search(String groupId, String image)throws Exception;
}


