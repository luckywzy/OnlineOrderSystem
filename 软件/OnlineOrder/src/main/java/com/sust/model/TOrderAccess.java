package com.sust.model;

import java.util.Date;

public class TOrderAccess {
    private Integer id;

    private String userId;

    private String itemId;

    private Short payCount;

    private String accessWords;

    private Date createTime;

    private Date updateTime;

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

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId == null ? null : itemId.trim();
    }

    public Short getPayCount() {
        return payCount;
    }

    public void setPayCount(Short payCount) {
        this.payCount = payCount;
    }

    public String getAccessWords() {
        return accessWords;
    }

    public void setAccessWords(String accessWords) {
        this.accessWords = accessWords == null ? null : accessWords.trim();
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