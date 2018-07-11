package com.sust.process;

import com.google.common.base.Splitter;
import com.sust.constants.OrderContentConstant;

import java.util.Map;

public class OrderProcess {

    public static Map<String,String> splitOrderContent(String orderContent){
        int index = orderContent.lastIndexOf(OrderContentConstant.ITEM_SPLIT);
        orderContent = orderContent.substring(0,index);
        Map<String,String> itemIdAndCnt = Splitter.on(OrderContentConstant.ITEM_SPLIT).withKeyValueSeparator(OrderContentConstant.ITEMID_AND_CNT_SPLIT).split(orderContent);
        return itemIdAndCnt;
    }
}
