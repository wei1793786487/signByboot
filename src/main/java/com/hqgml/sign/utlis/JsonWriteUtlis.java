package com.hqgml.sign.utlis;

import com.alibaba.fastjson.JSON;
import com.hqgml.sign.utlis.result.pojo.JsonResult;
import com.hqgml.sign.utlis.result.utils.ResultTool;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Devil
 * @date 2020/1/5 20:11
 * 快速写出result的方法
 */
public class JsonWriteUtlis {
    /**
     * 请求成功的方法
     * @param response
     * @throws IOException
     */
    public static void success(HttpServletResponse response) throws IOException {
        JsonResult result = ResultTool.success();
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(JSON.toJSONString(result));
    }
}
