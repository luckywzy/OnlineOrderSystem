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
    public boolean insertUser(TUser user) {
        int insert = userdao.insertSelective(user);

        return insert > 0 ? true : false;
    }

    @Override
    public TUser queryUserInfoByUserName(String username) {

        TUserExample example = new TUserExample();
        TUserExample.Criteria criteria = example.createCriteria();
        criteria.andUsernameEqualTo(username);
        List<TUser> userList = userdao.selectByExample(example);

        return userList.size() > 0 ? userList.get(0) : null;
    }

    @Override
    public String queryUserEmailByEmail(String email) {
        TUserExample example = new TUserExample();
        TUserExample.Criteria criteria = example.createCriteria();
        criteria.andEmailEqualTo(email);
        List<TUser> userList = userdao.selectByExample(example);

        return userList.size() > 0 ? userList.get(0).getEmail() : null;
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
