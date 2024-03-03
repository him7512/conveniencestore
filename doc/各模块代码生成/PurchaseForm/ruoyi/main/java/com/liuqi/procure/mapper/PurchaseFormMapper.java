package com.liuqi.procure.mapper;

import java.util.List;
import com.liuqi.procure.domain.PurchaseForm;

/**
 * 采购明细登记Mapper接口
 * 
 * @author liuqi
 * @date 2024-02-21
 */
public interface PurchaseFormMapper 
{
    /**
     * 查询采购明细登记
     * 
     * @param purId 采购明细登记主键
     * @return 采购明细登记
     */
    public PurchaseForm selectPurchaseFormByPurId(Long purId);

    /**
     * 查询采购明细登记列表
     * 
     * @param purchaseForm 采购明细登记
     * @return 采购明细登记集合
     */
    public List<PurchaseForm> selectPurchaseFormList(PurchaseForm purchaseForm);

    /**
     * 新增采购明细登记
     * 
     * @param purchaseForm 采购明细登记
     * @return 结果
     */
    public int insertPurchaseForm(PurchaseForm purchaseForm);

    /**
     * 修改采购明细登记
     * 
     * @param purchaseForm 采购明细登记
     * @return 结果
     */
    public int updatePurchaseForm(PurchaseForm purchaseForm);

    /**
     * 删除采购明细登记
     * 
     * @param purId 采购明细登记主键
     * @return 结果
     */
    public int deletePurchaseFormByPurId(Long purId);

    /**
     * 批量删除采购明细登记
     * 
     * @param purIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deletePurchaseFormByPurIds(String[] purIds);
}
