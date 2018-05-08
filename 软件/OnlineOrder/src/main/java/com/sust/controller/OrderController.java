package com.sust.controller;

import com.sust.constants.CookieConstant;
import com.sust.dto.ItemDetailDto;
import com.sust.model.TEnterpriseInfo;
import com.sust.model.TItem;
import com.sust.model.TOrder;
import com.sust.process.CookieProcess;
import com.sust.service.OrderService;
import com.sust.service.UserService;
import com.sust.utils.CookieUtils;
import com.sust.utils.IdUtils;
import com.sust.utils.JsonUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * 关于订单操作的controller
 */
@Controller
@RequestMapping("/user/order")
public class OrderController {

    @Resource
    private CookieProcess cookieProcess;

    @Resource
    private OrderService orderService;
    @Resource
    private UserService userService;

    /**
     * 提交订单数据，生成订单编号，并返回到success_order页面
     * @return
     */
    @RequestMapping(value = "/create_order",method = RequestMethod.POST)
    public String create_order(@RequestParam("addressid")String addressid, HttpServletRequest request, HttpServletResponse response){

        BigDecimal total = cookieProcess.getTotal(request, response);

        List<ItemDetailDto> itemFromCart = cookieProcess.getItemFromCart(CookieUtils.getCookieValue(request, CookieConstant.SHOPPING_CART_NAME));
        TOrder order = new TOrder();
        order.setOrderId(IdUtils.getNextId());
        order.setOrderPrice(total);
        String userId = CookieUtils.getCookieValue(request, "userId");
        String address = userService.queryAddressById(Integer.valueOf(addressid),userId);
        order.setDispatchAddress(address);
        boolean ok = orderService.insertOrder(order);

        return "success_order";
    }



}
