package com.hqgml.sign.mapper;

import com.hqgml.sign.pojo.Menu;
import org.apache.ibatis.annotations.Param;import tk.mybatis.mapper.common.Mapper;import java.util.List;

/**
 * @author Devil
 * @date 2020/1/5 16:43
 */
public interface MenuMapper extends Mapper<Menu> {
    Menu findOneByRoleName(@Param("roleName")String roleName);

    int updateMenuById(@Param("updatedMenu") String updatedMenu, @Param("id") Integer id);
}