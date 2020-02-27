package com.hqgml.sign.servce;

import com.hqgml.sign.pojo.Menu;
import org.springframework.stereotype.Service;

/**
 * @author Devil
 * @date 2020/1/5 16:28
 */
public interface MenuService {

    /**
     * 根据用户角色查找菜单
     * @param username
     * @return
     */
     Menu findMenuByRolename(String username);


}

