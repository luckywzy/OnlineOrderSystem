package com.sust.dao;

import com.sust.model.TUserAndOrderRelation;
import com.sust.model.TUserAndOrderRelationExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TUserAndOrderRelationDao {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_user_and_order_relation
     *
     * @mbggenerated Thu Apr 19 15:58:57 CST 2018
     */
    int countByExample(TUserAndOrderRelationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_user_and_order_relation
     *
     * @mbggenerated Thu Apr 19 15:58:57 CST 2018
     */
    int deleteByExample(TUserAndOrderRelationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_user_and_order_relation
     *
     * @mbggenerated Thu Apr 19 15:58:57 CST 2018
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_user_and_order_relation
     *
     * @mbggenerated Thu Apr 19 15:58:57 CST 2018
     */
    int insert(TUserAndOrderRelation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_user_and_order_relation
     *
     * @mbggenerated Thu Apr 19 15:58:57 CST 2018
     */
    int insertSelective(TUserAndOrderRelation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_user_and_order_relation
     *
     * @mbggenerated Thu Apr 19 15:58:57 CST 2018
     */
    List<TUserAndOrderRelation> selectByExample(TUserAndOrderRelationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_user_and_order_relation
     *
     * @mbggenerated Thu Apr 19 15:58:57 CST 2018
     */
    TUserAndOrderRelation selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_user_and_order_relation
     *
     * @mbggenerated Thu Apr 19 15:58:57 CST 2018
     */
    int updateByExampleSelective(@Param("record") TUserAndOrderRelation record,
            @Param("example") TUserAndOrderRelationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_user_and_order_relation
     *
     * @mbggenerated Thu Apr 19 15:58:57 CST 2018
     */
    int updateByExample(@Param("record") TUserAndOrderRelation record,
            @Param("example") TUserAndOrderRelationExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_user_and_order_relation
     *
     * @mbggenerated Thu Apr 19 15:58:57 CST 2018
     */
    int updateByPrimaryKeySelective(TUserAndOrderRelation record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_user_and_order_relation
     *
     * @mbggenerated Thu Apr 19 15:58:57 CST 2018
     */
    int updateByPrimaryKey(TUserAndOrderRelation record);
}