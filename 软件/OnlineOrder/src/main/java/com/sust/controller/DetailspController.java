package com.sust.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DetailspController {

    @RequestMapping("/todetailsp")
    public String todetailsp(){
        return "detailsp";
    }
}
