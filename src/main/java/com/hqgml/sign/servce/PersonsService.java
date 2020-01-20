package com.hqgml.sign.servce;

import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Persons;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;

/**
 * @author Devil
 * @date 2019/12/31 10:47
 */
public interface PersonsService {

    /**
     * 创建人员
     *
     * @param persons
     */
    void createPersion(Persons persons);


    /**
     * 根据uuid删除
     *
     * @param uuid
     */
    void delectByuuid(String uuid);


    /**
     * 查找单个
     *
     * @param username
     * @return
     */
    Persons selectOneByUsername(String username);

    /**
     * 查看所属用户的所有人员
     *
     * @param s
     * @param page
     * @param limit
     * @param username
     * @return
     */
    LayUi selectAllByusername(String s, Integer page, Integer limit, String username);

    /**
     * 通过id更新
     * @param persons
     */
    void updatePersonById(Persons persons);


    /**
     * 删除人员
     * @param ids
     * @throws TencentCloudSDKException
     */
    void deleteByids(Integer[] ids) throws TencentCloudSDKException;


    /**
     * 通过id查询单个
     * @param id
     * @return
     */
    Persons selectById(Integer id);

    /**
     * 通过姓名查询
     * @param name
     * @return
     */
    Persons selectByName(String name);


   LayUi selectCheck(Integer mid, Integer page, Integer limit, String personName);
}








