package com.hqgml.sign.servce;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;

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
    public String uploadPersion(MultipartFile file);
}
