package com.sust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/user")
@Controller
public class CartController {

    @RequestMapping("/tocart")
    public String tocartPage(){
        //TODO:此处应判断是否为登录用户！
        return "cart";
    }

    @RequestMapping("/toconfirm_order")
    public String toconfirm_order(){
        return "confirm_order";
    }
}
