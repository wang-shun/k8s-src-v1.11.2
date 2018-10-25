﻿----------------------------------------------
--       新增表：LN_MID_C3_EUPAYEEINFO      --
----------------------------------------------
drop table LN_MID_C3_EUPAYEEINFO;
----------------------------------------------
-- 修改表（LN_MD_CUST_POOL_BILL_USE）的主键 --
----------------------------------------------
drop table IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE;
create table IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE(
LOAN_APPLY_NO VARCHAR2(32) not null
,CONT_NO VARCHAR2(18)
,SRC_NO VARCHAR2(32) not null
,BUSI_GROUP_NO VARCHAR2(32) not null
,BUSI_GROUP_NAME VARCHAR2(90)
,SD_FLAG VARCHAR2(6) not null
,ENT_NO VARCHAR2(32)
,ENT_NAME VARCHAR2(90)
,BILL_TYPE VARCHAR2(2) not null
,BILL_NO VARCHAR2(32) not null
,BILL_AMT NUMBER(20,2) not null
,CURR_TYPE VARCHAR2(10) default 'CNY' 
,Date1 VARCHAR2(8)
,Date2 VARCHAR2(8)
,Date3 VARCHAR2(8)
,Date4 VARCHAR2(8)
,STATUS1 VARCHAR2(2)
,STATUS2 VARCHAR2(16)
,BUSI_DATE VARCHAR2(8) not null
,USE_DATE DATE default sysdate not null
);
alter table IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE add primary key(LOAN_APPLY_NO,SRC_NO,BUSI_GROUP_NO,BILL_TYPE,BILL_NO);
comment on table IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE is '客户池资产单据占用表';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.LOAN_APPLY_NO is '贷款申请编号';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.CONT_NO is '合同编号';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.SRC_NO is '客户外部编号';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.BUSI_GROUP_NO is '商圈代码';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.BUSI_GROUP_NAME is '商圈名称';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.SD_FLAG is '上下游标志';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.ENT_NO is '客户代码';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.ENT_NAME is '客户名称';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.BILL_TYPE is '单据类型';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.BILL_NO is '单据编号';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.BILL_AMT is '单据面额';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.CURR_TYPE is '币种';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.Date1 is '票据日期1';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.Date2 is '票据日期2';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.Date3 is '票据日期3';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.Date4 is '票据日期4';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.STATUS1 is '状态标志1';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.STATUS2 is '状态标志2';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.BUSI_DATE is '数据业务日期';
comment on column IBANKWEBUSR.LN_MD_CUST_POOL_BILL_USE.USE_DATE is '占用日期';
------------------------------------------
--  Changed table ln_mid_c3_euloancont  --
------------------------------------------
drop table IBANKWEBUSR.LN_MID_C3_EULOANCONT;
create table IBANKWEBUSR.LN_MID_C3_EULOANCONT(
CONTNO VARCHAR2(18) not null
,CLICODE VARCHAR2(16)
,REQUNO VARCHAR2(17)
,APPVNO NUMBER(6)
,DOCNO VARCHAR2(60)
,PROJNO VARCHAR2(16)
,CHARKIND VARCHAR2(2)
,PERIODKIND VARCHAR2(3)
,LOANUSE VARCHAR2(90)
,OPTKIND VARCHAR2(5)
,INSTBELONG VARCHAR2(3)
,CONTKIND VARCHAR2(4)
,GUARWAY VARCHAR2(150)
,AUCSUBCLICOD VARCHAR2(16)
,AUCACCINSTCODE VARCHAR2(12)
,LOANORGFORM CHAR(1)
,ISTOGAPP CHAR(1)
,ISLOWRISK CHAR(1)
,LOWOPTKIND VARCHAR2(2)
,CREDITFLAG CHAR(1)
,ISCYCLE CHAR(1)
,ISDISRATE CHAR(1)
,DISRATE NUMBER(8,5)
,DISENDDATE VARCHAR2(8)
,CURRKIND VARCHAR2(2)
,EXCHRAT NUMBER(10,5)
,LOANSUM NUMBER(18,2)
,USEDSUM NUMBER(18,2)
,CANCELSUM NUMBER(18,2)
,UNUSEDSUM NUMBER(18,2)
,BEGINDATE VARCHAR2(8)
,DUEDATE VARCHAR2(8)
,ENDDATE VARCHAR2(8)
,EXTKIND VARCHAR2(2)
,EXTNUM NUMBER(6)
,PERREPAYDAY VARCHAR2(2)
,REPAYWAY VARCHAR2(2)
,INTCALWAY CHAR(1)
,DIVREPAYFLAG VARCHAR2(2)
,CONTNUM NUMBER(6)
,SIGNDATE VARCHAR2(8)
,ISRLTAPPV CHAR(1)
,RLTAPPVKIND VARCHAR2(2)
,RLTAPPVNO VARCHAR2(22)
,CONTSTA VARCHAR2(2)
,DELFLAG CHAR(1)
,WFSTA VARCHAR2(5)
,ADMINST VARCHAR2(12)
,ADMMGR VARCHAR2(20)
,OPRINSTCODE VARCHAR2(12)
,OPRID VARCHAR2(20)
,ACCDATE VARCHAR2(8)
,OPDATE VARCHAR2(8)
,LOAN_APPLY_NO VARCHAR2(32)
,CLINAME VARCHAR2(90)
);
alter table IBANKWEBUSR.LN_MID_C3_EULOANCONT add primary key(CONTNO);
comment on table IBANKWEBUSR.LN_MID_C3_EULOANCONT is 'C3借款合同基础表';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.CONTNO is '借款合同编号';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.CLICODE is '客户ID';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.REQUNO is '申请书编号';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.APPVNO is '审批批次号';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.DOCNO is '借款合同正本编号';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.PROJNO is '项目贷款编号';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.CHARKIND is '贷款性质分类';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.PERIODKIND is '贷款期限分类';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.LOANUSE is '借款用途';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.OPTKIND is '业务品种';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.INSTBELONG is '部门归属';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.CONTKIND is '合同种类';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.GUARWAY is '担保方式';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.AUCSUBCLICOD is '授信主体客户代码';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.AUCACCINSTCODE is '授信主体开户行机构代码';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.LOANORGFORM is '贷款组织形式';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.ISTOGAPP is '是否一并审批';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.ISLOWRISK is '是否低风险';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.LOWOPTKIND is '低风险业务类别';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.CREDITFLAG is '授信额度标志';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.ISCYCLE is '是否可循环贷款';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.ISDISRATE is '是否贴息贷款';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.DISRATE is '贴息率';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.DISENDDATE is '贴息截止日期';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.CURRKIND is '币种';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.EXCHRAT is '发放贷款时汇率';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.LOANSUM is '借款金额';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.USEDSUM is '已用金额';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.CANCELSUM is '客户撤销金额';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.UNUSEDSUM is '可用金额';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.BEGINDATE is '借款日期';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.DUEDATE is '到期日期';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.ENDDATE is '发放终止日期';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.EXTKIND is '宽限方式';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.EXTNUM is '宽限期数';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.PERREPAYDAY is '每期还款日';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.REPAYWAY is '还款方式';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.INTCALWAY is '计息方式';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.DIVREPAYFLAG is '分期还款周期标志';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.CONTNUM is '合同份数';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.SIGNDATE is '签约日期';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.ISRLTAPPV is '是否关联审批';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.RLTAPPVKIND is '关联审批事项';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.RLTAPPVNO is '关联审批编号';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.CONTSTA is '合同状态';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.DELFLAG is '删除标志';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.WFSTA is '放款流程状态标志';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.ADMINST is '经营机构编码';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.ADMMGR is '客户经理代码';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.OPRINSTCODE is '操作机构编码';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.OPRID is '操作员代码';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.ACCDATE is '首次操作日期';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.OPDATE is '操作日期';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.LOAN_APPLY_NO is '贷款申请编号';
comment on column IBANKWEBUSR.LN_MID_C3_EULOANCONT.CLINAME is '客户名称';
