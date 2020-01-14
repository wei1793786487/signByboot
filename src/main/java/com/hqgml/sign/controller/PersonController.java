package com.hqgml.sign.controller;

import com.hqgml.sign.pojo.Common;
import com.hqgml.sign.pojo.LayUi;
import com.hqgml.sign.pojo.Persons;
import com.hqgml.sign.servce.PersonsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author Devil
 * @date 2020/1/14 15:52
 */
@RestController
@RequestMapping("person")
public class PersonController {

    @Autowired
    private PersonsService personsService;

    @GetMapping
    public ResponseEntity<LayUi> findAllByUserNname() {

        List<Persons> persons = personsService.selectAllByusername(null);
        LayUi<Persons> layUi=new LayUi<>();
        layUi.setData(persons);
        return ResponseEntity.ok(layUi);
    }
}

