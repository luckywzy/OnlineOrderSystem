package com.sust.controller;


import com.sust.dto.DoneRecordDto;
import com.sust.dto.OrderAccessDto;
import com.sust.model.*;
import com.sust.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
public class DetailspController {

    @Resource
    private ItemService itemService;
    @Resource
    private OrderAccessService accessService;
    @Resource
    private UserService userService;
    @Resource
    private EnterInfoForUserService enterInfoForUserService;
    @Resource
    private EnterInfoForDispatchService enterInfoForDispatchService;

    @RequestMapping("/todetailsp")
    public String todetailsp(@RequestParam("itemId") String itemId, Model model) {

        TItem item = itemService.queryByitemId(itemId);

        //查询商家地址
        TEnterInfoForUser infoForUser = enterInfoForUserService.queryEnterInfoForUserByEnterId(item.getEnterpriseId());
        //查询派送信息
        TEnterInfoForDispatch forDispatch = enterInfoForDispatchService.queryEnterInfoForDispatchByenterpriseId(item.getEnterpriseId());
        //查询评论信息
        List<TOrderAccess> accessList = accessService.queryAccessByItemId(item.getId().toString());
        //评论总数
        Integer accesscnt = accessList.size();
        //返回的评论信息
        List<OrderAccessDto> accessDtoList = new ArrayList<>();
        //成交记录
        List<DoneRecordDto> doneRecordDtoList = new ArrayList<>();

        for (TOrderAccess access : accessList) {
            TUser user = userService.queryUserInfoByUserId(access.getUserId());

            DoneRecordDto record = new DoneRecordDto();
            record.setBuyer(user.getUsername());
            record.setCnt(String.valueOf(access.getPayCount()));
            record.setCreateTime(access.getCreateTime());

            OrderAccessDto accessDto = new OrderAccessDto();
            accessDto.setUserName(user.getUsername());
            accessDto.setAccessWords(access.getAccessWords());
            accessDto.setCreateTime(access.getCreateTime());

            accessDtoList.add(accessDto);
            doneRecordDtoList.add(record);
        }

        model.addAttribute("item", item);
        model.addAttribute("accesscnt", accesscnt);
        model.addAttribute("accessDtoList", accessDtoList);
        model.addAttribute("doneRecordDtoList",doneRecordDtoList);
        model.addAttribute("address",infoForUser.getAddress());
        model.addAttribute("forDispatch", forDispatch);
        return "front/detailsp";
    }
}
