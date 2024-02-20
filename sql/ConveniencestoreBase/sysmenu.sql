prompt Importing table SYS_MENU...
set feedback off
set define off

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1014', '菜单修改', '102', '3', '#', null, 'F', '0', '1', 'system:menu:edit', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1015', '菜单删除', '102', '4', '#', null, 'F', '0', '1', 'system:menu:remove', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1016', '部门查询', '103', '1', '#', null, 'F', '0', '1', 'system:dept:list', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1017', '部门新增', '103', '2', '#', null, 'F', '0', '1', 'system:dept:add', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1018', '部门修改', '103', '3', '#', null, 'F', '0', '1', 'system:dept:edit', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1019', '部门删除', '103', '4', '#', null, 'F', '0', '1', 'system:dept:remove', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1020', '岗位查询', '104', '1', '#', null, 'F', '0', '1', 'system:post:list', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1021', '岗位新增', '104', '2', '#', null, 'F', '0', '1', 'system:post:add', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1022', '岗位修改', '104', '3', '#', null, 'F', '0', '1', 'system:post:edit', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1023', '岗位删除', '104', '4', '#', null, 'F', '0', '1', 'system:post:remove', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1024', '岗位导出', '104', '5', '#', null, 'F', '0', '1', 'system:post:export', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1025', '字典查询', '105', '1', '#', null, 'F', '0', '1', 'system:dict:list', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1026', '字典新增', '105', '2', '#', null, 'F', '0', '1', 'system:dict:add', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1027', '字典修改', '105', '3', '#', null, 'F', '0', '1', 'system:dict:edit', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1028', '字典删除', '105', '4', '#', null, 'F', '0', '1', 'system:dict:remove', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1029', '字典导出', '105', '5', '#', null, 'F', '0', '1', 'system:dict:export', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1030', '参数查询', '106', '1', '#', null, 'F', '0', '1', 'system:config:list', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1031', '参数新增', '106', '2', '#', null, 'F', '0', '1', 'system:config:add', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1032', '参数修改', '106', '3', '#', null, 'F', '0', '1', 'system:config:edit', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1033', '参数删除', '106', '4', '#', null, 'F', '0', '1', 'system:config:remove', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1034', '参数导出', '106', '5', '#', null, 'F', '0', '1', 'system:config:export', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1035', '公告查询', '107', '1', '#', null, 'F', '0', '1', 'system:notice:list', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1036', '公告新增', '107', '2', '#', null, 'F', '0', '1', 'system:notice:add', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1037', '公告修改', '107', '3', '#', null, 'F', '0', '1', 'system:notice:edit', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1038', '公告删除', '107', '4', '#', null, 'F', '0', '1', 'system:notice:remove', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1039', '操作查询', '500', '1', '#', null, 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1040', '操作删除', '500', '2', '#', null, 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1041', '详细信息', '500', '3', '#', null, 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1042', '日志导出', '500', '4', '#', null, 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1043', '登录查询', '501', '1', '#', null, 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1044', '登录删除', '501', '2', '#', null, 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1045', '日志导出', '501', '3', '#', null, 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1046', '账户解锁', '501', '4', '#', null, 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1047', '在线查询', '109', '1', '#', null, 'F', '0', '1', 'monitor:online:list', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1048', '批量强退', '109', '2', '#', null, 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1049', '单条强退', '109', '3', '#', null, 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1050', '任务查询', '110', '1', '#', null, 'F', '0', '1', 'monitor:job:list', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1051', '任务新增', '110', '2', '#', null, 'F', '0', '1', 'monitor:job:add', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1052', '任务修改', '110', '3', '#', null, 'F', '0', '1', 'monitor:job:edit', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1053', '任务删除', '110', '4', '#', null, 'F', '0', '1', 'monitor:job:remove', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1054', '状态修改', '110', '5', '#', null, 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1055', '任务详细', '110', '6', '#', null, 'F', '0', '1', 'monitor:job:detail', '#', 'admin', to_date('20-02-2024 15:06:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1056', '任务导出', '110', '7', '#', null, 'F', '0', '1', 'monitor:job:export', '#', 'admin', to_date('20-02-2024 15:06:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1057', '生成查询', '115', '1', '#', null, 'F', '0', '1', 'tool:gen:list', '#', 'admin', to_date('20-02-2024 15:06:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1058', '生成修改', '115', '2', '#', null, 'F', '0', '1', 'tool:gen:edit', '#', 'admin', to_date('20-02-2024 15:06:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1059', '生成删除', '115', '3', '#', null, 'F', '0', '1', 'tool:gen:remove', '#', 'admin', to_date('20-02-2024 15:06:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1060', '预览代码', '115', '4', '#', null, 'F', '0', '1', 'tool:gen:preview', '#', 'admin', to_date('20-02-2024 15:06:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1061', '生成代码', '115', '5', '#', null, 'F', '0', '1', 'tool:gen:code', '#', 'admin', to_date('20-02-2024 15:06:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2060', '区划管理', '1', '10', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-institution', 'admin', to_date('20-02-2024 16:52:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2001', '基础管理', '0', '2', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-gears', 'admin', to_date('20-02-2024 10:56:57', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:19:42', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2003', '仓库信息', '2001', '4', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-cubes', 'admin', to_date('20-02-2024 10:59:35', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2008', '采购登记', '2007', '2', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-calendar-o', 'admin', to_date('20-02-2024 11:12:31', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2009', '仓库采购登记明细', '2008', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-cubes', 'admin', to_date('20-02-2024 11:13:04', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:14:02', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2010', '店铺采购登记明细', '2008', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-cube', 'admin', to_date('20-02-2024 11:13:40', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2013', '常用资料下载', '2011', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-commenting', 'admin', to_date('20-02-2024 11:16:04', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2020', '入库登记确认', '2018', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-bars', 'admin', to_date('20-02-2024 11:24:45', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2021', '入库单查询', '2018', '4', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-bars', 'admin', to_date('20-02-2024 11:25:04', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:25:17', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2023', '移库管理', '2017', '4', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-exchange', 'admin', to_date('20-02-2024 11:27:06', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2024', '移库单制单', '2023', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-arrows-h', 'admin', to_date('20-02-2024 11:27:29', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2028', '物品盘点制单', '2027', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-server', 'admin', to_date('20-02-2024 11:31:18', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2029', '盘点结果处理', '2027', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-server', 'admin', to_date('20-02-2024 11:31:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2030', '盘点任务查询', '2027', '4', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-server', 'admin', to_date('20-02-2024 11:32:12', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:34:00', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2032', '物品拆分制单', '2031', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-star-half', 'admin', to_date('20-02-2024 11:35:19', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1', '系统管理', '0', '1', '#', null, 'M', '0', '1', null, 'fa fa-gear', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '系统管理目录');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2', '系统监控', '0', '21', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-video-camera', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:16:33', 'dd-mm-yyyy hh24:mi:ss'), '系统监控目录');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('3', '系统工具', '0', '22', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-bars', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:16:38', 'dd-mm-yyyy hh24:mi:ss'), '系统工具目录');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2011', '辅助功能', '0', '20', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-handshake-o', 'admin', to_date('20-02-2024 11:15:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:16:28', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('100', '用户管理', '2001', '2', '/system/user', 'menuItem', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 10:57:16', 'dd-mm-yyyy hh24:mi:ss'), '用户管理菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('101', '角色管理', '1', '3', '/system/role', 'menuItem', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 10:54:37', 'dd-mm-yyyy hh24:mi:ss'), '角色管理菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('102', '菜单管理', '1', '4', '/system/menu', 'menuItem', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 10:54:43', 'dd-mm-yyyy hh24:mi:ss'), '菜单管理菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('103', '店铺信息管理', '1', '2', '/system/dept', 'menuItem', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 10:57:34', 'dd-mm-yyyy hh24:mi:ss'), '部门管理菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('104', '岗位管理', '1', '5', '/system/post', null, 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '岗位管理菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('105', '字典管理', '1', '6', '/system/dict', null, 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '字典管理菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('106', '参数设置', '1', '7', '/system/config', null, 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '参数设置菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('107', '通知公告', '1', '8', '/system/notice', null, 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '通知公告菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('108', '日志管理', '1', '9', '#', null, 'M', '0', '1', null, 'fa fa-pencil-square-o', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '日志管理菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('109', '在线用户', '2', '1', '/monitor/online', null, 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '在线用户菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('110', '定时任务', '2', '2', '/monitor/job', null, 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '定时任务菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('111', '数据监控', '2', '3', '/monitor/data', null, 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '数据监控菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('112', '服务监控', '2', '4', '/monitor/server', null, 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '服务监控菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('113', '缓存监控', '2', '5', '/monitor/cache', null, 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '缓存监控菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('114', '表单构建', '3', '1', '/tool/build', null, 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '表单构建菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('115', '代码生成', '3', '2', '/tool/gen', null, 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '代码生成菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('116', '系统接口', '3', '3', '/tool/swagger', null, 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '系统接口菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('500', '操作日志', '108', '1', '/monitor/operlog', null, 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '操作日志菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('501', '登录日志', '108', '2', '/monitor/logininfor', null, 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '登录日志菜单');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1000', '用户查询', '100', '1', '#', null, 'F', '0', '1', 'system:user:list', '#', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1001', '用户新增', '100', '2', '#', null, 'F', '0', '1', 'system:user:add', '#', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1002', '用户修改', '100', '3', '#', null, 'F', '0', '1', 'system:user:edit', '#', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1003', '用户删除', '100', '4', '#', null, 'F', '0', '1', 'system:user:remove', '#', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1004', '用户导出', '100', '5', '#', null, 'F', '0', '1', 'system:user:export', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1005', '用户导入', '100', '6', '#', null, 'F', '0', '1', 'system:user:import', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1006', '重置密码', '100', '7', '#', null, 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1007', '角色查询', '101', '1', '#', null, 'F', '0', '1', 'system:role:list', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1008', '角色新增', '101', '2', '#', null, 'F', '0', '1', 'system:role:add', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1009', '角色修改', '101', '3', '#', null, 'F', '0', '1', 'system:role:edit', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1010', '角色删除', '101', '4', '#', null, 'F', '0', '1', 'system:role:remove', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1011', '角色导出', '101', '5', '#', null, 'F', '0', '1', 'system:role:export', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1012', '菜单查询', '102', '1', '#', null, 'F', '0', '1', 'system:menu:list', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1013', '菜单新增', '102', '2', '#', null, 'F', '0', '1', 'system:menu:add', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2002', '物品分类', '2001', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-star-half-empty', 'admin', to_date('20-02-2024 10:58:40', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 10:58:53', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2004', '台账管理', '2001', '5', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-calendar-o', 'admin', to_date('20-02-2024 11:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2005', '单据编码管理', '2001', '6', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-edit', 'admin', to_date('20-02-2024 11:00:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2006', '外部机构管理', '2001', '7', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-bank', 'admin', to_date('20-02-2024 11:01:31', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2007', '采购管理', '0', '3', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-truck', 'admin', to_date('20-02-2024 11:11:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2012', '资源下载', '2011', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-cloud-download', 'admin', to_date('20-02-2024 11:15:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2014', '分析统计', '0', '19', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-hourglass-1', 'admin', to_date('20-02-2024 11:17:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2015', '报表分析', '2014', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-bar-chart-o', 'admin', to_date('20-02-2024 11:18:04', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2016', '综合分析', '2014', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-line-chart', 'admin', to_date('20-02-2024 11:18:35', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2017', '仓储管理', '0', '4', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-cubes', 'admin', to_date('20-02-2024 11:19:26', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:20:42', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2018', '入库管理', '2017', '2', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-sitemap', 'admin', to_date('20-02-2024 11:21:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2019', '入库登记制单', '2018', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-bars', 'admin', to_date('20-02-2024 11:23:29', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2022', '物品信息管理', '2017', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-book', 'admin', to_date('20-02-2024 11:26:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2025', '移库单确认', '2023', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-arrows-h', 'admin', to_date('20-02-2024 11:28:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2026', '物品移库查询', '2023', '4', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-arrows-h', 'admin', to_date('20-02-2024 11:28:50', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2027', '物品盘点', '2017', '5', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-industry', 'admin', to_date('20-02-2024 11:29:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2031', '物品拆分', '2017', '6', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-refresh', 'admin', to_date('20-02-2024 11:34:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2033', '物品拆分查询', '2031', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-star-half', 'admin', to_date('20-02-2024 11:35:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2034', '售卖管理', '0', '5', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-shopping-bag', 'admin', to_date('20-02-2024 11:36:50', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:44:57', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2036', '內售支持', '2034', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-cart-plus', 'admin', to_date('20-02-2024 11:38:27', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:45:18', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2037', '外售支持', '2034', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-cart-plus', 'admin', to_date('20-02-2024 11:38:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:45:29', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2038', '退换货管理', '2034', '4', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-cart-plus', 'admin', to_date('20-02-2024 11:39:09', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:45:45', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2039', '销毁管理', '2017', '7', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-remove', 'admin', to_date('20-02-2024 11:40:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2040', '物品销毁制单', '2039', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-times-circle-o', 'admin', to_date('20-02-2024 11:40:55', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2041', '物品销毁查询', '2039', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-times-circle-o', 'admin', to_date('20-02-2024 11:41:23', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2042', '其它处置', '2017', '8', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-sign-out', 'admin', to_date('20-02-2024 11:42:20', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:44:45', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2043', '其它处置制单', '2042', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-level-up', 'admin', to_date('20-02-2024 11:43:27', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2044', '其它处置查询', '2042', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-level-up', 'admin', to_date('20-02-2024 11:44:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

prompt Done.
