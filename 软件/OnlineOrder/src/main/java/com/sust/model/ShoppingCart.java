package com.sust.model;

import java.util.HashMap;
import java.util.Map;

/**
 * 购物车实现类，存放商品编号和数量
 */
public class ShoppingCart {
    public ShoppingCart() {
        this.cart = new HashMap<>();
    }

    private Map<String,Integer> cart;

    public Map<String, Integer> getCart() {
        return cart;
    }

    public void setCart(Map<String, Integer> cart) {
        this.cart = cart;
    }

    public void addGoods(String itemId, Integer cnt){
        if(cart.containsKey(itemId)){
            cart.put(itemId, cart.get(itemId) + cnt);
        }
        cart.put(itemId, cnt);
    }

    public void removeGoods(String itemId){
        if(cart.containsKey(itemId)){
            cart.remove(itemId);
        }
    }


}
