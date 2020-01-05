package com.hqgml.sign.controller;

import com.hqgml.sign.pojo.UserLog;
import com.hqgml.sign.servce.impl.UserLogServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author Devil
 * @date 2019/12/31 16:02
 */
@RequestMapping("log")
public class LogController {
    @Autowired
    private UserLogServiceImpl userLogService;

    @GetMapping
    public String getLog(ModelMap model) {
        List<UserLog> logs = userLogService.findAll();
        model.addAttribute("logs", logs);
        return "log";
    }

}
