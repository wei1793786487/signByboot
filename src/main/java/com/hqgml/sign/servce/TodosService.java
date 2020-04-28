package com.hqgml.sign.servce;

import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.pojo.Todos;

/**
 * @author Devil
 * @date 2020/4/27 22:55
 */
public interface TodosService {


    MyPageInfo selectTodos(Integer page, Integer limit, SysUser user);

    void deleteTodo(Integer[] ids);

    void updateTodo(Todos todos,Integer id);

    void addTodo(Todos todos);
}
