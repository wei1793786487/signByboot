package com.hqgml.sign.mapper;

import com.hqgml.sign.pojo.Meta;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

/**
 * @author Devil
 * @date 2020/4/22 9:12
 */
@SpringBootTest

public class meta {
    @Autowired
    private MetaMapper metaMapper;

    @Test
    void findAll(){
        List<Meta> metas = metaMapper.selectAll();
        System.out.println(metas);
    }

    @Test
    void findOne(){
        Meta meta = metaMapper.selectById(1);
        System.out.println(meta);
    }

}


