package com.hqgml.sign.others.utlis;

import com.qcloud.cos.COSClient;
import com.qcloud.cos.model.Bucket;
import com.qcloud.cos.model.ObjectMetadata;
import com.qcloud.cos.model.PutObjectRequest;
import com.qcloud.cos.model.PutObjectResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.*;
import java.net.URL;
import java.util.Date;
import java.util.List;

/**
 * @author Devil
 * @date 8/14/2020 12:57 AM
 */
@Component
public class COSUtils {

    @Autowired
    private   COSClient cosClient;

    public  List<Bucket>  getBuckets(){
       return cosClient.listBuckets();
    }

    public void addObject(String key,InputStream inputStream,Long size) throws FileNotFoundException {
        String bucketName = "faces-1259231187";
        ObjectMetadata objectMetadata =new ObjectMetadata();
        objectMetadata.setContentLength(size);
        PutObjectResult result = cosClient.putObject(bucketName, key, inputStream, objectMetadata);
        System.out.println(result.getETag());
        System.out.println(result.getDateStr());
        Date expiration = new Date(new Date().getTime() + 5 * 60 * 10000);
        URL url = cosClient.generatePresignedUrl(bucketName, key, expiration);
        System.out.println(url);
    }
}
