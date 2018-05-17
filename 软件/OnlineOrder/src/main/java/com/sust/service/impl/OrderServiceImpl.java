package com.sust.service.impl;

import com.sust.dao.TLeaveWordsForOrderMapper;
import com.sust.dao.TOrderAccessMapper;
import com.sust.dao.TOrderMapper;
import com.sust.model.*;
import com.sust.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Resource
    private TOrderMapper orderMapper;
    @Resource
    private TLeaveWordsForOrderMapper leaveWordsForOrderdao;
    @Resource
    private TOrderAccessMapper accessdao;

    @Override
    public boolean insertOrder(TOrder order) {

        int insert = orderMapper.insert(order);

        return insert>0 ? true : false;
    }

    @Override
    public boolean insertLeaveWords(TLeaveWordsForOrder leaveWords) {

        int insert = leaveWordsForOrderdao.insert(leaveWords);

        return insert>0 ? true : false;
    }

    @Override
    public List<TLeaveWordsForOrder> queryLeaveWordsByUserId(String userId) {

        TLeaveWordsForOrderExample example = new TLeaveWordsForOrderExample();
        example.setOrderByClause("create_time desc"); // 列名 和 排序方式
        TLeaveWordsForOrderExample.Criteria criteria = example.createCriteria();
        criteria.andUserIdEqualTo(userId);
        List<TLeaveWordsForOrder> tLeaveWordsForOrders = leaveWordsForOrderdao.selectByExample(example);

        return tLeaveWordsForOrders;
    }

    @Override
    public boolean deleteOrderByOrderId(String orderId) {

        TOrderExample example = new TOrderExample();
        TOrderExample.Criteria criteria = example.createCriteria();
        criteria.andOrderIdEqualTo(orderId);
        int delete = orderMapper.deleteByExample(example);

        return delete>0 ? true : false;
    }

    @Override
    public TOrder queryOrderByOrderId(String orderId) {

        TOrderExample example = new TOrderExample();
        TOrderExample.Criteria criteria = example.createCriteria();
        criteria.andOrderIdEqualTo(orderId);
        List<TOrder> orderList = orderMapper.selectByExample(example);

        return orderList.size() > 0 ? orderList.get(0) : null;
    }

    @Override
    public boolean InsertOrderAccess(List<TOrderAccess> orderAccess) {

        for (TOrderAccess access : orderAccess) {
            int insert = accessdao.insert(access);
        }
        return true;
    }
}
