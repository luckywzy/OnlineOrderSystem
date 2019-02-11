package com.sust.controller.admin;

import com.sust.constants.UserConstant;
import com.sust.dto.AdminOrderDto;
import com.sust.model.TItem;
import com.sust.model.TItemType;
import com.sust.model.TOrder;
import com.sust.model.TUser;
import com.sust.service.ItemService;
import com.sust.service.OrderService;
import com.sust.service.UserService;
import com.sust.utils.JsonUtils;
import com.sust.utils.Page;
import com.sust.utils.Result;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/admin")
public class AdminUserController {
    @Resource
    private OrderService orderService;
    @Resource
    private ItemService itemService;
    @Resource
    private UserService userService;

    @RequestMapping("/admin-login.html")
    public String adminLogin() {

        return "back/admin-login";
    }

    @RequestMapping("/login")
    @ResponseBody
    public String doLogin(@RequestParam("username") String username,
                          @RequestParam("password") String password,
                          HttpServletRequest request,
                          HttpServletResponse response){
        TUser user = userService.queryUserInfoByNameAndPwd(username, password);
        if(user != null && user.getRank().compareTo(UserConstant.ADMIN_USER_RANK)>= 0){
            request.getSession().setAttribute("admin", user);
            return JsonUtils.objectToJson(Result.build(0, "登录成功"));
        }else {
            return JsonUtils.objectToJson(Result.build(1, "非商家人员"));
        }
    }


    @RequestMapping("/admin-index.html")
    public String adminIndex() {

       // return "back/admin-index";
        return "forward:/admin/admin-pre-order.html";
    }

    /**
     * 查询准备中的订单
     *
     * @param model
     * @return
     */
    @RequestMapping("/admin-pre-order.html")
    public String adminPreOrder(@RequestParam(value = "curpage", required = false) Integer curpage, Model model) {

        //分页数据
        Page page = new Page(10);
        page.vaildCurrentPageNum(curpage);
        Byte orderStatus = new Byte("0");
        List<TOrder> orderList = orderService.queryOrderByStatus(page.getCurrentPage(), page.getPageNumber(),orderStatus);

        model.addAttribute("orderList", orderList);

        page.updatePageInfo(orderList);
        model.addAttribute("page", page);
        return "back/admin-pre-order";
    }

    /**
     * 查询派送中的订单
     *
     * @param model
     * @return
     */
    @RequestMapping("/admin-dis-order.html")
    public String adminDispatchOrder(@RequestParam(value = "curpage", required = false) Integer curpage, Model model) {
        //分页数据
        Page page = new Page(10);
        page.vaildCurrentPageNum(curpage);

        Byte orderStatus = new Byte("1");
        List<TOrder> orderList = orderService.queryOrderByStatus(page.getCurrentPage(), page.getPageNumber(),orderStatus);
        model.addAttribute("orderList", orderList);
        page.updatePageInfo(orderList);
        model.addAttribute("page", page);
        return "back/admin-dis-order";
    }

    /**
     * 查询已完成的订单
     *
     * @return
     */
    @RequestMapping("/admin-fin-order.html")
    public String adminFinishOrder(@RequestParam(value = "curpage", required = false) Integer curpage, Model model) {
        //分页数据
        Page page = new Page(10);
        page.vaildCurrentPageNum(curpage);

        Byte orderStatus = new Byte("2");
        List<TOrder> orderList = orderService.queryOrderByStatus(page.getCurrentPage(), page.getPageNumber(),orderStatus);
        model.addAttribute("orderList", orderList);
        page.updatePageInfo(orderList);
        model.addAttribute("page", page);
        return "back/admin-fin-order";
    }

    @RequestMapping("/admin-item-manager.html")
    public String list(@RequestParam(value = "curpage", required = false) Integer curpage, @RequestParam(value = "enterpriseid", required = false) String enterpriseid, Model model) {

        //分页数据
        Page page = new Page(10);
        page.vaildCurrentPageNum(curpage);

        enterpriseid="00013000000000000001";
        List<TItem> items = itemService.queryByPage(page.getCurrentPage(), page.getPageNumber(),enterpriseid);
        model.addAttribute("items", items);
        model.addAttribute("enterpriseid", enterpriseid);
        page.updatePageInfo(items);
        model.addAttribute("page", page);
        return "back/admin-item-manager";
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

    @RequestMapping("/admin-404.html")
    public String adminNotFound() {
        return "back/admin-404";
    }

    @RequestMapping("/quit")
    @ResponseBody
    public String adminquit(HttpServletRequest request, HttpServletResponse response){
        request.getSession().removeAttribute(UserConstant.ADMIN_SESSION_NAME);

        return JsonUtils.objectToJson(Result.build(0, "注销成功"));
    }
}
