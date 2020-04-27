package com.hqgml.sign.others.utlis;

import com.github.pagehelper.PageInfo;
import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.pojo.Todos;
import org.apache.poi.ss.formula.functions.T;
import org.omg.CORBA.DATA_CONVERSION;

import javax.xml.crypto.Data;
import java.util.List;

/**
 * @author Devil
 * @date 2020/4/28 0:29
 */
public class FactoryUtlis {

    public static MyPageInfo<Object> pageInfoFactory(List data){
        PageInfo<Object> brandPageInfo = new PageInfo<Object>(data);
        MyPageInfo<Object> myPageInfo=new MyPageInfo<Object>();
        myPageInfo.setCount(brandPageInfo.getTotal());
        myPageInfo.setData(data);
        return myPageInfo;
    }
}
