package com.liuqi.sales.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.net.URLDecoder;
import java.util.List;
import java.util.Objects;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
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

    @RequiresPermissions("sales:detail:returnAndExchangeView")
    @GetMapping("/returnAndExchange")
    public String returnAndExchange()
    {
        return prefix + "/returnAndExchange";
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

    /**
     * 退货弹窗
     */
    @RequiresPermissions("sales:detail:return")
    @GetMapping("/returnButton/{salesId}")
    public String returnButton(@PathVariable("salesId") Long salesId, ModelMap mmap) {
        SalesDetails salesDetails = salesDetailsService.selectSalesDetailsBySalesId(salesId);
        mmap.put("salesDetails", salesDetails);
        return prefix + "/returnWindows";
    }

    /**
     * 换货弹窗
     */
    @RequiresPermissions("sales:detail:exchange")
    @GetMapping("/exchangeButton/{salesId}")
    public String exchangeButton(@PathVariable("salesId") Long salesId, ModelMap mmap) {
        SalesDetails salesDetails = salesDetailsService.selectSalesDetailsBySalesId(salesId);
        mmap.put("salesDetails", salesDetails);
        return prefix + "/exchangeWindows";
    }

    /**
     * 退换货执行
     */
    @RequiresPermissions("sales:detail:returnAndExchangeView")
    @PostMapping("/returnOrExchangeMakeSure")
    @ResponseBody
    public AjaxResult inSalesMakeSure(@RequestBody String data) throws UnsupportedEncodingException {
        String[] dataList = data.split("&");
        String salesId = dataList[0].split("=")[1];
        String goodsCode = dataList[1].split("=")[1];
        String goodsName = URLDecoder.decode(dataList[2].split("=")[1], "UTF-8");
        String goodsAlias = "";
        if (!new Integer(1).equals(dataList[3].split("=").length)) {
            goodsAlias = dataList[3].split("=")[1];
            goodsAlias = URLDecoder.decode(goodsAlias, "UTF-8");
        }
        String salesCode = dataList[4].split("=")[1];
        String purchaserId = dataList[5].split("=")[1];
        String reasonRandc = "";
        if (!new Integer(1).equals(dataList[6].split("=").length)) {
            reasonRandc = dataList[6].split("=")[1];
            reasonRandc = URLDecoder.decode(reasonRandc, "UTF-8");
        }
        String salesCodeBundle = "";
        if (!new Integer(1).equals(dataList[7].split("=").length)) {
            salesCodeBundle = dataList[7].split("=")[1];
        }
        String type = dataList[8].split("=")[1];
        String salesQuantity = URLDecoder.decode(dataList[9].split("=")[1], "UTF-8");
        // 退换货方法
        AjaxResult ajaxResult = salesDetailsService.returnAndExchange(salesId, goodsCode, goodsName, goodsAlias, salesCode, purchaserId, reasonRandc, salesCodeBundle, type, salesQuantity);
        return ajaxResult;
    }











}
