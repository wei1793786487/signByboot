package com.hqgml.sign.controller;

import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.servce.FaceService;
import com.hqgml.sign.servce.MeetingService;
import com.hqgml.sign.utlis.AddressUtils;
import com.hqgml.sign.utlis.Distance;
import com.hqgml.sign.utlis.exception.ExceptionResult;
import com.hqgml.sign.utlis.exception.XxException;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.NativeWebRequest;
import sun.security.provider.MD2;

import javax.annotation.Resource;
import javax.persistence.Id;
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

    @Autowired
    private MeetingService meetingService;
    /**
     * 人脸搜索
     * @param mid
     * @param imgStr
     * @return
     * @throws TencentCloudSDKException
     */
    @PostMapping("search")
    public ResponseEntity<Common> face(
            @RequestParam("mid") String mid,
            @RequestParam("imgStr") String imgStr,
            @RequestParam("lat") String latitude,
            @RequestParam("long") String longitude
    ) throws TencentCloudSDKException {
        //看看是不是超过了500米
        Double source= 500d;

        Meeting meeting = meetingService.selectById(Integer.parseInt(mid));
        //获取格式转换的所需要的坐标
        String parm=latitude+","+longitude;
        Map<String, String> transform = AddressUtils.Transform(parm);
        Double lat = meeting.getLat();
        Double lng = meeting.getLng();
        Object y = transform.get("y");
        Object x = transform.get("x");
        double lng2 = Double.parseDouble(y.toString());
        double lat2 = Double.parseDouble(x.toString());

        double distance = Distance.getDistance(lng, lat,lng2 ,lat2);

         if (distance>source){
             return ResponseEntity.ok(new Common(400,"与签到地点相差"+distance+"米"));
         }

        if (!StringUtils.equals(mid,"")&&!StringUtils.equals(imgStr,"")){
            Map<String, Object> face = faceService.face(imgStr, mid);
            String message = (String) face.get("message");
            return ResponseEntity.ok(new Common(message));
        }else {
            return ResponseEntity.ok(new Common("参数缺少"));
        }

    }
}
