package com.hqgml.sign.controller;

import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.servce.FaceService;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import javax.annotation.Resource;
import java.util.Map;

/**
 * @author Devil
 * @date 2020/1/25 1:20
 */
@RequestMapping("face")
@RestController
public class FaceController {


    @Autowired
    private FaceService faceService;

    /**
     * 人脸搜索
     * @param mid
     * @param imgStr
     * @return
     * @throws TencentCloudSDKException
     */
    @PostMapping("search")
    public ResponseEntity<Common> face(@RequestParam("mid") String mid, @RequestParam("imgStr") String imgStr) throws TencentCloudSDKException {
        if (!StringUtils.equals(mid,"")&&!StringUtils.equals(imgStr,"")){
            Map<String, Object> face = faceService.face(imgStr, mid);
            String message = (String) face.get("message");
            return ResponseEntity.ok(new Common(message));
        }else {
            return ResponseEntity.ok(new Common("参数缺少"));
        }

    }
}
