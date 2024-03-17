package com.liuqi.sales.service;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;
import com.liuqi.common.core.domain.AjaxResult;
import com.liuqi.sales.domain.SalesDetails;

/**
 * 售卖明细查询Service接口
 * 
 * @author liuqi
 * @date 2024-03-13
 */
public interface ISalesDetailsService extends IService<SalesDetails>
{
    /**
     * 查询售卖明细查询
     * 
     * @param salesId 售卖明细查询主键
     * @return 售卖明细查询
     */
    public SalesDetails selectSalesDetailsBySalesId(Long salesId);

    /**
     * 查询售卖明细查询列表
     * 
     * @param salesDetails 售卖明细查询
     * @return 售卖明细查询集合
     */
    public List<SalesDetails> selectSalesDetailsList(SalesDetails salesDetails);

    /**
     * 新增售卖明细查询
     * 
     * @param salesDetails 售卖明细查询
     * @return 结果
     */
    public int insertSalesDetails(SalesDetails salesDetails);

    /**
     * 修改售卖明细查询
     * 
     * @param salesDetails 售卖明细查询
     * @return 结果
     */
    public int updateSalesDetails(SalesDetails salesDetails);

    /**
     * 批量删除售卖明细查询
     * 
     * @param salesIds 需要删除的售卖明细查询主键集合
     * @return 结果
     */
    public int deleteSalesDetailsBySalesIds(String salesIds);

    /**
     * 删除售卖明细查询信息
     * 
     * @param salesId 售卖明细查询主键
     * @return 结果
     */
    public int deleteSalesDetailsBySalesId(Long salesId);


    /**
     * 售卖添加
     * @param ledgerId  商品台账信息主键
     * @param goodsCode 商品编码
     * @param inSalesQuantity   內售数量
     * @param type  售卖类型(insales=內售;outSales=外售)
     * @param goodsName 物品名称
     * @param goodsAlias 物品别名
     * @param consumerId 购买人id
     * @param priceFirst 售卖单价(第一数量)
     * @return
     */
    public int inSales(String ledgerId, String goodsCode, String inSalesQuantity, String type, String goodsName, String goodsAlias, String consumerId, String priceFirst);

    /**
     * 售卖添加(绑定商品)
     * @param goodsCode 商品单号
     * @param goodsName 物品名称
     * @param goodsAlias 物品别名
     * @param inSalesQuantity 售卖数量(第一单位)
     * @param goodsCodeMain 绑定主物品单号
     * @param consumerId 购买人id
     * @return
     */
    public int bundleSales(String goodsCode, String goodsName, String goodsAlias, String inSalesQuantity, String goodsCodeMain, String consumerId);

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
     * @return
     */
    public AjaxResult returnAndExchange(String salesId, String goodsCode, String goodsName, String goodsAlias, String salesCode, String purchaserId, String reasonRandc, String salesCodeBundle, String type, String salesQuantity);





}
