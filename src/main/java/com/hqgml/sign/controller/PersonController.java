package com.hqgml.sign.controller;

import com.hqgml.sign.others.exception.ExceptionEnums;
import com.hqgml.sign.others.exception.XxException;
import com.hqgml.sign.others.pojo.Common;
import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.pojo.Persons;
import com.hqgml.sign.servce.PersonsService;
import com.hqgml.sign.others.annotation.ControllerLog;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author Devil
 * @date 2020/1/14 15:52
 */
@RestController
@RequestMapping("person")
@Api(tags = "人员管理接口")
public class PersonController {

    @Autowired
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
    public ResponseEntity<MyPageInfo<Persons>> findAllByUserNname(
            @RequestParam(name = "username", required = false) String username,
            @RequestParam(name = "page", required = false, defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "15") Integer limit,
            @RequestParam(name = "personName", required = false) String personName,
            HttpServletRequest request
    ) {
        MyPageInfo<Persons> data = personsService.selectAllByusername(username, page, limit, personName,request);
        return ResponseEntity.ok(data);
    }

    /**
     *  更新人员信息
     * @param persons  人员信息
     */
    @PutMapping
    @ControllerLog(describe = "更新人员信息")
    @ApiOperation(value = "更新人员信息")
    public ResponseEntity<Common> updatePersonNameById(Persons persons){
       personsService.updatePersonById(persons);
        Common common = new Common("更新成功");
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
    @ApiImplicitParams({
            @ApiImplicitParam(name = "ids",value = "要删除的人员的id的数组"),
            @ApiImplicitParam(name = "url",value = "要删除的人员的图片位置")
    })
    public ResponseEntity<Common> deleteByIds(
            @RequestParam(value = "ids",required = false)  Integer[] ids,
            @RequestParam(value = "url",required = false)  String url
    ) throws TencentCloudSDKException {
        if (ids==null&&url==null){
            throw new XxException(ExceptionEnums.PARAMETER_ERROT);
        }
        personsService.deleteByids(ids,url);
        Common common = new Common("删除完成");
        return ResponseEntity.ok(common);
    }

    /**
     * 根据会议的名字模糊查询
     *
     */
    @GetMapping("{type}/{mid}")
    @ApiOperation(value = "查询属于该用户的会议")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "type",value = "要查询的类型，0是不属于此会议的人员，1是属于次会议的人员,2是所有人员",required = true),
            @ApiImplicitParam(name = "mid",value = "会议的id"),
    })
    public ResponseEntity<Common>findPersonBelong(
            @PathVariable("type") Integer type,
            @PathVariable("mid") String mid,
            HttpServletRequest request
            ){
        List<Persons> personBelong = personsService.findPersonBelong(type, mid, request);
        return ResponseEntity.ok(new Common(personBelong));

    }






}

