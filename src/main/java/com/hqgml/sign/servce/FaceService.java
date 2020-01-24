package com.hqgml.sign.servce;

import com.tencentcloudapi.common.exception.TencentCloudSDKException;

import java.util.Map;

/**
 * @author Devil
 * @date 2020/1/25 1:41
 */
public interface FaceService {

     Map<String, Object> face(String img, String  mid) throws TencentCloudSDKException;
}
