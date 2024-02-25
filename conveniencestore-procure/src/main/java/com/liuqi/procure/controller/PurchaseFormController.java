package com.liuqi.procure.controller;

import java.util.List;

import com.liuqi.procure.domain.PurchaseRegistrationForm;
import com.liuqi.procure.service.IPurchaseRegistrationFormService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.liuqi.common.annotation.Log;
import com.liuqi.common.enums.BusinessType;
import com.liuqi.procure.domain.PurchaseForm;
import com.liuqi.procure.service.IPurchaseFormService;
import com.liuqi.common.core.controller.BaseController;
import com.liuqi.common.core.domain.AjaxResult;
import com.liuqi.common.utils.poi.ExcelUtil;
import com.liuqi.common.core.page.TableDataInfo;

import javax.annotation.Resource;

/**
 * 采购明细登记Controller
 *
 * @author liuqi
 * @date 2024-02-23
 */
@Controller
@RequestMapping("/procure/purchase")
public class PurchaseFormController extends BaseController
{
    private String prefix = "procure/purchase";

    @Autowired
    private IPurchaseFormService purchaseFormService;
    @Resource
    private IPurchaseRegistrationFormService purchaseRegistrationFormService;

    @RequiresPermissions("procure:purchase:view")
    @GetMapping()
    public String purchase()
    {
        return prefix + "/purchase";
    }

    /**
     * 查询采购明细登记列表
     */
    @RequiresPermissions("procure:purchase:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PurchaseForm purchaseForm)
    {
        startPage();
        List<PurchaseForm> list = purchaseFormService.selectPurchaseFormList(purchaseForm);
        return getDataTable(list);
    }

    /**
     * 导出采购明细登记列表
     */
    @RequiresPermissions("procure:purchase:export")
    @Log(title = "采购明细登记", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PurchaseForm purchaseForm)
    {
        List<PurchaseForm> list = purchaseFormService.selectPurchaseFormList(purchaseForm);
        ExcelUtil<PurchaseForm> util = new ExcelUtil<PurchaseForm>(PurchaseForm.class);
        return util.exportExcel(list, "采购明细登记数据");
    }

    /**
     * 新增采购明细登记
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存采购明细登记
     */
    @RequiresPermissions("procure:purchase:add")
    @Log(title = "采购明细登记", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PurchaseForm purchaseForm)
    {
        return toAjax(purchaseFormService.insertPurchaseForm(purchaseForm));
    }

    /**
     * 修改采购明细登记
     */
    @RequiresPermissions("procure:purchase:edit")
    @GetMapping("/edit/{purId}")
    public String edit(@PathVariable("purId") Long purId, ModelMap mmap)
    {
        PurchaseForm purchaseForm = purchaseFormService.selectPurchaseFormByPurId(purId);
        mmap.put("purchaseForm", purchaseForm);
        return prefix + "/edit";
    }

    /**
     * 修改保存采购明细登记
     */
    @RequiresPermissions("procure:purchase:edit")
    @Log(title = "采购明细登记", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PurchaseForm purchaseForm)
    {
        return toAjax(purchaseFormService.updatePurchaseForm(purchaseForm));
    }

    /**
     * 删除采购明细登记
     */
    @RequiresPermissions("procure:purchase:remove")
    @Log(title = "采购明细登记", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(purchaseFormService.deletePurchaseFormByPurIds(ids));
    }

    /**
     * 一键生成采购单
     */
    @PostMapping("/generate")
    @ResponseBody
    public AjaxResult generate(String[] purIdList, String[] purStatusList) {
        return purchaseRegistrationFormService.insertPurchaseRegistrationForm(purIdList, purStatusList);
    }






}
