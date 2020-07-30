package com.hqgml.sign.others.utlis;

import com.hqgml.sign.pojo.Menu;

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
                List<Menu> children = menu.getChildren();
                if (children.size()!=0){
                    menu.setRedirect(children.get(0).getPath());
                }
            }
        }

        return retList;
    }

    private static Menu findChildren(Menu parent, List<Menu> treeList) {
        List<Menu> children = new ArrayList<>();
        for (Menu menu : treeList) {
            if (parent.getId().equals(menu.getParent())) {
                if (parent.getParent() == 0) {
                    parent.setChildren(null);
                }
                children.add(findChildren(menu, treeList));
            }
        }
        parent.setChildren(children);
        return parent;
    }

   public static List<Menu> setParentName(List<Menu> parents){
        List<Menu> list=new ArrayList<>();
        for (Menu parent : parents) {
            if ("0".equals(parent.getParent())) {
                list.add(parent);
            }else {
                list.add(getParentId(parents, parent));
            }
        }
       return list;
   }

    private static Menu getParentId(List<Menu> parents,Menu menu){

        for (Menu parent : parents) {
           if (menu.getParent().equals(parent.getId())){
            menu.setParentName(parent.getMeta().getTitle());
           }
        }
        return menu;
    }
}
