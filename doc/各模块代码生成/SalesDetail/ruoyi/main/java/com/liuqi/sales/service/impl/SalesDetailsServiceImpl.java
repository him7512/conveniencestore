package com.liuqi.sales.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.liuqi.sales.mapper.SalesDetailsMapper;
import com.liuqi.sales.domain.SalesDetails;
import com.liuqi.sales.service.ISalesDetailsService;
import com.liuqi.common.core.text.Convert;

/**
 * 售卖明细查询Service业务层处理
 * 
 * @author liuqi
 * @date 2024-03-13
 */
@Service
public class SalesDetailsServiceImpl implements ISalesDetailsService 
{
    @Autowired
    private SalesDetailsMapper salesDetailsMapper;

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
}
