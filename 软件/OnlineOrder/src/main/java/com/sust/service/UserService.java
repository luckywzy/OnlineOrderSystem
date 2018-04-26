package com.sust.service;

import com.sust.model.TUser;

public interface UserService {
    /**
     * 根据ID查询用户信息
     * @param userId
     * @return
     */
    TUser queryUserInfoByUserId(String userId);
}
