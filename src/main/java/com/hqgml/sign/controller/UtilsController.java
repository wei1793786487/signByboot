package com.hqgml.sign.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.hqgml.sign.pojo.*;
import com.hqgml.sign.servce.MenuService;
import com.hqgml.sign.servce.MsgServices;
import com.hqgml.sign.servce.SysUserService;
import com.hqgml.sign.utlis.AddressUtils;
import com.hqgml.sign.utlis.CookieUtils;
import com.hqgml.sign.utlis.IdWorker;
import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.XxException;
import com.hqgml.sign.utlis.getverUtils;
import com.sun.org.apache.bcel.internal.generic.NEW;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import sun.security.provider.MD2;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;
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

    @Autowired

    private MsgServices msgServices;

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
        if (cookie != null && StringUtils.equals(cookie, "")) {
            Boolean isDelete = redisTemplate.delete(cookie);
            String msg = isDelete ? "成功" : "失败";
            log.info("删除" + msg + cookie);
        }
        ServletOutputStream outputStream = response.getOutputStream();
        getverUtils.outputImage(110, 40, outputStream, code);
        outputStream.flush();
        outputStream.close();
    }

    /**
     * 菜单
     *
     * @return
     */
    @GetMapping("menu")
    @ResponseBody
    public ResponseEntity<Common> loadMeau() {
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


    /**
     * 群发通知消息
     *
     * @return
     */
    @GetMapping("sendMassage")
    @ResponseBody
    public ResponseEntity<Common> sendMassage(@RequestParam("mid") Integer mid) {
        msgServices.sendMsgAllMeeting(mid);
        return ResponseEntity.ok(new Common("发送完成"));
    }


    /**
     * 单发通知消息
     *
     * @return
     */
    @GetMapping("sendOneMassage")
    @ResponseBody
    public ResponseEntity<Common> sendOneMassage(@RequestParam("mid") Integer mid, @RequestParam("pid") Integer pid) {
        msgServices.sendMsgOneMeeting(mid, pid);
        return ResponseEntity.ok(new Common("发送完成"));
    }

    @GetMapping("findAddress")
    @ResponseBody
    public ResponseEntity<LayUi> findAddress(@RequestParam("keyword") String keyword) {

        LayUi layUi = new LayUi();
        String coordinate = AddressUtils.getCoordinate(keyword, "", null);
        JSONObject jsonObject = JSON.parseObject(coordinate);
        if (jsonObject.getInteger("status") == 0) {
            BaiduResult baiduResult = JSON.parseObject(coordinate, BaiduResult.class);
            layUi.setMsg("success");
            layUi.setData(baiduResult.getResult());
        } else {
            throw new XxException(ExceptionEnums.ADDRESS_ERROR);
        }
        return ResponseEntity.ok(layUi);

    }

}
