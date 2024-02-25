package com.liuqi.procure.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.liuqi.common.core.domain.AjaxResult;
import com.liuqi.common.core.domain.entity.SysUser;
import com.liuqi.common.utils.DateUtils;
import com.liuqi.common.utils.ShiroUtils;
import com.liuqi.procure.controller.common.ajaxResponseCommonStatus;
import com.liuqi.procure.controller.common.procureCommonStatus;
import com.liuqi.procure.controller.tool.GenerateCode;
import com.liuqi.procure.domain.PurchaseForm;
import com.liuqi.procure.mapper.PurchaseFormMapper;
import com.liuqi.procure.service.IPurchaseFormService;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.liuqi.procure.mapper.PurchaseRegistrationFormMapper;
import com.liuqi.procure.domain.PurchaseRegistrationForm;
import com.liuqi.procure.service.IPurchaseRegistrationFormService;
import com.liuqi.common.core.text.Convert;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * 采购单管理Service业务层处理
 *
 * @author ruoyi
 * @date 2024-02-23
 */
@Service
public class PurchaseRegistrationFormServiceImpl extends ServiceImpl<PurchaseRegistrationFormMapper, PurchaseRegistrationForm> implements IPurchaseRegistrationFormService
{
    @Resource
    private PurchaseRegistrationFormMapper purchaseRegistrationFormMapper;
    @Resource
    private IPurchaseFormService purchaseFormService;
    @Resource
    private GenerateCode generateCode;


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
//     * @param purchaseRegistrationForm 采购单管理
     * @param purIdList 绑定该采购单的待采购商品条目id列表
     * @param purStatusList 绑定该采购单的待采购商品条目状态信息列表
     * @return 结果
     */
    @Override
    @Transactional
    public AjaxResult insertPurchaseRegistrationForm(String[] purIdList, String[] purStatusList)
    {
        // 依据传入的商品条目状态信息判断能否审核
        for (String purStatus : purStatusList) {
            if (!procureCommonStatus.pur_status_init.equals(purStatus)) {
                // 如果有非待审核条目直接返回
                return AjaxResult.warn("选择中包含已制单的条目，请重新选择！");
            }
        }

        // 采购单创建
        SysUser currentUser = ShiroUtils.getSysUser();
        PurchaseRegistrationForm purchaseRegistrationForm = new PurchaseRegistrationForm();
        purchaseRegistrationForm.setDeptId(currentUser.getDeptId());
        purchaseRegistrationForm.setPurRegCode(generateCode.generateCode(currentUser.getDeptId()));
        purchaseRegistrationForm.setCreateDate(DateUtils.getDateNowDate("yyyy-MM-dd"));
        purchaseRegistrationForm.setPurRegStatus(procureCommonStatus.pur_reg_status_init);
        // 成功结果返回1
        int restltPurchaseRegistrationForm = purchaseRegistrationFormMapper.insertPurchaseRegistrationForm(purchaseRegistrationForm);
        if (!new Integer(1).equals(restltPurchaseRegistrationForm)) {
            return AjaxResult.error("创建采购单失败，请联系统管理员！");
        }

        // 对物品采购条目状态进行更新
        LambdaUpdateWrapper<PurchaseForm> lambdaUpdateWrapper = new LambdaUpdateWrapper<>();
        lambdaUpdateWrapper.in(PurchaseForm::getPurId, purIdList);
        lambdaUpdateWrapper.set(PurchaseForm::getUpdateDate, DateUtils.getDateNowDate("yyyy-MM-dd"));
        lambdaUpdateWrapper.set(PurchaseForm::getPurRegCode, purchaseRegistrationForm.getPurRegCode());
        boolean resultBooleanPurchaseForm = purchaseFormService.update(lambdaUpdateWrapper);
        // 判断更新结果
        if (resultBooleanPurchaseForm) {
            return AjaxResult.success("生成采购单成功，包含「" + purIdList.length + "」条物品条目。");
        }else {
            return AjaxResult.error("更新物品条目信息失败，请联系系统管理员！");
        }

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
