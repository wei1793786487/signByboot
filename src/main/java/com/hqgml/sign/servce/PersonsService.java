package com.hqgml.sign.servce;

import com.hqgml.sign.pojo.Persons;

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
     * 查看所属用户的所有
     *
     * @param username
     * @return
     */
    List<Persons> selectAllByusername(String username);
}






