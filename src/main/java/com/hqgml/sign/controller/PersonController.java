package com.hqgml.sign.controller;

import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Persons;
import com.hqgml.sign.servce.PersonsService;
import com.hqgml.sign.utlis.annotation.ControllerLog;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * @author Devil
 * @date 2020/1/14 15:52
 */
@RestController
@RequestMapping("person")
@Api(tags = "人员管理接口")
public class PersonController {

    @Resource
    private PersonsService personsService;

    /**
     * 查询当前用户下所有人员的信息
     *
     * @return layui
     */
    @GetMapping
    @ControllerLog(describe = "查看人员信息")
    @ApiOperation(value = "查看人员信息")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "username",value = "要查询的用户名，可以不传，默认为当前登录用户"),
            @ApiImplicitParam(name = "page",value = "当前页",defaultValue = "1",type = "Integer"),
            @ApiImplicitParam(name = "limit",value = "每页的大小",defaultValue = "15",type = "Integer"),
            @ApiImplicitParam(name = "personName",value = "要搜索的人员的名字"),
    })
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
     * @param persons  人员信息
     *
     */
    @PutMapping
    @ControllerLog(describe = "更新人员信息")
    @ApiOperation(value = "更新人员信息")
    public ResponseEntity<Common> updatePersonNameById(Persons persons){
       personsService.updatePersonById(persons);
        Common common = new Common(null);
        return ResponseEntity.ok(common);
    }

    /**
     * 人员库中删除该人员
     * @param ids  要删除的人员的id的数组
     *
     *
     */
    @DeleteMapping
    @ControllerLog(describe = "人员库删除人员")
    @ApiOperation(value = "删除人员接口")
    @ApiImplicitParam(name = "ids[]",value = "要删除的人员的id的数组",required = true)

    public ResponseEntity<Common> deleteByIds(@RequestParam("ids[]") Integer[] ids) throws TencentCloudSDKException {
        personsService.deleteByids(ids);
        Common common = new Common("删除完成");
        return ResponseEntity.ok(common);
    }







}

