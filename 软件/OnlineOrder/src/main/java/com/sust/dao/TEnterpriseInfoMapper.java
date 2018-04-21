package com.sust.dao;

import com.sust.model.TEnterpriseInfo;
import com.sust.model.TEnterpriseInfoExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TEnterpriseInfoMapper {
    int countByExample(TEnterpriseInfoExample example);

    int deleteByExample(TEnterpriseInfoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TEnterpriseInfo record);

    int insertSelective(TEnterpriseInfo record);

    List<TEnterpriseInfo> selectByExample(TEnterpriseInfoExample example);

    TEnterpriseInfo selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TEnterpriseInfo record, @Param("example") TEnterpriseInfoExample example);

    int updateByExample(@Param("record") TEnterpriseInfo record, @Param("example") TEnterpriseInfoExample example);

    int updateByPrimaryKeySelective(TEnterpriseInfo record);

    int updateByPrimaryKey(TEnterpriseInfo record);
}