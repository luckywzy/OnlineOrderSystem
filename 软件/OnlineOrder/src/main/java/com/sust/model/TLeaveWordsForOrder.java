package com.sust.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class TLeaveWordsForOrder {
    private Integer id;

    private String userId;

    private String orderId;

    private String leaveWords;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    private Date updateTime;

    public TLeaveWordsForOrder() {
    }

    public TLeaveWordsForOrder(String userId, String orderId, String leaveWords) {
        this.userId = userId;
        this.orderId = orderId;
        this.leaveWords = leaveWords;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId == null ? null : orderId.trim();
    }

    public String getLeaveWords() {
        return leaveWords;
    }

    public void setLeaveWords(String leaveWords) {
        this.leaveWords = leaveWords == null ? null : leaveWords.trim();
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
}