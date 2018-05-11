package com.sust.service.impl;

import com.github.pagehelper.PageHelper;
import com.sust.dao.TItemMapper;
import com.sust.model.TItem;
import com.sust.model.TItemExample;
import com.sust.service.ItemService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ItemServiceImpl implements ItemService {

    @Resource
    TItemMapper itemDao;

    @Override
    public List<TItem> queryByPage(String enterpriseid) {

        TItemExample tItemExample = new TItemExample();
        TItemExample.Criteria criteria = tItemExample.createCriteria();
        criteria.andEnterpriseIdEqualTo(enterpriseid);
        return itemDao.selectByExample(tItemExample);

    }

    @Override
    public TItem queryByitemId(String itemId) {
        TItemExample tItemExample = new TItemExample();
        TItemExample.Criteria criteria = tItemExample.createCriteria();
        criteria.andItemIdEqualTo(itemId);
        return itemDao.selectByExample(tItemExample).get(0);
    }

    @Override
    public boolean deleteItemById(String itemId) {

        TItemExample example = new TItemExample();
        TItemExample.Criteria criteria = example.createCriteria();
        criteria.andItemIdEqualTo(itemId);
        int delIndex = itemDao.deleteByExample(example);
        if (delIndex > 0){
            return true;
        }
        return false;
    }

    @Override
    public List<TItem> queryAllByPage(int curpagetmp, int pageNumber) {
        //分页处理
        PageHelper.startPage(curpagetmp, pageNumber);

        TItemExample example = new TItemExample();
        TItemExample.Criteria criteria = example.createCriteria();
        criteria.andIdIsNotNull();
        List<TItem> tItems = itemDao.selectByExample(example);
        return tItems;
    }

    @Override
    public List<TItem> BatchQueryByitemId(List<String> itemIdList) {
        TItemExample example = new TItemExample();
        TItemExample.Criteria criteria = example.createCriteria();
        criteria.andItemIdIn(itemIdList);

        List<TItem> tItems = itemDao.selectByExample(example);
        return tItems;
    }

    @Override
    public TItem queryById(Integer id) {

        TItem item = itemDao.selectByPrimaryKey(id);
        return item;
    }

    /**
     * 插入item
     * 
     * @param item
     * @return
     */
    @Override
    public boolean insertByItem(TItem item) {
        if (item == null) {
            return false;
        }

        int insert = itemDao.insert(item);
        if (insert > 0) {
            return true;
        }

        return false;
    }
}
