package com.hqgml.sign.servce.impl;

import com.hqgml.sign.servce.TenlentService;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import com.tencentcloudapi.iai.v20180301.IaiClient;
import com.tencentcloudapi.iai.v20180301.models.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author Devil
 * @date 2020/1/12 17:28
 */
@Slf4j
@Service
public class TenlentServiceImpl implements TenlentService {

    @Resource
    private IaiClient client;


    @Override
    public void createGroup(String groupName, String groupId) throws TencentCloudSDKException {
        String params = "{\"GroupName\":\""+groupName+"\",\"GroupId\":\""+groupId+"\",\"FaceModelVersion\":\"3.0\"}";
        CreateGroupRequest req = CreateGroupRequest.fromJsonString(params, CreateGroupRequest.class);
        CreateGroupResponse resp = client.CreateGroup(req);
        log.info("创建人员库完成" + resp.getRequestId());
    }

    @Override
    public void deleteGroup(String groupId) throws TencentCloudSDKException {
        String params = "{\"GroupId\":\"" + groupId + "\"}";
        DeleteGroupRequest req = DeleteGroupRequest.fromJsonString(params, DeleteGroupRequest.class);
        DeleteGroupResponse resp = client.DeleteGroup(req);
        log.info("创删除人员库完成" + resp.getRequestId());
    }

    @Override
    public String getGroup() throws TencentCloudSDKException {
        String params = "{}";
        GetGroupListRequest req = GetGroupListRequest.fromJsonString(params, GetGroupListRequest.class);
        GetGroupListResponse resp = client.GetGroupList(req);
        return GetGroupListRequest.toJsonString(resp);

    }

    @Override
    public String createPerson(String groupId, String personName, String personId, String url) throws TencentCloudSDKException, InterruptedException {
        String params = "{\"GroupId\":\"" + groupId + "\",\"PersonName\":\"" + personName + "\",\"PersonId\":\"" + personId + "\",\"Url\":\"" + url + "\"}";
        CreatePersonRequest req = CreatePersonRequest.fromJsonString(params, CreatePersonRequest.class);
        CreatePersonResponse resp = client.CreatePerson(req);
        return resp.getFaceId();
    }

    @Override
    public void deletePerson(String personId) throws TencentCloudSDKException {
        String params = "{\"PersonId\":\"" + personId + "\"}";
        DeletePersonRequest req = DeletePersonRequest.fromJsonString(params, DeletePersonRequest.class);
        DeletePersonResponse resp = client.DeletePerson(req);
        log.info("删除人员" + personId + "完成,人员id为" + resp.getRequestId());
    }

    @Override
    public String getPersonList(String groupId) throws TencentCloudSDKException {
        String params = "{\"GroupId\":\"" + groupId + "\"}";
        GetPersonListRequest req = GetPersonListRequest.fromJsonString(params, GetPersonListRequest.class);
        GetPersonListResponse resp = client.GetPersonList(req);
        return GetPersonListRequest.toJsonString(resp);
    }

    @Override
    public SearchPersonsResponse search(String groupId, String image) throws TencentCloudSDKException {
        String params = "{\"GroupIds\":[\""+groupId+"\"],\"Image\":\""+image+"\",\"MaxPersonNum\":1}";
        SearchPersonsRequest req = SearchPersonsRequest.fromJsonString(params, SearchPersonsRequest.class);
        return client.SearchPersons(req);
    }
}
