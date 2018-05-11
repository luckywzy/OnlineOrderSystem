package com.sust.service.impl;

import com.sust.dao.TOrderMapper;
import com.sust.dao.TUserAddressMapper;
import com.sust.dao.TUserMapper;
import com.sust.model.*;
import com.sust.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private TUserMapper userdao;
    @Resource
    private TUserAddressMapper addressdao;
    @Resource
    private TOrderMapper orderdao;


    @Override
    public boolean insertAddress(TUserAddress userAddress) {
        addressdao.insert(userAddress);
        return false;
    }

    @Override
    public TUser queryUserInfoByNameAndPwd(String username, String password) {

        TUserExample example = new TUserExample();
        TUserExample.Criteria criteria = example.createCriteria();
        criteria.andUsernameEqualTo(username).andPasswordEqualTo(password);
        List<TUser> users = userdao.selectByExample(example);

        return users.size()>0 ? users.get(0) : null;
    }

    @Override
    public List<TUserAddress> queryAddressByUserId(String userId) {
        TUserAddressExample example = new TUserAddressExample();
        TUserAddressExample.Criteria criteria = example.createCriteria();
        criteria.andUserIdEqualTo(userId);
        List<TUserAddress> userAddresses = addressdao.selectByExample(example);

        return userAddresses;
    }

    @Override
    public List<TOrder> queryOrderListByUserId(String userId) {
        TOrderExample example = new TOrderExample();
        TOrderExample.Criteria criteria = example.createCriteria();
        criteria.andUserIdEqualTo(userId);
        List<TOrder> orderList = orderdao.selectByExample(example);
        return orderList;
    }

    @Override
    public TOrder queryOrderDetailByOrderId(String orderid) {

        TOrderExample example = new TOrderExample();
        TOrderExample.Criteria criteria = example.createCriteria();
        criteria.andOrderIdEqualTo(orderid);
        List<TOrder> orderList = orderdao.selectByExample(example);

        return orderList.size() > 0 ? orderList.get(0) : null;
    }

    @Override
    public TUserAddress queryAddressById(Integer id, String userId) {

        TUserAddressExample example = new TUserAddressExample();
        TUserAddressExample.Criteria criteria = example.createCriteria();
        criteria.andIdEqualTo(id).andUserIdEqualTo(userId);
        List<TUserAddress> userAddresses = addressdao.selectByExample(example);

        return userAddresses.size()>0 ? userAddresses.get(0): null;
    }

    @Override
    public TUser queryUserInfoByUserId(String userId) {
        TUserExample example = new TUserExample();
        TUserExample.Criteria criteria = example.createCriteria();
        criteria.andUserIdEqualTo(userId);
        List<TUser> tUser = userdao.selectByExample(example);
        return tUser.size()> 0 ? tUser.get(0): new TUser();
    }
}
