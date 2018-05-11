package com.sust.enumeration;

public enum  OrderStatusEnum {
    DEFAULT_STA("默认状态",-1),
    PREPARE_STA("正在准备中", 0),
    DISPATCH_STA("正在派送中",1),
    FINISH_STA("订单已送达",2),
    CANCEL_STA("订单已取消",3);


    private String statuName;
    private int statusCode;

    // 普通方法
    public static String getName(int index) {
        for (OrderStatusEnum c : OrderStatusEnum.values()) {
            if (c.getStatusCode() == index) {
                return c.statuName;
            }
        }
        return null;
    }

    public String getStatuName() {
        return statuName;
    }

    public void setStatuName(String statuName) {
        this.statuName = statuName;
    }

    public int getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(int statusCode) {
        this.statusCode = statusCode;
    }

    private OrderStatusEnum(String s, int i) {
        this.statuName = s;
        this.statusCode = i;
    }


}
