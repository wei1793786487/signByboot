package com.hqgml.sign.servce.impl;

import com.hqgml.sign.servce.TenlentServices;
import com.tencentcloudapi.iai.v20180301.IaiClient;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author Devil
 * @date 2020/1/12 17:28
 */
public class TenlentServicesImpl implements TenlentServices {
    @Autowired
    private IaiClient client;


    @Override
    public void createGroup(String groupName, String groupId) {

    }

    @Override
    public void deleteGroup(String groupId) {

    }

    @Override
    public void getGroup() {

    }

    @Override
    public void createPerson(String groupId, String personName, String personId, String url) {

    }

    @Override
    public void deletePerson(String personId) {

    }

    @Override
    public void getPersonList(String groupId) {

    }

    @Override
    public void search(String groupId, String Image) {

    }
}
