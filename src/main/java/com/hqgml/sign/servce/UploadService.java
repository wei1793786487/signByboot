package com.hqgml.sign.servce;

import com.hqgml.sign.pojo.VxUser;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

/**
 * @author Devil
 * @date 2020/1/11 17:40
 */
public interface UploadService {

    /**
     * 文件人员上传
     * @param file
     * @param request
     */
     String uploadPersion(MultipartFile file, HttpServletRequest request) throws TencentCloudSDKException;

    /**
     * 上传会议人员
     * @param file
     */
    List<String> uploadPersionMeeting(MultipartFile file);

    /**
     * 联系方式的上传
     * @param file
     * @return
     */
    List<String> uploadPhone(MultipartFile file);




    /**
     * 上传人脸
     * @param
     * @return
     */
    void uploadFace(MultipartFile files, VxUser user) throws IOException, TencentCloudSDKException, InterruptedException;
}
