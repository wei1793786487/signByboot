package com.hqgml.sign.mapper;

import com.hqgml.sign.pojo.Menu;
import org.apache.ibatis.annotations.Param;import tk.mybatis.mapper.common.Mapper;import java.util.List;

/**
 * @author Devil
 * @date 2020/4/22 17:28
 */
public interface MenuMapper extends Mapper<Menu> {
    List<Menu> selectAll();

    Menu selectById(@Param("id") Integer id);

    int deleteById(@Param("id")Integer id);


}