package com.hqgml.sign.servce;

import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import org.springframework.web.multipart.MultipartFile;

/**
 * @author Devil
 * @date 2020/1/11 17:40
 */
public interface UploadService {

    /**
     * 文件上传
     * @param file
     * @return
     */
     void uploadPersion(MultipartFile[] file) throws TencentCloudSDKException;
}
