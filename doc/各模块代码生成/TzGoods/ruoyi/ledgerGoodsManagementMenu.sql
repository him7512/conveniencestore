-- 菜单 SQL
insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(2140, '商品台账信息', '2017', '1', '/management/ledgerGoodsManagement', 'C', '0', 'management:ledgerGoodsManagement:view', '#', 'admin', sysdate, '', null, '商品台账信息菜单');

-- 按钮 SQL
insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '商品台账信息查询', 2140, '1',  '#',  'F', '0', 'management:ledgerGoodsManagement:list',         '#', 'admin', sysdate, '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '商品台账信息新增', 2140, '2',  '#',  'F', '0', 'management:ledgerGoodsManagement:add',          '#', 'admin', sysdate, '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '商品台账信息修改', 2140, '3',  '#',  'F', '0', 'management:ledgerGoodsManagement:edit',         '#', 'admin', sysdate, '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '商品台账信息删除', 2140, '4',  '#',  'F', '0', 'management:ledgerGoodsManagement:remove',       '#', 'admin', sysdate, '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '商品台账信息导出', 2140, '5',  '#',  'F', '0', 'management:ledgerGoodsManagement:export',       '#', 'admin', sysdate, '', null, '');

-- ledger_goods主键序列
create sequence seq_ledger_goods
increment by 1
start with 10
nomaxvalue
nominvalue
cache 20;
