package com.liuqi.sales.mapper;

import java.util.List;
import com.liuqi.sales.domain.SalesDetails;

/**
 * 售卖明细查询Mapper接口
 * 
 * @author liuqi
 * @date 2024-03-13
 */
public interface SalesDetailsMapper 
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
     * 删除售卖明细查询
     * 
     * @param salesId 售卖明细查询主键
     * @return 结果
     */
    public int deleteSalesDetailsBySalesId(Long salesId);

    /**
     * 批量删除售卖明细查询
     * 
     * @param salesIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSalesDetailsBySalesIds(String[] salesIds);
}
