package com.hqgml.sign.mapper;

import com.hqgml.sign.pojo.Persons;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;import java.util.List;

/**
 * @author Devil
 * @date 2020/1/16 23:08
 */
public interface PersonsMapper extends Mapper<Persons> {
    int deleteByUuid(@Param("uuid") String uuid);

    Persons selectOneByPersonName(@Param("personName") String personName);

    List<Persons> findAllByAddId(@Param("addId") Integer addId, @Param("personName") String personName);

    int deleteById(@Param("id") Integer id);

    Persons selectAllById(@Param("id") Integer id);

    List<Persons> selectByPersonName(@Param("personName")String personName);

    /**
     * 查询签到情况
     * @param mid
     * @param personName
     * @return
     */

    List<Persons> findCheckPerson(@Param("mid") Integer mid,@Param("personName") String personName);

}