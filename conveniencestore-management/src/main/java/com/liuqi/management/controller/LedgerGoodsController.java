package com.liuqi.management.controller;

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
import com.liuqi.management.domain.LedgerGoods;
import com.liuqi.management.service.ILedgerGoodsService;
import com.liuqi.common.core.controller.BaseController;
import com.liuqi.common.core.domain.AjaxResult;
import com.liuqi.common.utils.poi.ExcelUtil;
import com.liuqi.common.core.page.TableDataInfo;

/**
 * 商品台账信息Controller
 *
 * @author liuqi
 * @date 2024-03-06
 */
@Controller
@RequestMapping("/management/ledgerGoodsManagement")
public class LedgerGoodsController extends BaseController
{
    private String prefix = "management/ledgerGoodsManagement";

    @Autowired
    private ILedgerGoodsService ledgerGoodsService;

    @RequiresPermissions("management:ledgerGoodsManagement:view")
    @GetMapping()
    public String ledgerGoodsManagement()
    {
        return prefix + "/ledgerGoodsManagement";
    }

    /**
     * 查询商品台账信息列表
     */
    @RequiresPermissions("management:ledgerGoodsManagement:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(LedgerGoods ledgerGoods)
    {
        startPage();
        List<LedgerGoods> list = ledgerGoodsService.selectLedgerGoodsList(ledgerGoods);
        return getDataTable(list);
    }

    /**
     * 导出商品台账信息列表
     */
    @RequiresPermissions("management:ledgerGoodsManagement:export")
    @Log(title = "商品台账信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(LedgerGoods ledgerGoods)
    {
        List<LedgerGoods> list = ledgerGoodsService.selectLedgerGoodsList(ledgerGoods);
        ExcelUtil<LedgerGoods> util = new ExcelUtil<LedgerGoods>(LedgerGoods.class);
        return util.exportExcel(list, "商品台账信息数据");
    }

    /**
     * 新增商品台账信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存商品台账信息
     */
    @RequiresPermissions("management:ledgerGoodsManagement:add")
    @Log(title = "商品台账信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(LedgerGoods ledgerGoods)
    {
        return ledgerGoodsService.insertLedgerGoods(ledgerGoods);
    }

    /**
     * 修改商品台账信息
     */
    @RequiresPermissions("management:ledgerGoodsManagement:edit")
    @GetMapping("/edit/{ledgerId}")
    public String edit(@PathVariable("ledgerId") Long ledgerId, ModelMap mmap)
    {
        LedgerGoods ledgerGoods = ledgerGoodsService.selectLedgerGoodsByLedgerId(ledgerId);
        mmap.put("ledgerGoods", ledgerGoods);
        return prefix + "/edit";
    }

    /**
     * 修改保存商品台账信息
     */
    @RequiresPermissions("management:ledgerGoodsManagement:edit")
    @Log(title = "商品台账信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(LedgerGoods ledgerGoods)
    {
        return toAjax(ledgerGoodsService.updateLedgerGoods(ledgerGoods));
    }

    /**
     * 删除商品台账信息
     */
    @RequiresPermissions("management:ledgerGoodsManagement:remove")
    @Log(title = "商品台账信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(ledgerGoodsService.deleteLedgerGoodsByLedgerIds(ids));
    }

    /**
     * 商品上架
     */
    @RequiresPermissions("management:ledgerGoodsManagement:edit")
    @GetMapping("/grounding/{ledgerId}")
    @ResponseBody
    public AjaxResult grounding(@PathVariable("ledgerId") Long ledgerId) {
        LedgerGoods ledgerGoods = new LedgerGoods();
        ledgerGoods.setLedgerId(ledgerId);
        ledgerGoods.setGoodsStatus("2");    // 写入商品售卖情况-货架待售
        return toAjax(ledgerGoodsService.updateLedgerGoods(ledgerGoods));
    }









}
