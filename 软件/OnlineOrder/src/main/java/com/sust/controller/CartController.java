package com.sust.controller;

import com.sust.constants.CookieConstant;
import com.sust.dto.ItemDetailDto;
import com.sust.model.ShoppingCart;
import com.sust.model.TEnterpriseInfo;
import com.sust.model.TItem;
import com.sust.service.EnterpriseInfoService;
import com.sust.service.ItemService;
import com.sust.utils.CookieUtils;
import com.sust.utils.JsonUtils;
import com.sust.utils.Result;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@RequestMapping("/user")
@Controller
public class CartController {

    private static final org.slf4j.Logger logger = LoggerFactory.getLogger(CartController.class);

    @Resource
    private ItemService itemService;
    @Resource
    private EnterpriseInfoService enterpriseInfoService;

    @RequestMapping(value = "/additemtocart", method = RequestMethod.POST)
    @ResponseBody
    public String tocartPage(@RequestParam("Number") Integer Number,
                             @RequestParam("itemId") String itemId,
                             HttpServletRequest request,
                             HttpServletResponse response) {
        //TODO:此处应判断是否为登录用户！

        logger.info("number:{}|itemId:{}", Number, itemId);

        addItemToCart(itemId, Number, request, response);

        //String cookieVal = CookieUtils.getCookieValue(request, CookieConstant.SHOPPING_CART_NAME);
        /*List<ItemDetailDto> itemDetailDtos = new ArrayList<>();

        if(cookieVal == null){
            TItem tItem = itemService.queryByitemId(itemId);
            TEnterpriseInfo tEnterpriseInfo = enterpriseInfoService.queryById(tItem.getEnterpriseId());
            ItemDetailDto itemDetailDto = new ItemDetailDto();
            itemDetailDto.setItemDetailDto(tItem,tEnterpriseInfo);
            // 数量设置
            itemDetailDto.setCnt(Number);
            itemDetailDtos.add(itemDetailDto);

        }else {
            Map<String, Integer> cart = JsonUtils.jsonToPojo(cookieVal, HashMap.class);
            List<String> itemIdList = cart.keySet().stream().collect(Collectors.toList());
            List<TItem> itemList = itemService.BatchQueryByitemId(itemIdList);

            for (TItem item : itemList) {
                // 属性设置
                ItemDetailDto itemDetailDto = new ItemDetailDto();
                TEnterpriseInfo tEnterpriseInfo = enterpriseInfoService.queryById(item.getEnterpriseId());
                itemDetailDto.setItemDetailDto(item, tEnterpriseInfo);
                // 数量设置
                itemDetailDto.setCnt(cart.get(item.getItemId()));

                itemDetailDtos.add(itemDetailDto);
            }
        }

        model.addAttribute("itemDetailDtos", itemDetailDtos);*/

        return JsonUtils.objectToJson(Result.build(0, "添加成功"));
    }

    @RequestMapping("/tocart")
    public String tocart(HttpServletRequest request,
                         HttpServletResponse response,
                         Model model) {
        String cookieVal = CookieUtils.getCookieValue(request, CookieConstant.SHOPPING_CART_NAME);
        List<ItemDetailDto> itemDetailDtos = new ArrayList<>();
        if(cookieVal != null) {
            Map<String, Integer> cart = JsonUtils.jsonToPojo(cookieVal, HashMap.class);
            List<String> itemIdList = cart.keySet().stream().collect(Collectors.toList());
            List<TItem> itemList = itemService.BatchQueryByitemId(itemIdList);

            for (TItem item : itemList) {
                // 属性设置
                ItemDetailDto itemDetailDto = new ItemDetailDto();
                TEnterpriseInfo tEnterpriseInfo = enterpriseInfoService.queryById(item.getEnterpriseId());
                itemDetailDto.setItemDetailDto(item, tEnterpriseInfo);
                // 数量设置
                itemDetailDto.setCnt(cart.get(item.getItemId()));

                itemDetailDtos.add(itemDetailDto);
            }
        }
        model.addAttribute("itemDetailDtos", itemDetailDtos);
        return "cart";
    }

    @RequestMapping("/toconfirm_order")
    public String toconfirm_order() {
        return "confirm_order";
    }


    private void addItemToCart(String itemId,
                               Integer cnt,
                               HttpServletRequest request,
                               HttpServletResponse response) {

        String CartCk = CookieUtils.getCookieValue(request, CookieConstant.SHOPPING_CART_NAME);
        //cookie 不存在
        if (CartCk == null) {
            Map<String, Integer> shoppingCart = new HashMap<>();
            this.addGoods(shoppingCart, itemId, cnt);
            String s = JsonUtils.objectToJson(shoppingCart);
            logger.info("cookie:{}", s);
            CookieUtils.setCookie(request, response, CookieConstant.SHOPPING_CART_NAME, s);

        } else { //cookie 存在
            String cookieVal = CookieUtils.getCookieValue(request, CookieConstant.SHOPPING_CART_NAME);
            Map<String, Integer> shoppingCart = JsonUtils.jsonToPojo(cookieVal, HashMap.class);
            this.addGoods(shoppingCart, itemId, cnt);
            CookieUtils.setCookie(request, response, CookieConstant.SHOPPING_CART_NAME, JsonUtils.objectToJson(shoppingCart));
        }
    }

    private void removeItemFromCart(String itemId,
                                    HttpServletRequest request,
                                    HttpServletResponse response) {

        String cookieVal = CookieUtils.getCookieValue(request, CookieConstant.SHOPPING_CART_NAME);
        ShoppingCart shoppingCart = JsonUtils.jsonToPojo(cookieVal, ShoppingCart.class);
        shoppingCart.removeGoods(itemId);
        CookieUtils.setCookie(request, response, CookieConstant.SHOPPING_CART_NAME, JsonUtils.objectToJson(shoppingCart));
    }


    private void addGoods(Map<String, Integer> cart, String itemId, Integer cnt) {
        if (cart.containsKey(itemId)) {
            cart.put(itemId, cart.get(itemId) + cnt);
            return;
        }
        cart.put(itemId, cnt);
    }
}
