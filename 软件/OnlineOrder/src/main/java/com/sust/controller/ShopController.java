package com.sust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShopController {

    @RequestMapping("/shop.html")
    public String toShopPage(){
        return "shop";
    }
}
