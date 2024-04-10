package com.liuqi.management.controller.tool;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.liuqi.management.domain.LedgerGoods;
import com.liuqi.management.mapper.LedgerGoodsMapper;
import com.liuqi.management.service.ILedgerGoodsService;
import com.liuqi.management.service.impl.LedgerGoodsServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Objects;

@Service
public class WithdrawalOfSale {

    @Resource
    private ILedgerGoodsService ledgerGoodsService;
    @Resource
    private LedgerGoodsMapper ledgerGoodsMapper;

    /**
     * 撤回已经售卖物品方法（退货处理、撤销处理）
     * 输入物品单号，售卖时的价格，售卖时的数量(第一单位)
     * 返回应该增加的物品第一数量与第二数量(如果有)
     * 返回应该减少的物品收益
     * 返回更新是否成功
     * 用逗号分隔
     */
    @Transactional
    public String withdrawalOfSale(String goodsCode, Long priceFires, Long salesNumber) {

        Long shouldIncreseFirstQuantity = salesNumber;          // 应该增加的物品第一数量
        Double shouldIncreseSecondQuantity = 0.0;                  // 应该增加的物品第二数量
        Long shouldReduceProfit = priceFires * salesNumber;     // 应该减少的商品收益
        LambdaUpdateWrapper<LedgerGoods> lambdaUpdateWrapper = new LambdaUpdateWrapper<>();

        // 由单号拿到物品台账信息
        LedgerGoods ledgerGoodsSearch = new LedgerGoods();
        ledgerGoodsSearch.setGoodsCode(goodsCode);
        List<LedgerGoods> ledgerGoodsTemList = ledgerGoodsService.selectLedgerGoodsList(ledgerGoodsSearch);
        LedgerGoods ledgerGoods = ledgerGoodsTemList.get(0);

        // 拿到当前物品相关信息
        Long firstQuantity = ledgerGoods.getFirstQuantityNow();
        Long secondQuantity = 0L;
        Long secondQuantityNow = 0L;
        if (!Objects.isNull(ledgerGoods.getSecondQuantityNow())) {
            secondQuantity = ledgerGoods.getSecondQuantityNow();
            // 计算第一数量与第二数量比值
            Double proportion = firstQuantity / Double.valueOf(secondQuantity);
            // 由第一数量计算得到应增加第二数量的值
            shouldIncreseSecondQuantity = (shouldIncreseFirstQuantity + firstQuantity) / proportion - secondQuantity;
            secondQuantityNow = secondQuantity + shouldIncreseSecondQuantity.longValue();
            lambdaUpdateWrapper.set(LedgerGoods::getSecondQuantityNow, secondQuantityNow);
        }

        // 更新台账信息准备
        Long firstQuantityNow = firstQuantity + shouldIncreseFirstQuantity;
        String profitUptonow = String.valueOf(Long.valueOf(ledgerGoods.getProfitUptonow()) - shouldReduceProfit);
        lambdaUpdateWrapper.set(LedgerGoods::getFirstQuantityNow, firstQuantityNow);
        lambdaUpdateWrapper.set(LedgerGoods::getProfitUptonow, profitUptonow);
        lambdaUpdateWrapper.eq(LedgerGoods::getGoodsCode, goodsCode);
        boolean resultUpdate = ledgerGoodsService.update(lambdaUpdateWrapper);
        String result = shouldIncreseFirstQuantity + "," + shouldIncreseSecondQuantity + "," + shouldReduceProfit + "," + resultUpdate;
        return result;
    }


}
