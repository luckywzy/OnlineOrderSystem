package com.sust.model;

import java.util.Date;

public class TUser {
    private Integer id;

    private String userId;

    private String username;

    private String password;

    private Byte rank;

    private Byte age;

    private Date birth;

    private Byte use;

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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Byte getRank() {
        return rank;
    }

    public void setRank(Byte rank) {
        this.rank = rank;
    }

    public Byte getAge() {
        return age;
    }

    public void setAge(Byte age) {
        this.age = age;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public Byte getUse() {
        return use;
    }

    public void setUse(Byte use) {
        this.use = use;
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
        return "TUser{" + "id=" + id + ", userId='" + userId + '\'' + ", username='" + username + '\'' + ", password='"
                + password + '\'' + ", rank=" + rank + ", age=" + age + ", birth=" + birth + ", use=" + use
                + ", createTime=" + createTime + ", updateTime=" + updateTime + '}';
    }
}