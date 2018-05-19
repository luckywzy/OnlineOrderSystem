package com.sust.service;

import com.sust.model.TLeaveWordsForOrder;
import com.sust.model.TOrder;
import com.sust.model.TOrderAccess;

import java.util.List;

public interface OrderService {

    /**
     * 生成订单
     * @param order
     * @return
     */
    boolean insertOrder(TOrder order);

    /**
     * 插入留言信息
     * @param leaveWords
     * @return
     */
    boolean insertLeaveWords(TLeaveWordsForOrder leaveWords);

    /**
     * 查询用户留言信息
     * @param userId
     * @return
     */
    List<TLeaveWordsForOrder> queryLeaveWordsByUserId(String userId);

    /**
     * 插入评论
     * @param orderAccess
     * @return
     */
    boolean InsertOrderAccess(List<TOrderAccess> orderAccess);

    /**
     * 删除订单
     * @param orderId
     * @return
     */
    boolean deleteOrderByOrderId(String orderId);

    /**
     * 查询订单
     * @param orderId
     * @return
     */
    TOrder queryOrderByOrderId(String orderId);

    List<TOrder> queryOrderByStatus(Byte status);
}
