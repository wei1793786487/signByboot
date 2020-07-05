package com.hqgml.sign.controller;

import com.hqgml.sign.others.pojo.Common;
import com.hqgml.sign.pojo.Menu;
import com.hqgml.sign.pojo.Meta;
import com.hqgml.sign.pojo.Role;
import com.hqgml.sign.servce.MenuService;
import com.hqgml.sign.servce.RoleService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
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
     * 查询
     */
    @GetMapping()
    @ApiOperation(value = "获取菜单信息")
    public ResponseEntity<Common> loadMeau() {
        List<Role> all = roleService.findAll();
        Common common = new Common(all);
        return ResponseEntity.ok(common);
    }


    /**
     * 给meta绑定角色
     * @param rid
     * @param mid
     * @return
     */
    @PostMapping("des")
    @ApiOperation(value = "分配角色")
    public ResponseEntity<Common<String>> desRole(
            @RequestParam("rid") Integer rid[],
            @RequestParam("mid") Integer mid
            ) {
        roleService.desRole(rid,mid);
        Common<String> common = new Common<>("添加成功");
        return ResponseEntity.ok(common);
    }


    @GetMapping("{rid}")
    @ApiOperation(value = "获取菜单绑定的角色")
    public ResponseEntity<Common> getDes(@PathVariable("rid") Integer rid) {
        List<Role> des = roleService.findRoleDes(rid);
        return ResponseEntity.ok(new Common(des));
    }



}
