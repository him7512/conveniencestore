-- 菜单 SQL
insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(2143, '售卖明细查询', '2034', '1', '/sales/detail', 'C', '0', 'sales:detail:view', '#', 'admin', sysdate, '', null, '售卖明细查询菜单');

-- 按钮 SQL
insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '售卖明细查询查询', 2143, '1',  '#',  'F', '0', 'sales:detail:list',         '#', 'admin', sysdate, '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '售卖明细查询新增', 2143, '2',  '#',  'F', '0', 'sales:detail:add',          '#', 'admin', sysdate, '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '售卖明细查询修改', 2143, '3',  '#',  'F', '0', 'sales:detail:edit',         '#', 'admin', sysdate, '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '售卖明细查询删除', 2143, '4',  '#',  'F', '0', 'sales:detail:remove',       '#', 'admin', sysdate, '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '售卖明细查询导出', 2143, '5',  '#',  'F', '0', 'sales:detail:export',       '#', 'admin', sysdate, '', null, '');

-- sales_details主键序列
create sequence seq_sales_details
increment by 1
start with 10
nomaxvalue
nominvalue
cache 20;
