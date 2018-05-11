package com.sust.service;

import com.sust.model.TOrder;
import com.sust.model.TUser;
import com.sust.model.TUserAddress;

import java.util.List;

public interface UserService {
    /**
     * 根据ID查询用户信息
     * @param userId
     * @return
     */
    TUser queryUserInfoByUserId(String userId);

    /**
     * 插入新地址
     * @param userAddress
     * @return
     */
    boolean insertAddress(TUserAddress userAddress);

    /**
     * 根据 ID， 和 userID 组成 地址信息
     * @param id
     * @param userId
     * @return
     */
    TUserAddress queryAddressById(Integer id, String userId);

    /**
     * 用户登录
     * @param username
     * @param password
     * @return
     */
    TUser queryUserInfoByNameAndPwd(String username, String password);

    /**
     * 查询用户的收获地址
     * @param userId
     * @return
     */
    List<TUserAddress> queryAddressByUserId(String userId);

    /**
     * 根据用户ID查询用户订单信息
     * @param userId
     * @return
     */
    List<TOrder> queryOrderListByUserId(String userId);

    /**
     * 根据订单ID查询 订单详情
     * @param orderid
     * @return
     */
    TOrder queryOrderDetailByOrderId(String orderid);
}
