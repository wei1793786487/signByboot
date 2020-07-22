package com.hqgml.sign.controller;

import com.hqgml.sign.others.annotation.ControllerLog;
import com.hqgml.sign.others.pojo.Common;
import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.pojo.Role;
import com.hqgml.sign.servce.RoleService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.BeanDefinitionDsl;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

/**
 * @author Devil
 * @date 2020/7/3 18:03
 */
@RestController
@RequestMapping("role")
@Api(tags = "角色管理接口")
public class RoleController {

    @Autowired
    private RoleService roleService;


    /**
     * 给meta绑定角色
     *
     * @param rid
     * @param mid
     * @return
     */
    @PostMapping("meta/des")
    @ApiOperation(value = "分配角色")
    public ResponseEntity<Common<String>> desRole(
            @RequestParam("rid") Integer rid[],
            @RequestParam("mid") Integer mid
    ) {
        roleService.desRole(rid, mid);
        Common<String> common = new Common<>("添加成功");
        return ResponseEntity.ok(common);
    }


    /**
     * 给user绑user
     * @param
     * @return
     */
    @PostMapping("user/des")
    @ApiOperation(value = "分配角色")
    public ResponseEntity<Common<String>> desUserRole(
            @RequestParam("rid") Integer rid[],
            @RequestParam("uid") Integer uid
    ) {
        roleService.desUserRole(rid, uid);
        Common<String> common = new Common<>("添加成功");
        return ResponseEntity.ok(common);
    }



    @GetMapping("menu/{rid}")
    @ApiOperation(value = "获取菜单绑定的角色")
    public ResponseEntity<Common> getDes(@PathVariable("rid") Integer rid) {
        List<Role> des = roleService.findRoleDes(rid);
        return ResponseEntity.ok(new Common(des));
    }


    /**
     * 查询角色
     *
     * @param page     当前的页面
     * @param limit    要搜索的条数
     * @param roleName 角色名称
     */
    @GetMapping
    @ControllerLog(describe = "查询角色")
    @ApiOperation(value = "查询角色")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "page", value = "当前页", defaultValue = "1", type = "Integer"),
            @ApiImplicitParam(name = "limit", value = "每页的大小", defaultValue = "15", type = "Integer"),
            @ApiImplicitParam(name = "roleName", value = "要搜索的角色名称"),
    })
    public ResponseEntity<MyPageInfo> getRoleList(
            @RequestParam(name = "page", required = false, defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "15") Integer limit,
            @RequestParam(name = "roleName", required = false) String roleName
    ) {
        MyPageInfo<Role> roleList = roleService.findAll(roleName, page, limit);
        return ResponseEntity.ok(roleList);
    }


    @GetMapping("{id}")
    @ControllerLog(describe = "根据id查询角色")
    @ApiOperation(value = "根据id查询角色")
    public ResponseEntity<Common> getRoleById(@PathVariable("id") String id) {
        Role role = roleService.findById(id);
        return ResponseEntity.ok(new Common(role));
    }


    /**
     * 删除所选就是
     *
     * @param ids 要删除的角色的id数组
     */
    @DeleteMapping
    @ControllerLog(describe = "删除角色")
    @ApiOperation(value = "删除角色")
    @ApiImplicitParam(name = "ids", value = "要删除的角色的id的数组", required = true)
    public ResponseEntity<Common> delete(@RequestParam("ids") Integer[] ids) {
        roleService.deleteRole(ids);
        Common common = new Common("删除成功");
        return ResponseEntity.ok(common);
    }


    @PutMapping
    @ControllerLog(describe = "修改角色")
    @ApiOperation(value = "修改角色")
    public ResponseEntity<Common> update(Role role) {
        roleService.updateRole(role);
        Common common = new Common("修改成功");
        return ResponseEntity.ok(common);
    }


    /**
     * 添加角色
     *
     * @param role 会议对象
     */
    @PostMapping
    @ControllerLog(describe = "添加角色")
    @ApiOperation(value = "添加角色接口")
    public ResponseEntity<Common> addMeeting(Role role) {
        roleService.insertOne(role);
        Common common = new Common("添加成功");
        return ResponseEntity.ok(common);
    }





}
