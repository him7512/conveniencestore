package com.liuqi.management.service;

import java.util.List;

import com.liuqi.common.core.domain.AjaxResult;
import com.liuqi.management.domain.LedgerGoods;

/**
 * 商品台账信息Service接口
 *
 * @author liuqi
 * @date 2024-03-06
 */
public interface ILedgerGoodsService
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
}
