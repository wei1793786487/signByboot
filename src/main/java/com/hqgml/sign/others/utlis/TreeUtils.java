package com.hqgml.sign.others.utlis;

import com.hqgml.sign.pojo.Menu;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Devil
 * @date 2020/4/22 10:24
 * 将数据转换为数型结构
 */
public class TreeUtils {

    public static List<Menu> toTree(List<Menu> treeList, Integer pid) {
        List<Menu> retList = new ArrayList<Menu>();
        for (Menu parent : treeList) {
            if (pid.equals(parent.getParent())) {
                retList.add(findChildren(parent,treeList));
            }
        }
        for (Menu menu : retList) {
            //如果这个哥们是最上级，并且他的子类不是空的，那么设置他redirect的子类的路径
            if (menu.getParent().equals(0)){
                Menu children = menu.getChildren();
                if (ObjectUtils.isNotEmpty(children)){
                    menu.setRedirect(children.getPath());
                }
            }
        }
        return retList;
    }

    private static Menu findChildren(Menu parent, List<Menu> treeList) {
        for (Menu menu : treeList) {
            if (parent.getId().equals(menu.getParent())) {
                if (parent.getParent() == 0) {
                    parent.setChildren(null);
                }
                parent.setChildren(findChildren(menu, treeList));
            }
        }
        return parent;
    }

}
