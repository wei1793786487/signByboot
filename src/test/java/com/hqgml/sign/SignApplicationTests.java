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






}
