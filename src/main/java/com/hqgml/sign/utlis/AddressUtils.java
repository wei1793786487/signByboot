package com.hqgml.sign.utlis;

import cn.hutool.http.HttpUtil;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.hqgml.sign.config.KeyProperties;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * @author Devil
 * @date 2020/1/10 1:15
 */
@SuppressWarnings("all")
@Slf4j
public class AddressUtils {

    public static String GetAddress(HttpServletRequest request) {
        String ak = "3rGQd0yzSDSm2SAYiA38mgCmBglpBMUY";
        String ip_json = null;
        //透过代理获取ip地址
        String ipAddress = getIp(request);
        //如果是本机地址，那么就为空实现,空的话 那么百度会默认使用访问地址
        if ("0:0:0:0:0:0:0:1".equals(ipAddress) || "127.0.0.1".equals(ipAddress)) {
            ipAddress = "";
        }
        //将ip地址发送至百度地图接口获取json
        ip_json = HttpUtil.get("http://api.map.baidu.com/location/ip?ip=" + ipAddress + "&ak=" + ak);
        //解析json获取物理地址
        if (ip_json != null) {
            JSONObject city = JSON.parseObject(ip_json);
            String address = city.getJSONObject("content").getString("address");
            return address;
        } else {
            return null;
        }

    }

    /**
     * 获取请求主机IP地址,如果通过代理进来，则透过防火墙获取真实IP地址;
     *
     * @param request
     * @return
     * @throws IOException
     */
    public final static String getIp(HttpServletRequest request) {
        String ip = request.getHeader("X-Forwarded-For");
        if (StringUtils.isBlank(ip) || "unknown".equalsIgnoreCase(ip)) {
            if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("Proxy-Client-IP");
            }
            if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("WL-Proxy-Client-IP");
            }
            if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("HTTP_CLIENT_IP");
            }
            if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getHeader("HTTP_X_FORWARDED_FOR");
            }
            if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
                ip = request.getRemoteAddr();
            }
        } else if (ip.length() > 15) {
            String[] ips = ip.split(",");
            for (int index = 0; index < ips.length; index++) {
                String strIp = (String) ips[index];
                if (!("unknown".equalsIgnoreCase(strIp))) {
                    ip = strIp;
                    break;
                }
            }
        }
        if (log.isInfoEnabled()) {
            log.info("request ip:{}", ip);
        }
        return ip;
    }

}
