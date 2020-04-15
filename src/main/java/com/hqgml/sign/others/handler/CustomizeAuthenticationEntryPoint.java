package com.hqgml.sign.others.handler;

import com.hqgml.sign.others.utlis.JsonWriteUtlis;
import com.hqgml.sign.others.annotation.ControllerLog;
import com.hqgml.sign.others.result.enums.ResultCode;
import com.hqgml.sign.others.result.pojo.JsonResult;
import com.hqgml.sign.others.result.utils.ResultTool;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Devil
 * @date 2020/1/5 20:38
 * 访问无权限用户
 */
@Component
public class CustomizeAuthenticationEntryPoint implements AuthenticationEntryPoint {

    @ControllerLog(describe = "访问非共享资源")
    @Override
    public void commence(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AuthenticationException e) throws IOException, ServletException {
        String message = e.getMessage();
        System.out.println(message);
        JsonResult result = ResultTool.fail(ResultCode.USER_NOT_LOGIN);
      JsonWriteUtlis.fail(httpServletRequest,httpServletResponse,result);
    }
}
