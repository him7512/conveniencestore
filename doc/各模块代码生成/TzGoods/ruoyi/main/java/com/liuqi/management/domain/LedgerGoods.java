package com.liuqi.management.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.liuqi.common.annotation.Excel;
import com.liuqi.common.core.domain.BaseEntity;

/**
 * 商品台账信息对象 ledger_goods
 * 
 * @author liuqi
 * @date 2024-03-06
 */
public class LedgerGoods extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 商品台账ID(主键) */
    private Long ledgerId;

    /** 商品单号 */
    @Excel(name = "商品单号")
    private String goodsCode;

    /** 商品库位编码 */
    @Excel(name = "商品库位编码")
    private String storageLocation;

    /** 商品售卖情况(1:仓库存放;2:货架待售;3:部分售出;4:已售罄;) */
    @Excel(name = "商品售卖情况(1:仓库存放;2:货架待售;3:部分售出;4:已售罄;)")
    private String goodsStatus;

    /** 商品所属部门ID */
    @Excel(name = "商品所属部门ID")
    private Long deptId;

    /** 商品所属区划编码 */
    @Excel(name = "商品所属区划编码")
    private String zoningCode;

    /** 商品录入时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "商品录入时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createDate;

    /** 商品更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "商品更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updateDate;

    /** 商品初始第一数量 */
    @Excel(name = "商品初始第一数量")
    private Long firstQuantity;

    /** 商品初始第一单位 */
    @Excel(name = "商品初始第一单位")
    private String firstMeasurement;

    /** 商品初始第二数量 */
    @Excel(name = "商品初始第二数量")
    private Long secondQuantity;

    /** 商品初始第二单位 */
    @Excel(name = "商品初始第二单位")
    private String secondMeasurement;

    /** 第一单位与第二单位代换公式 */
    @Excel(name = "第一单位与第二单位代换公式")
    private String fsSubstitution;

    /** 商品现第一数量 */
    @Excel(name = "商品现第一数量")
    private Long firstQuantityNow;

    /** 商品现第二数量 */
    @Excel(name = "商品现第二数量")
    private Long secondQuantityNow;

    /** 商品单价(第一数量) */
    @Excel(name = "商品单价(第一数量)")
    private Long pricingFirst;

    /** 商品单价(第二数量) */
    @Excel(name = "商品单价(第二数量)")
    private Long pricingSecond;

    /** 商品活动捆绑销售商品单号（逗号隔开） */
    @Excel(name = "商品活动捆绑销售商品单号", readConverterExp = "逗=号隔开")
    private String bundleSellCode;

    /** 商品活动捆绑销售商品单价(第一单位)（逗号隔开） */
    @Excel(name = "商品活动捆绑销售商品单价(第一单位)", readConverterExp = "逗=号隔开")
    private String bundleSellPricing;

    /** 商品目前产生利润 */
    @Excel(name = "商品目前产生利润")
    private String profitUptonow;

    /** 商品质保日期截至 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "商品质保日期截至", width = 30, dateFormat = "yyyy-MM-dd")
    private Date sellByDate;

    /** 是否冻结(1:是;2:否;) */
    @Excel(name = "是否冻结(1:是;2:否;)")
    private String freezeStatus;

    /** 是否废弃(1:是;2:否;) */
    @Excel(name = "是否废弃(1:是;2:否;)")
    private String discardStatus;

    /** 移库状态(1待制单:;2:待审核;3:待维护;4:退回;) */
    @Excel(name = "移库状态(1待制单:;2:待审核;3:待维护;4:退回;)")
    private String transferStatus;

    /** 盘点状态(1待制单:;2:待审核;3:待维护;4:退回;) */
    @Excel(name = "盘点状态(1待制单:;2:待审核;3:待维护;4:退回;)")
    private String checkStatus;

    /** 拆分状态(1待拆分:;2:暂存;) */
    @Excel(name = "拆分状态(1待拆分:;2:暂存;)")
    private String splitStatus;

    /** 其它处置状态(1:待制单;) */
    @Excel(name = "其它处置状态(1:待制单;)")
    private String otherStatus;

    /** 商品名称 */
    @Excel(name = "商品名称")
    private String goodsName;

    /** 商品别名 */
    @Excel(name = "商品别名")
    private String goodsAlias;

    /** 1:移库;2:盘点;3:拆分;4:其它处置; */
    @Excel(name = "1:移库;2:盘点;3:拆分;4:其它处置;")
    private String lockStatus;

    public void setLedgerId(Long ledgerId) 
    {
        this.ledgerId = ledgerId;
    }

    public Long getLedgerId() 
    {
        return ledgerId;
    }
    public void setGoodsCode(String goodsCode) 
    {
        this.goodsCode = goodsCode;
    }

    public String getGoodsCode() 
    {
        return goodsCode;
    }
    public void setStorageLocation(String storageLocation) 
    {
        this.storageLocation = storageLocation;
    }

    public String getStorageLocation() 
    {
        return storageLocation;
    }
    public void setGoodsStatus(String goodsStatus) 
    {
        this.goodsStatus = goodsStatus;
    }

    public String getGoodsStatus() 
    {
        return goodsStatus;
    }
    public void setDeptId(Long deptId) 
    {
        this.deptId = deptId;
    }

    public Long getDeptId() 
    {
        return deptId;
    }
    public void setZoningCode(String zoningCode) 
    {
        this.zoningCode = zoningCode;
    }

    public String getZoningCode() 
    {
        return zoningCode;
    }
    public void setCreateDate(Date createDate) 
    {
        this.createDate = createDate;
    }

    public Date getCreateDate() 
    {
        return createDate;
    }
    public void setUpdateDate(Date updateDate) 
    {
        this.updateDate = updateDate;
    }

    public Date getUpdateDate() 
    {
        return updateDate;
    }
    public void setFirstQuantity(Long firstQuantity) 
    {
        this.firstQuantity = firstQuantity;
    }

    public Long getFirstQuantity() 
    {
        return firstQuantity;
    }
    public void setFirstMeasurement(String firstMeasurement) 
    {
        this.firstMeasurement = firstMeasurement;
    }

    public String getFirstMeasurement() 
    {
        return firstMeasurement;
    }
    public void setSecondQuantity(Long secondQuantity) 
    {
        this.secondQuantity = secondQuantity;
    }

    public Long getSecondQuantity() 
    {
        return secondQuantity;
    }
    public void setSecondMeasurement(String secondMeasurement) 
    {
        this.secondMeasurement = secondMeasurement;
    }

    public String getSecondMeasurement() 
    {
        return secondMeasurement;
    }
    public void setFsSubstitution(String fsSubstitution) 
    {
        this.fsSubstitution = fsSubstitution;
    }

    public String getFsSubstitution() 
    {
        return fsSubstitution;
    }
    public void setFirstQuantityNow(Long firstQuantityNow) 
    {
        this.firstQuantityNow = firstQuantityNow;
    }

    public Long getFirstQuantityNow() 
    {
        return firstQuantityNow;
    }
    public void setSecondQuantityNow(Long secondQuantityNow) 
    {
        this.secondQuantityNow = secondQuantityNow;
    }

    public Long getSecondQuantityNow() 
    {
        return secondQuantityNow;
    }
    public void setPricingFirst(Long pricingFirst) 
    {
        this.pricingFirst = pricingFirst;
    }

    public Long getPricingFirst() 
    {
        return pricingFirst;
    }
    public void setPricingSecond(Long pricingSecond) 
    {
        this.pricingSecond = pricingSecond;
    }

    public Long getPricingSecond() 
    {
        return pricingSecond;
    }
    public void setBundleSellCode(String bundleSellCode) 
    {
        this.bundleSellCode = bundleSellCode;
    }

    public String getBundleSellCode() 
    {
        return bundleSellCode;
    }
    public void setBundleSellPricing(String bundleSellPricing) 
    {
        this.bundleSellPricing = bundleSellPricing;
    }

    public String getBundleSellPricing() 
    {
        return bundleSellPricing;
    }
    public void setProfitUptonow(String profitUptonow) 
    {
        this.profitUptonow = profitUptonow;
    }

    public String getProfitUptonow() 
    {
        return profitUptonow;
    }
    public void setSellByDate(Date sellByDate) 
    {
        this.sellByDate = sellByDate;
    }

    public Date getSellByDate() 
    {
        return sellByDate;
    }
    public void setFreezeStatus(String freezeStatus) 
    {
        this.freezeStatus = freezeStatus;
    }

    public String getFreezeStatus() 
    {
        return freezeStatus;
    }
    public void setDiscardStatus(String discardStatus) 
    {
        this.discardStatus = discardStatus;
    }

    public String getDiscardStatus() 
    {
        return discardStatus;
    }
    public void setTransferStatus(String transferStatus) 
    {
        this.transferStatus = transferStatus;
    }

    public String getTransferStatus() 
    {
        return transferStatus;
    }
    public void setCheckStatus(String checkStatus) 
    {
        this.checkStatus = checkStatus;
    }

    public String getCheckStatus() 
    {
        return checkStatus;
    }
    public void setSplitStatus(String splitStatus) 
    {
        this.splitStatus = splitStatus;
    }

    public String getSplitStatus() 
    {
        return splitStatus;
    }
    public void setOtherStatus(String otherStatus) 
    {
        this.otherStatus = otherStatus;
    }

    public String getOtherStatus() 
    {
        return otherStatus;
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
    public void setLockStatus(String lockStatus) 
    {
        this.lockStatus = lockStatus;
    }

    public String getLockStatus() 
    {
        return lockStatus;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("ledgerId", getLedgerId())
            .append("goodsCode", getGoodsCode())
            .append("storageLocation", getStorageLocation())
            .append("goodsStatus", getGoodsStatus())
            .append("deptId", getDeptId())
            .append("zoningCode", getZoningCode())
            .append("createDate", getCreateDate())
            .append("updateDate", getUpdateDate())
            .append("firstQuantity", getFirstQuantity())
            .append("firstMeasurement", getFirstMeasurement())
            .append("secondQuantity", getSecondQuantity())
            .append("secondMeasurement", getSecondMeasurement())
            .append("fsSubstitution", getFsSubstitution())
            .append("firstQuantityNow", getFirstQuantityNow())
            .append("secondQuantityNow", getSecondQuantityNow())
            .append("pricingFirst", getPricingFirst())
            .append("pricingSecond", getPricingSecond())
            .append("bundleSellCode", getBundleSellCode())
            .append("bundleSellPricing", getBundleSellPricing())
            .append("profitUptonow", getProfitUptonow())
            .append("sellByDate", getSellByDate())
            .append("freezeStatus", getFreezeStatus())
            .append("discardStatus", getDiscardStatus())
            .append("transferStatus", getTransferStatus())
            .append("checkStatus", getCheckStatus())
            .append("splitStatus", getSplitStatus())
            .append("otherStatus", getOtherStatus())
            .append("goodsName", getGoodsName())
            .append("goodsAlias", getGoodsAlias())
            .append("lockStatus", getLockStatus())
            .toString();
    }
}
