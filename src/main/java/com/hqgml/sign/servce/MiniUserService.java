package com.hqgml.sign.servce;

import com.hqgml.sign.pojo.VxUser;

import java.util.Map;

/**
 * @author Devil
 * @date 2020/2/6 12:58
 */
public interface MiniUserService {
    String getUserInfo(String code);


    Map getBrand(VxUser vxUser);

    Integer setBand(VxUser vxUser, String personName, String phone);
    VxUser findByid(Integer id);
}



