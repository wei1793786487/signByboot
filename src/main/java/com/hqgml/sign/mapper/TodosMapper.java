package com.hqgml.sign.mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

import com.hqgml.sign.pojo.Todos;
import tk.mybatis.mapper.common.Mapper;

/**
*@author Devil
*@date  2020/4/27 22:55
*/
public interface TodosMapper{
    /**
     * 查询列表
     * @param uid 用户id
     * @return todo列表
     */
    List<Todos> selectAllByUid(@Param("uid")Integer uid);

    /**
     *
     * @param id 要删除的id
     * @return 删除的行
     */
    int deleteById(@Param("id")Integer id);

    /**
     * 根据id更新
     * @param updated
     * @param id
     * @return
     */
    int updateById(@Param("updated")Todos updated,@Param("id")Integer id);


    /**
     *
     * @param todos 要插入的
      *
     */
	int insertSelective(Todos todos);




}