package com.sust.controller;

import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import com.sust.model.TItem;
import com.sust.service.ItemService;
import com.sust.utils.JsonUtils;
import com.sust.utils.Result;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * 对菜品的管理
 * OnlineOrder
 * com.sust.controller
 * 2018/4/19
 */
@Controller
@RequestMapping("/item")
public class ItemController {
    private static final org.slf4j.Logger logger = LoggerFactory.getLogger(ItemController.class);
    @Resource
    ItemService itemService;

    @RequestMapping("/itemOfEnterprise")
    @ResponseBody
    public String list(@RequestParam(value = "enterpriseid",required = true) String enterpriseid, Model model)
    {
        List<TItem> Items = itemService.queryByPage(enterpriseid);
        /*model.addAttribute("Items", Items);
        model.addAttribute("enterpriseid", enterpriseid);
        return "item";*/
        Map<String,Object> resMap = Maps.newHashMap();
        resMap.put("enterpriseid", enterpriseid);
        resMap.put("Items", Items);
        return JsonUtils.objectToJson(Result.build(0,"",resMap));
}

    /**
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/modify")
    public String listdedail(@RequestParam(value = "id",required = true) String id, Model model)
    {
        TItem item = itemService.queryByitemId(id);
        model.addAttribute("item", item);
        return "itemDetail";
}

    /**
     * 转到菜品新增页面
     * @param enterpriseid
     * @param model
     * @return
     */
    @RequestMapping(value = "/toadd",method = RequestMethod.GET)
    public String toaddItemPage(@RequestParam(value = "enterpriseid",required = true) String enterpriseid, Model model)
    {
        model.addAttribute("enterpriseid", enterpriseid);
        return "addItem";
    }

    /**
     * 新增菜品，成功跳转 菜品列表页
     * @param item
     * @param model
     * @return
     */
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String addItem(/*@RequestParam(value = "enterpriseid",required = true) String enterpriseid*/
            @ModelAttribute("item") TItem item, Model model)
    {
        String enterpriseId = item.getEnterpriseId();
        boolean ok = itemService.insertByItem(item);
        if(ok ) {
            model.addAttribute("enterpriseid", enterpriseId);
            return "redirect:/item/itemOfEnterprise";
        }else {
            logger.error("插入item失败，入参：{}",item);
            return "redirect:/common/error";
        }
    }

    /**
     * 根据Id删除item
     * @param itemId
     * @return
     */
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    @ResponseBody
    public String deleteItem(@RequestParam(value = "itemId",required = false)String itemId){

        Preconditions.checkNotNull(itemId,"菜品Id不可为空");

        boolean ok = itemService.deleteItemById(itemId);
        if(ok){
            return JsonUtils.objectToJson(Result.build(0, "删除成功"));
        }else {
            return JsonUtils.objectToJson(Result.build(1, "删除失败"));
        }
    }

}
