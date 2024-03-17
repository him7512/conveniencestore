package com.liuqi.management.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import java.util.Objects;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import com.liuqi.common.core.page.PageDomain;
import com.liuqi.common.core.page.TableSupport;
import com.liuqi.sales.service.ISalesDetailsService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.liuqi.common.annotation.Log;
import com.liuqi.common.enums.BusinessType;
import com.liuqi.management.domain.LedgerGoods;
import com.liuqi.management.service.ILedgerGoodsService;
import com.liuqi.common.core.controller.BaseController;
import com.liuqi.common.core.domain.AjaxResult;
import com.liuqi.common.utils.poi.ExcelUtil;
import com.liuqi.common.core.page.TableDataInfo;

import javax.annotation.Resource;

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

    @Resource
    private ILedgerGoodsService ledgerGoodsService;


    @RequiresPermissions("management:ledgerGoodsManagement:view")
    @GetMapping()
    public String ledgerGoodsManagement()
    {
        return prefix + "/ledgerGoodsManagement";
    }

    @RequiresPermissions("management:ledgerGoodsManagement:outSalesView")
    @GetMapping("/outSales")
    public String ledgerGoodsManagementOutSales()
    {
        return prefix + "/ledgerGoodsManagementOutSales";
    }

    @RequiresPermissions("management:ledgerGoodsManagement:inSalesView")
    @GetMapping("/inSales")
    public String ledgerGoodsManagementInSales()
    {
        return prefix + "/ledgerGoodsManagementInSales";
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
     * 查询商品台账信息列表(外售支持)
     */
    @RequiresPermissions("management:ledgerGoodsManagement:list")
    @PostMapping("/outSalesList")
    @ResponseBody
    public TableDataInfo listSales(LedgerGoods ledgerGoods)
    {
        /*startPage();*/
        /*PageDomain pageDomain = TableSupport.buildPageRequest();
        Integer pageNum = pageDomain.getPageNum();
        Integer pageSize = pageDomain.getPageSize();*/
        List<LedgerGoods> list = ledgerGoodsService.selectLedgerGoodsOutSalesList(ledgerGoods);
        return getDataTable(list);
        /*//处理上面查询的list集合
        int num = list.size();
        list = list.stream().skip((pageNum - 1) * pageSize).limit(pageSize).collect(Collectors.toList());
        TableDataInfo rspData = new TableDataInfo();
        rspData.setCode(200);   // HttpStatus.SUCCESS
        rspData.setRows(list);
        rspData.setTotal(num);
        return rspData;*/
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

    /**
     * 內售弹窗
     */
    @RequiresPermissions("management:ledgerGoodsManagement:inSales")
    @GetMapping("/inSalesButton/{ledgerId}")
    public String inSaleButton(@PathVariable("ledgerId") Long ledgerId, ModelMap mmap) {
        LedgerGoods ledgerGoods = ledgerGoodsService.selectLedgerGoodsByLedgerId(ledgerId);
        mmap.put("ledgerGoods", ledgerGoods);
        return prefix + "/inSales";
    }

    /**
     * 外售弹窗
     */
    @RequiresPermissions("management:ledgerGoodsManagement:outSales")
    @GetMapping("/outSalesButton/{ledgerId}")
    public String outSaleButton(@PathVariable("ledgerId") Long ledgerId, ModelMap mmap) {
        LedgerGoods ledgerGoods = ledgerGoodsService.selectLedgerGoodsByLedgerId(ledgerId);
        mmap.put("ledgerGoods", ledgerGoods);
        return prefix + "/outSales";
    }

    /**
     * 销售执行
     */
    @RequiresPermissions("management:ledgerGoodsManagement:view")
    @PostMapping("/salesMakeSure")
    @ResponseBody
    public AjaxResult inSalesMakeSure(@RequestBody String data) {
        String[] dataList = data.split("&");
        String ledgerId = dataList[0].split("=")[1];
        String goodsCode = dataList[1].split("=")[1];
        String salesQuantity = dataList[2].split("=")[1];
        String type = dataList[3].split("=")[1];
        String consumerId = dataList[4].split("=")[1];
        String inPrice = "";
        if ("inSales".equals(type)) {
            inPrice = dataList[5].split("=")[1];
        }
        // 內/外售方法
        AjaxResult ajaxResult = ledgerGoodsService.inSales(ledgerId, goodsCode, salesQuantity, type, consumerId, inPrice);
        return ajaxResult;
    }

    /**
     * 更新台账明细方法
     */
    @RequiresPermissions("sales:detail:returnAndExchangeView")
    @PostMapping("/return")
    @ResponseBody
    public AjaxResult returnUpdate(@RequestBody String data) throws UnsupportedEncodingException {
        String[] dataList = data.split("&");
        String salesId = dataList[0].split("=")[1];
        String goodsCode = dataList[1].split("=")[1];
        String salesQuantity = dataList[2].split("=")[1];
        String salesPrice = URLDecoder.decode(dataList[3].split("=")[1], "UTF-8");
        AjaxResult ar = ledgerGoodsService.returnGoods(salesId, goodsCode, salesQuantity, salesPrice);
        return ar;
    }








}
