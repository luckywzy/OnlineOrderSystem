package com.sust.controller;

import com.google.common.base.Splitter;
import com.sust.constants.DisPatchPriceConstants;
import com.sust.constants.OrderContentConstant;
import com.sust.constants.TUserConstant;
import com.sust.dto.OrderContentDto;
import com.sust.dto.UserOrderDto;
import com.sust.enumeration.OrderStatusEnum;
import com.sust.model.*;
import com.sust.service.ItemService;
import com.sust.service.OrderService;
import com.sust.service.UserService;
import com.sust.utils.CookieUtils;
import com.sust.utils.IdUtils;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

import static com.sust.process.OrderProcess.splitOrderContent;

@Controller
public class UserController {
    private static final org.slf4j.Logger logger = LoggerFactory.getLogger(UserController.class);
    @Resource
    UserService userService;
    @Resource
    ItemService itemService;
    @Resource
    OrderService orderService;

    @RequestMapping(value = "/register.do",method = RequestMethod.POST)
    public String registerDo(@RequestParam("username")String username,
                             @RequestParam("password")String password,
                             @RequestParam("email")String email,
                             @RequestParam("phone_num")String phone_num){
        TUser user = new TUser();
        user.setUserId(IdUtils.getNextId());
        user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);
        user.setPhoneNum(phone_num);
        user.setRank(Byte.valueOf("2")); //普通用户
        user.setUsed(Byte.valueOf("1")); //可用
        boolean ok = userService.insertUser(user);
        if(ok){
            return "redirect:/home";
        }else {
            return "front/error";
        }
    }


    /**
     * 登陆动作，添加用户cookie
     * @return
     */
    @RequestMapping(value = "/userlogin",method = RequestMethod.POST)
    public String loginAction(@RequestParam("username") String username,
                              @RequestParam("password") String password,
                             /* @RequestBody UserDto userDto,*/
                              HttpServletRequest request,
                              HttpServletResponse response
                              ){

        logger.info("username:{}",username);

        TUser user = userService.queryUserInfoByNameAndPwd(username,password);
        if (user != null){
            CookieUtils.setCookie(request,response,"userId",user.getUserId());
            return "redirect:/home";
        }else {
            return "redirect:/error";
        }
    }

    @RequestMapping("/user/user_center.html")
    public String touser_center(){

        return "redirect:/user/user_orderlist.html";
    }

    /**
     * 查看订单详情
     * @return
     */
    @RequestMapping("/user/user_orderdetail.html")
    public String touser_orderdetail(@RequestParam("orderid")String orderid,
                                     HttpServletRequest request,
                                     Model model){

        TOrder order =  userService.queryOrderDetailByOrderId(orderid);

        Map<String,String> itemIdAndCnt = splitOrderContent(order.getOrderContent());

        List<OrderContentDto> orderContentDtoList = new ArrayList<>();
        for (Map.Entry<String, String> entry : itemIdAndCnt.entrySet()) {
            String key = entry.getKey();
            TItem item =itemService.queryById(Integer.valueOf(key));
            OrderContentDto contentDto = new OrderContentDto();

            contentDto.setItemId(item.getItemId());
            contentDto.setItemName(item.getItemName());
            contentDto.setItemPrice(item.getItemPrice());
            contentDto.setCnt(Integer.valueOf(itemIdAndCnt.get(key)));
            contentDto.setTotal(contentDto.getItemPrice().multiply(new BigDecimal(contentDto.getCnt())));

            orderContentDtoList.add(contentDto);
        }
        String orderId = order.getOrderId();
        BigDecimal dispatchPrice = DisPatchPriceConstants.DISPATCH_PRICE;
        TUserAddress address = userService.queryAddressById(order.getDispatchAddress(), order.getUserId());
        BigDecimal orderPrice = order.getOrderPrice();
        model.addAttribute("orderId",orderId);
        model.addAttribute("orderContentDtoList",orderContentDtoList);
        model.addAttribute("dispatchPrice",dispatchPrice);
        model.addAttribute("orderPrice",orderPrice);
        model.addAttribute("address",address);
        return "front/user_orderdetail";
    }

    /**
     * 查询订单列表
     * @return
     */
    @RequestMapping("/user/user_orderlist.html")
    public String touser_orderlist(HttpServletRequest request,Model model){

        String userId = CookieUtils.getCookieValue(request, TUserConstant.USER_COOKIE_NAME);
        //获取订单信息
        List<TOrder> orderList = userService.queryOrderListByUserId(userId);

        //组装返回数据
        List<UserOrderDto> userOrderDtoList = new ArrayList<>();

        for (TOrder order : orderList) {
            //获取地址信息
            TUserAddress userAddress = userService.queryAddressById(order.getDispatchAddress(), userId);

            UserOrderDto orderDto = new UserOrderDto();

            orderDto.setOrderId(order.getOrderId());
            orderDto.setCreateTime(order.getCreateTime());
            orderDto.setConsignee(userAddress.getConsignee());
            orderDto.setOrderPrice(order.getOrderPrice());
            orderDto.setOrderStatus(OrderStatusEnum.getName(order.getOrderStatus()));
            orderDto.setStatusCode(Integer.valueOf(order.getOrderStatus()));
            userOrderDtoList.add(orderDto);
        }
        //按照时间顺序排序
        userOrderDtoList.sort(new Comparator<UserOrderDto>() {
            @Override
            public int compare(UserOrderDto o1, UserOrderDto o2) {

                if(o1.getCreateTime().after(o2.getCreateTime()) == true){
                    return -1;
                }else if(o1.getCreateTime().before(o2.getCreateTime())){
                    return 1;
                }
                return 0;
            }
        });
        model.addAttribute("userOrderDtoList",userOrderDtoList);
        return "front/user_orderlist";
    }

    @RequestMapping("/user/user_address.html")
    public String touser_address(HttpServletRequest request,Model model){

        String userId = CookieUtils.getCookieValue(request, "userId");
        TUser user = userService.queryUserInfoByUserId(userId);
        List<TUserAddress> userAddresses = userService.queryAddressByUserId(userId);
        model.addAttribute("userAddresses",userAddresses);
        return "front/user_address";
    }

    @RequestMapping("/user/user_message.html")
    public String touser_message(HttpServletRequest request, HttpServletResponse response, Model model){
        //添加留言信息
        String userId = CookieUtils.getCookieValue(request, TUserConstant.USER_COOKIE_NAME);
        List<TLeaveWordsForOrder> leaveWordsForOrderList = orderService.queryLeaveWordsByUserId(userId);
        model.addAttribute("leaveWordsForOrderList", leaveWordsForOrderList);
        //TODO : 添加店家回复消息

        return "front/user_message";
    }

    @RequestMapping("/user/user_favorites.html")
    public String touser_favorites(){

        return "front/user_favorites";
    }

    @RequestMapping("/user/user_coupon.html")
    public String touser_coupon(){

        return "front/user_coupon";
    }

    @RequestMapping("/user/user_account.html")
    public String touser_account(HttpServletRequest request,Model model){

        String userId = CookieUtils.getCookieValue(request, "userId");
        TUser user = userService.queryUserInfoByUserId(userId);
        model.addAttribute("user", user);
        return "front/user_account";
    }



    /**
     * 添加收货地址
     * @param address_form
     * @return
     */
    @RequestMapping(value = "/user/add_address",method = RequestMethod.POST)
    public String addAddress(@ModelAttribute("address_form")TUserAddress/*AddressDto*/ address_form){

        logger.info("model:{}",address_form);

        boolean ok = userService.insertAddress(address_form);
        return "redirect:/user/confirm_order";
    }

}
