package com.sust.service;

import com.sust.model.TUser;
import com.sust.model.TUserAddress;

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
    String queryAddressById(Integer id, String userId);

    /**
     * 用户登录
     * @param username
     * @param password
     * @return
     */
    TUser queryUserInfoByNameAndPwd(String username, String password);
}
