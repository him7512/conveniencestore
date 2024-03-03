package com.liuqi.procure.controller.common;

/**
 * 便利店系统采购模块表单状态变量
 */
public class procureCommonStatus {
    /**
     * 采购模块-物品采购条目
     */
    public static String pur_status_init = "1";         // 物品采购条目-制单中
    public static String pur_status_audit = "2";         // 物品采购条目-待审核
    public static String pur_status_return = "3";         // 物品采购条目-退回
    public static String pur_status_cancel = "4";         // 物品采购条目-作废
    public static String pur_status_warehousing = "5";         // 物品采购条目-已入库
    public static String pur_status_transfer = "6";         // 物品采购条目-已移交

    /**
     * 采购模块-采购登记单
     */
    public static String pur_reg_status_init = "1";      // 采购登记单状态-制单中
    public static String pur_reg_status_audit = "2";      // 采购登记单状态-已移交
    public static String pur_reg_status_return = "3";      // 采购登记单状态-退回
    public static String pur_reg_status_cancel = "4";      // 采购登记单状态-作废
    public static String pur_reg_status_pass = "5";      // 采购登记单状态-通过






}
