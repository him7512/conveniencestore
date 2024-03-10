package com.liuqi.procure.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.liuqi.common.core.domain.AjaxResult;
import com.liuqi.common.core.domain.entity.SysUser;
import com.liuqi.common.utils.DateUtils;
import com.liuqi.common.utils.ShiroUtils;
import com.liuqi.common.utils.StringUtils;
import com.liuqi.management.domain.LedgerGoods;
import com.liuqi.management.service.ILedgerGoodsService;
import com.liuqi.procure.controller.common.ajaxResponseCommonStatus;
import com.liuqi.procure.controller.common.procureCommonStatus;
import com.liuqi.procure.controller.tool.GenerateCode;
import com.liuqi.procure.domain.PurchaseForm;
import com.liuqi.procure.mapper.PurchaseFormMapper;
import com.liuqi.procure.service.IPurchaseFormService;
import org.apache.poi.ss.formula.functions.T;
import org.apache.shiro.SecurityUtils;
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
    private PurchaseFormMapper purchaseFormMapper;
    @Resource
    private PurchaseRegistrationFormMapper purchaseRegistrationFormMapper;
    @Resource
    private IPurchaseFormService purchaseFormService;
    @Resource
    private ILedgerGoodsService iLedgerGoodsService;
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
            return AjaxResult.error("创建采购单失败，请联系系统管理员！");
        }

        // 对物品采购条目状态进行更新
        LambdaUpdateWrapper<PurchaseForm> lambdaUpdateWrapper = new LambdaUpdateWrapper<>();
        lambdaUpdateWrapper.in(PurchaseForm::getPurId, purIdList);
        lambdaUpdateWrapper.set(PurchaseForm::getUpdateDate, DateUtils.getDateNowDate("yyyy-MM-dd"));
        lambdaUpdateWrapper.set(PurchaseForm::getPurRegCode, purchaseRegistrationForm.getPurRegCode());
        lambdaUpdateWrapper.set(PurchaseForm::getPurStatus, procureCommonStatus.pur_status_audit);
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
     * @param typeOf 修改类型（审核移送：examine; 审核入库：warehousing）
     * @param dataList 如果是入库操作 会传入该入库单下的商品数据(JSON)
     * @return 结果
     */
    @Override
    @Transactional
    public AjaxResult updatePurchaseRegistrationForm(PurchaseRegistrationForm purchaseRegistrationForm, String typeOf, String dataList)
    {
        /*
            purchaseRegistrationForm 登记单
            purchaseForm 物品采购条目
        */
        PurchaseForm purchaseForm = new PurchaseForm();
        SysUser currentUser = ShiroUtils.getSysUser();
        LambdaUpdateWrapper<PurchaseForm> lambdaUpdateWrapper = new LambdaUpdateWrapper<>();
        purchaseRegistrationForm.setUpdateDate(DateUtils.getDateNowDate("yyyy-MM-dd"));
        // 移交审核
        if ("examine".equals(typeOf)) {
            purchaseRegistrationForm.setReviewbyId(String.valueOf(currentUser.getUserId()));
            purchaseRegistrationForm.setReviewTime(DateUtils.getDateNowDate("yyyy-MM-dd"));
        }
        // 入库
        if ("warehousing".equals(typeOf)) {
            purchaseRegistrationForm.setWarehousingReviewbyId(String.valueOf(currentUser.getUserId()));
            purchaseRegistrationForm.setWarehousingReviewTime(DateUtils.getDateNowDate("yyyy-MM-dd"));
            // 填写商品台账表
            PurchaseForm purchaseFormTem = new PurchaseForm();
            JSONArray jsonArray = JSONArray.parseArray(dataList);
            for (int i=0; i<jsonArray.size(); i++) {
                purchaseFormTem = JSONObject.toJavaObject(jsonArray.getJSONObject(i), PurchaseForm.class);
                /*System.out.println(purchaseFormTem);*/
                LedgerGoods ledgerGoodsTem = new LedgerGoods();
                // 非空-商品单号写入
                ledgerGoodsTem.setGoodsCode(generateCode.generateCode(purchaseFormTem.getDeptId()));  // 商品单号
                // 非空-部门id写入
                ledgerGoodsTem.setDeptId(purchaseFormTem.getDeptId());
                // 非空-名称写入
                ledgerGoodsTem.setGoodsName(purchaseFormTem.getGoodsName());  // 商品名称
                // 非空-状态写入
                ledgerGoodsTem.setGoodsStatus(String.valueOf(1));   // 物品售卖情况：仓库存放
                ledgerGoodsTem.setFreezeStatus(String.valueOf(2));  // 是否冻结：否
                ledgerGoodsTem.setDiscardStatus(String.valueOf(2)); // 是否废弃：否
                ledgerGoodsTem.setTransferStatus(String.valueOf(1));    // 移库状态：待制单
                ledgerGoodsTem.setCheckStatus(String.valueOf(1));   // 盘点状态：待制单
                ledgerGoodsTem.setSplitStatus(String.valueOf(1));   // 拆分状态：待拆分
                ledgerGoodsTem.setOtherStatus(String.valueOf(1));   // 其它状态：待制单
                // 非空-录入时间写入
                ledgerGoodsTem.setCreateDate(DateUtils.getDateNowDate("yyyy-MM-dd"));  // 商品录入时间
                // 非空-商品第一数量and单位写入
                ledgerGoodsTem.setFirstQuantity(purchaseFormTem.getFirstQuantity());   // 商品初始第一数量
                ledgerGoodsTem.setFirstMeasurement(purchaseFormTem.getFirstMeasurement()); // 商品初始第一单位
                ledgerGoodsTem.setFirstQuantityNow(purchaseFormTem.getFirstQuantity()); // 商品现第一数量
                // 常规-如果存在物品第二数量&&单位时，写入商品第二数量and单位
                if (!Objects.isNull(purchaseFormTem.getSecondQuantity()) && !StringUtils.isEmpty(purchaseFormTem.getSecondMeasurement())) {
                    ledgerGoodsTem.setSecondQuantity(purchaseFormTem.getSecondQuantity());  // 商品初始第二数量
                    ledgerGoodsTem.setSecondMeasurement(purchaseFormTem.getSecondMeasurement());  // 商品初始第二单位
                    ledgerGoodsTem.setSecondQuantityNow(purchaseFormTem.getSecondQuantity()); // 商品现第二数量
                }
                // 常规-商品说明写入
                ledgerGoodsTem.setGoodsComment(purchaseFormTem.getGoodsComment());  // 商品说明
                /*System.out.println(ledgerGoodsTem);*/
                AjaxResult ledgerGoodsInsertResult =  iLedgerGoodsService.insertLedgerGoods(ledgerGoodsTem);
                if (ledgerGoodsInsertResult.isError()) {
                    return AjaxResult.error("入库写入台账信息失败，请联系系统管理员！");
                }
                // 查看入库数量是否与原本数量相符
                PurchaseForm purchaseFormOld = purchaseFormMapper.selectPurchaseFormByPurId(purchaseFormTem.getPurId());
                // 第一数量与第一单位相比
                // 更改可能为null的值
                if (purchaseFormTem.getFirstQuantity() == null) {
                    purchaseFormTem.setFirstQuantity(0L);
                }
                if (purchaseFormTem.getFirstMeasurement() == null || purchaseFormTem.getFirstMeasurement() == "") {
                    purchaseFormTem.setFirstMeasurement("空");
                }
                if (purchaseFormTem.getSecondQuantity() == null) {
                    purchaseFormTem.setSecondQuantity(0L);
                }
                if (purchaseFormTem.getSecondMeasurement() == null || purchaseFormTem.getSecondMeasurement() == "") {
                    purchaseFormTem.setSecondMeasurement("空");
                }
                if (purchaseFormOld.getSecondQuantity() == null) {
                    purchaseFormOld.setSecondQuantity(0L);
                }
                if (purchaseFormOld.getSecondMeasurement() == null || purchaseFormOld.getSecondMeasurement() == "") {
                    purchaseFormOld.setSecondMeasurement("空");
                }

                if (purchaseFormOld.getFirstQuantity().equals(purchaseFormTem.getFirstQuantity()) &&
                    purchaseFormOld.getFirstMeasurement().equals(purchaseFormTem.getFirstMeasurement()) &&
                    purchaseFormOld.getSecondQuantity().equals(purchaseFormTem.getSecondQuantity()) &&
                    purchaseFormOld.getSecondMeasurement().equals(purchaseFormTem.getSecondMeasurement()) ){
                    purchaseFormTem.setPurStatus(procureCommonStatus.pur_status_warehousing);  // 采购条目状态：入库但被更改
                }else {
                    purchaseFormTem.setPurStatus("7");
                }
                int resultUpdatePurchaseFormTem =  purchaseFormService.updatePurchaseForm(purchaseFormTem);
                // 判断更新结果
                if (new Integer(0).equals(resultUpdatePurchaseFormTem)) {
                    return AjaxResult.error("入库采购条目更新失败，请联系系统管理员！");
                }
            }
        }
        int restltPurchaseRegistrationForm = purchaseRegistrationFormMapper.updatePurchaseRegistrationForm(purchaseRegistrationForm);
        if (!new Integer(1).equals(restltPurchaseRegistrationForm)) {
            return AjaxResult.error("采购模块审核采购单失败，请联系系统管理员！");
        }

        // 更新采购物品条目状态
        purchaseForm.setPurRegCode(purchaseRegistrationForm.getPurRegCode());
        lambdaUpdateWrapper.eq(PurchaseForm::getPurRegCode, purchaseRegistrationForm.getPurRegCode());
        // 审核退回
        if (procureCommonStatus.pur_reg_status_return.equals(purchaseRegistrationForm.getPurRegStatus())) {
            lambdaUpdateWrapper.set(PurchaseForm::getPurStatus, procureCommonStatus.pur_status_return);
        // 成功移交
        } else if (procureCommonStatus.pur_reg_status_audit.equals(purchaseRegistrationForm.getPurRegStatus())) {
            lambdaUpdateWrapper.set(PurchaseForm::getPurStatus, procureCommonStatus.pur_status_transfer);
        // 成功入库
        } else if (procureCommonStatus.pur_reg_status_pass.equals(purchaseRegistrationForm.getPurRegStatus())) {
            // 成功入库已经在上面做了，这里不做
//            lambdaUpdateWrapper.set(PurchaseForm::getPurStatus, procureCommonStatus.pur_reg_status_pass);
            return AjaxResult.success("入库成功！");
        }
        boolean resultBooleanPurchaseForm = purchaseFormService.update(lambdaUpdateWrapper);
        // 判断更新结果
        if (resultBooleanPurchaseForm) {
            return AjaxResult.success("审核成功！");
        }else {
            return AjaxResult.error("采购单审核更新物品条目信息失败，请联系系统管理员！");
        }
    }

    /**
     * 批量删除采购单管理
     *
     * @param purRegIds 需要删除的采购单管理主键
     * @return 结果
     */
    @Override
    @Transactional
    public AjaxResult deletePurchaseRegistrationFormByPurRegIds(String purRegIds)
    {
        String result = "";
        // 缺少方法：在删除登记单的同时应将采购物品条目中的purRegCode清空，并且将purStatus变为1(待制单)。
        String[] purRegIdList =  Convert.toStrArray(purRegIds);
        for (String purRegId : purRegIdList) {
            // 拿到 purchaseRegistrationForm 完整对象，目的取出purRegCode
            PurchaseRegistrationForm purchaseRegistrationForm = this.selectPurchaseRegistrationFormByPurRegId(Long.valueOf(purRegId));
            // 依据拿到的对象对物品采购条目进行更新
            LambdaUpdateWrapper<PurchaseForm> purchaseFormLambdaUpdateWrapper = new LambdaUpdateWrapper<>();
            purchaseFormLambdaUpdateWrapper.eq(PurchaseForm::getPurRegCode, purchaseRegistrationForm.getPurRegCode());
            purchaseFormLambdaUpdateWrapper.set(PurchaseForm::getPurStatus, procureCommonStatus.pur_status_init);
            purchaseFormLambdaUpdateWrapper.set(PurchaseForm::getPurRegCode, "");
            boolean resultBooleanPurchaseForm = purchaseFormService.update(purchaseFormLambdaUpdateWrapper);
            // 判断更新结果
            if (resultBooleanPurchaseForm) {
                result += "更新属于登记单号「" +  purchaseRegistrationForm.getPurRegCode()  + "」的物品条目成功！";
            }else {
                result += "更新属于登记单号「" +  purchaseRegistrationForm.getPurRegCode()  + "」的物品条目失败！";
            }
        }
        // 判断更新结果
        if (result.contains("失败")) {
            return AjaxResult.error(result);
        }
        // 删除登记单
        int restltPurchaseRegistrationForm =  purchaseRegistrationFormMapper.deletePurchaseRegistrationFormByPurRegIds(Convert.toStrArray(purRegIds));
        if (new Integer(0).equals(restltPurchaseRegistrationForm)) {
            return AjaxResult.error("采购模块审核采购单失败，请联系系统管理员！");
        }
        return AjaxResult.success("登记单作废成功，同时" + result);
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
