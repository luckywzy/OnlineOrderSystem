package com.sust.service;

import com.sust.model.TEnterInfoForDispatch;

import java.util.List;

public interface EnterInfoForDispatchService {

    /**
     * 根据商家id 查询商家 配送信息
     * @param enterpriseId
     * @return
     */
    TEnterInfoForDispatch queryEnterInfoForDispatchByenterpriseId(String enterpriseId);

    List<TEnterInfoForDispatch> queryEnterInfoForDispatchByPage(int curpagetmp, int pageNumber);
}
