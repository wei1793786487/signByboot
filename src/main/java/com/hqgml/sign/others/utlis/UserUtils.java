package com.hqgml.sign.others.utlis;

import com.hqgml.sign.others.jwt.JwtUtils;
import com.hqgml.sign.others.pojo.JwtProperties;
import com.hqgml.sign.others.pojo.Payload;
import com.hqgml.sign.pojo.Role;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.pojo.VxUser;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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
        if (request.getRequestURI().contains("login")){
            return null;
        }
        String token = header.replaceAll(jwtProperties.getPreToken(), "");
        Payload<SysUser> user = JwtUtils.getInfoFromToken(token, jwtProperties.getPublicKey(), SysUser.class);
        return user.getUserInfo();
    }

    public static VxUser getVxUserByToken(HttpServletRequest request){
        //获取请求头
        String header = request.getHeader(jwtProperties.getVxtokenName());
        if (request.getRequestURI().contains("login")){
            return null;
        }
        String token = header.replaceAll(jwtProperties.getPrevxToken(), "");
        Payload<VxUser> info = JwtUtils.getInfoFromToken(token, jwtProperties.getPublicKey(), VxUser.class);
        return info.getUserInfo();
    }

    public static Boolean isAdmin(List<Role> roles){
        if (roles.size()==0){
            return  false;
        }
        boolean isAdmin=false;
        for (Role role : roles) {
            if (StringUtils.containsIgnoreCase(role.getRoleName(),"ADMIN")){
                isAdmin=true;
            }
        }
        return isAdmin;
    }


}
