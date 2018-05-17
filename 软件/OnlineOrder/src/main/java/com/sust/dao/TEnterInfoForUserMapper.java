package com.sust.dao;

import com.sust.model.TEnterInfoForUser;
import com.sust.model.TEnterInfoForUserExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TEnterInfoForUserMapper {
    int countByExample(TEnterInfoForUserExample example);

    int deleteByExample(TEnterInfoForUserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TEnterInfoForUser record);

    int insertSelective(TEnterInfoForUser record);

    List<TEnterInfoForUser> selectByExample(TEnterInfoForUserExample example);

    TEnterInfoForUser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TEnterInfoForUser record, @Param("example") TEnterInfoForUserExample example);

    int updateByExample(@Param("record") TEnterInfoForUser record, @Param("example") TEnterInfoForUserExample example);

    int updateByPrimaryKeySelective(TEnterInfoForUser record);

    int updateByPrimaryKey(TEnterInfoForUser record);
}