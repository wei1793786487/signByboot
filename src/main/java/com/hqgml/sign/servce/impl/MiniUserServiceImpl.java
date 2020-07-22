package com.hqgml.sign.servce.impl;

import cn.hutool.core.date.DateUtil;
import cn.hutool.http.HttpUtil;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.hqgml.sign.mapper.VxUserMapper;
import com.hqgml.sign.others.exception.ExceptionEnums;
import com.hqgml.sign.others.exception.XxException;
import com.hqgml.sign.others.jwt.JwtUtils;
import com.hqgml.sign.others.pojo.JwtProperties;
import com.hqgml.sign.pojo.VxUser;
import com.hqgml.sign.servce.MiniUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * @author Devil
 * @date 2020/2/6 12:58
 */
@Service
@Slf4j
public class MiniUserServiceImpl implements MiniUserService {


    private static final String WX_AUTO_URL = "https://api.weixin.qq.com/sns/jscode2session";
    private static final String APPID = "wxa8d655672c5b4e6b";
    private static final String SECUERT = "c1384aa5b2949189243ce41f6372a37d";
    private static final String GRANDT_TYPE = "authorization_code";
    private static final String ERRCODE = "errcode";



    @Autowired
    private VxUserMapper vxUserMapper;

    @Autowired
    private JwtProperties jwtProperties;


    @Override
    public String getUserInfo(String code) {
        JSONObject jsonObject;
        Map<String, Object> parms = new HashMap<>();
        parms.put("appid", APPID);
        parms.put("secret", SECUERT);
        parms.put("grant_type", GRANDT_TYPE);
        parms.put("js_code", code);

        String response = HttpUtil.get(WX_AUTO_URL, parms);

        try {
            jsonObject = JSON.parseObject(response);
            if (jsonObject.getInteger(ERRCODE) == null) {
                String openid = jsonObject.getString("openid");
                if (openid != null) {
                    //看看数据库是不是有存在的，如果有的话就返回查询到的token如果没有的话插入 然后返回新的
                    VxUser user = vxUserMapper.findByOpenid(openid);
                    if (user == null) {
                        VxUser vxUser = new VxUser ();
                        vxUser.setOpenid(openid);
                        vxUser.setCreateTime(DateUtil.now());
                        int id = vxUserMapper.insertSelective(vxUser);
                        vxUser.setId(id);
                        log.info("用户不存在新建");
                        String token = JwtUtils.generateTokenExpireInMinutes(vxUser, jwtProperties.getPrivateKey(), jwtProperties.getExpire());
                        return  token;
                    } else {
                        return JwtUtils.generateTokenExpireInMinutes(user, jwtProperties.getPrivateKey(), jwtProperties.getExpire());
                    }
                } else {
                    throw new XxException(ExceptionEnums.OPENID_ERROR);
                }
            } else {
                throw new XxException(ExceptionEnums.CODE_ERROR);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new XxException(ExceptionEnums.AUTH_ERROR);
        }
    }



}



