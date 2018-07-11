package com.sust.model;

import java.util.Date;

public class TEnterInfoForDispatch {
    private Integer id;

    private String enterpriseId;

    private String companyName;

    private String enterImg;

    private Byte rank;

    private Short sendPrice;

    private Short dispatchPrice;

    private String dispatchTime;

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

    public String getEnterImg() {
        return enterImg;
    }

    public void setEnterImg(String enterImg) {
        this.enterImg = enterImg == null ? null : enterImg.trim();
    }

    public Byte getRank() {
        return rank;
    }

    public void setRank(Byte rank) {
        this.rank = rank;
    }

    public Short getSendPrice() {
        return sendPrice;
    }

    public void setSendPrice(Short sendPrice) {
        this.sendPrice = sendPrice;
    }

    public Short getDispatchPrice() {
        return dispatchPrice;
    }

    public void setDispatchPrice(Short dispatchPrice) {
        this.dispatchPrice = dispatchPrice;
    }

    public String getDispatchTime() {
        return dispatchTime;
    }

    public void setDispatchTime(String dispatchTime) {
        this.dispatchTime = dispatchTime == null ? null : dispatchTime.trim();
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