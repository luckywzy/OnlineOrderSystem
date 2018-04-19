package com.sust.service;

import com.sust.model.TEnterpriseInfo;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 对企业信息的管理
 * OnlineOrder
 * com.sust.service
 * 2018/4/19
 */
public interface EnterpriseInfoService {
    /**
     * 分页查询
     * @return
     */
    List<TEnterpriseInfo> queryByPage();

    /**
     * 根据ID 查询 企业信息
     * @param id
     * @return
     */
    TEnterpriseInfo queryById(String id);
}
