package com.hqgml.sign.controller;

import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.servce.UploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author Devil
 * @date 2020/1/11 13:10
 * 文件上传
 */
@RestController
@RequestMapping("upload")
public class UploadController {


    @Autowired
    private UploadService uploadService;


    @PostMapping("persion")
    public ResponseEntity<Common> uploadPersion(@RequestParam(value = "file") MultipartFile file) {
        uploadService.uploadPersion(file);
        Common common=new Common("上传成功");
        return ResponseEntity.ok(common);
    }
}
