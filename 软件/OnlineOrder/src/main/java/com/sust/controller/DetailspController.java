package com.sust.controller;


import com.sust.dto.DoneRecordDto;
import com.sust.dto.OrderAccessDto;
import com.sust.model.TItem;
import com.sust.model.TOrderAccess;
import com.sust.model.TUser;
import com.sust.service.ItemService;
import com.sust.service.OrderAccessService;
import com.sust.service.UserService;
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

    @RequestMapping("/todetailsp")
    public String todetailsp(@RequestParam("itemId") String itemId, Model model) {

        TItem item = itemService.queryByitemId(itemId);

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
            record.setCreateTime(access.getCreateTime().toString());

            OrderAccessDto accessDto = new OrderAccessDto();
            accessDto.setUserName(user.getUsername());
            accessDto.setAccessWords(access.getAccessWords());
            accessDto.setCreateTime(access.getCreateTime().toString());

            accessDtoList.add(accessDto);
            doneRecordDtoList.add(record);
        }

        model.addAttribute("item", item);
        model.addAttribute("accesscnt", accesscnt);
        model.addAttribute("accessDtoList", accessDtoList);
        model.addAttribute("doneRecordDtoList",doneRecordDtoList);

        return "front/detailsp";
    }
}
