package com.hqgml.sign.servce;

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
    void createGroup(String groupName, String groupId);

    /**
     * 删除组
     * @param groupId
     */
    void deleteGroup(String groupId);

    /**
     * 获取组
     */
    void getGroup();

    /**
     * 创建人员
     * @param groupId
     * @param personName
     * @param personId
     * @param url
     */
    void createPerson(String groupId, String personName, String personId, String url);

    /**
     * 删除人员
     * @param personId
     */
    void deletePerson(String personId);

    /**
     * 获取人员列表
     * @param groupId
     */
    void getPersonList(String groupId);

    /**
     * 查询
     * @param groupId
     * @param Image
     */
    void search(String groupId, String Image);
}


