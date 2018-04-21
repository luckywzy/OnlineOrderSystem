package com.sust.model;

import java.util.Date;

public class TEnterpriseInfo {
    private Integer id;

    private String enterpriseId;

    private String enterpriseCompanyName;

    private String enterpriseLinkMan;

    private String enterprisePhoneNum;

    private String enterpriseAddress;

    private String enterpriseEmail;

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

    public String getEnterpriseCompanyName() {
        return enterpriseCompanyName;
    }

    public void setEnterpriseCompanyName(String enterpriseCompanyName) {
        this.enterpriseCompanyName = enterpriseCompanyName == null ? null : enterpriseCompanyName.trim();
    }

    public String getEnterpriseLinkMan() {
        return enterpriseLinkMan;
    }

    public void setEnterpriseLinkMan(String enterpriseLinkMan) {
        this.enterpriseLinkMan = enterpriseLinkMan == null ? null : enterpriseLinkMan.trim();
    }

    public String getEnterprisePhoneNum() {
        return enterprisePhoneNum;
    }

    public void setEnterprisePhoneNum(String enterprisePhoneNum) {
        this.enterprisePhoneNum = enterprisePhoneNum == null ? null : enterprisePhoneNum.trim();
    }

    public String getEnterpriseAddress() {
        return enterpriseAddress;
    }

    public void setEnterpriseAddress(String enterpriseAddress) {
        this.enterpriseAddress = enterpriseAddress == null ? null : enterpriseAddress.trim();
    }

    public String getEnterpriseEmail() {
        return enterpriseEmail;
    }

    public void setEnterpriseEmail(String enterpriseEmail) {
        this.enterpriseEmail = enterpriseEmail == null ? null : enterpriseEmail.trim();
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