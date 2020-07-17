package com.hqgml.sign.controller;

import com.hqgml.sign.others.pojo.Common;
import com.hqgml.sign.others.pojo.LayUi;
import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.pojo.UserLog;
import com.hqgml.sign.servce.impl.UserLogServiceImpl;
import com.hqgml.sign.others.annotation.ControllerLog;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;

/**
 * @author Devil
 * @date 2019/12/31 16:02
 */
@RestController
@RequestMapping("log")
@Api(tags = "日志管理接口")
public class LogController {
    @Autowired
    private UserLogServiceImpl userLogService;

    /**
     * 查询日志
     * @param serch 搜索内容
     * @param page 当前页面
     * @param limit 每页的大小
     */
    @GetMapping()
    @ApiOperation(value = "查询日志")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "serch",value = "支持名称,类型，请求url，请求参数，请求类型，ip地址，ip地址，创建时间"),
            @ApiImplicitParam(name = "page",value = "当前页",defaultValue = "1",type = "Integer"),
            @ApiImplicitParam(name = "limit",value = "每页的大小",defaultValue = "15",type = "Integer")
    })
    public MyPageInfo<UserLog> selectByAddId(
            @RequestParam(name = "serch", required = false) String serch,
            @RequestParam(name = "page", required = false, defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "15") Integer limit
    ) {
        return userLogService.selectLog(serch, page, limit);
    }


    @DeleteMapping()
    @ControllerLog(describe = "删除所选日志")
    @ApiOperation(value = "删除日志信息")
    @ApiImplicitParam(name = "ids[]",value = "要删除的日志的数组")
    public ResponseEntity<Common> delete(@RequestParam("ids") Integer[] ids) {
        userLogService.deleteLog(ids);
        Common common = new Common("删除成功");
        return ResponseEntity.ok(common);
    }


    /**
     * 超管查询日志
     * @param serch 搜索内容
     * @param page 当前页面
     * @param limit 每页的大小
     */
    @GetMapping("all")
    @Secured("ROLE_ADMIN")
    @ControllerLog(describe = "超管查询日志")
    @ApiOperation(value = "查询所有的日志，用户必须有admin角色")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "serch",value = "支持名称,类型，请求url，请求参数，请求类型，ip地址，ip地址，创建时间"),
            @ApiImplicitParam(name = "page",value = "当前页",defaultValue = "1",type = "Integer"),
            @ApiImplicitParam(name = "limit",value = "每页的大小",defaultValue = "15",type = "Integer")
    })
    public LayUi selectByAll(
            @RequestParam(name = "serch", required = false) String serch,
            @RequestParam(name = "page", required = false, defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "15") Integer limit
    ) {
        return userLogService.selectAllLog(serch, page, limit);

    }



}
