package com.hqgml.sign;


import com.github.qcloudsms.SmsSingleSenderResult;
import com.github.tobato.fastdfs.domain.fdfs.StorePath;
import com.github.tobato.fastdfs.domain.fdfs.ThumbImageConfig;
import com.github.tobato.fastdfs.service.FastFileStorageClient;
import com.hqgml.sign.controller.LogController;
import com.hqgml.sign.mapper.PersonsMapper;
import com.hqgml.sign.config.MsgProperties;
import com.hqgml.sign.servce.MsgServices;
import com.hqgml.sign.utlis.IdWorker;
import com.hqgml.sign.utlis.MsgUtils;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

@SpringBootTest
@EnableConfigurationProperties(MsgProperties.class)
class SignApplicationTests {


    @Autowired
    private PersonsMapper personsMapper;
    @Autowired
    private FastFileStorageClient storageClient;


    @Autowired
    private ThumbImageConfig thumbImageConfig;


    @Autowired
    private MsgServices msgServices;

    @Autowired
    MsgUtils msgUtils;

    @Autowired
    IdWorker idWorker;

    @Autowired
    private LogController logController;
    @Test
    public void testUpload() throws FileNotFoundException {
        // 要上传的文件
        File file = new File("F:\\360MoveData\\Users\\Administrator\\Pictures\\picturen\\logo.jpg");
        // 上传并保存图片，参数：1-上传的文件流 2-文件的大小 3-文件的后缀 4-可以不管他
        StorePath storePath = this.storageClient.uploadFile(
                new FileInputStream(file), file.length(), "jpg", null);
        // 带分组的路径
        System.out.println(storePath.getFullPath());
        // 不带分组的路径
        System.out.println(storePath.getPath());
    }
    @Test
    public void testUploadAndCreateThumb() throws FileNotFoundException {
        File file = new File("F:\\360MoveData\\Users\\Administrator\\Pictures\\picturen\\logo.jpg");
        // 上传并且生成缩略图
        StorePath storePath = this.storageClient.uploadImageAndCrtThumbImage(
                new FileInputStream(file), file.length(), "png", null);
        // 带分组的路径
        System.out.println(storePath.getFullPath());
        // 不带分组的路径
        System.out.println(storePath.getPath());
        // 获取缩略图路径
        String path = thumbImageConfig.getThumbImagePath(storePath.getPath());
        System.out.println(path);
    }
    @Test
    public void demo(){
        String string="abcd123456中文_$,@";
        System.out.println(string.replaceAll("[^\\u4e00-\\u9fa5]", ""));
    }


    @Test

    public void de1mo(){
        String[] parm={"ada","adda"};
        SmsSingleSenderResult smsSingleSenderResult = msgUtils.sendOneNotice("15762323410", parm);
        System.out.println(smsSingleSenderResult.result);
    }

    @Test
    void  demoa(){
        Long l = idWorker.nextId();
        System.out.println(idWorker.nextId());
    }



}
