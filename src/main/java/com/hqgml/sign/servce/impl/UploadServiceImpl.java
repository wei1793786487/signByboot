package com.hqgml.sign.servce.impl;

import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import com.github.tobato.fastdfs.domain.fdfs.StorePath;
import com.github.tobato.fastdfs.service.FastFileStorageClient;
import com.hqgml.sign.pojo.Persons;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.servce.PersonsService;
import com.hqgml.sign.servce.SysUserService;
import com.hqgml.sign.servce.TenlentServices;
import com.hqgml.sign.servce.UploadService;
import com.hqgml.sign.utlis.exception.ExceptionEnums;
import com.hqgml.sign.utlis.exception.XxException;
import com.hqgml.sign.utlis.result.FileUtils;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author Devil
 * @date 2020/1/11 17:40
 * 文件上传
 */
@SuppressWarnings("all")
@Service
@Slf4j
public class UploadServiceImpl implements UploadService {

    @Autowired
    private FastFileStorageClient storageClient;

    @Autowired
    private PersonsService personsService;

    @Autowired
    private TenlentServices tenlentServices;

    @Autowired
    private SysUserService sysUserService;

    private final static List<String> ALLOWS = Arrays.asList("jpg", "png", "JPEG", "xls", "xlsx");
    private Boolean isAllow = false;

    @Override
    public void uploadPersion(MultipartFile[] file) throws TencentCloudSDKException {
        SysUser sysUser = sysUserService.findUserByUserName(null);
        List<Persons> personlist = new ArrayList<>();
        for (MultipartFile multipartFile : file) {
            //大小
            try {
                if (multipartFile.getSize() == 0) {
                    throw new XxException(ExceptionEnums.FIlE_IS_NULL);
                }
                String filename = multipartFile.getOriginalFilename();


                //空白名
                if (StringUtils.isBlank(filename)) {
                    throw new XxException(ExceptionEnums.FIlENAME_IS_NULL);
                }
                //后缀是否允许
                String suffix = FileUtils.suffix(multipartFile.getOriginalFilename());
                String personname = StrUtil.removeSuffixIgnoreCase(filename, suffix);

                if (filename.length() > 10) {
                    throw new XxException(ExceptionEnums.PERSON_NAME_IS_TOO_LONG);
                }

                for (String allow : ALLOWS) {
                    if (StringUtils.contains(suffix, allow)) {
                        isAllow = true;
                    }
                }
                if (!isAllow) {
                    throw new XxException(ExceptionEnums.FIlTYPE_IS_ALLOW);
                }
                if (StringUtils.equals(suffix, "zip")) {
                    //TODO 为zip的操作
                } else {
                    StorePath storePath = storageClient.uploadFile(multipartFile.getInputStream(), multipartFile.getSize(), suffix, null);
                    log.info("文件上传的路径是" + storePath.getFullPath());

                    String uuid = IdUtil.simpleUUID();
                    Persons persons = new Persons();
                    persons.setPersonName(personname);
                    persons.setUrl(storePath.getFullPath());
                    persons.setAddId(sysUser.getId());
                    persons.setUuid(uuid);
                    //创建人员
                    personsService.createPersion(persons);
                    personlist.add(persons);
                }
            } catch (IOException e) {
                log.error("文件上传异常", e);
                throw new XxException(ExceptionEnums.SERVER_ERROR);
            }

            try {
                //防止节点读取异常
                Thread.sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        try {
            //防止图片还没上传到服务器，腾讯云就开始下载文件了
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        //将数组的人脸添加进去
        for (Persons person : personlist) {
            try {
                tenlentServices.createPerson(sysUser.getId().toString(), person.getPersonName(), person.getUuid(), "http://www.hqgml.com/" + person.getUrl());
            } catch (TencentCloudSDKException e) {
                storageClient.deleteFile(person.getUrl());
                personsService.delectByuuid(person.getUuid());
                //这里抛出去是因为要丢给springmvc去处理异常；
                throw e;
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

    }


}

