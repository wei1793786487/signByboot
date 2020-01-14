package com.hqgml.sign.mapper;

import com.hqgml.sign.pojo.Persons;
import org.apache.ibatis.annotations.Param;import tk.mybatis.mapper.common.Mapper;import java.util.List;

/**
 * @author Devil
 * @date 2020/1/14 17:09
 */
public interface PersonsMapper extends Mapper<Persons> {
    int deleteByUuid(@Param("uuid") String uuid);

    Persons selectOneByPersonName(@Param("personName") String personName);

    List<Persons> findAllByAddId(@Param("addId") Integer addId,@Param("personName") String personName);

    int updatePersonNameById(@Param("updatedPersonName")String updatedPersonName,@Param("id")Integer id);

    int deleteById(@Param("id")Integer id);

     Persons selectAllById(@Param("id")Integer id);







}