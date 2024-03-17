package com.liuqi.sales.controller;

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
import com.liuqi.sales.domain.SalesDetails;
import com.liuqi.sales.service.ISalesDetailsService;
import com.liuqi.common.core.controller.BaseController;
import com.liuqi.common.core.domain.AjaxResult;
import com.liuqi.common.utils.poi.ExcelUtil;
import com.liuqi.common.core.page.TableDataInfo;

/**
 * 售卖明细查询Controller
 * 
 * @author liuqi
 * @date 2024-03-13
 */
@Controller
@RequestMapping("/sales/detail")
public class SalesDetailsController extends BaseController
{
    private String prefix = "sales/detail";

    @Autowired
    private ISalesDetailsService salesDetailsService;

    @RequiresPermissions("sales:detail:view")
    @GetMapping()
    public String detail()
    {
        return prefix + "/detail";
    }

    /**
     * 查询售卖明细查询列表
     */
    @RequiresPermissions("sales:detail:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SalesDetails salesDetails)
    {
        startPage();
        List<SalesDetails> list = salesDetailsService.selectSalesDetailsList(salesDetails);
        return getDataTable(list);
    }

    /**
     * 导出售卖明细查询列表
     */
    @RequiresPermissions("sales:detail:export")
    @Log(title = "售卖明细查询", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SalesDetails salesDetails)
    {
        List<SalesDetails> list = salesDetailsService.selectSalesDetailsList(salesDetails);
        ExcelUtil<SalesDetails> util = new ExcelUtil<SalesDetails>(SalesDetails.class);
        return util.exportExcel(list, "售卖明细查询数据");
    }

    /**
     * 新增售卖明细查询
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存售卖明细查询
     */
    @RequiresPermissions("sales:detail:add")
    @Log(title = "售卖明细查询", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SalesDetails salesDetails)
    {
        return toAjax(salesDetailsService.insertSalesDetails(salesDetails));
    }

    /**
     * 修改售卖明细查询
     */
    @RequiresPermissions("sales:detail:edit")
    @GetMapping("/edit/{salesId}")
    public String edit(@PathVariable("salesId") Long salesId, ModelMap mmap)
    {
        SalesDetails salesDetails = salesDetailsService.selectSalesDetailsBySalesId(salesId);
        mmap.put("salesDetails", salesDetails);
        return prefix + "/edit";
    }

    /**
     * 修改保存售卖明细查询
     */
    @RequiresPermissions("sales:detail:edit")
    @Log(title = "售卖明细查询", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SalesDetails salesDetails)
    {
        return toAjax(salesDetailsService.updateSalesDetails(salesDetails));
    }

    /**
     * 删除售卖明细查询
     */
    @RequiresPermissions("sales:detail:remove")
    @Log(title = "售卖明细查询", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(salesDetailsService.deleteSalesDetailsBySalesIds(ids));
    }
}
