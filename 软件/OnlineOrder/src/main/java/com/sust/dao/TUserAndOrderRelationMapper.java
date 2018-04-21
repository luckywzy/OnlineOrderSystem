package com.sust.dao;

import com.sust.model.TUserAndOrderRelation;
import com.sust.model.TUserAndOrderRelationExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TUserAndOrderRelationMapper {
    int countByExample(TUserAndOrderRelationExample example);

    int deleteByExample(TUserAndOrderRelationExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TUserAndOrderRelation record);

    int insertSelective(TUserAndOrderRelation record);

    List<TUserAndOrderRelation> selectByExample(TUserAndOrderRelationExample example);

    TUserAndOrderRelation selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TUserAndOrderRelation record, @Param("example") TUserAndOrderRelationExample example);

    int updateByExample(@Param("record") TUserAndOrderRelation record, @Param("example") TUserAndOrderRelationExample example);

    int updateByPrimaryKeySelective(TUserAndOrderRelation record);

    int updateByPrimaryKey(TUserAndOrderRelation record);
}