package com.liuqi.management.service;

import java.io.UnsupportedEncodingException;
import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;
import com.liuqi.common.core.domain.AjaxResult;
import com.liuqi.management.domain.LedgerGoods;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

/**
 * 商品台账信息Service接口
 *
 * @author liuqi
 * @date 2024-03-06
 */
@Component
@Service
public interface ILedgerGoodsService extends IService<LedgerGoods>
{
    /**
     * 查询商品台账信息
     *
     * @param ledgerId 商品台账信息主键
     * @return 商品台账信息
     */
    public LedgerGoods selectLedgerGoodsByLedgerId(Long ledgerId);

    /**
     * 查询商品台账信息列表
     *
     * @param ledgerGoods 商品台账信息
     * @return 商品台账信息集合
     */
    public List<LedgerGoods> selectLedgerGoodsList(LedgerGoods ledgerGoods);

    /**
     * 查询商品台账信息列表(外售支持)
     *
     * @param ledgerGoods 商品台账信息
     * @return 商品台账信息集合
     */
    public List<LedgerGoods> selectLedgerGoodsOutSalesList(LedgerGoods ledgerGoods);

    /**
     * 新增商品台账信息
     *
     * @param ledgerGoods 商品台账信息
     * @return 结果
     */
    public AjaxResult insertLedgerGoods(LedgerGoods ledgerGoods);

    /**
     * 修改商品台账信息
     *
     * @param ledgerGoods 商品台账信息
     * @return 结果
     */
    public int updateLedgerGoods(LedgerGoods ledgerGoods);

    /**
     * 批量删除商品台账信息
     *
     * @param ledgerIds 需要删除的商品台账信息主键集合
     * @return 结果
     */
    public int deleteLedgerGoodsByLedgerIds(String ledgerIds);

    /**
     * 删除商品台账信息信息
     *
     * @param ledgerId 商品台账信息主键
     * @return 结果
     */
    public int deleteLedgerGoodsByLedgerId(Long ledgerId);

    /**
     * 销售添加
     * @param ledgerId  商品台账信息主键
     * @param goodsCode 商品编码
     * @param salesQuantity   销售数量
     * @param type  售卖类型(insales=內售;outSales=外售)
     * @param consumerId 购买人id
     * @param inPrice 内购价格
     * @return
     */
    public AjaxResult inSales(String ledgerId, String goodsCode, String salesQuantity, String type, String consumerId, String inPrice);

    /**
     * 退货更新台账明细
     *
     */
    public AjaxResult returnGoods(String salesId, String goodsCode, String salesQuantity, String salesPrice);

}
