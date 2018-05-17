package com.sust.service;

import com.sust.model.TOrderAccess;

import java.util.List;

public interface OrderAccessService {
    /**
     * 根据ItemId查询 有关的评论信息
     * @param itemId
     * @return
     */
    List<TOrderAccess> queryAccessByItemId(String itemId);
}
