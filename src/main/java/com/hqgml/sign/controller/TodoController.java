package com.hqgml.sign.controller;

import com.hqgml.sign.others.annotation.ControllerLog;
import com.hqgml.sign.others.pojo.Common;
import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.others.utlis.UserUtils;
import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.pojo.Todos;
import com.hqgml.sign.servce.TodosService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import jdk.nashorn.internal.objects.annotations.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.w3c.dom.ranges.Range;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

/**
 * @author Devil
 * @date 2020/4/27 22:56
 */
@RestController
@RequestMapping("todos")
@Api(tags = "todo相关")

public class TodoController {

    @Autowired
    private TodosService todosService;

    @GetMapping
    @ApiOperation(value = "查看TODO信息")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "search", value = "搜索内容"),
            @ApiImplicitParam(name = "page", value = "当前页", defaultValue = "1", type = "Integer"),
            @ApiImplicitParam(name = "limit", value = "每页的大小", defaultValue = "15", type = "Integer"),
    })
    public ResponseEntity<Common> findTodos(
            @RequestParam(name = "search", required = false) String search,
            @RequestParam(name = "page", required = false, defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "15") Integer limit,
            HttpServletRequest httpServletRequest
    ) {
        SysUser user = UserUtils.getUserByToken(httpServletRequest);
        MyPageInfo myPageInfo = todosService.selectTodos(page, limit, user);
        return ResponseEntity.ok(new Common(myPageInfo));
    }


    @DeleteMapping()
    @ControllerLog(describe = "删除TODO信息")
    @ApiOperation(value = "删除TODO信息")
    @ApiImplicitParam(name = "ids[]", value = "要删除的TODO的数组")
    public ResponseEntity<Common> deleteTodo(@RequestParam("ids[]") Integer[] ids) {
        todosService.deleteTodo(ids);
        Common common = new Common("删除成功");
        return ResponseEntity.ok(common);
    }


    @PutMapping("{field}")
    @ControllerLog(describe = "更新TODO信息")
    @ApiOperation(value = "更新TODO信息" )
    @ApiImplicitParams({
            @ApiImplicitParam(name = "field", value = "需要更新的字段，things为更新内容,done为更新状态",required = true),
            @ApiImplicitParam(name = "data", value = "要更新的值",required = true),
    })
    public ResponseEntity<Common> update(
            @PathVariable("field") String type,
            @RequestParam("data") String data) {
        todosService.updateTodo(type,data);
        Common common = new Common("修改成功");
        return ResponseEntity.ok(common);
    }


    @PostMapping
    @ControllerLog(describe = "添加TODO信息")
    @ApiOperation(value = "添加TODO信息")
    public ResponseEntity<Common> addMeeting(@Valid Todos todos,HttpServletRequest request)
    {
        SysUser user = UserUtils.getUserByToken(request);
        todos.setUid(user.getId());
        todosService.addTodo(todos);
        Common common = new Common("添加成功");
        return ResponseEntity.ok(common);
    }


}
