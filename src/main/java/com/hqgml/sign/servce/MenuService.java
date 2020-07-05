package com.hqgml.sign.servce;

import com.hqgml.sign.pojo.Menu;

import java.util.List;

/**
 * @author Devil
 * @date 2020/1/5 16:28
 */
public interface MenuService {

    /**
     * @return 菜单信息
     */
    List<Menu> findMenu(Integer type);


    /**
     * 删除菜单
     * @param ids
     */
    void deleteMenu(Integer[] ids);

    /**
     * 更新菜单
     * @param menu
     * @param id
     */
    void updateMenu(Menu menu, Integer id);


    /**
     * 添加菜单
     * @param menu
     */
    void  addMenu(Menu menu);
}



