package com.sust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 2018/4/26
 */
@Controller
public class HomeController {

    @RequestMapping("/home")
    public String home(){
        return "index";
    }

}
