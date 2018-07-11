package com.sust.process;

import com.sust.constants.CookieConstant;
import com.sust.dto.ItemDetailDto;
import com.sust.model.ShoppingCart;
import com.sust.model.TEnterpriseInfo;
import com.sust.model.TItem;
import com.sust.service.EnterpriseInfoService;
import com.sust.service.ItemService;
import com.sust.utils.CookieUtils;
import com.sust.utils.JsonUtils;
import org.springframework.context.annotation.Bean;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Resource
public class CookieProcess {
    @Resource
    private ItemService itemService;
    @Resource
    private EnterpriseInfoService enterpriseInfoService;




    public BigDecimal getTotal(HttpServletRequest request,HttpServletResponse response){
        BigDecimal total = null;
        String cookieValue = CookieUtils.getCookieValue(request, CookieConstant.SHOPPING_CART_NAME);
        List<ItemDetailDto> itemDetailDtos = null;
        if(cookieValue != null) {
            itemDetailDtos = getItemFromCart(cookieValue);
        }
        //计算总价格
        for (ItemDetailDto itemDetailDto : itemDetailDtos) {
            double val = 0.0;
            val += itemDetailDto.getItemPrice().doubleValue() * itemDetailDto.getCnt();
            total = new BigDecimal(val);
        }

        return total;
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

    /**
     * 从cookie中得到商品数据
     * @param cookieVal
     */
    public List<ItemDetailDto> getItemFromCart(String cookieVal){
        List<ItemDetailDto> itemDetailDtos = new ArrayList<>();
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

        return itemDetailDtos;
    }

    public List<TItem> getItemsFromCart(String cookieVal){
        List<ItemDetailDto> itemDetailDtos = new ArrayList<>();
        Map<String, Integer> cart = JsonUtils.jsonToPojo(cookieVal, HashMap.class);
        List<String> itemIdList = cart.keySet().stream().collect(Collectors.toList());
        List<TItem> itemList = itemService.BatchQueryByitemId(itemIdList);

        return itemList;
    }
}
