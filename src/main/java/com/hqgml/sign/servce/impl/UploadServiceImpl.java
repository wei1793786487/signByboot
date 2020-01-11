package com.hqgml.sign.servce.impl;

import cn.hutool.core.io.FileUtil;
import com.github.tobato.fastdfs.domain.fdfs.StorePath;
import com.github.tobato.fastdfs.domain.fdfs.ThumbImageConfig;
import com.github.tobato.fastdfs.service.FastFileStorageClient;
import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.servce.UploadService;
import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.XxException;
import com.hqgml.sign.utlis.result.FileUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * @author Devil
 * @date 2020/1/11 17:40
 */
@Service
@Slf4j
public class UploadServiceImpl implements UploadService {

    @Autowired
    private FastFileStorageClient storageClient;

    @Autowired
    private ThumbImageConfig thumbImageConfig;


    private final static List<String> ALLOWS = Arrays.asList("jpg", "png", "zip", "xls", "xlsx");
    private Boolean isAllow = false;

    @Override
    public String uploadPersion(MultipartFile file) {
        //大小
        try {
            if (file.getSize() == 0) {
                throw new XxException(ExceptionEnums.FIlE_IS_NULL);
            }
            String filename = file.getOriginalFilename();
            //空白名
            if (StringUtils.isBlank(filename)) {
                throw new XxException(ExceptionEnums.FIlENAME_IS_NULL);
            }
            //后缀是否允许
            String suffix = FileUtils.suffix(file.getOriginalFilename());
            for (String allow : ALLOWS) {
                if (StringUtils.contains(suffix, allow)) {
                    isAllow = true;
                }
            }
            if (!isAllow) {
                throw new XxException(ExceptionEnums.FIlTYPE_IS_ALLOW);
            }

            // 上传并且生成缩略图
            StorePath storePath = this.storageClient.uploadImageAndCrtThumbImage(
                    file.getInputStream(), file.getSize(), suffix, null);
//            StorePath storePath = storageClient.uploadFile(file.getInputStream(), file.getSize(), suffix, null);

            String path = thumbImageConfig.getThumbImagePath(storePath.getFullPath());
            try {
                Thread.sleep(2000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            log.info("文件上传的路径是"+path);
            return "http://www.hqgml.com/"+path;
        } catch (IOException e) {
            log.error("文件上传异常",e);
            throw new XxException(ExceptionEnums.SERVER_ERROR);
        }
    }
}
