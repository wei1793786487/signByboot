package com.hqgml.sign.servce;

import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.pojo.Persons;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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
    MyPageInfo<Persons> selectAllByusername(String s, Integer page, Integer limit, String username, HttpServletRequest request);

    /**
     * 通过id更新
     * @param persons
     */
    void updatePersonById(Persons persons);


    /**
     * 删除人员
     * @param ids
     * @param url
     * @throws TencentCloudSDKException
     */
    void deleteByids(Integer[] ids, String url) throws TencentCloudSDKException;


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


    /**
     * 根据uuid查询用户
     * @param uuid
     * @return
     */
    Persons selectByUuid(String uuid);


    /**
     * 查询总的数量
     * @return
     */
    Integer selectCount();

    /**
     * 查询某个会议的参加情况
     * @param type
     * @param mid
     * @param request
     * @return
     */
    List<Persons> findPersonBelong(Integer type, String mid, HttpServletRequest request);



    Integer insertOne(Persons persons);


}








