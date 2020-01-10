package com.hqgml.sign.controller;

import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.pojo.Menu;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.servce.MenuService;
import com.hqgml.sign.servce.SysUserService;
import com.hqgml.sign.utlis.CookieUtils;
import com.hqgml.sign.utlis.IdWorker;
import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.XxException;
import com.hqgml.sign.utlis.getverUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/**
 * @author Devil
 * @date 2020/1/6 20:44
 */
@Slf4j
@Controller
public class UtilsController {

    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private MenuService menuService;

    @Autowired
    private SysUserService userService;

    @Autowired
    private IdWorker idWorker;

    @RequestMapping("verifyCode.jpg")
    public void verifyCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String cookie = CookieUtils.getCookieValue(request, "getverid");
        /*禁止缓存*/
        response.setDateHeader("Expires", 0);
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");
        response.setHeader("Pragma", "no-cache");
        response.setContentType("image/jpeg");
        String code = getverUtils.generateVerifyCode(4);
        log.info("验证码============>" + code);
        String uuid = idWorker.nextId() + "";
        redisTemplate.opsForValue().set(uuid, code, 5, TimeUnit.MINUTES);
        CookieUtils.setCookie(request, response, "getverid", uuid, 60 * 5);
        //每次更改删除cookie
        if (cookie != null&& StringUtils.equals(cookie,"")) {
            Boolean isDelete = redisTemplate.delete(cookie);
            String msg = isDelete ? "成功" : "失败";
            log.info("删除" + msg + cookie);
        }
        ServletOutputStream outputStream = response.getOutputStream();
        getverUtils.outputImage(110, 40, outputStream, code);
        outputStream.flush();
        outputStream.close();
    }

    @GetMapping("menu")
    @ResponseBody
    public ResponseEntity<Common> loadMeau(HttpServletRequest request) {
        User userDetails = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        SysUser user = userService.findUserByUserName(userDetails.getUsername());
        if (user == null) {
            throw new XxException(ExceptionEnums.USER_NOT_FIND);
        }
        Menu menu = menuService.findByUsername(user.getRole());
        if (menu == null) {
            throw new XxException(ExceptionEnums.MENU_NOT_FIND);
        }
        Common common = new Common(menu);
        return ResponseEntity.ok(common);
    }

    /**
     * 看看是不是活着
     *
     * @return
     */
    @GetMapping("isLife")
    @ResponseBody
    public ResponseEntity<Void> isLife() {
        return ResponseEntity.ok().build();
    }
}
