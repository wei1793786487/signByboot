package com.hqgml.sign.controller;

import com.hqgml.sign.others.annotation.ControllerLog;
import com.hqgml.sign.others.pojo.Common;
import com.hqgml.sign.others.utlis.UserUtils;
import com.hqgml.sign.pojo.Menu;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.pojo.Todos;
import com.hqgml.sign.servce.MenuService;
import com.hqgml.sign.servce.SysUserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

/**
 * @author Devil
 * @date 2020/5/9 19:23
 */
@Slf4j
@Controller
@RequestMapping("menu")
@Api(tags = "菜单界面")
public class MenuController {

    @Autowired
    private MenuService menuService;




    /**
     * 查询
     */
    @GetMapping("{type}")
    @ResponseBody
    @ApiOperation(value = "获取菜单信息")
    public ResponseEntity<Common> loadMeau(@PathVariable("type") Integer type) {
        List<Menu> menu = menuService.findMenu(type);
        Common common = new Common(menu);
        return ResponseEntity.ok(common);
    }


    @DeleteMapping()
    @ControllerLog(describe = "删除菜单信息")
    @ApiOperation(value = "删除菜单信息")
    @ApiImplicitParam(name = "ids[]", value = "要删除的菜单的id的数组")
    public ResponseEntity<Common<String>> deleteMenu(@RequestParam("ids") Integer[] ids) {
        menuService.deleteMenu(ids);
        Common<String> common = new Common<>("删除成功");
        return ResponseEntity.ok(common);
    }



    @PutMapping("{id}")
    @ControllerLog(describe = "更新菜单信息")
    @ApiOperation(value = "更新菜单信息")
    public ResponseEntity<Common<String>> update(
            @PathVariable("id") Integer id,
            @Valid Menu menu
    ) {
        menuService.updateMenu(menu, id);
        Common<String> common = new Common<>("修改成功");
        return ResponseEntity.ok(common);
    }




}
