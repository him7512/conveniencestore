package com.liuqi.management.service.impl;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.liuqi.common.core.domain.AjaxResult;
import com.liuqi.common.utils.DateUtils;
import com.liuqi.management.controller.tool.WithdrawalOfSale;
import com.liuqi.sales.service.ISalesDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.liuqi.management.mapper.LedgerGoodsMapper;
import com.liuqi.management.domain.LedgerGoods;
import com.liuqi.management.service.ILedgerGoodsService;
import com.liuqi.common.core.text.Convert;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * 商品台账信息Service业务层处理
 *
 * @author liuqi
 * @date 2024-03-06
 */
@Service
public class LedgerGoodsServiceImpl extends ServiceImpl<LedgerGoodsMapper, LedgerGoods> implements ILedgerGoodsService
{
    @Resource
    private LedgerGoodsMapper ledgerGoodsMapper;
    @Resource
    private ISalesDetailsService salesDetailsService;
    @Resource
    private WithdrawalOfSale withdrawalOfSale;


    /**
     * 查询商品台账信息
     *
     * @param ledgerId 商品台账信息主键
     * @return 商品台账信息
     */
    @Override
    public LedgerGoods selectLedgerGoodsByLedgerId(Long ledgerId)
    {
        return ledgerGoodsMapper.selectLedgerGoodsByLedgerId(ledgerId);
    }

    /**
     * 查询商品台账信息列表
     *
     * @param ledgerGoods 商品台账信息
     * @return 商品台账信息
     */
    @Override
    public List<LedgerGoods> selectLedgerGoodsList(LedgerGoods ledgerGoods)
    {
        return ledgerGoodsMapper.selectLedgerGoodsList(ledgerGoods);
    }

    /**
     * 查询商品台账信息列表(外售支持)
     *
     * @param ledgerGoods 商品台账信息
     * @return 商品台账信息
     */
    @Override
    @Transactional
    public List<LedgerGoods> selectLedgerGoodsOutSalesList(LedgerGoods ledgerGoods)
    {
        List<LedgerGoods> ledgerGoodsListTem = ledgerGoodsMapper.selectLedgerGoodsList(ledgerGoods);
        List<LedgerGoods> ledgerGoodsList = new ArrayList<>();
        for (LedgerGoods goods : ledgerGoodsListTem) {
            if ("2".equals(goods.getGoodsStatus()) || "3".equals(goods.getGoodsStatus())) {
                ledgerGoodsList.add(goods);
            }
        }
        return ledgerGoodsList;
        /*return ledgerGoodsListTem;*/
    }

    /**
     * 新增商品台账信息
     *
     * @param ledgerGoods 商品台账信息
     * @return 结果
     */
    @Override
    public AjaxResult insertLedgerGoods(LedgerGoods ledgerGoods)
    {
        int resultInsertLedgerGoods =  ledgerGoodsMapper.insertLedgerGoods(ledgerGoods);
        if (!new Integer(1).equals(resultInsertLedgerGoods)) {
            return AjaxResult.error("写入商品台账信息失败，请联系系统管理员！");
        }

        return AjaxResult.success("入库写入台账信息成功！");
    }

    /**
     * 修改商品台账信息
     *
     * @param ledgerGoods 商品台账信息
     * @return 结果
     */
    @Override
    public int updateLedgerGoods(LedgerGoods ledgerGoods)
    {
        return ledgerGoodsMapper.updateLedgerGoods(ledgerGoods);
    }

    /**
     * 批量删除商品台账信息
     *
     * @param ledgerIds 需要删除的商品台账信息主键
     * @return 结果
     */
    @Override
    public int deleteLedgerGoodsByLedgerIds(String ledgerIds)
    {
        return ledgerGoodsMapper.deleteLedgerGoodsByLedgerIds(Convert.toStrArray(ledgerIds));
    }

    /**
     * 删除商品台账信息信息
     *
     * @param ledgerId 商品台账信息主键
     * @return 结果
     */
    @Override
    public int deleteLedgerGoodsByLedgerId(Long ledgerId)
    {
        return ledgerGoodsMapper.deleteLedgerGoodsByLedgerId(ledgerId);
    }

