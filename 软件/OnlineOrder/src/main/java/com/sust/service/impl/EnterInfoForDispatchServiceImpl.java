package com.sust.service.impl;

import com.github.pagehelper.PageHelper;
import com.sust.dao.TEnterInfoForDispatchMapper;
import com.sust.model.TEnterInfoForDispatch;
import com.sust.model.TEnterInfoForDispatchExample;
import com.sust.service.EnterInfoForDispatchService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class EnterInfoForDispatchServiceImpl implements EnterInfoForDispatchService {

    @Resource
    private TEnterInfoForDispatchMapper enterInfoForDispatchdao;

    @Override
    public TEnterInfoForDispatch queryEnterInfoForDispatchByenterpriseId(String enterpriseId) {

        TEnterInfoForDispatchExample example = new TEnterInfoForDispatchExample();
        TEnterInfoForDispatchExample.Criteria criteria = example.createCriteria();
        criteria.andEnterpriseIdEqualTo(enterpriseId);
        List<TEnterInfoForDispatch> enterInfoForDispatches = enterInfoForDispatchdao.selectByExample(example);

        return enterInfoForDispatches.size() > 0 ? enterInfoForDispatches.get(0) : null;
    }

    @Override
    public List<TEnterInfoForDispatch> queryEnterInfoForDispatchByPage(int curpagetmp, int pageNumber) {
        //分页处理
        PageHelper.startPage(curpagetmp, pageNumber);

        TEnterInfoForDispatchExample example = new TEnterInfoForDispatchExample();
        TEnterInfoForDispatchExample.Criteria criteria = example.createCriteria();
        criteria.andIdIsNotNull();
        List<TEnterInfoForDispatch> enterInfoForDispatchList = enterInfoForDispatchdao.selectByExample(example);

        return enterInfoForDispatchList;
    }

    @Override
    public List<TEnterInfoForDispatch> queryEnterInfoForDispatchByKeywork(String keyword) {

        keyword = '%' + keyword +'%';

        TEnterInfoForDispatchExample example = new TEnterInfoForDispatchExample();
        TEnterInfoForDispatchExample.Criteria criteria = example.createCriteria();
        criteria.andCompanyNameLike(keyword);
        List<TEnterInfoForDispatch> infoList = enterInfoForDispatchdao.selectByExample(example);

        return infoList;
    }
}
