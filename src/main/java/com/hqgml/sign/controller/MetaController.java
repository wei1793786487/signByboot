package com.hqgml.sign.controller;

import com.hqgml.sign.others.annotation.ControllerLog;
import com.hqgml.sign.others.pojo.Common;
import com.hqgml.sign.pojo.Meta;
import com.hqgml.sign.servce.MetaService;
import io.swagger.annotations.Api;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

/**
 * @author Devil
 * @date 2020/6/27 17:51
 */
@Slf4j
@Controller
@RequestMapping("meta")
@Api(tags = "meta界面,与菜单相关联")
public class MetaController {

    @Autowired
    private MetaService metaService;

    @GetMapping
    @ResponseBody
    public ResponseEntity<Common>findMeta(){
     List<Meta> metas=metaService.findMeta();
     return ResponseEntity.ok(new Common(metas));
    }

    @DeleteMapping()
    @ControllerLog(describe = "删除菜单信息")
    public ResponseEntity<Common<String>> deleteMenu(@RequestParam("id") Integer id) {
        metaService.deleteMeta(id);
        Common<String> common = new Common<>("删除成功");
        return ResponseEntity.ok(common);
    }


    @PostMapping
    public ResponseEntity<Common<String>> addMenu(@Valid Meta meta) {
        metaService.addMata(meta);
        Common<String> common = new Common<>("添加成功");
        return ResponseEntity.ok(common);
    }


}
