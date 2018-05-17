package com.sust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {

    @RequestMapping("/search_food.html")
    public String toSearchFoodPage() {
        return "search_food";
    }

    @RequestMapping("/search_restaurant.html")
    public String toSearchRestaurantPage() {
        return "search_restaurant";
    }
}
