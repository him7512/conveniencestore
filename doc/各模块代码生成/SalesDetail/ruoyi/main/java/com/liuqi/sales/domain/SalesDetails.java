package com.liuqi.sales.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.liuqi.common.annotation.Excel;
import com.liuqi.common.core.domain.BaseEntity;

/**
 * 售卖明细查询对象 sales_details
 * 
 * @author liuqi
 * @date 2024-03-13
 */
public class SalesDetails extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 售卖明细ID */
    private Long salesId;

    /** 售卖物品单号 */
    @Excel(name = "售卖物品单号")
    private String goodsCode;

    /** 物品售卖时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "物品售卖时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date salesDate;

    /** 物品售卖类型(1:內售处理;2:外售处理;3:退货处理;4:换货处理;) */
    @Excel(name = "物品售卖类型(1:內售处理;2:外售处理;3:退货处理;4:换货处理;)")
    private String salesStatus;

    /** 售卖明细单号 */
    @Excel(name = "售卖明细单号")
    private String salesCode;

    /** 物品售卖数量(第一单位) */
    @Excel(name = "物品售卖数量(第一单位)")
    private String salesQuantity;

    /** 物品更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "物品更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updateDate;

    /** 物品退换货理由 */
    @Excel(name = "物品退换货理由")
    private String reasonRandc;

    /** 购买人标志id */
    @Excel(name = "购买人标志id")
    private String purchaserId;

    /** 退换货损耗(第一单位) */
    @Excel(name = "退换货损耗(第一单位)")
    private String lossQuantity;

    /** 上一级售卖明细单号 */
    @Excel(name = "上一级售卖明细单号")
    private String salesCodeUplevel;

    /** 物品名称 */
    @Excel(name = "物品名称")
    private String goodsName;

    /** 物品别名 */
    @Excel(name = "物品别名")
    private String goodsAlias;

    public void setSalesId(Long salesId) 
    {
        this.salesId = salesId;
    }

    public Long getSalesId() 
    {
        return salesId;
    }
    public void setGoodsCode(String goodsCode) 
    {
        this.goodsCode = goodsCode;
    }

    public String getGoodsCode() 
    {
        return goodsCode;
    }
    public void setSalesDate(Date salesDate) 
    {
        this.salesDate = salesDate;
    }

    public Date getSalesDate() 
    {
        return salesDate;
    }
    public void setSalesStatus(String salesStatus) 
    {
        this.salesStatus = salesStatus;
    }

    public String getSalesStatus() 
    {
        return salesStatus;
    }
    public void setSalesCode(String salesCode) 
    {
        this.salesCode = salesCode;
    }

    public String getSalesCode() 
    {
        return salesCode;
    }
    public void setSalesQuantity(String salesQuantity) 
    {
        this.salesQuantity = salesQuantity;
    }

    public String getSalesQuantity() 
    {
        return salesQuantity;
    }
    public void setUpdateDate(Date updateDate) 
    {
        this.updateDate = updateDate;
    }

    public Date getUpdateDate() 
    {
        return updateDate;
    }
    public void setReasonRandc(String reasonRandc) 
    {
        this.reasonRandc = reasonRandc;
    }

    public String getReasonRandc() 
    {
        return reasonRandc;
    }
    public void setPurchaserId(String purchaserId) 
    {
        this.purchaserId = purchaserId;
    }

    public String getPurchaserId() 
    {
        return purchaserId;
    }
    public void setLossQuantity(String lossQuantity) 
    {
        this.lossQuantity = lossQuantity;
    }

    public String getLossQuantity() 
    {
        return lossQuantity;
    }
    public void setSalesCodeUplevel(String salesCodeUplevel) 
    {
        this.salesCodeUplevel = salesCodeUplevel;
    }

    public String getSalesCodeUplevel() 
    {
        return salesCodeUplevel;
    }
    public void setGoodsName(String goodsName) 
    {
        this.goodsName = goodsName;
    }

    public String getGoodsName() 
    {
        return goodsName;
    }
    public void setGoodsAlias(String goodsAlias) 
    {
        this.goodsAlias = goodsAlias;
    }

    public String getGoodsAlias() 
    {
        return goodsAlias;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("salesId", getSalesId())
            .append("goodsCode", getGoodsCode())
            .append("salesDate", getSalesDate())
            .append("salesStatus", getSalesStatus())
            .append("salesCode", getSalesCode())
            .append("salesQuantity", getSalesQuantity())
            .append("updateDate", getUpdateDate())
            .append("reasonRandc", getReasonRandc())
            .append("purchaserId", getPurchaserId())
            .append("lossQuantity", getLossQuantity())
            .append("salesCodeUplevel", getSalesCodeUplevel())
            .append("goodsName", getGoodsName())
            .append("goodsAlias", getGoodsAlias())
            .toString();
    }
}
