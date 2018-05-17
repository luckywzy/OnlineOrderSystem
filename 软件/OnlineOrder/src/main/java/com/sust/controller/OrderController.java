package com.sust.controller;

import com.sust.constants.CookieConstant;
import com.sust.constants.TUserConstant;
import com.sust.dto.ItemDetailDto;
import com.sust.model.*;
import com.sust.process.CookieProcess;
import com.sust.process.OrderProcess;
import com.sust.service.ItemService;
import com.sust.service.OrderService;
import com.sust.service.UserService;
import com.sust.utils.CookieUtils;
import com.sust.utils.IdUtils;
import com.sust.utils.JsonUtils;
import com.sust.utils.Result;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
    @Resource
    private ItemService itemService;
    /**
     * 提交订单数据，包括订单送达的地址，订单留言信息，生成订单编号，并返回到success_order页面
     * @return
     */
    @RequestMapping(value = "/create_order",method = RequestMethod.POST)
    public String create_order(@RequestParam("addressid")String addressid,
                               @RequestParam("orderPrice")String orderPrice,
                               @RequestParam("leaveWords")String leaveWords,
                               HttpServletRequest request,
                               HttpServletResponse response,
                               RedirectAttributes attributes){

        //BigDecimal total = cookieProcess.getTotal(request, response);

        List<ItemDetailDto> itemFromCart = cookieProcess.getItemFromCart(CookieUtils.getCookieValue(request, CookieConstant.SHOPPING_CART_NAME));
        String userId = CookieUtils.getCookieValue(request, TUserConstant.USER_COOKIE_NAME);
        StringBuilder buf = new StringBuilder();
        for (ItemDetailDto itemDetailDto : itemFromCart) {
            TItem item = itemService.queryByitemId(itemDetailDto.getItemId());
            buf.append(item.getId()).append(",").append(itemDetailDto.getCnt()).append(";");
        }
        TOrder order = new TOrder();

        order.setOrderId(String.valueOf(IdUtils.getNextId()).substring(0,16)); //994789262366916608
        order.setUserId(userId);
        order.setOrderContent(buf.toString());
        order.setOrderPrice(new BigDecimal(orderPrice));
        order.setDispatchAddress(Integer.valueOf(addressid));
        order.setExpectTime("立即送达");
        order.setOrderStatus(Byte.valueOf("0"));

        boolean ok = orderService.insertOrder(order);
        boolean insertLeaveWords = orderService.insertLeaveWords(new TLeaveWordsForOrder(userId, order.getOrderId(), leaveWords));

        attributes.addFlashAttribute("orderId", order.getOrderId());
        attributes.addFlashAttribute("orderPrice", order.getOrderPrice());
        return "redirect:/user/order/success_order";
    }

    @RequestMapping("/success_order")
    public String tosuccess_order(@ModelAttribute("orderId")String orderId,
                                  @ModelAttribute("orderPrice")BigDecimal orderPrice,
                                  Model model){
        model.addAttribute("orderId",orderId);
        model.addAttribute("orderPrice",orderPrice);
        return "success_order";
    }


    /**
     * 添加评论
     * @param orderId
     * @param access
     * @param request
     * @return
     */
    @RequestMapping("/create_access")
    @ResponseBody
    public String create_access(@RequestParam("orderId") String orderId,
                                @RequestParam("access") String access,
                                HttpServletRequest request){

        List<TOrderAccess> accessList = new ArrayList<>();

        String userId = CookieUtils.getCookieValue(request, TUserConstant.USER_COOKIE_NAME);
        TOrder order = orderService.queryOrderByOrderId(orderId);
        Map<String, String> orderContentMap = OrderProcess.splitOrderContent(order.getOrderContent());
        for (Map.Entry<String, String> entry : orderContentMap.entrySet()) {
            TOrderAccess orderAccess = new TOrderAccess();
            //此处为自增ID，不是 itemId
            orderAccess.setItemId(entry.getKey());
            orderAccess.setPayCount(Short.valueOf(entry.getValue()));
            orderAccess.setUserId(userId);
            orderAccess.setAccessWords(access);

            accessList.add(orderAccess);
        }


        boolean ok = orderService.InsertOrderAccess(accessList);

        if(ok){
            return JsonUtils.objectToJson(Result.build(0,"评论成功"));
        }

        return JsonUtils.objectToJson(Result.build(1,"评论失败，稍后重试"));
    }

    @RequestMapping("/cancel_order")
    @ResponseBody
    public String cancel_order(@RequestParam("orderId") String orderId){

        boolean ok = orderService.deleteOrderByOrderId(orderId);
        if(ok){
            return JsonUtils.objectToJson(Result.build(0,"成功删除订单！！！"));
        }

        return JsonUtils.objectToJson(Result.build(1,"删除订单失败，稍后重试"));
    }
}
