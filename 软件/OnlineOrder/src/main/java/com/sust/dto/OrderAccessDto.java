package com.sust.dto;

public class OrderAccessDto {

    private String accessWords;
    private String userName;
    private String createTime;

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

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
}
