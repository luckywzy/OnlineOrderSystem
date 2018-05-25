package com.sust.controller;

import com.sust.dto.AdminOrderDto;
import com.sust.model.TItem;
import com.sust.model.TItemType;
import com.sust.model.TOrder;
import com.sust.service.ItemService;
import com.sust.service.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/admin")
public class AdminUserController {
    @Resource
    private OrderService orderService;
    @Resource
    private ItemService itemService;

    @RequestMapping("/login")
    public String adminLogin() {

        return "back/admin-login";
    }

    @RequestMapping("/admin-index.html")
    public String adminIndex() {

        return "back/admin-index";
    }

    /**
     * 查询准备中的订单
     *
     * @param model
     * @return
     */
    @RequestMapping("/admin-pre-order.html")
    public String adminPreOrder(Model model) {
        Byte orderStatus = new Byte("0");
        List<TOrder> orderList = orderService.queryOrderByStatus(orderStatus);

        model.addAttribute("orderList", orderList);

        return "back/admin-pre-order";
    }

    /**
     * 查询派送中的订单
     *
     * @param model
     * @return
     */
    @RequestMapping("/admin-dis-order.html")
    public String adminDispatchOrder(Model model) {
        Byte orderStatus = new Byte("1");
        List<TOrder> orderList = orderService.queryOrderByStatus(orderStatus);
        model.addAttribute("orderList", orderList);
        return "back/admin-dis-order";
    }

    /**
     * 查询已完成的订单
     *
     * @return
     */
    @RequestMapping("/admin-fin-order.html")
    public String adminFinishOrder(Model model) {
        Byte orderStatus = new Byte("2");
        List<TOrder> orderList = orderService.queryOrderByStatus(orderStatus);
        model.addAttribute("orderList", orderList);

        return "back/admin-fin-order";
    }

    @RequestMapping("/admin-item-manager.html")
    public String adminItemManager() {

        String enterpriseid = "00013000000000000001";
        return "forward:/admin/item/itemOfEnterprise?enterpriseid=" + enterpriseid;
    }

    @RequestMapping("/admin-add-item.html")
    public String adminForm(Model model) {

        List<TItemType> itemTypeList = itemService.queryItemType();
        model.addAttribute("itemTypeList", itemTypeList);

        return "back/admin-add-item";
    }

    @RequestMapping("/admin-modify-item.html")
    public String adminModifyItem(@RequestParam("itemId") String itemId, Model model) {

        TItem item = itemService.queryByitemId(itemId);
        String typeName = null;
        List<TItemType> itemTypeList = itemService.queryItemType();
        int id = 0;
        for (TItemType itemType : itemTypeList) {
            if (itemType.getItemTypeId().equals(item.getItemType())) {
                typeName = itemType.getItemTypeDesc();
                id = itemType.getId();
            }
        }
        itemTypeList.remove(id-1);
        model.addAttribute("item", item);
        model.addAttribute("typeName", typeName);
        model.addAttribute("itemTypeList", itemTypeList);

        return "back/admin-modify-item";
    }
}
