prompt Importing table SYS_POST...
set feedback off
set define off

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('1', 'ceo', '���³�', '1', '0', 'admin', to_date('20-02-2024 15:06:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 16:48:52', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('2', 'se', '��Ŀ����', '2', '0', 'admin', to_date('20-02-2024 15:06:17', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('3', 'hr', '������Դ', '3', '0', 'admin', to_date('20-02-2024 15:06:17', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('4', 'user', 'Ա��', '4', '0', 'admin', to_date('20-02-2024 15:06:17', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 17:07:51', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('10', 'storemanager', '�곤', '11', '0', 'admin', to_date('20-02-2024 17:05:11', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 17:12:02', 'dd-mm-yyyy hh24:mi:ss'), '��Ϊ��ȡ���徭Ӫģʽ�������ڵ������١����Ը������߼���Ϊ�곤����Ҫ������̵��ճ��������Ӫ���ලԱ�������������߷���������ȷ����������������Ŀ��Ĵ�ɣ��Լ�������Ա��Ƹ����ѵ�ͼ�Ч�����ȹ�����');

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('11', 'clerk', '��Ա', '12', '0', 'admin', to_date('20-02-2024 17:07:36', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 17:11:53', 'dd-mm-yyyy hh24:mi:ss'), '��Ա����ʱ���������������������ࡢ������ְ�������������Ʒ���������������Լ�������̰�ȫ�����⡣');

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('13', 'sales', '����Ա', '14', '0', 'admin', to_date('20-02-2024 17:12:54', 'dd-mm-yyyy hh24:mi:ss'), null, null, '���������˿͹���������Ʒ��');

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('14', 'cleaningstaff', '����Ա', '15', '0', 'admin', to_date('20-02-2024 17:13:45', 'dd-mm-yyyy hh24:mi:ss'), null, null, '�����������������������');

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('16', 'localwarehouseadministrator', '���زֹ���Ա', '17', '0', 'admin', to_date('20-02-2024 17:16:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, '������������Ӫ���̵Ĳֿ⡣');

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('12', 'cashier', '����Ա', '13', '0', 'admin', to_date('20-02-2024 17:11:48', 'dd-mm-yyyy hh24:mi:ss'), 'admin', to_date('20-02-2024 17:12:58', 'dd-mm-yyyy hh24:mi:ss'), '����������Сʳ��ҵ��');

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('15', 'Replenishman', '����Ա', '16', '0', 'admin', to_date('20-02-2024 17:15:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, '���𲹳�����������������������ܵȡ�');

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('17', 'warehousekeeper', '�ֿ����Ա', '31', '0', 'admin', to_date('20-02-2024 17:17:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, '������Ļ��������Ĳֿ�ͳһ���е��䣬��������ļҵ�����Ҫ�����������̶ȼ��Σ��Ƿ���Ҫ���ϼ������ֿ�Ƚ��ɲֿ����Ա����');

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values ('18', 'warehousesalesperson', '�ֿ�ҵ��Ա', '32', '0', 'admin', to_date('20-02-2024 17:17:59', 'dd-mm-yyyy hh24:mi:ss'), null, null, '������ղֿ����Ա�Ĳֿ⴦�����ݲ�ִ�У����ֿ��ڻ����������������ʵ����ɻ��������⡢�ֿ������������ֵȲ�����');

prompt Done.
