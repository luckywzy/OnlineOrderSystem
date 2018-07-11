package com.sust.model;

import java.util.Date;

public class TItemType {
    private Integer id;

    private Byte itemTypeId;

    private String itemTypeDesc;

    private Date createTime;

    private Date updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Byte getItemTypeId() {
        return itemTypeId;
    }

    public void setItemTypeId(Byte itemTypeId) {
        this.itemTypeId = itemTypeId;
    }

    public String getItemTypeDesc() {
        return itemTypeDesc;
    }

    public void setItemTypeDesc(String itemTypeDesc) {
        this.itemTypeDesc = itemTypeDesc == null ? null : itemTypeDesc.trim();
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
        return "TItemType{" + "id=" + id + ", itemTypeId=" + itemTypeId + ", itemTypeDesc='" + itemTypeDesc + '\''
                + ", createTime=" + createTime + ", updateTime=" + updateTime + '}';
    }
}