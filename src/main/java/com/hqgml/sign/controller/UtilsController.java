package com.hqgml.sign.controller;

import com.hqgml.sign.utlis.CookieUtils;
import com.hqgml.sign.utlis.IdWorker;
import com.hqgml.sign.utlis.getverUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/**
 * @author Devil
 * @date 2020/1/6 20:44
 *
 *
 */
@Slf4j
@Controller
public class UtilsController  {

    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private IdWorker idWorker;

    @RequestMapping("/verifyCode.jpg")
    public void verifyCode(HttpServletRequest request, HttpServletResponse response) throws IOException{

        /*禁止缓存*/
        response.setDateHeader("Expires",0);
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");
        response.setHeader("Pragma", "no-cache");
        response.setContentType("image/jpeg");
        String code = getverUtils.generateVerifyCode(4);
        log.info("验证码============>" + code);
        String uuid = idWorker.nextId()+"";
        redisTemplate.opsForValue().set(uuid,code,5, TimeUnit.MINUTES);
        CookieUtils.setCookie(request,response,"getverid",uuid,60*5);
        ServletOutputStream outputStream = response.getOutputStream();
        //ImageIO.write(bufferedImage,"jpg",outputStream);
        getverUtils.outputImage(110,40,outputStream,code);
        outputStream.flush();
        outputStream.close();
    }
}
