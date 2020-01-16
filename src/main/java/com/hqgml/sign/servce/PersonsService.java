package com.hqgml.sign.servce;

import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Persons;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import org.springframework.security.core.parameters.P;

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
    LayUi selectAllByusername(String s, Integer page, Integer limit, String username);

    void updatePersonById(Persons persons);


    void delectByids(Integer[] ids) throws TencentCloudSDKException;

    Persons selectById(Integer id);
}








