package com.hqgml.sign.servce;

import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * @author Devil
 * @date 2020/1/11 17:40
 */
public interface UploadService {

    /**
     * 文件人员上传
     * @param file
     */
     void uploadPersion(MultipartFile[] file) throws TencentCloudSDKException;

    /**
     * 上传会议人员
     * @param file
     */
    List<String> uploadPersionMeeting(MultipartFile file);
}
