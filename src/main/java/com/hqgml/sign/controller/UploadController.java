package com.hqgml.sign.controller;

import com.hqgml.sign.others.annotation.ControllerLog;
import com.hqgml.sign.others.pojo.Common;
import com.hqgml.sign.others.utlis.UserUtils;
import com.hqgml.sign.pojo.VxUser;
import com.hqgml.sign.servce.UploadService;
import com.tencentcloudapi.common.exception.TencentCloudSDKException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;


/**
 * @author Devil
 * @date 2020/1/11 13:10
 * 文件上传
 */
@RestController
@RequestMapping("upload")
@Api(tags = "上传相关接口")
public class UploadController {



    @Autowired
    private UploadService uploadService;


    /**
     * 批量上传人员
     *

     */
    @PostMapping("person")
    @ControllerLog(describe = "批量上传人员")
    @ApiOperation(value = "上传人员")
    @ApiImplicitParam(name = "file",value = "要上传的人脸",required = true,allowableValues = "jpg, png, jpeg")
    public ResponseEntity<Common> uploadPersion(@RequestParam(value = "file") MultipartFile files, HttpServletRequest request) throws Exception {
        //一次上传多个文件会导致返回结果中只包含最后一个id
        String url = uploadService.uploadPersion(files, request);
        Common common =new Common(url);
        return ResponseEntity.ok(common);

    }

    /**
     * 将人员添加进会议
     */
    @PostMapping("personMeeting")
    @ControllerLog(describe = "批量添加人员到会议")
    @ApiOperation(value = "将人员添加进会议")
    @ApiImplicitParam(name = "file",value = "要上传的文件",required = true,allowableValues = "xls, xlsx")
    public ResponseEntity<Common> uploadPersionMeeting(@RequestParam(value = "file") MultipartFile file )  {
        List<String> message = uploadService.uploadPersionMeeting(file);
        return ResponseEntity.ok(new Common(message));
    }

    /**
     * 批量添加手机号
     */
    @PostMapping("Phone")
    @ControllerLog(describe = "批量为人员添加手机号")
    @ApiOperation(value = "批量添加手机号")
    @ApiImplicitParam(name = "file",value = "要上传的文件",required = true,allowableValues = "xls, xlsx")
    public ResponseEntity<Common> uploadPhone(@RequestParam(value = "file") MultipartFile file )  {
        List<String> message = uploadService.uploadPhone(file);
        return ResponseEntity.ok(new Common(message));

    }




    /**
     * 上传人脸
     */
    @PostMapping("face")
    @ApiOperation(value = "上传的人脸")
    @ApiImplicitParam(name = "imgStr",value = "人脸的base64编码")
    public ResponseEntity<Common> uploadPhone(
            @RequestParam(value = "file") MultipartFile files,
            HttpServletRequest request
    ) throws IOException, TencentCloudSDKException, InterruptedException {
        VxUser user = UserUtils.getVxUserByToken(request);
         uploadService.uploadFace(files, user);
        return ResponseEntity.ok(new Common("上传成功"));
    }




}
