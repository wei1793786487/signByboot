package com.hqgml.sign.others.utlis;

import com.hqgml.sign.others.jwt.JwtUtils;
import com.hqgml.sign.others.pojo.JwtProperties;
import com.hqgml.sign.others.pojo.Payload;
import com.hqgml.sign.pojo.SysUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Devil
 * @date 2020/4/28 0:07
 */
@Component
public class UserUtils {

    private  static JwtProperties jwtProperties;

    @Autowired
    public void setJwtProperties(JwtProperties jwtProperties) {
        UserUtils.jwtProperties = jwtProperties;
    }

    public static SysUser getUserByToken(HttpServletRequest request){
        //获取请求头
        String header = request.getHeader(jwtProperties.getTokenName());
        if ("login".contains(request.getRequestURI())){
            return null;
        }
        String token = header.replaceAll(jwtProperties.getPreToken(), "");
        Payload<SysUser> user = JwtUtils.getInfoFromToken(token, jwtProperties.getPublicKey(), SysUser.class);
        return user.getUserInfo();
    }
}
