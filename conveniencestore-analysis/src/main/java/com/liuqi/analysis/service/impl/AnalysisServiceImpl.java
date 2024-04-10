package com.liuqi.analysis.service.impl;

import com.liuqi.analysis.controller.tool.Subtraction;
import com.liuqi.analysis.mapper.AnalysisMapper;
import com.liuqi.analysis.service.IAnalysisService;
import com.liuqi.common.core.domain.entity.SysUser;
import com.liuqi.common.utils.ShiroUtils;
import com.liuqi.procure.domain.PurchaseForm;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.swing.text.html.parser.Entity;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Service
public class AnalysisServiceImpl implements IAnalysisService {

    @Resource
    private Subtraction subtraction;
    @Resource
    private AnalysisMapper analysisMapper;


    /**
     * 获取近一年来「每月」的采购支总出与商品总收入（柱状图）/利润（折线图）数据
     * @param date
     * @return
     */
    @Override
    @Transactional
    public List<Double[]> getInfoOprion1(String date) {
        String year = date.split("-")[0];   // 获取今年年份
        String _year = "-" + date.split("-")[0];
        SysUser currentUser = ShiroUtils.getSysUser(); // 限制数据获取部门
        String dept_id = String.valueOf(currentUser.getDeptId());

        List<Double> option1DataCostList = analysisMapper.selectGetCost(year, _year, dept_id);  // 每月成本获取
        Double[] option1DataCost = option1DataCostList.stream().toArray(Double[]::new); // 转换成数组形式

        List<Double> option1DataInComeList = analysisMapper.selectGetInCome(year, _year, dept_id);  // 每月收入获取
        Double[] option1DataInCome = option1DataInComeList.stream().toArray(Double[]::new);

        List<Double> option1DataProfitList = subtraction.subtractArrays(option1DataInCome, option1DataCost); // 每月盈利获取
        Double[] option1DataProfit = option1DataProfitList.stream().toArray(Double[]::new);

        List<Double[]> resultList = new ArrayList<>();
        resultList.add(option1DataCost);
        resultList.add(option1DataInCome);
        resultList.add(option1DataProfit);
        return resultList;
    }
}
