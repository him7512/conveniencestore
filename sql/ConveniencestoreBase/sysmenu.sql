prompt Importing table SYS_MENU...
set feedback off
set define off

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1014', '�˵��޸�', '102', '3', '#', null, 'F', '0', '1', 'system:menu:edit', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1015', '�˵�ɾ��', '102', '4', '#', null, 'F', '0', '1', 'system:menu:remove', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1016', '���Ų�ѯ', '103', '1', '#', null, 'F', '0', '1', 'system:dept:list', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1017', '��������', '103', '2', '#', null, 'F', '0', '1', 'system:dept:add', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1018', '�����޸�', '103', '3', '#', null, 'F', '0', '1', 'system:dept:edit', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1019', '����ɾ��', '103', '4', '#', null, 'F', '0', '1', 'system:dept:remove', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1020', '��λ��ѯ', '104', '1', '#', null, 'F', '0', '1', 'system:post:list', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1021', '��λ����', '104', '2', '#', null, 'F', '0', '1', 'system:post:add', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1022', '��λ�޸�', '104', '3', '#', null, 'F', '0', '1', 'system:post:edit', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1023', '��λɾ��', '104', '4', '#', null, 'F', '0', '1', 'system:post:remove', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1024', '��λ����', '104', '5', '#', null, 'F', '0', '1', 'system:post:export', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1025', '�ֵ��ѯ', '105', '1', '#', null, 'F', '0', '1', 'system:dict:list', '#', 'admin', to_date('20-02-2024 15:06:20', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1026', '�ֵ�����', '105', '2', '#', null, 'F', '0', '1', 'system:dict:add', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1027', '�ֵ��޸�', '105', '3', '#', null, 'F', '0', '1', 'system:dict:edit', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1028', '�ֵ�ɾ��', '105', '4', '#', null, 'F', '0', '1', 'system:dict:remove', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1029', '�ֵ䵼��', '105', '5', '#', null, 'F', '0', '1', 'system:dict:export', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1030', '������ѯ', '106', '1', '#', null, 'F', '0', '1', 'system:config:list', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1031', '��������', '106', '2', '#', null, 'F', '0', '1', 'system:config:add', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1032', '�����޸�', '106', '3', '#', null, 'F', '0', '1', 'system:config:edit', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1033', '����ɾ��', '106', '4', '#', null, 'F', '0', '1', 'system:config:remove', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1034', '��������', '106', '5', '#', null, 'F', '0', '1', 'system:config:export', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1035', '�����ѯ', '107', '1', '#', null, 'F', '0', '1', 'system:notice:list', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1036', '��������', '107', '2', '#', null, 'F', '0', '1', 'system:notice:add', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1037', '�����޸�', '107', '3', '#', null, 'F', '0', '1', 'system:notice:edit', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1038', '����ɾ��', '107', '4', '#', null, 'F', '0', '1', 'system:notice:remove', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1039', '������ѯ', '500', '1', '#', null, 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1040', '����ɾ��', '500', '2', '#', null, 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1041', '��ϸ��Ϣ', '500', '3', '#', null, 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1042', '��־����', '500', '4', '#', null, 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1043', '��¼��ѯ', '501', '1', '#', null, 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1044', '��¼ɾ��', '501', '2', '#', null, 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1045', '��־����', '501', '3', '#', null, 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1046', '�˻�����', '501', '4', '#', null, 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1047', '���߲�ѯ', '109', '1', '#', null, 'F', '0', '1', 'monitor:online:list', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1048', '����ǿ��', '109', '2', '#', null, 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1049', '����ǿ��', '109', '3', '#', null, 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1050', '�����ѯ', '110', '1', '#', null, 'F', '0', '1', 'monitor:job:list', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1051', '��������', '110', '2', '#', null, 'F', '0', '1', 'monitor:job:add', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1052', '�����޸�', '110', '3', '#', null, 'F', '0', '1', 'monitor:job:edit', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1053', '����ɾ��', '110', '4', '#', null, 'F', '0', '1', 'monitor:job:remove', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1054', '״̬�޸�', '110', '5', '#', null, 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', to_date('20-02-2024 15:06:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1055', '������ϸ', '110', '6', '#', null, 'F', '0', '1', 'monitor:job:detail', '#', 'admin', to_date('20-02-2024 15:06:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1056', '���񵼳�', '110', '7', '#', null, 'F', '0', '1', 'monitor:job:export', '#', 'admin', to_date('20-02-2024 15:06:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1057', '���ɲ�ѯ', '115', '1', '#', null, 'F', '0', '1', 'tool:gen:list', '#', 'admin', to_date('20-02-2024 15:06:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1058', '�����޸�', '115', '2', '#', null, 'F', '0', '1', 'tool:gen:edit', '#', 'admin', to_date('20-02-2024 15:06:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1059', '����ɾ��', '115', '3', '#', null, 'F', '0', '1', 'tool:gen:remove', '#', 'admin', to_date('20-02-2024 15:06:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1060', 'Ԥ������', '115', '4', '#', null, 'F', '0', '1', 'tool:gen:preview', '#', 'admin', to_date('20-02-2024 15:06:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1061', '���ɴ���', '115', '5', '#', null, 'F', '0', '1', 'tool:gen:code', '#', 'admin', to_date('20-02-2024 15:06:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2060', '��������', '1', '10', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-institution', 'admin', to_date('20-02-2024 16:52:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2001', '��������', '0', '2', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-gears', 'admin', to_date('20-02-2024 10:56:57', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:19:42', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2003', '�ֿ���Ϣ', '2001', '4', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-cubes', 'admin', to_date('20-02-2024 10:59:35', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2008', '�ɹ��Ǽ�', '2007', '2', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-calendar-o', 'admin', to_date('20-02-2024 11:12:31', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2009', '�ֿ�ɹ��Ǽ���ϸ', '2008', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-cubes', 'admin', to_date('20-02-2024 11:13:04', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:14:02', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2010', '���̲ɹ��Ǽ���ϸ', '2008', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-cube', 'admin', to_date('20-02-2024 11:13:40', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2013', '������������', '2011', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-commenting', 'admin', to_date('20-02-2024 11:16:04', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2020', '���Ǽ�ȷ��', '2018', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-bars', 'admin', to_date('20-02-2024 11:24:45', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2021', '��ⵥ��ѯ', '2018', '4', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-bars', 'admin', to_date('20-02-2024 11:25:04', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:25:17', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2023', '�ƿ����', '2017', '4', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-exchange', 'admin', to_date('20-02-2024 11:27:06', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2024', '�ƿⵥ�Ƶ�', '2023', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-arrows-h', 'admin', to_date('20-02-2024 11:27:29', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2028', '��Ʒ�̵��Ƶ�', '2027', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-server', 'admin', to_date('20-02-2024 11:31:18', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2029', '�̵�������', '2027', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-server', 'admin', to_date('20-02-2024 11:31:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2030', '�̵������ѯ', '2027', '4', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-server', 'admin', to_date('20-02-2024 11:32:12', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:34:00', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2032', '��Ʒ����Ƶ�', '2031', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-star-half', 'admin', to_date('20-02-2024 11:35:19', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1', 'ϵͳ����', '0', '1', '#', null, 'M', '0', '1', null, 'fa fa-gear', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'ϵͳ����Ŀ¼');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2', 'ϵͳ���', '0', '21', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-video-camera', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:16:33', 'dd-mm-yyyy hh24:mi:ss'), 'ϵͳ���Ŀ¼');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('3', 'ϵͳ����', '0', '22', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-bars', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:16:38', 'dd-mm-yyyy hh24:mi:ss'), 'ϵͳ����Ŀ¼');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2011', '��������', '0', '20', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-handshake-o', 'admin', to_date('20-02-2024 11:15:15', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:16:28', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('100', '�û�����', '2001', '2', '/system/user', 'menuItem', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 10:57:16', 'dd-mm-yyyy hh24:mi:ss'), '�û�����˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('101', '��ɫ����', '1', '3', '/system/role', 'menuItem', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 10:54:37', 'dd-mm-yyyy hh24:mi:ss'), '��ɫ����˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('102', '�˵�����', '1', '4', '/system/menu', 'menuItem', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 10:54:43', 'dd-mm-yyyy hh24:mi:ss'), '�˵�����˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('103', '������Ϣ����', '1', '2', '/system/dept', 'menuItem', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 10:57:34', 'dd-mm-yyyy hh24:mi:ss'), '���Ź���˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('104', '��λ����', '1', '5', '/system/post', null, 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '��λ����˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('105', '�ֵ����', '1', '6', '/system/dict', null, 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '�ֵ����˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('106', '��������', '1', '7', '/system/config', null, 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '�������ò˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('107', '֪ͨ����', '1', '8', '/system/notice', null, 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '֪ͨ����˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('108', '��־����', '1', '9', '#', null, 'M', '0', '1', null, 'fa fa-pencil-square-o', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '��־����˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('109', '�����û�', '2', '1', '/monitor/online', null, 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '�����û��˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('110', '��ʱ����', '2', '2', '/monitor/job', null, 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '��ʱ����˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('111', '���ݼ��', '2', '3', '/monitor/data', null, 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '���ݼ�ز˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('112', '������', '2', '4', '/monitor/server', null, 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '�����ز˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('113', '������', '2', '5', '/monitor/cache', null, 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '�����ز˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('114', '������', '3', '1', '/tool/build', null, 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '�������˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('115', '��������', '3', '2', '/tool/gen', null, 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '�������ɲ˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('116', 'ϵͳ�ӿ�', '3', '3', '/tool/swagger', null, 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'ϵͳ�ӿڲ˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('500', '������־', '108', '1', '/monitor/operlog', null, 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '������־�˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('501', '��¼��־', '108', '2', '/monitor/logininfor', null, 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '��¼��־�˵�');

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1000', '�û���ѯ', '100', '1', '#', null, 'F', '0', '1', 'system:user:list', '#', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1001', '�û�����', '100', '2', '#', null, 'F', '0', '1', 'system:user:add', '#', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1002', '�û��޸�', '100', '3', '#', null, 'F', '0', '1', 'system:user:edit', '#', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1003', '�û�ɾ��', '100', '4', '#', null, 'F', '0', '1', 'system:user:remove', '#', 'admin', to_date('19-02-2024 14:41:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1004', '�û�����', '100', '5', '#', null, 'F', '0', '1', 'system:user:export', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1005', '�û�����', '100', '6', '#', null, 'F', '0', '1', 'system:user:import', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1006', '��������', '100', '7', '#', null, 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1007', '��ɫ��ѯ', '101', '1', '#', null, 'F', '0', '1', 'system:role:list', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1008', '��ɫ����', '101', '2', '#', null, 'F', '0', '1', 'system:role:add', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1009', '��ɫ�޸�', '101', '3', '#', null, 'F', '0', '1', 'system:role:edit', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1010', '��ɫɾ��', '101', '4', '#', null, 'F', '0', '1', 'system:role:remove', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1011', '��ɫ����', '101', '5', '#', null, 'F', '0', '1', 'system:role:export', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1012', '�˵���ѯ', '102', '1', '#', null, 'F', '0', '1', 'system:menu:list', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1013', '�˵�����', '102', '2', '#', null, 'F', '0', '1', 'system:menu:add', '#', 'admin', to_date('19-02-2024 14:41:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2002', '��Ʒ����', '2001', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-star-half-empty', 'admin', to_date('20-02-2024 10:58:40', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 10:58:53', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2004', '̨�˹���', '2001', '5', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-calendar-o', 'admin', to_date('20-02-2024 11:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2005', '���ݱ������', '2001', '6', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-edit', 'admin', to_date('20-02-2024 11:00:53', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2006', '�ⲿ��������', '2001', '7', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-bank', 'admin', to_date('20-02-2024 11:01:31', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2007', '�ɹ�����', '0', '3', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-truck', 'admin', to_date('20-02-2024 11:11:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2012', '��Դ����', '2011', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-cloud-download', 'admin', to_date('20-02-2024 11:15:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2014', '����ͳ��', '0', '19', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-hourglass-1', 'admin', to_date('20-02-2024 11:17:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2015', '�������', '2014', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-bar-chart-o', 'admin', to_date('20-02-2024 11:18:04', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2016', '�ۺϷ���', '2014', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-line-chart', 'admin', to_date('20-02-2024 11:18:35', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2017', '�ִ�����', '0', '4', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-cubes', 'admin', to_date('20-02-2024 11:19:26', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:20:42', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2018', '������', '2017', '2', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-sitemap', 'admin', to_date('20-02-2024 11:21:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2019', '���Ǽ��Ƶ�', '2018', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-bars', 'admin', to_date('20-02-2024 11:23:29', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2022', '��Ʒ��Ϣ����', '2017', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-book', 'admin', to_date('20-02-2024 11:26:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2025', '�ƿⵥȷ��', '2023', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-arrows-h', 'admin', to_date('20-02-2024 11:28:21', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2026', '��Ʒ�ƿ��ѯ', '2023', '4', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-arrows-h', 'admin', to_date('20-02-2024 11:28:50', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2027', '��Ʒ�̵�', '2017', '5', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-industry', 'admin', to_date('20-02-2024 11:29:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2031', '��Ʒ���', '2017', '6', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-refresh', 'admin', to_date('20-02-2024 11:34:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2033', '��Ʒ��ֲ�ѯ', '2031', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-star-half', 'admin', to_date('20-02-2024 11:35:44', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2034', '��������', '0', '5', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-shopping-bag', 'admin', to_date('20-02-2024 11:36:50', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:44:57', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2036', '����֧��', '2034', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-cart-plus', 'admin', to_date('20-02-2024 11:38:27', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:45:18', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2037', '����֧��', '2034', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-cart-plus', 'admin', to_date('20-02-2024 11:38:46', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:45:29', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2038', '�˻�������', '2034', '4', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-cart-plus', 'admin', to_date('20-02-2024 11:39:09', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:45:45', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2039', '���ٹ���', '2017', '7', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-remove', 'admin', to_date('20-02-2024 11:40:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2040', '��Ʒ�����Ƶ�', '2039', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-times-circle-o', 'admin', to_date('20-02-2024 11:40:55', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2041', '��Ʒ���ٲ�ѯ', '2039', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-times-circle-o', 'admin', to_date('20-02-2024 11:41:23', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2042', '��������', '2017', '8', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-sign-out', 'admin', to_date('20-02-2024 11:42:20', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 11:44:45', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2043', '���������Ƶ�', '2042', '2', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-level-up', 'admin', to_date('20-02-2024 11:43:27', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, IS_REFRESH, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2044', '�������ò�ѯ', '2042', '3', '#', 'menuItem', 'C', '0', '1', null, 'fa fa-level-up', 'admin', to_date('20-02-2024 11:44:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

prompt Done.
