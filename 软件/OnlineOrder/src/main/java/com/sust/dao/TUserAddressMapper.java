package com.sust.dao;

import com.sust.model.TUserAddress;
import com.sust.model.TUserAddressExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TUserAddressMapper {
    int countByExample(TUserAddressExample example);

    int deleteByExample(TUserAddressExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TUserAddress record);

    int insertSelective(TUserAddress record);

    List<TUserAddress> selectByExample(TUserAddressExample example);

    TUserAddress selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TUserAddress record, @Param("example") TUserAddressExample example);

    int updateByExample(@Param("record") TUserAddress record, @Param("example") TUserAddressExample example);

    int updateByPrimaryKeySelective(TUserAddress record);

    int updateByPrimaryKey(TUserAddress record);
}