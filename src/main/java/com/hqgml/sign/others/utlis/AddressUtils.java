package com.hqgml.sign.others.utlis;

import cn.hutool.http.HttpUtil;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.hqgml.sign.others.exception.ExceptionEnums;
import com.hqgml.sign.others.exception.XxException;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Devil
 * @date 2020/1/10 1:15
 */
@SuppressWarnings("all")
@Slf4j
public class AddressUtils {

    static final String AK = "3rGQd0yzSDSm2SAYiA38mgCmBglpBMUY";
     static  final String tenAK="N4NBZ-5IFWK-NH7JH-AK7LS-77W77-LMBVI";

    public static String GetAddress(HttpServletRequest request) {

        String ip_json = null;
        //透过代理获取ip地址
        String ipAddress = getIp(request);
        //如果是本机地址，那么就为空实现,空的话 那么百度会默认使用访问地址
        if ("0:0:0:0:0:0:0:1".equals(ipAddress) || "127.0.0.1".equals(ipAddress)) {
            ipAddress = "";
        }
        try {
            //将ip地址发送至百度地图接口获取json
            ip_json = HttpUtil.get("http://api.map.baidu.com/location/ip?ip=" + ipAddress + "&ak=" + AK);
        } catch (Exception e) {
            return "获取失败";
        }
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


    /**
     * 地点监所
     *
     * @return
     */

    public static String getCoordinate(String query, String region, HttpServletRequest request) {
        String response = "";

        /**
         * 区域数据召回限制，为true时，仅召回region对应区域内数据。
         */
        Boolean city_limit = false;
        String output = "json";
        String url = "http://api.map.baidu.com/place/v2/suggestion";

        if (StringUtils.equals(region, "") || region == null) {
            try {
                region = GetAddress(request);
            } catch (Exception e) {
                region = "北京";
            }
        }


        Map parm = new HashMap();
        parm.put("query", query);
        parm.put("region", region);
        parm.put("output", output);
        parm.put("ak", AK);


        try {
            response = HttpUtil.get(url, parm);
        } catch (Exception e) {
            log.error("地点检索出现问题");
            throw new XxException(ExceptionEnums.ADDRESS_ERROR);
        }
        return response;

    }

    //gps转换为百度坐标
    public static Map<String,String> Transform(String gpslocation) {
//        gpslocation为经度在前，纬度在后
        String url = "http://api.map.baidu.com/geoconv/v1/";
        Map parm = new HashMap();
        parm.put("coords", gpslocation);
        parm.put("from", "1");
        parm.put("to", "5");
        parm.put("ak", AK);
        try {
            String response = HttpUtil.get(url, parm);
            System.out.println(response);
            JSONObject jsonObject = JSON.parseObject(response);
            if (jsonObject.getInteger("status")==0){
                Map result = (Map) jsonObject.getJSONArray("result").get(0);
                return result;
            }else {
                log.error("地点检索出现问题");
                throw new XxException(ExceptionEnums.ADDRESS_ERROR);
            }
        } catch (Exception e) {
            e.printStackTrace();
            log.error("地点检索出现问题");
            throw new XxException(ExceptionEnums.ADDRESS_ERROR);
        }
    }


    //百度坐标转换腾讯
    public static Map<String,String> BaiduTransformTen(String gpslocation) {
        String url = "https://apis.map.qq.com/ws/coord/v1/translate";
        Map parm = new HashMap();
        parm.put("locations", gpslocation);
        parm.put("type", "3");
        parm.put("key", tenAK);
        try {
            String response = HttpUtil.get(url, parm);
            System.out.println(response);
            JSONObject jsonObject = JSON.parseObject(response);
              //todo 未完成不需要了
            return  null;

        } catch (Exception e) {
            e.printStackTrace();
            log.error("地点检索出现问题");
            throw new XxException(ExceptionEnums.ADDRESS_ERROR);
        }
    }



}
