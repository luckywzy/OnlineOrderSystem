package com.sust.service;

import com.sust.model.TEnterInfoForUser;

public interface EnterInfoForUserService {

    /**
     * 查询用户展示的商户信息
     * @param enterpriseId
     * @return
     */
    TEnterInfoForUser queryEnterInfoForUserByEnterId(String enterpriseId);
}
