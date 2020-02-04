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
   private Map<String,Double> location;
   private String uid;
   private String province;
   private String city;
   private String district;
}
