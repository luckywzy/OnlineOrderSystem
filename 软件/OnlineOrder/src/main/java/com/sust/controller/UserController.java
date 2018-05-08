package com.sust.controller;

import com.sust.dto.AddressDto;
import com.sust.dto.UserDto;
import com.sust.model.TUser;
import com.sust.model.TUserAddress;
import com.sust.service.UserService;
import com.sust.utils.CookieUtils;
import com.sust.utils.JsonUtils;
import com.sust.utils.Result;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class UserController {
    private static final org.slf4j.Logger logger = LoggerFactory.getLogger(UserController.class);
    @Resource
    UserService userService;

    /**
     * 登陆动作，添加用户cookie
     * @return
     */
    @RequestMapping(value = "/userlogin",method = RequestMethod.POST)
    @ResponseBody
    public String loginAction(String username,
                              String password,
                             /* @RequestBody UserDto userDto,*/
                              HttpServletRequest request,
                              HttpServletResponse response
                              ){

        logger.info("username:{}",username);

        TUser user = userService.queryUserInfoByNameAndPwd(username,password);
        if (user != null){
            CookieUtils.setCookie(request,response,"userId",user.getUserId());
            return JsonUtils.objectToJson(Result.build(0, "登录成功"));
        }else {
            return JsonUtils.objectToJson(Result.build(1,"用户名或密码错误"));
        }
    }

    @RequestMapping(value = "/user/add_address",method = RequestMethod.POST)
    public String addAddress(@ModelAttribute("address_form")TUserAddress/*AddressDto*/ address_form){

        logger.info("model:{}",address_form);

        boolean ok = userService.insertAddress(address_form);
        return "redirect:/user/confirm_order";
    }
}
