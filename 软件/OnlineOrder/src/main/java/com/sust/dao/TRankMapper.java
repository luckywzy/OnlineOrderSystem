package com.sust.dao;

import com.sust.model.TRank;
import com.sust.model.TRankExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TRankMapper {
    int countByExample(TRankExample example);

    int deleteByExample(TRankExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TRank record);

    int insertSelective(TRank record);

    List<TRank> selectByExample(TRankExample example);

    TRank selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TRank record, @Param("example") TRankExample example);

    int updateByExample(@Param("record") TRank record, @Param("example") TRankExample example);

    int updateByPrimaryKeySelective(TRank record);

    int updateByPrimaryKey(TRank record);
}