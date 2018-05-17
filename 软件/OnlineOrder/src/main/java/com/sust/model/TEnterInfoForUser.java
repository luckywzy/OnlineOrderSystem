package com.sust.model;

import java.util.Date;

public class TEnterInfoForUser {
    private Integer id;

    private String enterpriseId;

    private String companyName;

    private String address;

    private String phoneNum;

    private String featureItems;

    private String preferentialActivities;

    private String parkingSpace;

    private String businessHours;

    private String wifi;

    private String averagePrice;

    private String enterImg;

    private Date createTime;

    private Date updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEnterpriseId() {
        return enterpriseId;
    }

    public void setEnterpriseId(String enterpriseId) {
        this.enterpriseId = enterpriseId == null ? null : enterpriseId.trim();
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName == null ? null : companyName.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum == null ? null : phoneNum.trim();
    }

    public String getFeatureItems() {
        return featureItems;
    }

    public void setFeatureItems(String featureItems) {
        this.featureItems = featureItems == null ? null : featureItems.trim();
    }

    public String getPreferentialActivities() {
        return preferentialActivities;
    }

    public void setPreferentialActivities(String preferentialActivities) {
        this.preferentialActivities = preferentialActivities == null ? null : preferentialActivities.trim();
    }

    public String getParkingSpace() {
        return parkingSpace;
    }

    public void setParkingSpace(String parkingSpace) {
        this.parkingSpace = parkingSpace == null ? null : parkingSpace.trim();
    }

    public String getBusinessHours() {
        return businessHours;
    }

    public void setBusinessHours(String businessHours) {
        this.businessHours = businessHours == null ? null : businessHours.trim();
    }

    public String getWifi() {
        return wifi;
    }

    public void setWifi(String wifi) {
        this.wifi = wifi == null ? null : wifi.trim();
    }

    public String getAveragePrice() {
        return averagePrice;
    }

    public void setAveragePrice(String averagePrice) {
        this.averagePrice = averagePrice == null ? null : averagePrice.trim();
    }

    public String getEnterImg() {
        return enterImg;
    }

    public void setEnterImg(String enterImg) {
        this.enterImg = enterImg == null ? null : enterImg.trim();
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