package com.sust.service;

import com.sust.model.TEnterpriseInfo;
import com.sust.model.TItem;

import java.util.List;

public interface ItemService {

    /**
     * 分页查询
     * @return
     */
    List<TItem> queryByPage(String enterpriseid);

    /**
     * 根据 item  Id  查询
     * @param itemIid
     * @return
     */
    TItem queryByitemId(String itemIid);

    /**
     * 增加菜品
     * @param item
     * @return
     */
    boolean insertByItem(TItem item);

    /**
     *  根据Id 删除item
     * @param itemId
     * @return
     */
    boolean deleteItemById(String itemId);

    List<TItem> queryAllByPage(int curpagetmp, int pageNumber);

    /**
     * 根据itemIdList 批量查询
     * @param itemIdList
     * @return
     */
    List<TItem> BatchQueryByitemId(List<String> itemIdList);
}
