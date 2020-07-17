package com.hqgml.sign.controller;

import com.hqgml.sign.others.pojo.Common;
import com.hqgml.sign.pojo.Meeting;
import com.hqgml.sign.servce.FaceService;
import com.hqgml.sign.servce.MeetingService;
import com.hqgml.sign.others.utlis.AddressUtils;
import com.hqgml.sign.others.utlis.Distance;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * @author Devil
 * @date 2020/1/25 1:20
 */
@RequestMapping("face")
@RestController
@Api(tags = "人员识别接口")

public class FaceController {


    @Autowired
    private FaceService faceService;

    @Autowired
    private MeetingService meetingService;
    /**
     * 人脸搜索
     * @param mid 会议的id
     * @param imgStr  人脸的base64编码
     *
     */
    @PostMapping("search")
    @ApiOperation(value = "查询签到情况")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "mid",value = "要签到的会议的id"),
            @ApiImplicitParam(name = "imgStr",value = "人脸的base64编码"),
            @ApiImplicitParam(name = "lat",value = "签到的纬度,请传入gps的纬度"),
            @ApiImplicitParam(name = "long",value = "签到的经度,请传入gps的纬度")

    })
    public ResponseEntity<Common> face(
            @RequestParam("mid") String mid,
            @RequestParam("imgStr") String imgStr,
            @RequestParam("lat") String latitude,
            @RequestParam("long") String longitude
    ) throws TencentCloudSDKException {
        //看看是不是超过了100米
        double source= 100d;
        Meeting meeting = meetingService.selectById(Integer.parseInt(mid));
        //获取格式转换的所需要的坐标
        String parm=longitude+","+latitude;
        Map<String, String> transform = AddressUtils.Transform(parm);
        Double lat = meeting.getLat();
        Double lng = meeting.getLng();
        Object y = transform.get("y");
        Object x = transform.get("x");
        double lng2 = Double.parseDouble(x.toString());
        double lat2 = Double.parseDouble(y.toString());

        double distance = Distance.getDistance(lng, lat,lng2 ,lat2);

         if (distance>source){
             return ResponseEntity.ok(new Common(400,"与签到地点相差"+distance+"米,100米之内可签到"));
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
