-- 菜单 SQL
insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(2096, '采购单管理', '2062', '1', '/procure/purchaseRegistration', 'C', '0', 'procure:purchaseRegistration:view', '#', 'admin', sysdate, '', null, '采购单管理菜单');

-- 按钮 SQL
insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '采购单管理查询', 2096, '1',  '#',  'F', '0', 'procure:purchaseRegistration:list',         '#', 'admin', sysdate, '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '采购单管理新增', 2096, '2',  '#',  'F', '0', 'procure:purchaseRegistration:add',          '#', 'admin', sysdate, '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '采购单管理修改', 2096, '3',  '#',  'F', '0', 'procure:purchaseRegistration:edit',         '#', 'admin', sysdate, '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '采购单管理删除', 2096, '4',  '#',  'F', '0', 'procure:purchaseRegistration:remove',       '#', 'admin', sysdate, '', null, '');

insert into sys_menu (menu_id, menu_name, parent_id, order_num, url, menu_type, visible, perms, icon, create_by, create_time, update_by, update_time, remark)
values(seq_sys_menu.nextval, '采购单管理导出', 2096, '5',  '#',  'F', '0', 'procure:purchaseRegistration:export',       '#', 'admin', sysdate, '', null, '');

-- purchase_registration_form主键序列
create sequence seq_purchase_registration_form
increment by 1
start with 10
nomaxvalue
nominvalue
cache 20;
