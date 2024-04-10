package com.liuqi.analysis.controller;

import com.liuqi.analysis.service.IAnalysisService;
import com.liuqi.common.core.controller.BaseController;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/analysis/about")
public class analysisController extends BaseController {
    private String prefix = "analysis/about";

    @Resource
    private IAnalysisService analysisService;


    /**
     * 综合分析-综合分析
     */
    @RequiresPermissions("ordinary:analysis:comprehensiveAnalysis")
    @GetMapping("/comprehensive")
    public String profitAnalysis(ModelMap mmap)
    {
        // option1 数据获取
        List<Double[]> options1List = analysisService.getInfoOprion1(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
        mmap.put("option1DataCost", options1List.get(0));
        mmap.put("option1DataIncome", options1List.get(1));
        mmap.put("option1DataProfit", options1List.get(2));

        // option3 数据获取
        List<List<Object>> option3Data = new ArrayList<>();
        option3Data.add(Arrays.asList("Cake", 123, 1));
        option3Data.add(Arrays.asList("Cereal", 231, 1));
        option3Data.add(Arrays.asList("Tofu", 235, 1));
        option3Data.add(Arrays.asList("Dumpling", 341, 1));
        option3Data.add(Arrays.asList("Biscuit", 122, 1));
        option3Data.add(Arrays.asList("Cake", 143, 2));
        option3Data.add(Arrays.asList("Cereal", 201, 2));
        option3Data.add(Arrays.asList("Tofu", 255, 2));
        option3Data.add(Arrays.asList("Dumpling", 241, 2));
        option3Data.add(Arrays.asList("Biscuit", 102, 2));
        mmap.put("option3Data", option3Data);



        return prefix + "/comprehensiveAnalysis";
    }

    /**
     * 综合分析-报表展示
     */
    @RequiresPermissions("ordinary:analysis:reportForms")
    @GetMapping("/reportForms")
    public String goodsAnalysis()
    {
        return prefix + "/reportForms";
    }

    private static boolean dreams;
    private static boolean reality;
    private static boolean thePricePaid;

    private static boolean heartBreak() {
        return true;
    }
    private static boolean StruggleAndHardWork() {
        return true;
    }


                            /**
                             * dream
                             */
                            @RequiresPermissions("success:analysis:whatCanYouGain")
                            @GetMapping("/believeInYourself")
                            public String analysis()
                            {
                                if (!dreams && reality) { // 当我们的梦想消失在现实的世界中。
                                    thePricePaid  = heartBreak();
                                    // 请允许自己尽情释放所有的泪水。
                                }
                                // 但时间并不能治愈所有的伤痛。
                                if (StruggleAndHardWork()) { // 如果我们保持斗志，继续战斗！
                                    dreams = thePricePaid;
                                    // 付诸的代价会点燃之前那个飘渺的梦想
                                    reality = dreams;
                                    // 照进现实
                                }
                                if (!dreams && reality) { thePricePaid  = heartBreak(); }
                                if (StruggleAndHardWork()) { reality = dreams = thePricePaid;}
                                return prefix + "/result";
                            }



}