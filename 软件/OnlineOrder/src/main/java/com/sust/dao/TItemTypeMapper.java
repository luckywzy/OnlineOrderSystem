package com.sust.dao;

import com.sust.model.TItemType;
import com.sust.model.TItemTypeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TItemTypeMapper {
    int countByExample(TItemTypeExample example);

    int deleteByExample(TItemTypeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TItemType record);

    int insertSelective(TItemType record);

    List<TItemType> selectByExample(TItemTypeExample example);

    TItemType selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TItemType record, @Param("example") TItemTypeExample example);

    int updateByExample(@Param("record") TItemType record, @Param("example") TItemTypeExample example);

    int updateByPrimaryKeySelective(TItemType record);

    int updateByPrimaryKey(TItemType record);
}