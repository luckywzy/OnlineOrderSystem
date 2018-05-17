package com.sust.dao;

import com.sust.model.TEnterInfoForDispatch;
import com.sust.model.TEnterInfoForDispatchExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TEnterInfoForDispatchMapper {
    int countByExample(TEnterInfoForDispatchExample example);

    int deleteByExample(TEnterInfoForDispatchExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TEnterInfoForDispatch record);

    int insertSelective(TEnterInfoForDispatch record);

    List<TEnterInfoForDispatch> selectByExample(TEnterInfoForDispatchExample example);

    TEnterInfoForDispatch selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TEnterInfoForDispatch record, @Param("example") TEnterInfoForDispatchExample example);

    int updateByExample(@Param("record") TEnterInfoForDispatch record, @Param("example") TEnterInfoForDispatchExample example);

    int updateByPrimaryKeySelective(TEnterInfoForDispatch record);

    int updateByPrimaryKey(TEnterInfoForDispatch record);
}