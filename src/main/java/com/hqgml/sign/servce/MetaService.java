package com.hqgml.sign.servce;

import com.hqgml.sign.pojo.Meta;

import java.util.List;

/**
*@author Devil
*@date  2020/4/22 8:41
*/
public interface MetaService{


        List<Meta> findMeta();
        void deleteMeta(int id);
        void  addMata(Meta meta);

}
