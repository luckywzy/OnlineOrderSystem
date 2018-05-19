package com.sust.controller;

import com.sust.model.TEnterInfoForDispatch;
import com.sust.service.EnterInfoForDispatchService;
import com.sust.utils.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class SearchController {

    @Resource
    private EnterInfoForDispatchService enterInfoForDispatchService;

    @RequestMapping("/search_food.html")
    public String toSearchFoodPage() {
        return "search_food";
    }

    @RequestMapping(value = "/search_restaurant.html",method = RequestMethod.POST,produces = "text/html;charset=UTF-8")
    public String toSearchRestaurantPage(@RequestParam("keyword")String keyword, Model model) {

        //查询店铺信息
        List<TEnterInfoForDispatch> enterInfoForDispatchList = enterInfoForDispatchService.queryEnterInfoForDispatchByKeywork(keyword);

        model.addAttribute("enterInfoForDispatchList", enterInfoForDispatchList);

        return "front/search_restaurant";
    }
}
