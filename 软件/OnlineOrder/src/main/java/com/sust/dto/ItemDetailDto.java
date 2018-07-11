package com.sust.dto;

import com.sust.model.TEnterpriseInfo;
import com.sust.model.TItem;

import java.math.BigDecimal;

public class ItemDetailDto {
    private String enterpriseId;

    private String itemId;

    private String itemName;

    private BigDecimal itemPrice;

    private String itemPic;

    private String itemDesc;

    private String itemType;

    private String enterpriseCompanyName;

    private String enterpriseAddress;

    private Integer cnt;

    public Integer getCnt() {
        return cnt;
    }

    public void setCnt(Integer cnt) {
        this.cnt = cnt;
    }

    public String getEnterpriseId() {
        return enterpriseId;
    }

    public void setEnterpriseId(String enterpriseId) {
        this.enterpriseId = enterpriseId;
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public BigDecimal getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(BigDecimal itemPrice) {
        this.itemPrice = itemPrice;
    }

    public String getItemPic() {
        return itemPic;
    }

    public void setItemPic(String itemPic) {
        this.itemPic = itemPic;
    }

    public String getItemDesc() {
        return itemDesc;
    }

    public void setItemDesc(String itemDesc) {
        this.itemDesc = itemDesc;
    }

    public String getItemType() {
        return itemType;
    }

    public void setItemType(String itemType) {
        this.itemType = itemType;
    }

    public String getEnterpriseCompanyName() {
        return enterpriseCompanyName;
    }

    public void setEnterpriseCompanyName(String enterpriseCompanyName) {
        this.enterpriseCompanyName = enterpriseCompanyName;
    }

    public String getEnterpriseAddress() {
        return enterpriseAddress;
    }

    public void setEnterpriseAddress(String enterpriseAddress) {
        this.enterpriseAddress = enterpriseAddress;
    }

    public void setItemDetailDto(TItem tItem, TEnterpriseInfo tEnterpriseInfo){
        this.setItemId(tItem.getItemId());
        this.setItemName(tItem.getItemName());
        this.setItemPrice(tItem.getItemPrice());
        this.setItemPic(tItem.getItemPic());
        this.setItemDesc(tItem.getItemDesc());
        this.setEnterpriseId(tEnterpriseInfo.getEnterpriseId());
        this.setEnterpriseCompanyName(tEnterpriseInfo.getEnterpriseCompanyName());
        this.setEnterpriseAddress(tEnterpriseInfo.getEnterpriseAddress());
    }
}
