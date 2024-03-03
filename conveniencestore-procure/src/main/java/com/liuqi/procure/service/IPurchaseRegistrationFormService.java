package com.liuqi.procure.service;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;
import com.liuqi.common.core.domain.AjaxResult;
import com.liuqi.procure.domain.PurchaseForm;
import com.liuqi.procure.domain.PurchaseRegistrationForm;

/**
 * 采购单管理Service接口
 *
 * @author ruoyi
 * @date 2024-02-23
 */
public interface IPurchaseRegistrationFormService extends IService<PurchaseRegistrationForm>
{
    /**
     * 查询采购单管理
     *
     * @param purRegId 采购单管理主键
     * @return 采购单管理
     */
    public PurchaseRegistrationForm selectPurchaseRegistrationFormByPurRegId(Long purRegId);

    /**
     * 查询采购单管理列表
     *
     * @param purchaseRegistrationForm 采购单管理
     * @return 采购单管理集合
     */
    public List<PurchaseRegistrationForm> selectPurchaseRegistrationFormList(PurchaseRegistrationForm purchaseRegistrationForm);

    /**
     * 新增采购单管理
     *
//     * @param purchaseRegistrationForm 采购单管理
     * @param purIdList 绑定该采购单的待采购商品条目id列表
     * @param purStatusList 绑定该采购单的待采购商品条目状态信息列表
     * @return 结果
     */
//    public int insertPurchaseRegistrationForm(PurchaseRegistrationForm purchaseRegistrationForm);
    public AjaxResult insertPurchaseRegistrationForm(String[] purIdList, String[] purStatusList);

    /**
     * 修改采购单管理
     *
     * @param purchaseRegistrationForm 采购单管理
     * @param typeOf 修改类型（审核移送：examine; 审核入库：warehousing）
     * @return 结果
     */
    public AjaxResult updatePurchaseRegistrationForm(PurchaseRegistrationForm purchaseRegistrationForm, String typeOf);

    /**
     * 批量删除采购单管理
     *
     * @param purRegIds 需要删除的采购单管理主键集合
     * @return 结果
     */
    public AjaxResult deletePurchaseRegistrationFormByPurRegIds(String purRegIds);

    /**
     * 删除采购单管理信息
     *
     * @param purRegId 采购单管理主键
     * @return 结果
     */
    public int deletePurchaseRegistrationFormByPurRegId(Long purRegId);
}
