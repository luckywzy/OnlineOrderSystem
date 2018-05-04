package com.sust.controller;


import com.sust.model.TItem;
import com.sust.service.ItemService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
public class DetailspController {

    @Resource
    private ItemService itemService;

    @RequestMapping("/todetailsp")
    public String todetailsp(@RequestParam("itemId")String itemId, Model model){

        TItem item = itemService.queryByitemId(itemId);
        model.addAttribute("item",item);
        return "detailsp";
    }
}
