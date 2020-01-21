package com.hqgml.sign.controller;

import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Persons;
import com.hqgml.sign.servce.PersonsService;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 * @author Devil
 * @date 2020/1/14 15:52
 */
@RestController
@RequestMapping("person")
public class PersonController {

    @Autowired
    private PersonsService personsService;

    /**
     * 查询当前用户下所有的信息
     *
     * @return
     */
    @GetMapping
    public ResponseEntity<LayUi> findAllByUserNname(
            @RequestParam(name = "username", required = false) String username,
            @RequestParam(name = "page", required = false, defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "15") Integer limit,
            @RequestParam(name = "personName", required = false) String personName
    ) {
        //这里的username使用null因为使用sring security容器里面的用户
        LayUi data = personsService.selectAllByusername(username, page, limit, personName);
        return ResponseEntity.ok(data);

    }

    /**
     *  更新人员信息
     * @param persons
     * @return
     */
    @PutMapping
    public ResponseEntity<Common> updatePersonNameById(Persons persons){
       personsService.updatePersonById(persons);
        Common common = new Common(null);
        return ResponseEntity.ok(common);
    }

    /**
     * 人员库中删除该人员
     * @param ids
     * @return
     * @throws TencentCloudSDKException
     */
    @DeleteMapping
    public ResponseEntity<Common> deleteByIds(@RequestParam("ids[]") Integer[] ids) throws TencentCloudSDKException {
        personsService.deleteByids(ids);
        Common common = new Common("删除完成");
        return ResponseEntity.ok(common);
    }







}

