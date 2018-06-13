package com.sust.dto;

import java.util.Date;

public class OrderAccessDto {

    private String accessWords;
    private String userName;
    private Date createTime;

    public String getAccessWords() {
        return accessWords;
    }

    public void setAccessWords(String accessWords) {
        this.accessWords = accessWords;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
