package com.liuqi.procure.controller.tool;

import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**
 * 单号生成方法工具类
 */
@Service
public class GenerateCode {

    /**
     * 单号生成代码
     * @param deptId
     * @return
     */
    public String generateCode(Long deptId) {
        // 2024/2/25 使用「部门ID-年份-月日-时分秒」00id-yyyy-MMdd-HHMMSS 作为数据单号
        String code_1 = String.format("%04d", deptId); // 将数字格式化为四位长度并添加前导零
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MMdd-HHMMSS");
        Date date = new Date();
        String code_2_3_4 = sdf.format(date);    // 格式化日期并打印结果
        Random random = new Random();
        int code_4 = random.nextInt(9000) + 1000;   // 生成随机四位数
        String purCode = code_1 + "-" + code_2_3_4;
        return purCode;
    }


}
