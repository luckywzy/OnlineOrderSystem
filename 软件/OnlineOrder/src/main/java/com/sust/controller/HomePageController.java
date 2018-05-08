package com.sust.controller;

import com.sust.model.TItem;
import com.sust.model.TUser;
import com.sust.service.ItemService;
import com.sust.service.UserService;
import com.sust.utils.CookieUtils;
import com.sust.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 2018/4/26
 */
@Controller
public class HomePageController {

    @Resource
    private UserService userService;
    @Resource
    private ItemService itemService;

    @RequestMapping(value = "/home",method = RequestMethod.GET)
    public String toIndex(@RequestParam(value = "curpage", required = false) Integer curpage,Model model){
        //分页数据
        Page page = new Page();
        int curpagetmp = 1;
        if(curpage == null) {
            curpagetmp = 1;
        }else {
            curpagetmp = curpage;
        }

        List<TItem>  items =itemService.queryAllByPage(curpagetmp, page.getPageNumber());
        model.addAttribute("items",items);

        return "index";
    }

    @RequestMapping(value = "/register.html",method = RequestMethod.GET)
    public String toRegister(){
        return "register";
    }
    //跳转登录页面
    @RequestMapping(value = "/login.html",method = RequestMethod.GET)
    public String toLogin(){
        return "login";
    }
    //跳转用户中心
    @RequestMapping(value = "/user/user_center",method = RequestMethod.GET)
    public String toUserCenter(HttpServletRequest request){
        //判断用户是否存在,存在转到user_center，否则转到登录页
        if(this.isLogin(request)){
           /* String userId = CookieUtils.getCookieValue(request, "userId");
            TUser user = userService.queryUserInfoByUserId(userId);*/
            return "user_center";
        }
        return "login";
    }

    @RequestMapping(value = "/user/user_orderlist",method = RequestMethod.GET)
    public String toUserOrderlist(HttpServletRequest request){
        if(this.isLogin(request)){
            return "user_orderlist";
        }
        return "login";
    }
    @RequestMapping(value = "/user/cart",method = RequestMethod.GET)
    public String toCart(HttpServletRequest request){
        if(this.isLogin(request)){
            return "user_orderlist";
        }
        return "login";
    }



    private boolean isLogin(HttpServletRequest request){
        String userName = CookieUtils.getCookieValue(request, "userName");
        if(userName != null && userName.length() > 0){
            return true;
        }
        return false;
    }
}
