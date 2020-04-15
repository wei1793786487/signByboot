package com.hqgml.sign.others.handler;

import com.hqgml.sign.others.utlis.JsonWriteUtlis;
import com.hqgml.sign.others.annotation.ControllerLog;
import com.hqgml.sign.others.result.enums.ResultCode;
import com.hqgml.sign.others.result.pojo.JsonResult;
import com.hqgml.sign.others.result.utils.ResultTool;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Devil
 * @date 2020/1/5 20:38
 * 权限拒绝
 */
@Component
public class CustomizeAccessDeniedHandler implements AccessDeniedHandler {

    @Override
    @ControllerLog(describe = "访问未经允许资源")

    public void handle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AccessDeniedException e) throws IOException, ServletException {
        httpServletResponse.setStatus(HttpServletResponse.SC_FORBIDDEN);
        JsonResult result = ResultTool.fail(ResultCode.NO_PERMISSION);
        JsonWriteUtlis.fail(httpServletRequest,httpServletResponse,result);
    }
}
