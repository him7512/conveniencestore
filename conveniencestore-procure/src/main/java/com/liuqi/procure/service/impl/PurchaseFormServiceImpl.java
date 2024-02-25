package com.liuqi.procure.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.liuqi.common.core.domain.AjaxResult;
import com.liuqi.common.core.domain.entity.SysUser;
import com.liuqi.common.utils.DateUtils;
import com.liuqi.common.utils.ShiroUtils;
import com.liuqi.procure.controller.common.procureCommonStatus;
import com.liuqi.procure.controller.tool.GenerateCode;
import org.springframework.stereotype.Service;
import com.liuqi.procure.mapper.PurchaseFormMapper;
import com.liuqi.procure.domain.PurchaseForm;
import com.liuqi.procure.service.IPurchaseFormService;
import com.liuqi.common.core.text.Convert;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * 采购明细登记Service业务层处理
 *
 * @author liuqi
 * @date 2024-02-23
 */
@Service
public class PurchaseFormServiceImpl extends ServiceImpl<PurchaseFormMapper, PurchaseForm> implements IPurchaseFormService
{
    @Resource
    private PurchaseFormMapper purchaseFormMapper;
    @Resource
    private GenerateCode generateCode;

    /**
     * 查询采购明细登记
     *
     * @param purId 采购明细登记主键
     * @return 采购明细登记
     */
    @Override
    public PurchaseForm selectPurchaseFormByPurId(Long purId)
    {
        return purchaseFormMapper.selectPurchaseFormByPurId(purId);
    }

    /**
     * 查询采购明细登记列表
     *
     * @param purchaseForm 采购明细登记
     * @return 采购明细登记
     */
    @Override
    public List<PurchaseForm> selectPurchaseFormList(PurchaseForm purchaseForm)
    {
        return purchaseFormMapper.selectPurchaseFormList(purchaseForm);
    }

    /**
     * 新增采购明细登记
     *
     * @param purchaseForm 采购明细登记
     * @return 结果
     */
    @Override
    public int insertPurchaseForm(PurchaseForm purchaseForm)
    {
        SysUser currentUser = ShiroUtils.getSysUser();
        purchaseForm.setDeptId(currentUser.getDeptId());
        purchaseForm.setPurCode(generateCode.generateCode(currentUser.getDeptId()));
        purchaseForm.setZoningCode("");
        purchaseForm.setPurStatus(procureCommonStatus.pur_status_init);
        purchaseForm.setCreateDate(DateUtils.getDateNowDate("yyyy-MM-dd"));
        return purchaseFormMapper.insertPurchaseForm(purchaseForm);
    }

    /**
     * 修改采购明细登记
     *
     * @param purchaseForm 采购明细登记
     * @return 结果
     */
    @Override
    @Transactional
    public int updatePurchaseForm(PurchaseForm purchaseForm)
    {
        purchaseForm.setUpdateDate(DateUtils.getDateNowDate("yyyy-MM-dd")); // 条目更新时间
        return purchaseFormMapper.updatePurchaseForm(purchaseForm);
    }

    /**
     * 批量删除采购明细登记
     *
     * @param purIds 需要删除的采购明细登记主键
     * @return 结果
     */
    @Override
    public int deletePurchaseFormByPurIds(String purIds)
    {
        return purchaseFormMapper.deletePurchaseFormByPurIds(Convert.toStrArray(purIds));
    }

    /**
     * 删除采购明细登记信息
     *
     * @param purId 采购明细登记主键
     * @return 结果
     */
    @Override
    public int deletePurchaseFormByPurId(Long purId)
    {
        return purchaseFormMapper.deletePurchaseFormByPurId(purId);
    }
}