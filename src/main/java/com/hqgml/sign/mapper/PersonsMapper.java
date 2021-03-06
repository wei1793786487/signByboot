package com.hqgml.sign.mapper;

import com.hqgml.sign.pojo.Persons;import org.apache.ibatis.annotations.Param;import java.util.List;

public interface PersonsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Persons record);

    int insertSelective(Persons record);

    Persons selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Persons record);

    int updateByPrimaryKey(Persons record);

    int deleteByUuid(@Param("uuid") String uuid);

    Persons selectOneByPersonName(@Param("personName") String personName);

    List<Persons> findAllByAddId(@Param("addId") Integer addId, @Param("personName") String personName);

    int deleteById(@Param("id") Integer id);

    Persons selectById(@Param("id") Integer id);

    List<Persons> selectByPersonName(@Param("personName") String personName);

    Persons selectByUrl(@Param("url") String url);

    /**
     * 查询签到情况
     *
     * @param mid
     * @param personName
     * @param isCheck
     * @return
     */

    List<Persons> findCheckPerson(@Param("mid") Integer mid, @Param("personName") String personName, @Param("isCheck") Integer isCheck);

    /**
     * 查询属于某个会议的所以人员信息
     *
     * @param mid
     * @return
     */

    List<Persons> selectBelongAllByMid(@Param("mid") Integer mid);

    /**
     * 根据uuid查询单个
     *
     * @param uuid
     * @return
     */
    Persons selectOneByUuid(@Param("uuid") String uuid);

    /**
     * 查询总数量
     *
     * @return
     */
    Integer count(Integer add_id);

    /**
     * 查询属于这个会议的人
     *
     * @param mid
     * @return
     */
    List<Persons> findBelong(@Param("mid") String mid, @Param("addId") String addId);

    /**
     * 查询不属于这个会议的人
     *
     * @param mid
     * @return
     */
    List<Persons> findNotBelong(@Param("mid") String mid, @Param("addId") String addId);

    Persons selectAllByMid(@Param("id") Integer id);

    int romovePerson(@Param("ids") Integer[] ids, @Param("mid") Integer mid);

    List<Persons> findAll(@Param("personName") String personName);


}