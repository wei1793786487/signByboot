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


}



