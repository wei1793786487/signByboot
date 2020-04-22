package com.hqgml.sign.mapper;
import java.util.List;

import com.hqgml.sign.pojo.Menu;
import org.apache.ibatis.annotations.Param;import tk.mybatis.mapper.common.Mapper;

/**
 * @author Devil
 * @date 2020/4/22 8:41
 */
public interface MenuMapper  {
   List<Menu> selectAll();

  Menu selectById(@Param("id")Integer id);


}