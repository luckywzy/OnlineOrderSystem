package com.sust.service.impl;

import com.sust.dao.TEnterpriseInfoDao;
import com.sust.model.TEnterpriseInfo;
import com.sust.model.TEnterpriseInfoExample;
import com.sust.service.EnterpriseInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * OnlineOrder
 * com.sust.service.impl
 * 2018/4/19
 */
@Service
public class EnterpriseInfoServiceImpl implements EnterpriseInfoService {

    private Logger logger = LoggerFactory.getLogger(EnterpriseInfoServiceImpl.class);
    @Autowired
    private TEnterpriseInfoDao tEnterpriseInfoDao;

    @Override public List<TEnterpriseInfo> queryByPage() {
        TEnterpriseInfoExample example = new TEnterpriseInfoExample();
        TEnterpriseInfoExample.Criteria criteria = example.createCriteria();
        criteria.andEnterpriseIdIsNotNull();
        return  tEnterpriseInfoDao.selectByExample(example);
    }
}
