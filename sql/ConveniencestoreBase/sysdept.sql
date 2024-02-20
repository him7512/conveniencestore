prompt Importing table SYS_DEPT...
set feedback off
set define off

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values ('100', '0', '0', '中国大陆', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', to_date('20-02-2024 15:06:15', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values ('101', '100', '0,100', '济南总部', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', to_date('20-02-2024 15:06:15', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values ('102', '100', '0,100', '北京省总仓', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', to_date('20-02-2024 15:06:15', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', to_date('20-02-2024 15:06:15', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', to_date('20-02-2024 15:06:15', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', to_date('20-02-2024 15:06:15', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', to_date('20-02-2024 15:06:15', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', to_date('20-02-2024 15:06:15', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', to_date('20-02-2024 15:06:15', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', to_date('20-02-2024 15:06:15', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values ('201', '100', '0,100', '山东省总仓', '3', '刘奇', '18660436761', 'lq010705@163.com', '0', '0', 'admin', to_date('20-02-2024 16:38:52', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values ('202', '201', '0,100,201', '济南市总仓', '1', '刘奇', '18660436761', 'lq010705@163.com', '0', '0', 'admin', to_date('20-02-2024 16:39:33', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values ('203', '202', '0,100,201,202', '历下区总仓', '1', '刘奇', '18660436761', 'lq010705@163.com', '0', '0', 'admin', to_date('20-02-2024 16:40:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values ('204', '202', '0,100,201,202', '市中区总仓', '2', '刘奇', '18660436761', 'lq010705@163.com', '0', '0', 'admin', to_date('20-02-2024 16:41:08', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values ('205', '204', '0,100,201,202,204', '测试便利店1', '1', '刘奇', '18660436761', 'lq010705@163.com', '0', '0', 'admin', to_date('20-02-2024 16:41:47', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values ('206', '204', '0,100,201,202,204', '测试便利店2', '2', '刘奇', '18660436761', 'lq010705@163.com', '0', '0', 'admin', to_date('20-02-2024 16:42:10', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values ('200', '100', '0,100', '辽宁省总仓', '4', null, null, null, '0', '0', 'admin', to_date('20-02-2024 15:30:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);

prompt Done.
