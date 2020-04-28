package com.hqgml.sign.servce.impl;

import com.github.pagehelper.PageHelper;
import com.hqgml.sign.others.exception.ExceptionEnums;
import com.hqgml.sign.others.exception.XxException;
import com.hqgml.sign.others.pojo.MyPageInfo;
import com.hqgml.sign.others.utlis.FactoryUtlis;
import com.hqgml.sign.pojo.SysUser;
import com.hqgml.sign.pojo.Todos;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.hqgml.sign.mapper.TodosMapper;
import com.hqgml.sign.servce.TodosService;

import java.util.List;

/**
*@author Devil
*@date  2020/4/27 22:55
*/
@Service
public class TodosServiceImpl implements TodosService{

    private static final Logger logger = LoggerFactory.getLogger(TodosService.class);
    @Resource
    private TodosMapper todosMapper;

    @Override
    public MyPageInfo selectTodos(Integer page, Integer limit, SysUser user) {

        PageHelper.startPage(page,limit);
        List<Todos> todos = todosMapper.selectAllByUid(user.getId());
        if (todos.size()==0){
            throw new XxException(ExceptionEnums.TPDO_NOT_FIND);
        }
        MyPageInfo<Object> info = FactoryUtlis.pageInfoFactory(todos);
        return info;
    }

    @Override
    public void deleteTodo(Integer[] ids) {
        for (Integer id : ids) {
            todosMapper.deleteById(id);
            logger.info("删除{}的TODO",id);
        }
    }

    @Override
    public void updateTodo(Todos todos,Integer id) {
        int update = todosMapper.updateById(todos, id);
        if (update!=1){
            throw new XxException(ExceptionEnums.UPDATE_ERROR);
        }
    }

    @Override
    public void addTodo(Todos todos) {
        int i = todosMapper.insertSelective(todos);
        if (i!=1){
            logger.error("添加失败{}",todos);
            throw new XxException(ExceptionEnums.ADD_TODO_ERROR);
        }
    }
}
