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
     * @param id
     * @return
     */
    TItem queryByid(String id);
}
