package com.hqgml.sign.servce;

import com.hqgml.sign.pojo.Persons;

/**
 * @author Devil
 * @date 2019/12/31 10:47
 */
public interface PersonsService {

    /**
     * 创建人员
     * @param persons
     */
    void createPersion(Persons persons);


    void delectByuuid(String uuid);
}





