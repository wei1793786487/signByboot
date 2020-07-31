package com.hqgml.sign.servce;

import com.hqgml.sign.others.pojo.MyPageInfo;
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

   MyPageInfo selectAll(Integer page, Integer limit);

    void setUnBand(String openid, Integer type);

    VxUser findByPid(Integer pid);

    void  deleteById(Integer id);
}



