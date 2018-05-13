package com.sust.dao;

import com.sust.model.TOrderAccess;
import com.sust.model.TOrderAccessExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TOrderAccessMapper {
    int countByExample(TOrderAccessExample example);

    int deleteByExample(TOrderAccessExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TOrderAccess record);

    int insertSelective(TOrderAccess record);

    List<TOrderAccess> selectByExample(TOrderAccessExample example);

    TOrderAccess selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TOrderAccess record, @Param("example") TOrderAccessExample example);

    int updateByExample(@Param("record") TOrderAccess record, @Param("example") TOrderAccessExample example);

    int updateByPrimaryKeySelective(TOrderAccess record);

    int updateByPrimaryKey(TOrderAccess record);
}