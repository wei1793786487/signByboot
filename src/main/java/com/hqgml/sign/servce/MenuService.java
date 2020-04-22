package com.hqgml.sign.servce;

import com.hqgml.sign.pojo.Menu;
import org.springframework.stereotype.Service;

/**
 * @author Devil
 * @date 2020/1/5 16:28
 */
public interface MenuService {

    /**
     * @return 菜单信息
     */
    Menu findMenu();


}


