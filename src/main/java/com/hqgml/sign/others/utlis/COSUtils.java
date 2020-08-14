package com.hqgml.sign.others.utlis;

import com.qcloud.cos.COSClient;
import com.qcloud.cos.exception.CosClientException;
import com.qcloud.cos.model.Bucket;
import com.qcloud.cos.model.ObjectMetadata;
import com.qcloud.cos.model.PutObjectResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.io.InputStream;
import java.util.List;

/**
 * @author Devil
 * @date 8/14/2020 12:57 AM
 */
@Component
public class COSUtils {

    private static final Logger logger = LoggerFactory.getLogger(COSUtils.class);

    @Autowired
    private   COSClient cosClient;

    @Value("${tenlent.cos.bucketName}")
    private String bucketName;



    public  List<Bucket>  getBuckets(){
       return cosClient.listBuckets();
    }

    public Boolean addObject(String key,InputStream inputStream,Long size)  {
        ObjectMetadata objectMetadata =new ObjectMetadata();
        objectMetadata.setContentLength(size);
        try {
            PutObjectResult result = cosClient.putObject(bucketName, key, inputStream, objectMetadata);
            logger.info("请求参数{}",result.getETag());
            return true;
        } catch (CosClientException e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
            return false;
        }
    }

    public Boolean deleteObject(String key){
        try {
            cosClient.deleteObject(bucketName,key);
            return true;
        } catch (CosClientException e) {
            e.printStackTrace();
            return false;
        }

    }
}
