package com.hqgml.sign.utlis;

import cn.hutool.http.HttpUtil;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.XxException;
import com.sun.org.apache.bcel.internal.generic.IF_ACMPEQ;
import com.vividsolutions.jts.geom.Coordinate;
import com.vividsolutions.jts.geom.GeometryFactory;
import com.vividsolutions.jts.geom.LinearRing;
import com.vividsolutions.jts.geom.Polygon;
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

    static  final  String AK = "3rGQd0yzSDSm2SAYiA38mgCmBglpBMUY";



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

    public static String getCoordinate(String query, String region,HttpServletRequest request) {
        String response ="";

        /**
         * 区域数据召回限制，为true时，仅召回region对应区域内数据。
         */
        Boolean city_limit = false;
        String output = "json";
        String url = "http://api.map.baidu.com/place/v2/suggestion";

        if (StringUtils.equals(region,"")||region==null){
            try {
                region= GetAddress(request);
            } catch (Exception e) {
                region="北京";
            }
        }


        Map parm = new HashMap();
        parm.put("query", query);
        parm.put("region", region);
        parm.put("output", output);
        parm.put("ak", AK);




        try {
         response= HttpUtil.get(url, parm);
        } catch (Exception e) {
            log.error("地点检索出现问题");
           throw new XxException(ExceptionEnums.ADDRESS_ERROR);
        }
        return response;

    }


    private static Boolean polygonJudgment(String xys, Double lng, Double lat) {
        String[] strings = xys.split(",");
        Coordinate[] coordinates = new Coordinate[strings.length / 2];
        try {
            for (int i = 0; i < strings.length; i += 2) {
                coordinates[i / 2] = new Coordinate(Double.parseDouble(strings[i]), Double.parseDouble(strings[i + 1]));
            }
            GeometryFactory factory = new GeometryFactory();
            if (coordinates.length > 3) {
                LinearRing shell = factory.createLinearRing(coordinates);
                Polygon polygon = factory.createPolygon(shell, null);
                if (polygon.contains(factory.createPoint(new Coordinate(lng, lat)))) {
                    return true;
                }
            }
        } catch (Exception ignored) {
            return false;
        }
        return false;
    }


}
