package com.liuqi.procure.mapper;

import java.util.List;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.liuqi.procure.domain.PurchaseRegistrationForm;

/**
 * 采购单管理Mapper接口
 *
 * @author ruoyi
 * @date 2024-03-03
 */
public interface PurchaseRegistrationFormMapper extends BaseMapper<PurchaseRegistrationForm>
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
     * @param purchaseRegistrationForm 采购单管理
     * @return 结果
     */
    public int insertPurchaseRegistrationForm(PurchaseRegistrationForm purchaseRegistrationForm);

    /**
     * 修改采购单管理
     *
     * @param purchaseRegistrationForm 采购单管理
     * @return 结果
     */
    public int updatePurchaseRegistrationForm(PurchaseRegistrationForm purchaseRegistrationForm);

    /**
     * 删除采购单管理
     *
     * @param purRegId 采购单管理主键
     * @return 结果
     */
    public int deletePurchaseRegistrationFormByPurRegId(Long purRegId);

    /**
     * 批量删除采购单管理
     *
     * @param purRegIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deletePurchaseRegistrationFormByPurRegIds(String[] purRegIds);
}
