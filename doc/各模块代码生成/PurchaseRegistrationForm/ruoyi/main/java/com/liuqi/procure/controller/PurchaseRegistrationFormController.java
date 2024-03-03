package com.liuqi.procure.controller;

import java.util.List;
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
import com.liuqi.procure.domain.PurchaseRegistrationForm;
import com.liuqi.procure.service.IPurchaseRegistrationFormService;
import com.liuqi.common.core.controller.BaseController;
import com.liuqi.common.core.domain.AjaxResult;
import com.liuqi.common.utils.poi.ExcelUtil;
import com.liuqi.common.core.page.TableDataInfo;

/**
 * 采购单管理Controller
 * 
 * @author ruoyi
 * @date 2024-02-21
 */
@Controller
@RequestMapping("/procure/purchaseRegistration")
public class PurchaseRegistrationFormController extends BaseController
{
    private String prefix = "procure/purchaseRegistration";

    @Autowired
    private IPurchaseRegistrationFormService purchaseRegistrationFormService;

    @RequiresPermissions("procure:purchaseRegistration:view")
    @GetMapping()
    public String purchaseRegistration()
    {
        return prefix + "/purchaseRegistration";
    }

    /**
     * 查询采购单管理列表
     */
    @RequiresPermissions("procure:purchaseRegistration:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(PurchaseRegistrationForm purchaseRegistrationForm)
    {
        startPage();
        List<PurchaseRegistrationForm> list = purchaseRegistrationFormService.selectPurchaseRegistrationFormList(purchaseRegistrationForm);
        return getDataTable(list);
    }

    /**
     * 导出采购单管理列表
     */
    @RequiresPermissions("procure:purchaseRegistration:export")
    @Log(title = "采购单管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(PurchaseRegistrationForm purchaseRegistrationForm)
    {
        List<PurchaseRegistrationForm> list = purchaseRegistrationFormService.selectPurchaseRegistrationFormList(purchaseRegistrationForm);
        ExcelUtil<PurchaseRegistrationForm> util = new ExcelUtil<PurchaseRegistrationForm>(PurchaseRegistrationForm.class);
        return util.exportExcel(list, "采购单管理数据");
    }

    /**
     * 新增采购单管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存采购单管理
     */
    @RequiresPermissions("procure:purchaseRegistration:add")
    @Log(title = "采购单管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(PurchaseRegistrationForm purchaseRegistrationForm)
    {
        return toAjax(purchaseRegistrationFormService.insertPurchaseRegistrationForm(purchaseRegistrationForm));
    }

    /**
     * 修改采购单管理
     */
    @RequiresPermissions("procure:purchaseRegistration:edit")
    @GetMapping("/edit/{purRegId}")
    public String edit(@PathVariable("purRegId") Long purRegId, ModelMap mmap)
    {
        PurchaseRegistrationForm purchaseRegistrationForm = purchaseRegistrationFormService.selectPurchaseRegistrationFormByPurRegId(purRegId);
        mmap.put("purchaseRegistrationForm", purchaseRegistrationForm);
        return prefix + "/edit";
    }

    /**
     * 修改保存采购单管理
     */
    @RequiresPermissions("procure:purchaseRegistration:edit")
    @Log(title = "采购单管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(PurchaseRegistrationForm purchaseRegistrationForm)
    {
        return toAjax(purchaseRegistrationFormService.updatePurchaseRegistrationForm(purchaseRegistrationForm));
    }

    /**
     * 删除采购单管理
     */
    @RequiresPermissions("procure:purchaseRegistration:remove")
    @Log(title = "采购单管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(purchaseRegistrationFormService.deletePurchaseRegistrationFormByPurRegIds(ids));
    }
}
