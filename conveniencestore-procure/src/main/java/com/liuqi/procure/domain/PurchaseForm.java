package com.liuqi.procure.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.liuqi.common.annotation.Excel;
import com.liuqi.common.core.domain.BaseEntity;

/**
 * 采购明细登记对象 purchase_form
 *
 * @author liuqi
 * @date 2024-02-23
 */
public class PurchaseForm extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 物品采购条目id(主键) */
    private Long purId;

    /** 物品采购登记单id */
    @Excel(name = "物品采购条目单号")
    private String purCode;

    /** 物品采购登记单号 */
    @Excel(name = "物品采购登记单号")
    private String purRegCode;

    /** 录入物品部门id */
    @Excel(name = "录入物品部门id")
    private Long deptId;

    /** 录入物品部门所属区划编码 */
    @Excel(name = "录入物品部门所属区划编码")
    private String zoningCode;

    /** 物品名称 */
    @Excel(name = "物品名称")
    private String goodsName;

    /** 物品第一数量 */
    @Excel(name = "物品第一数量")
    private Long firstQuantity;

    /** 物品第一计量单位 */
    @Excel(name = "物品第一计量单位")
    private String firstMeasurement;

    /** 物品第二数量 */
    @Excel(name = "物品第二数量")
    private Long secondQuantity;

    /** 物品第二计量单位 */
    @Excel(name = "物品第二计量单位")
    private String secondMeasurement;

    /** 该条目生成时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "该条目生成时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createDate;

    /** 该条目更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "该条目更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updateDate;

    /** 条目状态(1:制单中;2:待审核;3:退回;4:作废;5:已入库;) */
    @Excel(name = "条目状态(1:制单中;2:待审核;3:退回;4:作废;5:已入库;)")
    private String purStatus;

    /** 物品说明 */
    @Excel(name = "物品说明")
    private String goodsComment;

    /** 单位物品采购价 */
    @Excel(name = "单位物品采购价")
    private Long purUnitTotalPrice;

    /** 物品采购总价 */
    @Excel(name = "物品采购总价")
    private Long purTotalPrice;

    /** 物品采购单位 */
    @Excel(name = "物品采购单位")
    private String purUnit;

    public void setPurId(Long purId)
    {
        this.purId = purId;
    }

    public Long getPurId()
    {
        return purId;
    }
    public void setPurCode(String purCode)
    {
        this.purCode = purCode;
    }

    public String getPurCode()
    {
        return purCode;
    }
    public void setPurRegCode(String purRegCode)
    {
        this.purRegCode = purRegCode;
    }

    public String getPurRegCode()
    {
        return purRegCode;
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
    public void setGoodsName(String goodsName)
    {
        this.goodsName = goodsName;
    }

    public String getGoodsName()
    {
        return goodsName;
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
    public void setPurStatus(String purStatus)
    {
        this.purStatus = purStatus;
    }

    public String getPurStatus()
    {
        return purStatus;
    }
    public void setGoodsComment(String goodsComment)
    {
        this.goodsComment = goodsComment;
    }

    public String getGoodsComment()
    {
        return goodsComment;
    }
    public void setPurUnitTotalPrice(Long purUnitTotalPrice)
    {
        this.purUnitTotalPrice = purUnitTotalPrice;
    }

    public Long getPurUnitTotalPrice()
    {
        return purUnitTotalPrice;
    }
    public void setPurTotalPrice(Long purTotalPrice)
    {
        this.purTotalPrice = purTotalPrice;
    }

    public Long getPurTotalPrice()
    {
        return purTotalPrice;
    }
    public void setPurUnit(String purUnit)
    {
        this.purUnit = purUnit;
    }

    public String getPurUnit()
    {
        return purUnit;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("purId", getPurId())
                .append("purCode", getPurCode())
                .append("purRegCode", getPurRegCode())
                .append("deptId", getDeptId())
                .append("zoningCode", getZoningCode())
                .append("goodsName", getGoodsName())
                .append("firstQuantity", getFirstQuantity())
                .append("firstMeasurement", getFirstMeasurement())
                .append("secondQuantity", getSecondQuantity())
                .append("secondMeasurement", getSecondMeasurement())
                .append("createDate", getCreateDate())
                .append("updateDate", getUpdateDate())
                .append("purStatus", getPurStatus())
                .append("goodsComment", getGoodsComment())
                .append("purUnitTotalPrice", getPurUnitTotalPrice())
                .append("purTotalPrice", getPurTotalPrice())
                .append("purUnit", getPurUnit())
                .toString();
    }
}