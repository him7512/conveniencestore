package com.liuqi.management.service.impl;

import java.util.List;

import com.liuqi.common.core.domain.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.liuqi.management.mapper.LedgerGoodsMapper;
import com.liuqi.management.domain.LedgerGoods;
import com.liuqi.management.service.ILedgerGoodsService;
import com.liuqi.common.core.text.Convert;

/**
 * 商品台账信息Service业务层处理
 *
 * @author liuqi
 * @date 2024-03-06
 */
@Service
public class LedgerGoodsServiceImpl implements ILedgerGoodsService
{
    @Autowired
    private LedgerGoodsMapper ledgerGoodsMapper;

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
}
