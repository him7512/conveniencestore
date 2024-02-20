prompt Importing table SYS_POST...
set feedback off
set define off

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1', 'ceo', '董事长', '1', '0', 'admin', to_date('20-02-2024 15:06:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 16:48:52', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2', 'se', '项目经理', '2', '0', 'admin', to_date('20-02-2024 15:06:17', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('3', 'hr', '人力资源', '3', '0', 'admin', to_date('20-02-2024 15:06:17', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('4', 'user', '员工', '4', '0', 'admin', to_date('20-02-2024 15:06:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 17:07:51', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('10', 'storemanager', '店长', '11', '0', 'admin', to_date('20-02-2024 17:05:11', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 17:12:02', 'dd-mm-yyyy hh24:mi:ss'), '因为采取个体经营模式，不存在地区长官、所以个体店最高级别为店长，主要负责店铺的日常管理和运营、监督员工工作、消费者反馈工作，确保服务质量和销售目标的达成，以及负责人员招聘、培训和绩效评估等工作。');

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('11', 'clerk', '店员', '12', '0', 'admin', to_date('20-02-2024 17:07:36', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 17:11:53', 'dd-mm-yyyy hh24:mi:ss'), '人员不足时，包含收银、导购、保洁、补货等职责，另外检查货架商品的质量、保质期以及负责店铺安全等问题。');

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('13', 'sales', '导购员', '14', '0', 'admin', to_date('20-02-2024 17:12:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, '负责引导顾客购买所需物品。');

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('14', 'cleaningstaff', '保洁员', '15', '0', 'admin', to_date('20-02-2024 17:13:45', 'dd-mm-yyyy hh24:mi:ss'), null, null, '负责整个店面的卫生环境。');

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('16', 'localwarehouseadministrator', '本地仓管理员', '17', '0', 'admin', to_date('20-02-2024 17:16:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, '负责管理店主自营店铺的仓库。');

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('12', 'cashier', '收银员', '13', '0', 'admin', to_date('20-02-2024 17:11:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 17:12:58', 'dd-mm-yyyy hh24:mi:ss'), '负责收银，小食等业务。');

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('15', 'Replenishman', '补货员', '16', '0', 'admin', to_date('20-02-2024 17:15:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '负责补充货物，包含提货、将货物放入货架等。');

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('17', 'warehousekeeper', '仓库管理员', '31', '0', 'admin', to_date('20-02-2024 17:17:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, '便利店的货物由中心仓库统一进行调配，负责接收哪家店铺需要供货，补货程度几何，是否需要由上级调补仓库等皆由仓库管理员负责。');

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('18', 'warehousesalesperson', '仓库业务员', '32', '0', 'admin', to_date('20-02-2024 17:17:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, '负责接收仓库管理员的仓库处理内容并执行，检查仓库内货物日期与损坏情况，实际完成货物出库入库、仓库卫生条件保持等操作。');

prompt Done.
