package com.hqgml.sign.utlis;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.hqgml.sign.pojo.Address;
import com.hqgml.sign.pojo.BaiduResult;

import java.util.List;
import java.util.Map;

public class Distance {

    //地球平均半径
    private static final double EARTH_RADIUS = 6378137;
    //把经纬度转为度（°）
    private static double rad(double d){
        return d * Math.PI / 180.0;
    }

    /**
     * 根据两点间经纬度坐标（double值），计算两点间距离，单位为米
     * @param lng1
     * @param lat1
     * @param lng2
     * @param lat2
     * @return
     */
    public static double getDistance(double lng1, double lat1, double lng2, double lat2){
        double radLat1 = rad(lat1);
        double radLat2 = rad(lat2);
        double a = radLat1 - radLat2;
        double b = rad(lng1) - rad(lng2);
        double s = 2 * Math.asin(
                Math.sqrt(
                        Math.pow(Math.sin(a/2),2)
                                + Math.cos(radLat1)*Math.cos(radLat2)*Math.pow(Math.sin(b/2),2)
                )
        );
        s = s * EARTH_RADIUS;
        s = Math.round(s * 10000) / 10000;
        return s;
    }


    /**
     * test
     * @param args
     */
    public static void main(String[] args){
//        double distance = getDistance(35.4614700000,119.5415800000,35.4609845500,119.5397687000);
//        System.out.println(distance);

//
        String coordinate = AddressUtils.getCoordinate("日照职业技术", "",null);
        System.out.println(coordinate);

    }

}