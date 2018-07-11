package com.sust.dao;

import com.sust.model.TLeaveWordsForOrder;
import com.sust.model.TLeaveWordsForOrderExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TLeaveWordsForOrderMapper {
    int countByExample(TLeaveWordsForOrderExample example);

    int deleteByExample(TLeaveWordsForOrderExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TLeaveWordsForOrder record);

    int insertSelective(TLeaveWordsForOrder record);

    List<TLeaveWordsForOrder> selectByExample(TLeaveWordsForOrderExample example);

    TLeaveWordsForOrder selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TLeaveWordsForOrder record, @Param("example") TLeaveWordsForOrderExample example);

    int updateByExample(@Param("record") TLeaveWordsForOrder record, @Param("example") TLeaveWordsForOrderExample example);

    int updateByPrimaryKeySelective(TLeaveWordsForOrder record);

    int updateByPrimaryKey(TLeaveWordsForOrder record);
}