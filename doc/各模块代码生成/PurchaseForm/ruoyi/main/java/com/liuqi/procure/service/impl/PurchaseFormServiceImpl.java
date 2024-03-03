package com.liuqi.procure.service.impl;

import java.util.List;
import com.liuqi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.liuqi.procure.mapper.PurchaseFormMapper;
import com.liuqi.procure.domain.PurchaseForm;
import com.liuqi.procure.service.IPurchaseFormService;
import com.liuqi.common.core.text.Convert;

/**
 * 采购明细登记Service业务层处理
 * 
 * @author liuqi
 * @date 2024-02-21
 */
@Service
public class PurchaseFormServiceImpl implements IPurchaseFormService 
{
    @Autowired
    private PurchaseFormMapper purchaseFormMapper;

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
        purchaseForm.setCreateTime(DateUtils.getNowDate());
        return purchaseFormMapper.insertPurchaseForm(purchaseForm);
    }

    /**
     * 修改采购明细登记
     * 
     * @param purchaseForm 采购明细登记
     * @return 结果
     */
    @Override
    public int updatePurchaseForm(PurchaseForm purchaseForm)
    {
        purchaseForm.setUpdateTime(DateUtils.getNowDate());
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
