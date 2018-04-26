package com.sust.service.impl;

import com.sust.dao.TUserMapper;
import com.sust.model.TUser;
import com.sust.model.TUserExample;
import com.sust.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private TUserMapper userdao;
    @Override
    public TUser queryUserInfoByUserId(String userId) {
        TUserExample example = new TUserExample();
        TUserExample.Criteria criteria = example.createCriteria();
        criteria.andUserIdEqualTo(userId);
        List<TUser> tUser = userdao.selectByExample(example);
        return tUser.size()> 0 ? tUser.get(0): new TUser();
    }
}
