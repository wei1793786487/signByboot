package com.hqgml.sign.others.utlis;

import com.github.pagehelper.PageInfo;
import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.pojo.Todos;
import org.apache.poi.ss.formula.functions.T;

import javax.xml.crypto.Data;
import java.util.List;

/**
 * @author Devil
 * @date 2020/4/28 0:29
 */
public class FactoryUtlis {

    public static<T> MyPageInfo<T> pageInfoFactory(List<T> data){
        PageInfo<T> brandPageInfo = new PageInfo<T>(data);
        MyPageInfo<T> myPageInfo=new MyPageInfo<T>();
        myPageInfo.setCount(brandPageInfo.getTotal());
        myPageInfo.setData(data);
        return myPageInfo;
    }
}
