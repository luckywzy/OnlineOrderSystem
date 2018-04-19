package com.sust.service;

import com.sust.model.TItem;

import java.util.List;

public interface ItemService {

    /**
     * 分页查询
     * @return
     */
    List<TItem> queryByPage(String id);

}
