package com.liuqi.analysis.service;

import java.util.List;

public interface IAnalysisService {

    /**
     * 获取近一年来「每月」的采购支总出与商品总收入（柱状图）/利润（折线图）数据
     * @param date
     * @return
     */
    List<Double[]> getInfoOprion1(String date);


}