    /**
     * 销售添加
     * @param ledgerId  商品台账信息主键
     * @param goodsCode 商品编码
     * @param salesQuantity 销售数量
     * @param type  售卖类型(insales=內售;outSales=外售)
     * @param consumerId 购买人id
     * @param inPrice 内购价格
     * @return
     */
    @Override
    @Transactional
    public AjaxResult inSales(String ledgerId, String goodsCode, String salesQuantity, String type, String consumerId, String inPrice) {
        // 计算盈利与商品现存数量
        // 拿到台账物品信息
        LedgerGoods ledgerGoods = this.selectLedgerGoodsByLedgerId(Long.valueOf(ledgerId));
        ledgerGoods.setUpdateDate(DateUtils.getDateNowDate("yyyy-MM-dd HH:MM:SS")); // 更新时间

        // 收益计算及装配
        Long priceFirst = 0L;
        if ("inSales".equals(type)) {
            priceFirst = Long.valueOf(inPrice);   // 单价(第一数量)
        }else {
            priceFirst = ledgerGoods.getPricingFirst();    // 单价(第一数量)
        }
            Long addProfit = priceFirst * Long.valueOf(salesQuantity);    // 新增盈利金额
        Long baseProfix;  // 原本盈利金额
        if (Objects.isNull(ledgerGoods.getProfitUptonow())) {
            baseProfix = 0L;
        }else {
            baseProfix = Long.valueOf(ledgerGoods.getProfitUptonow());
        }
        String profitUpToNow = String.valueOf(baseProfix + addProfit);   // 新的总收益
        ledgerGoods.setProfitUptonow(profitUpToNow);    // 装配新的总收益
        Long firstQuantityNow = ledgerGoods.getFirstQuantityNow();  // 第一数量
        Long secondQuantityNow = ledgerGoods.getSecondQuantityNow();    // 第二数量
        // 计算第一数量与第二数量的比例
        Double proportion = firstQuantityNow / Double.valueOf(secondQuantityNow);
        // 第二数量计算及写入(只要一个为空就不能算)
        if (!Objects.isNull(ledgerGoods.getSecondQuantityNow()) && !Objects.isNull(ledgerGoods.getSecondMeasurement())) {
            // 第二数量应该减去：
            Double numSecond = secondQuantityNow - (firstQuantityNow - Long.valueOf(salesQuantity)) / proportion;
            secondQuantityNow = secondQuantityNow - numSecond.longValue();
            ledgerGoods.setSecondQuantityNow(secondQuantityNow);    // 写入第二物品数量
        }
        // 第一数量计算及写入
        firstQuantityNow -= Long.valueOf(salesQuantity);  // 第一数量更新后
        if (firstQuantityNow < 0) {
            return AjaxResult.error("现物品数量不足以满足售出数量！");
        }else if (new Long(0L).equals(firstQuantityNow)) {
            ledgerGoods.setGoodsStatus("4");    // 写入商品售卖情况：已售罄
            ledgerGoods.setFreezeStatus("1");   // 已售罄时自动冻结该商品
        }else {
            ledgerGoods.setGoodsStatus("3");    // 写入商品售卖情况：部分售出
        }
        ledgerGoods.setFirstQuantityNow(firstQuantityNow);  // 写入现物品第一数量
//        ledgerGoodsMapper.updateLedgerGoods(ledgerGoods);
//        // 增加售卖明细
//        salesDetailsService.inSales(ledgerId, goodsCode, salesQuantity, type, ledgerGoods.getGoodsName(), ledgerGoods.getGoodsAlias(), consumerId, String.valueOf(priceFirst));

        // 根据商品活动捆绑销售商品单号进行售卖(只有外售才考虑捆绑销售)
        if (!Objects.isNull(ledgerGoods.getBundleSellCode())) {
            String[] bundleCodeQuantityList = ledgerGoods.getBundleSellCode().split(",");
            if ("outSales".equals(type)) {
                // 循环遍历每一个捆绑销售物品
                for (String bundleCodeQuantityTem : bundleCodeQuantityList) {
                    String[] bundleCodeQuantityListTem = bundleCodeQuantityTem.split("=");
                    String bundleGoodsCode = bundleCodeQuantityListTem[0];  // 绑定商品编码
                    Long bundleSalesQuantity = Long.valueOf(bundleCodeQuantityListTem[1]) * Long.valueOf(salesQuantity);    // 绑定商品售卖数量(第一数量)
                    // 拿到台账物品信息
                    /*LambdaQueryWrapper<LedgerGoods> lambdaQueryWrapper = new LambdaQueryWrapper();
                    lambdaQueryWrapper.eq(LedgerGoods::getGoodsCode, bundleGoodsCode);
                    LedgerGoods ledgerGoodsTem = ledgerGoodsMapper.selectOne(lambdaQueryWrapper);*/
                    LedgerGoods ledgerGoodsTemPro = new LedgerGoods();
                    ledgerGoodsTemPro.setGoodsCode(bundleGoodsCode);
                    List<LedgerGoods> ledgerGoodsTemList = this.selectLedgerGoodsList(ledgerGoodsTemPro);
                    LedgerGoods ledgerGoodsTem = ledgerGoodsTemList.get(0);
                    // 判断捆绑商品的物品状态
                    if (!"2".equals(ledgerGoodsTem.getGoodsStatus()) && !"3".equals(ledgerGoodsTem.getGoodsStatus())) {
                        return AjaxResult.error("外售失败，捆绑销售商品状态不处于「货架待售」或「部分售出」！");
                    }
                    ledgerGoodsTem.setUpdateDate(DateUtils.getDateNowDate("yyyy-MM-dd HH:MM:SS")); // 更新时间
                    // 计算商品现存数量
                    Long firstQuantityNowTem = ledgerGoodsTem.getFirstQuantityNow();  // 第一数量
                    Long secondQuantityNowTem = ledgerGoodsTem.getSecondQuantityNow();    // 第二数量
                    // 计算第一数量与第二数量的比例
                    Double proportionTem = firstQuantityNowTem / Double.valueOf(secondQuantityNowTem);
                    // 第二数量计算及写入(只要一个为空就不能算)
                    if (!Objects.isNull(ledgerGoodsTem.getSecondQuantityNow()) && !Objects.isNull(ledgerGoodsTem.getSecondMeasurement())) {
                        // 第二数量应该减去：
                        Double numSecondTem = secondQuantityNowTem - (firstQuantityNowTem - Long.valueOf(bundleSalesQuantity)) / proportionTem;
                        secondQuantityNowTem = secondQuantityNow - numSecondTem.longValue();
                        ledgerGoodsTem.setSecondQuantityNow(secondQuantityNowTem);    // 写入第二物品数量
                    }
                    // 第一数量计算及写入
                    firstQuantityNowTem -= bundleSalesQuantity;  // 第一数量更新后
                    if (firstQuantityNowTem < 0) {
                        return AjaxResult.error("绑定销售商品现物品数量不足以满足售出数量！");
                    } else if (new Long(0L).equals(firstQuantityNowTem)) {
                        ledgerGoodsTem.setGoodsStatus("4");    // 写入商品售卖情况：已售罄
                        ledgerGoodsTem.setFreezeStatus("1");   // 已售罄时自动冻结该商品
                    } else {
                        ledgerGoodsTem.setGoodsStatus("3");    // 写入商品售卖情况：部分售出
                    }
                    ledgerGoodsTem.setFirstQuantityNow(firstQuantityNowTem);  // 写入现物品第一数量
                    ledgerGoodsMapper.updateLedgerGoods(ledgerGoodsTem);
                    // 增加售卖明细
                    salesDetailsService.bundleSales(ledgerGoodsTem.getGoodsCode(), ledgerGoodsTem.getGoodsName(), ledgerGoodsTem.getGoodsAlias(), String.valueOf(bundleSalesQuantity), goodsCode, consumerId);
                }
                ledgerGoodsMapper.updateLedgerGoods(ledgerGoods);
                // 增加售卖明细
                salesDetailsService.inSales(ledgerId, goodsCode, salesQuantity, type, ledgerGoods.getGoodsName(), ledgerGoods.getGoodsAlias(), consumerId, String.valueOf(priceFirst));

            }
        }
        return AjaxResult.success("售卖成功，已生成对应售卖明细。");
    }

    /**
     * 退货更新台账明细
     * @param salesId 销售明细主键id
     * @param goodsCode 销售物品编码
     * @param salesQuantity 销售物品数量
     * @param salesPrice 物品被销售时的价格
     * @return
     */
    @Transactional
    public AjaxResult returnGoods(String salesId, String goodsCode, String salesQuantity, String salesPrice) {

        String resultData = withdrawalOfSale.withdrawalOfSale(goodsCode, Long.valueOf(salesPrice) , Long.valueOf(salesQuantity));
        String[] resultDataList = resultData.split(",");
        String shouldIncreseFirstQuantity = resultDataList[0];
        String shouldIncreseSecondQuantity = resultDataList[1];
        String shouldReduceProfit = resultDataList[2];
        String resultUpdate = resultDataList[3];
        /*
            可以完善回执
         */
        return AjaxResult.success("已更新商品台账信息，退货成功！");
    }




}
