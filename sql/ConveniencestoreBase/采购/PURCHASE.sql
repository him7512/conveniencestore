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
'�ɹ����������¼������뱾�زֲɹ�����Ʒ��';

comment on column PURCHASE_FORM.PUR_ID is
'��Ʒ�ɹ���Ŀid(����)';

comment on column PURCHASE_FORM.PUR_REG_ID is
'��Ʒ�ɹ��Ǽǵ�id';

comment on column PURCHASE_FORM.PUR_REG_CODE is
'��Ʒ�ɹ��Ǽǵ���';

comment on column PURCHASE_FORM.DEPT_ID is
'¼����Ʒ����id';

comment on column PURCHASE_FORM.ZONING_CODE is
'¼����Ʒ����������������';

comment on column PURCHASE_FORM.GOODS_NAME is
'��Ʒ����';

comment on column PURCHASE_FORM.FIRST_QUANTITY is
'��Ʒ��һ����';

comment on column PURCHASE_FORM.FIRST_MEASUREMENT is
'��Ʒ��һ������λ';

comment on column PURCHASE_FORM.SECOND_QUANTITY is
'��Ʒ�ڶ�����';

comment on column PURCHASE_FORM.SECOND_MEASUREMENT is
'��Ʒ�ڶ�������λ';

comment on column PURCHASE_FORM.CREATE_TIME is
'����Ŀ����ʱ��';

comment on column PURCHASE_FORM.UPDATE_TIME is
'����Ŀ����ʱ��';

comment on column PURCHASE_FORM.PUR_STATUS is
'��Ŀ״̬(1:�Ƶ���;2:�����;3:�˻�;4:����;5:�����;)';

comment on column PURCHASE_FORM.GOODS_COMMENT is
'��Ʒ˵��';

comment on column PURCHASE_FORM.PUR_UNIT_TOTAL_PRICE is
'��λ��Ʒ�ɹ���';

comment on column PURCHASE_FORM.PUR_TOTAL_PRICE is
'��Ʒ�ɹ��ܼ�';

comment on column PURCHASE_FORM.PUR_UNIT is
'��Ʒ�ɹ���λ';

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
'��Ʒ�ɹ��Ǽǵ����������ϵ���/��������������Ʒ';

comment on column PURCHASE_REGISTRATION_FORM.PUR_REG_ID is
'��Ʒ�ɹ��Ǽǵ�id';

comment on column PURCHASE_REGISTRATION_FORM.PUR_REG_CODE is
'��Ʒ�ɹ��Ǽǵ���';

comment on column PURCHASE_REGISTRATION_FORM.DEPT_ID is
'�ɹ�������id';

comment on column PURCHASE_REGISTRATION_FORM.ZONING_CODE is
'�ɹ���������������';

comment on column PURCHASE_REGISTRATION_FORM.CREATE_TIME is
'�ɹ�������ʱ��';

comment on column PURCHASE_REGISTRATION_FORM.UPDATE_TIME is
'�ɹ�������ʱ��';

comment on column PURCHASE_REGISTRATION_FORM.PUR_REG_STATUS is
'�ɹ���״̬(1:�Ƶ���;2:�����;3:�˻�;4:����;5:ͨ��;)';

comment on column PURCHASE_REGISTRATION_FORM.REVIEWBY_ID is
'�����id';

comment on column PURCHASE_REGISTRATION_FORM.REVIEW_COMMENT is
'������';

comment on column PURCHASE_REGISTRATION_FORM.REVIEW_TIME is
'�������';

