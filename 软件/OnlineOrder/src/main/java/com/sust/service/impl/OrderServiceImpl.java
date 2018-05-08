package com.sust.service.impl;

import com.sust.dao.TOrderMapper;
import com.sust.model.TOrder;
import com.sust.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class OrderServiceImpl implements OrderService {

    @Resource
    private TOrderMapper orderMapper;

    @Override
    public boolean insertOrder(TOrder order) {

        int insert = orderMapper.insert(order);
        if (insert > 0){
            return true;
        }
        return false;
    }
}
