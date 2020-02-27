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
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
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

import javax.annotation.Resource;
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
@Api(tags = "工具接口")

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
    @ApiOperation(value = "获取验证码")

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
     */
    @GetMapping("menu")
    @ResponseBody
    @ApiOperation(value = "获取菜单信息")
    public ResponseEntity<Common> loadMeau() {
        User userDetails = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        SysUser user = userService.findUserByUserName(userDetails.getUsername());
        if (user == null) {
            throw new XxException(ExceptionEnums.USER_NOT_FIND);
        }
        Menu menu = menuService.findMenuByRolename(user.getRole());
        if (menu == null) {
            throw new XxException(ExceptionEnums.MENU_NOT_FIND);
        }
        Common common = new Common(menu);
        return ResponseEntity.ok(common);
    }

    /**
     * 看看是不是活着
     *
     */
    @GetMapping("isLife")
    @ResponseBody
    @ApiOperation(value = "判断是否cookie过期")

    public ResponseEntity<Void> isLife() {
        return ResponseEntity.ok().build();
    }


    /**
     * 群发通知消息
     *
     * @return
     */
    @GetMapping("sendMassage")
    @ApiOperation(value = "群发通知人员签到")
    @ApiImplicitParam(name = "mid",value = "要群发的会议id")

    @ResponseBody
    public ResponseEntity<Common> sendMassage(@RequestParam("mid") Integer mid) {
        msgServices.sendMsgAllMeeting(mid);
        return ResponseEntity.ok(new Common("发送完成"));
    }


    /**
     * 单发通知消息
     *
     */
    @GetMapping("sendOneMassage")
    @ApiOperation(value = "单发通知人员签到")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "mid",value = "要单发的会议id"),
            @ApiImplicitParam(name = "pid",value = "要单发的人员id"),
    })
    @ResponseBody
    public ResponseEntity<Common> sendOneMassage(@RequestParam("mid") Integer mid, @RequestParam("pid") Integer pid) {
        msgServices.sendMsgOneMeeting(mid, pid);
        return ResponseEntity.ok(new Common("发送完成"));
    }

    @GetMapping("findAddress")
    @ResponseBody
    @ApiOperation(value = "模糊插叙地点")
    @ApiImplicitParam(name = "keyword",value = "要查询的关键字")
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
