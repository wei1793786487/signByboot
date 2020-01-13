package com.hqgml.sign.mapper;
import org.apache.ibatis.annotations.Param;

import com.hqgml.sign.pojo.Persons;
import tk.mybatis.mapper.common.Mapper;

/**
 * @author Devil
 * @date 2020/1/13 11:09
 */
public interface PersonsMapper extends Mapper<Persons> {
    int deleteByUuid(@Param("uuid")String uuid);

    Persons selectOneByPersonName(@Param("personName")String personName);



}