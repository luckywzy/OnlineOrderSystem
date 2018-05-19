package com.sust.controller;

import com.sust.model.TEnterInfoForUser;
import com.sust.model.TItem;
import com.sust.service.EnterInfoForUserService;
import com.sust.service.EnterpriseInfoService;
import com.sust.service.ItemService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class ShopController {

    @Resource
    private EnterInfoForUserService enterInfoForUserService;
    @Resource
    private ItemService itemService;

    @RequestMapping("/shop.html")
    public String toShopPage(@RequestParam("enterpriseId")String enterpriseId, Model model){

        //查询店铺信息
        TEnterInfoForUser enterInfoForUser = enterInfoForUserService.queryEnterInfoForUserByEnterId(enterpriseId);
        //查询菜谱信息
        List<TItem> tItems = itemService.queryByPage(enterpriseId);


        model.addAttribute("enterInfoForUser", enterInfoForUser);
        model.addAttribute("tItems", tItems);
        return "front/shop";
    }
}
