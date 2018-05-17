package com.sust.service.impl;

import com.sust.dao.TOrderAccessMapper;
import com.sust.model.TOrderAccess;
import com.sust.model.TOrderAccessExample;
import com.sust.service.OrderAccessService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderAccessServiceImpl implements OrderAccessService {

    @Resource
    private TOrderAccessMapper accessdao;

    @Override
    public List<TOrderAccess> queryAccessByItemId(String itemId) {

        TOrderAccessExample example = new TOrderAccessExample();
        TOrderAccessExample.Criteria criteria = example.createCriteria();
        criteria.andItemIdEqualTo(itemId);
        List<TOrderAccess> accessList = accessdao.selectByExample(example);

        return accessList;
    }
}
