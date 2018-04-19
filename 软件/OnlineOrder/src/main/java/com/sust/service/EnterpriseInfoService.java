package com.sust.service;

import com.sust.model.TEnterpriseInfo;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * OnlineOrder
 * com.sust.service
 * 2018/4/19
 */
public interface EnterpriseInfoService {
    List<TEnterpriseInfo> queryByPage();
}
