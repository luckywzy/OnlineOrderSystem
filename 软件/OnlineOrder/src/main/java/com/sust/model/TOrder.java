package com.sust.model;

import java.math.BigDecimal;
import java.util.Date;

public class TOrder {
    private Integer id;

    private String orderId;

    private String orderContent;

    private BigDecimal orderPrice;

    private String dispatchAddress;

    private String expectTime;

    private Byte orderStatus;

    private Date createTime;

    private Date updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId == null ? null : orderId.trim();
    }

    public String getOrderContent() {
        return orderContent;
    }

    public void setOrderContent(String orderContent) {
        this.orderContent = orderContent == null ? null : orderContent.trim();
    }

    public BigDecimal getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(BigDecimal orderPrice) {
        this.orderPrice = orderPrice;
    }

    public String getDispatchAddress() {
        return dispatchAddress;
    }

    public void setDispatchAddress(String dispatchAddress) {
        this.dispatchAddress = dispatchAddress == null ? null : dispatchAddress.trim();
    }

    public String getExpectTime() {
        return expectTime;
    }

    public void setExpectTime(String expectTime) {
        this.expectTime = expectTime == null ? null : expectTime.trim();
    }

    public Byte getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(Byte orderStatus) {
        this.orderStatus = orderStatus;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    @Override public String toString() {
        return "TOrder{" + "id=" + id + ", orderId='" + orderId + '\'' + ", orderContent='" + orderContent + '\''
                + ", orderPrice=" + orderPrice + ", dispatchAddress='" + dispatchAddress + '\'' + ", expectTime='"
                + expectTime + '\'' + ", orderStatus=" + orderStatus + ", createTime=" + createTime + ", updateTime="
                + updateTime + '}';
    }
}