package com.hqgml.sign.controller;

import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.pojo.UserLog;
import com.hqgml.sign.servce.SysUserService;
import com.hqgml.sign.servce.impl.UserLogServiceImpl;
import com.hqgml.sign.utlis.annotation.ControllerLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

/**
 * @author Devil
 * @date 2019/12/31 16:02
 */
@RestController
@RequestMapping("log")
public class LogController {
    @Autowired
    private UserLogServiceImpl userLogService;

    @Autowired
    private SysUserService userService;


    /**
     * 查询日志
     * @param serch
     * @param page
     * @param limit
     */
    @GetMapping()
    public LayUi selectByUserName(
            @RequestParam(name = "serch", required = false) String serch,
            @RequestParam(name = "page", required = false, defaultValue = "1") Integer page,
            @RequestParam(name = "limit", required = false, defaultValue = "15") Integer limit
    ) {
        String username = userService.findUserByUserName(null).getUsername();
        return userLogService.selectLog(username, serch, page, limit);


    }

    @DeleteMapping()
    @ControllerLog(describe = "删除所选日志")
    public ResponseEntity<Common> delete(@RequestParam("ids[]") Integer[] ids) {
        userLogService.deleteLog(ids);
        Common common = new Common("删除成功");
        return ResponseEntity.ok(common);
    }

}
