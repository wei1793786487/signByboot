package com.hqgml.sign.servce.impl;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.http.HttpUtil;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.hqgml.sign.mapper.VxUserMapper;
import com.hqgml.sign.others.exception.ExceptionEnums;
import com.hqgml.sign.others.exception.XxException;
import com.hqgml.sign.others.jwt.JwtUtils;
import com.hqgml.sign.others.pojo.JwtProperties;
import com.hqgml.sign.others.pojo.RedisProperties;
import com.hqgml.sign.pojo.Persons;
import com.hqgml.sign.pojo.VxUser;
import com.hqgml.sign.servce.MiniUserService;
import com.hqgml.sign.servce.PersonsService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

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

    @Autowired
    private RedisProperties redisProperties;

    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private PersonsService personsService;


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
                        vxUser.setLastTime(DateUtil.now());
                        vxUserMapper.insertSelective(vxUser);
                        log.info("用户不存在新建");
                        String token = JwtUtils.generateTokenExpireInMinutes(vxUser, jwtProperties.getPrivateKey(), jwtProperties.getExpire());
                        redisTemplate.opsForValue().set(redisProperties.getTokenPre()+"vx"+vxUser.getId(),vxUser.getOpenid(),redisProperties.getRedisCache(), TimeUnit.MINUTES);
                        return  token;
                    } else {
                        user.setLastTime(DateUtil.now());
                        redisTemplate.opsForValue().set(redisProperties.getTokenPre()+"vx"+user.getId(),user.getOpenid(),redisProperties.getRedisCache(), TimeUnit.MINUTES);
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



    @Override
    public Map getBrand(VxUser vxUser) {
        Map<String,String> band=new HashMap<>();
        VxUser vx = vxUserMapper.findById(vxUser.getId());
        if (vx.getPId()==null){
            band.put("person_band","0");
            band.put("face_band","0");
        }else {
            band.put("person_band","1");
            Persons person = personsService.selectById(vx.getPId());
            if (person.getUrl()==null){
                band.put("face_band","0");
            }else {
                band.put("face_band","1");
            }
        }
        return band;
    }



    @Override
    public Integer setBand(VxUser vxUser, String personName, String phone) {
        VxUser vx = vxUserMapper.findById(vxUser.getId());
        if (vx.getPId()!=null){
            throw new XxException(ExceptionEnums.PERSON_BAND);
        }
        int returnInfo=0;
        Integer bandId=0;
        Persons one = personsService.selectOneByUsername(personName);
         if (one==null){
             Persons persons=new Persons();
             persons.setAddId(0);
             persons.setPersonName(personName);
             persons.setPhone(phone);
             persons.setBandType(1);
             persons.setUuid(IdUtil.simpleUUID());
             persons.setAddTime(DateUtil.now());
             bandId = personsService.insertOne(persons);
             returnInfo=1;
         }else {
             bandId=one.getId();
         }
        int i = vxUserMapper.updatePIdByOpenid(bandId, vx.getOpenid());
       if (i!=1){
         throw new XxException(ExceptionEnums.INSERT_ERROR);
        }
         return returnInfo;
    }

    @Override
    public VxUser findByid(Integer id) {
         return vxUserMapper.findById(id);
    }

}



