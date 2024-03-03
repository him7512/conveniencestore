-- 菜单 SQL
insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(2095, '采购明细登记', '2008', '1', '/procure/purchase', 'C', '0', 'procure:purchase:view', '#', 'admin', sysdate, '', null, '采购明细登记菜单');

-- 按钮 SQL
insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '采购明细登记查询', 2095, '1',  '#',  'F', '0', 'procure:purchase:list',         '#', 'admin', sysdate, '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '采购明细登记新增', 2095, '2',  '#',  'F', '0', 'procure:purchase:add',          '#', 'admin', sysdate, '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '采购明细登记修改', 2095, '3',  '#',  'F', '0', 'procure:purchase:edit',         '#', 'admin', sysdate, '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '采购明细登记删除', 2095, '4',  '#',  'F', '0', 'procure:purchase:remove',       '#', 'admin', sysdate, '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '采购明细登记导出', 2095, '5',  '#',  'F', '0', 'procure:purchase:export',       '#', 'admin', sysdate, '', null, '');

-- purchase_form主键序列
create sequence seq_purchase_form
increment by 1
start with 10
nomaxvalue
nominvalue
cache 20;
