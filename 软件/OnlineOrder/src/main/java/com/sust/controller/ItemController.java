package com.sust.controller;

import com.sust.model.TItem;
import com.sust.service.ItemService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

/**
 * 对菜品的管理
 * OnlineOrder
 * com.sust.controller
 * 2018/4/19
 */
@Controller
@RequestMapping("/item")
public class ItemController {

    @Resource
    ItemService itemService;

    @RequestMapping("/itemOfEnterprise")
    public String list(@RequestParam(value = "id",required = true) String id, Model model)
    {
        List<TItem> Items = itemService.queryByPage(id);
        model.addAttribute("Items", Items);

        return "item";
    }

    @RequestMapping("/modify")
    public String listdedail(@RequestParam(value = "id",required = true) String id, Model model)
    {
        TItem item = itemService.queryByid(id);
        model.addAttribute("item", item);

        return "itemDetail";
    }

}
