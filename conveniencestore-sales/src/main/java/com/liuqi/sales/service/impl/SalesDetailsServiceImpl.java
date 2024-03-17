package com.liuqi.sales.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.liuqi.common.core.domain.AjaxResult;
import com.liuqi.common.core.domain.entity.SysUser;
import com.liuqi.common.utils.DateUtils;
import com.liuqi.common.utils.ShiroUtils;
import com.liuqi.sales.controller.tool.SalesGenerateCode;
import org.springframework.stereotype.Service;
import com.liuqi.sales.mapper.SalesDetailsMapper;
import com.liuqi.sales.domain.SalesDetails;
import com.liuqi.sales.service.ISalesDetailsService;
import com.liuqi.common.core.text.Convert;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * 售卖明细查询Service业务层处理
 * 
 * @author liuqi
 * @date 2024-03-13
 */
@Service
public class SalesDetailsServiceImpl extends ServiceImpl<SalesDetailsMapper, SalesDetails> implements ISalesDetailsService
{
    @Resource
    private SalesDetailsMapper salesDetailsMapper;
    @Resource
    private SalesGenerateCode salesGenerateCode;

    /**
     * 查询售卖明细查询
     * 
     * @param salesId 售卖明细查询主键
     * @return 售卖明细查询
     */
    @Override
    public SalesDetails selectSalesDetailsBySalesId(Long salesId)
    {
        return salesDetailsMapper.selectSalesDetailsBySalesId(salesId);
    }

    /**
     * 查询售卖明细查询列表
     * 
     * @param salesDetails 售卖明细查询
     * @return 售卖明细查询
     */
    @Override
    public List<SalesDetails> selectSalesDetailsList(SalesDetails salesDetails)
    {
        return salesDetailsMapper.selectSalesDetailsList(salesDetails);
    }

    /**
     * 新增售卖明细查询
     * 
     * @param salesDetails 售卖明细查询
     * @return 结果
     */
    @Override
    public int insertSalesDetails(SalesDetails salesDetails)
    {
        return salesDetailsMapper.insertSalesDetails(salesDetails);
    }

    /**
     * 修改售卖明细查询
     * 
     * @param salesDetails 售卖明细查询
     * @return 结果
     */
    @Override
    public int updateSalesDetails(SalesDetails salesDetails)
    {
        return salesDetailsMapper.updateSalesDetails(salesDetails);
    }

    /**
     * 批量删除售卖明细查询
     * 
     * @param salesIds 需要删除的售卖明细查询主键
     * @return 结果
     */
    @Override
    public int deleteSalesDetailsBySalesIds(String salesIds)
    {
        return salesDetailsMapper.deleteSalesDetailsBySalesIds(Convert.toStrArray(salesIds));
    }

    /**
     * 删除售卖明细查询信息
     * 
     * @param salesId 售卖明细查询主键
     * @return 结果
     */
    @Override
    public int deleteSalesDetailsBySalesId(Long salesId)
    {
        return salesDetailsMapper.deleteSalesDetailsBySalesId(salesId);
    }

    /**
     * 售卖添加
     * @param ledgerId  商品台账信息主键
     * @param goodsCode 商品编码
     * @param inSalesQuantity 內售数量
     * @param type  售卖类型(insales=內售;outSales=外售)
     * @param goodsName 物品名称
     * @param goodsAlias 物品别名
     * @param consumerId 购买人id
     * @param priceFirst 售卖单价(第一数量)
     * @return
     */
    @Override
    @Transactional
    public int inSales(String ledgerId, String goodsCode, String inSalesQuantity, String type, String goodsName, String goodsAlias, String consumerId, String priceFirst) {
        SalesDetails salesDetails = new SalesDetails();
        salesDetails.setGoodsCode(goodsCode);   // 售卖物品单号写入
        salesDetails.setSalesDate(DateUtils.getDateNowDate("yyyy-MM-dd HH:MM:SS")); // 物品售卖时间写入
        if ("inSales".equals(type)) {
            salesDetails.setSalesStatus("1");   // 售卖类型写入：內售处理
        } else {
            salesDetails.setSalesStatus("2");   // 售卖类型写入：外售处理
        }
        SysUser currentUser = ShiroUtils.getSysUser();
        salesDetails.setSalesCode(salesGenerateCode.generateCode(currentUser.getDeptId()));    // 售卖明细单号写入
        salesDetails.setSalesQuantity(inSalesQuantity + '>' + priceFirst);     // 售卖数量(第一单位)>单价写入
        salesDetails.setGoodsName(goodsName);   // 物品名称写入
        salesDetails.setGoodsAlias(goodsAlias);     // 物品别称写入
        salesDetails.setPurchaserId(consumerId);    // 购买人id写入
        return salesDetailsMapper.insertSalesDetails(salesDetails);
    }

