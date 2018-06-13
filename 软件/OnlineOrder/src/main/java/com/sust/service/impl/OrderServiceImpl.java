package com.sust.service.impl;

import com.github.pagehelper.PageHelper;
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

        return insert > 0 ? true : false;
    }

    @Override
    public boolean insertLeaveWords(TLeaveWordsForOrder leaveWords) {

        int insert = leaveWordsForOrderdao.insertSelective(leaveWords);

        return insert > 0 ? true : false;
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

        return delete > 0 ? true : false;
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
    public List<TOrder> queryOrderByStatus(Integer currentPage, Integer pageNumber,Byte status) {
        //分页处理
        PageHelper.startPage(currentPage, pageNumber);

        TOrderExample example = new TOrderExample();
        example.setOrderByClause("create_time desc");
        TOrderExample.Criteria criteria = example.createCriteria();
        criteria.andOrderStatusEqualTo(status);
        List<TOrder> orderList = orderMapper.selectByExample(example);
        return orderList;
    }

    @Override
    public boolean updateOrderStatus(String orderId, String status) {
        TOrder order = new TOrder();
        order.setOrderId(orderId);
        order.setOrderStatus(Byte.valueOf(status));
        TOrderExample example = new TOrderExample();
        TOrderExample.Criteria criteria = example.createCriteria();
        criteria.andOrderIdEqualTo(orderId);
        int update = orderMapper.updateByExampleSelective(order, example);
        return update > 0 ? true : false;
    }

    @Override
    public TLeaveWordsForOrder queryLeaveWordsByOrderId(String orderId) {
        TLeaveWordsForOrderExample example = new TLeaveWordsForOrderExample();
        TLeaveWordsForOrderExample.Criteria criteria = example.createCriteria();
        criteria.andOrderIdEqualTo(orderId);
        List<TLeaveWordsForOrder> leaveWordsForOrderList = leaveWordsForOrderdao.selectByExample(example);

        return leaveWordsForOrderList.size() > 0 ? leaveWordsForOrderList.get(0): null;
    }

    @Override
    public boolean insertReplywords(String orderid, String reply) {
        TLeaveWordsForOrder leaveWordsForOrder = new TLeaveWordsForOrder();
        leaveWordsForOrder.setReply(reply);
        TLeaveWordsForOrderExample example = new TLeaveWordsForOrderExample();
        TLeaveWordsForOrderExample.Criteria criteria = example.createCriteria();
        criteria.andOrderIdEqualTo(orderid);
        int update = leaveWordsForOrderdao.updateByExampleSelective(leaveWordsForOrder,example);

        return update>0 ? true : false;
    }

    @Override
    public boolean InsertOrderAccess(List<TOrderAccess> orderAccess) {

        for (TOrderAccess access : orderAccess) {
            int insert = accessdao.insert(access);
        }
        return true;
    }
}
