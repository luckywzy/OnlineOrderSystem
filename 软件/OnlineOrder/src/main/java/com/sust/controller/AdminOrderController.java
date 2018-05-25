package com.sust.controller;

import com.google.common.base.Preconditions;
import com.sust.constants.DisPatchPriceConstants;
import com.sust.constants.TUserConstant;
import com.sust.dto.OrderContentDto;
import com.sust.model.TItem;
import com.sust.model.TLeaveWordsForOrder;
import com.sust.model.TOrder;
import com.sust.model.TUserAddress;
import com.sust.service.ItemService;
import com.sust.service.OrderService;
import com.sust.service.UserService;
import com.sust.utils.JsonUtils;
import com.sust.utils.Result;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static com.sust.process.OrderProcess.splitOrderContent;

/**
 * 管理order
 */
@Controller
@RequestMapping("/admin/order")
public class AdminOrderController {

    @Resource
    private OrderService orderService;
    @Resource
    private UserService userService;
    @Resource
    private ItemService itemService;

    @RequestMapping(value = "/updateStatus",method = RequestMethod.POST)
    @ResponseBody
    public String updatStatus(@RequestParam("orderId")String orderId){
        Preconditions.checkNotNull(orderId, "订单Id不可为空");

        boolean ok = orderService.updateOrderStatus(orderId,"1");
        if (ok) {
            return JsonUtils.objectToJson(Result.build(0, "状态更新成功"));
        } else {
            return JsonUtils.objectToJson(Result.build(1, "状态更新失败"));
        }
    }

    @RequestMapping(value = "/finish",method = RequestMethod.POST)
    @ResponseBody
    public String finishOrder(@RequestParam("orderId")String orderId){
        Preconditions.checkNotNull(orderId, "订单Id不可为空");

        boolean ok = orderService.updateOrderStatus(orderId,"2");
        if (ok) {
            return JsonUtils.objectToJson(Result.build(0, "订单已送达"));
        } else {
            return JsonUtils.objectToJson(Result.build(1, "状态更新失败"));
        }
    }

    @RequestMapping("/orderDetail")
    public String toorderDetailpage(@RequestParam("orderId")String orderId, Model model){
        TOrder order =  userService.queryOrderDetailByOrderId(orderId);

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

        BigDecimal dispatchPrice = DisPatchPriceConstants.DISPATCH_PRICE;
        TUserAddress address = userService.queryAddressById(order.getDispatchAddress(), order.getUserId());
        BigDecimal orderPrice = order.getOrderPrice();

         TLeaveWordsForOrder orderleaveWords= orderService.queryLeaveWordsByOrderId(orderId);
        String leaveWords = null;
        if(orderleaveWords == null) {
            leaveWords = TUserConstant.DEFAULT_LEAVE_WORDS;
        }else {
            leaveWords = orderleaveWords.getLeaveWords();
        }

        model.addAttribute("orderId",orderId);
        model.addAttribute("orderContentDtoList",orderContentDtoList);
        model.addAttribute("leaveWords",leaveWords);
        model.addAttribute("dispatchPrice",dispatchPrice);
        model.addAttribute("orderPrice",orderPrice);
        model.addAttribute("address",address);
        return "back/admin-order-detail";

    }
}