    /**
     * 售卖添加(绑定商品)
     * @param goodsCode 商品单号
     * @param goodsName 物品名称
     * @param goodsAlias 物品别名
     * @param inSalesQuantity 售卖数量(第一单位)
     * @param goodsCodeMian 绑定主商品单号
     * @param consumerId 购买人id
     * @return
     */
    @Override
    @Transactional
    public int bundleSales(String goodsCode, String goodsName, String goodsAlias, String inSalesQuantity,String goodsCodeMian, String consumerId) {
        SalesDetails salesDetails = new SalesDetails();
        salesDetails.setGoodsCode(goodsCode);   // 售卖物品单号写入
        salesDetails.setSalesDate(DateUtils.getDateNowDate("yyyy-MM-dd HH:MM:SS")); // 物品售卖时间写入
        salesDetails.setSalesStatus("5");   // 售卖类型写入：捆绑出售处理
        SysUser currentUser = ShiroUtils.getSysUser();
        salesDetails.setSalesCode(salesGenerateCode.generateCode(currentUser.getDeptId()));    // 售卖明细单号写入
        salesDetails.setGoodsName(goodsName);   // 物品名称写入
        salesDetails.setGoodsAlias(goodsAlias);     // 物品别称写入
        salesDetails.setSalesQuantity(inSalesQuantity + ">0");     // 售卖数量(第一单位)>单价写入
        salesDetails.setSalesCodeBundle(goodsCodeMian);     // 绑定主商品编码写入
        salesDetails.setPurchaserId(consumerId);    // 购买人id写入
        return salesDetailsMapper.insertSalesDetails(salesDetails);
    }

    /**
     * 退换货
     * @param salesId 售卖明细主键ID
     * @param goodsCode 售卖物品单号
     * @param goodsName 物品名称
     * @param goodsAlias 物品别称
     * @param salesCode 售卖明细单号
     * @param purchaserId 购买人id
     * @param reasonRandc 物品退换货理由
     * @param salesCodeBundle 捆绑销售主物品单号
     * @param type 退换货类型定义字段
     * @param salesQuantity “物品售卖数量>单价”
     *
     *    本方法不考虑退换货所造成的物品损耗，便利店实际业务中产生损耗不予退换货
     *    如若物品损耗，则直接做退货然后撤回该物品明细即可
     *
     * @return
     */
    @Override
    @Transactional
    public AjaxResult returnAndExchange(String salesId, String goodsCode, String goodsName, String goodsAlias, String salesCode, String purchaserId, String reasonRandc, String salesCodeBundle, String type, String salesQuantity) {

        SysUser currentUser = ShiroUtils.getSysUser();
        String[] salesGoodsInfo = salesQuantity.split(">");
        String salesQuantityFirst = salesGoodsInfo[0];  // 商品退换货数量

        String salesPriceFirst = salesGoodsInfo[1];     // 商品退换货价格

        // 退换货都需要更新原有明细的更新时间，只有产生更新时间的明细才说明被退换货了
        SalesDetails salesDetailsOriginal = new SalesDetails();
        salesDetailsOriginal.setSalesId(Long.valueOf(salesId));
        salesDetailsOriginal.setUpdateDate(DateUtils.getDateNowDate("yyyy-MM-dd HH:MM:SS"));    // 更新时间写入
        int resultUpdate = this.updateSalesDetails(salesDetailsOriginal);
        if (!new Integer(1).equals(resultUpdate)) {
            return AjaxResult.error("更新售卖明细失败，请联系系统管理员！");
        }

        // 退换货都需要新建明细，区别仅在于售卖类型的不同
        SalesDetails salesDetailsNew = new SalesDetails();
        salesDetailsNew.setGoodsCode(goodsCode);    // 退换物品单号写入
        salesDetailsNew.setSalesDate(DateUtils.getDateNowDate("yyyy-MM-dd HH:MM:SS"));  // 换货时间写入
        if ("exchange".equals(type)) {
            salesDetailsNew.setSalesStatus("4");    // 售卖类型：换货处理 写入
        }else if ("return".equals(type)) {
            salesDetailsNew.setSalesStatus("3");    // 售卖类型：退货处理 写入
        }
        salesDetailsNew.setSalesCode(salesGenerateCode.generateCode(currentUser.getDeptId()));  // 本单售卖明细单号写入
        salesDetailsNew.setReasonRandc(reasonRandc);    // 换货理由写入
        salesDetailsNew.setPurchaserId(purchaserId);    // 换货人标志id写入
        salesDetailsNew.setSalesCodeUplevel(salesCode); // 上一级明细单号写入
        salesDetailsNew.setGoodsName(goodsName);    // 物品名称写入
        salesDetailsNew.setGoodsAlias(goodsAlias);  // 物品别称写入
        salesDetailsNew.setSalesCodeBundle(salesCodeBundle);    // 捆绑销售主物品单号写入
        salesDetailsNew.setSalesQuantity(salesQuantity);
        int resultInsert = this.insertSalesDetails(salesDetailsNew);
        if (!new Integer(1).equals(resultInsert)) {
            return AjaxResult.error("写入售卖明细失败，请联系系统管理员！");
        }

        if ("exchange".equals(type)) {
            /*
            换货只需要新建一个售卖明细填入相应数据，并写入原有明细的更新时间。
             */
            /*}else if ("return".equals(type)) {*/
            return AjaxResult.success("商品换货成功！");
        } else {
            /*
            退货除了新建售卖明细与写入原有明细的同时，还需要对物品所产生的利润和数量在台账菜单进行回滚(方法在management中)
             */
            return AjaxResult.success("商品退货成功，正在更新台账信息...");
        }
    }
}
