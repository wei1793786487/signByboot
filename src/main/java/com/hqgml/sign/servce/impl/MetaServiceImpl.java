package com.hqgml.sign.servce.impl;

import com.hqgml.sign.others.exception.ExceptionEnums;
import com.hqgml.sign.others.exception.XxException;
import com.hqgml.sign.pojo.Meta;
import org.aspectj.bridge.MessageWriter;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.hqgml.sign.mapper.MetaMapper;
import com.hqgml.sign.servce.MetaService;

import java.nio.channels.NonWritableChannelException;
import java.util.List;

/**
*@author Devil
*@date  2020/4/22 8:41
*/
@Service
public class MetaServiceImpl implements MetaService{

    @Resource
    private MetaMapper metaMapper;

    @Override
    public List<Meta> findMeta() {
        List<Meta> metas = metaMapper.selectAll();
        if (metas.size()==0){
            throw new XxException(ExceptionEnums.META_NOT_FIND);
        }
        return metas;
    }

    @Override
    public void deleteMeta(int id) {
        int i = metaMapper.deleteById(id);
        if (i!=1){
            throw new XxException(ExceptionEnums.DELETE_ERROR);
        }
    }

    @Override
    public void addMata(Meta meta) {
        int i = metaMapper.insertSelective(meta);
        if (i!=1){
            throw new XxException(ExceptionEnums.META_ADD_ERROR);
        }
    }


}
