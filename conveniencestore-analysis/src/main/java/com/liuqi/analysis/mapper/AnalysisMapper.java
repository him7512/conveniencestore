package com.liuqi.analysis.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.liuqi.procure.domain.PurchaseForm;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import javax.swing.text.html.parser.Entity;
import java.util.List;
import java.util.Map;

public interface AnalysisMapper extends BaseMapper {

    /**
     * 每月成本获取方法
     * @return
     */
    @Select("SELECT                                                                                                 \n" +
            "    COALESCE(SUM(t.PUR_TOTAL_PRICE), 0)                                                                \n" +
            "FROM                                                                                                   \n" +
            "     (                                                                                                 \n" +
            "       SELECT TO_DATE('01-' || LPAD(level, 2, '0') || #{_year}, 'DD-MM-YYYY') AS MONTH_DATE            \n" +
            "       FROM dual                                                                                       \n" +
            "       CONNECT BY LEVEL <= 12                                                                          \n" +
            "     ) calendar                                                                                        \n" +
            "LEFT JOIN                                                                                              \n" +
            "    PURCHASE_FORM t ON EXTRACT(YEAR FROM t.CREATE_DATE) = EXTRACT(YEAR FROM calendar.MONTH_DATE)       \n" +
            "    AND EXTRACT(MONTH FROM t.CREATE_DATE) = EXTRACT(MONTH FROM calendar.MONTH_DATE)                    \n" +
            "    AND t.DEPT_ID = #{dept_id}                                                                         \n" +
            "WHERE                                                                                                  \n" +
            "    EXTRACT(YEAR FROM calendar.MONTH_DATE) =  #{year}                                                  \n" +
            "GROUP BY                                                                                               \n" +
            "    EXTRACT(YEAR FROM calendar.MONTH_DATE), EXTRACT(MONTH FROM calendar.MONTH_DATE)                    \n" +
            "ORDER BY                                                                                               \n" +
            "    EXTRACT(YEAR FROM calendar.MONTH_DATE), EXTRACT(MONTH FROM calendar.MONTH_DATE)                    ")
    List<Double> selectGetCost(@Param("year") String year, @Param("_year") String _year, @Param("dept_id") String dept_id);

    /**
     * 每月收入获取方法
     * @return
     */
    @Select("SELECT                                                                                                 \n" +
            "    COALESCE(SUM(t.PROFIT_UPTONOW), 0)                                                                 \n" +
            "FROM                                                                                                   \n" +
            "     (                                                                                                 \n" +
            "       SELECT TO_DATE('01-' || LPAD(level, 2, '0') || #{_year}, 'DD-MM-YYYY') AS MONTH_DATE            \n" +
            "       FROM dual                                                                                       \n" +
            "       CONNECT BY LEVEL <= 12                                                                          \n" +
            "     ) calendar                                                                                        \n" +
            "LEFT JOIN                                                                                              \n" +
            "    LEDGER_GOODS t ON EXTRACT(YEAR FROM t.CREATE_DATE) = EXTRACT(YEAR FROM calendar.MONTH_DATE)        \n" +
            "    AND EXTRACT(MONTH FROM t.CREATE_DATE) = EXTRACT(MONTH FROM calendar.MONTH_DATE)                    \n" +
            "    AND t.DEPT_ID = #{dept_id}                                                                         \n" +
            "WHERE                                                                                                  \n" +
            "    EXTRACT(YEAR FROM calendar.MONTH_DATE) =  #{year}                                                  \n" +
            "GROUP BY                                                                                               \n" +
            "    EXTRACT(YEAR FROM calendar.MONTH_DATE), EXTRACT(MONTH FROM calendar.MONTH_DATE)                    \n" +
            "ORDER BY                                                                                               \n" +
            "    EXTRACT(YEAR FROM calendar.MONTH_DATE), EXTRACT(MONTH FROM calendar.MONTH_DATE)                    ")
    List<Double> selectGetInCome(@Param("year") String year, @Param("_year") String _year, @Param("dept_id") String dept_id);




}
