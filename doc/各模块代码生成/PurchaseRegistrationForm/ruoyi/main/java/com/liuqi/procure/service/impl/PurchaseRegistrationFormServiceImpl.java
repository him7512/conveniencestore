package com.liuqi.procure.service.impl;

import java.util.List;
import com.liuqi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.liuqi.procure.mapper.PurchaseRegistrationFormMapper;
import com.liuqi.procure.domain.PurchaseRegistrationForm;
import com.liuqi.procure.service.IPurchaseRegistrationFormService;
import com.liuqi.common.core.text.Convert;

/**
 * 采购单管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-02-21
 */
@Service
public class PurchaseRegistrationFormServiceImpl implements IPurchaseRegistrationFormService 
{
    @Autowired
    private PurchaseRegistrationFormMapper purchaseRegistrationFormMapper;

    /**
     * 查询采购单管理
     * 
     * @param purRegId 采购单管理主键
     * @return 采购单管理
     */
    @Override
    public PurchaseRegistrationForm selectPurchaseRegistrationFormByPurRegId(Long purRegId)
    {
        return purchaseRegistrationFormMapper.selectPurchaseRegistrationFormByPurRegId(purRegId);
    }

    /**
     * 查询采购单管理列表
     * 
     * @param purchaseRegistrationForm 采购单管理
     * @return 采购单管理
     */
    @Override
    public List<PurchaseRegistrationForm> selectPurchaseRegistrationFormList(PurchaseRegistrationForm purchaseRegistrationForm)
    {
        return purchaseRegistrationFormMapper.selectPurchaseRegistrationFormList(purchaseRegistrationForm);
    }

    /**
     * 新增采购单管理
     * 
     * @param purchaseRegistrationForm 采购单管理
     * @return 结果
     */
    @Override
    public int insertPurchaseRegistrationForm(PurchaseRegistrationForm purchaseRegistrationForm)
    {
        purchaseRegistrationForm.setCreateTime(DateUtils.getNowDate());
        return purchaseRegistrationFormMapper.insertPurchaseRegistrationForm(purchaseRegistrationForm);
    }

    /**
     * 修改采购单管理
     * 
     * @param purchaseRegistrationForm 采购单管理
     * @return 结果
     */
    @Override
    public int updatePurchaseRegistrationForm(PurchaseRegistrationForm purchaseRegistrationForm)
    {
        purchaseRegistrationForm.setUpdateTime(DateUtils.getNowDate());
        return purchaseRegistrationFormMapper.updatePurchaseRegistrationForm(purchaseRegistrationForm);
    }

    /**
     * 批量删除采购单管理
     * 
     * @param purRegIds 需要删除的采购单管理主键
     * @return 结果
     */
    @Override
    public int deletePurchaseRegistrationFormByPurRegIds(String purRegIds)
    {
        return purchaseRegistrationFormMapper.deletePurchaseRegistrationFormByPurRegIds(Convert.toStrArray(purRegIds));
    }

    /**
     * 删除采购单管理信息
     * 
     * @param purRegId 采购单管理主键
     * @return 结果
     */
    @Override
    public int deletePurchaseRegistrationFormByPurRegId(Long purRegId)
    {
        return purchaseRegistrationFormMapper.deletePurchaseRegistrationFormByPurRegId(purRegId);
    }
}
