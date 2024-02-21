/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2024/2/21 14:10:41                           */
/*==============================================================*/


drop table PURCHASE_FORM cascade constraints;

drop table PURCHASE_REGISTRATION_FORM cascade constraints;

/*==============================================================*/
/* Table: PURCHASE_FORM                                         */
/*==============================================================*/
create table PURCHASE_FORM 
(
   PUR_ID               INTEGER              not null,
   PUR_REG_ID           INTEGER,
   PUR_REG_CODE         VARCHAR2(20),
   DEPT_ID              INTEGER              not null,
   ZONING_CODE          VARCHAR2(30),
   GOODS_NAME           VARCHAR2(30)         not null,
   FIRST_QUANTITY       NUMBER(38,2)         not null,
   FIRST_MEASUREMENT    VARCHAR2(10)         not null,
   SECOND_QUANTITY      NUMBER(38,2),
   SECOND_MEASUREMENT   VARCHAR2(10),
   CREATE_TIME          DATE                 not null,
   UPDATE_TIME          DATE,
   PUR_STATUS           VARCHAR2(12)         not null,
   GOODS_COMMENT        VARCHAR2(200),
   PUR_UNIT_TOTAL_PRICE NUMBER(38,2),
   PUR_TOTAL_PRICE      NUMBER(38,2)         not null,
   PUR_UNIT             VARCHAR2(10),
   constraint PK_PURCHASE_FORM primary key (PUR_ID)
);

comment on table PURCHASE_FORM is
'采购单，负责记录公物仓与本地仓采购的商品。';

comment on column PURCHASE_FORM.PUR_ID is
'物品采购条目id(主键)';

comment on column PURCHASE_FORM.PUR_REG_ID is
'物品采购登记单id';

comment on column PURCHASE_FORM.PUR_REG_CODE is
'物品采购登记单号';

comment on column PURCHASE_FORM.DEPT_ID is
'录入物品部门id';

comment on column PURCHASE_FORM.ZONING_CODE is
'录入物品部门所属区划编码';

comment on column PURCHASE_FORM.GOODS_NAME is
'物品名称';

comment on column PURCHASE_FORM.FIRST_QUANTITY is
'物品第一数量';

comment on column PURCHASE_FORM.FIRST_MEASUREMENT is
'物品第一计量单位';

comment on column PURCHASE_FORM.SECOND_QUANTITY is
'物品第二数量';

comment on column PURCHASE_FORM.SECOND_MEASUREMENT is
'物品第二计量单位';

comment on column PURCHASE_FORM.CREATE_TIME is
'该条目生成时间';

comment on column PURCHASE_FORM.UPDATE_TIME is
'该条目更新时间';

comment on column PURCHASE_FORM.PUR_STATUS is
'条目状态(1:制单中;2:待审核;3:退回;4:作废;5:已入库;)';

comment on column PURCHASE_FORM.GOODS_COMMENT is
'物品说明';

comment on column PURCHASE_FORM.PUR_UNIT_TOTAL_PRICE is
'单位物品采购价';

comment on column PURCHASE_FORM.PUR_TOTAL_PRICE is
'物品采购总价';

comment on column PURCHASE_FORM.PUR_UNIT is
'物品采购单位';

/*==============================================================*/
/* Table: PURCHASE_REGISTRATION_FORM                            */
/*==============================================================*/
create table PURCHASE_REGISTRATION_FORM 
(
   PUR_REG_ID           INTEGER              not null,
   PUR_REG_CODE         VARCHAR2(20),
   DEPT_ID              INTEGER              not null,
   ZONING_CODE          VARCHAR2(20),
   CREATE_TIME          DATE                 not null,
   UPDATE_TIME          DATE,
   PUR_REG_STATUS       VARCHAR2(12)         not null,
   REVIEWBY_ID          VARCHAR2(12),
   REVIEW_COMMENT       VARCHAR2(200),
   REVIEW_TIME          DATE,
   constraint PK_PURCHASE_REGISTRATION_FORM primary key (PUR_REG_ID)
);

comment on table PURCHASE_REGISTRATION_FORM is
'物品采购登记单，负责整合当天/当次所需入库的物品';

comment on column PURCHASE_REGISTRATION_FORM.PUR_REG_ID is
'物品采购登记单id';

comment on column PURCHASE_REGISTRATION_FORM.PUR_REG_CODE is
'物品采购登记单号';

comment on column PURCHASE_REGISTRATION_FORM.DEPT_ID is
'采购单部门id';

comment on column PURCHASE_REGISTRATION_FORM.ZONING_CODE is
'采购单所属区划编码';

comment on column PURCHASE_REGISTRATION_FORM.CREATE_TIME is
'采购单生成时间';

comment on column PURCHASE_REGISTRATION_FORM.UPDATE_TIME is
'采购单更新时间';

comment on column PURCHASE_REGISTRATION_FORM.PUR_REG_STATUS is
'采购单状态(1:制单中;2:待审核;3:退回;4:作废;5:通过;)';

comment on column PURCHASE_REGISTRATION_FORM.REVIEWBY_ID is
'审核人id';

comment on column PURCHASE_REGISTRATION_FORM.REVIEW_COMMENT is
'审核意见';

comment on column PURCHASE_REGISTRATION_FORM.REVIEW_TIME is
'审核日期';

