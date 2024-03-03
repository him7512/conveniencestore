package com.liuqi.procure.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.liuqi.common.annotation.Excel;
import com.liuqi.common.core.domain.BaseEntity;

/**
 * 采购单管理对象 purchase_registration_form
 *
 * @author ruoyi
 * @date 2024-03-03
 */
public class PurchaseRegistrationForm extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 物品采购登记单id */
    private Long purRegId;

    /** 物品采购登记单号 */
    @Excel(name = "物品采购登记单号")
    private String purRegCode;

    /** 采购单部门id */
    @Excel(name = "采购单部门id")
    private Long deptId;

    /** 采购单所属区划编码 */
    @Excel(name = "采购单所属区划编码")
    private String zoningCode;

    /** 采购单生成时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "采购单生成时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createDate;

    /** 采购单更新时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "采购单更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updateDate;

    /** 采购单状态(1:制单中;2:已移交;3:退回;4:作废;5:通过;) */
    @Excel(name = "采购单状态(1:制单中;2:已移交;3:退回;4:作废;5:通过;)")
    private String purRegStatus;

    /** 移送审核人id */
    @Excel(name = "移送审核人id")
    private String reviewbyId;

    /** 移送审核意见 */
    @Excel(name = "移送审核意见")
    private String reviewComment;

    /** 移送审核日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "移送审核日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date reviewTime;

    /** 入库审核人id */
    @Excel(name = "入库审核人id")
    private String warehousingReviewbyId;

    /** 入库审核意见 */
    @Excel(name = "入库审核意见")
    private String warehousingReviewComment;

    /** 入库审核日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "入库审核日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date warehousingReviewTime;

    public void setPurRegId(Long purRegId)
    {
        this.purRegId = purRegId;
    }

    public Long getPurRegId()
    {
        return purRegId;
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
    public void setPurRegStatus(String purRegStatus)
    {
        this.purRegStatus = purRegStatus;
    }

    public String getPurRegStatus()
    {
        return purRegStatus;
    }
    public void setReviewbyId(String reviewbyId)
    {
        this.reviewbyId = reviewbyId;
    }

    public String getReviewbyId()
    {
        return reviewbyId;
    }
    public void setReviewComment(String reviewComment)
    {
        this.reviewComment = reviewComment;
    }

    public String getReviewComment()
    {
        return reviewComment;
    }
    public void setReviewTime(Date reviewTime)
    {
        this.reviewTime = reviewTime;
    }

    public Date getReviewTime()
    {
        return reviewTime;
    }
    public void setWarehousingReviewbyId(String warehousingReviewbyId)
    {
        this.warehousingReviewbyId = warehousingReviewbyId;
    }

    public String getWarehousingReviewbyId()
    {
        return warehousingReviewbyId;
    }
    public void setWarehousingReviewComment(String warehousingReviewComment)
    {
        this.warehousingReviewComment = warehousingReviewComment;
    }

    public String getWarehousingReviewComment()
    {
        return warehousingReviewComment;
    }
    public void setWarehousingReviewTime(Date warehousingReviewTime)
    {
        this.warehousingReviewTime = warehousingReviewTime;
    }

    public Date getWarehousingReviewTime()
    {
        return warehousingReviewTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("purRegId", getPurRegId())
                .append("purRegCode", getPurRegCode())
                .append("deptId", getDeptId())
                .append("zoningCode", getZoningCode())
                .append("createDate", getCreateDate())
                .append("updateDate", getUpdateDate())
                .append("purRegStatus", getPurRegStatus())
                .append("reviewbyId", getReviewbyId())
                .append("reviewComment", getReviewComment())
                .append("reviewTime", getReviewTime())
                .append("warehousingReviewbyId", getWarehousingReviewbyId())
                .append("warehousingReviewComment", getWarehousingReviewComment())
                .append("warehousingReviewTime", getWarehousingReviewTime())
                .toString();
    }
}
