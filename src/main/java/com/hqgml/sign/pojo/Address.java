package com.hqgml.sign.pojo;

import lombok.Data;

import java.rmi.server.UID;
import java.util.Map;

/**
 * @author Devil
 * @date 2020/2/4 19:01
 * 百度云的地点对象
 */
@Data
public class Address {
    private String name;
    private Map<String, Double> location;
    private String uid;
    private String value;
    private String province;
    private String city;
    private String district;

    private String address;

    public String getAddress() {
        if (province.equals(city)) {
            return city + " " + district ;
        } else {
            return province + " " + city + " " + district;
        }
    }

    public String getValue() {
        //这里是因为搜索插件需要一个value作为唯一标识
        return uid;
    }
}
