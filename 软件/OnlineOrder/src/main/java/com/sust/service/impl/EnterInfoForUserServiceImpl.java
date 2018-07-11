package com.sust.service.impl;

import com.sust.dao.TEnterInfoForUserMapper;
import com.sust.dao.TEnterpriseInfoMapper;
import com.sust.model.TEnterInfoForUser;
import com.sust.model.TEnterInfoForUserExample;
import com.sust.service.EnterInfoForUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 关于用户展示的商铺信息的操作·
 */
@Service
public class EnterInfoForUserServiceImpl implements EnterInfoForUserService {

    @Resource
    private TEnterInfoForUserMapper enterInfoForUserdao;
    @Override
    public TEnterInfoForUser queryEnterInfoForUserByEnterId(String enterpriseId) {

        TEnterInfoForUserExample example = new TEnterInfoForUserExample();
        TEnterInfoForUserExample.Criteria criteria = example.createCriteria();
        criteria.andEnterpriseIdEqualTo(enterpriseId);
        List<TEnterInfoForUser> enterInfoForUsers = enterInfoForUserdao.selectByExample(example);

        return enterInfoForUsers.size() > 0 ? enterInfoForUsers.get(0) : null;
    }
}
