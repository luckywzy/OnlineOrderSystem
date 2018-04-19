package com.sust.service.impl;

import com.sust.dao.TItemDao;
import com.sust.model.TItem;
import com.sust.model.TItemExample;
import com.sust.service.ItemService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ItemServiceImpl implements ItemService {

    @Resource
    TItemDao itemDao;

    @Override
    public List<TItem> queryByPage(String id) {

        TItemExample tItemExample = new TItemExample();
        TItemExample.Criteria criteria = tItemExample.createCriteria();
        criteria.andEnterpriseIdEqualTo(id);
        return itemDao.selectByExample(tItemExample);

    }
}
