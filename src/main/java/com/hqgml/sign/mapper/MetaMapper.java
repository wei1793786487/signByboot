package com.hqgml.sign.mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

import com.hqgml.sign.pojo.Meta;
import tk.mybatis.mapper.common.Mapper;

/**
*@author Devil
*@date  2020/4/22 8:41
*/
public interface MetaMapper {
    List<Meta> selectAll();

    Meta selectById(@Param("id")Integer id);

    int deleteById(@Param("id")Integer id);

    int insertSelective(Meta meta);

}