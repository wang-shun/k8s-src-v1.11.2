/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2014/1/9 9:41:14                             */
/*==============================================================*/



/*==============================================================*/
/* Table: CP_ACTIVITY_LOG                                       */
/*==============================================================*/
create table TEST1.CP_ACTIVITY_LOG 
(
   REC_NO               VARCHAR2(32)         not null,
   USER_NO              VARCHAR2(32)         not null,
   OPER_TIME            CHAR(17)             not null,
   OPER_CODE            VARCHAR2(32)         not null,
   OPER_NAME            VARCHAR2(60)         not null,
   OPER_DESC            VARCHAR2(500),
   SESSION_ID           VARCHAR2(32)         not null,
   constraint PK_CP_ACTIVITY_LOG primary key (REC_NO)
);

comment on table TEST1.CP_ACTIVITY_LOG is
'存放用户在系统中的操作活动日志';

comment on column TEST1.CP_ACTIVITY_LOG.REC_NO is
'无业务意义的编码';

comment on column TEST1.CP_ACTIVITY_LOG.USER_NO is
'系统生成的编码，无业务意义';

comment on column TEST1.CP_ACTIVITY_LOG.OPER_TIME is
'操作时间';

comment on column TEST1.CP_ACTIVITY_LOG.OPER_CODE is
'操作代码';

comment on column TEST1.CP_ACTIVITY_LOG.OPER_NAME is
'操作名称';

comment on column TEST1.CP_ACTIVITY_LOG.OPER_DESC is
'操作描述';

comment on column TEST1.CP_ACTIVITY_LOG.SESSION_ID is
'本次登录SessionID';

/*==============================================================*/
/* Table: CP_AREA                                               */
/*==============================================================*/
create table TEST1.CP_AREA 
(
   AREA_CODE            CHAR(6)              not null,
   AREA_NAME            VARCHAR2(60)         not null,
   constraint PK_CP_AREA primary key (AREA_CODE)
);

comment on table TEST1.CP_AREA is
'CP_AREA';

comment on column TEST1.CP_AREA.AREA_CODE is
'AREA_CODE';

comment on column TEST1.CP_AREA.AREA_NAME is
'AREA_NAME';

/*==============================================================*/
/* Table: CP_BUSI_GROUP                                         */
/*==============================================================*/
create table TEST1.CP_BUSI_GROUP 
(
   BUSI_GROUP_CODE      VARCHAR2(10)         not null,
   BUSI_GROUP_NAME      VARCHAR2(60)         not null,
   HEAD_ENT_NO          VARCHAR2(32)         not null,
   TRADE_CODE           CHAR(5),
   UP_LC_AMT            NUMBER(20,2),
   UP_UC_AMT            NUMBER(20,2),
   UP_LC_VALIDDATE      CHAR(8),
   DOWN_LC_AMT          NUMBER(20,2),
   DOWN_UC_AMT          NUMBER(20,2),
   DOWN_LC_VALIDDATE    CHAR(8),
   STAFF_NO             VARCHAR2(32),
   CREATE_DATE          CHAR(8)              not null,
   CORE_ENT_SALE_AMT_PER_YEAR NUMBER(20,2),
   CORE_ENT_SALE_GROWTH_RATE NUMBER(10,7),
   SALE_GROSS_PROFIT_RATE NUMBER(10,7),
   ASSET_LIAB_RATE      NUMBER(10,7),
   LIST_FLAG            CHAR,
   LY_TO_CORE_ENT_GOODS_COST NUMBER(20,2),
   LY_TO_CORE_ENT_SALE_INCOME NUMBER(20,2),
   QUALITY_CREDIT       VARCHAR2(2),
   ABILITY_PAYABLE      VARCHAR2(2),
   UP_LC_LIMIT          VARCHAR2(16),
   DOWN_LC_LIMIT        VARCHAR2(16),
   constraint PK_CP_BUSI_GROUP primary key (BUSI_GROUP_CODE)
);

comment on table TEST1.CP_BUSI_GROUP is
'存放商圈的基本信息。';

comment on column TEST1.CP_BUSI_GROUP.BUSI_GROUP_CODE is
'商圈代码';

comment on column TEST1.CP_BUSI_GROUP.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.CP_BUSI_GROUP.HEAD_ENT_NO is
'核心企业编码';

comment on column TEST1.CP_BUSI_GROUP.TRADE_CODE is
'来自行业表';

comment on column TEST1.CP_BUSI_GROUP.UP_LC_AMT is
'上游授信额度(万元)';

comment on column TEST1.CP_BUSI_GROUP.UP_UC_AMT is
'上游用信额度(万元)';

comment on column TEST1.CP_BUSI_GROUP.UP_LC_VALIDDATE is
'上游授信额度有效期';

comment on column TEST1.CP_BUSI_GROUP.DOWN_LC_AMT is
'游授信额度(万元)';

comment on column TEST1.CP_BUSI_GROUP.DOWN_UC_AMT is
'下游用信额度(万元)';

comment on column TEST1.CP_BUSI_GROUP.DOWN_LC_VALIDDATE is
'下游授信额度有效期';

comment on column TEST1.CP_BUSI_GROUP.STAFF_NO is
'客户经理编码';

comment on column TEST1.CP_BUSI_GROUP.CREATE_DATE is
'创建日期';

comment on column TEST1.CP_BUSI_GROUP.CORE_ENT_SALE_AMT_PER_YEAR is
'近一年核心企业年销售收入（万元）';

comment on column TEST1.CP_BUSI_GROUP.CORE_ENT_SALE_GROWTH_RATE is
'近一年核心企业销售增长率（%）';

comment on column TEST1.CP_BUSI_GROUP.SALE_GROSS_PROFIT_RATE is
'近一年核心企业销售毛利率（%）';

comment on column TEST1.CP_BUSI_GROUP.ASSET_LIAB_RATE is
'近一年核心企业资产负债率（%）';

comment on column TEST1.CP_BUSI_GROUP.LIST_FLAG is
'0：非上市企业 1:上市企业';

comment on column TEST1.CP_BUSI_GROUP.LY_TO_CORE_ENT_GOODS_COST is
'上年度对核心企业进货成本（万元）';

comment on column TEST1.CP_BUSI_GROUP.LY_TO_CORE_ENT_SALE_INCOME is
'上年度对核心企业销售收入（万元）';

comment on column TEST1.CP_BUSI_GROUP.QUALITY_CREDIT is
'信用质量，核心企业在我行当前有效评级结果, 客户经理录入';

comment on column TEST1.CP_BUSI_GROUP.ABILITY_PAYABLE is
'偿债能力，短期偿债能力（流动资金比率，速冻比率），季度值，财报数据，客户经理录入';

comment on column TEST1.CP_BUSI_GROUP.UP_LC_LIMIT is
'上游额度编码';

comment on column TEST1.CP_BUSI_GROUP.DOWN_LC_LIMIT is
'下游额度编码';

/*==============================================================*/
/* Table: CP_BUSI_GROUP_MEMBER                                  */
/*==============================================================*/
create table TEST1.CP_BUSI_GROUP_MEMBER 
(
   REC_NO               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32)         not null,
   BUSI_GROUP_CODE      VARCHAR2(10)         not null,
   ENTER_DATE           CHAR(8)              not null,
   DELETE_STATUS        CHAR                 default '0',
   EXIT_DATE            CHAR(8),
   REMARK               VARCHAR2(150),
   constraint PK_CP_BUSI_GROUP_MEMBER primary key (REC_NO)
);

comment on table TEST1.CP_BUSI_GROUP_MEMBER is
'存放企业归属的商圈，一个企业归属一个商圈，有一条记录。';

comment on column TEST1.CP_BUSI_GROUP_MEMBER.REC_NO is
'无业务意义的编码';

comment on column TEST1.CP_BUSI_GROUP_MEMBER.ENT_NO is
'企业编码';

comment on column TEST1.CP_BUSI_GROUP_MEMBER.BUSI_GROUP_CODE is
'商圈代码';

comment on column TEST1.CP_BUSI_GROUP_MEMBER.ENTER_DATE is
'加入商圈的日期，按录入时的日期';

comment on column TEST1.CP_BUSI_GROUP_MEMBER.DELETE_STATUS is
'放码表中
0:未删除
1:已删除';

comment on column TEST1.CP_BUSI_GROUP_MEMBER.EXIT_DATE is
'退出商圈的日期';

comment on column TEST1.CP_BUSI_GROUP_MEMBER.REMARK is
'退出商圈的原因备注等';

/*==============================================================*/
/* Table: CP_CODE_INFO                                          */
/*==============================================================*/
create table TEST1.CP_CODE_INFO 
(
   TYPE_CODE            VARCHAR2(32)         not null,
   TYPE_NAME            VARCHAR2(60)         not null,
   CONFIG_NAME          VARCHAR2(200)        not null,
   CONFIG_CODE          VARCHAR2(32)         not null,
   INDEX_NO             NUMBER,
   READ_FLAG            CHAR                 default '1' not null,
   DELETE_FLAG          CHAR                 default '1' not null,
   DESCRIPTION          VARCHAR2(200),
   constraint PK_CP_CODE_INFO primary key (TYPE_CODE, CONFIG_CODE)
);

comment on table TEST1.CP_CODE_INFO is
'CP_CODE_INFO';

comment on column TEST1.CP_CODE_INFO.TYPE_CODE is
'字典分类代码';

comment on column TEST1.CP_CODE_INFO.TYPE_NAME is
'字典分类名称，如性别';

comment on column TEST1.CP_CODE_INFO.CONFIG_NAME is
'值, 如男';

comment on column TEST1.CP_CODE_INFO.CONFIG_CODE is
'编码，如男对应的编码1';

comment on column TEST1.CP_CODE_INFO.INDEX_NO is
'顺序号，如1,2,3';

comment on column TEST1.CP_CODE_INFO.READ_FLAG is
'0：不可编辑
1：可编辑';

comment on column TEST1.CP_CODE_INFO.DELETE_FLAG is
'0:不可删除
1:可删除';

comment on column TEST1.CP_CODE_INFO.DESCRIPTION is
'描述';


/*==============================================================*/
/* Table: CP_COUNTRY                                            */
/*==============================================================*/
create table TEST1.CP_COUNTRY 
(
   COUNTRY_CODE         CHAR(3)              not null,
   TWO_CODE             CHAR(2)              not null,
   THREE_CODE           CHAR(3)              not null,
   CN_SHORT_NAME        VARCHAR2(60)         not null,
   EN_SHORT_NAME        VARCHAR2(60)         not null,
   CN_NAME              VARCHAR2(60)         not null,
   EN_NAME              VARCHAR2(60)         not null,
   ITELFIX              VARCHAR2(3)          not null,
   constraint PK_CP_COUNTRY primary key (COUNTRY_CODE)
);

comment on table TEST1.CP_COUNTRY is
'存放国家和地区信息。';

comment on column TEST1.CP_COUNTRY.COUNTRY_CODE is
'国家数字码';

comment on column TEST1.CP_COUNTRY.TWO_CODE is
'国家两字母码';

comment on column TEST1.CP_COUNTRY.THREE_CODE is
'国家三字母码';

comment on column TEST1.CP_COUNTRY.CN_SHORT_NAME is
'中文简称';

comment on column TEST1.CP_COUNTRY.EN_SHORT_NAME is
'英文简称';

comment on column TEST1.CP_COUNTRY.CN_NAME is
'中文全称';

comment on column TEST1.CP_COUNTRY.EN_NAME is
'英文全称';

comment on column TEST1.CP_COUNTRY.ITELFIX is
'国际长途区号';

/*==============================================================*/
/* Table: CP_CREDIT_ACTION_LOG                                  */
/*==============================================================*/
create table TEST1.CP_CREDIT_ACTION_LOG 
(
   REC_NO               VARCHAR2(32)         not null,
   ACTION               VARCHAR2(100),
   USER_NO              VARCHAR2(32),
   DATE_LINE            CHAR(17),
   IS_USED              CHAR,
   constraint PK_CP_CREDIT_ACTION_LOG primary key (REC_NO)
);

comment on table TEST1.CP_CREDIT_ACTION_LOG is
'积分动作执行日志表';

comment on column TEST1.CP_CREDIT_ACTION_LOG.REC_NO is
'REC_NO';

comment on column TEST1.CP_CREDIT_ACTION_LOG.ACTION is
'ACTION';

comment on column TEST1.CP_CREDIT_ACTION_LOG.USER_NO is
'USER_NO';

comment on column TEST1.CP_CREDIT_ACTION_LOG.DATE_LINE is
'DATE_LINE';

comment on column TEST1.CP_CREDIT_ACTION_LOG.IS_USED is
'IS_USED';

/*==============================================================*/
/* Table: CP_CREDIT_BAT_RULE                                    */
/*==============================================================*/
create table TEST1.CP_CREDIT_BAT_RULE 
(
   ACTION               VARCHAR2(100)        not null,
   RULE_ID              VARCHAR2(32)         not null,
   RULE_NAME            VARCHAR2(100),
   CYCLE_TYPE           CHAR,
   REPEAT_NUM           NUMBER,
   RULE_LIMIT           VARCHAR2(1000),
   CREDIT               VARCHAR2(1000),
   RULE_ENABLED         CHAR,
   START_TIME           CHAR(17),
   END_TIME             CHAR(17),
   constraint PK_CP_CREDIT_BAT_RULE primary key (ACTION, RULE_ID)
);

comment on table TEST1.CP_CREDIT_BAT_RULE is
'积分批量规则表';

comment on column TEST1.CP_CREDIT_BAT_RULE.ACTION is
'ACTION';

comment on column TEST1.CP_CREDIT_BAT_RULE.RULE_ID is
'RULE_ID';

comment on column TEST1.CP_CREDIT_BAT_RULE.RULE_NAME is
'RULE_NAME';

comment on column TEST1.CP_CREDIT_BAT_RULE.CYCLE_TYPE is
'CYCLE_TYPE';

comment on column TEST1.CP_CREDIT_BAT_RULE.REPEAT_NUM is
'REPEAT_NUM';

comment on column TEST1.CP_CREDIT_BAT_RULE.RULE_LIMIT is
'返回true和false';

comment on column TEST1.CP_CREDIT_BAT_RULE.CREDIT is
'返回int';

comment on column TEST1.CP_CREDIT_BAT_RULE.RULE_ENABLED is
'RULE_ENABLED';

comment on column TEST1.CP_CREDIT_BAT_RULE.START_TIME is
'START_TIME';

comment on column TEST1.CP_CREDIT_BAT_RULE.END_TIME is
'END_TIME';

/*==============================================================*/
/* Table: CP_CREDIT_OT_RULE                                     */
/*==============================================================*/
create table TEST1.CP_CREDIT_OT_RULE 
(
   ACTION               VARCHAR2(100)        not null,
   RULE_ID              VARCHAR2(32)         not null,
   RULE_NAME            VARCHAR2(100),
   CYCLE_TYPE           CHAR,
   REWARD_NUM           NUMBER,
   RULE_LIMIT           VARCHAR2(1000),
   CREDIT               VARCHAR2(1000),
   RULE_ENABLED         CHAR,
   START_TIME           CHAR(17),
   END_TIME             CHAR(17),
   constraint PK_CP_CREDIT_OT_RULE primary key (ACTION, RULE_ID)
);

comment on table TEST1.CP_CREDIT_OT_RULE is
'积分联机规则表';

comment on column TEST1.CP_CREDIT_OT_RULE.ACTION is
'ACTION';

comment on column TEST1.CP_CREDIT_OT_RULE.RULE_ID is
'RULE_ID';

comment on column TEST1.CP_CREDIT_OT_RULE.RULE_NAME is
'RULE_NAME';

comment on column TEST1.CP_CREDIT_OT_RULE.CYCLE_TYPE is
'CYCLE_TYPE';

comment on column TEST1.CP_CREDIT_OT_RULE.REWARD_NUM is
'REWARD_NUM';

comment on column TEST1.CP_CREDIT_OT_RULE.RULE_LIMIT is
'返回true和false';

comment on column TEST1.CP_CREDIT_OT_RULE.CREDIT is
'返回int';

comment on column TEST1.CP_CREDIT_OT_RULE.RULE_ENABLED is
'RULE_ENABLED';

comment on column TEST1.CP_CREDIT_OT_RULE.START_TIME is
'START_TIME';

comment on column TEST1.CP_CREDIT_OT_RULE.END_TIME is
'END_TIME';

/*==============================================================*/
/* Table: CP_CREDIT_RULE_CYCLE_LOG                              */
/*==============================================================*/
create table TEST1.CP_CREDIT_RULE_CYCLE_LOG 
(
   ACTION               VARCHAR2(100)        not null,
   RULE_ID              VARCHAR2(32)         not null,
   USER_NO              VARCHAR2(32)         not null,
   TOTAL                NUMBER,
   CYCLE_NUM            NUMBER,
   START_TIME           CHAR(17),
   DATE_LINE            CHAR(17),
   constraint PK_CP_CREDIT_RULE_CYCLE_LOG primary key (ACTION, RULE_ID, USER_NO)
);

comment on table TEST1.CP_CREDIT_RULE_CYCLE_LOG is
'积分规则周期记录表';

comment on column TEST1.CP_CREDIT_RULE_CYCLE_LOG.ACTION is
'ACTION';

comment on column TEST1.CP_CREDIT_RULE_CYCLE_LOG.RULE_ID is
'RULE_ID';

comment on column TEST1.CP_CREDIT_RULE_CYCLE_LOG.USER_NO is
'USER_NO';

comment on column TEST1.CP_CREDIT_RULE_CYCLE_LOG.TOTAL is
'TOTAL';

comment on column TEST1.CP_CREDIT_RULE_CYCLE_LOG.CYCLE_NUM is
'CYCLE_NUM';

comment on column TEST1.CP_CREDIT_RULE_CYCLE_LOG.START_TIME is
'START_TIME';

comment on column TEST1.CP_CREDIT_RULE_CYCLE_LOG.DATE_LINE is
'DATE_LINE';

/*==============================================================*/
/* Table: CP_CREDIT_RULE_LOG                                    */
/*==============================================================*/
create table TEST1.CP_CREDIT_RULE_LOG 
(
   REC_NO               VARCHAR2(32),
   ACTION               VARCHAR2(100),
   RULE_ID              VARCHAR2(32),
   USER_NO              VARCHAR2(32),
   DATE_LINE            CHAR(17)
);

comment on table TEST1.CP_CREDIT_RULE_LOG is
'积分规则执行日志表';

comment on column TEST1.CP_CREDIT_RULE_LOG.REC_NO is
'REC_NO';

comment on column TEST1.CP_CREDIT_RULE_LOG.ACTION is
'ACTION';

comment on column TEST1.CP_CREDIT_RULE_LOG.RULE_ID is
'RULE_ID';

comment on column TEST1.CP_CREDIT_RULE_LOG.USER_NO is
'USER_NO';

comment on column TEST1.CP_CREDIT_RULE_LOG.DATE_LINE is
'DATE_LINE';

/*==============================================================*/
/* Table: CP_EMAIL_TASK                                         */
/*==============================================================*/
create table TEST1.CP_EMAIL_TASK 
(
   ID                   VARCHAR2(36)         not null,
   TEMPLATE_CODE        VARCHAR2(36),
   CUSTOMER_ID          VARCHAR2(36),
   CUSTOMER_NAME        VARCHAR2(100),
   EMAIL_CONTENT        VARCHAR2(4000),
   STATUS               VARCHAR2(2),
   INFO                 VARCHAR2(100),
   EMAIL_TYPE           CHAR,
   MODIFIED_TS          TIMESTAMP,
   SUBJECT              VARCHAR2(100),
   constraint CP_EMAIL_TASK_PK primary key (ID)
);

comment on table TEST1.CP_EMAIL_TASK is
'CP_EMAIL_TASK';

comment on column TEST1.CP_EMAIL_TASK.ID is
'ID';

comment on column TEST1.CP_EMAIL_TASK.TEMPLATE_CODE is
'TEMPLATE_CODE';

comment on column TEST1.CP_EMAIL_TASK.CUSTOMER_ID is
'CUSTOMER_ID';

comment on column TEST1.CP_EMAIL_TASK.CUSTOMER_NAME is
'CUSTOMER_NAME';

comment on column TEST1.CP_EMAIL_TASK.EMAIL_CONTENT is
'EMAIL_CONTENT';

comment on column TEST1.CP_EMAIL_TASK.STATUS is
'STATUS';

comment on column TEST1.CP_EMAIL_TASK.INFO is
'INFO';

comment on column TEST1.CP_EMAIL_TASK.EMAIL_TYPE is
'EMAIL_TYPE';

comment on column TEST1.CP_EMAIL_TASK.MODIFIED_TS is
'MODIFIED_TS';

comment on column TEST1.CP_EMAIL_TASK.SUBJECT is
'SUBJECT';

/*==============================================================*/
/* Table: CP_EMAIL_TASK_ATTATCHMENT                             */
/*==============================================================*/
create table TEST1.CP_EMAIL_TASK_ATTATCHMENT 
(
   ID                   VARCHAR2(36)         not null,
   FILE_NAME            VARCHAR2(100),
   TASK_ID              VARCHAR2(36),
   DATA                 BLOB,
   constraint CP_EMAIL_TASK_ATTATCHMENT_PK primary key (ID)
);

comment on table TEST1.CP_EMAIL_TASK_ATTATCHMENT is
'CP_EMAIL_TASK_ATTATCHMENT';

comment on column TEST1.CP_EMAIL_TASK_ATTATCHMENT.ID is
'ID';

comment on column TEST1.CP_EMAIL_TASK_ATTATCHMENT.FILE_NAME is
'FILE_NAME';

comment on column TEST1.CP_EMAIL_TASK_ATTATCHMENT.TASK_ID is
'TASK_ID';

comment on column TEST1.CP_EMAIL_TASK_ATTATCHMENT.DATA is
'DATA';

/*==============================================================*/
/* Table: CP_EMAIL_TASK_RECEIVER                                */
/*==============================================================*/
create table TEST1.CP_EMAIL_TASK_RECEIVER 
(
   ID                   VARCHAR2(36)         not null,
   TASK_ID              VARCHAR2(36),
   RECEIVER_EMAIL       VARCHAR2(64),
   RECEIVER_TYPE        CHAR,
   constraint CP_EMAIL_TASK_RECEIVER_PK primary key (ID)
);

comment on table TEST1.CP_EMAIL_TASK_RECEIVER is
'CP_EMAIL_TASK_RECEIVER';

comment on column TEST1.CP_EMAIL_TASK_RECEIVER.ID is
'ID';

comment on column TEST1.CP_EMAIL_TASK_RECEIVER.TASK_ID is
'TASK_ID';

comment on column TEST1.CP_EMAIL_TASK_RECEIVER.RECEIVER_EMAIL is
'RECEIVER_EMAIL';

comment on column TEST1.CP_EMAIL_TASK_RECEIVER.RECEIVER_TYPE is
'RECEIVER_TYPE';

/*==============================================================*/
/* Table: CP_EMAIL_TEMPLATE                                     */
/*==============================================================*/
create table TEST1.CP_EMAIL_TEMPLATE 
(
   TEMPLATE_CODE        VARCHAR2(36)         not null,
   TEMPLATE             VARCHAR2(500),
   EMAIL_TYPE           CHAR,
   DESCRIPTION          VARCHAR2(100),
   constraint PK_CP_EMAIL_TEMPLATE primary key (TEMPLATE_CODE)
);

comment on table TEST1.CP_EMAIL_TEMPLATE is
'CP_EMAIL_TEMPLATE';

comment on column TEST1.CP_EMAIL_TEMPLATE.TEMPLATE_CODE is
'TEMPLATE_CODE';

comment on column TEST1.CP_EMAIL_TEMPLATE.TEMPLATE is
'TEMPLATE';

comment on column TEST1.CP_EMAIL_TEMPLATE.EMAIL_TYPE is
'EMAIL_TYPE';

comment on column TEST1.CP_EMAIL_TEMPLATE.DESCRIPTION is
'DESCRIPTION';

/*==============================================================*/
/* Table: CP_EMAIL_VALIDATE                                     */
/*==============================================================*/
create table TEST1.CP_EMAIL_VALIDATE 
(
   REC_NO               VARCHAR2(32)         not null,
   USER_NO              VARCHAR2(32)         not null,
   EMAIL                VARCHAR2(64)         not null,
   ACTIVATE_CODE        VARCHAR2(64)         not null,
   CREATE_TIME          CHAR(17)             not null,
   ACTIVATE_TIME        CHAR(17),
   ACTIVATE_STATUS      CHAR                 default '0' not null,
   constraint PK_CP_EMAIL_VALIDATE primary key (REC_NO)
);

comment on table TEST1.CP_EMAIL_VALIDATE is
'CP_EMAIL_VALIDATE';

comment on column TEST1.CP_EMAIL_VALIDATE.REC_NO is
'无业务意义的编码';

comment on column TEST1.CP_EMAIL_VALIDATE.USER_NO is
'用户编码';

comment on column TEST1.CP_EMAIL_VALIDATE.EMAIL is
'需要激活的邮箱';

comment on column TEST1.CP_EMAIL_VALIDATE.ACTIVATE_CODE is
'激活码';

comment on column TEST1.CP_EMAIL_VALIDATE.CREATE_TIME is
'激活码产生时间';

comment on column TEST1.CP_EMAIL_VALIDATE.ACTIVATE_TIME is
'激活时间';

comment on column TEST1.CP_EMAIL_VALIDATE.ACTIVATE_STATUS is
'内部状态
0:未激活
1:已激活';

/*==============================================================*/
/* Table: CP_ENT_CUST_MANAGER                                   */
/*==============================================================*/
create table TEST1.CP_ENT_CUST_MANAGER 
(
   REC_NO               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32)         not null,
   STAFF_NO             VARCHAR2(32)         not null,
   MANAGER_TYPE         CHAR                 not null,
   C3_ORG_NO            VARCHAR2(32)         not null,
   constraint PK_CP_ENT_CUST_MANAGER primary key (REC_NO)
);

comment on table TEST1.CP_ENT_CUST_MANAGER is
'存放企业归属哪些客户经理管理的信息';

comment on column TEST1.CP_ENT_CUST_MANAGER.REC_NO is
'REC_NO';

comment on column TEST1.CP_ENT_CUST_MANAGER.ENT_NO is
'ENT_NO';

comment on column TEST1.CP_ENT_CUST_MANAGER.STAFF_NO is
'STAFF_NO';

comment on column TEST1.CP_ENT_CUST_MANAGER.MANAGER_TYPE is
'码表中 1:ERP客户经理, 2:贷后客户经理';

comment on column TEST1.CP_ENT_CUST_MANAGER.C3_ORG_NO is
'C3_ORG_NO';

/*==============================================================*/
/* Table: CP_ENT_INFO                                           */
/*==============================================================*/
create table TEST1.CP_ENT_INFO 
(
   ENT_NO               VARCHAR2(32)         not null,
   CHINESE_FULLNAME     VARCHAR2(100),
   CHINESE_NAME         VARCHAR2(60),
   ENGLISH_FULLNAME     VARCHAR2(128),
   ENGLISH_NAME         VARCHAR2(16),
   ADDRESS              VARCHAR2(150),
   ENT_TYPE             CHAR(2),
   REGISTER_COUNTRY     CHAR(3),
   ADDRESS_ATTRIBUTE    CHAR(2),
   VIRTUAL_ACCT         VARCHAR2(32),
   LOGO                 VARCHAR2(100),
   ORG_CODE             VARCHAR2(32),
   CHECK_DATE           CHAR(8),
   REGISTER_IDENT_TYPE  CHAR(6),
   REGISTER_IDENT_NO    VARCHAR2(18),
   REGISTER_DATE        CHAR(8),
   REG_CHECK_DATE       CHAR(8),
   BUSI_LICENSE         VARCHAR2(32),
   BUSI_START_DATE      CHAR(8),
   BUSI_END_DATE        CHAR(8),
   CORP_NAME            VARCHAR2(60),
   CORP_IDENT_TYPE      CHAR,
   CORP_IDENT_NO        VARCHAR2(32),
   CORP_IDENT_MOBILE    VARCHAR2(16),
   CONTRACTOR           VARCHAR2(60),
   EMAIL                VARCHAR2(64),
   TEL                  VARCHAR2(32),
   STAFF_NUM            NUMBER,
   AREA_CODE            CHAR(6),
   CORE_FLAG            CHAR                 default '0' not null,
   BG_FLAG              CHAR                 default '0' not null,
   REGISTER_TIME        CHAR(17),
   ACTIVATE_CODE        VARCHAR2(64),
   CREATE_TIME          CHAR(17),
   ACTIVATE_STATUS      CHAR                 not null,
   ACTIVATE_TIME        CHAR(17),
   AU_LEVEL             NUMBER               default 0 not null,
   USER_GRADE           CHAR,
   INFO_PROCESS         NUMBER(3,2),
   INFO_STATUS          CHAR                 default '1' not null,
   TRADE_CODE           CHAR(5),
   ENT_SCALE            CHAR,
   CIF_NO               VARCHAR2(32),
   PAY_UPDATE_FLAG      CHAR,
   CITY_CODE            CHAR(6),
   INVALID_TIME         CHAR(17),
   LOGO_THUMBNAIL       VARCHAR2(100),
   constraint PK_CP_ENT_INFO primary key (ENT_NO)
);

comment on table TEST1.CP_ENT_INFO is
'存放企业的基本信息。';

comment on column TEST1.CP_ENT_INFO.ENT_NO is
'系统自动生成，没有业务意义，其他表关联使用该字段';

comment on column TEST1.CP_ENT_INFO.CHINESE_FULLNAME is
'中文全称';

comment on column TEST1.CP_ENT_INFO.CHINESE_NAME is
'中文简称';

comment on column TEST1.CP_ENT_INFO.ENGLISH_FULLNAME is
'英文全称';

comment on column TEST1.CP_ENT_INFO.ENGLISH_NAME is
'英文简称';

comment on column TEST1.CP_ENT_INFO.ADDRESS is
'注册地址';

comment on column TEST1.CP_ENT_INFO.ENT_TYPE is
'放码表中
企业法人/企业分支机构/企业其他/事业法人/事业其他/社团法人/社团其他/行政机构法人/机关非法人/民办非企业单位/工会法人/农民专业合作社/其他机构/不可获知/不可适用';

comment on column TEST1.CP_ENT_INFO.REGISTER_COUNTRY is
'注册国家或地区';

comment on column TEST1.CP_ENT_INFO.ADDRESS_ATTRIBUTE is
'放码表中
城区、城关镇/其他城市地区/农村地区/乡镇(城关镇除外)/农场/林场/牧场/渔场/其他农村区域/其他/未知/不适用';

comment on column TEST1.CP_ENT_INFO.VIRTUAL_ACCT is
'支付平台产生的虚拟账号';

comment on column TEST1.CP_ENT_INFO.LOGO is
'企业LOGO文件路径';

comment on column TEST1.CP_ENT_INFO.ORG_CODE is
'组织机构代码';

comment on column TEST1.CP_ENT_INFO.CHECK_DATE is
'组织机构代码年检日期';

comment on column TEST1.CP_ENT_INFO.REGISTER_IDENT_TYPE is
'放码表中
1.企业营业执照
2.事业单位登记证
3.社会团体登记证
4.境外金融机构SWIFT码
5.其他机构证件标识
6.境外系统客户代码';

comment on column TEST1.CP_ENT_INFO.REGISTER_IDENT_NO is
'注册或登记证件号码';

comment on column TEST1.CP_ENT_INFO.REGISTER_DATE is
'注册或批准成立日期';

comment on column TEST1.CP_ENT_INFO.REG_CHECK_DATE is
'注册或登记证件年检日期';

comment on column TEST1.CP_ENT_INFO.BUSI_LICENSE is
'营业执照号码';

comment on column TEST1.CP_ENT_INFO.BUSI_START_DATE is
'营业或有效期限起始日期';

comment on column TEST1.CP_ENT_INFO.BUSI_END_DATE is
'营业或有效期限终止日期';

comment on column TEST1.CP_ENT_INFO.CORP_NAME is
'法人姓名';

comment on column TEST1.CP_ENT_INFO.CORP_IDENT_TYPE is
'放码表中
1.身份证
2.护照';

comment on column TEST1.CP_ENT_INFO.CORP_IDENT_NO is
'企业法人代表有效证件号码';

comment on column TEST1.CP_ENT_INFO.CORP_IDENT_MOBILE is
'企业法人代表手机号';

comment on column TEST1.CP_ENT_INFO.CONTRACTOR is
'联系人';

comment on column TEST1.CP_ENT_INFO.EMAIL is
'邮箱';

comment on column TEST1.CP_ENT_INFO.TEL is
'联系电话';

comment on column TEST1.CP_ENT_INFO.STAFF_NUM is
'成员数';

comment on column TEST1.CP_ENT_INFO.AREA_CODE is
'区域编码';

comment on column TEST1.CP_ENT_INFO.CORE_FLAG is
'0：不是
1：是';

comment on column TEST1.CP_ENT_INFO.BG_FLAG is
'放码表中
0：圈外企业
1：圈内企业';

comment on column TEST1.CP_ENT_INFO.REGISTER_TIME is
'注册时间';

comment on column TEST1.CP_ENT_INFO.ACTIVATE_CODE is
'激活码';

comment on column TEST1.CP_ENT_INFO.CREATE_TIME is
'激活码产生时间';

comment on column TEST1.CP_ENT_INFO.ACTIVATE_STATUS is
'0:未激活  1:已激活';

comment on column TEST1.CP_ENT_INFO.ACTIVATE_TIME is
'激活时间';

comment on column TEST1.CP_ENT_INFO.AU_LEVEL is
'0,1,2,3';

comment on column TEST1.CP_ENT_INFO.USER_GRADE is
'放码表中
AAA+/AA+/AA/BB+/B';

comment on column TEST1.CP_ENT_INFO.INFO_PROCESS is
'0:支付没有更新 1：支付有更新';

comment on column TEST1.CP_ENT_INFO.INFO_STATUS is
'INFO_STATUS';

comment on column TEST1.CP_ENT_INFO.TRADE_CODE is
'归属行业';

comment on column TEST1.CP_ENT_INFO.ENT_SCALE is
'放码表中，对应ENT_SCALE';

comment on column TEST1.CP_ENT_INFO.CIF_NO is
'CIF_NO';

comment on column TEST1.CP_ENT_INFO.PAY_UPDATE_FLAG is
'PAY_UPDATE_FLAG';

comment on column TEST1.CP_ENT_INFO.CITY_CODE is
'CITY_CODE';

comment on column TEST1.CP_ENT_INFO.INVALID_TIME is
'激活码失效时间';

comment on column TEST1.CP_ENT_INFO.LOGO_THUMBNAIL is
'LOGO_THUMBNAIL';

/*==============================================================*/
/* Table: CP_ENT_TASK                                           */
/*==============================================================*/
create table TEST1.CP_ENT_TASK 
(
   RECHECK_NO           VARCHAR2(32)         not null,
   TASK_NO              VARCHAR2(32)         not null,
   TRANS_CODE           VARCHAR2(10),
   PRODUCT_CODE         CHAR(2)              not null,
   USER_NO              VARCHAR2(32)         not null,
   OPER_TITLE           VARCHAR2(64)         not null,
   OPER_DESC            VARCHAR2(300),
   CREATE_TIME          CHAR(17)             not null,
   DETAIL_PAGE          VARCHAR2(150),
   TASK_STATUS          CHAR                 not null,
   FINAL_RE_TYPE        CHAR,
   FINAL_PAGE           VARCHAR2(150),
   ENT_NO               VARCHAR2(32),
   WORKFLOW_NO          VARCHAR2(32),
   RECHECK_COUNT        NUMBER,
   constraint PK_CP_ENT_TASK primary key (RECHECK_NO)
);

comment on table TEST1.CP_ENT_TASK is
'保存企业复核的记录. 根据配置决定操作员的操作是否需要复核，如果需要，在该表记录一条记录。';

comment on column TEST1.CP_ENT_TASK.RECHECK_NO is
'RECHECK_NO';

comment on column TEST1.CP_ENT_TASK.TASK_NO is
'TASK_NO';

comment on column TEST1.CP_ENT_TASK.TRANS_CODE is
'TRANS_CODE';

comment on column TEST1.CP_ENT_TASK.PRODUCT_CODE is
'PRODUCT_CODE';

comment on column TEST1.CP_ENT_TASK.USER_NO is
'USER_NO';

comment on column TEST1.CP_ENT_TASK.OPER_TITLE is
'OPER_TITLE';

comment on column TEST1.CP_ENT_TASK.OPER_DESC is
'OPER_DESC';

comment on column TEST1.CP_ENT_TASK.CREATE_TIME is
'CREATE_TIME';

comment on column TEST1.CP_ENT_TASK.DETAIL_PAGE is
'DETAIL_PAGE';

comment on column TEST1.CP_ENT_TASK.TASK_STATUS is
'放码表中
1.待审核
2.审核中
3.审核同意
4.审核驳回';

comment on column TEST1.CP_ENT_TASK.FINAL_RE_TYPE is
'FINAL_RE_TYPE';

comment on column TEST1.CP_ENT_TASK.FINAL_PAGE is
'FINAL_PAGE';

comment on column TEST1.CP_ENT_TASK.ENT_NO is
'ENT_NO';

comment on column TEST1.CP_ENT_TASK.WORKFLOW_NO is
'WORKFLOW_NO';

comment on column TEST1.CP_ENT_TASK.RECHECK_COUNT is
'RECHECK_COUNT';

/*==============================================================*/
/* Table: CP_ERRLOG                                             */
/*==============================================================*/
create table TEST1.CP_ERRLOG 
(
   ID                   VARCHAR2(32)         not null,
   BUSI_TRANS_NO        VARCHAR2(32),
   LOG_DATE             CHAR(8),
   LOG_TIMESTAMP        VARCHAR2(32),
   ERROR_CODE           VARCHAR2(8),
   ERROR_DESC           VARCHAR2(4000),
   SESSION_ID           VARCHAR2(64),
   EXE_CLASS_NAME       VARCHAR2(150),
   constraint PK_CP_ERRLOG primary key (ID)
);

comment on table TEST1.CP_ERRLOG is
'公共功能错误日志记录表';

comment on column TEST1.CP_ERRLOG.ID is
'记录PK';

comment on column TEST1.CP_ERRLOG.BUSI_TRANS_NO is
'业务流水号';

comment on column TEST1.CP_ERRLOG.LOG_DATE is
'记录日期';

comment on column TEST1.CP_ERRLOG.LOG_TIMESTAMP is
'记录时间戳';

comment on column TEST1.CP_ERRLOG.ERROR_CODE is
'错误代码';

comment on column TEST1.CP_ERRLOG.ERROR_DESC is
'错误描述';

comment on column TEST1.CP_ERRLOG.SESSION_ID is
'会话ID';

comment on column TEST1.CP_ERRLOG.EXE_CLASS_NAME is
'执行类名称';

/*==============================================================*/
/* Table: CP_ERROR_INFO_COMP                                    */
/*==============================================================*/
create table TEST1.CP_ERROR_INFO_COMP 
(
   ERROR_CODE           VARCHAR2(8)          not null,
   ERROR_SYS_DESC       VARCHAR2(150),
   ERROR_USER_DESC      VARCHAR2(150),
   ERROR_NAME           VARCHAR2(60),
   constraint PK_CP_ERROR_INFO_COMP primary key (ERROR_CODE)
);

comment on table TEST1.CP_ERROR_INFO_COMP is
'错误代码对照表';

comment on column TEST1.CP_ERROR_INFO_COMP.ERROR_CODE is
'错误代码';

comment on column TEST1.CP_ERROR_INFO_COMP.ERROR_SYS_DESC is
'系统内部解释';

comment on column TEST1.CP_ERROR_INFO_COMP.ERROR_USER_DESC is
'用户提示信息';

comment on column TEST1.CP_ERROR_INFO_COMP.ERROR_NAME is
'错误别名';

/*==============================================================*/
/* Table: CP_GROUP_RESOURCE                                     */
/*==============================================================*/
create table TEST1.CP_GROUP_RESOURCE 
(
   REC_NO               VARCHAR2(32)         not null,
   RES_CODE             VARCHAR2(32)         not null,
   GROUP_CODE           VARCHAR2(32)         not null,
   constraint PK_CP_GROUP_RESOURCE primary key (REC_NO)
);

comment on table TEST1.CP_GROUP_RESOURCE is
'CP_GROUP_RESOURCE';

comment on column TEST1.CP_GROUP_RESOURCE.REC_NO is
'REC_NO';

comment on column TEST1.CP_GROUP_RESOURCE.RES_CODE is
'RES_CODE';

comment on column TEST1.CP_GROUP_RESOURCE.GROUP_CODE is
'GROUP_CODE';

/*==============================================================*/
/* Table: CP_GROUP_USERACCOUNT                                  */
/*==============================================================*/
create table TEST1.CP_GROUP_USERACCOUNT 
(
   REC_NO               VARCHAR2(32)         not null,
   GROUP_CODE           VARCHAR2(32)         not null,
   USER_NO              VARCHAR2(32)         not null,
   constraint PK_CP_GROUP_USERACCOUNT primary key (REC_NO)
);

comment on table TEST1.CP_GROUP_USERACCOUNT is
'CP_GROUP_USERACCOUNT';

comment on column TEST1.CP_GROUP_USERACCOUNT.REC_NO is
'REC_NO';

comment on column TEST1.CP_GROUP_USERACCOUNT.GROUP_CODE is
'GROUP_CODE';

comment on column TEST1.CP_GROUP_USERACCOUNT.USER_NO is
'USER_NO';

/*==============================================================*/
/* Table: CP_LOGIN_LOG                                          */
/*==============================================================*/
create table TEST1.CP_LOGIN_LOG 
(
   REC_NO               VARCHAR2(32)         not null,
   STAFF_NO             VARCHAR2(32)         not null,
   IP_ADDRESS           VARCHAR2(16)         not null,
   LOGIN_TIME           CHAR(17)             not null,
   SESSION_ID           VARCHAR2(32)         not null,
   LOGIN_DESC           VARCHAR2(100)
);

comment on table TEST1.CP_LOGIN_LOG is
'CP_LOGIN_LOG';

comment on column TEST1.CP_LOGIN_LOG.REC_NO is
'记录编码';

comment on column TEST1.CP_LOGIN_LOG.STAFF_NO is
'STAFF_NO';

comment on column TEST1.CP_LOGIN_LOG.IP_ADDRESS is
'IP地址';

comment on column TEST1.CP_LOGIN_LOG.LOGIN_TIME is
'登录时间';

comment on column TEST1.CP_LOGIN_LOG.SESSION_ID is
'本次登录SessionID';

comment on column TEST1.CP_LOGIN_LOG.LOGIN_DESC is
'LOGIN_DESC';

/*==============================================================*/
/* Table: CP_MAINTENANCE_LOG                                    */
/*==============================================================*/
create table TEST1.CP_MAINTENANCE_LOG 
(
   REC_NO               VARCHAR2(32)         not null,
   OPER_CODE            VARCHAR2(32)         not null,
   OPER_NAME            VARCHAR2(60)         not null,
   OPER_TIME            CHAR(17)             not null,
   OPER_DESC            VARCHAR2(500),
   IP_ADDRESS           VARCHAR2(16)         not null,
   OLD_INFO             VARCHAR2(2000),
   NEW_INFO             VARCHAR2(2000),
   OPERATOR_NO          VARCHAR2(32)         not null,
   OPERATOR_NAME        VARCHAR2(60)         not null,
   constraint PK_CP_MAINTENANCE_LOG primary key (REC_NO)
);

comment on table TEST1.CP_MAINTENANCE_LOG is
'CP_MAINTENANCE_LOG';

comment on column TEST1.CP_MAINTENANCE_LOG.REC_NO is
'无业务意义的编码';

comment on column TEST1.CP_MAINTENANCE_LOG.OPER_CODE is
'操作代码';

comment on column TEST1.CP_MAINTENANCE_LOG.OPER_NAME is
'操作名称';

comment on column TEST1.CP_MAINTENANCE_LOG.OPER_TIME is
'操作时间';

comment on column TEST1.CP_MAINTENANCE_LOG.OPER_DESC is
'操作描述';

comment on column TEST1.CP_MAINTENANCE_LOG.IP_ADDRESS is
'IP地址';

comment on column TEST1.CP_MAINTENANCE_LOG.OLD_INFO is
'操作前信息';

comment on column TEST1.CP_MAINTENANCE_LOG.NEW_INFO is
'操作后信息';

comment on column TEST1.CP_MAINTENANCE_LOG.OPERATOR_NO is
'操作人编码';

comment on column TEST1.CP_MAINTENANCE_LOG.OPERATOR_NAME is
'操作人姓名';

/*==============================================================*/
/* Table: CP_MENU                                               */
/*==============================================================*/
create table TEST1.CP_MENU 
(
   MENU_CODE            VARCHAR2(10)         not null,
   MENU_NAME            VARCHAR2(60)         not null,
   TRANS_CODE           VARCHAR2(10),
   TREEPATH             VARCHAR2(50),
   ORDER_NUM            NUMBER,
   MENU_STATUS          CHAR                 default '1' not null,
   PARENT_MENU_CODE     VARCHAR2(10),
   constraint PK_CP_MENU primary key (MENU_CODE)
);

comment on table TEST1.CP_MENU is
'存放菜单资源。';

comment on column TEST1.CP_MENU.MENU_CODE is
'MENU_CODE';

comment on column TEST1.CP_MENU.MENU_NAME is
'菜单名称';

comment on column TEST1.CP_MENU.TRANS_CODE is
'所属交易';

comment on column TEST1.CP_MENU.TREEPATH is
'菜单TreePath，如/0000/0001/';

comment on column TEST1.CP_MENU.ORDER_NUM is
'菜单顺序号，如1,5,10';

comment on column TEST1.CP_MENU.MENU_STATUS is
'放码表中
0：停用
1：启用';

comment on column TEST1.CP_MENU.PARENT_MENU_CODE is
'上级菜单代码';

/*==============================================================*/
/* Table: CP_MODULE                                             */
/*==============================================================*/
create table TEST1.CP_MODULE 
(
   MODULE_CODE          VARCHAR2(10)         not null,
   MODULE_NAME          VARCHAR2(60)         not null,
   TREEPATH             VARCHAR2(50),
   MODULE_STATUS        CHAR                 default '1' not null,
   PARENT_MODULE_CODE   VARCHAR2(10),
   constraint PK_CP_MODULE primary key (MODULE_CODE)
);

comment on table TEST1.CP_MODULE is
'存放模块信息，模块即对交易的分组。';

comment on column TEST1.CP_MODULE.MODULE_CODE is
'模块代码';

comment on column TEST1.CP_MODULE.MODULE_NAME is
'模块名称';

comment on column TEST1.CP_MODULE.TREEPATH is
'模块treePath，如/0000/0001/';

comment on column TEST1.CP_MODULE.MODULE_STATUS is
'放码表中
0：停用
1：启用';

comment on column TEST1.CP_MODULE.PARENT_MODULE_CODE is
'上级模块代码';

/*==============================================================*/
/* Table: CP_MSG                                                */
/*==============================================================*/
create table TEST1.CP_MSG 
(
   REC_NO               VARCHAR2(32)         not null,
   PRODUCT_CODE         CHAR(2),
   TEMPLATE_CODE        CHAR(10),
   SENDER_NO            VARCHAR2(32),
   SENDER               VARCHAR2(60),
   SENDER_MOBILE        VARCHAR2(16),
   SENDER_EMAIL         VARCHAR2(64),
   RECEIVER_NO          VARCHAR2(32),
   RECEIVER             VARCHAR2(60),
   RECEIVER_MOBILE      VARCHAR2(16),
   RECEIVER_EMAIL       VARCHAR2(64),
   MSG_SUBJECT          VARCHAR2(500),
   MSG_CONTENT          VARCHAR2(4000)       not null,
   SEND_LEVEL           NUMBER,
   DISP_LEVEL           NUMBER,
   CREATE_TIME          CHAR(17)             not null,
   TOMQ_TIME            CHAR(17),
   MSG_STATUS           CHAR                 not null,
   MQ_NO                VARCHAR2(36),
   GROUP_FLAG           CHAR                 default '1',
   MSG_CHANNEL          CHAR                 not null,
   SOURCE_FLAG          CHAR                 default '1' not null,
   READ_FLAG            CHAR                 default '0' not null,
   DETAIL_URL           VARCHAR2(500),
   MSG_TYPE             CHAR(2),
   constraint PK_CP_MSG primary key (REC_NO)
);

comment on table TEST1.CP_MSG is
'存放无时间限制的消息发送';

comment on column TEST1.CP_MSG.REC_NO is
'REC_NO';

comment on column TEST1.CP_MSG.PRODUCT_CODE is
'融资:LB
理财:WI 
贷款:LN
支付:EP
网购:OL
看板:WB
公共:CP';

comment on column TEST1.CP_MSG.TEMPLATE_CODE is
'TEMPLATE_CODE';

comment on column TEST1.CP_MSG.SENDER_NO is
'SENDER_NO';

comment on column TEST1.CP_MSG.SENDER is
'发送人姓名';

comment on column TEST1.CP_MSG.SENDER_MOBILE is
'发送人手机';

comment on column TEST1.CP_MSG.SENDER_EMAIL is
'SENDER_EMAIL';

comment on column TEST1.CP_MSG.RECEIVER_NO is
'接收人编码.';

comment on column TEST1.CP_MSG.RECEIVER is
'接收人姓名.';

comment on column TEST1.CP_MSG.RECEIVER_MOBILE is
'RECEIVER_MOBILE';

comment on column TEST1.CP_MSG.RECEIVER_EMAIL is
'RECEIVER_EMAIL';

comment on column TEST1.CP_MSG.MSG_SUBJECT is
'消息主题';

comment on column TEST1.CP_MSG.MSG_CONTENT is
'消息内容.对于系统广播，只有内容，没有消息主题';

comment on column TEST1.CP_MSG.SEND_LEVEL is
'消息发送优先级，数字大的优先级高';

comment on column TEST1.CP_MSG.DISP_LEVEL is
'消息显示排序级别';

comment on column TEST1.CP_MSG.CREATE_TIME is
'消息产生时间';

comment on column TEST1.CP_MSG.TOMQ_TIME is
'TOMQ_TIME';

comment on column TEST1.CP_MSG.MSG_STATUS is
'放码表中。
0：只登记了，没有发送
1:  发送失败，即送MQ失败
2:  发送成功，即送MQ成功';

comment on column TEST1.CP_MSG.MQ_NO is
'MQ返回的流水编码';

comment on column TEST1.CP_MSG.GROUP_FLAG is
'内部状态位:
0:不是
1:是';

comment on column TEST1.CP_MSG.MSG_CHANNEL is
'推送方式放码表中。1.站内通知  2:短消息  3.邮件  4.系统广播
有时间限制的推送方式只可能是短消息。
无时间限制的推送方式都可以。';

comment on column TEST1.CP_MSG.SOURCE_FLAG is
'内部状态
1:互联网银行消息
2.后台管理系统消息';

comment on column TEST1.CP_MSG.READ_FLAG is
'0:未读 1:已读';

comment on column TEST1.CP_MSG.DETAIL_URL is
'消息查看详情的URL';

comment on column TEST1.CP_MSG.MSG_TYPE is
'消息类型';

/*==============================================================*/
/* Table: CP_MSG_ASYN                                           */
/*==============================================================*/
create table TEST1.CP_MSG_ASYN 
(
   REC_NO               VARCHAR2(32)         not null,
   PRODUCT_CODE         CHAR(2),
   TEMPLATE_CODE        CHAR(10),
   SENDER               VARCHAR2(60),
   SENDER_MOBILE        VARCHAR2(16),
   RECEIVER_NO          VARCHAR2(32),
   RECEIVER             VARCHAR2(60),
   RECEIVER_MOBILE      VARCHAR2(16),
   MSG_SUBJECT          VARCHAR2(500),
   MSG_CONTENT          VARCHAR2(4000)       not null,
   SEND_LEVEL           NUMBER,
   START_TIME1          CHAR(5),
   END_TIME1            CHAR(5),
   START_TIME2          CHAR(5),
   END_TIME2            CHAR(5),
   WEEKEND_FLAG         CHAR                 default '1',
   HOLIDAY_FLAG         CHAR                 default '1',
   CREATE_TIME          CHAR(17)             not null,
   TOMQ_TIME            CHAR(17),
   MSG_STATUS           CHAR                 not null,
   MQ_NO                VARCHAR2(36),
   MSG_TYPE             CHAR(2),
   constraint PK_CP_MSG_ASYN primary key (REC_NO)
);

comment on table TEST1.CP_MSG_ASYN is
'存放有时间限制的消息';

comment on column TEST1.CP_MSG_ASYN.REC_NO is
'无业务意义的编码';

comment on column TEST1.CP_MSG_ASYN.PRODUCT_CODE is
'融资:LB
理财:WI 
贷款:LN
支付:EP
网购:OL
看板:WB
公共:CP';

comment on column TEST1.CP_MSG_ASYN.TEMPLATE_CODE is
'TEMPLATE_CODE';

comment on column TEST1.CP_MSG_ASYN.SENDER is
'发布人';

comment on column TEST1.CP_MSG_ASYN.SENDER_MOBILE is
'SENDER_MOBILE';

comment on column TEST1.CP_MSG_ASYN.RECEIVER_NO is
'接收人编码.';

comment on column TEST1.CP_MSG_ASYN.RECEIVER is
'接收人姓名.';

comment on column TEST1.CP_MSG_ASYN.RECEIVER_MOBILE is
'RECEIVER_MOBILE';

comment on column TEST1.CP_MSG_ASYN.MSG_SUBJECT is
'消息主题';

comment on column TEST1.CP_MSG_ASYN.MSG_CONTENT is
'消息内容.对于系统广播，只有内容，没有消息主题';

comment on column TEST1.CP_MSG_ASYN.SEND_LEVEL is
'消息发送优先级，数字大的优先级高';

comment on column TEST1.CP_MSG_ASYN.START_TIME1 is
'可发送开始时间1，如9:00';

comment on column TEST1.CP_MSG_ASYN.END_TIME1 is
'可发送开始时间1，如12:00';

comment on column TEST1.CP_MSG_ASYN.START_TIME2 is
'可发送开始时间2，如14:00';

comment on column TEST1.CP_MSG_ASYN.END_TIME2 is
'可发送结束时间2，如22:00';

comment on column TEST1.CP_MSG_ASYN.WEEKEND_FLAG is
'0:不发送
1:发送';

comment on column TEST1.CP_MSG_ASYN.HOLIDAY_FLAG is
'0:不发送
1:发送';

comment on column TEST1.CP_MSG_ASYN.CREATE_TIME is
'消息产生时间';

comment on column TEST1.CP_MSG_ASYN.TOMQ_TIME is
'TOMQ_TIME';

comment on column TEST1.CP_MSG_ASYN.MSG_STATUS is
'放码表中。
0：只登记了，没有发送
1:  发送失败，即送MQ失败
2:  发送成功，即送MQ成功';

comment on column TEST1.CP_MSG_ASYN.MQ_NO is
'MQ返回的流水号';

comment on column TEST1.CP_MSG_ASYN.MSG_TYPE is
'MSG_TYPE';

/*==============================================================*/
/* Table: CP_MSG_BULLETIN                                       */
/*==============================================================*/
create table TEST1.CP_MSG_BULLETIN 
(
   REC_NO               VARCHAR2(32)         not null,
   STAFF_NO             VARCHAR2(32)         not null,
   MSG_TYPE             CHAR                 default '1' not null,
   PRODUCT_CODE         CHAR(2),
   MSG_SUBJECT          VARCHAR2(300)        not null,
   MSG_CONTENT          VARCHAR2(4000),
   MSG_URL              VARCHAR2(200),
   PUBLISH_STATUS       CHAR                 default '0' not null,
   START_DATE           CHAR(8)              not null,
   END_DATE             CHAR(8),
   PUBLISH_CHANNEL      VARCHAR2(10)         default '1' not null,
   CREATE_TIME          CHAR(17)             not null,
   PUBLISH_TIME         CHAR(17),
   constraint PK_CP_MSG_BULLETIN primary key (REC_NO)
);

comment on table TEST1.CP_MSG_BULLETIN is
'CP_MSG_BULLETIN';

comment on column TEST1.CP_MSG_BULLETIN.REC_NO is
'没有业务意义的主键';

comment on column TEST1.CP_MSG_BULLETIN.STAFF_NO is
'发布人，即登陆的操作人';

comment on column TEST1.CP_MSG_BULLETIN.MSG_TYPE is
'放码表中
1.系统公告
2.营销公告';

comment on column TEST1.CP_MSG_BULLETIN.PRODUCT_CODE is
'来自码表
融资:LB
理财:WI 
贷款:LN
支付:EP
网购:OL
看板:WB
公共:CP';

comment on column TEST1.CP_MSG_BULLETIN.MSG_SUBJECT is
'消息主题';

comment on column TEST1.CP_MSG_BULLETIN.MSG_CONTENT is
'消息内容';

comment on column TEST1.CP_MSG_BULLETIN.MSG_URL is
'链接地址';

comment on column TEST1.CP_MSG_BULLETIN.PUBLISH_STATUS is
'放码表中
0:未发布
1:已发布';

comment on column TEST1.CP_MSG_BULLETIN.START_DATE is
'公告开始显示的开始日期';

comment on column TEST1.CP_MSG_BULLETIN.END_DATE is
'公告开始显示的结束日期';

comment on column TEST1.CP_MSG_BULLETIN.PUBLISH_CHANNEL is
'配置发送的方式。如果同时多种方式，用逗号隔开，如1;3
发送方式在码表中配置。发送方式配置在码表中:
1:站内消息  2.短消息 3.邮件。这里默认1:站内方式.
该字段为后续扩展使用';

comment on column TEST1.CP_MSG_BULLETIN.CREATE_TIME is
'录入时间';

comment on column TEST1.CP_MSG_BULLETIN.PUBLISH_TIME is
'发布时间';

/*==============================================================*/
/* Table: CP_MSG_EMAIL_GROUP                                    */
/*==============================================================*/
create table TEST1.CP_MSG_EMAIL_GROUP 
(
   MSG_NO               VARCHAR2(32)         not null,
   EMAIL                VARCHAR2(64)         not null,
   REC_NO               VARCHAR2(32)         not null,
   constraint PK_CP_MSG_EMAIL_GROUP primary key (REC_NO)
);

comment on table TEST1.CP_MSG_EMAIL_GROUP is
'CP_MSG_EMAIL_GROUP';

comment on column TEST1.CP_MSG_EMAIL_GROUP.MSG_NO is
'消息的编码';

comment on column TEST1.CP_MSG_EMAIL_GROUP.EMAIL is
'邮箱';

comment on column TEST1.CP_MSG_EMAIL_GROUP.REC_NO is
'主键';

/*==============================================================*/
/* Table: CP_MSG_FILE                                           */
/*==============================================================*/
create table TEST1.CP_MSG_FILE 
(
   REC_NO               VARCHAR2(32)         not null,
   MSG_NO               VARCHAR2(32)         not null,
   FILE_PATH            VARCHAR2(100)        not null,
   constraint PK_CP_MSG_FILE primary key (REC_NO)
);

comment on table TEST1.CP_MSG_FILE is
'邮件的附件表';

comment on column TEST1.CP_MSG_FILE.REC_NO is
'REC_NO';

comment on column TEST1.CP_MSG_FILE.MSG_NO is
'MSG_NO';

comment on column TEST1.CP_MSG_FILE.FILE_PATH is
'FILE_PATH';

/*==============================================================*/
/* Table: CP_MSG_TEMPLATE                                       */
/*==============================================================*/
create table TEST1.CP_MSG_TEMPLATE 
(
   TEMPLATE_CODE        VARCHAR2(10)         not null,
   TEMPLATE_NAME        VARCHAR2(100)        not null,
   MSG_SUBJECT          VARCHAR2(500)        not null,
   MSG_CONTENT          CLOB                 not null,
   PRODUCT_CODE         CHAR(2)              not null,
   SEND_LEVEL           NUMBER,
   DISP_LEVEL           NUMBER,
   TIME_FLAG            CHAR,
   START_TIME1          CHAR(5),
   END_TIME1            CHAR(5),
   START_TIME2          CHAR(5),
   END_TIME2            CHAR(5),
   WEEKEND_FLAG         CHAR,
   HOLIDAY_FLAG         CHAR,
   DESCRIPTION          VARCHAR2(300),
   TEMPLATE_STATUS      CHAR                 default '1' not null,
   MSG_TYPE             CHAR(2),
   MSG_CHANNEL          VARCHAR2(10),
   TRANS_CODE           VARCHAR2(10),
   constraint PK_CP_MSG_TEMPLATE primary key (TEMPLATE_CODE)
);

comment on table TEST1.CP_MSG_TEMPLATE is
'CP_MSG_TEMPLATE';

comment on column TEST1.CP_MSG_TEMPLATE.TEMPLATE_CODE is
'模板代码';

comment on column TEST1.CP_MSG_TEMPLATE.TEMPLATE_NAME is
'模板名称';

comment on column TEST1.CP_MSG_TEMPLATE.MSG_SUBJECT is
'消息主题';

comment on column TEST1.CP_MSG_TEMPLATE.MSG_CONTENT is
'消息内容';

comment on column TEST1.CP_MSG_TEMPLATE.PRODUCT_CODE is
'来自码表
融资:LB
理财:WI
贷款:LN
支付:EP
网购:OL
看板:WB
公共:CP';

comment on column TEST1.CP_MSG_TEMPLATE.SEND_LEVEL is
'消息优先级，级别高的先发送';

comment on column TEST1.CP_MSG_TEMPLATE.DISP_LEVEL is
'消息显示排序级别，数字大的显示在前面';

comment on column TEST1.CP_MSG_TEMPLATE.TIME_FLAG is
'发送时间是否限制。放码表中：
0:  不限制1：限制';

comment on column TEST1.CP_MSG_TEMPLATE.START_TIME1 is
'可发送开始时间1，如8:00';

comment on column TEST1.CP_MSG_TEMPLATE.END_TIME1 is
'可发送结束时间1，如12:00';

comment on column TEST1.CP_MSG_TEMPLATE.START_TIME2 is
'可发送开始时间2，如14:00';

comment on column TEST1.CP_MSG_TEMPLATE.END_TIME2 is
'可发送结束时间2，如22:00';

comment on column TEST1.CP_MSG_TEMPLATE.WEEKEND_FLAG is
'放码表中。周末是是否发送：
0: 周末可以发送；
1：周末不能发送';

comment on column TEST1.CP_MSG_TEMPLATE.HOLIDAY_FLAG is
'放码表中。节假日是否发送：
0:  节假日可以发送；
1：节假日不能发送';

comment on column TEST1.CP_MSG_TEMPLATE.DESCRIPTION is
'发送场景详细描述';

comment on column TEST1.CP_MSG_TEMPLATE.TEMPLATE_STATUS is
'放码表中，对应分类代码：START_STOP_FLAG,0:停用，1:启用';

comment on column TEST1.CP_MSG_TEMPLATE.MSG_TYPE is
'MSG_TYPE';

comment on column TEST1.CP_MSG_TEMPLATE.MSG_CHANNEL is
'消息推送方式。放码表中。目前一个推送方式对应一个模板。';

comment on column TEST1.CP_MSG_TEMPLATE.TRANS_CODE is
'交易代码';
/*==============================================================*/
/* Table: CP_MSG_TRANS_REL                                      */
/*==============================================================*/
create table TEST1.CP_MSG_TRANS_REL 
(
   REC_NO               VARCHAR2(32)         not null,
   MSG_NO               VARCHAR2(32)         not null,
   TRANS_NO             VARCHAR2(32)         not null,
   constraint SYS_C0071943 primary key (REC_NO)
);

comment on table TEST1.CP_MSG_TRANS_REL is
'存放消息流水和业务流水的关联表，根据此，能找到对应业务的交易记录。';

comment on column TEST1.CP_MSG_TRANS_REL.REC_NO is
'记录编码';

comment on column TEST1.CP_MSG_TRANS_REL.MSG_NO is
'消息编码';

comment on column TEST1.CP_MSG_TRANS_REL.TRANS_NO is
'业务流水编码';

/*==============================================================*/
/* Table: CP_ORG                                                */
/*==============================================================*/
create table TEST1.CP_ORG 
(
   ORG_CODE             VARCHAR2(10)         not null,
   ORG_NAME             VARCHAR2(60)         not null,
   ORDER_NO             NUMBER,
   TREEPATH             VARCHAR2(50),
   PARENT_ORG_CODE      VARCHAR2(10),
   constraint PK_CP_ORG primary key (ORG_CODE)
);

comment on table TEST1.CP_ORG is
'存放内部的组织机构信息，即为各产品创建的虚拟的机构。';

comment on column TEST1.CP_ORG.ORG_CODE is
'组织代码';

comment on column TEST1.CP_ORG.ORG_NAME is
'组织名称';

comment on column TEST1.CP_ORG.ORDER_NO is
'组织排序,如1,2,3';

comment on column TEST1.CP_ORG.TREEPATH is
'组织TreePath，如/000000/0000001/';

comment on column TEST1.CP_ORG.PARENT_ORG_CODE is
'上级组织机构代码';

/*==============================================================*/
/* Table: CP_PARAM                                              */
/*==============================================================*/
create table TEST1.CP_PARAM 
(
   PRODUCT_CODE         CHAR(2)              not null,
   PARAM_CNNAME         VARCHAR2(60)         not null,
   PARAM_ENNAME         VARCHAR2(32)         not null,
   PARAM_VALUE          VARCHAR2(200)        not null,
   READ_FLAG            CHAR                 default '1' not null,
   DESCRIPTION          VARCHAR2(200),
   constraint SYS_C0071914 primary key (PRODUCT_CODE, PARAM_ENNAME)
);

comment on table TEST1.CP_PARAM is
'CP_PARAM';

comment on column TEST1.CP_PARAM.PRODUCT_CODE is
'参数分类代码，对参数的分组，如邮件类参数编码EMAIL_PARAM';

comment on column TEST1.CP_PARAM.PARAM_CNNAME is
'参数中文名称，如邮件服务机IP地址';

comment on column TEST1.CP_PARAM.PARAM_ENNAME is
'参数英文名称，如EMAIL_IP';

comment on column TEST1.CP_PARAM.PARAM_VALUE is
'参数值，如邮件服务机IP配置为124.32.45.32';

comment on column TEST1.CP_PARAM.READ_FLAG is
'0：不可编辑
1：可编辑';

comment on column TEST1.CP_PARAM.DESCRIPTION is
'描述';

/*==============================================================*/
/* Table: CP_PERSON                                             */
/*==============================================================*/
create table TEST1.CP_PERSON 
(
   USER_NO              VARCHAR2(32)         not null,
   NAME                 VARCHAR2(60),
   GENDER               CHAR,
   IDENT_TYPE           CHAR,
   IDENT_NO             VARCHAR2(32),
   TRADE_CODE           CHAR(5),
   AGE                  NUMBER,
   MARRI_STATUS         CHAR,
   URGENT_PERSON        VARCHAR2(60),
   URGENT_TEL           VARCHAR2(16),
   ADDRESS              VARCHAR2(150),
   COMPANY              VARCHAR2(100),
   WORK_PROVINCE        VARCHAR2(32),
   WORK_CITY            VARCHAR2(32),
   WORK_YEAR            CHAR,
   POSITION             VARCHAR2(32),
   INCOME_SCOPE         CHAR,
   HEAD_FILE            VARCHAR2(100),
   ENT_NO               VARCHAR2(32),
   INFO_PROCESS         NUMBER(3,2)          default 0,
   ADMIN_FLAG           CHAR,
   VIRTUAL_ACCT         VARCHAR2(32),
   ABC_FLAG             CHAR,
   AU_LEVEL             NUMBER               default 0 not null,
   USER_GRADE           CHAR,
   INFO_STATUS          CHAR                 default '1' not null,
   RECHECK_FLAG         CHAR,
   EDUCATION            CHAR,
   SCHOOL               VARCHAR2(60),
   CIF_NO               VARCHAR2(32),
   PAY_UPDATE_FLAG      CHAR,
   HEAD_THUMBNAIL       VARCHAR2(100),
   SCHEDULE_AU_STATUS   CHAR,
   SCHEDULE_AU_RESULT   VARCHAR2(150),
   NICK_NAME            VARCHAR2(60),------2014010
   constraint PK_CP_PERSON primary key (USER_NO)
);

comment on table TEST1.CP_PERSON is
'存放个人的基本信息。';

comment on column TEST1.CP_PERSON.USER_NO is
'系统自动生成的编码，其他表关联使用的编码';

comment on column TEST1.CP_PERSON.NAME is
'姓名';

comment on column TEST1.CP_PERSON.GENDER is
'放码表中
男、女';

comment on column TEST1.CP_PERSON.IDENT_TYPE is
'放码表中
0.身份证
2.护照';

comment on column TEST1.CP_PERSON.IDENT_NO is
'证件号码';

comment on column TEST1.CP_PERSON.TRADE_CODE is
'来自行业表';

comment on column TEST1.CP_PERSON.AGE is
'年龄';

comment on column TEST1.CP_PERSON.MARRI_STATUS is
'来自码表。
1.已婚
2.未婚
3.离异';

comment on column TEST1.CP_PERSON.URGENT_PERSON is
'紧急联系人';

comment on column TEST1.CP_PERSON.URGENT_TEL is
'紧急联系方式';

comment on column TEST1.CP_PERSON.ADDRESS is
'联系地址';

comment on column TEST1.CP_PERSON.COMPANY is
'公司名称';

comment on column TEST1.CP_PERSON.WORK_PROVINCE is
'来自区域表';

comment on column TEST1.CP_PERSON.WORK_CITY is
'来自区域表';

comment on column TEST1.CP_PERSON.WORK_YEAR is
'来自码表';

comment on column TEST1.CP_PERSON.POSITION is
'职位';

comment on column TEST1.CP_PERSON.INCOME_SCOPE is
'放码表中
如0-10万/10-20万';

comment on column TEST1.CP_PERSON.HEAD_FILE is
'用户头像文件路径';

comment on column TEST1.CP_PERSON.ENT_NO is
'所属企业编码';

comment on column TEST1.CP_PERSON.INFO_PROCESS is
'如0.75,表示完成了75%';

comment on column TEST1.CP_PERSON.ADMIN_FLAG is
'冗余字段，是否是企业管理员。内部状态0: 不是1:是';

comment on column TEST1.CP_PERSON.VIRTUAL_ACCT is
'支付平台产生的虚拟账号';

comment on column TEST1.CP_PERSON.ABC_FLAG is
'放码表中
0：行外
1：行内';

comment on column TEST1.CP_PERSON.AU_LEVEL is
'AU_LEVEL';

comment on column TEST1.CP_PERSON.USER_GRADE is
'用户等级';

comment on column TEST1.CP_PERSON.INFO_STATUS is
'信息状态. 放码表中';

comment on column TEST1.CP_PERSON.RECHECK_FLAG is
'是否需要复核。放码表中';

comment on column TEST1.CP_PERSON.EDUCATION is
'码表中，对应USER_EDUCATION';

comment on column TEST1.CP_PERSON.SCHOOL is
'学校';

comment on column TEST1.CP_PERSON.CIF_NO is
'CIF客户号';

comment on column TEST1.CP_PERSON.PAY_UPDATE_FLAG is
'CIF客户号支付平台更新标志 0:支付没有更新  1：支付有更新';

comment on column TEST1.CP_PERSON.HEAD_THUMBNAIL is
'HEAD_THUMBNAIL';

comment on column TEST1.CP_PERSON.SCHEDULE_AU_STATUS is
'SCHEDULE_AU_STATUS';

comment on column TEST1.CP_PERSON.SCHEDULE_AU_RESULT is
'SCHEDULE_AU_RESULT';

/*==============================================================*/
/* Table: CP_RECHECK_FLOW                                       */
/*==============================================================*/
create table TEST1.CP_RECHECK_FLOW 
(
   RECHECK_FLOW_NO      VARCHAR2(20)         not null,
   TASK_NO              VARCHAR2(32)         not null,
   RECHECK_USER_NO      VARCHAR2(32),
   RECHECK_OPINION      VARCHAR2(600),
   RECHECK_TIME         CHAR(17),
   RECHECK_NO           VARCHAR2(32)         not null,
   constraint PK_CP_RECHECK_FLOW primary key (RECHECK_FLOW_NO)
);

comment on table TEST1.CP_RECHECK_FLOW is
'CP_RECHECK_FLOW';

comment on column TEST1.CP_RECHECK_FLOW.RECHECK_FLOW_NO is
'RECHECK_FLOW_NO';

comment on column TEST1.CP_RECHECK_FLOW.TASK_NO is
'TASK_NO';

comment on column TEST1.CP_RECHECK_FLOW.RECHECK_USER_NO is
'RECHECK_USER_NO';

comment on column TEST1.CP_RECHECK_FLOW.RECHECK_OPINION is
'RECHECK_OPINION';

comment on column TEST1.CP_RECHECK_FLOW.RECHECK_TIME is
'RECHECK_TIME';

comment on column TEST1.CP_RECHECK_FLOW.RECHECK_NO is
'RECHECK_NO';

/*==============================================================*/
/* Table: CP_ROLE                                               */
/*==============================================================*/
create table TEST1.CP_ROLE 
(
   ROLE_CODE            VARCHAR2(10)         not null,
   ROLE_NAME            VARCHAR2(60)         not null,
   ORG_CODE             VARCHAR2(10)         not null,
   ROLE_TYPE            CHAR                 default '1' not null,
   constraint PK_CP_ROLE primary key (ROLE_CODE)
);

comment on table TEST1.CP_ROLE is
'CP_ROLE';

comment on column TEST1.CP_ROLE.ROLE_CODE is
'ROLE_CODE';

comment on column TEST1.CP_ROLE.ROLE_NAME is
'ROLE_NAME';

comment on column TEST1.CP_ROLE.ORG_CODE is
'ORG_CODE';

comment on column TEST1.CP_ROLE.ROLE_TYPE is
'ROLE_TYPE';

/*==============================================================*/
/* Table: CP_ROLE_OPER_REL                                      */
/*==============================================================*/
create table TEST1.CP_ROLE_OPER_REL 
(
   REC_NO               VARCHAR2(32)         not null,
   ROLE_CODE            VARCHAR2(10)         not null,
   OPER_CODE            VARCHAR2(10)         not null,
   constraint PK_CP_ROLE_OPER_REL primary key (REC_NO)
);

comment on table TEST1.CP_ROLE_OPER_REL is
'CP_ROLE_OPER_REL';

comment on column TEST1.CP_ROLE_OPER_REL.REC_NO is
'REC_NO';

comment on column TEST1.CP_ROLE_OPER_REL.ROLE_CODE is
'ROLE_CODE';

comment on column TEST1.CP_ROLE_OPER_REL.OPER_CODE is
'OPER_CODE';

/*==============================================================*/
/* Table: CP_ROLE_TRANS_REL                                     */
/*==============================================================*/
create table TEST1.CP_ROLE_TRANS_REL 
(
   REC_NO               VARCHAR2(32)         not null,
   ROLE_CODE            VARCHAR2(10)         not null,
   TRANS_CODE           VARCHAR2(10)         not null,
   constraint PK_CP_ROLE_TRANS_REL primary key (REC_NO)
);

comment on table TEST1.CP_ROLE_TRANS_REL is
'CP_ROLE_TRANS_REL';

comment on column TEST1.CP_ROLE_TRANS_REL.REC_NO is
'REC_NO';

comment on column TEST1.CP_ROLE_TRANS_REL.ROLE_CODE is
'ROLE_CODE';

comment on column TEST1.CP_ROLE_TRANS_REL.TRANS_CODE is
'TRANS_CODE';

/*==============================================================*/
/* Table: CP_SERIAL_TEMPLATE                                    */
/*==============================================================*/
create table TEST1.CP_SERIAL_TEMPLATE 
(
   TEMPLATE_CODE        VARCHAR2(32)         not null,
   TEMPLATE             VARCHAR2(100)        not null,
   DESCRIPTION          VARCHAR2(150),
   CACHED_COUNT         NUMBER               not null,
   COUNTER              NUMBER               not null,
   constraint CP_SERIAL_TEMPLATE_PK primary key (TEMPLATE_CODE)
);

comment on table TEST1.CP_SERIAL_TEMPLATE is
'CP_SERIAL_TEMPLATE';

comment on column TEST1.CP_SERIAL_TEMPLATE.TEMPLATE_CODE is
'模板代码';

comment on column TEST1.CP_SERIAL_TEMPLATE.TEMPLATE is
'模板内容,如[ABC,C3](SERIAL,C8)';

comment on column TEST1.CP_SERIAL_TEMPLATE.DESCRIPTION is
'描述';

comment on column TEST1.CP_SERIAL_TEMPLATE.CACHED_COUNT is
'缓存数量';

comment on column TEST1.CP_SERIAL_TEMPLATE.COUNTER is
'产生的号';

/*==============================================================*/
/* Table: CP_SIGN_FIELD_INFO                                    */
/*==============================================================*/
create table TEST1.CP_SIGN_FIELD_INFO 
(
   REC_NO               VARCHAR2(32)         not null,
   FORM_CODE            VARCHAR2(10)         not null,
   FIELD_CNNAME         VARCHAR2(32)         not null,
   FIELD_ENNAME         VARCHAR2(32)         not null,
   SIGN_FLAG            CHAR                 not null,
   DISP_FLAG            CHAR                 not null,
   INDEX_NO             NUMBER               not null,
   constraint PK_CP_SIGN_FIELD_INFO primary key (REC_NO)
);

comment on table TEST1.CP_SIGN_FIELD_INFO is
'存放表单中需要签名的字段信息表';

comment on column TEST1.CP_SIGN_FIELD_INFO.REC_NO is
'无业务意义的编码';

comment on column TEST1.CP_SIGN_FIELD_INFO.FORM_CODE is
'表单代码';

comment on column TEST1.CP_SIGN_FIELD_INFO.FIELD_CNNAME is
'字段中文名，如姓名';

comment on column TEST1.CP_SIGN_FIELD_INFO.FIELD_ENNAME is
'字段英文名，如name';

comment on column TEST1.CP_SIGN_FIELD_INFO.SIGN_FLAG is
'放码表中.
0:不签名
1:签名';

comment on column TEST1.CP_SIGN_FIELD_INFO.DISP_FLAG is
'放码表中.
0:不显示
1.显示';

comment on column TEST1.CP_SIGN_FIELD_INFO.INDEX_NO is
'签名顺序号';

/*==============================================================*/
/* Table: CP_SIGN_FORM_INFO                                     */
/*==============================================================*/
create table TEST1.CP_SIGN_FORM_INFO 
(
   FORM_CODE            VARCHAR2(10)         not null,
   FORM_NAME            VARCHAR2(100)        not null,
   PRODUCT_CODE         CHAR(2)              not null,
   SIGN_FLAG            CHAR                 not null,
   constraint PK_CP_SIGN_FORM_INFO primary key (FORM_CODE)
);

comment on table TEST1.CP_SIGN_FORM_INFO is
'存放需要数据签名的表单信息';

comment on column TEST1.CP_SIGN_FORM_INFO.FORM_CODE is
'表单代码';

comment on column TEST1.CP_SIGN_FORM_INFO.FORM_NAME is
'表单名称';

comment on column TEST1.CP_SIGN_FORM_INFO.PRODUCT_CODE is
'来自码表
融资:LB
理财:WI 
贷款:LN
支付:EP
网购:OL
看板:WB
公共:CP';

comment on column TEST1.CP_SIGN_FORM_INFO.SIGN_FLAG is
'放码表中.
0:不签名
1:签名';

/*==============================================================*/
/* Table: CP_SMS_TASK                                           */
/*==============================================================*/
create table TEST1.CP_SMS_TASK 
(
   ID                   VARCHAR2(36)         not null,
   TEMPLATE_CODE        VARCHAR2(36),
   CUSTOMER_NAME        VARCHAR2(100),
   MOBILE_MSG           VARCHAR2(500),
   STATUS               VARCHAR2(2),
   INFO                 VARCHAR2(100),
   GROUP_ID             VARCHAR2(36),
   MODIFIED_TS          TIMESTAMP,
   MOBILE_NO            VARCHAR2(20),
   constraint CP_SMS_TASK_PK primary key (ID)
);

comment on table TEST1.CP_SMS_TASK is
'CP_SMS_TASK';

comment on column TEST1.CP_SMS_TASK.ID is
'ID';

comment on column TEST1.CP_SMS_TASK.TEMPLATE_CODE is
'TEMPLATE_CODE';

comment on column TEST1.CP_SMS_TASK.CUSTOMER_NAME is
'CUSTOMER_NAME';

comment on column TEST1.CP_SMS_TASK.MOBILE_MSG is
'MOBILE_MSG';

comment on column TEST1.CP_SMS_TASK.STATUS is
'STATUS';

comment on column TEST1.CP_SMS_TASK.INFO is
'INFO';

comment on column TEST1.CP_SMS_TASK.GROUP_ID is
'GROUP_ID';

comment on column TEST1.CP_SMS_TASK.MODIFIED_TS is
'MODIFIED_TS';

comment on column TEST1.CP_SMS_TASK.MOBILE_NO is
'MOBILE_NO';

/*==============================================================*/
/* Table: CP_SMS_TEMPLATE                                       */
/*==============================================================*/
create table TEST1.CP_SMS_TEMPLATE 
(
   TEMPLATE_CODE        VARCHAR2(36)         not null,
   TEMPLATE             VARCHAR2(500),
   DESCRIPTION          VARCHAR2(100),
   constraint PK_CP_SMS_TEMPLATE primary key (TEMPLATE_CODE)
);

comment on table TEST1.CP_SMS_TEMPLATE is
'CP_SMS_TEMPLATE';

comment on column TEST1.CP_SMS_TEMPLATE.TEMPLATE_CODE is
'TEMPLATE_CODE';

comment on column TEST1.CP_SMS_TEMPLATE.TEMPLATE is
'TEMPLATE';

comment on column TEST1.CP_SMS_TEMPLATE.DESCRIPTION is
'DESCRIPTION';

/*==============================================================*/
/* Table: CP_STAFF                                              */
/*==============================================================*/
create table TEST1.CP_STAFF 
(
   STAFF_NO             VARCHAR2(32)         not null,
   ORG_CODE             VARCHAR2(10)         not null,
   NAME                 VARCHAR2(60)         not null,
   IDENT_NO             VARCHAR2(18)         not null,
   PWD                  VARCHAR2(64)         not null,
   SALT                 VARCHAR2(16)         not null,
   TEL                  VARCHAR2(16),
   EMAIL                VARCHAR2(64),
   STAFF_TYPE           CHAR                 default '2' not null,
   C3_ORG_NO            VARCHAR2(32),
   STAFF_STATUS         CHAR                 default '1' not null,
   CREATE_DATE          CHAR(8)              not null,
   C3_ORG_NAME          VARCHAR2(90),
   constraint PK_CP_STAFF primary key (STAFF_NO)
);

comment on table TEST1.CP_STAFF is
'CP_STAFF';

comment on column TEST1.CP_STAFF.STAFF_NO is
'STAFF_NO';

comment on column TEST1.CP_STAFF.ORG_CODE is
'ORG_CODE';

comment on column TEST1.CP_STAFF.NAME is
'NAME';

comment on column TEST1.CP_STAFF.IDENT_NO is
'IDENT_NO';

comment on column TEST1.CP_STAFF.PWD is
'PWD';

comment on column TEST1.CP_STAFF.SALT is
'SALT';

comment on column TEST1.CP_STAFF.TEL is
'TEL';

comment on column TEST1.CP_STAFF.EMAIL is
'EMAIL';

comment on column TEST1.CP_STAFF.STAFF_TYPE is
'STAFF_TYPE';

comment on column TEST1.CP_STAFF.C3_ORG_NO is
'C3_ORG_NO';

comment on column TEST1.CP_STAFF.STAFF_STATUS is
'STAFF_STATUS';

comment on column TEST1.CP_STAFF.CREATE_DATE is
'CREATE_DATE';

comment on column TEST1.CP_STAFF.C3_ORG_NAME is
'C3中组织名称';

/*==============================================================*/
/* Table: CP_STAFF_OPER                                         */
/*==============================================================*/
create table TEST1.CP_STAFF_OPER 
(
   OPER_CODE            VARCHAR2(10)         not null,
   OPER_NAME            VARCHAR2(60)         not null,
   METHOD               VARCHAR2(32),
   TRANS_CODE           VARCHAR2(10)         not null,
   OPER_STATUS          CHAR                 default '1' not null,
   constraint PK_CP_STAFF_OPER primary key (OPER_CODE)
);

comment on table TEST1.CP_STAFF_OPER is
'CP_STAFF_OPER';

comment on column TEST1.CP_STAFF_OPER.OPER_CODE is
'OPER_CODE';

comment on column TEST1.CP_STAFF_OPER.OPER_NAME is
'OPER_NAME';

comment on column TEST1.CP_STAFF_OPER.METHOD is
'METHOD';

comment on column TEST1.CP_STAFF_OPER.TRANS_CODE is
'TRANS_CODE';

comment on column TEST1.CP_STAFF_OPER.OPER_STATUS is
'OPER_STATUS';

/*==============================================================*/
/* Table: CP_STAFF_ROLE_REL                                     */
/*==============================================================*/
create table TEST1.CP_STAFF_ROLE_REL 
(
   REC_NO               VARCHAR2(32)         not null,
   ROLE_CODE            VARCHAR2(32)         not null,
   STAFF_NO             VARCHAR2(32)         not null,
   constraint PK_CP_STAFF_ROLE_REL primary key (REC_NO)
);

comment on table TEST1.CP_STAFF_ROLE_REL is
'CP_STAFF_ROLE_REL';

comment on column TEST1.CP_STAFF_ROLE_REL.REC_NO is
'REC_NO';

comment on column TEST1.CP_STAFF_ROLE_REL.ROLE_CODE is
'ROLE_CODE';

comment on column TEST1.CP_STAFF_ROLE_REL.STAFF_NO is
'STAFF_NO';

/*==============================================================*/
/* Table: CP_TRADE                                              */
/*==============================================================*/
create table TEST1.CP_TRADE 
(
   TRADE_CODE           CHAR(5)              not null,
   TRADE_NAME           VARCHAR2(100)        not null,
   constraint PK_CP_TRADE primary key (TRADE_CODE)
);

comment on table TEST1.CP_TRADE is
'CP_TRADE';

comment on column TEST1.CP_TRADE.TRADE_CODE is
'TRADE_CODE';

comment on column TEST1.CP_TRADE.TRADE_NAME is
'TRADE_NAME';

/*==============================================================*/
/* Table: CP_TRANLOGXML                                         */
/*==============================================================*/
create table TEST1.CP_TRANLOGXML 
(
   TLX_SEQNO            VARCHAR2(50)         not null,
   TLX_TRNCOD           VARCHAR2(50)         not null,
   TLX_SEND             CLOB                 default NULL,
   TLX_RECV             CLOB                 default NULL,
   TLX_DATE             DATE                 default SYSDATE
);

comment on table TEST1.CP_TRANLOGXML is
'CP_TRANLOGXML';

comment on column TEST1.CP_TRANLOGXML.TLX_SEQNO is
'TLX_SEQNO';

comment on column TEST1.CP_TRANLOGXML.TLX_TRNCOD is
'TLX_TRNCOD';

comment on column TEST1.CP_TRANLOGXML.TLX_SEND is
'TLX_SEND';

comment on column TEST1.CP_TRANLOGXML.TLX_RECV is
'TLX_RECV';

comment on column TEST1.CP_TRANLOGXML.TLX_DATE is
'TLX_DATE';

/*==============================================================*/
/* Table: CP_TRANS                                              */
/*==============================================================*/
create table TEST1.CP_TRANS 
(
   TRANS_CODE           VARCHAR2(10)         not null,
   TRANS_NAME           VARCHAR2(60)         not null,
   URL                  VARCHAR2(500),
   TRANS_STATUS         CHAR                 default '1' not null,
   VALIDATE_FLAG        CHAR                 default '1' not null,
   MODULE_CODE          VARCHAR2(10)         not null,
   constraint PK_CP_TRANS primary key (TRANS_CODE)
);

comment on table TEST1.CP_TRANS is
'CP_TRANS';

comment on column TEST1.CP_TRANS.TRANS_CODE is
'TRANS_CODE';

comment on column TEST1.CP_TRANS.TRANS_NAME is
'TRANS_NAME';

comment on column TEST1.CP_TRANS.URL is
'URL';

comment on column TEST1.CP_TRANS.TRANS_STATUS is
'TRANS_STATUS';

comment on column TEST1.CP_TRANS.VALIDATE_FLAG is
'VALIDATE_FLAG';

comment on column TEST1.CP_TRANS.MODULE_CODE is
'MODULE_CODE';

/*==============================================================*/
/* Table: CP_USER_ACCOUNT                                       */
/*==============================================================*/
create table TEST1.CP_USER_ACCOUNT 
(
   USER_NO              VARCHAR2(32)         not null,
   USER_NAME            VARCHAR2(32),
   MOBILE               VARCHAR2(16)         not null,
   EMAIL                VARCHAR2(64),
   PWD                  VARCHAR2(64)         not null,
   SALT                 VARCHAR2(16)         not null,
   PWD_LEVEL            CHAR                 default '1' not null,
   ENABLED              CHAR                 default '1' not null,
   INTEREST             VARCHAR2(10),
   REGISTER_TIME        CHAR(17)             not null,
   PWD_FAIL_NUM         NUMBER,
   LOCK_TIME            CHAR(17),
   READ_FLAG            CHAR(10)             default '0000000000',
   constraint PK_CP_USER_ACCOUNT primary key (USER_NO)
);

comment on table TEST1.CP_USER_ACCOUNT is
'CP_USER_ACCOUNT';

comment on column TEST1.CP_USER_ACCOUNT.USER_NO is
'用户编码';

comment on column TEST1.CP_USER_ACCOUNT.USER_NAME is
'用户名';

comment on column TEST1.CP_USER_ACCOUNT.MOBILE is
'手机号码';

comment on column TEST1.CP_USER_ACCOUNT.EMAIL is
'邮箱';

comment on column TEST1.CP_USER_ACCOUNT.PWD is
'加密后的登录密码';

comment on column TEST1.CP_USER_ACCOUNT.SALT is
'随机Salt值';

comment on column TEST1.CP_USER_ACCOUNT.PWD_LEVEL is
'密码安全等级，放码表中';

comment on column TEST1.CP_USER_ACCOUNT.ENABLED is
'0:未激活 1:正常  2:锁定 3.删除';

comment on column TEST1.CP_USER_ACCOUNT.INTEREST is
'用户最感兴趣的产品，可以为空，也可以有多个。';

comment on column TEST1.CP_USER_ACCOUNT.REGISTER_TIME is
'注册时间';

comment on column TEST1.CP_USER_ACCOUNT.PWD_FAIL_NUM is
'密码错误次数';

comment on column TEST1.CP_USER_ACCOUNT.LOCK_TIME is
'锁定时间';

comment on column TEST1.CP_USER_ACCOUNT.READ_FLAG is
'READ_FLAG';

/*==============================================================*/
/* Table: CP_USER_FILE                                          */
/*==============================================================*/
create table TEST1.CP_USER_FILE 
(
   FILE_NO              VARCHAR2(32)         not null,
   USER_NO              VARCHAR2(32),
   ENT_NO               VARCHAR2(32),
   FILE_TYPE            CHAR(2)              not null,
   FILE_PATH            VARCHAR2(100)        not null,
   FILE_NAME            VARCHAR2(100)        not null,
   DESCRIPTION          VARCHAR2(300),
   UPLOAD_TIME          CHAR(17)             not null,
   FILE_STATUS          CHAR                 default '0' not null,
   DELETE_STATUS        CHAR                 default '0' not null,
   FILE_YEAR            CHAR(8),
   THUMBNAIL_PATH       VARCHAR2(100),
   constraint PK_CP_USER_FILE primary key (FILE_NO)
);

comment on table TEST1.CP_USER_FILE is
'CP_USER_FILE';

comment on column TEST1.CP_USER_FILE.FILE_NO is
'FILE_NO';

comment on column TEST1.CP_USER_FILE.USER_NO is
'USER_NO';

comment on column TEST1.CP_USER_FILE.ENT_NO is
'ENT_NO';

comment on column TEST1.CP_USER_FILE.FILE_TYPE is
'FILE_TYPE';

comment on column TEST1.CP_USER_FILE.FILE_PATH is
'FILE_PATH';

comment on column TEST1.CP_USER_FILE.FILE_NAME is
'FILE_NAME';

comment on column TEST1.CP_USER_FILE.DESCRIPTION is
'DESCRIPTION';

comment on column TEST1.CP_USER_FILE.UPLOAD_TIME is
'UPLOAD_TIME';

comment on column TEST1.CP_USER_FILE.FILE_STATUS is
'FILE_STATUS';

comment on column TEST1.CP_USER_FILE.DELETE_STATUS is
'DELETE_STATUS';

comment on column TEST1.CP_USER_FILE.FILE_YEAR is
'FILE_YEAR';

comment on column TEST1.CP_USER_FILE.THUMBNAIL_PATH is
'THUMBNAIL_PATH';

/*==============================================================*/
/* Table: CP_USER_FILE_APPROVE                                  */
/*==============================================================*/
create table TEST1.CP_USER_FILE_APPROVE 
(
   REC_NO               VARCHAR2(32)         not null,
   USER_NO              VARCHAR2(32),
   ENT_NO               VARCHAR2(32),
   APPROVE_RESULT       CHAR                 not null,
   APPROVE_OPINION      VARCHAR2(300),
   APPROVE_STAFF        VARCHAR2(32)         not null,
   APPROVE_TIME         CHAR(17)             not null,
   ENT_FILE_TYPE        CHAR                 default 'E',
   APPROVE_FILELIST     VARCHAR2(200),
   constraint PK_CP_USER_FILE_APPROVE primary key (REC_NO)
);

comment on table TEST1.CP_USER_FILE_APPROVE is
'CP_USER_FILE_APPROVE';

comment on column TEST1.CP_USER_FILE_APPROVE.REC_NO is
'记录编码';

comment on column TEST1.CP_USER_FILE_APPROVE.USER_NO is
'个人编码';

comment on column TEST1.CP_USER_FILE_APPROVE.ENT_NO is
'企业编码';

comment on column TEST1.CP_USER_FILE_APPROVE.APPROVE_RESULT is
'审核结果';

comment on column TEST1.CP_USER_FILE_APPROVE.APPROVE_OPINION is
'本批审核结果。放码表中
3.审核未通过
4.审核通过';

comment on column TEST1.CP_USER_FILE_APPROVE.APPROVE_STAFF is
'审核人编码';

comment on column TEST1.CP_USER_FILE_APPROVE.APPROVE_TIME is
'审核时间';

comment on column TEST1.CP_USER_FILE_APPROVE.ENT_FILE_TYPE is
'内部状态控制.
E : 经营信息
L：贷款信息';

comment on column TEST1.CP_USER_FILE_APPROVE.APPROVE_FILELIST is
'APPROVE_FILELIST';
/*==============================================================*/
/* Table: CP_WEB_AUDIT_LOG                                      */
/*==============================================================*/
create table TEST1.CP_WEB_AUDIT_LOG 
(
   REC_NO               VARCHAR2(32)         not null,
   OPER_CODE            VARCHAR2(10)         not null,
   OPER_NAME            VARCHAR2(32)         not null,
   IP_ADDRESS           VARCHAR2(16),
   OPER_TIME            CHAR(17)             not null,
   OPER_DESC            VARCHAR2(128),
   OPERATOR_NO          VARCHAR2(32)         not null,
   OPERATOR_NAME        VARCHAR2(64)         not null,
   USER_BROWSER         VARCHAR2(64)         not null,
   USER_OS              VARCHAR2(32)         not null,
   USER_SESSIONID       VARCHAR2(32)         not null,
   constraint PK_CP_WEB_AUDIT_LOG primary key (REC_NO)
);

comment on table TEST1.CP_WEB_AUDIT_LOG is
'CP_WEB_AUDIT_LOG';

comment on column TEST1.CP_WEB_AUDIT_LOG.REC_NO is
'无业务意义的编码';

comment on column TEST1.CP_WEB_AUDIT_LOG.OPER_CODE is
'操作代码';

comment on column TEST1.CP_WEB_AUDIT_LOG.OPER_NAME is
'操作名称';

comment on column TEST1.CP_WEB_AUDIT_LOG.IP_ADDRESS is
'IP地址';

comment on column TEST1.CP_WEB_AUDIT_LOG.OPER_TIME is
'操作时间';

comment on column TEST1.CP_WEB_AUDIT_LOG.OPER_DESC is
'操作描述';

comment on column TEST1.CP_WEB_AUDIT_LOG.OPERATOR_NO is
'操作人编码';

comment on column TEST1.CP_WEB_AUDIT_LOG.OPERATOR_NAME is
'操作人姓名';

comment on column TEST1.CP_WEB_AUDIT_LOG.USER_BROWSER is
'浏览器名称';

comment on column TEST1.CP_WEB_AUDIT_LOG.USER_OS is
'客户端操作系统';

comment on column TEST1.CP_WEB_AUDIT_LOG.USER_SESSIONID is
'当前SessionId';

/*==============================================================*/
/* Table: CP_WEB_GROUP                                          */
/*==============================================================*/
create table TEST1.CP_WEB_GROUP 
(
   GROUP_NO             VARCHAR2(32)         not null,
   GROUP_NAME           VARCHAR2(60)         not null,
   REMARK               VARCHAR2(300),
   GROUP_STATE          CHAR                 not null,
   GROUP_TYPE           CHAR,
   ROLE                 VARCHAR2(64),
   ROLE_VALUE           VARCHAR2(256),
   PARENTID             VARCHAR2(32),
   POSITION_CODE        VARCHAR2(32)         not null,
   POSITION_NAME        VARCHAR2(32)         not null,
   constraint PK_CP_WEB_GROUP primary key (GROUP_NO)
);

comment on table TEST1.CP_WEB_GROUP is
'CP_WEB_GROUP';

comment on column TEST1.CP_WEB_GROUP.GROUP_NO is
'组代码';

comment on column TEST1.CP_WEB_GROUP.GROUP_NAME is
'组名称';

comment on column TEST1.CP_WEB_GROUP.REMARK is
'备注';

comment on column TEST1.CP_WEB_GROUP.GROUP_STATE is
'放码表中  0：停用 1：启用';

comment on column TEST1.CP_WEB_GROUP.GROUP_TYPE is
'组类别。对应码表BG_FLAG 0.圈外企业 1:圈内企业 个人的组，此字段为空';

comment on column TEST1.CP_WEB_GROUP.ROLE is
'权限字符串';

comment on column TEST1.CP_WEB_GROUP.ROLE_VALUE is
'定义链接';

comment on column TEST1.CP_WEB_GROUP.PARENTID is
'上级编码';

comment on column TEST1.CP_WEB_GROUP.POSITION_CODE is
'岗位代码';

comment on column TEST1.CP_WEB_GROUP.POSITION_NAME is
'岗位名称';

/*==============================================================*/
/* Table: CP_WEB_LOGIN_LOG                                      */
/*==============================================================*/
create table TEST1.CP_WEB_LOGIN_LOG 
(
   REC_NO               VARCHAR2(32)         not null,
   USER_NO              VARCHAR2(32)         not null,
   IP_ADDRESS           VARCHAR2(16)         not null,
   BROWSER              VARCHAR2(32),
   OS                   VARCHAR2(32),
   LOGIN_TIME           CHAR(17)             not null,
   LOGIN_DESC           VARCHAR2(100),
   SESSION_ID           VARCHAR2(32)         not null,
   K_TYPE               CHAR(5),
   CERT_NO              VARCHAR2(256),
   LOGIN_NAME           VARCHAR2(64),
   constraint PK_CP_WEB_LOGIN_LOG primary key (REC_NO)
);

comment on table TEST1.CP_WEB_LOGIN_LOG is
'存放用户的登录日志信息。';

comment on column TEST1.CP_WEB_LOGIN_LOG.REC_NO is
'记录编码';

comment on column TEST1.CP_WEB_LOGIN_LOG.USER_NO is
'系统自动生成的编码，无业务意义';

comment on column TEST1.CP_WEB_LOGIN_LOG.IP_ADDRESS is
'IP地址';

comment on column TEST1.CP_WEB_LOGIN_LOG.BROWSER is
'浏览器名称';

comment on column TEST1.CP_WEB_LOGIN_LOG.OS is
'客户端操作系统';

comment on column TEST1.CP_WEB_LOGIN_LOG.LOGIN_TIME is
'登录时间';

comment on column TEST1.CP_WEB_LOGIN_LOG.LOGIN_DESC is
'LOGIN_DESC';

comment on column TEST1.CP_WEB_LOGIN_LOG.SESSION_ID is
'本次登录SessionID';

comment on column TEST1.CP_WEB_LOGIN_LOG.K_TYPE is
'1:一代K宝, 2:二代K宝';

comment on column TEST1.CP_WEB_LOGIN_LOG.CERT_NO is
'K宝证书号';

comment on column TEST1.CP_WEB_LOGIN_LOG.LOGIN_NAME is
'LOGIN_NAME';

/*==============================================================*/
/* Table: CP_WEB_RESOURCE                                       */
/*==============================================================*/
create table TEST1.CP_WEB_RESOURCE 
(
   RES_NO               VARCHAR2(32)         not null,
   RES_NAME             VARCHAR2(60)         not null,
   PERMISSION           VARCHAR2(64),
   REMARK               VARCHAR2(300),
   SORT                 NUMBER               not null,
   RES_TYPE             VARCHAR2(2)          not null,
   URL                  VARCHAR2(256),
   ICON                 VARCHAR2(32),
   PARENTID             VARCHAR2(32),
   constraint PK_CP_WEB_RESOURCE primary key (RES_NO)
);

comment on table TEST1.CP_WEB_RESOURCE is
'CP_WEB_RESOURCE';

comment on column TEST1.CP_WEB_RESOURCE.RES_NO is
'无业务意义的编码';

comment on column TEST1.CP_WEB_RESOURCE.RES_NAME is
'资源名称';

comment on column TEST1.CP_WEB_RESOURCE.PERMISSION is
'权限字符';

comment on column TEST1.CP_WEB_RESOURCE.REMARK is
'备注';

comment on column TEST1.CP_WEB_RESOURCE.SORT is
'排序号';

comment on column TEST1.CP_WEB_RESOURCE.RES_TYPE is
'01 菜单类型，该类型为用户可以见的02 安全类型，该类型为shiro拦截的并且用户不可见的';

comment on column TEST1.CP_WEB_RESOURCE.URL is
'资源路径';

comment on column TEST1.CP_WEB_RESOURCE.ICON is
'图标路径';

comment on column TEST1.CP_WEB_RESOURCE.PARENTID is
'上级编码';

/*==============================================================*/
/* Table: CP_WEB_TRANS                                          */
/*==============================================================*/
create table TEST1.CP_WEB_TRANS 
(
   TRANS_CODE           VARCHAR2(10)         not null,
   TRANS_NAME           VARCHAR2(60)         not null,
   PRODUCT_CODE         CHAR(2)              not null,
   MODULE_NAME          VARCHAR2(60)         not null,
   RECHECK_LEVEL        NUMBER,
   RECHECK_DETAIL_PAGE  VARCHAR2(150),
   RECHECK_HANDLE_PAGE  VARCHAR2(150),
   constraint PK_CP_WEB_TRANS primary key (TRANS_CODE)
);

comment on table TEST1.CP_WEB_TRANS is
'设置交易上的各种参数';

comment on column TEST1.CP_WEB_TRANS.TRANS_CODE is
'交易代码';

comment on column TEST1.CP_WEB_TRANS.TRANS_NAME is
'交易名称';

comment on column TEST1.CP_WEB_TRANS.PRODUCT_CODE is
'来自码表
融资:LB
理财:WI 
贷款:LN
支付:EP
网购:OL
看板:WB
公共:CP';

comment on column TEST1.CP_WEB_TRANS.MODULE_NAME is
'模块名称';

comment on column TEST1.CP_WEB_TRANS.RECHECK_LEVEL is
'复核级别，1,2..';

comment on column TEST1.CP_WEB_TRANS.RECHECK_DETAIL_PAGE is
'复核详细信息页面，一个URL';

comment on column TEST1.CP_WEB_TRANS.RECHECK_HANDLE_PAGE is
'复核终检处理页面，一个URL';


/*==============================================================*/
/* Table: EP_ABIS_TRACE                                         */
/*==============================================================*/
create table TEST1.EP_ABIS_TRACE 
(
   USER_NO              VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_ACCT_NO        VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_MERCH_NO         VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   EXT_ACCT_NO          VARCHAR2(32),
   TRANS_CURR           VARCHAR2(3),
   TRANS_STAT           CHAR,
   TRANS_AMT            NUMBER(25,2),
   TRANS_FEE            NUMBER(25,2),
   ABIS_SEQ             VARCHAR2(32),
   LOG_NUMBER           VARCHAR2(32),
   SUMMONS_NUM          VARCHAR2(32),
   DC_FLAG              CHAR,
   RB_FLAG              CHAR,
   TRANS_NATURE         CHAR,
   BACKGROUND_DATE      VARCHAR2(8),
   RESP_CODE            VARCHAR2(8),
   RESP_MSG             VARCHAR2(192),
   REMARK               VARCHAR2(192),
   constraint PK_EP_ABIS_TRACE primary key (SYS_SEQ)
)
partition by range (TRANS_DATE)(
	partition PP201401 values less than ('20140201') tablespace P201401,
	partition PP201402 values less than ('20140301') tablespace P201402,
	partition PP201403 values less than ('20140401') tablespace P201403,
	partition PP201404 values less than ('20140501') tablespace P201404,
	partition PP201405 values less than ('20140601') tablespace P201405,
	partition PP201406 values less than ('20140701') tablespace P201406,
	partition PP201407 values less than ('20140801') tablespace P201407,
	partition PP201408 values less than ('20140901') tablespace P201408,
	partition PP201409 values less than ('20141001') tablespace P201409,
	partition PP201410 values less than ('20141101') tablespace P201410,
	partition PP201411 values less than ('20141201') tablespace P201411,
	partition PP201412 values less than ('99999999') tablespace P201412
);

comment on table TEST1.EP_ABIS_TRACE is
'ABIS渠道流水';

comment on column TEST1.EP_ABIS_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_ABIS_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_ABIS_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_ABIS_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_ABIS_TRACE.TRANS_ACCT_NO is
'交易帐号';

comment on column TEST1.EP_ABIS_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_ABIS_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_ABIS_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_ABIS_TRACE.SYS_MERCH_NO is
'商户编号';

comment on column TEST1.EP_ABIS_TRACE.MERCH_ORDERNO is
'商户订单号';

comment on column TEST1.EP_ABIS_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_ABIS_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_ABIS_TRACE.TRANS_STAT is
'订单状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_ABIS_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_ABIS_TRACE.TRANS_FEE is
'交易手续费';

comment on column TEST1.EP_ABIS_TRACE.ABIS_SEQ is
'ABIS流水号';

comment on column TEST1.EP_ABIS_TRACE.LOG_NUMBER is
'A系统日志号';

comment on column TEST1.EP_ABIS_TRACE.SUMMONS_NUM is
'A系统传票号';

comment on column TEST1.EP_ABIS_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_ABIS_TRACE.RB_FLAG is
'红蓝标志：R、红；B、蓝';

comment on column TEST1.EP_ABIS_TRACE.TRANS_NATURE is
'交易性质：1. 正常；2、抹账';

comment on column TEST1.EP_ABIS_TRACE.BACKGROUND_DATE is
'后台清算日期';

comment on column TEST1.EP_ABIS_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.EP_ABIS_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.EP_ABIS_TRACE.REMARK is
'备注信息';

/*==============================================================*/
/* Table: EP_ACCOUNT_TRACE                                      */
/*==============================================================*/
create table TEST1.EP_ACCOUNT_TRACE 
(
   ID                   VARCHAR2(32)         not null,
   ACCT_NO              VARCHAR2(32),
   SUBJECT_NO           VARCHAR2(10),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   SYS_SEQ              VARCHAR2(32),
   SET_DATE             VARCHAR2(8),
   TRANS_TYPE           VARCHAR2(6),
   DC_FLAG              CHAR,
   TRANS_CURR           VARCHAR2(3),
   TRANS_AMT            NUMBER(25,2),
   TRANS_FLAG           CHAR,
   REMARK               VARCHAR2(192),
   constraint PK_EP_ACCOUNT_TRACE primary key (ID)
)
partition by range (TRANS_DATE)(
	partition PP201401 values less than ('20140201') tablespace P201401,
	partition PP201402 values less than ('20140301') tablespace P201402,
	partition PP201403 values less than ('20140401') tablespace P201403,
	partition PP201404 values less than ('20140501') tablespace P201404,
	partition PP201405 values less than ('20140601') tablespace P201405,
	partition PP201406 values less than ('20140701') tablespace P201406,
	partition PP201407 values less than ('20140801') tablespace P201407,
	partition PP201408 values less than ('20140901') tablespace P201408,
	partition PP201409 values less than ('20141001') tablespace P201409,
	partition PP201410 values less than ('20141101') tablespace P201410,
	partition PP201411 values less than ('20141201') tablespace P201411,
	partition PP201412 values less than ('99999999') tablespace P201412
);

comment on table TEST1.EP_ACCOUNT_TRACE is
'会计账务流水表';

comment on column TEST1.EP_ACCOUNT_TRACE.ID is
'主键ID';

comment on column TEST1.EP_ACCOUNT_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_ACCOUNT_TRACE.SUBJECT_NO is
'贷方科目号';

comment on column TEST1.EP_ACCOUNT_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_ACCOUNT_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_ACCOUNT_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_ACCOUNT_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_ACCOUNT_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_ACCOUNT_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_ACCOUNT_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB(156)、EUR、USD';

comment on column TEST1.EP_ACCOUNT_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_ACCOUNT_TRACE.TRANS_FLAG is
'交易标志：1、正常；2、抹账';

comment on column TEST1.EP_ACCOUNT_TRACE.REMARK is
'备注';

/*==============================================================*/
/* Table: EP_ACCT_CHANGE_TRACE                                  */
/*==============================================================*/
create table TEST1.EP_ACCT_CHANGE_TRACE 
(
   USER_NO              VARCHAR2(32),
   ACCT_NO              VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_SEQ              VARCHAR2(32)         not null,
   MERCH_NO             VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   CHANGE_RESN          VARCHAR2(192),
   CREATE_TS            VARCHAR2(17),
   constraint PK_EP_ACCTCHG_TRACE primary key (SYS_SEQ)
);

comment on table TEST1.EP_ACCT_CHANGE_TRACE is
'账户变更流水';

comment on column TEST1.EP_ACCT_CHANGE_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_ACCT_CHANGE_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_ACCT_CHANGE_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_ACCT_CHANGE_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_ACCT_CHANGE_TRACE.TRANS_TYPE is
'交易种类';

comment on column TEST1.EP_ACCT_CHANGE_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_ACCT_CHANGE_TRACE.MERCH_NO is
'平台商户号';

comment on column TEST1.EP_ACCT_CHANGE_TRACE.MERCH_ORDERNO is
'订单号';

comment on column TEST1.EP_ACCT_CHANGE_TRACE.CHANGE_RESN is
'变更原因';

comment on column TEST1.EP_ACCT_CHANGE_TRACE.CREATE_TS is
'创建日期';

/*==============================================================*/
/* Table: EP_ACCT_FINGER_CODE                                   */
/*==============================================================*/
create table TEST1.EP_ACCT_FINGER_CODE 
(
   ACCT_NO              VARCHAR2(32)         not null,
   FINGERPRINT0         BLOB,
   FINGERPRINT1         BLOB,
   FINGERPRINT2         BLOB,
   FINGERPRINT3         BLOB,
   FINGERPRINT4         BLOB,
   FINGERPRINT5         BLOB,
   FINGERPRINT6         BLOB,
   FINGERPRINT7         BLOB,
   FINGERPRINT8         BLOB,
   FINGERPRINT9         BLOB,
   constraint PK_EP_ACCT_FINGER_CODE primary key (ACCT_NO)
);

comment on table TEST1.EP_ACCT_FINGER_CODE is
'账户指纹信息表';

comment on column TEST1.EP_ACCT_FINGER_CODE.ACCT_NO is
'账号';

comment on column TEST1.EP_ACCT_FINGER_CODE.FINGERPRINT0 is
'指纹0';

comment on column TEST1.EP_ACCT_FINGER_CODE.FINGERPRINT1 is
'指纹1';

comment on column TEST1.EP_ACCT_FINGER_CODE.FINGERPRINT2 is
'指纹2';

comment on column TEST1.EP_ACCT_FINGER_CODE.FINGERPRINT3 is
'指纹3';

comment on column TEST1.EP_ACCT_FINGER_CODE.FINGERPRINT4 is
'指纹4';

comment on column TEST1.EP_ACCT_FINGER_CODE.FINGERPRINT5 is
'指纹5';

comment on column TEST1.EP_ACCT_FINGER_CODE.FINGERPRINT6 is
'指纹6';

comment on column TEST1.EP_ACCT_FINGER_CODE.FINGERPRINT7 is
'指纹7';

comment on column TEST1.EP_ACCT_FINGER_CODE.FINGERPRINT8 is
'指纹8';

comment on column TEST1.EP_ACCT_FINGER_CODE.FINGERPRINT9 is
'指纹9';

/*==============================================================*/
/* Table: EP_ACCT_FORPAY                                        */
/*==============================================================*/
create table TEST1.EP_ACCT_FORPAY 
(
   ID                   VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   DC_FLAG              CHAR,
   TRANS_CURR           VARCHAR2(3),
   TRANS_AMT            NUMBER(25,2),
   SET_FLAG             CHAR,
   DEBIT_ACCT_NO        VARCHAR2(32),
   CREDIT_ACCT_NO       VARCHAR2(32),
   REMARK               VARCHAR2(192),
   constraint PK_EP_ACCT_FORPAY primary key (ID)
);

comment on table TEST1.EP_ACCT_FORPAY is
'应付账款表';

comment on column TEST1.EP_ACCT_FORPAY.ID is
'ID';

comment on column TEST1.EP_ACCT_FORPAY.SET_DATE is
'清算日期';

comment on column TEST1.EP_ACCT_FORPAY.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_ACCT_FORPAY.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_ACCT_FORPAY.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_ACCT_FORPAY.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_ACCT_FORPAY.TRANS_CURR is
'交易币种(RMB-156)：RMB(156)、EUR、USD';

comment on column TEST1.EP_ACCT_FORPAY.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_ACCT_FORPAY.SET_FLAG is
'清算标志：0、未清算；1、清算';

comment on column TEST1.EP_ACCT_FORPAY.DEBIT_ACCT_NO is
'借方账号';

comment on column TEST1.EP_ACCT_FORPAY.CREDIT_ACCT_NO is
'贷方帐号';

comment on column TEST1.EP_ACCT_FORPAY.REMARK is
'备注';

/*==============================================================*/
/* Table: EP_ACCT_FORPAY_TRACE                                  */
/*==============================================================*/
create table TEST1.EP_ACCT_FORPAY_TRACE 
(
   ID                   VARCHAR2(32)         not null,
   SYS_SEQ              VARCHAR2(32),
   SET_DATE             VARCHAR2(8),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   DC_FLAG              CHAR,
   TRANS_CURR           VARCHAR2(3),
   TRANS_AMT            NUMBER(25,2),
   MERCH_NO             VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   DEBIT_ACCT_NO        VARCHAR2(32),
   CREDIT_ACCT_NO       VARCHAR2(32),
   SET_FLAG             CHAR,
   REMARK               VARCHAR2(192),
   constraint PK_EP_ACCT_FORPAY_TRACE primary key (ID)
);

comment on table TEST1.EP_ACCT_FORPAY_TRACE is
'应付账款流水表';

comment on column TEST1.EP_ACCT_FORPAY_TRACE.ID is
'ID';

comment on column TEST1.EP_ACCT_FORPAY_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_ACCT_FORPAY_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_ACCT_FORPAY_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_ACCT_FORPAY_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_ACCT_FORPAY_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_ACCT_FORPAY_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_ACCT_FORPAY_TRACE.TRANS_CURR is
'交易币种';

comment on column TEST1.EP_ACCT_FORPAY_TRACE.TRANS_AMT is
'手续费金额';

comment on column TEST1.EP_ACCT_FORPAY_TRACE.MERCH_NO is
'商户号';

comment on column TEST1.EP_ACCT_FORPAY_TRACE.MERCH_ORDERNO is
'商户订单号';

comment on column TEST1.EP_ACCT_FORPAY_TRACE.DEBIT_ACCT_NO is
'借方账号';

comment on column TEST1.EP_ACCT_FORPAY_TRACE.CREDIT_ACCT_NO is
'贷方帐号';

comment on column TEST1.EP_ACCT_FORPAY_TRACE.SET_FLAG is
'清算标识：0、未清算；1、清算';

comment on column TEST1.EP_ACCT_FORPAY_TRACE.REMARK is
'备注';

/*==============================================================*/
/* Table: EP_ACCT_FREEZE_TRACE                                  */
/*==============================================================*/
create table TEST1.EP_ACCT_FREEZE_TRACE 
(
   USER_NO              VARCHAR2(32),
   ACCT_NO              VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   MERCH_NO             VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   FREEZE_AMT           NUMBER(25,2),
   FREEZE_STAT          CHAR,
   DEAD_LINE            VARCHAR2(12),
   IN_ACCT_NO           VARCHAR2(32),
   FREEZE_MSG           VARCHAR2(75),
   AGREEMENT_NO         VARCHAR2(32),
   BID_NO               VARCHAR2(32),
   CONTRACT_NO          VARCHAR2(32),
   constraint PK_EP_ACCT_FREEZE_TRACE primary key (SYS_SEQ)
);

comment on table TEST1.EP_ACCT_FREEZE_TRACE is
'资金冻结流水';

comment on column TEST1.EP_ACCT_FREEZE_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_ACCT_FREEZE_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_ACCT_FREEZE_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_ACCT_FREEZE_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_ACCT_FREEZE_TRACE.TRANS_TYPE is
'交易种类';

comment on column TEST1.EP_ACCT_FREEZE_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_ACCT_FREEZE_TRACE.SET_DATE is
'SET_DATE';

comment on column TEST1.EP_ACCT_FREEZE_TRACE.MERCH_NO is
'平台商户号';

comment on column TEST1.EP_ACCT_FREEZE_TRACE.MERCH_ORDERNO is
'订单号';

comment on column TEST1.EP_ACCT_FREEZE_TRACE.FREEZE_AMT is
'冻结金额';

comment on column TEST1.EP_ACCT_FREEZE_TRACE.FREEZE_STAT is
'冻结状态：0、未冻结；1、冻结';

comment on column TEST1.EP_ACCT_FREEZE_TRACE.DEAD_LINE is
'冻结期限';

comment on column TEST1.EP_ACCT_FREEZE_TRACE.IN_ACCT_NO is
'转入帐号';

comment on column TEST1.EP_ACCT_FREEZE_TRACE.FREEZE_MSG is
'冻结描述';

comment on column TEST1.EP_ACCT_FREEZE_TRACE.AGREEMENT_NO is
'协议号';

comment on column TEST1.EP_ACCT_FREEZE_TRACE.BID_NO is
'标号';

comment on column TEST1.EP_ACCT_FREEZE_TRACE.CONTRACT_NO is
'合同号';

/*==============================================================*/
/* Table: EP_ACCT_FUNDS                                         */
/*==============================================================*/
create table TEST1.EP_ACCT_FUNDS 
(
   ACCT_NO              VARCHAR2(32)         not null,
   ACCT_BALANCE         NUMBER(25,2),
   FREEZE_BALANCE       NUMBER(25,2),
   AVAIL_BALANCE        NUMBER(25,2),
   ICOIN_BALANCE        NUMBER(25,2),
   RATE_BALANCE         NUMBER(25,4),
   LAST_CHGDATE         VARCHAR2(8),
   LAST_LAST_CHG_DATE   VARCHAR2(8),
   LAST_LAST_CHA_BLANCE NUMBER(25,2),
   RATE_TOTAL_COUNT     NUMBER(25,2),
   EXPIRY_DATE          VARCHAR2(8),
   VERSION              NUMBER               not null,
   ACCRUED_RATE         NUMBER(25,4),
   DAC                  VARCHAR2(32),
   constraint PK_EP_ACCT_FUNDS primary key (ACCT_NO)
);

comment on table TEST1.EP_ACCT_FUNDS is
'账户资金表';

comment on column TEST1.EP_ACCT_FUNDS.ACCT_NO is
'账号';

comment on column TEST1.EP_ACCT_FUNDS.ACCT_BALANCE is
'账户余额';

comment on column TEST1.EP_ACCT_FUNDS.FREEZE_BALANCE is
'冻结金额';

comment on column TEST1.EP_ACCT_FUNDS.AVAIL_BALANCE is
'可用余额';

comment on column TEST1.EP_ACCT_FUNDS.ICOIN_BALANCE is
'积分余额';

comment on column TEST1.EP_ACCT_FUNDS.RATE_BALANCE is
'利息余额';

comment on column TEST1.EP_ACCT_FUNDS.LAST_CHGDATE is
'上次动账日';

comment on column TEST1.EP_ACCT_FUNDS.LAST_LAST_CHG_DATE is
'上上次动账日';

comment on column TEST1.EP_ACCT_FUNDS.LAST_LAST_CHA_BLANCE is
'上上次动账日余额';

comment on column TEST1.EP_ACCT_FUNDS.RATE_TOTAL_COUNT is
'利息积数';

comment on column TEST1.EP_ACCT_FUNDS.EXPIRY_DATE is
'结息日期';

comment on column TEST1.EP_ACCT_FUNDS.VERSION is
'版本号';

comment on column TEST1.EP_ACCT_FUNDS.ACCRUED_RATE is
'已计提利息';

comment on column TEST1.EP_ACCT_FUNDS.DAC is
'验证码';

/*==============================================================*/
/* Table: EP_ACCT_LIMIT                                         */
/*==============================================================*/
create table TEST1.EP_ACCT_LIMIT 
(
   ACCT_NO              VARCHAR2(32)         not null,
   SINGLE_DRAW_LIMIT_AMT NUMBER(25,2),
   TODAY_DRAW_LIMIT_AMT NUMBER(25,2),
   SINGLE_TRANSFER_LIMIT_AMT NUMBER(25,2),
   TODAY_TRANSFER_LIMIT_AMT NUMBER(25,2),
   SINGLE_CONSUME_LIMIT_AMT NUMBER(25,2),
   TODAY_CONSUME_LIMIT_AMT NUMBER(25,2),
   SINGLE_RECHARGE_LIMIT_AMT NUMBER(25,2),
   TODAY_RECHARGE_LIMIT_AMT NUMBER(25,2),
   SINGLE_QUICK_LIMT_AMT NUMBER(25,2),
   TODAY_QUICK_LIMIT_AMT NUMBER(25,2),
   constraint PK_EP_ACCT_LIMIT primary key (ACCT_NO)
);

comment on table TEST1.EP_ACCT_LIMIT is
'账户限额管理表';

comment on column TEST1.EP_ACCT_LIMIT.ACCT_NO is
'账号';

comment on column TEST1.EP_ACCT_LIMIT.SINGLE_DRAW_LIMIT_AMT is
'单笔提现限额';

comment on column TEST1.EP_ACCT_LIMIT.TODAY_DRAW_LIMIT_AMT is
'单日提现限额';

comment on column TEST1.EP_ACCT_LIMIT.SINGLE_TRANSFER_LIMIT_AMT is
'单笔转账限额';

comment on column TEST1.EP_ACCT_LIMIT.TODAY_TRANSFER_LIMIT_AMT is
'单日转账限额';

comment on column TEST1.EP_ACCT_LIMIT.SINGLE_CONSUME_LIMIT_AMT is
'单笔消费限额';

comment on column TEST1.EP_ACCT_LIMIT.TODAY_CONSUME_LIMIT_AMT is
'单日消费限额';

comment on column TEST1.EP_ACCT_LIMIT.SINGLE_RECHARGE_LIMIT_AMT is
'单笔充值限额';

comment on column TEST1.EP_ACCT_LIMIT.TODAY_RECHARGE_LIMIT_AMT is
'单日充值限额';

comment on column TEST1.EP_ACCT_LIMIT.SINGLE_QUICK_LIMT_AMT is
'单笔快捷支付限额';

comment on column TEST1.EP_ACCT_LIMIT.TODAY_QUICK_LIMIT_AMT is
'单日快捷支付限额';

/*==============================================================*/
/* Table: EP_ACCT_MASTER                                        */
/*==============================================================*/
create table TEST1.EP_ACCT_MASTER 
(
   USER_NO              VARCHAR2(32)         not null,
   ACCT_NO              VARCHAR2(32),
   ACCT_TYPE            VARCHAR2(3),
   ACCT_STAT            VARCHAR2(1),
   OPEN_DATE            VARCHAR2(8),
   CLOSE_DATE           VARCHAR2(8),
   CONTRACT             VARCHAR2(48),
   CREATE_TS            VARCHAR2(17),
   LAST_UPD_TS          VARCHAR2(17),
   constraint PK_EP_ACCT_MASTER primary key (USER_NO)
);

comment on table TEST1.EP_ACCT_MASTER is
'账户主表';

comment on column TEST1.EP_ACCT_MASTER.USER_NO is
'用户ID';

comment on column TEST1.EP_ACCT_MASTER.ACCT_NO is
'账户ID';

comment on column TEST1.EP_ACCT_MASTER.ACCT_TYPE is
'账户类型 00-个人 01-企业
02-圈外企业';

comment on column TEST1.EP_ACCT_MASTER.ACCT_STAT is
'账户状态 0-正常1-冻结2-销户';

comment on column TEST1.EP_ACCT_MASTER.OPEN_DATE is
'开户日期';

comment on column TEST1.EP_ACCT_MASTER.CLOSE_DATE is
'销户日期';

comment on column TEST1.EP_ACCT_MASTER.CONTRACT is
'联系地址';

comment on column TEST1.EP_ACCT_MASTER.CREATE_TS is
'创建时间';

comment on column TEST1.EP_ACCT_MASTER.LAST_UPD_TS is
'记录修改日期';

/*==============================================================*/
/* Table: EP_ACCT_RATE                                          */
/*==============================================================*/
create table TEST1.EP_ACCT_RATE 
(
   RATE_TYPE            VARCHAR2(10)         not null,
   RATE_VALUE           NUMBER(25,7),
   constraint PK_EP_ACCT_RATE primary key (RATE_TYPE)
);

comment on table TEST1.EP_ACCT_RATE is
'账户利率表';

comment on column TEST1.EP_ACCT_RATE.RATE_TYPE is
'利率种类';

comment on column TEST1.EP_ACCT_RATE.RATE_VALUE is
'利率值';

/*==============================================================*/
/* Table: EP_ACCT_RATE_TRACE                                    */
/*==============================================================*/
create table TEST1.EP_ACCT_RATE_TRACE 
(
   ID                   VARCHAR2(32)         not null,
   ACCT_NO              VARCHAR2(32),
   RATE_DATE            VARCHAR2(8),
   ACCT_BALANCE         NUMBER(25,2),
   RATE_BALANCE         NUMBER(25,4),
   TOTAL_BALANCE        NUMBER(25,2),
   constraint PK_EP_ACCT_RATE_TRACE primary key (ID)
);

comment on table TEST1.EP_ACCT_RATE_TRACE is
'账户利息入账流水表';

comment on column TEST1.EP_ACCT_RATE_TRACE.ID is
'ID';

comment on column TEST1.EP_ACCT_RATE_TRACE.ACCT_NO is
'ACCT_NO';

comment on column TEST1.EP_ACCT_RATE_TRACE.RATE_DATE is
'清算日期';

comment on column TEST1.EP_ACCT_RATE_TRACE.ACCT_BALANCE is
'账户余额';

comment on column TEST1.EP_ACCT_RATE_TRACE.RATE_BALANCE is
'利息值';

comment on column TEST1.EP_ACCT_RATE_TRACE.TOTAL_BALANCE is
'合计余额';

/*==============================================================*/
/* Table: EP_ACCT_RECEIVABLE                                    */
/*==============================================================*/
create table TEST1.EP_ACCT_RECEIVABLE 
(
   ID                   VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   DC_FLAG              CHAR,
   TRANS_CURR           VARCHAR2(3),
   TRANS_AMT            NUMBER(25,2),
   SET_FLAG             CHAR,
   DEBIT_ACCT_NO        VARCHAR2(32),
   CREDIT_ACCT_NO       VARCHAR2(32),
   REMARK               VARCHAR2(192),
   constraint PK_EP_ACCT_RECEIVABLE primary key (ID)
);

comment on table TEST1.EP_ACCT_RECEIVABLE is
'应收账款表';

comment on column TEST1.EP_ACCT_RECEIVABLE.ID is
'ID';

comment on column TEST1.EP_ACCT_RECEIVABLE.SET_DATE is
'清算日期';

comment on column TEST1.EP_ACCT_RECEIVABLE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_ACCT_RECEIVABLE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_ACCT_RECEIVABLE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_ACCT_RECEIVABLE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_ACCT_RECEIVABLE.TRANS_CURR is
'交易币种(RMB-156)：RMB(156)、EUR、USD';

comment on column TEST1.EP_ACCT_RECEIVABLE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_ACCT_RECEIVABLE.SET_FLAG is
'清算标志：0、未清算；1、清算';

comment on column TEST1.EP_ACCT_RECEIVABLE.DEBIT_ACCT_NO is
'借方账号';

comment on column TEST1.EP_ACCT_RECEIVABLE.CREDIT_ACCT_NO is
'贷方帐号';

comment on column TEST1.EP_ACCT_RECEIVABLE.REMARK is
'备注';

/*==============================================================*/
/* Table: EP_ACCT_SECURE                                        */
/*==============================================================*/
create table TEST1.EP_ACCT_SECURE 
(
   ACCT_NO              VARCHAR2(32)         not null,
   PAY_PASSWD           VARCHAR2(80),
   PAY_PASSWD_STAT      CHAR(2),
   PAY_PASSWD_QUS1      VARCHAR2(80),
   PAY_PASSWD_ANS1      VARCHAR2(160),
   PAY_PASSWD_QUS2      VARCHAR2(80),
   PAY_PASSWD_ANS2      VARCHAR2(160),
   PWD_ERR_NUM          NUMBER(2),
   PWD_ERR_NUM_LIMIT    NUMBER(2),
   LOCK_TIME            VARCHAR2(14),
   LOCK_TIME_LIMIT      NUMBER(8),
   SALT                 VARCHAR2(16),
   constraint PK_EP_ACCT_SECURE primary key (ACCT_NO)
);

comment on table TEST1.EP_ACCT_SECURE is
'账户安全控制表';

comment on column TEST1.EP_ACCT_SECURE.ACCT_NO is
'ACCT_NO';

comment on column TEST1.EP_ACCT_SECURE.PAY_PASSWD is
'支付密码';

comment on column TEST1.EP_ACCT_SECURE.PAY_PASSWD_STAT is
'支付密码状态 0-正常，1-当日锁定，2-永久锁定3-临时锁定9-  未设定';

comment on column TEST1.EP_ACCT_SECURE.PAY_PASSWD_QUS1 is
'支付安全问题1';

comment on column TEST1.EP_ACCT_SECURE.PAY_PASSWD_ANS1 is
'安全问题答案1';

comment on column TEST1.EP_ACCT_SECURE.PAY_PASSWD_QUS2 is
'支付安全问题2';

comment on column TEST1.EP_ACCT_SECURE.PAY_PASSWD_ANS2 is
'安全问题答案2';

comment on column TEST1.EP_ACCT_SECURE.PWD_ERR_NUM is
'当日密码错误次数';

comment on column TEST1.EP_ACCT_SECURE.PWD_ERR_NUM_LIMIT is
'每日密码错误次数上限';

comment on column TEST1.EP_ACCT_SECURE.LOCK_TIME is
'锁定时间';

comment on column TEST1.EP_ACCT_SECURE.LOCK_TIME_LIMIT is
'锁定时长';

comment on column TEST1.EP_ACCT_SECURE.SALT is
'随机Salt值';

/*==============================================================*/
/* Table: EP_ACCT_TRACE                                         */
/*==============================================================*/
create table TEST1.EP_ACCT_TRACE 
(
   ID                   VARCHAR2(32)         not null,
   ACCT_NO              VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_SEQ              VARCHAR2(32),
   SET_DATE             VARCHAR2(8),
   DC_FLAG              CHAR,
   TRANS_CURR           VARCHAR2(3),
   TRANS_AMT            NUMBER(25,2),
   MERCH_NO             VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   IN_ACCT_NO           VARCHAR2(32),
   RB_FLAG              CHAR,
   ACCOUNTING_TYPE      CHAR,
   REMARK               VARCHAR2(192),
   constraint PK_EP_ACCT_TRACE primary key (ID)
)
partition by range (TRANS_DATE)(
	partition PP201401 values less than ('20140201') tablespace P201401,
	partition PP201402 values less than ('20140301') tablespace P201402,
	partition PP201403 values less than ('20140401') tablespace P201403,
	partition PP201404 values less than ('20140501') tablespace P201404,
	partition PP201405 values less than ('20140601') tablespace P201405,
	partition PP201406 values less than ('20140701') tablespace P201406,
	partition PP201407 values less than ('20140801') tablespace P201407,
	partition PP201408 values less than ('20140901') tablespace P201408,
	partition PP201409 values less than ('20141001') tablespace P201409,
	partition PP201410 values less than ('20141101') tablespace P201410,
	partition PP201411 values less than ('20141201') tablespace P201411,
	partition PP201412 values less than ('99999999') tablespace P201412
);

comment on table TEST1.EP_ACCT_TRACE is
'虚拟账户流水表';

comment on column TEST1.EP_ACCT_TRACE.ID is
'ID';

comment on column TEST1.EP_ACCT_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_ACCT_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_ACCT_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_ACCT_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_ACCT_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_ACCT_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_ACCT_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_ACCT_TRACE.TRANS_CURR is
'交易币种';

comment on column TEST1.EP_ACCT_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_ACCT_TRACE.MERCH_NO is
'商户号';

comment on column TEST1.EP_ACCT_TRACE.MERCH_ORDERNO is
'商户订单号';

comment on column TEST1.EP_ACCT_TRACE.IN_ACCT_NO is
'贷方帐号';

comment on column TEST1.EP_ACCT_TRACE.RB_FLAG is
'红蓝标志：R、红；B、蓝';

comment on column TEST1.EP_ACCT_TRACE.ACCOUNTING_TYPE is
'交易性质：1、正常；2、抹账；3、被抹';

comment on column TEST1.EP_ACCT_TRACE.REMARK is
'备注';

/*==============================================================*/
/* Table: EP_ACCT_TYPE_CODE                                     */
/*==============================================================*/
create table TEST1.EP_ACCT_TYPE_CODE 
(
   ACCT_TYPE_CODE       VARCHAR2(6)          not null,
   ACCT_TYPE_DESC       VARCHAR2(32),
   constraint PK_EP_ACCT_TYPE_CODE primary key (ACCT_TYPE_CODE)
);

comment on table TEST1.EP_ACCT_TYPE_CODE is
'账户代码表';

comment on column TEST1.EP_ACCT_TYPE_CODE.ACCT_TYPE_CODE is
'账户代码';

comment on column TEST1.EP_ACCT_TYPE_CODE.ACCT_TYPE_DESC is
'账户解释';

/*==============================================================*/
/* Table: EP_ACCT_WHITE                                         */
/*==============================================================*/
create table TEST1.EP_ACCT_WHITE 
(
   ACCT_NO              VARCHAR2(32)         not null,
   OVERDRAFT_AMT        NUMBER(25,2),
   FLAG                 CHAR,
   CREATE_TIME          VARCHAR2(17),
   UPDATE_TIME          VARCHAR2(17),
   CREATE_OPERATE       VARCHAR2(32),
   UPDATE_OPERATE       VARCHAR2(32),
   constraint PK_EP_ACCT_WHITE primary key (ACCT_NO)
);

comment on table TEST1.EP_ACCT_WHITE is
'账户白名单表';

comment on column TEST1.EP_ACCT_WHITE.ACCT_NO is
'虚拟账户ID';

comment on column TEST1.EP_ACCT_WHITE.OVERDRAFT_AMT is
'可透支金额';

comment on column TEST1.EP_ACCT_WHITE.FLAG is
'0：有效，1：无效；';

comment on column TEST1.EP_ACCT_WHITE.CREATE_TIME is
'创建日期';

comment on column TEST1.EP_ACCT_WHITE.UPDATE_TIME is
'修改日期';

comment on column TEST1.EP_ACCT_WHITE.CREATE_OPERATE is
'创建人';

comment on column TEST1.EP_ACCT_WHITE.UPDATE_OPERATE is
'修改人';

/*==============================================================*/
/* Table: EP_B2C_TRACE                                          */
/*==============================================================*/
create table TEST1.EP_B2C_TRACE 
(
   USER_NO              VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_ACCT_NO        VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_MERCH_NO         VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   EXT_ACCT_NO          VARCHAR2(32),
   TRANS_CURR           VARCHAR2(3),
   TRANS_STAT           CHAR,
   TRANS_AMT            NUMBER(25,2),
   TRANS_FEE            NUMBER(25,2),
   B2C_SEQ              VARCHAR2(32),
   LOG_NUMBER           VARCHAR2(32),
   SUMMONS_NUM          VARCHAR2(32),
   DC_FLAG              CHAR,
   RB_FLAG              CHAR,
   TRANS_NATURE         CHAR,
   BACKGROUND_DATE      VARCHAR2(8),
   RESP_CODE            VARCHAR2(6),
   RESP_MSG             VARCHAR2(192),
   REMARK               VARCHAR2(192),
   constraint PK_EP_B2C_TRACE primary key (SYS_SEQ)
)
partition by range (TRANS_DATE)(
	partition PP201401 values less than ('20140201') tablespace P201401,
	partition PP201402 values less than ('20140301') tablespace P201402,
	partition PP201403 values less than ('20140401') tablespace P201403,
	partition PP201404 values less than ('20140501') tablespace P201404,
	partition PP201405 values less than ('20140601') tablespace P201405,
	partition PP201406 values less than ('20140701') tablespace P201406,
	partition PP201407 values less than ('20140801') tablespace P201407,
	partition PP201408 values less than ('20140901') tablespace P201408,
	partition PP201409 values less than ('20141001') tablespace P201409,
	partition PP201410 values less than ('20141101') tablespace P201410,
	partition PP201411 values less than ('20141201') tablespace P201411,
	partition PP201412 values less than ('99999999') tablespace P201412
);

comment on table TEST1.EP_B2C_TRACE is
'B2C渠道流水';

comment on column TEST1.EP_B2C_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_B2C_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_B2C_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_B2C_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_B2C_TRACE.TRANS_ACCT_NO is
'交易帐号';

comment on column TEST1.EP_B2C_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_B2C_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_B2C_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_B2C_TRACE.SYS_MERCH_NO is
'商户编号';

comment on column TEST1.EP_B2C_TRACE.MERCH_ORDERNO is
'外部订单号';

comment on column TEST1.EP_B2C_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_B2C_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_B2C_TRACE.TRANS_STAT is
'交易状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_B2C_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_B2C_TRACE.TRANS_FEE is
'交易手续费';

comment on column TEST1.EP_B2C_TRACE.B2C_SEQ is
'B2C流水号';

comment on column TEST1.EP_B2C_TRACE.LOG_NUMBER is
'日志号';

comment on column TEST1.EP_B2C_TRACE.SUMMONS_NUM is
'传票号';

comment on column TEST1.EP_B2C_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_B2C_TRACE.RB_FLAG is
'红蓝标志：R、红；B、蓝';

comment on column TEST1.EP_B2C_TRACE.TRANS_NATURE is
'交易性质：1、正常；2、抹账';

comment on column TEST1.EP_B2C_TRACE.BACKGROUND_DATE is
'后台清算日期';

comment on column TEST1.EP_B2C_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.EP_B2C_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.EP_B2C_TRACE.REMARK is
'备注信息';

/*==============================================================*/
/* Table: EP_BANK                                               */
/*==============================================================*/
create table TEST1.EP_BANK 
(
   BANK_SIG             VARCHAR2(2)          not null,
   BANK_CODE            VARCHAR2(3)          not null,
   BANK_NAME            VARCHAR2(150),
   ENABLE               CHAR,
   BANK_SERV_PHONE      VARCHAR2(16),
   constraint PK_EP_BANK primary key (BANK_SIG, BANK_CODE)
);

comment on table TEST1.EP_BANK is
'银行代码表';

comment on column TEST1.EP_BANK.BANK_SIG is
'银行标识';

comment on column TEST1.EP_BANK.BANK_CODE is
'银行代码';

comment on column TEST1.EP_BANK.BANK_NAME is
'银行名称';

comment on column TEST1.EP_BANK.ENABLE is
'开通标志：0、开通；1、未开通';

comment on column TEST1.EP_BANK.BANK_SERV_PHONE is
'服务电话';

/*==============================================================*/
/* Table: EP_BANK_AREA                                          */
/*==============================================================*/
create table TEST1.EP_BANK_AREA 
(
   BANK_NETID           VARCHAR2(6)          not null,
   BANK_CENTCOD         VARCHAR2(10),
   constraint PK_EP_BANK_AREA primary key (BANK_NETID)
);

comment on table TEST1.EP_BANK_AREA is
'清算中心代码表';

comment on column TEST1.EP_BANK_AREA.BANK_NETID is
'BANK_NETID';

comment on column TEST1.EP_BANK_AREA.BANK_CENTCOD is
'BANK_CENTCOD';

/*==============================================================*/
/* Table: EP_BANK_BRANCH                                        */
/*==============================================================*/
create table TEST1.EP_BANK_BRANCH 
(
   BANK_CODE            VARCHAR2(12)         not null,
   BANK_NAME            VARCHAR2(150),
   constraint PK_EP_BANK_CODE primary key (BANK_CODE)
);

comment on table TEST1.EP_BANK_BRANCH is
'跨行联行号表';

comment on column TEST1.EP_BANK_BRANCH.BANK_CODE is
'BANK_CODE';

comment on column TEST1.EP_BANK_BRANCH.BANK_NAME is
'BANK_NAME';

/*==============================================================*/
/* Table: EP_BIND_CARD                                          */
/*==============================================================*/
create table TEST1.EP_BIND_CARD 
(
   ID                   VARCHAR2(32)         not null,
   ACCT_NO              VARCHAR2(32),
   BANK_NO              VARCHAR2(32),
   ACCT_TYPE            CHAR,
   CARD_TYPE            VARCHAR2(3),
   ACCT_NAME            VARCHAR2(375),
   BANK_CLASS           VARCHAR2(48),
   REGISTER_NO          VARCHAR2(20),
   PROVINCE_NO          VARCHAR2(32),
   OPEN_INST1           VARCHAR2(30),
   OPEN_INST2           VARCHAR2(60),
   SET_CENTER_NO        VARCHAR2(20),
   CUSTOM_ID            VARCHAR2(20),
   EXPIRY_DATE          VARCHAR2(8),
   INST_CODE            VARCHAR2(40),
   INST_NAME            VARCHAR2(150),
   CVV2                 VARCHAR2(3),
   VALID_FLAG           CHAR,
   CREATE_TS            VARCHAR2(17),
   UPDATE_TS            VARCHAR2(17),
   SIGN_FLAG            CHAR,
   constraint PK_EP_BIND_CARD primary key (ID)
);

comment on table TEST1.EP_BIND_CARD is
'绑定银行卡信息表';

comment on column TEST1.EP_BIND_CARD.ID is
'ID';

comment on column TEST1.EP_BIND_CARD.ACCT_NO is
'账号';

comment on column TEST1.EP_BIND_CARD.BANK_NO is
'银行帐号';

comment on column TEST1.EP_BIND_CARD.ACCT_TYPE is
'账户类型：1、本行个人；2、本行企业；3、他行';

comment on column TEST1.EP_BIND_CARD.CARD_TYPE is
'卡类型';

comment on column TEST1.EP_BIND_CARD.ACCT_NAME is
'账户姓名';

comment on column TEST1.EP_BIND_CARD.BANK_CLASS is
'银行行别';

comment on column TEST1.EP_BIND_CARD.REGISTER_NO is
'注册所号';

comment on column TEST1.EP_BIND_CARD.PROVINCE_NO is
'省市代码';

comment on column TEST1.EP_BIND_CARD.OPEN_INST1 is
'开户行号';

comment on column TEST1.EP_BIND_CARD.OPEN_INST2 is
'开户二级分行';

comment on column TEST1.EP_BIND_CARD.SET_CENTER_NO is
'清算中心代码';

comment on column TEST1.EP_BIND_CARD.CUSTOM_ID is
'农行客户号';

comment on column TEST1.EP_BIND_CARD.EXPIRY_DATE is
'账户有效期';

comment on column TEST1.EP_BIND_CARD.INST_CODE is
'组织机构代码';

comment on column TEST1.EP_BIND_CARD.INST_NAME is
'组织机构名称';

comment on column TEST1.EP_BIND_CARD.CVV2 is
'Cvv2';

comment on column TEST1.EP_BIND_CARD.VALID_FLAG is
'绑定生效标志：0、生效；1、失效；2、待审核';

comment on column TEST1.EP_BIND_CARD.CREATE_TS is
'创建时间';

comment on column TEST1.EP_BIND_CARD.UPDATE_TS is
'修改时间';

comment on column TEST1.EP_BIND_CARD.SIGN_FLAG is
'签约标志：0、成功；1、失败';

/*==============================================================*/
/* Table: EP_BIND_CARD_LIMIT                                    */
/*==============================================================*/
create table TEST1.EP_BIND_CARD_LIMIT 
(
   ACCT_NO              VARCHAR2(32)         not null,
   MAX_BIND_COUNT       NUMBER,
   ALREADY_BIND_COUNT   NUMBER,
   TRANSFER_AMT         NUMBER(4,2),
   LAST_TRANSFER_AMT    NUMBER(3,2),
   constraint PK_EP_BIND_CARD_LIMIT primary key (ACCT_NO)
);

comment on table TEST1.EP_BIND_CARD_LIMIT is
'银行卡绑定次数控制表';

comment on column TEST1.EP_BIND_CARD_LIMIT.ACCT_NO is
'账号';

comment on column TEST1.EP_BIND_CARD_LIMIT.MAX_BIND_COUNT is
'最大绑定次数';

comment on column TEST1.EP_BIND_CARD_LIMIT.ALREADY_BIND_COUNT is
'已经绑定次数';

comment on column TEST1.EP_BIND_CARD_LIMIT.TRANSFER_AMT is
'转账金额总和';

comment on column TEST1.EP_BIND_CARD_LIMIT.LAST_TRANSFER_AMT is
'最近一笔金额';

/*==============================================================*/
/* Table: EP_BOEING_TRACE                                       */
/*==============================================================*/
create table TEST1.EP_BOEING_TRACE 
(
   USER_NO              VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_ACCT_NO        VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_MERCH_NO         VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   EXT_ACCT_NO          VARCHAR2(32),
   TRANS_CURR           VARCHAR2(3),
   TRANS_STAT           CHAR,
   TRANS_AMT            NUMBER(25,2),
   TRANS_FEE            NUMBER(25,2),
   BOEING_SEQ           VARCHAR2(32),
   LOG_NUMBER           VARCHAR2(32),
   SUMMONS_NUM          VARCHAR2(32),
   DC_FLAG              CHAR,
   RB_FLAG              CHAR,
   TRANS_NATURE         CHAR,
   BACKGROUND_DATE      VARCHAR2(8),
   RESP_CODE            VARCHAR2(6),
   RESP_MSG             VARCHAR2(192),
   REMARK               VARCHAR2(192),
   constraint PK_EP_BOEING_TRACE primary key (SYS_SEQ)
)
partition by range (TRANS_DATE)(
	partition PP201401 values less than ('20140201') tablespace P201401,
	partition PP201402 values less than ('20140301') tablespace P201402,
	partition PP201403 values less than ('20140401') tablespace P201403,
	partition PP201404 values less than ('20140501') tablespace P201404,
	partition PP201405 values less than ('20140601') tablespace P201405,
	partition PP201406 values less than ('20140701') tablespace P201406,
	partition PP201407 values less than ('20140801') tablespace P201407,
	partition PP201408 values less than ('20140901') tablespace P201408,
	partition PP201409 values less than ('20141001') tablespace P201409,
	partition PP201410 values less than ('20141101') tablespace P201410,
	partition PP201411 values less than ('20141201') tablespace P201411,
	partition PP201412 values less than ('99999999') tablespace P201412
);

comment on table TEST1.EP_BOEING_TRACE is
'BOEING渠道流水';

comment on column TEST1.EP_BOEING_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_BOEING_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_BOEING_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_BOEING_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_BOEING_TRACE.TRANS_ACCT_NO is
'交易帐号';

comment on column TEST1.EP_BOEING_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_BOEING_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_BOEING_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_BOEING_TRACE.SYS_MERCH_NO is
'商户编号';

comment on column TEST1.EP_BOEING_TRACE.MERCH_ORDERNO is
'外部订单号';

comment on column TEST1.EP_BOEING_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_BOEING_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_BOEING_TRACE.TRANS_STAT is
'订单状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_BOEING_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_BOEING_TRACE.TRANS_FEE is
'交易手续费';

comment on column TEST1.EP_BOEING_TRACE.BOEING_SEQ is
'BOEING流水号';

comment on column TEST1.EP_BOEING_TRACE.LOG_NUMBER is
'日志号';

comment on column TEST1.EP_BOEING_TRACE.SUMMONS_NUM is
'传票号';

comment on column TEST1.EP_BOEING_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_BOEING_TRACE.RB_FLAG is
'红蓝标志：R、红；B、蓝';

comment on column TEST1.EP_BOEING_TRACE.TRANS_NATURE is
'交易性质：1、正常；2、抹账';

comment on column TEST1.EP_BOEING_TRACE.BACKGROUND_DATE is
'后台清算日期';

comment on column TEST1.EP_BOEING_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.EP_BOEING_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.EP_BOEING_TRACE.REMARK is
'备注信息';

/*==============================================================*/
/* Table: EP_CARD_BIN                                           */
/*==============================================================*/
create table TEST1.EP_CARD_BIN 
(
   ID                   VARCHAR2(32)         not null,
   BANK_NAME            VARCHAR2(75),
   BANK_INST            VARCHAR2(48),
   CARD_NAME            VARCHAR2(75),
   CARD_MATCH           VARCHAR2(30),
   CARD_MATCH_LENGTH    NUMBER,
   ACCT_TYPE_CODE       VARCHAR2(3),
   ACCT_TYPE_NAME       VARCHAR2(50),
   constraint PK_EP_CARD_BIN primary key (ID)
);

comment on table TEST1.EP_CARD_BIN is
'银行卡bin表';

comment on column TEST1.EP_CARD_BIN.ID is
'ID';

comment on column TEST1.EP_CARD_BIN.BANK_NAME is
'发卡行名称';

comment on column TEST1.EP_CARD_BIN.BANK_INST is
'发卡行机构代码';

comment on column TEST1.EP_CARD_BIN.CARD_NAME is
'卡名称';

comment on column TEST1.EP_CARD_BIN.CARD_MATCH is
'发卡行表示';

comment on column TEST1.EP_CARD_BIN.CARD_MATCH_LENGTH is
'发卡行标识长度';

comment on column TEST1.EP_CARD_BIN.ACCT_TYPE_CODE is
'账户类型代码';

comment on column TEST1.EP_CARD_BIN.ACCT_TYPE_NAME is
'卡种名称';

/*==============================================================*/
/* Table: EP_CARD_HISLOG                                        */
/*==============================================================*/
create table TEST1.EP_CARD_HISLOG 
(
   ID                   VARCHAR2(32)         not null,
   ACCT_NO              VARCHAR2(32),
   CARD_NO              VARCHAR2(32),
   ACCT_NAME            VARCHAR2(75),
   ACCT_TYPE            VARCHAR2(3),
   BANK_SPEC            VARCHAR2(48),
   TRAN_DIRECT          CHAR,
   USE_ID               VARCHAR2(6),
   USE_DESC             VARCHAR2(75),
   PROVINCE_CODE        CHAR(2),
   PROVINCE_NAME        VARCHAR2(16),
   CITY_CODE            CHAR(4),
   CITY_NAME            VARCHAR2(16),
   BANK_BRANCH_CODE     VARCHAR2(12),
   BANK_NAME            VARCHAR2(80),
   BANK_BRANCH_NAME     VARCHAR2(80),
   constraint PK_EP_CARD_HISLOG primary key (ID)
);

comment on table TEST1.EP_CARD_HISLOG is
'银行卡历史记录表';

comment on column TEST1.EP_CARD_HISLOG.ID is
'ID';

comment on column TEST1.EP_CARD_HISLOG.ACCT_NO is
'账号';

comment on column TEST1.EP_CARD_HISLOG.CARD_NO is
'银行卡号';

comment on column TEST1.EP_CARD_HISLOG.ACCT_NAME is
'账户名称';

comment on column TEST1.EP_CARD_HISLOG.ACCT_TYPE is
'账户种类';

comment on column TEST1.EP_CARD_HISLOG.BANK_SPEC is
'银行行别';

comment on column TEST1.EP_CARD_HISLOG.TRAN_DIRECT is
'交易方向：1、正向；2、反向';

comment on column TEST1.EP_CARD_HISLOG.USE_ID is
'用途ID';

comment on column TEST1.EP_CARD_HISLOG.USE_DESC is
'用户描述';

comment on column TEST1.EP_CARD_HISLOG.PROVINCE_CODE is
'省代码';

comment on column TEST1.EP_CARD_HISLOG.PROVINCE_NAME is
'省名称';

comment on column TEST1.EP_CARD_HISLOG.CITY_CODE is
'市代码';

comment on column TEST1.EP_CARD_HISLOG.CITY_NAME is
'市名称';

comment on column TEST1.EP_CARD_HISLOG.BANK_BRANCH_CODE is
'开户行代码';

comment on column TEST1.EP_CARD_HISLOG.BANK_NAME is
'银行名称';

comment on column TEST1.EP_CARD_HISLOG.BANK_BRANCH_NAME is
'开户行名称';

/*==============================================================*/
/* Table: EP_CREDIT_TRACE                                       */
/*==============================================================*/
create table TEST1.EP_CREDIT_TRACE 
(
   USER_NO              VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_ACCT_NO        VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_MERCH_NO         VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   EXT_ACCT_NO          VARCHAR2(32),
   TRANS_CURR           VARCHAR2(3),
   TRANS_STAT           CHAR,
   TRANS_AMT            NUMBER(25,2),
   TRANS_FEE            NUMBER(25,2),
   INTS_SEQ             VARCHAR2(32),
   RESP_CODE            VARCHAR2(6),
   RESP_MSG             VARCHAR2(192),
   INSTALLMENT          NUMBER,
   PRODUCT_ID           VARCHAR2(32),
   MERCH_NO             VARCHAR2(32),
   REMARK               VARCHAR2(192),
   constraint PK_EP_CREDIT_TRACE primary key (SYS_SEQ)
);

comment on table TEST1.EP_CREDIT_TRACE is
'贷记卡前置渠道流水';

comment on column TEST1.EP_CREDIT_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_CREDIT_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_CREDIT_TRACE.SYS_SEQ is
'SYS_SEQ';

comment on column TEST1.EP_CREDIT_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_CREDIT_TRACE.TRANS_ACCT_NO is
'交易帐号';

comment on column TEST1.EP_CREDIT_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_CREDIT_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_CREDIT_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_CREDIT_TRACE.SYS_MERCH_NO is
'商户编号';

comment on column TEST1.EP_CREDIT_TRACE.MERCH_ORDERNO is
'外部订单号';

comment on column TEST1.EP_CREDIT_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_CREDIT_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_CREDIT_TRACE.TRANS_STAT is
'订单状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_CREDIT_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_CREDIT_TRACE.TRANS_FEE is
'交易手续费';

comment on column TEST1.EP_CREDIT_TRACE.INTS_SEQ is
'INTS流水号';

comment on column TEST1.EP_CREDIT_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.EP_CREDIT_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.EP_CREDIT_TRACE.INSTALLMENT is
'分期数';

comment on column TEST1.EP_CREDIT_TRACE.PRODUCT_ID is
'分期商品编号';

comment on column TEST1.EP_CREDIT_TRACE.MERCH_NO is
'商户号';

comment on column TEST1.EP_CREDIT_TRACE.REMARK is
'备注信息';

/*==============================================================*/
/* Table: EP_DEPOSIT_ACCT_TRACE                                 */
/*==============================================================*/
create table TEST1.EP_DEPOSIT_ACCT_TRACE 
(
   ID                   VARCHAR2(32)         not null,
   ACCT_NO              VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_SEQ              VARCHAR2(32),
   SET_DATE             VARCHAR2(8),
   DC_FLAG              CHAR,
   TRANS_CURR           VARCHAR2(3),
   TRANS_AMT            NUMBER(25,2),
   MERCH_NO             VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   IN_ACCT_NO           VARCHAR2(32),
   AB_FLAG              CHAR,
   ORIGINAL_NUM         VARCHAR2(32),
   ACCOUNTING_TYPE      CHAR,
   PLAFORM_ACCT         VARCHAR2(32),
   STATUS               CHAR,
   REMARK               VARCHAR2(200),
   FEE_AMT              NUMBER(25,2),
   constraint PK_EP_DEPOSIT_ACCT_TRACE primary key (ID)
)
partition by range (TRANS_DATE)(
	partition PP201401 values less than ('20140201') tablespace P201401,
	partition PP201402 values less than ('20140301') tablespace P201402,
	partition PP201403 values less than ('20140401') tablespace P201403,
	partition PP201404 values less than ('20140501') tablespace P201404,
	partition PP201405 values less than ('20140601') tablespace P201405,
	partition PP201406 values less than ('20140701') tablespace P201406,
	partition PP201407 values less than ('20140801') tablespace P201407,
	partition PP201408 values less than ('20140901') tablespace P201408,
	partition PP201409 values less than ('20141001') tablespace P201409,
	partition PP201410 values less than ('20141101') tablespace P201410,
	partition PP201411 values less than ('20141201') tablespace P201411,
	partition PP201412 values less than ('99999999') tablespace P201412
);

comment on table TEST1.EP_DEPOSIT_ACCT_TRACE is
'沉淀账户流水表';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.ID is
'ID';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.TRANS_CURR is
'交易币种';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.MERCH_NO is
'商户号';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.MERCH_ORDERNO is
'商户订单号';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.IN_ACCT_NO is
'贷方帐号';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.AB_FLAG is
'AB标志：A或者B';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.ORIGINAL_NUM is
'原日志号';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.ACCOUNTING_TYPE is
'交易性质：1、正常；2、抹账；3、被抹';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.PLAFORM_ACCT is
'平台账号';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.STATUS is
'交易状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.REMARK is
'备注';

comment on column TEST1.EP_DEPOSIT_ACCT_TRACE.FEE_AMT is
'手续费金额';

/*==============================================================*/
/* Table: EP_EQUAL_BANK_AREA                                    */
/*==============================================================*/
create table TEST1.EP_EQUAL_BANK_AREA 
(
   ICI_CLSNO            VARCHAR2(4)          not null,
   ICI_EQLCOD           VARCHAR2(4),
   ICI_ADDR             VARCHAR2(50),
   ICI_MEMO             VARCHAR2(60),
   constraint PK_EP_EQUAL_BANK_AREA primary key (ICI_CLSNO)
);

comment on table TEST1.EP_EQUAL_BANK_AREA is
'等效清算中心表';

comment on column TEST1.EP_EQUAL_BANK_AREA.ICI_CLSNO is
'清算中心';

comment on column TEST1.EP_EQUAL_BANK_AREA.ICI_EQLCOD is
'等效清算中心';

comment on column TEST1.EP_EQUAL_BANK_AREA.ICI_ADDR is
'地址';

comment on column TEST1.EP_EQUAL_BANK_AREA.ICI_MEMO is
'备注';

/*==============================================================*/
/* Table: EP_ERRLOG                                             */
/*==============================================================*/
create table TEST1.EP_ERRLOG 
(
   ID                   VARCHAR2(32)         not null,
   BUSI_TRANS_NO        VARCHAR2(32),
   LOG_DATE             CHAR(8),
   LOG_TIMESTAMP        VARCHAR2(32),
   ERROR_CODE           VARCHAR2(8),
   ERROR_DESC           VARCHAR2(4000),
   SESSION_ID           VARCHAR2(64),
   EXE_CLASS_NAME       VARCHAR2(150),
   constraint PK_EP_ERRLOG primary key (ID)
);

comment on table TEST1.EP_ERRLOG is
'支付产品错误日志记录表';

comment on column TEST1.EP_ERRLOG.ID is
'记录PK';

comment on column TEST1.EP_ERRLOG.BUSI_TRANS_NO is
'业务流水号';

comment on column TEST1.EP_ERRLOG.LOG_DATE is
'记录日期';

comment on column TEST1.EP_ERRLOG.LOG_TIMESTAMP is
'记录时间戳';

comment on column TEST1.EP_ERRLOG.ERROR_CODE is
'错误代码';

comment on column TEST1.EP_ERRLOG.ERROR_DESC is
'错误描述';

comment on column TEST1.EP_ERRLOG.SESSION_ID is
'会话ID';

comment on column TEST1.EP_ERRLOG.EXE_CLASS_NAME is
'执行类名称';
/*==============================================================*/
/* Table: EP_ERROR_MAP                                          */
/*==============================================================*/
create table TEST1.EP_ERROR_MAP 
(
   ERROR_CODE           VARCHAR2(10)         not null,
   SYS_ID               VARCHAR2(10)         not null,
   SYS_ERR_CODE         VARCHAR2(20),
   ERR_CHS_NAME         VARCHAR2(150),
   ERR_ENG_NAME         VARCHAR2(150),
   constraint PK_EP_ERROR_MAP primary key (ERROR_CODE, SYS_ID)
);

comment on table TEST1.EP_ERROR_MAP is
'错误码转换表';

comment on column TEST1.EP_ERROR_MAP.ERROR_CODE is
'后台错误码';

comment on column TEST1.EP_ERROR_MAP.SYS_ID is
'系统标志：ABIS,INTS,BOEING,AI,B2C,B2B';

comment on column TEST1.EP_ERROR_MAP.SYS_ERR_CODE is
'系统错误码';

comment on column TEST1.EP_ERROR_MAP.ERR_CHS_NAME is
'错误中文描述';

comment on column TEST1.EP_ERROR_MAP.ERR_ENG_NAME is
'错误英文描述';

/*==============================================================*/
/* Table: EP_FUND_SETTLE                                        */
/*==============================================================*/
create table TEST1.EP_FUND_SETTLE 
(
   ID                   VARCHAR2(32)         not null,
   ACCT_NO              VARCHAR2(32),
   ACCT_TYPE            CHAR(3),
   SET_DATE             VARCHAR2(8),
   DAY_END_AMT          NUMBER(25,2),
   DAY_MID_AMT          NUMBER(25,2),
   SETTLE_FLAG          CHAR,
   constraint PK_EP_FUND_SETTLE primary key (ID)
);

comment on table TEST1.EP_FUND_SETTLE is
'平台日清表';

comment on column TEST1.EP_FUND_SETTLE.ID is
'ID';

comment on column TEST1.EP_FUND_SETTLE.ACCT_NO is
'ACCT_NO';

comment on column TEST1.EP_FUND_SETTLE.ACCT_TYPE is
'01-	沉淀账户
02-	垫付账户
03-	支出账户
04-	盈利账户';

comment on column TEST1.EP_FUND_SETTLE.SET_DATE is
'清算日期';

comment on column TEST1.EP_FUND_SETTLE.DAY_END_AMT is
'虚拟账户日终余额';

comment on column TEST1.EP_FUND_SETTLE.DAY_MID_AMT is
'存管账户日间余额';

comment on column TEST1.EP_FUND_SETTLE.SETTLE_FLAG is
'清算状态：0、未清算；1、清算';

/*==============================================================*/
/* Table: EP_FUND_TRANSFER_TRACE                                */
/*==============================================================*/
create table TEST1.EP_FUND_TRANSFER_TRACE 
(
   DEBIT_ACC_NO         VARCHAR2(32),
   SET_DATE             VARCHAR2(8),
   SYS_SEQ              VARCHAR2(32)         not null,
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   DC_FLAG              CHAR,
   TRANS_CURR           VARCHAR2(3),
   TRANS_AMT            NUMBER(25,2),
   TRANS_FLAG           CHAR,
   CREDIT_ACCT_NO       VARCHAR2(32),
   TRANS_STAT           CHAR,
   REMARK               VARCHAR2(192),
   constraint PK_EP_FUND_TRANSFER_TRACE primary key (SYS_SEQ)
);

comment on table TEST1.EP_FUND_TRANSFER_TRACE is
'平台资金划拨流水表';

comment on column TEST1.EP_FUND_TRANSFER_TRACE.DEBIT_ACC_NO is
'借方帐号';

comment on column TEST1.EP_FUND_TRANSFER_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_FUND_TRANSFER_TRACE.SYS_SEQ is
'SYS_SEQ';

comment on column TEST1.EP_FUND_TRANSFER_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_FUND_TRANSFER_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_FUND_TRANSFER_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_FUND_TRANSFER_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_FUND_TRANSFER_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_FUND_TRANSFER_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_FUND_TRANSFER_TRACE.TRANS_FLAG is
'交易标志';

comment on column TEST1.EP_FUND_TRANSFER_TRACE.CREDIT_ACCT_NO is
'转入帐号';

comment on column TEST1.EP_FUND_TRANSFER_TRACE.TRANS_STAT is
'订单状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_FUND_TRANSFER_TRACE.REMARK is
'备注';

/*==============================================================*/
/* Table: EP_HISTORY_ABIS_TRACE                                 */
/*==============================================================*/
create table TEST1.EP_HISTORY_ABIS_TRACE 
(
   USER_NO              VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_ACCT_NO        VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_MERCH_NO         VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   EXT_ACCT_NO          VARCHAR2(32),
   TRANS_CURR           VARCHAR2(3),
   TRANS_STAT           CHAR,
   TRANS_AMT            NUMBER(25,2),
   TRANS_FEE            NUMBER(25,2),
   ABIS_SEQ             VARCHAR2(32),
   LOG_NUMBER           VARCHAR2(32),
   SUMMONS_NUM          VARCHAR2(32),
   DC_FLAG              CHAR,
   RB_FLAG              CHAR,
   TRANS_NATURE         CHAR,
   BACKGROUND_DATE      VARCHAR2(8),
   RESP_CODE            VARCHAR2(8),
   RESP_MSG             VARCHAR2(192),
   REMARK               VARCHAR2(192),
   constraint PK_EP_HISTORY_ABIS_TRACE primary key (SYS_SEQ)
);

comment on table TEST1.EP_HISTORY_ABIS_TRACE is
'ABIS渠道流水历史表';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.TRANS_ACCT_NO is
'交易帐号';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.SYS_MERCH_NO is
'商户编号';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.MERCH_ORDERNO is
'商户订单号';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.TRANS_STAT is
'订单状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.TRANS_FEE is
'交易手续费';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.ABIS_SEQ is
'ABIS流水号';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.LOG_NUMBER is
'A系统日志号';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.SUMMONS_NUM is
'A系统传票号';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.RB_FLAG is
'红蓝标志：R、红；B、蓝';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.TRANS_NATURE is
'交易性质：1、正常；2、抹账';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.BACKGROUND_DATE is
'后台清算日期';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.EP_HISTORY_ABIS_TRACE.REMARK is
'备注信息';

/*==============================================================*/
/* Table: EP_HISTORY_B2C_TRACE                                  */
/*==============================================================*/
create table TEST1.EP_HISTORY_B2C_TRACE 
(
   USER_NO              VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_ACCT_NO        VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_MERCH_NO         VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   EXT_ACCT_NO          VARCHAR2(32),
   TRANS_CURR           VARCHAR2(3),
   TRANS_STAT           CHAR,
   TRANS_AMT            NUMBER(25,2),
   TRANS_FEE            NUMBER(25,2),
   B2C_SEQ              VARCHAR2(32),
   LOG_NUMBER           VARCHAR2(32),
   SUMMONS_NUM          VARCHAR2(32),
   DC_FLAG              CHAR,
   RB_FLAG              CHAR,
   TRANS_NATURE         CHAR,
   BACKGROUND_DATE      VARCHAR2(8),
   RESP_CODE            VARCHAR2(6),
   RESP_MSG             VARCHAR2(192),
   REMARK               VARCHAR2(192),
   constraint PK_EP_HISTORY_B2C_TRACE primary key (SYS_SEQ)
);

comment on table TEST1.EP_HISTORY_B2C_TRACE is
'B2C渠道流水';

comment on column TEST1.EP_HISTORY_B2C_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_HISTORY_B2C_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_HISTORY_B2C_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_HISTORY_B2C_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_HISTORY_B2C_TRACE.TRANS_ACCT_NO is
'交易帐号';

comment on column TEST1.EP_HISTORY_B2C_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_HISTORY_B2C_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_HISTORY_B2C_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_HISTORY_B2C_TRACE.SYS_MERCH_NO is
'商户编号';

comment on column TEST1.EP_HISTORY_B2C_TRACE.MERCH_ORDERNO is
'外部订单号';

comment on column TEST1.EP_HISTORY_B2C_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_HISTORY_B2C_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_HISTORY_B2C_TRACE.TRANS_STAT is
'订单状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_HISTORY_B2C_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_HISTORY_B2C_TRACE.TRANS_FEE is
'交易手续费';

comment on column TEST1.EP_HISTORY_B2C_TRACE.B2C_SEQ is
'B2C流水号';

comment on column TEST1.EP_HISTORY_B2C_TRACE.LOG_NUMBER is
'日志号';

comment on column TEST1.EP_HISTORY_B2C_TRACE.SUMMONS_NUM is
'传票号';

comment on column TEST1.EP_HISTORY_B2C_TRACE.DC_FLAG is
'借贷标志：1、借；2、贷';

comment on column TEST1.EP_HISTORY_B2C_TRACE.RB_FLAG is
'红蓝标志：1、红；2、蓝';

comment on column TEST1.EP_HISTORY_B2C_TRACE.TRANS_NATURE is
'交易性质：1、正常；2、抹账';

comment on column TEST1.EP_HISTORY_B2C_TRACE.BACKGROUND_DATE is
'后台清算日期';

comment on column TEST1.EP_HISTORY_B2C_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.EP_HISTORY_B2C_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.EP_HISTORY_B2C_TRACE.REMARK is
'备注信息';

/*==============================================================*/
/* Table: EP_HISTORY_BOEING_TRACE                               */
/*==============================================================*/
create table TEST1.EP_HISTORY_BOEING_TRACE 
(
   USER_NO              VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_ACCT_NO        VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_MERCH_NO         VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   EXT_ACCT_NO          VARCHAR2(32),
   TRANS_CURR           VARCHAR2(3),
   TRANS_STAT           CHAR,
   TRANS_AMT            NUMBER(25,2),
   TRANS_FEE            NUMBER(25,2),
   BOEING_SEQ           VARCHAR2(32),
   LOG_NUMBER           VARCHAR2(32),
   SUMMONS_NUM          VARCHAR2(32),
   DC_FLAG              CHAR,
   RB_FLAG              CHAR,
   TRANS_NATURE         CHAR,
   BACKGROUND_DATE      VARCHAR2(8),
   RESP_CODE            VARCHAR2(6),
   RESP_MSG             VARCHAR2(192),
   REMARK               VARCHAR2(192),
   constraint PK_EP_HISTORY_BOEING_TRACE primary key (SYS_SEQ)
);

comment on table TEST1.EP_HISTORY_BOEING_TRACE is
'BOEING渠道流水历史表';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.TRANS_ACCT_NO is
'交易帐号';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.SYS_MERCH_NO is
'商户编号';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.MERCH_ORDERNO is
'外部订单号';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.TRANS_STAT is
'订单状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.TRANS_FEE is
'交易手续费';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.BOEING_SEQ is
'BOEING流水号';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.LOG_NUMBER is
'日志号';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.SUMMONS_NUM is
'传票号';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.RB_FLAG is
'红蓝标志：R、红；B、蓝';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.TRANS_NATURE is
'交易性质：1、正常；2、抹账';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.BACKGROUND_DATE is
'后台清算日期';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.EP_HISTORY_BOEING_TRACE.REMARK is
'备注信息';

/*==============================================================*/
/* Table: EP_HISTORY_INTS_TRACE                                 */
/*==============================================================*/
create table TEST1.EP_HISTORY_INTS_TRACE 
(
   USER_NO              VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_ACCT_NO        VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_MERCH_NO         VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   EXT_ACCT_NO          VARCHAR2(32),
   TRANS_CURR           VARCHAR2(3),
   TRANS_STAT           CHAR,
   TRANS_AMT            NUMBER(25,2),
   LOG_NUMBER           VARCHAR2(32),
   SUMMONS_NUM          VARCHAR2(32),
   DC_FLAG              CHAR,
   RB_FLAG              CHAR,
   TRANS_NATURE         CHAR,
   BACKGROUND_DATE      VARCHAR2(8),
   ACCOUNTING_ENTRY     VARCHAR2(3000),
   ABIS_RESP_CODE       VARCHAR2(8),
   TRADE_SEQ            VARCHAR2(8),
   ENTRUST_DATE         VARCHAR2(8),
   REMIT_BANK_NO        VARCHAR2(16),
   TRANS_FEE            NUMBER(25,2),
   INTS_SEQ             VARCHAR2(32),
   RESP_CODE            VARCHAR2(6),
   RESP_MSG             VARCHAR2(192),
   REMARK               VARCHAR2(192),
   constraint PK_EP_HISTORY_INTS_TRACE primary key (SYS_SEQ)
);

comment on table TEST1.EP_HISTORY_INTS_TRACE is
'INTS渠道流水历史表(一体化)';

comment on column TEST1.EP_HISTORY_INTS_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_HISTORY_INTS_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_HISTORY_INTS_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_HISTORY_INTS_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_HISTORY_INTS_TRACE.TRANS_ACCT_NO is
'交易帐号';

comment on column TEST1.EP_HISTORY_INTS_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_HISTORY_INTS_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_HISTORY_INTS_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_HISTORY_INTS_TRACE.SYS_MERCH_NO is
'商户编号';

comment on column TEST1.EP_HISTORY_INTS_TRACE.MERCH_ORDERNO is
'外部订单号';

comment on column TEST1.EP_HISTORY_INTS_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_HISTORY_INTS_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_HISTORY_INTS_TRACE.TRANS_STAT is
'订单状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_HISTORY_INTS_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_HISTORY_INTS_TRACE.LOG_NUMBER is
'日志号';

comment on column TEST1.EP_HISTORY_INTS_TRACE.SUMMONS_NUM is
'传票号';

comment on column TEST1.EP_HISTORY_INTS_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_HISTORY_INTS_TRACE.RB_FLAG is
'红蓝标志：R、红；B、蓝';

comment on column TEST1.EP_HISTORY_INTS_TRACE.TRANS_NATURE is
'交易性质：1、正常；2、抹账';

comment on column TEST1.EP_HISTORY_INTS_TRACE.BACKGROUND_DATE is
'后台清算日期';

comment on column TEST1.EP_HISTORY_INTS_TRACE.ACCOUNTING_ENTRY is
'会计分录';

comment on column TEST1.EP_HISTORY_INTS_TRACE.ABIS_RESP_CODE is
'Abis应答码';

comment on column TEST1.EP_HISTORY_INTS_TRACE.TRADE_SEQ is
'支付交易序号';

comment on column TEST1.EP_HISTORY_INTS_TRACE.ENTRUST_DATE is
'委托日期';

comment on column TEST1.EP_HISTORY_INTS_TRACE.REMIT_BANK_NO is
'汇出行行号';

comment on column TEST1.EP_HISTORY_INTS_TRACE.TRANS_FEE is
'交易手续费';

comment on column TEST1.EP_HISTORY_INTS_TRACE.INTS_SEQ is
'INTS流水号';

comment on column TEST1.EP_HISTORY_INTS_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.EP_HISTORY_INTS_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.EP_HISTORY_INTS_TRACE.REMARK is
'备注信息';

/*==============================================================*/
/* Table: EP_HISTORY_ORDER_TRACE                                */
/*==============================================================*/
create table TEST1.EP_HISTORY_ORDER_TRACE 
(
   USER_NO              VARCHAR2(32),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   MERCH_NO             VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   ORG_MERCH_ORDERNO    VARCHAR2(32),
   SUB_MERCH_NO         VARCHAR2(15),
   SUB_MERCH_NAME       VARCHAR2(60),
   MERCH_DT             VARCHAR2(17),
   ORDER_OVER_DT        VARCHAR2(17),
   PAY_OVER_DT          VARCHAR2(17),
   BACK_OVER_DT         VARCHAR2(17),
   TRANS_CURR           VARCHAR2(3),
   ORDER_AMT            NUMBER(25,2),
   ORDER_FEE_AMT        NUMBER(25,2),
   SYS_FEE_AMT          NUMBER(25,2),
   BLANCE_AMT           NUMBER(25,2),
   EBANK_AMT            NUMBER(25,2),
   FASTPAY_AMT          NUMBER(25,2),
   CREDIT_AMT           NUMBER(25,2),
   ICOIN_PAY_AMT        NUMBER(25,2),
   INSTALLMENT          VARCHAR2(5),
   ORDER_STAT           CHAR,
   PAY_FLAG             CHAR(32),
   EXT_ACCT_NO          VARCHAR2(32),
   EXT_ACCT_NAME        VARCHAR2(50),
   FRONT_URL            VARCHAR2(384),
   BACK_URL             VARCHAR2(384),
   SHIPPING_ADDR        VARCHAR2(384),
   GOODS_URL            VARCHAR2(384),
   GOODS_NAME           VARCHAR2(200),
   GOODS_INFO           VARCHAR2(200),
   GOODS_TYPE           CHAR,
   REMARK               VARCHAR2(192),
   ACCOUNTING_TYPE      CHAR,
   RESP_CODE            VARCHAR2(6),
   RESP_MSG             VARCHAR2(192),
   REVERSE1             VARCHAR2(192),
   REVERSE2             VARCHAR2(192),
   constraint PK_EP_HISTORY_ORDER_TRACE primary key (SYS_SEQ)
);

comment on table TEST1.EP_HISTORY_ORDER_TRACE is
'订单流水历史表';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.MERCH_NO is
'平台商户号';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.MERCH_ORDERNO is
'商户订单号';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.ORG_MERCH_ORDERNO is
'ORG_MERCH_ORDERNO';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.SUB_MERCH_NO is
'子商户代码';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.SUB_MERCH_NAME is
'子商户名称';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.MERCH_DT is
'订单日期';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.ORDER_OVER_DT is
'订单超时时间';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.PAY_OVER_DT is
'支付超时时间';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.BACK_OVER_DT is
'退单限制时间';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.ORDER_AMT is
'订单金额';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.ORDER_FEE_AMT is
'订单手续费';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.SYS_FEE_AMT is
'平台手续费';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.BLANCE_AMT is
'余额支付金额';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.EBANK_AMT is
'网银支付金额';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.FASTPAY_AMT is
'快捷支付金额';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.CREDIT_AMT is
'信用卡支付金额';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.ICOIN_PAY_AMT is
'农银通宝币支付金额';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.INSTALLMENT is
'分期数';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.ORDER_STAT is
'订单状态：0 、成功 1、初始 2、失败 3、支付中、4状态未知、5、已退款、6、已撤销';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.PAY_FLAG is
'支付方式：1、快捷支付；2、网银支付（本行）；3、信用卡；4、余额支；5、网银支付（他行）；6、组合支付';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.EXT_ACCT_NAME is
'EXT_ACCT_NAME';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.FRONT_URL is
'前台通知地址';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.BACK_URL is
'后台通知地址';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.SHIPPING_ADDR is
'收货地址';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.GOODS_URL is
'商品URL';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.GOODS_NAME is
'商品名称';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.GOODS_INFO is
'商品信息';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.GOODS_TYPE is
'1、实体商品；2、非实体商品';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.REMARK is
'备注信息';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.ACCOUNTING_TYPE is
'账务类型：1、正常；2、抹账；3、被抹；4、冲正';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.REVERSE1 is
'保留1';

comment on column TEST1.EP_HISTORY_ORDER_TRACE.REVERSE2 is
'保留2';

/*==============================================================*/
/* Table: EP_HIS_DEPOSIT_ACCT_TRACE                             */
/*==============================================================*/
create table TEST1.EP_HIS_DEPOSIT_ACCT_TRACE 
(
   ID                   VARCHAR2(32)         not null,
   ACCT_NO              VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_SEQ              VARCHAR2(32),
   SET_DATE             VARCHAR2(8),
   DC_FLAG              CHAR,
   TRANS_CURR           VARCHAR2(3),
   TRANS_AMT            NUMBER(25,2),
   MERCH_NO             VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   IN_ACCT_NO           VARCHAR2(32),
   AB_FLAG              CHAR,
   ORIGINAL_NUM         VARCHAR2(32),
   ACCOUNTING_TYPE      CHAR,
   PLAFORM_ACCT         VARCHAR2(32),
   STATUS               CHAR,
   REMARK               VARCHAR2(200),
   FEE_AMT              NUMBER(25,2),
   constraint PK_EP_HIS_DEPOSIT_ACCT_TRACE primary key (ID)
);

comment on table TEST1.EP_HIS_DEPOSIT_ACCT_TRACE is
'沉淀账户流水历史表';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.ID is
'ID';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.TRANS_CURR is
'交易币种';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.MERCH_NO is
'商户号';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.MERCH_ORDERNO is
'商户订单号';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.IN_ACCT_NO is
'贷方帐号';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.AB_FLAG is
'AB标志：A或者B';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.ORIGINAL_NUM is
'原日志号';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.ACCOUNTING_TYPE is
'交易性质：1、正常；2、抹账；3、被抹';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.PLAFORM_ACCT is
'平台账号';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.STATUS is
'交易状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.REMARK is
'备注';

comment on column TEST1.EP_HIS_DEPOSIT_ACCT_TRACE.FEE_AMT is
'手续费金额';

/*==============================================================*/
/* Table: EP_HIS_MARKET_TRACE                                   */
/*==============================================================*/
create table TEST1.EP_HIS_MARKET_TRACE 
(
   USER_NO              VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_ACCT_NO        VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_MERCH_NO         VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   EXT_ACCT_NO          VARCHAR2(32),
   TRANS_CURR           VARCHAR2(3),
   TRANS_STAT           CHAR,
   TRANS_AMT            NUMBER(25,2),
   TRANS_FEE            NUMBER(25,2),
   MARKET_SEQ           VARCHAR2(32),
   LOG_NUMBER           VARCHAR2(32),
   SUMMONS_NUM          VARCHAR2(32),
   DC_FLAG              CHAR,
   RB_FLAG              CHAR,
   TRANS_NATURE         CHAR,
   BACKGROUND_DATE      VARCHAR2(8),
   RESP_CODE            VARCHAR2(6),
   RESP_MSG             VARCHAR2(192),
   REMARK               VARCHAR2(192),
   constraint PK_EP_HIS_MARKET_TRACE primary key (SYS_SEQ)
);

comment on table TEST1.EP_HIS_MARKET_TRACE is
'交易市场渠道流水';

comment on column TEST1.EP_HIS_MARKET_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_HIS_MARKET_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_HIS_MARKET_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_HIS_MARKET_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_HIS_MARKET_TRACE.TRANS_ACCT_NO is
'交易帐号';

comment on column TEST1.EP_HIS_MARKET_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_HIS_MARKET_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_HIS_MARKET_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_HIS_MARKET_TRACE.SYS_MERCH_NO is
'商户编号';

comment on column TEST1.EP_HIS_MARKET_TRACE.MERCH_ORDERNO is
'外部订单号';

comment on column TEST1.EP_HIS_MARKET_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_HIS_MARKET_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_HIS_MARKET_TRACE.TRANS_STAT is
'订单状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_HIS_MARKET_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_HIS_MARKET_TRACE.TRANS_FEE is
'交易手续费';

comment on column TEST1.EP_HIS_MARKET_TRACE.MARKET_SEQ is
'交易市场流水号';

comment on column TEST1.EP_HIS_MARKET_TRACE.LOG_NUMBER is
'日志号';

comment on column TEST1.EP_HIS_MARKET_TRACE.SUMMONS_NUM is
'传票号';

comment on column TEST1.EP_HIS_MARKET_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_HIS_MARKET_TRACE.RB_FLAG is
'红蓝标志：R、红；B、蓝';

comment on column TEST1.EP_HIS_MARKET_TRACE.TRANS_NATURE is
'交易性质：1、正常；2、抹账';

comment on column TEST1.EP_HIS_MARKET_TRACE.BACKGROUND_DATE is
'后台清算日期';

comment on column TEST1.EP_HIS_MARKET_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.EP_HIS_MARKET_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.EP_HIS_MARKET_TRACE.REMARK is
'备注信息';

/*==============================================================*/
/* Table: EP_ICOIN_TRACE                                        */
/*==============================================================*/
create table TEST1.EP_ICOIN_TRACE 
(
   USER_NO              VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   TRANS_ACCT_NO        VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   MERCH_NO             VARCHAR2(15),
   MERCH_BILLNO         VARCHAR2(48),
   EXT_ACCT_NO          VARCHAR2(32),
   TRANS_CURR           VARCHAR2(3),
   TRANS_STAT           CHAR,
   POINTS_AMT           NUMBER(25,2),
   REMARK               VARCHAR2(192),
   constraint PK_EP_ICOIN_TRACE primary key (SYS_SEQ)
);

comment on table TEST1.EP_ICOIN_TRACE is
'积分流水表';

comment on column TEST1.EP_ICOIN_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_ICOIN_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_ICOIN_TRACE.TRANS_ACCT_NO is
'交易帐号';

comment on column TEST1.EP_ICOIN_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_ICOIN_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_ICOIN_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_ICOIN_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_ICOIN_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_ICOIN_TRACE.MERCH_NO is
'商户编号';

comment on column TEST1.EP_ICOIN_TRACE.MERCH_BILLNO is
'商户订单号';

comment on column TEST1.EP_ICOIN_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_ICOIN_TRACE.TRANS_CURR is
'交易币种：RMB、EUR、USD';

comment on column TEST1.EP_ICOIN_TRACE.TRANS_STAT is
'交易状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_ICOIN_TRACE.POINTS_AMT is
'积分余额';

comment on column TEST1.EP_ICOIN_TRACE.REMARK is
'备注';

/*==============================================================*/
/* Table: EP_IGOAL                                              */
/*==============================================================*/
create table TEST1.EP_IGOAL 
(
   OGIT_PRV             VARCHAR2(2)          not null,
   OGIT_IGOAL           VARCHAR2(4)          not null,
   OGIT_PRVNAME         VARCHAR2(80),
   constraint PK_EP_IGOAL primary key (OGIT_PRV)
);

comment on table TEST1.EP_IGOAL is
'EP_IGOAL';

comment on column TEST1.EP_IGOAL.OGIT_PRV is
'OGIT_PRV';

comment on column TEST1.EP_IGOAL.OGIT_IGOAL is
'OGIT_IGOAL';

comment on column TEST1.EP_IGOAL.OGIT_PRVNAME is
'OGIT_PRVNAME';

/*==============================================================*/
/* Table: EP_INTS_TRACE                                         */
/*==============================================================*/
create table TEST1.EP_INTS_TRACE 
(
   USER_NO              VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_ACCT_NO        VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_MERCH_NO         VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   EXT_ACCT_NO          VARCHAR2(32),
   TRANS_CURR           VARCHAR2(3),
   TRANS_STAT           CHAR,
   TRANS_AMT            NUMBER(25,2),
   LOG_NUMBER           VARCHAR2(32),
   SUMMONS_NUM          VARCHAR2(32),
   DC_FLAG              CHAR,
   RB_FLAG              CHAR,
   TRANS_NATURE         CHAR,
   BACKGROUND_DATE      VARCHAR2(8),
   ACCOUNTING_ENTRY     VARCHAR2(3000),
   ABIS_RESP_CODE       VARCHAR2(8),
   TRADE_SEQ            VARCHAR2(8),
   ENTRUST_DATE         VARCHAR2(8),
   REMIT_BANK_NO        VARCHAR2(16),
   TRANS_FEE            NUMBER(25,2),
   INTS_SEQ             VARCHAR2(32),
   RESP_CODE            VARCHAR2(6),
   RESP_MSG             VARCHAR2(192),
   REMARK               VARCHAR2(192),
   constraint PK_EP_INTS_TRACE primary key (SYS_SEQ)
)
partition by range (TRANS_DATE)(
	partition PP201401 values less than ('20140201') tablespace P201401,
	partition PP201402 values less than ('20140301') tablespace P201402,
	partition PP201403 values less than ('20140401') tablespace P201403,
	partition PP201404 values less than ('20140501') tablespace P201404,
	partition PP201405 values less than ('20140601') tablespace P201405,
	partition PP201406 values less than ('20140701') tablespace P201406,
	partition PP201407 values less than ('20140801') tablespace P201407,
	partition PP201408 values less than ('20140901') tablespace P201408,
	partition PP201409 values less than ('20141001') tablespace P201409,
	partition PP201410 values less than ('20141101') tablespace P201410,
	partition PP201411 values less than ('20141201') tablespace P201411,
	partition PP201412 values less than ('99999999') tablespace P201412
);

comment on table TEST1.EP_INTS_TRACE is
'INTS渠道流水（一体化）';

comment on column TEST1.EP_INTS_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_INTS_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_INTS_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_INTS_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_INTS_TRACE.TRANS_ACCT_NO is
'交易帐号';

comment on column TEST1.EP_INTS_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_INTS_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_INTS_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_INTS_TRACE.SYS_MERCH_NO is
'商户编号';

comment on column TEST1.EP_INTS_TRACE.MERCH_ORDERNO is
'外部订单号';

comment on column TEST1.EP_INTS_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_INTS_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_INTS_TRACE.TRANS_STAT is
'订单状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_INTS_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_INTS_TRACE.LOG_NUMBER is
'日志号';

comment on column TEST1.EP_INTS_TRACE.SUMMONS_NUM is
'传票号';

comment on column TEST1.EP_INTS_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_INTS_TRACE.RB_FLAG is
'红蓝标志：R、红；B、蓝';

comment on column TEST1.EP_INTS_TRACE.TRANS_NATURE is
'交易性质：1、正常；2、抹账';

comment on column TEST1.EP_INTS_TRACE.BACKGROUND_DATE is
'后台清算日期';

comment on column TEST1.EP_INTS_TRACE.ACCOUNTING_ENTRY is
'会计分录';

comment on column TEST1.EP_INTS_TRACE.ABIS_RESP_CODE is
'Abis应答码';

comment on column TEST1.EP_INTS_TRACE.TRADE_SEQ is
'支付交易序号';

comment on column TEST1.EP_INTS_TRACE.ENTRUST_DATE is
'委托日期';

comment on column TEST1.EP_INTS_TRACE.REMIT_BANK_NO is
'汇出行行号';

comment on column TEST1.EP_INTS_TRACE.TRANS_FEE is
'交易手续费';

comment on column TEST1.EP_INTS_TRACE.INTS_SEQ is
'INTS流水号';

comment on column TEST1.EP_INTS_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.EP_INTS_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.EP_INTS_TRACE.REMARK is
'备注信息';

/*==============================================================*/
/* Table: EP_MARKET_TRACE                                       */
/*==============================================================*/
create table TEST1.EP_MARKET_TRACE 
(
   USER_NO              VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_ACCT_NO        VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_MERCH_NO         VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   EXT_ACCT_NO          VARCHAR2(32),
   TRANS_CURR           VARCHAR2(3),
   TRANS_STAT           CHAR,
   TRANS_AMT            NUMBER(25,2),
   TRANS_FEE            NUMBER(25,2),
   MARKET_SEQ           VARCHAR2(32),
   LOG_NUMBER           VARCHAR2(32),
   SUMMONS_NUM          VARCHAR2(32),
   DC_FLAG              CHAR,
   RB_FLAG              CHAR,
   TRANS_NATURE         CHAR,
   BACKGROUND_DATE      VARCHAR2(8),
   RESP_CODE            VARCHAR2(6),
   RESP_MSG             VARCHAR2(192),
   REMARK               VARCHAR2(192),
   constraint PK_EP_MARKET_TRACE primary key (SYS_SEQ)
)
partition by range (TRANS_DATE)(
	partition PP201401 values less than ('20140201') tablespace P201401,
	partition PP201402 values less than ('20140301') tablespace P201402,
	partition PP201403 values less than ('20140401') tablespace P201403,
	partition PP201404 values less than ('20140501') tablespace P201404,
	partition PP201405 values less than ('20140601') tablespace P201405,
	partition PP201406 values less than ('20140701') tablespace P201406,
	partition PP201407 values less than ('20140801') tablespace P201407,
	partition PP201408 values less than ('20140901') tablespace P201408,
	partition PP201409 values less than ('20141001') tablespace P201409,
	partition PP201410 values less than ('20141101') tablespace P201410,
	partition PP201411 values less than ('20141201') tablespace P201411,
	partition PP201412 values less than ('99999999') tablespace P201412
);
comment on table TEST1.EP_MARKET_TRACE is
'INTS渠道流水（一体化）';

comment on column TEST1.EP_MARKET_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_MARKET_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_MARKET_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_MARKET_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_MARKET_TRACE.TRANS_ACCT_NO is
'交易帐号';

comment on column TEST1.EP_MARKET_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_MARKET_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_MARKET_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_MARKET_TRACE.SYS_MERCH_NO is
'商户编号';

comment on column TEST1.EP_MARKET_TRACE.MERCH_ORDERNO is
'外部订单号';

comment on column TEST1.EP_MARKET_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_MARKET_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_MARKET_TRACE.TRANS_STAT is
'订单状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_MARKET_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_MARKET_TRACE.TRANS_FEE is
'交易手续费';

comment on column TEST1.EP_MARKET_TRACE.MARKET_SEQ is
'交易市场流水号';

comment on column TEST1.EP_MARKET_TRACE.LOG_NUMBER is
'日志号';

comment on column TEST1.EP_MARKET_TRACE.SUMMONS_NUM is
'传票号';

comment on column TEST1.EP_MARKET_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_MARKET_TRACE.RB_FLAG is
'红蓝标志：R、红；B、蓝';

comment on column TEST1.EP_MARKET_TRACE.TRANS_NATURE is
'交易性质：1、正常；2、抹账';

comment on column TEST1.EP_MARKET_TRACE.BACKGROUND_DATE is
'后台清算日期';

comment on column TEST1.EP_MARKET_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.EP_MARKET_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.EP_MARKET_TRACE.REMARK is
'备注信息';

/*==============================================================*/
/* Table: EP_MERCHANTS                                          */
/*==============================================================*/
create table TEST1.EP_MERCHANTS 
(
   MERCH_NO             VARCHAR2(15)         not null,
   MERCH_NAME           VARCHAR2(96),
   MERCH_ADDR           VARCHAR2(192),
   RATE_NO              NUMBER,
   MANAGER              VARCHAR2(25),
   PHONE                VARCHAR2(30),
   EMAIL                VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   BANK_NO              VARCHAR2(32),
   MERCH_STATUS         CHAR                 not null,
   REVERSE1             VARCHAR2(48),
   REVERSE2             VARCHAR2(48),
   KEY                  VARCHAR2(1600),
   PAY_METHOD           VARCHAR2(16),
   constraint PK_EP_MERCHANTS primary key (MERCH_NO)
);

comment on table TEST1.EP_MERCHANTS is
'商户信息表';

comment on column TEST1.EP_MERCHANTS.MERCH_NO is
'商户号';

comment on column TEST1.EP_MERCHANTS.MERCH_NAME is
'商户名称';

comment on column TEST1.EP_MERCHANTS.MERCH_ADDR is
'商户地址';

comment on column TEST1.EP_MERCHANTS.RATE_NO is
'商户费率策略';

comment on column TEST1.EP_MERCHANTS.MANAGER is
'负责人姓名';

comment on column TEST1.EP_MERCHANTS.PHONE is
'联系电话';

comment on column TEST1.EP_MERCHANTS.EMAIL is
'电子邮箱';

comment on column TEST1.EP_MERCHANTS.ACCT_NO is
'虚拟账户号';

comment on column TEST1.EP_MERCHANTS.BANK_NO is
'实体账户号';

comment on column TEST1.EP_MERCHANTS.MERCH_STATUS is
'商户状态：0、正常 ；1、关闭 ；2、测试中； 3、 维护中 ；4、已销户';

comment on column TEST1.EP_MERCHANTS.REVERSE1 is
'保留';

comment on column TEST1.EP_MERCHANTS.REVERSE2 is
'保留2';

comment on column TEST1.EP_MERCHANTS.KEY is
'商户key';

comment on column TEST1.EP_MERCHANTS.PAY_METHOD is
'支付方式';

/*==============================================================*/
/* Table: EP_MERCH_RATE                                         */
/*==============================================================*/
create table TEST1.EP_MERCH_RATE 
(
   RATE_NO              NUMBER               not null,
   FIR_MODE             NUMBER,
   SEC_MODE             NUMBER,
   FEE_RATE             NUMBER(24,2),
   FEE_AMT              NUMBER(24,2),
   FEE_MAX              NUMBER(24,2),
   FEE_MIN              NUMBER(24,2),
   BEG_DATE             VARCHAR2(8),
   END_DATE             VARCHAR2(8),
   DEFAULT_RATE         NUMBER(24,2),
   DEFAULT_AMT          NUMBER(24,2),
   DEFAULT_MAX          NUMBER(24,2),
   DEFAULT_MIN          NUMBER(24,2),
   FIX_VALUE            NUMBER,
   CHG_CYCLE            NUMBER,
   EXTENT_SET           VARCHAR2(150),
   REVERSE1             VARCHAR2(150),
   REVERSE2             VARCHAR2(150),
   constraint PK_EP_MERCH_RATE primary key (RATE_NO)
);

comment on table TEST1.EP_MERCH_RATE is
'商户费率表';

comment on column TEST1.EP_MERCH_RATE.RATE_NO is
'策略号码';

comment on column TEST1.EP_MERCH_RATE.FIR_MODE is
'收费模式';

comment on column TEST1.EP_MERCH_RATE.SEC_MODE is
'收费辅助模式';

comment on column TEST1.EP_MERCH_RATE.FEE_RATE is
'优惠收费比率';

comment on column TEST1.EP_MERCH_RATE.FEE_AMT is
'优惠单笔收费金额';

comment on column TEST1.EP_MERCH_RATE.FEE_MAX is
'优惠单笔收费金额上限';

comment on column TEST1.EP_MERCH_RATE.FEE_MIN is
'优惠单笔收费金额下限';

comment on column TEST1.EP_MERCH_RATE.BEG_DATE is
'优惠开始日期';

comment on column TEST1.EP_MERCH_RATE.END_DATE is
'优惠结束日期';

comment on column TEST1.EP_MERCH_RATE.DEFAULT_RATE is
'收费比率';

comment on column TEST1.EP_MERCH_RATE.DEFAULT_AMT is
'单笔收费金额';

comment on column TEST1.EP_MERCH_RATE.DEFAULT_MAX is
'单笔收费金额上限';

comment on column TEST1.EP_MERCH_RATE.DEFAULT_MIN is
'单笔收费金额下限';

comment on column TEST1.EP_MERCH_RATE.FIX_VALUE is
'包月,包季固定额或者上限金额';

comment on column TEST1.EP_MERCH_RATE.CHG_CYCLE is
'收费周期';

comment on column TEST1.EP_MERCH_RATE.EXTENT_SET is
'汇划区间设定';

comment on column TEST1.EP_MERCH_RATE.REVERSE1 is
'备用1';

comment on column TEST1.EP_MERCH_RATE.REVERSE2 is
'备用2';

/*==============================================================*/
/* Table: EP_MISTAKE                                            */
/*==============================================================*/
create table TEST1.EP_MISTAKE 
(
   SYS_SEQ              VARCHAR2(32)         not null,
   TYPE                 CHAR(2),
   IS_DEAL              CHAR,
   DEAL_NAME            VARCHAR2(32),
   DEAL_TIME            VARCHAR2(17),
   CREATE_TIME          VARCHAR2(32),
   DEAL_DES             VARCHAR2(200),
   constraint PK_EP_MISTAKE primary key (SYS_SEQ)
);

comment on table TEST1.EP_MISTAKE is
'差错表';

comment on column TEST1.EP_MISTAKE.SYS_SEQ is
'SYS_SEQ';

comment on column TEST1.EP_MISTAKE.TYPE is
'差错类型：
00、已对账
99、未对账
11、渠道流水有记录，对账没有记录
12、渠道流水没有记录，对账文件有记录
13、渠道流水的金额与对账文件金额对不上
14、渠道流水成功对账文件失败
15、渠道流水失败对账文件成功
16、系统自动差错处理失败
17、订单流水成功，渠道流水不存在';

comment on column TEST1.EP_MISTAKE.IS_DEAL is
'是否已处理：0、是；1、否';

comment on column TEST1.EP_MISTAKE.DEAL_NAME is
'DEAL_NAME';

comment on column TEST1.EP_MISTAKE.DEAL_TIME is
'DEAL_TIME';

comment on column TEST1.EP_MISTAKE.CREATE_TIME is
'CREATE_TIME';

comment on column TEST1.EP_MISTAKE.DEAL_DES is
'DEAL_DES';

/*==============================================================*/
/* Table: EP_MISTAKE_RECORD                                     */
/*==============================================================*/
create table TEST1.EP_MISTAKE_RECORD 
(
   ID                   VARCHAR2(32)         not null,
   MISTAKE_TYPE         CHAR(2)              not null,
   DEAL_TIME            CHAR(17)             not null,
   SYS_SEQ              VARCHAR2(32),
   SET_DATE             CHAR(8),
   DEAL_STATUS          CHAR,
   DEAL_TYPE            CHAR(2),
   constraint PK_EP_MISTAKE_RECORD primary key (ID)
);

comment on table TEST1.EP_MISTAKE_RECORD is
'差错处理记录表';

comment on column TEST1.EP_MISTAKE_RECORD.ID is
'主键ID';

comment on column TEST1.EP_MISTAKE_RECORD.MISTAKE_TYPE is
'差错类型';

comment on column TEST1.EP_MISTAKE_RECORD.DEAL_TIME is
'处理时间';

comment on column TEST1.EP_MISTAKE_RECORD.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_MISTAKE_RECORD.SET_DATE is
'清算日期';

comment on column TEST1.EP_MISTAKE_RECORD.DEAL_STATUS is
'处理状态：0、处理成功；1、处理失败';

comment on column TEST1.EP_MISTAKE_RECORD.DEAL_TYPE is
'处理类型：01、调账；02、抹账；03、冲正';

/*==============================================================*/
/* Table: EP_ORDER_LIST                                         */
/*==============================================================*/
create table TEST1.EP_ORDER_LIST 
(
   ID                   VARCHAR2(32)         not null,
   SYS_SEQ              VARCHAR2(32),
   OUT_ACCT_NO          VARCHAR2(32),
   IN_ACCT_NO           VARCHAR2(32),
   SET_DATE             VARCHAR2(8),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   MERCH_NO             VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   ORG_SYS_SEQ          VARCHAR2(32),
   ORDER_AMT            NUMBER(25,2),
   TRAN_STAT            CHAR,
   GOODS_NAME           VARCHAR2(250),
   PROJ_PAY_DETAIL      VARCHAR2(32),
   PROJ_INFO            VARCHAR2(32),
   SUBSCREC             VARCHAR2(32),
   REVERSE1             VARCHAR2(32),
   constraint PK_EP_ORDER_LIST primary key (ID)
);

comment on table TEST1.EP_ORDER_LIST is
'订单明细表';

comment on column TEST1.EP_ORDER_LIST.ID is
'ID';

comment on column TEST1.EP_ORDER_LIST.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_ORDER_LIST.OUT_ACCT_NO is
'OUT_ACCT_NO';

comment on column TEST1.EP_ORDER_LIST.IN_ACCT_NO is
'IN_ACCT_NO';

comment on column TEST1.EP_ORDER_LIST.SET_DATE is
'清算日期';

comment on column TEST1.EP_ORDER_LIST.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_ORDER_LIST.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_ORDER_LIST.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_ORDER_LIST.MERCH_NO is
'平台商户号';

comment on column TEST1.EP_ORDER_LIST.MERCH_ORDERNO is
'商户订单号';

comment on column TEST1.EP_ORDER_LIST.ORG_SYS_SEQ is
'ORG_SYS_SEQ';

comment on column TEST1.EP_ORDER_LIST.ORDER_AMT is
'订单金额';

comment on column TEST1.EP_ORDER_LIST.TRAN_STAT is
'TRAN_STAT';

comment on column TEST1.EP_ORDER_LIST.GOODS_NAME is
'GOODS_NAME';

comment on column TEST1.EP_ORDER_LIST.PROJ_PAY_DETAIL is
'PROJ_PAY_DETAIL';

comment on column TEST1.EP_ORDER_LIST.PROJ_INFO is
'PROJ_INFO';

comment on column TEST1.EP_ORDER_LIST.SUBSCREC is
'SUBSCREC';

comment on column TEST1.EP_ORDER_LIST.REVERSE1 is
'REVERSE1';

/*==============================================================*/
/* Table: EP_ORDER_TRACE                                        */
/*==============================================================*/
create table TEST1.EP_ORDER_TRACE 
(
   USER_NO              VARCHAR2(32),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   MERCH_NO             VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   ORG_MERCH_ORDERNO    VARCHAR2(32),
   SUB_MERCH_NO         VARCHAR2(15),
   SUB_MERCH_NAME       VARCHAR2(60),
   MERCH_DT             VARCHAR2(17),
   ORDER_OVER_DT        VARCHAR2(17),
   PAY_OVER_DT          VARCHAR2(17),
   BACK_OVER_DT         VARCHAR2(17),
   TRANS_CURR           VARCHAR2(3),
   ORDER_AMT            NUMBER(25,2),
   ORDER_FEE_AMT        NUMBER(25,2),
   SYS_FEE_AMT          NUMBER(25,2),
   BLANCE_AMT           NUMBER(25,2),
   EBANK_AMT            NUMBER(25,2),
   FASTPAY_AMT          NUMBER(25,2),
   CREDIT_AMT           NUMBER(25,2),
   ICOIN_PAY_AMT        NUMBER(25,2),
   INSTALLMENT          VARCHAR2(5),
   ORDER_STAT           CHAR,
   PAY_FLAG             CHAR(32),
   EXT_ACCT_NO          VARCHAR2(32),
   EXT_ACCT_NAME        VARCHAR2(50),
   FRONT_URL            VARCHAR2(384),
   BACK_URL             VARCHAR2(384),
   SHIPPING_ADDR        VARCHAR2(384),
   GOODS_URL            VARCHAR2(384),
   GOODS_NAME           VARCHAR2(200),
   GOODS_INFO           VARCHAR2(200),
   GOODS_TYPE           CHAR,
   REMARK               VARCHAR2(192),
   ACCOUNTING_TYPE      CHAR,
   RESP_CODE            VARCHAR2(6),
   RESP_MSG             VARCHAR2(192),
   REVERSE1             VARCHAR2(192),
   REVERSE2             VARCHAR2(192),
   constraint PK_EP_ORDER_TRACE primary key (SYS_SEQ)
)
partition by range (TRANS_DATE)(
	partition PP201401 values less than ('20140201') tablespace P201401,
	partition PP201402 values less than ('20140301') tablespace P201402,
	partition PP201403 values less than ('20140401') tablespace P201403,
	partition PP201404 values less than ('20140501') tablespace P201404,
	partition PP201405 values less than ('20140601') tablespace P201405,
	partition PP201406 values less than ('20140701') tablespace P201406,
	partition PP201407 values less than ('20140801') tablespace P201407,
	partition PP201408 values less than ('20140901') tablespace P201408,
	partition PP201409 values less than ('20141001') tablespace P201409,
	partition PP201410 values less than ('20141101') tablespace P201410,
	partition PP201411 values less than ('20141201') tablespace P201411,
	partition PP201412 values less than ('99999999') tablespace P201412
);

comment on table TEST1.EP_ORDER_TRACE is
'订单流水表';

comment on column TEST1.EP_ORDER_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_ORDER_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_ORDER_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_ORDER_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_ORDER_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_ORDER_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_ORDER_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_ORDER_TRACE.MERCH_NO is
'平台商户号';

comment on column TEST1.EP_ORDER_TRACE.MERCH_ORDERNO is
'商户订单号';

comment on column TEST1.EP_ORDER_TRACE.ORG_MERCH_ORDERNO is
'原商户订单号';

comment on column TEST1.EP_ORDER_TRACE.SUB_MERCH_NO is
'子商户代码';

comment on column TEST1.EP_ORDER_TRACE.SUB_MERCH_NAME is
'子商户名称';

comment on column TEST1.EP_ORDER_TRACE.MERCH_DT is
'订单日期';

comment on column TEST1.EP_ORDER_TRACE.ORDER_OVER_DT is
'订单超时时间';

comment on column TEST1.EP_ORDER_TRACE.PAY_OVER_DT is
'支付超时时间';

comment on column TEST1.EP_ORDER_TRACE.BACK_OVER_DT is
'退单限制时间';

comment on column TEST1.EP_ORDER_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_ORDER_TRACE.ORDER_AMT is
'订单金额';

comment on column TEST1.EP_ORDER_TRACE.ORDER_FEE_AMT is
'订单手续费';

comment on column TEST1.EP_ORDER_TRACE.SYS_FEE_AMT is
'平台手续费';

comment on column TEST1.EP_ORDER_TRACE.BLANCE_AMT is
'余额支付金额';

comment on column TEST1.EP_ORDER_TRACE.EBANK_AMT is
'网银支付金额';

comment on column TEST1.EP_ORDER_TRACE.FASTPAY_AMT is
'快捷支付金额';

comment on column TEST1.EP_ORDER_TRACE.CREDIT_AMT is
'信用卡支付金额';

comment on column TEST1.EP_ORDER_TRACE.ICOIN_PAY_AMT is
'农银通宝币支付金额';

comment on column TEST1.EP_ORDER_TRACE.INSTALLMENT is
'分期数';

comment on column TEST1.EP_ORDER_TRACE.ORDER_STAT is
'订单状态：0 、成功 1、初始 2、失败 3、支付中、4状态未知、5、已退款、6、已撤销
；7、农银通币支付成功；8、余额支付成功';

comment on column TEST1.EP_ORDER_TRACE.PAY_FLAG is
'第X位的解释：0、我行账户(0-为我行账户，1-为他行账户）
1、快捷支付
2、网银支付
3、信用卡支付
4、信用卡分期支付
5、 对公账户支付
6、余额支付
7、积分支付
8-31：保留';

comment on column TEST1.EP_ORDER_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_ORDER_TRACE.EXT_ACCT_NAME is
'EXT_ACCT_NAME';

comment on column TEST1.EP_ORDER_TRACE.FRONT_URL is
'前台通知地址';

comment on column TEST1.EP_ORDER_TRACE.BACK_URL is
'后台通知地址';

comment on column TEST1.EP_ORDER_TRACE.SHIPPING_ADDR is
'收货地址';

comment on column TEST1.EP_ORDER_TRACE.GOODS_URL is
'商品URL';

comment on column TEST1.EP_ORDER_TRACE.GOODS_NAME is
'商品名称';

comment on column TEST1.EP_ORDER_TRACE.GOODS_INFO is
'商品信息';

comment on column TEST1.EP_ORDER_TRACE.GOODS_TYPE is
'1、非实体商品；2、实体商品';

comment on column TEST1.EP_ORDER_TRACE.REMARK is
'备注信息';

comment on column TEST1.EP_ORDER_TRACE.ACCOUNTING_TYPE is
'账务类型：1、正常；2、抹账；3、被抹；4、冲正';

comment on column TEST1.EP_ORDER_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.EP_ORDER_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.EP_ORDER_TRACE.REVERSE1 is
'保留1';

comment on column TEST1.EP_ORDER_TRACE.REVERSE2 is
'保留2';

/*==============================================================*/
/* Table: EP_PAY_SECURE                                         */
/*==============================================================*/
create table TEST1.EP_PAY_SECURE 
(
   ID                   VARCHAR2(32)         not null,
   ACCT_NO              VARCHAR2(32),
   SMS_NOTICE_FLAG      CHAR,
   MAIL_NOTICE_FLAG     CHAR,
   ACCT_SEC_LEV         CHAR,
   IS_EMAIL_CHECK       CHAR,
   IS_PHONE_CHECK       CHAR,
   IS_CARD_CHECK        CHAR,
   SEC_LEV1             NUMBER,
   SEC_LEV1_MAX_AMT     NUMBER(25,2),
   SEC_LEV2             NUMBER,
   SEC_LEV2_MAX_AMT     NUMBER(25,2),
   SEC_LEV3             NUMBER,
   SEC_LEV3_MAX_AMT     NUMBER(25,2),
   SEC_LEV4             NUMBER,
   SEC_LEV4_MAX_AMT     NUMBER(25,2),
   SEC_LEV5             NUMBER,
   SEC_LEV5_MAX_AMT     NUMBER(25,2),
   constraint PK_EP_PAY_SECURE primary key (ID)
);

comment on table TEST1.EP_PAY_SECURE is
'支付安全设置表';

comment on column TEST1.EP_PAY_SECURE.ID is
'ID';

comment on column TEST1.EP_PAY_SECURE.ACCT_NO is
'账号';

comment on column TEST1.EP_PAY_SECURE.SMS_NOTICE_FLAG is
'短信通知：0、是；1、否';

comment on column TEST1.EP_PAY_SECURE.MAIL_NOTICE_FLAG is
'邮件通知';

comment on column TEST1.EP_PAY_SECURE.ACCT_SEC_LEV is
'账户安全等级';

comment on column TEST1.EP_PAY_SECURE.IS_EMAIL_CHECK is
'是否绑定email  0、是；1、否';

comment on column TEST1.EP_PAY_SECURE.IS_PHONE_CHECK is
'是否绑定手机  0、是；1、否';

comment on column TEST1.EP_PAY_SECURE.IS_CARD_CHECK is
'是否绑定银行卡 0、是；1、否';

comment on column TEST1.EP_PAY_SECURE.SEC_LEV1 is
'安全等级1';

comment on column TEST1.EP_PAY_SECURE.SEC_LEV1_MAX_AMT is
'最大限额';

comment on column TEST1.EP_PAY_SECURE.SEC_LEV2 is
'安全等级2';

comment on column TEST1.EP_PAY_SECURE.SEC_LEV2_MAX_AMT is
'最大限额2';

comment on column TEST1.EP_PAY_SECURE.SEC_LEV3 is
'安全等级3';

comment on column TEST1.EP_PAY_SECURE.SEC_LEV3_MAX_AMT is
'最大限额3';

comment on column TEST1.EP_PAY_SECURE.SEC_LEV4 is
'安全等级4';

comment on column TEST1.EP_PAY_SECURE.SEC_LEV4_MAX_AMT is
'最大限额4';

comment on column TEST1.EP_PAY_SECURE.SEC_LEV5 is
'安全等级5';

comment on column TEST1.EP_PAY_SECURE.SEC_LEV5_MAX_AMT is
'最大限额5';

/*==============================================================*/
/* Table: EP_PROVINCE                                           */
/*==============================================================*/
create table TEST1.EP_PROVINCE 
(
   PROVINCE_NO          VARCHAR2(2),
   PROVINCE_NAME        VARCHAR2(150),
   CITY_CODE            VARCHAR2(4),
   CITY_NAME            VARCHAR2(150),
   CITY_NO              VARCHAR2(4)
);

comment on table TEST1.EP_PROVINCE is
'跨行实时省市代码表';

comment on column TEST1.EP_PROVINCE.PROVINCE_NO is
'省代码';

comment on column TEST1.EP_PROVINCE.PROVINCE_NAME is
'省名称';

comment on column TEST1.EP_PROVINCE.CITY_CODE is
'城市代码';

comment on column TEST1.EP_PROVINCE.CITY_NAME is
'城市名称';

comment on column TEST1.EP_PROVINCE.CITY_NO is
'城市号';

/*==============================================================*/
/* Table: EP_QUICK_PAY_SIGN                                     */
/*==============================================================*/
create table TEST1.EP_QUICK_PAY_SIGN 
(
   ID                   VARCHAR2(32)         not null,
   ACCT_NO              VARCHAR2(32),
   BANK_NO              VARCHAR2(32),
   ACCT_TYPE            VARCHAR2(3),
   ACCT_NAME            VARCHAR2(50),
   BANK_CLASS           VARCHAR2(32),
   REGISTER_NO          VARCHAR2(20),
   PROVINCE_NO          VARCHAR2(6),
   OPEN_INST1           VARCHAR2(20),
   OPEN_INST2           VARCHAR2(40),
   SET_CENTER_NO        VARCHAR2(20),
   CUSTOM_ID            VARCHAR2(20),
   EXPIRY_DATE          VARCHAR2(8),
   INST_CODE            VARCHAR2(40),
   INST_NAME            VARCHAR2(100),
   CVV2                 VARCHAR2(3),
   SIGN_FLAG            CHAR,
   IDENT_TYPE           VARCHAR2(3),
   IDENT_NO             VARCHAR2(32),
   PHONE_NO             VARCHAR2(12),
   IS_IDENT_CHECK       CHAR,
   IS_NAME_CHECK        CHAR,
   IS_PHONE_CHECK       CHAR,
   CLOSE_RESN           VARCHAR2(75),
   CREATE_TS            VARCHAR2(17),
   UPDATE_TS            VARCHAR2(17),
   constraint PK_EP_QUICK_PAY_SIGN primary key (ID)
);

comment on table TEST1.EP_QUICK_PAY_SIGN is
'快捷支付签约表';

comment on column TEST1.EP_QUICK_PAY_SIGN.ID is
'ID';

comment on column TEST1.EP_QUICK_PAY_SIGN.ACCT_NO is
'账号';

comment on column TEST1.EP_QUICK_PAY_SIGN.BANK_NO is
'银行帐号';

comment on column TEST1.EP_QUICK_PAY_SIGN.ACCT_TYPE is
'账户类型';

comment on column TEST1.EP_QUICK_PAY_SIGN.ACCT_NAME is
'账户姓名';

comment on column TEST1.EP_QUICK_PAY_SIGN.BANK_CLASS is
'银行行别';

comment on column TEST1.EP_QUICK_PAY_SIGN.REGISTER_NO is
'注册所号';

comment on column TEST1.EP_QUICK_PAY_SIGN.PROVINCE_NO is
'省市代码';

comment on column TEST1.EP_QUICK_PAY_SIGN.OPEN_INST1 is
'开户行号';

comment on column TEST1.EP_QUICK_PAY_SIGN.OPEN_INST2 is
'开发二级分行';

comment on column TEST1.EP_QUICK_PAY_SIGN.SET_CENTER_NO is
'清算中心代码';

comment on column TEST1.EP_QUICK_PAY_SIGN.CUSTOM_ID is
'农行客户号';

comment on column TEST1.EP_QUICK_PAY_SIGN.EXPIRY_DATE is
'账户有效期';

comment on column TEST1.EP_QUICK_PAY_SIGN.INST_CODE is
'组织机构代码';

comment on column TEST1.EP_QUICK_PAY_SIGN.INST_NAME is
'组织机构名称';

comment on column TEST1.EP_QUICK_PAY_SIGN.CVV2 is
'Cvv2';

comment on column TEST1.EP_QUICK_PAY_SIGN.SIGN_FLAG is
'签约标志：0、成功；1、失败';

comment on column TEST1.EP_QUICK_PAY_SIGN.IDENT_TYPE is
'证件类型';

comment on column TEST1.EP_QUICK_PAY_SIGN.IDENT_NO is
'证件号码';

comment on column TEST1.EP_QUICK_PAY_SIGN.PHONE_NO is
'手机号码';

comment on column TEST1.EP_QUICK_PAY_SIGN.IS_IDENT_CHECK is
'证件号码校验标志：0、通过；1、不通过';

comment on column TEST1.EP_QUICK_PAY_SIGN.IS_NAME_CHECK is
'户名校验标志：0、通过；1、不通过';

comment on column TEST1.EP_QUICK_PAY_SIGN.IS_PHONE_CHECK is
'手机号校验标志 0、通过；1、不通过';

comment on column TEST1.EP_QUICK_PAY_SIGN.CLOSE_RESN is
'关闭原因';

comment on column TEST1.EP_QUICK_PAY_SIGN.CREATE_TS is
'创建时间';

comment on column TEST1.EP_QUICK_PAY_SIGN.UPDATE_TS is
'修改时间';

/*==============================================================*/
/* Table: EP_SECURE_QUESTION                                    */
/*==============================================================*/
create table TEST1.EP_SECURE_QUESTION 
(
   ID                   VARCHAR2(32)         not null,
   TOPIC                VARCHAR2(400)        not null,
   REMARK               VARCHAR2(200),
   IS_ENABLE            CHAR                 not null,
   constraint PK_EP_SECURE_QUESTION primary key (ID)
);

comment on table TEST1.EP_SECURE_QUESTION is
'安全问题表';

comment on column TEST1.EP_SECURE_QUESTION.ID is
'ID';

comment on column TEST1.EP_SECURE_QUESTION.TOPIC is
'题目';

comment on column TEST1.EP_SECURE_QUESTION.REMARK is
'描述';

comment on column TEST1.EP_SECURE_QUESTION.IS_ENABLE is
'是否可用：0、可用；1、不可用';

/*==============================================================*/
/* Table: EP_SETDATE                                            */
/*==============================================================*/
create table TEST1.EP_SETDATE 
(
   ID                   VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   SYS_STAT             CHAR,
   SYS_DM               VARCHAR2(17),
   constraint PK_EP_SETDATE primary key (ID)
);

comment on table TEST1.EP_SETDATE is
'清算日期表';

comment on column TEST1.EP_SETDATE.ID is
'ID';

comment on column TEST1.EP_SETDATE.SET_DATE is
'清算日期';

comment on column TEST1.EP_SETDATE.SYS_STAT is
'系统状态：0、正常；1、日切';

comment on column TEST1.EP_SETDATE.SYS_DM is
'系统时间';

/*==============================================================*/
/* Table: EP_SYS_ACCT                                           */
/*==============================================================*/
create table TEST1.EP_SYS_ACCT 
(
   ID                   VARCHAR2(32)         not null,
   BANK_NO              VARCHAR2(32),
   AB_FLAG              CHAR,
   SYS_ACCT_TYPE        VARCHAR2(3),
   ACCT_NAME            VARCHAR2(50),
   BANK_CLASS           VARCHAR2(32),
   REGISTER_NO          VARCHAR2(20),
   PROVINCE_NO          VARCHAR2(6),
   OPEN_INST1           VARCHAR2(20),
   OPEN_INST2           VARCHAR2(40),
   SET_CENTER_NO        VARCHAR2(20),
   CUSTOM_ID            VARCHAR2(20),
   ACCT_USE             VARCHAR2(20),
   INST_CODE            VARCHAR2(40),
   INST_NAME            VARCHAR2(100),
   CREATE_TS            VARCHAR2(17),
   UPDATE_TS            VARCHAR2(17),
   BANK_94NO            VARCHAR2(32),
   constraint PK_EP_SYS_ACCT primary key (ID)
);

comment on table TEST1.EP_SYS_ACCT is
'平台账户表';

comment on column TEST1.EP_SYS_ACCT.ID is
'ID';

comment on column TEST1.EP_SYS_ACCT.BANK_NO is
'银行帐号';

comment on column TEST1.EP_SYS_ACCT.AB_FLAG is
'A,B系统标志：A或者B';

comment on column TEST1.EP_SYS_ACCT.SYS_ACCT_TYPE is
'01-	沉淀账户
02-	垫付账户
03-	支出账户
04-	盈利账户';

comment on column TEST1.EP_SYS_ACCT.ACCT_NAME is
'账户姓名';

comment on column TEST1.EP_SYS_ACCT.BANK_CLASS is
'银行行别';

comment on column TEST1.EP_SYS_ACCT.REGISTER_NO is
'注册所号';

comment on column TEST1.EP_SYS_ACCT.PROVINCE_NO is
'省市代码';

comment on column TEST1.EP_SYS_ACCT.OPEN_INST1 is
'开户行号';

comment on column TEST1.EP_SYS_ACCT.OPEN_INST2 is
'开发二级分行';

comment on column TEST1.EP_SYS_ACCT.SET_CENTER_NO is
'清算中心代码';

comment on column TEST1.EP_SYS_ACCT.CUSTOM_ID is
'客户号';

comment on column TEST1.EP_SYS_ACCT.ACCT_USE is
'账户用途';

comment on column TEST1.EP_SYS_ACCT.INST_CODE is
'组织机构代码';

comment on column TEST1.EP_SYS_ACCT.INST_NAME is
'组织机构名称';

comment on column TEST1.EP_SYS_ACCT.CREATE_TS is
'创建时间';

comment on column TEST1.EP_SYS_ACCT.UPDATE_TS is
'修改时间';

comment on column TEST1.EP_SYS_ACCT.BANK_94NO is
'银行94帐号';

/*==============================================================*/
/* Table: EP_TEMP_B2C_TRACE                                     */
/*==============================================================*/
create table TEST1.EP_TEMP_B2C_TRACE 
(
   USER_NO              VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_ACCT_NO        VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_MERCH_NO         VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   EXT_ACCT_NO          VARCHAR2(32),
   TRANS_CURR           VARCHAR2(3),
   TRANS_STAT           CHAR,
   TRANS_AMT            NUMBER(25,2),
   TRANS_FEE            NUMBER(25,2),
   B2C_SEQ              VARCHAR2(32),
   LOG_NUMBER           VARCHAR2(32),
   SUMMONS_NUM          VARCHAR2(32),
   DC_FLAG              CHAR,
   RB_FLAG              CHAR,
   TRANS_NATURE         CHAR,
   BACKGROUND_DATE      VARCHAR2(8),
   RESP_CODE            VARCHAR2(6),
   RESP_MSG             VARCHAR2(192),
   REMARK               VARCHAR2(192),
   CHECK_TYPE           CHAR(2),
   constraint PK_EP_TEMP_B2C_TRACE primary key (SYS_SEQ)
);

comment on table TEST1.EP_TEMP_B2C_TRACE is
'B2C渠道流水过度表';

comment on column TEST1.EP_TEMP_B2C_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_TEMP_B2C_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_TEMP_B2C_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_TEMP_B2C_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_TEMP_B2C_TRACE.TRANS_ACCT_NO is
'交易帐号';

comment on column TEST1.EP_TEMP_B2C_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_TEMP_B2C_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_TEMP_B2C_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_TEMP_B2C_TRACE.SYS_MERCH_NO is
'商户编号';

comment on column TEST1.EP_TEMP_B2C_TRACE.MERCH_ORDERNO is
'外部订单号';

comment on column TEST1.EP_TEMP_B2C_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_TEMP_B2C_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_TEMP_B2C_TRACE.TRANS_STAT is
'交易状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_TEMP_B2C_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_TEMP_B2C_TRACE.TRANS_FEE is
'交易手续费';

comment on column TEST1.EP_TEMP_B2C_TRACE.B2C_SEQ is
'B2C流水号';

comment on column TEST1.EP_TEMP_B2C_TRACE.LOG_NUMBER is
'日志号';

comment on column TEST1.EP_TEMP_B2C_TRACE.SUMMONS_NUM is
'传票号';

comment on column TEST1.EP_TEMP_B2C_TRACE.DC_FLAG is
'借贷标志：1、借；2、贷';

comment on column TEST1.EP_TEMP_B2C_TRACE.RB_FLAG is
'红蓝标志：1、红；2、蓝';

comment on column TEST1.EP_TEMP_B2C_TRACE.TRANS_NATURE is
'交易性质：1、正常；2、抹账';

comment on column TEST1.EP_TEMP_B2C_TRACE.BACKGROUND_DATE is
'后台清算日期';

comment on column TEST1.EP_TEMP_B2C_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.EP_TEMP_B2C_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.EP_TEMP_B2C_TRACE.REMARK is
'备注信息';

comment on column TEST1.EP_TEMP_B2C_TRACE.CHECK_TYPE is
'对账状态：0、未对账；1、已对账；2、需差错处理';

/*==============================================================*/
/* Table: EP_TEMP_DEPOSIT_ACCT_TRACE                            */
/*==============================================================*/
create table TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE 
(
   ID                   VARCHAR2(32)         not null,
   ACCT_NO              VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_SEQ              VARCHAR2(32),
   SET_DATE             VARCHAR2(8),
   DC_FLAG              CHAR,
   TRANS_CURR           VARCHAR2(3),
   TRANS_AMT            NUMBER(25,2),
   MERCH_NO             VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   IN_ACCT_NO           VARCHAR2(32),
   AB_FLAG              CHAR,
   ORIGINAL_NUM         VARCHAR2(32),
   ACCOUNTING_TYPE      CHAR,
   PLAFORM_ACCT         VARCHAR2(32),
   STATUS               CHAR,
   REMARK               VARCHAR2(200),
   CHECK_TYPE           CHAR(2),
   FEE_AMT              NUMBER(25,2),
   constraint PK_EP_TEMP_DEPOSIT_ACCT_TRACE primary key (ID)
);

comment on table TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE is
'沉淀账户流水过度表';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.ID is
'ID';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.TRANS_CURR is
'交易币种';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.MERCH_NO is
'商户号';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.MERCH_ORDERNO is
'商户订单号';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.IN_ACCT_NO is
'贷方帐号';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.AB_FLAG is
'AB标志：A或者B';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.ORIGINAL_NUM is
'原日志号';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.ACCOUNTING_TYPE is
'交易性质：1、正常；2、抹账；3、被抹';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.PLAFORM_ACCT is
'平台账号';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.STATUS is
'交易状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.REMARK is
'备注';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.CHECK_TYPE is
'对账状态：0、未对账；1、已对账；2、需差错处理';

comment on column TEST1.EP_TEMP_DEPOSIT_ACCT_TRACE.FEE_AMT is
'手续费金额';

/*==============================================================*/
/* Table: EP_TEMP_INTS_TRACE                                    */
/*==============================================================*/
create table TEST1.EP_TEMP_INTS_TRACE 
(
   USER_NO              VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_ACCT_NO        VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_MERCH_NO         VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   EXT_ACCT_NO          VARCHAR2(32),
   TRANS_CURR           VARCHAR2(3),
   TRANS_STAT           CHAR,
   TRANS_AMT            NUMBER(25,2),
   LOG_NUMBER           VARCHAR2(32),
   SUMMONS_NUM          VARCHAR2(32),
   DC_FLAG              CHAR,
   RB_FLAG              CHAR,
   TRANS_NATURE         CHAR,
   BACKGROUND_DATE      VARCHAR2(8),
   ACCOUNTING_ENTRY     VARCHAR2(3000),
   ABIS_RESP_CODE       VARCHAR2(8),
   TRADE_SEQ            VARCHAR2(8),
   ENTRUST_DATE         VARCHAR2(8),
   REMIT_BANK_NO        VARCHAR2(16),
   TRANS_FEE            NUMBER(25,2),
   INTS_SEQ             VARCHAR2(32),
   RESP_CODE            VARCHAR2(6),
   RESP_MSG             VARCHAR2(192),
   REMARK               VARCHAR2(192),
   CHECK_TYPE           CHAR(2),
   constraint PK_EP_TEMP_INTS_TRACE primary key (SYS_SEQ)
);

comment on table TEST1.EP_TEMP_INTS_TRACE is
'INTS渠道流水过度表(一体化)';

comment on column TEST1.EP_TEMP_INTS_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_TEMP_INTS_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_TEMP_INTS_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_TEMP_INTS_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_TEMP_INTS_TRACE.TRANS_ACCT_NO is
'交易帐号';

comment on column TEST1.EP_TEMP_INTS_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_TEMP_INTS_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_TEMP_INTS_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_TEMP_INTS_TRACE.SYS_MERCH_NO is
'商户编号';

comment on column TEST1.EP_TEMP_INTS_TRACE.MERCH_ORDERNO is
'外部订单号';

comment on column TEST1.EP_TEMP_INTS_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_TEMP_INTS_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_TEMP_INTS_TRACE.TRANS_STAT is
'订单状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_TEMP_INTS_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_TEMP_INTS_TRACE.LOG_NUMBER is
'日志号';

comment on column TEST1.EP_TEMP_INTS_TRACE.SUMMONS_NUM is
'传票号';

comment on column TEST1.EP_TEMP_INTS_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_TEMP_INTS_TRACE.RB_FLAG is
'红蓝标志：R、红；B、蓝';

comment on column TEST1.EP_TEMP_INTS_TRACE.TRANS_NATURE is
'交易性质：1、正常；2、抹账';

comment on column TEST1.EP_TEMP_INTS_TRACE.BACKGROUND_DATE is
'后台清算日期';

comment on column TEST1.EP_TEMP_INTS_TRACE.ACCOUNTING_ENTRY is
'会计分录';

comment on column TEST1.EP_TEMP_INTS_TRACE.ABIS_RESP_CODE is
'Abis应答码';

comment on column TEST1.EP_TEMP_INTS_TRACE.TRADE_SEQ is
'支付交易序号';

comment on column TEST1.EP_TEMP_INTS_TRACE.ENTRUST_DATE is
'委托日期';

comment on column TEST1.EP_TEMP_INTS_TRACE.REMIT_BANK_NO is
'汇出行行号';

comment on column TEST1.EP_TEMP_INTS_TRACE.TRANS_FEE is
'交易手续费';

comment on column TEST1.EP_TEMP_INTS_TRACE.INTS_SEQ is
'INTS流水号';

comment on column TEST1.EP_TEMP_INTS_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.EP_TEMP_INTS_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.EP_TEMP_INTS_TRACE.REMARK is
'备注信息';

comment on column TEST1.EP_TEMP_INTS_TRACE.CHECK_TYPE is
'对账状态：0、未对账；1、已对账；2、需差错处理';

/*==============================================================*/
/* Table: EP_TEMP_MARKET_TRACE                                  */
/*==============================================================*/
create table TEST1.EP_TEMP_MARKET_TRACE 
(
   USER_NO              VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_ACCT_NO        VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   SYS_MERCH_NO         VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   EXT_ACCT_NO          VARCHAR2(32),
   TRANS_CURR           VARCHAR2(3),
   TRANS_STAT           CHAR,
   TRANS_AMT            NUMBER(25,2),
   TRANS_FEE            NUMBER(25,2),
   MARKET_SEQ           VARCHAR2(32),
   LOG_NUMBER           VARCHAR2(32),
   SUMMONS_NUM          VARCHAR2(32),
   DC_FLAG              CHAR,
   RB_FLAG              CHAR,
   TRANS_NATURE         CHAR,
   BACKGROUND_DATE      VARCHAR2(8),
   RESP_CODE            VARCHAR2(6),
   RESP_MSG             VARCHAR2(192),
   REMARK               VARCHAR2(192),
   CHECK_TYPE           CHAR(2),
   constraint PK_EP_TEMP_MARKET_TRACE primary key (SYS_SEQ)
);

comment on table TEST1.EP_TEMP_MARKET_TRACE is
'交易市场渠道流水';

comment on column TEST1.EP_TEMP_MARKET_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_TEMP_MARKET_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_TEMP_MARKET_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_TEMP_MARKET_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_TEMP_MARKET_TRACE.TRANS_ACCT_NO is
'交易帐号';

comment on column TEST1.EP_TEMP_MARKET_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_TEMP_MARKET_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_TEMP_MARKET_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_TEMP_MARKET_TRACE.SYS_MERCH_NO is
'商户编号';

comment on column TEST1.EP_TEMP_MARKET_TRACE.MERCH_ORDERNO is
'外部订单号';

comment on column TEST1.EP_TEMP_MARKET_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_TEMP_MARKET_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_TEMP_MARKET_TRACE.TRANS_STAT is
'订单状态：0、成功；1、初始；2、失败； 3、撤销';

comment on column TEST1.EP_TEMP_MARKET_TRACE.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_TEMP_MARKET_TRACE.TRANS_FEE is
'交易手续费';

comment on column TEST1.EP_TEMP_MARKET_TRACE.MARKET_SEQ is
'交易市场流水号';

comment on column TEST1.EP_TEMP_MARKET_TRACE.LOG_NUMBER is
'日志号';

comment on column TEST1.EP_TEMP_MARKET_TRACE.SUMMONS_NUM is
'传票号';

comment on column TEST1.EP_TEMP_MARKET_TRACE.DC_FLAG is
'借贷标志：D、借；C、贷';

comment on column TEST1.EP_TEMP_MARKET_TRACE.RB_FLAG is
'红蓝标志：R、红；B、蓝';

comment on column TEST1.EP_TEMP_MARKET_TRACE.TRANS_NATURE is
'交易性质：1、正常；2、抹账';

comment on column TEST1.EP_TEMP_MARKET_TRACE.BACKGROUND_DATE is
'后台清算日期';

comment on column TEST1.EP_TEMP_MARKET_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.EP_TEMP_MARKET_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.EP_TEMP_MARKET_TRACE.REMARK is
'备注信息';

comment on column TEST1.EP_TEMP_MARKET_TRACE.CHECK_TYPE is
'对账状态：0、未对账；1、已对账；2、需差错处理';

/*==============================================================*/
/* Table: EP_TEMP_ORDER_TRACE                                   */
/*==============================================================*/
create table TEST1.EP_TEMP_ORDER_TRACE 
(
   USER_NO              VARCHAR2(32),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   MERCH_NO             VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   ORG_MERCH_ORDERNO    VARCHAR2(32),
   SUB_MERCH_NO         VARCHAR2(15),
   SUB_MERCH_NAME       VARCHAR2(60),
   MERCH_DT             VARCHAR2(17),
   ORDER_OVER_DT        VARCHAR2(17),
   PAY_OVER_DT          VARCHAR2(17),
   BACK_OVER_DT         VARCHAR2(17),
   TRANS_CURR           VARCHAR2(3),
   ORDER_AMT            NUMBER(25,2),
   ORDER_FEE_AMT        NUMBER(25,2),
   SYS_FEE_AMT          NUMBER(25,2),
   BLANCE_AMT           NUMBER(25,2),
   EBANK_AMT            NUMBER(25,2),
   FASTPAY_AMT          NUMBER(25,2),
   CREDIT_AMT           NUMBER(25,2),
   ICOIN_PAY_AMT        NUMBER(25,2),
   INSTALLMENT          VARCHAR2(5),
   ORDER_STAT           CHAR,
   PAY_FLAG             CHAR(32),
   EXT_ACCT_NO          VARCHAR2(32),
   EXT_ACCT_NAME        VARCHAR2(50),
   FRONT_URL            VARCHAR2(384),
   BACK_URL             VARCHAR2(384),
   SHIPPING_ADDR        VARCHAR2(384),
   GOODS_URL            VARCHAR2(384),
   GOODS_NAME           VARCHAR2(200),
   GOODS_INFO           VARCHAR2(200),
   GOODS_TYPE           CHAR,
   REMARK               VARCHAR2(192),
   ACCOUNTING_TYPE      CHAR,
   RESP_CODE            VARCHAR2(6),
   RESP_MSG             VARCHAR2(192),
   REVERSE1             VARCHAR2(192),
   REVERSE2             VARCHAR2(192),
   CHECK_TYPE           CHAR(2),
   constraint PK_EP_TEMP_ORDER_TRACE primary key (SYS_SEQ)
);

comment on table TEST1.EP_TEMP_ORDER_TRACE is
'订单流水历史表';

comment on column TEST1.EP_TEMP_ORDER_TRACE.USER_NO is
'用户ID';

comment on column TEST1.EP_TEMP_ORDER_TRACE.ACCT_NO is
'账号';

comment on column TEST1.EP_TEMP_ORDER_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.EP_TEMP_ORDER_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.EP_TEMP_ORDER_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_TEMP_ORDER_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_TEMP_ORDER_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_TEMP_ORDER_TRACE.MERCH_NO is
'平台商户号';

comment on column TEST1.EP_TEMP_ORDER_TRACE.MERCH_ORDERNO is
'商户订单号';

comment on column TEST1.EP_TEMP_ORDER_TRACE.ORG_MERCH_ORDERNO is
'ORG_MERCH_ORDERNO';

comment on column TEST1.EP_TEMP_ORDER_TRACE.SUB_MERCH_NO is
'子商户代码';

comment on column TEST1.EP_TEMP_ORDER_TRACE.SUB_MERCH_NAME is
'子商户名称';

comment on column TEST1.EP_TEMP_ORDER_TRACE.MERCH_DT is
'订单日期';

comment on column TEST1.EP_TEMP_ORDER_TRACE.ORDER_OVER_DT is
'订单超时时间';

comment on column TEST1.EP_TEMP_ORDER_TRACE.PAY_OVER_DT is
'支付超时时间';

comment on column TEST1.EP_TEMP_ORDER_TRACE.BACK_OVER_DT is
'退单限制时间';

comment on column TEST1.EP_TEMP_ORDER_TRACE.TRANS_CURR is
'交易币种(RMB-156)：RMB、EUR、USD';

comment on column TEST1.EP_TEMP_ORDER_TRACE.ORDER_AMT is
'订单金额';

comment on column TEST1.EP_TEMP_ORDER_TRACE.ORDER_FEE_AMT is
'订单手续费';

comment on column TEST1.EP_TEMP_ORDER_TRACE.SYS_FEE_AMT is
'平台手续费';

comment on column TEST1.EP_TEMP_ORDER_TRACE.BLANCE_AMT is
'余额支付金额';

comment on column TEST1.EP_TEMP_ORDER_TRACE.EBANK_AMT is
'网银支付金额';

comment on column TEST1.EP_TEMP_ORDER_TRACE.FASTPAY_AMT is
'快捷支付金额';

comment on column TEST1.EP_TEMP_ORDER_TRACE.CREDIT_AMT is
'信用卡支付金额';

comment on column TEST1.EP_TEMP_ORDER_TRACE.ICOIN_PAY_AMT is
'农银通宝币支付金额';

comment on column TEST1.EP_TEMP_ORDER_TRACE.INSTALLMENT is
'分期数';

comment on column TEST1.EP_TEMP_ORDER_TRACE.ORDER_STAT is
'订单状态：0 、成功 1、初始 2、失败 3、支付中、4状态未知、5、已退款、6、已撤销';

comment on column TEST1.EP_TEMP_ORDER_TRACE.PAY_FLAG is
'支付方式：1、快捷支付；2、网银支付（本行）；3、信用卡；4、余额支；5、网银支付（他行）；6、组合支付';

comment on column TEST1.EP_TEMP_ORDER_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_TEMP_ORDER_TRACE.EXT_ACCT_NAME is
'EXT_ACCT_NAME';

comment on column TEST1.EP_TEMP_ORDER_TRACE.FRONT_URL is
'前台通知地址';

comment on column TEST1.EP_TEMP_ORDER_TRACE.BACK_URL is
'后台通知地址';

comment on column TEST1.EP_TEMP_ORDER_TRACE.SHIPPING_ADDR is
'收货地址';

comment on column TEST1.EP_TEMP_ORDER_TRACE.GOODS_URL is
'商品URL';

comment on column TEST1.EP_TEMP_ORDER_TRACE.GOODS_NAME is
'商品名称';

comment on column TEST1.EP_TEMP_ORDER_TRACE.GOODS_INFO is
'商品信息';

comment on column TEST1.EP_TEMP_ORDER_TRACE.GOODS_TYPE is
'1、实体商品；2、非实体商品';

comment on column TEST1.EP_TEMP_ORDER_TRACE.REMARK is
'备注信息';

comment on column TEST1.EP_TEMP_ORDER_TRACE.ACCOUNTING_TYPE is
'账务类型：1、正常；2、抹账；3、被抹；4、冲正';

comment on column TEST1.EP_TEMP_ORDER_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.EP_TEMP_ORDER_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.EP_TEMP_ORDER_TRACE.REVERSE1 is
'保留1';

comment on column TEST1.EP_TEMP_ORDER_TRACE.REVERSE2 is
'保留2';

comment on column TEST1.EP_TEMP_ORDER_TRACE.CHECK_TYPE is
'对账状态：
00、已对账
99、未对账
11、渠道流水有记录，对账没有记录
12、渠道流水没有记录，对账文件有记录
13、渠道流水的金额与对账文件金额对不上
14、渠道流水成功对账文件失败
15、渠道流水失败对账文件成功
16、系统自动差错处理失败
17、订单流水成功，渠道流水不存在';

/*==============================================================*/
/* Table: EP_TRANS_LOG                                          */
/*==============================================================*/
create table TEST1.EP_TRANS_LOG 
(
   ID                   VARCHAR2(32)         not null,
   USER_NO              VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   TRAN_ACCT_NO         VARCHAR2(32),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   MERCH_NO             VARCHAR2(15),
   MERCH_BILLNO         VARCHAR2(48),
   EXT_ACCT_NO          VARCHAR2(32),
   TRANS_CURR           VARCHAR2(3),
   TRANS_AMT            NUMBER(25,2),
   REMARK               VARCHAR2(192),
   constraint PK_EP_TRANS_LOG primary key (ID)
);

comment on table TEST1.EP_TRANS_LOG is
'BI流水表，用户行为表';

comment on column TEST1.EP_TRANS_LOG.ID is
'ID';

comment on column TEST1.EP_TRANS_LOG.USER_NO is
'用户ID';

comment on column TEST1.EP_TRANS_LOG.ACCT_NO is
'账号';

comment on column TEST1.EP_TRANS_LOG.TRAN_ACCT_NO is
'交易帐号';

comment on column TEST1.EP_TRANS_LOG.TRANS_DATE is
'交易日期';

comment on column TEST1.EP_TRANS_LOG.TRANS_TIME is
'交易时间';

comment on column TEST1.EP_TRANS_LOG.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_TRANS_LOG.MERCH_NO is
'商户编号';

comment on column TEST1.EP_TRANS_LOG.MERCH_BILLNO is
'商户订单号';

comment on column TEST1.EP_TRANS_LOG.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.EP_TRANS_LOG.TRANS_CURR is
'交易币种';

comment on column TEST1.EP_TRANS_LOG.TRANS_AMT is
'交易金额';

comment on column TEST1.EP_TRANS_LOG.REMARK is
'备注';

/*==============================================================*/
/* Table: EP_TRANS_TOTAL                                        */
/*==============================================================*/
create table TEST1.EP_TRANS_TOTAL 
(
   ID                   VARCHAR2(32)         not null,
   ACCT_NO              VARCHAR2(32),
   SET_DATE             VARCHAR2(8),
   TRANSFER_TOTAL_AMT   NUMBER(25,2),
   WITHDRAW_TOTAL_AMT   NUMBER(25,2),
   RECHARGE_TOTAL_AMT   NUMBER(25,2),
   CONSUMER_TOTAL_AMT   NUMBER(25,2),
   DEDIT_TOTAL_AMT      NUMBER(25,2),
   CREDIT_TOTAL_AMT     NUMBER(25,2),
   QUICK_TOTAL_AMT      NUMBER(25,2),
   constraint PK_EP_TRANS_TOTAL primary key (ID)
);

comment on table TEST1.EP_TRANS_TOTAL is
'交易日累计信息表';

comment on column TEST1.EP_TRANS_TOTAL.ID is
'ID';

comment on column TEST1.EP_TRANS_TOTAL.ACCT_NO is
'账号';

comment on column TEST1.EP_TRANS_TOTAL.SET_DATE is
'清算日期';

comment on column TEST1.EP_TRANS_TOTAL.TRANSFER_TOTAL_AMT is
'转账累计金额';

comment on column TEST1.EP_TRANS_TOTAL.WITHDRAW_TOTAL_AMT is
'提现累计金额';

comment on column TEST1.EP_TRANS_TOTAL.RECHARGE_TOTAL_AMT is
'充值累计金额';

comment on column TEST1.EP_TRANS_TOTAL.CONSUMER_TOTAL_AMT is
'消费累计金额';

comment on column TEST1.EP_TRANS_TOTAL.DEDIT_TOTAL_AMT is
'投资累计金额';

comment on column TEST1.EP_TRANS_TOTAL.CREDIT_TOTAL_AMT is
'贷款累计金额';

comment on column TEST1.EP_TRANS_TOTAL.QUICK_TOTAL_AMT is
'快捷支付累计金额';

/*==============================================================*/
/* Table: EP_TRANS_TYPE                                         */
/*==============================================================*/
create table TEST1.EP_TRANS_TYPE 
(
   TRANS_TYPE           VARCHAR2(6)          not null,
   TRANS_DESC           VARCHAR2(48),
   constraint PK_EP_TRANS_TYPE primary key (TRANS_TYPE)
);

comment on table TEST1.EP_TRANS_TYPE is
'交易类型表';

comment on column TEST1.EP_TRANS_TYPE.TRANS_TYPE is
'交易类型';

comment on column TEST1.EP_TRANS_TYPE.TRANS_DESC is
'交易类型描述';

/*==============================================================*/
/* Table: ID_TABLE                                              */
/*==============================================================*/
create table TEST1.ID_TABLE 
(
   ID_NAME              VARCHAR2(30)         not null,
   ID_VALUE             NUMBER,
   constraint SYS_C0071949 primary key (ID_NAME)
);

comment on table TEST1.ID_TABLE is
'ID_TABLE';

comment on column TEST1.ID_TABLE.ID_NAME is
'ID_NAME';

comment on column TEST1.ID_TABLE.ID_VALUE is
'ID_VALUE';

/*==============================================================*/
/* Table: LB_ATTENT_PROJ                                        */
/*==============================================================*/
create table TEST1.LB_ATTENT_PROJ 
(
   ATTENT_PROJ_ID       CHAR(32)             not null,
   USER_NO              VARCHAR2(32)         not null,
   ATTENTED_PROJ_ID     CHAR(17)             not null,
   ATTENT_TIME          CHAR(17)             not null,
   DEL_FLAG             CHAR,
   constraint PK_LB_ATTENT_PROJ primary key (ATTENT_PROJ_ID)
);

comment on table TEST1.LB_ATTENT_PROJ is
'LB_ATTENT_PROJ';

comment on column TEST1.LB_ATTENT_PROJ.ATTENT_PROJ_ID is
'ATTENT_PROJ_ID';

comment on column TEST1.LB_ATTENT_PROJ.USER_NO is
'USER_NO';

comment on column TEST1.LB_ATTENT_PROJ.ATTENTED_PROJ_ID is
'ATTENTED_PROJ_ID';

comment on column TEST1.LB_ATTENT_PROJ.ATTENT_TIME is
'ATTENT_TIME';

comment on column TEST1.LB_ATTENT_PROJ.DEL_FLAG is
'删除标记
0：正常；1：删除';

/*==============================================================*/
/* Table: LB_ATTENT_USER                                        */
/*==============================================================*/
create table TEST1.LB_ATTENT_USER 
(
   ATTENT_USER_ID       CHAR(32)             not null,
   ATTENTED_USER_TY     CHAR                 not null,
   ATTENTED_USER_ID     VARCHAR2(32)         not null,
   USER_NO              VARCHAR2(32)         not null,
   ATTENT_TIME          CHAR(17)             not null,
   DEL_FLAG             CHAR,
   constraint PK_LB_ATTENT_USER primary key (ATTENT_USER_ID)
);

comment on table TEST1.LB_ATTENT_USER is
'LB_ATTENT_USER';

comment on column TEST1.LB_ATTENT_USER.ATTENT_USER_ID is
'ATTENT_USER_ID';

comment on column TEST1.LB_ATTENT_USER.ATTENTED_USER_TY is
'0：个人用户；1：圈内企业；2：圈外企业';

comment on column TEST1.LB_ATTENT_USER.ATTENTED_USER_ID is
'ATTENTED_USER_ID';

comment on column TEST1.LB_ATTENT_USER.USER_NO is
'USER_NO';

comment on column TEST1.LB_ATTENT_USER.ATTENT_TIME is
'ATTENT_TIME';

comment on column TEST1.LB_ATTENT_USER.DEL_FLAG is
'删除标记
0：正常；1：删除';

/*==============================================================*/
/* Table: LB_CHECK_ACCT                                         */
/*==============================================================*/
create table TEST1.LB_CHECK_ACCT 
(
   CHECK_ACCT_ID        CHAR(32)             not null,
   START_TIME           CHAR(17),
   END_TIME             CHAR(17),
   TASK_STATUS          CHAR,
   CHECK_DATE           CHAR(8),
   constraint PK_LB_CHECK_ACCT primary key (CHECK_ACCT_ID)
);

comment on table TEST1.LB_CHECK_ACCT is
'LB_CHECK_ACCT';

comment on column TEST1.LB_CHECK_ACCT.CHECK_ACCT_ID is
'CHECK_ACCT_ID';

comment on column TEST1.LB_CHECK_ACCT.START_TIME is
'START_TIME';

comment on column TEST1.LB_CHECK_ACCT.END_TIME is
'END_TIME';

comment on column TEST1.LB_CHECK_ACCT.TASK_STATUS is
'TASK_STATUS';

comment on column TEST1.LB_CHECK_ACCT.CHECK_DATE is
'CHECK_DATE';

/*==============================================================*/
/* Table: LB_CHECK_ACCT_EXCEP                                   */
/*==============================================================*/
create table TEST1.LB_CHECK_ACCT_EXCEP 
(
   CHECK_ACCT_EXCEP_ID  CHAR(32)             not null,
   CHECK_ACCT_ID        CHAR(32)             not null,
   PROJ_ID              CHAR(17),
   PROJ_PAY_ID          CHAR(32),
   MERCH_ORDER_NO       CHAR(32),
   EXCEP_STATUS         CHAR                 not null,
   constraint PK_LB_CHECK_ACCT_EXCEP primary key (CHECK_ACCT_EXCEP_ID)
);

comment on table TEST1.LB_CHECK_ACCT_EXCEP is
'LB_CHECK_ACCT_EXCEP';

comment on column TEST1.LB_CHECK_ACCT_EXCEP.CHECK_ACCT_EXCEP_ID is
'CHECK_ACCT_EXCEP_ID';

comment on column TEST1.LB_CHECK_ACCT_EXCEP.CHECK_ACCT_ID is
'CHECK_ACCT_ID';

comment on column TEST1.LB_CHECK_ACCT_EXCEP.PROJ_ID is
'PROJ_ID';

comment on column TEST1.LB_CHECK_ACCT_EXCEP.PROJ_PAY_ID is
'PROJ_PAY_ID';

comment on column TEST1.LB_CHECK_ACCT_EXCEP.MERCH_ORDER_NO is
'MERCH_ORDER_NO';

comment on column TEST1.LB_CHECK_ACCT_EXCEP.EXCEP_STATUS is
'EXCEP_STATUS';

/*==============================================================*/
/* Table: LB_CREDIT_DATA                                        */
/*==============================================================*/
create table TEST1.LB_CREDIT_DATA 
(
   CREDIT_DATA_ID       CHAR(32)             not null,
   CUST_TY              CHAR                 not null,
   CUST_ID              VARCHAR2(32)         not null,
   QUERY_TIME           CHAR(17),
   QUERY_INTF_USER_NO   VARCHAR2(32),
   OPER_TYPE            CHAR,
   OPER_USER_NO         VARCHAR2(32),
   constraint PK_LB_CREDIT_DATA primary key (CREDIT_DATA_ID)
);

comment on table TEST1.LB_CREDIT_DATA is
'LB_CREDIT_DATA';

comment on column TEST1.LB_CREDIT_DATA.CREDIT_DATA_ID is
'CREDIT_DATA_ID';

comment on column TEST1.LB_CREDIT_DATA.CUST_TY is
'0：个人用户；1：圈内企业；2：圈外企业';

comment on column TEST1.LB_CREDIT_DATA.CUST_ID is
'根据客户类型，关联用户或者企业';

comment on column TEST1.LB_CREDIT_DATA.QUERY_TIME is
'QUERY_TIME';

comment on column TEST1.LB_CREDIT_DATA.QUERY_INTF_USER_NO is
'QUERY_INTF_USER_NO';

comment on column TEST1.LB_CREDIT_DATA.OPER_TYPE is
'0：营运人员操作；1：系统自动程序操作';

comment on column TEST1.LB_CREDIT_DATA.OPER_USER_NO is
'OPER_USER_NO';

/*==============================================================*/
/* Table: LB_CREDIT_DATA_DETAIL                                 */
/*==============================================================*/
create table TEST1.LB_CREDIT_DATA_DETAIL 
(
   CREDIT_DATA_DETAIL_ID CHAR(32)             not null,
   CREDIT_DATA_ID       CHAR(32)             not null,
   CREDIT_DATA_CODE     VARCHAR2(32),
   CREDIT_DATA_VALUE    VARCHAR2(32),
   constraint PK_LB_CREDIT_DATA_DETAIL primary key (CREDIT_DATA_DETAIL_ID)
);

comment on table TEST1.LB_CREDIT_DATA_DETAIL is
'LB_CREDIT_DATA_DETAIL';

comment on column TEST1.LB_CREDIT_DATA_DETAIL.CREDIT_DATA_DETAIL_ID is
'CREDIT_DATA_DETAIL_ID';

comment on column TEST1.LB_CREDIT_DATA_DETAIL.CREDIT_DATA_ID is
'CREDIT_DATA_ID';

comment on column TEST1.LB_CREDIT_DATA_DETAIL.CREDIT_DATA_CODE is
'CREDIT_DATA_CODE';

comment on column TEST1.LB_CREDIT_DATA_DETAIL.CREDIT_DATA_VALUE is
'CREDIT_DATA_VALUE';

/*==============================================================*/
/* Table: LB_CUST_DEBIT                                         */
/*==============================================================*/
create table TEST1.LB_CUST_DEBIT 
(
   CUST_DEBIT_ID        CHAR(32)             not null,
   CUST_TY              CHAR                 not null,
   CUST_ID              VARCHAR2(32)         not null,
   DEBIT_AMT            NUMBER(20,2),
   constraint PK_LB_CUST_DEBIT primary key (CUST_DEBIT_ID)
);

comment on table TEST1.LB_CUST_DEBIT is
'LB_CUST_DEBIT';

comment on column TEST1.LB_CUST_DEBIT.CUST_DEBIT_ID is
'CUST_DEBIT_ID';

comment on column TEST1.LB_CUST_DEBIT.CUST_TY is
'0：个人用户；1：圈内企业；2：圈外企业';

comment on column TEST1.LB_CUST_DEBIT.CUST_ID is
'根据客户类型，关联用户或者企业';

comment on column TEST1.LB_CUST_DEBIT.DEBIT_AMT is
'DEBIT_AMT';

/*==============================================================*/
/* Table: LB_CUST_LEVEL                                         */
/*==============================================================*/
create table TEST1.LB_CUST_LEVEL 
(
   CUST_LEVEL_ID        CHAR(32)             not null,
   CUST_TY              CHAR                 not null,
   CUST_ID              VARCHAR2(32)         not null,
   CUST_LEVEL           CHAR(3)              not null
);

comment on table TEST1.LB_CUST_LEVEL is
'LB_CUST_LEVEL';

comment on column TEST1.LB_CUST_LEVEL.CUST_LEVEL_ID is
'CUST_LEVEL_ID';

comment on column TEST1.LB_CUST_LEVEL.CUST_TY is
'0：个人用户；1：圈内企业；2：圈外企业';

comment on column TEST1.LB_CUST_LEVEL.CUST_ID is
'根据客户类型，关联用户或者企业';

comment on column TEST1.LB_CUST_LEVEL.CUST_LEVEL is
'CUST_LEVEL';

/*==============================================================*/
/* Table: LB_CUST_RATE_REC                                      */
/*==============================================================*/
create table TEST1.LB_CUST_RATE_REC 
(
   CUST_RATE_REC_ID     CHAR(32)             not null,
   CUST_LEVEL_ID        CHAR(32)             not null,
   OPER_USER_ID         VARCHAR2(32),
   ORIGINAL_LEVEL       VARCHAR2(32),
   NOW_LEVEL            VARCHAR2(32),
   RATE_TIME            CHAR(17),
   RATE_REASON          VARCHAR2(1500),
   constraint PK_LB_CUST_RATE_REC primary key (CUST_RATE_REC_ID)
);

comment on table TEST1.LB_CUST_RATE_REC is
'LB_CUST_RATE_REC';

comment on column TEST1.LB_CUST_RATE_REC.CUST_RATE_REC_ID is
'CUST_RATE_REC_ID';

comment on column TEST1.LB_CUST_RATE_REC.CUST_LEVEL_ID is
'CUST_LEVEL_ID';

comment on column TEST1.LB_CUST_RATE_REC.OPER_USER_ID is
'OPER_USER_ID';

comment on column TEST1.LB_CUST_RATE_REC.ORIGINAL_LEVEL is
'ORIGINAL_LEVEL';

comment on column TEST1.LB_CUST_RATE_REC.NOW_LEVEL is
'NOW_LEVEL';

comment on column TEST1.LB_CUST_RATE_REC.RATE_TIME is
'RATE_TIME';

comment on column TEST1.LB_CUST_RATE_REC.RATE_REASON is
'RATE_REASON';

/*==============================================================*/
/* Table: LB_DOC_CONFIG                                         */
/*==============================================================*/
create table TEST1.LB_DOC_CONFIG 
(
   DOC_CONFIG_ID        CHAR(32)             not null,
   SERIAL_NUM           NUMBER(5)            not null,
   TITLE                VARCHAR2(150)        not null,
   OPTIONAL             CHAR                 not null,
   REMARK               VARCHAR2(1500),
   GROUP_TYPE           VARCHAR2(32)         not null,
   FILE_TYPE            CHAR(2)              not null,
   constraint PK_LB_DOC_CONFIG primary key (DOC_CONFIG_ID)
);

comment on table TEST1.LB_DOC_CONFIG is
'LB_DOC_CONFIG';

comment on column TEST1.LB_DOC_CONFIG.DOC_CONFIG_ID is
'DOC_CONFIG_ID';

comment on column TEST1.LB_DOC_CONFIG.SERIAL_NUM is
'SERIAL_NUM';

comment on column TEST1.LB_DOC_CONFIG.TITLE is
'TITLE';

comment on column TEST1.LB_DOC_CONFIG.OPTIONAL is
'0：必选；1：可选';

comment on column TEST1.LB_DOC_CONFIG.REMARK is
'REMARK';

comment on column TEST1.LB_DOC_CONFIG.GROUP_TYPE is
'PERSON_BASE_FILE:个人客户基本资料
PERSON_BUSI_FILE:个人客户经营资料
ENT_BASE_FILE:企业客户基本资料
ENT_BUSI_FILE:企业客户经营资料';

comment on column TEST1.LB_DOC_CONFIG.FILE_TYPE is
'P1：身份证正面复印件
P2：身份证反面复印件
P3：银行流水
P4：征信记录
P5：银行存储单
P6：收入证明
P7：个体营业执照
P8：个人其他资料
E1：注册或登记证件
E2：组织机构代码证
E3：企业法人代表授权书
E4: 企业法人代表有效证件
E0：企业其他资料';

/*==============================================================*/
/* Table: LB_ERRLOG                                             */
/*==============================================================*/
create table TEST1.LB_ERRLOG 
(
   ID                   VARCHAR2(32)         not null,
   BUSI_TRANS_NO        VARCHAR2(32),
   LOG_DATE             CHAR(8),
   LOG_TIMESTAMP        VARCHAR2(32),
   ERROR_CODE           VARCHAR2(8),
   ERROR_DESC           VARCHAR2(4000),
   SESSION_ID           VARCHAR2(64),
   EXE_CLASS_NAME       VARCHAR2(150),
   constraint PK_LB_ERRLOG primary key (ID)
);

comment on table TEST1.LB_ERRLOG is
'融资产品错误日志记录表';

comment on column TEST1.LB_ERRLOG.ID is
'记录PK';

comment on column TEST1.LB_ERRLOG.BUSI_TRANS_NO is
'业务流水号';

comment on column TEST1.LB_ERRLOG.LOG_DATE is
'记录日期';

comment on column TEST1.LB_ERRLOG.LOG_TIMESTAMP is
'记录时间戳';

comment on column TEST1.LB_ERRLOG.ERROR_CODE is
'错误代码';

comment on column TEST1.LB_ERRLOG.ERROR_DESC is
'错误描述';

comment on column TEST1.LB_ERRLOG.SESSION_ID is
'会话ID';

comment on column TEST1.LB_ERRLOG.EXE_CLASS_NAME is
'执行类名称';

/*==============================================================*/
/* Table: LB_LEVEL_PRICE                                        */
/*==============================================================*/
create table TEST1.LB_LEVEL_PRICE 
(
   CUST_LEVEL           VARCHAR2(32)         not null,
   DEFAULT_RATE         NUMBER(10,7),
   OPER_COST_RATE       NUMBER(10,7),
   ACCT_COST_RATE       NUMBER(10,7),
   constraint PK_LB_LEVEL_PRICE primary key (CUST_LEVEL)
);

comment on table TEST1.LB_LEVEL_PRICE is
'LB_LEVEL_PRICE';

comment on column TEST1.LB_LEVEL_PRICE.CUST_LEVEL is
'CUST_LEVEL';

comment on column TEST1.LB_LEVEL_PRICE.DEFAULT_RATE is
'DEFAULT_RATE';

comment on column TEST1.LB_LEVEL_PRICE.OPER_COST_RATE is
'OPER_COST_RATE';

comment on column TEST1.LB_LEVEL_PRICE.ACCT_COST_RATE is
'ACCT_COST_RATE';

/*==============================================================*/
/* Table: LB_LIMIT                                              */
/*==============================================================*/
create table TEST1.LB_LIMIT 
(
   LIMIT_ID             CHAR(32)             not null,
   CUST_TY              CHAR                 not null,
   CUST_ID              VARCHAR2(32)         not null,
   TOTAL_LIMIT          NUMBER(20,2)         not null,
   AVABLE_LIMIT         NUMBER(20,2)         not null,
   CUST_NAME            VARCHAR2(96),
   constraint PK_LB_LIMIT primary key (LIMIT_ID)
);

comment on table TEST1.LB_LIMIT is
'LB_LIMIT';

comment on column TEST1.LB_LIMIT.LIMIT_ID is
'LIMIT_ID';

comment on column TEST1.LB_LIMIT.CUST_TY is
'0：个人客户；
1：企业客户；';

comment on column TEST1.LB_LIMIT.CUST_ID is
'根据客户类型，关联用户或者企业';

comment on column TEST1.LB_LIMIT.TOTAL_LIMIT is
'TOTAL_LIMIT';

comment on column TEST1.LB_LIMIT.AVABLE_LIMIT is
'AVABLE_LIMIT';

comment on column TEST1.LB_LIMIT.CUST_NAME is
'CUST_NAME';

/*==============================================================*/
/* Table: LB_LIMIT_ADJ_REC                                      */
/*==============================================================*/
create table TEST1.LB_LIMIT_ADJ_REC 
(
   LIMIT_ADJ_REC_ID     CHAR(32)             not null,
   LIMIT_ID             CHAR(32)             not null,
   OPER_ID              VARCHAR2(32),
   ORIGINAL_LIMIT       NUMBER(20,2),
   NOW_LIMIT            NUMBER(20,2),
   RATE_TIME            CHAR(17),
   RATE_REASON          VARCHAR2(1500),
   constraint PK_LB_LIMIT_ADJ_REC primary key (LIMIT_ADJ_REC_ID)
);

comment on table TEST1.LB_LIMIT_ADJ_REC is
'LB_LIMIT_ADJ_REC';

comment on column TEST1.LB_LIMIT_ADJ_REC.LIMIT_ADJ_REC_ID is
'LIMIT_ADJ_REC_ID';

comment on column TEST1.LB_LIMIT_ADJ_REC.LIMIT_ID is
'LIMIT_ID';

comment on column TEST1.LB_LIMIT_ADJ_REC.OPER_ID is
'OPER_ID';

comment on column TEST1.LB_LIMIT_ADJ_REC.ORIGINAL_LIMIT is
'ORIGINAL_LIMIT';

comment on column TEST1.LB_LIMIT_ADJ_REC.NOW_LIMIT is
'NOW_LIMIT';

comment on column TEST1.LB_LIMIT_ADJ_REC.RATE_TIME is
'RATE_TIME';

comment on column TEST1.LB_LIMIT_ADJ_REC.RATE_REASON is
'RATE_REASON';

/*==============================================================*/
/* Table: LB_LIMIT_USE                                          */
/*==============================================================*/
create table TEST1.LB_LIMIT_USE 
(
   LIMIT_USE_ID         CHAR(32)             not null,
   LIMIT_ID             CHAR(32)             not null,
   PROJ_ID              CHAR(17)             not null,
   FROZEN_LIMIT         NUMBER(20,2)         not null,
   constraint PK_LB_LIMIT_USE primary key (LIMIT_USE_ID)
);

comment on table TEST1.LB_LIMIT_USE is
'LB_LIMIT_USE';

comment on column TEST1.LB_LIMIT_USE.LIMIT_USE_ID is
'LIMIT_USE_ID';

comment on column TEST1.LB_LIMIT_USE.LIMIT_ID is
'LIMIT_ID';

comment on column TEST1.LB_LIMIT_USE.PROJ_ID is
'PROJ_ID';

comment on column TEST1.LB_LIMIT_USE.FROZEN_LIMIT is
'FROZEN_LIMIT';

/*==============================================================*/
/* Table: LB_LIMIT_USE_REC                                      */
/*==============================================================*/
create table TEST1.LB_LIMIT_USE_REC 
(
   LIMIT_USE_REC_ID     CHAR(32)             not null,
   CUST_LIMIT_ID        CHAR(32)             not null,
   PROJ_ID              CHAR(17),
   TRANS_TY             CHAR                 not null,
   TRANS_AMT            NUMBER(20,2)         not null,
   TRANS_TIME           CHAR(17),
   constraint PK_LB_LIMIT_USE_REC primary key (LIMIT_USE_REC_ID)
);

comment on table TEST1.LB_LIMIT_USE_REC is
'LB_LIMIT_USE_REC';

comment on column TEST1.LB_LIMIT_USE_REC.LIMIT_USE_REC_ID is
'LIMIT_USE_REC_ID';

comment on column TEST1.LB_LIMIT_USE_REC.CUST_LIMIT_ID is
'CUST_LIMIT_ID';

comment on column TEST1.LB_LIMIT_USE_REC.PROJ_ID is
'PROJ_ID';

comment on column TEST1.LB_LIMIT_USE_REC.TRANS_TY is
'0：冻结；1：解冻';

comment on column TEST1.LB_LIMIT_USE_REC.TRANS_AMT is
'TRANS_AMT';

comment on column TEST1.LB_LIMIT_USE_REC.TRANS_TIME is
'TRANS_TIME';

/*==============================================================*/
/* Table: LB_LOSS_RATE                                          */
/*==============================================================*/
create table TEST1.LB_LOSS_RATE 
(
   BO_PURPOSE           VARCHAR2(32)         not null,
   LOSS_RATE            NUMBER(10,7),
   constraint PK_LB_LOSS_RATE primary key (BO_PURPOSE)
);

comment on table TEST1.LB_LOSS_RATE is
'LB_LOSS_RATE';

comment on column TEST1.LB_LOSS_RATE.BO_PURPOSE is
'BO_PURPOSE';

comment on column TEST1.LB_LOSS_RATE.LOSS_RATE is
'LOSS_RATE';

/*==============================================================*/
/* Table: LB_PERSON_LIMIT_CTRL                                  */
/*==============================================================*/
create table TEST1.LB_PERSON_LIMIT_CTRL 
(
   CUST_LEVEL           VARCHAR2(32)         not null,
   LIMIT_MAX            NUMBER(20,2),
   constraint PK_LB_PERSON_LIMIT_CTRL primary key (CUST_LEVEL)
);

comment on table TEST1.LB_PERSON_LIMIT_CTRL is
'LB_PERSON_LIMIT_CTRL';

comment on column TEST1.LB_PERSON_LIMIT_CTRL.CUST_LEVEL is
'CUST_LEVEL';

comment on column TEST1.LB_PERSON_LIMIT_CTRL.LIMIT_MAX is
'LIMIT_MAX';

/*==============================================================*/
/* Table: LB_PRICE_BASE_RATE                                    */
/*==============================================================*/
create table TEST1.LB_PRICE_BASE_RATE 
(
   RP_TIME_LIM          VARCHAR2(32)         not null,
   BASE_LN_RATE         NUMBER(10,7),
   ADJ_PARAM            NUMBER(10,7),
   constraint PK_LB_PRICE_BASE_RATE primary key (RP_TIME_LIM)
);

comment on table TEST1.LB_PRICE_BASE_RATE is
'LB_PRICE_BASE_RATE';

comment on column TEST1.LB_PRICE_BASE_RATE.RP_TIME_LIM is
'RP_TIME_LIM';

comment on column TEST1.LB_PRICE_BASE_RATE.BASE_LN_RATE is
'BASE_LN_RATE';

comment on column TEST1.LB_PRICE_BASE_RATE.ADJ_PARAM is
'ADJ_PARAM';

/*==============================================================*/
/* Table: LB_PROJ_BACC_DISCH                                    */
/*==============================================================*/
create table TEST1.LB_PROJ_BACC_DISCH 
(
   PROJ_BACC_ID         CHAR(32)             not null,
   PROJ_ID              CHAR(17)             not null,
   BO_CUST_TY           VARCHAR2(20)         not null,
   BO_CUST_ID           VARCHAR2(32)         not null,
   DISCHARGE_TIME       CHAR(17),
   OPER_ID              VARCHAR2(32),
   DEBIT_AMT            NUMBER(20,2),
   DISCH_MANAGE_FEE     NUMBER(20,2),
   DISCH_OVD_COMP_AMT   NUMBER(20,2),
   OVD_COMP_TOTAL_AMT   NUMBER(20,2),
   PF_LOSS_TOTAL_AMT    NUMBER(20,2),
   SEND_MSG_TIMES       NUMBER(4),
   constraint PK_LB_PROJ_BACC_DISCH primary key (PROJ_BACC_ID)
);

comment on table TEST1.LB_PROJ_BACC_DISCH is
'LB_PROJ_BACC_DISCH';

comment on column TEST1.LB_PROJ_BACC_DISCH.PROJ_BACC_ID is
'PROJ_BACC_ID';

comment on column TEST1.LB_PROJ_BACC_DISCH.PROJ_ID is
'PROJ_ID';

comment on column TEST1.LB_PROJ_BACC_DISCH.BO_CUST_TY is
'0：个人用户；1：圈内企业；2：圈外企业';

comment on column TEST1.LB_PROJ_BACC_DISCH.BO_CUST_ID is
'根据借款类型，对应到相应的用户表或者企业表';

comment on column TEST1.LB_PROJ_BACC_DISCH.DISCHARGE_TIME is
'DISCHARGE_TIME';

comment on column TEST1.LB_PROJ_BACC_DISCH.OPER_ID is
'OPER_ID';

comment on column TEST1.LB_PROJ_BACC_DISCH.DEBIT_AMT is
'DEBIT_AMT';

comment on column TEST1.LB_PROJ_BACC_DISCH.DISCH_MANAGE_FEE is
'DISCH_MANAGE_FEE';

comment on column TEST1.LB_PROJ_BACC_DISCH.DISCH_OVD_COMP_AMT is
'DISCH_OVD_COMP_AMT';

comment on column TEST1.LB_PROJ_BACC_DISCH.OVD_COMP_TOTAL_AMT is
'OVD_COMP_TOTAL_AMT';

comment on column TEST1.LB_PROJ_BACC_DISCH.PF_LOSS_TOTAL_AMT is
'PF_LOSS_TOTAL_AMT';

comment on column TEST1.LB_PROJ_BACC_DISCH.SEND_MSG_TIMES is
'SEND_MSG_TIMES';

/*==============================================================*/
/* Table: LB_PROJ_BRO_REC                                       */
/*==============================================================*/
create table TEST1.LB_PROJ_BRO_REC 
(
   PROJ_BRO_REC_ID      CHAR(32)             not null,
   USER_NO              VARCHAR2(32)         not null,
   BROWSE_TIME          CHAR(17)             not null,
   BROWSE_PROJ_ID       CHAR(17)             not null,
   constraint PK_LB_PROJ_BRO_REC primary key (PROJ_BRO_REC_ID)
);

comment on table TEST1.LB_PROJ_BRO_REC is
'LB_PROJ_BRO_REC';

comment on column TEST1.LB_PROJ_BRO_REC.PROJ_BRO_REC_ID is
'PROJ_BRO_REC_ID';

comment on column TEST1.LB_PROJ_BRO_REC.USER_NO is
'USER_NO';

comment on column TEST1.LB_PROJ_BRO_REC.BROWSE_TIME is
'BROWSE_TIME';

comment on column TEST1.LB_PROJ_BRO_REC.BROWSE_PROJ_ID is
'BROWSE_PROJ_ID';

/*==============================================================*/
/* Table: LB_PROJ_CONTRACT                                      */
/*==============================================================*/
create table TEST1.LB_PROJ_CONTRACT 
(
   PROJ_CONTRACT_ID     CHAR(32)             not null,
   TEMPLATE_ID          CHAR(32)             not null,
   PROJ_ID              CHAR(17)             not null,
   SIGN_DATE            CHAR(8),
   STATUS               CHAR                 not null,
   CONTRACT_FILE_PATH   VARCHAR2(750),
   constraint PK_LB_PROJ_CONTRACT primary key (PROJ_CONTRACT_ID)
);

comment on table TEST1.LB_PROJ_CONTRACT is
'LB_PROJ_CONTRACT';

comment on column TEST1.LB_PROJ_CONTRACT.PROJ_CONTRACT_ID is
'PROJ_CONTRACT_ID';

comment on column TEST1.LB_PROJ_CONTRACT.TEMPLATE_ID is
'TEMPLATE_ID';

comment on column TEST1.LB_PROJ_CONTRACT.PROJ_ID is
'PROJ_ID';

comment on column TEST1.LB_PROJ_CONTRACT.SIGN_DATE is
'SIGN_DATE';

comment on column TEST1.LB_PROJ_CONTRACT.STATUS is
'0：执行状态；1：正常结束状态；2：追偿状态';

comment on column TEST1.LB_PROJ_CONTRACT.CONTRACT_FILE_PATH is
'CONTRACT_FILE_PATH';

/*==============================================================*/
/* Table: LB_PROJ_DOC                                           */
/*==============================================================*/
create table TEST1.LB_PROJ_DOC 
(
   PROJ_DOC_ID          CHAR(32)             not null,
   PROJ_ID              CHAR(17)             not null,
   FILE_NO              VARCHAR2(32)         not null,
   FILE_TYPE            VARCHAR2(32)         not null,
   constraint PK_LB_PROJ_DOC primary key (PROJ_DOC_ID)
);

comment on table TEST1.LB_PROJ_DOC is
'LB_PROJ_DOC';

comment on column TEST1.LB_PROJ_DOC.PROJ_DOC_ID is
'PROJ_DOC_ID';

comment on column TEST1.LB_PROJ_DOC.PROJ_ID is
'PROJ_ID';

comment on column TEST1.LB_PROJ_DOC.FILE_NO is
'FILE_NO';

comment on column TEST1.LB_PROJ_DOC.FILE_TYPE is
'FILE_TYPE';

/*==============================================================*/
/* Table: LB_PROJ_INFO                                          */
/*==============================================================*/
create table TEST1.LB_PROJ_INFO 
(
   PROJ_ID              CHAR(17)             not null,
   PROJ_NAME            VARCHAR2(300),
   BO_CUST_TY           VARCHAR2(20)         not null,
   BO_CUST_ID           VARCHAR2(32)         not null,
   BO_CUST_NAME         VARCHAR2(96),
   BO_CUST_LEVEL        VARCHAR2(32),
   BO_CUST_TRADE        VARCHAR2(32),
   BO_CUST_AREA         VARCHAR2(32),
   PROJ_DESC            VARCHAR2(1500),
   BO_CUST_DESC         VARCHAR2(1500),
   BO_CUST_PROP         VARCHAR2(32),
   APPLY_BO_AMT         NUMBER(20,2)         not null,
   BO_AMT               NUMBER(20,2)         not null,
   PER_SHARE_AMT        NUMBER(20,2),
   RP_TY                VARCHAR2(32)         not null,
   RP_TIME_LIM          VARCHAR2(32),
   ALOW_AH_RP           CHAR                 not null,
   PRSV_TY              CHAR                 not null,
   PRSV_ID              VARCHAR2(32),
   PRSV_NAME            VARCHAR2(75),
   SSP_DAYS             NUMBER(3),
   PROJ_STATUS          CHAR(2)              not null,
   APPLY_TIME           CHAR(17),
   PROJ_PUB_TIME        CHAR(17),
   SSP_LIM_TIME         CHAR(17),
   CRF_PRGS             NUMBER(3),
   VAL_DATE             CHAR(8),
   LN_TIME              CHAR(17),
   OVD_STATUS           CHAR                 not null,
   BACC_STATUS          CHAR                 not null,
   CLEAR_STATUS         CHAR                 not null,
   INTR_RATE            NUMBER(10,7),
   INV_RATE             NUMBER(10,7),
   MNG_RATE             NUMBER(10,7),
   PRSV_RATE            NUMBER(10,7),
   PF_MNG_FEE_RATE      NUMBER(10,7),
   LOGIC_LOCK_ID        CHAR(32)             not null,
   OVD_GRACE_PUN_RATIO  NUMBER(10,7),
   OVD_PUN_RATIO        NUMBER(10,7),
   OVD_GRACE_FEE_RATIO  NUMBER(10,7),
   OVD_FEE_RATIO        NUMBER(10,7),
   AH_RP_PBC_CUST_RATE  NUMBER(10,7),
   AH_RP_PBC_PF_RATE    NUMBER(10,7),
   CLOSE_TIME           CHAR(17),
   constraint PK_LB_PROJ_INFO primary key (PROJ_ID)
);

comment on table TEST1.LB_PROJ_INFO is
'LB_PROJ_INFO';

comment on column TEST1.LB_PROJ_INFO.PROJ_ID is
'PROJ_ID';

comment on column TEST1.LB_PROJ_INFO.PROJ_NAME is
'PROJ_NAME';

comment on column TEST1.LB_PROJ_INFO.BO_CUST_TY is
'0：个人用户；1：圈内企业；2：圈外企业';

comment on column TEST1.LB_PROJ_INFO.BO_CUST_ID is
'根据借款类型，对应到相应的用户表或者企业表';

comment on column TEST1.LB_PROJ_INFO.BO_CUST_NAME is
'BO_CUST_NAME';

comment on column TEST1.LB_PROJ_INFO.BO_CUST_LEVEL is
'BO_CUST_LEVEL';

comment on column TEST1.LB_PROJ_INFO.BO_CUST_TRADE is
'BO_CUST_TRADE';

comment on column TEST1.LB_PROJ_INFO.BO_CUST_AREA is
'BO_CUST_AREA';

comment on column TEST1.LB_PROJ_INFO.PROJ_DESC is
'PROJ_DESC';

comment on column TEST1.LB_PROJ_INFO.BO_CUST_DESC is
'BO_CUST_DESC';

comment on column TEST1.LB_PROJ_INFO.BO_CUST_PROP is
'BO_CUST_PROP';

comment on column TEST1.LB_PROJ_INFO.APPLY_BO_AMT is
'考虑到借款人在满标之前“定标”的情况，分开申请借款金额和实际借款金额两个字段。';

comment on column TEST1.LB_PROJ_INFO.BO_AMT is
'BO_AMT';

comment on column TEST1.LB_PROJ_INFO.PER_SHARE_AMT is
'PER_SHARE_AMT';

comment on column TEST1.LB_PROJ_INFO.RP_TY is
'RP_TY';

comment on column TEST1.LB_PROJ_INFO.RP_TIME_LIM is
'RP_TIME_LIM';

comment on column TEST1.LB_PROJ_INFO.ALOW_AH_RP is
'ALOW_AH_RP';

comment on column TEST1.LB_PROJ_INFO.PRSV_TY is
'0：无保全；1：自建风险资金池；2：保险；3：担保；';

comment on column TEST1.LB_PROJ_INFO.PRSV_ID is
'根据保全类型，区分是担保还是保险公司';

comment on column TEST1.LB_PROJ_INFO.PRSV_NAME is
'PRSV_NAME';

comment on column TEST1.LB_PROJ_INFO.SSP_DAYS is
'SSP_DAYS';

comment on column TEST1.LB_PROJ_INFO.PROJ_STATUS is
'01：编辑状态
11:借款申请
12:众筹(众筹中)
13:申请不通过（可以重新提交）
19:申请撤销（结束）
21:满标（待放款审核）
22:定标（待放款审核）
23:流标
31:项目执行
39:项目正常结束
53:坏账';

comment on column TEST1.LB_PROJ_INFO.APPLY_TIME is
'APPLY_TIME';

comment on column TEST1.LB_PROJ_INFO.PROJ_PUB_TIME is
'PROJ_PUB_TIME';

comment on column TEST1.LB_PROJ_INFO.SSP_LIM_TIME is
'SSP_LIM_TIME';

comment on column TEST1.LB_PROJ_INFO.CRF_PRGS is
'CRF_PRGS';

comment on column TEST1.LB_PROJ_INFO.VAL_DATE is
'VAL_DATE';

comment on column TEST1.LB_PROJ_INFO.LN_TIME is
'LN_TIME';

comment on column TEST1.LB_PROJ_INFO.OVD_STATUS is
'0：正常；1：逾期宽限；2：逾期';

comment on column TEST1.LB_PROJ_INFO.BACC_STATUS is
'0-不是坏账；1-坏账；2-核销';

comment on column TEST1.LB_PROJ_INFO.CLEAR_STATUS is
'0-未还清；1-提前还清；2-逾期还清、3-到期还清';

comment on column TEST1.LB_PROJ_INFO.INTR_RATE is
'INTR_RATE';

comment on column TEST1.LB_PROJ_INFO.INV_RATE is
'INV_RATE';

comment on column TEST1.LB_PROJ_INFO.MNG_RATE is
'MNG_RATE';

comment on column TEST1.LB_PROJ_INFO.PRSV_RATE is
'参考保全类型';

comment on column TEST1.LB_PROJ_INFO.PF_MNG_FEE_RATE is
'PF_MNG_FEE_RATE';

comment on column TEST1.LB_PROJ_INFO.LOGIC_LOCK_ID is
'LOGIC_LOCK_ID';

comment on column TEST1.LB_PROJ_INFO.OVD_GRACE_PUN_RATIO is
'OVD_GRACE_PUN_RATIO';

comment on column TEST1.LB_PROJ_INFO.OVD_PUN_RATIO is
'OVD_PUN_RATIO';

comment on column TEST1.LB_PROJ_INFO.OVD_GRACE_FEE_RATIO is
'OVD_GRACE_FEE_RATIO';

comment on column TEST1.LB_PROJ_INFO.OVD_FEE_RATIO is
'OVD_FEE_RATIO';

comment on column TEST1.LB_PROJ_INFO.AH_RP_PBC_CUST_RATE is
'AH_RP_PBC_CUST_RATE';

comment on column TEST1.LB_PROJ_INFO.AH_RP_PBC_PF_RATE is
'AH_RP_PBC_PF_RATE';

comment on column TEST1.LB_PROJ_INFO.CLOSE_TIME is
'CLOSE_TIME';

/*==============================================================*/
/* Table: LB_PROJ_INFO_EX                                       */
/*==============================================================*/
create table TEST1.LB_PROJ_INFO_EX 
(
   PROJ_ID              CHAR(17)             not null,
   FEE                  NUMBER(20,2),
   RECV_PRSV_AMT        NUMBER(20,2),
   RP_TOTAL_PRINC       NUMBER(20,2),
   RP_TOTAL_INTR_AMT    NUMBER(20,2),
   RP_TOTAL_MNG_FEE     NUMBER(20,2),
   RP_TOTAL_AMT         NUMBER(20,2),
   RPED_TOTAL_PRINC     NUMBER(20,2),
   RPED_TOTAL_INTR_AMT  NUMBER(20,2),
   RPED_TOTAL_MNG_FEE   NUMBER(20,2),
   RPED_TOTAL_PUN_INTR  NUMBER(20,2),
   RPED_TOTAL_OVD_FEE   NUMBER(20,2),
   RPED_TOTAL_AMT       NUMBER(20,2),
   PF_MNG_FEE           NUMBER(20,2),
   AH_RPED_PBC_CUST_AMT NUMBER(20,2),
   AH_RPED_PBC_PF_AMT   NUMBER(20,2),
   constraint PK_LB_PROJ_INFO_EX primary key (PROJ_ID)
);

comment on table TEST1.LB_PROJ_INFO_EX is
'LB_PROJ_INFO_EX';

comment on column TEST1.LB_PROJ_INFO_EX.PROJ_ID is
'PROJ_ID';

comment on column TEST1.LB_PROJ_INFO_EX.FEE is
'FEE';

comment on column TEST1.LB_PROJ_INFO_EX.RECV_PRSV_AMT is
'参考保全类型';

comment on column TEST1.LB_PROJ_INFO_EX.RP_TOTAL_PRINC is
'RP_TOTAL_PRINC';

comment on column TEST1.LB_PROJ_INFO_EX.RP_TOTAL_INTR_AMT is
'RP_TOTAL_INTR_AMT';

comment on column TEST1.LB_PROJ_INFO_EX.RP_TOTAL_MNG_FEE is
'RP_TOTAL_MNG_FEE';

comment on column TEST1.LB_PROJ_INFO_EX.RP_TOTAL_AMT is
'RP_TOTAL_AMT';

comment on column TEST1.LB_PROJ_INFO_EX.RPED_TOTAL_PRINC is
'RPED_TOTAL_PRINC';

comment on column TEST1.LB_PROJ_INFO_EX.RPED_TOTAL_INTR_AMT is
'RPED_TOTAL_INTR_AMT';

comment on column TEST1.LB_PROJ_INFO_EX.RPED_TOTAL_MNG_FEE is
'RPED_TOTAL_MNG_FEE';

comment on column TEST1.LB_PROJ_INFO_EX.RPED_TOTAL_PUN_INTR is
'RPED_TOTAL_PUN_INTR';

comment on column TEST1.LB_PROJ_INFO_EX.RPED_TOTAL_OVD_FEE is
'RPED_TOTAL_OVD_FEE';

comment on column TEST1.LB_PROJ_INFO_EX.RPED_TOTAL_AMT is
'RPED_TOTAL_AMT';

comment on column TEST1.LB_PROJ_INFO_EX.PF_MNG_FEE is
'PF_MNG_FEE';

comment on column TEST1.LB_PROJ_INFO_EX.AH_RPED_PBC_CUST_AMT is
'AH_RPED_PBC_CUST_AMT';

comment on column TEST1.LB_PROJ_INFO_EX.AH_RPED_PBC_PF_AMT is
'AH_RPED_PBC_PF_AMT';

/*==============================================================*/
/* Table: LB_PROJ_OVD_REC                                       */
/*==============================================================*/
create table TEST1.LB_PROJ_OVD_REC 
(
   PROJ_OVD_REC_ID      CHAR(32)             not null,
   PROJ_ID              CHAR(17)             not null,
   RP_PER_NUM           NUMBER(4)            not null,
   OVD_TIME             CHAR(17),
   OVD_STATUS           CHAR                 not null,
   OVD_RP_TY            CHAR,
   OVD_RP_CLEAR_TIME    CHAR(17),
   OVD_COMP_VRYER       VARCHAR2(30),
   OVD_COMP_VRY_TIME    CHAR(17),
   OVD_COMP_VRY_COMTS   VARCHAR2(1500),
   BO_CUST_TY           VARCHAR2(20)         not null,
   BO_CUST_ID           VARCHAR2(32)         not null,
   OVD_PEN_STATUS       CHAR                 not null,
   OVD_SEND_MSG_TIMES1  NUMBER(4),
   OVD_SEND_MSG_TIMES2  NUMBER(4),
   OVD_SEND_MSG_TIMES3  NUMBER(4),
   OVD_SEND_MSG_TIMES4  NUMBER(4),
   PROJ_STATUS          CHAR(2),
   constraint PK_LB_PROJ_OVD_REC primary key (PROJ_OVD_REC_ID)
);

comment on table TEST1.LB_PROJ_OVD_REC is
'LB_PROJ_OVD_REC';

comment on column TEST1.LB_PROJ_OVD_REC.PROJ_OVD_REC_ID is
'PROJ_OVD_REC_ID';

comment on column TEST1.LB_PROJ_OVD_REC.PROJ_ID is
'PROJ_ID';

comment on column TEST1.LB_PROJ_OVD_REC.RP_PER_NUM is
'同还款计划表的期数';

comment on column TEST1.LB_PROJ_OVD_REC.OVD_TIME is
'OVD_TIME';

comment on column TEST1.LB_PROJ_OVD_REC.OVD_STATUS is
'逾期状态 0：正常；1：逾期宽限；2：逾期';

comment on column TEST1.LB_PROJ_OVD_REC.OVD_RP_TY is
'0-未还清；1-提前还清；2-逾期还清、3-到期还清';

comment on column TEST1.LB_PROJ_OVD_REC.OVD_RP_CLEAR_TIME is
'OVD_RP_CLEAR_TIME';

comment on column TEST1.LB_PROJ_OVD_REC.OVD_COMP_VRYER is
'OVD_COMP_VRYER';

comment on column TEST1.LB_PROJ_OVD_REC.OVD_COMP_VRY_TIME is
'OVD_COMP_VRY_TIME';

comment on column TEST1.LB_PROJ_OVD_REC.OVD_COMP_VRY_COMTS is
'OVD_COMP_VRY_COMTS';

comment on column TEST1.LB_PROJ_OVD_REC.BO_CUST_TY is
'BO_CUST_TY';

comment on column TEST1.LB_PROJ_OVD_REC.BO_CUST_ID is
'BO_CUST_ID';

comment on column TEST1.LB_PROJ_OVD_REC.OVD_PEN_STATUS is
'逾期赔付状态
0：正常；1：逾期未还款；2：逾期已还款；3：逾期待审核；4：逾期已赔付；5、赔付已还清';

comment on column TEST1.LB_PROJ_OVD_REC.OVD_SEND_MSG_TIMES1 is
'OVD_SEND_MSG_TIMES1';

comment on column TEST1.LB_PROJ_OVD_REC.OVD_SEND_MSG_TIMES2 is
'OVD_SEND_MSG_TIMES2';

comment on column TEST1.LB_PROJ_OVD_REC.OVD_SEND_MSG_TIMES3 is
'OVD_SEND_MSG_TIMES3';

comment on column TEST1.LB_PROJ_OVD_REC.OVD_SEND_MSG_TIMES4 is
'OVD_SEND_MSG_TIMES4';

comment on column TEST1.LB_PROJ_OVD_REC.PROJ_STATUS is
'PROJ_STATUS';

/*==============================================================*/
/* Table: LB_PROJ_PAY                                           */
/*==============================================================*/
create table TEST1.LB_PROJ_PAY 
(
   PROJ_PAY_ID          CHAR(32)             not null,
   PROJ_ID              CHAR(17)             not null,
   TRANS_SUB            VARCHAR2(32),
   EP_TRANS_FLOW_ID     VARCHAR2(32),
   TRANS_TOT_AMT        NUMBER(20,2),
   TRANS_TIME           TIMESTAMP,
   REMARK               VARCHAR2(1500),
   BUSI_TRANS_TY        VARCHAR2(32),
   EP_TRANS_TY          VARCHAR2(32),
   TRANS_STATUS         CHAR,
   CHECK_STATUS         CHAR,
   constraint PK_LB_PROJ_PAY primary key (PROJ_PAY_ID)
);

comment on table TEST1.LB_PROJ_PAY is
'LB_PROJ_PAY';

comment on column TEST1.LB_PROJ_PAY.PROJ_PAY_ID is
'PROJ_PAY_ID';

comment on column TEST1.LB_PROJ_PAY.PROJ_ID is
'PROJ_ID';

comment on column TEST1.LB_PROJ_PAY.TRANS_SUB is
'TRANS_SUB';

comment on column TEST1.LB_PROJ_PAY.EP_TRANS_FLOW_ID is
'EP_TRANS_FLOW_ID';

comment on column TEST1.LB_PROJ_PAY.TRANS_TOT_AMT is
'TRANS_TOT_AMT';

comment on column TEST1.LB_PROJ_PAY.TRANS_TIME is
'特别使用TIMESTAMP，记录精确时间';

comment on column TEST1.LB_PROJ_PAY.REMARK is
'REMARK';

comment on column TEST1.LB_PROJ_PAY.BUSI_TRANS_TY is
'BUSI_TRANS_TY';

comment on column TEST1.LB_PROJ_PAY.EP_TRANS_TY is
'EP_TRANS_TY';

comment on column TEST1.LB_PROJ_PAY.TRANS_STATUS is
'TRANS_STATUS';

comment on column TEST1.LB_PROJ_PAY.CHECK_STATUS is
'CHECK_STATUS';

/*==============================================================*/
/* Table: LB_PROJ_PAY_DETAIL                                    */
/*==============================================================*/
create table TEST1.LB_PROJ_PAY_DETAIL 
(
   PROJ_PAY_DETAIL_ID   CHAR(32)             not null,
   PROJ_ID              CHAR(17)             not null,
   PROJ_PAY_ID          CHAR(32)             not null,
   TRANS_SUB            VARCHAR2(300),
   TRANS_OBJ            VARCHAR2(300),
   TRANS_TY             VARCHAR2(20),
   PAY_NAME             VARCHAR2(75),
   TRANS_AMT            NUMBER(20,2),
   RP_PLAN_ID           CHAR(32),
   RECV_PLAN_ID         CHAR(32),
   REMARK               VARCHAR2(1500),
   EP_TRANS_FLOW_ID     VARCHAR2(32),
   constraint PK_LB_PROJ_PAY_DETAIL primary key (PROJ_PAY_DETAIL_ID)
);

comment on table TEST1.LB_PROJ_PAY_DETAIL is
'LB_PROJ_PAY_DETAIL';

comment on column TEST1.LB_PROJ_PAY_DETAIL.PROJ_PAY_DETAIL_ID is
'PROJ_PAY_DETAIL_ID';

comment on column TEST1.LB_PROJ_PAY_DETAIL.PROJ_ID is
'PROJ_ID';

comment on column TEST1.LB_PROJ_PAY_DETAIL.PROJ_PAY_ID is
'PROJ_PAY_ID';

comment on column TEST1.LB_PROJ_PAY_DETAIL.TRANS_SUB is
'TRANS_SUB';

comment on column TEST1.LB_PROJ_PAY_DETAIL.TRANS_OBJ is
'TRANS_OBJ';

comment on column TEST1.LB_PROJ_PAY_DETAIL.TRANS_TY is
'TRANS_TY';

comment on column TEST1.LB_PROJ_PAY_DETAIL.PAY_NAME is
'PAY_NAME';

comment on column TEST1.LB_PROJ_PAY_DETAIL.TRANS_AMT is
'TRANS_AMT';

comment on column TEST1.LB_PROJ_PAY_DETAIL.RP_PLAN_ID is
'RP_PLAN_ID';

comment on column TEST1.LB_PROJ_PAY_DETAIL.RECV_PLAN_ID is
'RECV_PLAN_ID';

comment on column TEST1.LB_PROJ_PAY_DETAIL.REMARK is
'REMARK';

comment on column TEST1.LB_PROJ_PAY_DETAIL.EP_TRANS_FLOW_ID is
'EP_TRANS_FLOW_ID';

/*==============================================================*/
/* Table: LB_PROJ_SEAR_REC                                      */
/*==============================================================*/
create table TEST1.LB_PROJ_SEAR_REC 
(
   PROJ_SEAR_REC_ID     CHAR(32)             not null,
   USER_NO              VARCHAR2(32)         not null,
   SEARCH_COND          VARCHAR2(500)        not null,
   SEARCH_TIME          CHAR(17)             not null,
   constraint PK_LB_PROJ_SEAR_REC primary key (PROJ_SEAR_REC_ID)
);

comment on table TEST1.LB_PROJ_SEAR_REC is
'LB_PROJ_SEAR_REC';

comment on column TEST1.LB_PROJ_SEAR_REC.PROJ_SEAR_REC_ID is
'PROJ_SEAR_REC_ID';

comment on column TEST1.LB_PROJ_SEAR_REC.USER_NO is
'USER_NO';

comment on column TEST1.LB_PROJ_SEAR_REC.SEARCH_COND is
'SEARCH_COND';

comment on column TEST1.LB_PROJ_SEAR_REC.SEARCH_TIME is
'SEARCH_TIME';

/*==============================================================*/
/* Table: LB_RATE_CARD                                          */
/*==============================================================*/
create table TEST1.LB_RATE_CARD 
(
   RATE_CARD_ID         CHAR(32),
   CARD_TY              VARCHAR2(32),
   CARD_NAME            VARCHAR2(75),
   CARD_SCORE           NUMBER(7,2)
);

comment on table TEST1.LB_RATE_CARD is
'LB_RATE_CARD';

comment on column TEST1.LB_RATE_CARD.RATE_CARD_ID is
'RATE_CARD_ID';

comment on column TEST1.LB_RATE_CARD.CARD_TY is
'CUST_RATE_OUT_GROUP_PERSON 客户评价模型-圈外个人
  CUST_RATE_OUT_GROUP_ENT 客户评价模型-圈外企业
  CUST_MON_GROUP_PERSON 贷后监控模型-圈外企业
  CUST_MON_GROUP_ENT 贷后监控模型-圈外企业';

comment on column TEST1.LB_RATE_CARD.CARD_NAME is
'CARD_NAME';

comment on column TEST1.LB_RATE_CARD.CARD_SCORE is
'CARD_SCORE';

/*==============================================================*/
/* Table: LB_RATE_ITEM                                          */
/*==============================================================*/
create table TEST1.LB_RATE_ITEM 
(
   RATE_ITEM_ID         CHAR(32),
   RATE_CARD_ID         CHAR(32),
   RATE_ITEM_GROUP_ID   CHAR(32),
   SERIAL_NUM           NUMBER(5),
   ITEM_CODE            VARCHAR2(50),
   ITEM_NAME            VARCHAR2(75),
   DEFAULT_VALUE        NUMBER(7,2)
);

comment on table TEST1.LB_RATE_ITEM is
'LB_RATE_ITEM';

comment on column TEST1.LB_RATE_ITEM.RATE_ITEM_ID is
'RATE_ITEM_ID';

comment on column TEST1.LB_RATE_ITEM.RATE_CARD_ID is
'RATE_CARD_ID';

comment on column TEST1.LB_RATE_ITEM.RATE_ITEM_GROUP_ID is
'RATE_ITEM_GROUP_ID';

comment on column TEST1.LB_RATE_ITEM.SERIAL_NUM is
'SERIAL_NUM';

comment on column TEST1.LB_RATE_ITEM.ITEM_CODE is
'ITEM_CODE';

comment on column TEST1.LB_RATE_ITEM.ITEM_NAME is
'ITEM_NAME';

comment on column TEST1.LB_RATE_ITEM.DEFAULT_VALUE is
'DEFAULT_VALUE';

/*==============================================================*/
/* Table: LB_RATE_ITEM_GROUP                                    */
/*==============================================================*/
create table TEST1.LB_RATE_ITEM_GROUP 
(
   RATE_ITEM_GROUP_ID   CHAR(32),
   RATE_CARD_ID         CHAR(32),
   SERIAL_NUM           NUMBER(5),
   GROUP_CODE           VARCHAR2(50),
   GROUP_NAME           VARCHAR2(75)
);

comment on table TEST1.LB_RATE_ITEM_GROUP is
'LB_RATE_ITEM_GROUP';

comment on column TEST1.LB_RATE_ITEM_GROUP.RATE_ITEM_GROUP_ID is
'RATE_ITEM_GROUP_ID';

comment on column TEST1.LB_RATE_ITEM_GROUP.RATE_CARD_ID is
'RATE_CARD_ID';

comment on column TEST1.LB_RATE_ITEM_GROUP.SERIAL_NUM is
'SERIAL_NUM';

comment on column TEST1.LB_RATE_ITEM_GROUP.GROUP_CODE is
'GROUP_CODE';

comment on column TEST1.LB_RATE_ITEM_GROUP.GROUP_NAME is
'GROUP_NAME';

/*==============================================================*/
/* Table: LB_RATE_ITEM_VALUE                                    */
/*==============================================================*/
create table TEST1.LB_RATE_ITEM_VALUE 
(
   RATE_ITEM_VALUE_ID   CHAR(32),
   RATE_ITEM_ID         CHAR(32),
   IS_RANGE             CHAR,
   MAX_VALUE            VARCHAR2(50),
   MIN_VALUE            VARCHAR2(50),
   SCORE                NUMBER(7,2),
   VALUE_NAME           VARCHAR2(75)
);

comment on table TEST1.LB_RATE_ITEM_VALUE is
'LB_RATE_ITEM_VALUE';

comment on column TEST1.LB_RATE_ITEM_VALUE.RATE_ITEM_VALUE_ID is
'RATE_ITEM_VALUE_ID';

comment on column TEST1.LB_RATE_ITEM_VALUE.RATE_ITEM_ID is
'RATE_ITEM_ID';

comment on column TEST1.LB_RATE_ITEM_VALUE.IS_RANGE is
'IS_RANGE';

comment on column TEST1.LB_RATE_ITEM_VALUE.MAX_VALUE is
'MAX_VALUE';

comment on column TEST1.LB_RATE_ITEM_VALUE.MIN_VALUE is
'MIN_VALUE';

comment on column TEST1.LB_RATE_ITEM_VALUE.SCORE is
'SCORE';

comment on column TEST1.LB_RATE_ITEM_VALUE.VALUE_NAME is
'VALUE_NAME';

/*==============================================================*/
/* Table: LB_RATE_LEVEL_REL                                     */
/*==============================================================*/
create table TEST1.LB_RATE_LEVEL_REL 
(
   RATE_LEVEL_REL_ID    CHAR(32)             not null,
   RATE_CARD_ID         CHAR(32)             not null,
   CUST_LEVEL           VARCHAR2(32)         not null,
   IS_RANGE             CHAR                 not null,
   MAX_SCORE            NUMBER(7,2),
   MIN_SCORE            NUMBER(7,2),
   constraint PK_RATE_LEVEL_REL_ID primary key (RATE_LEVEL_REL_ID)
);

comment on table TEST1.LB_RATE_LEVEL_REL is
'LB_RATE_LEVEL_REL';

comment on column TEST1.LB_RATE_LEVEL_REL.RATE_LEVEL_REL_ID is
'RATE_LEVEL_REL_ID';

comment on column TEST1.LB_RATE_LEVEL_REL.RATE_CARD_ID is
'RATE_CARD_ID';

comment on column TEST1.LB_RATE_LEVEL_REL.CUST_LEVEL is
'CUST_LEVEL';

comment on column TEST1.LB_RATE_LEVEL_REL.IS_RANGE is
'0：非区间取值，取最小值的字段； 1：区间取值';

comment on column TEST1.LB_RATE_LEVEL_REL.MAX_SCORE is
'MAX_SCORE';

comment on column TEST1.LB_RATE_LEVEL_REL.MIN_SCORE is
'MIN_SCORE';

/*==============================================================*/
/* Table: LB_RECV_PLAN                                          */
/*==============================================================*/
create table TEST1.LB_RECV_PLAN 
(
   RECV_PLAN_ID         CHAR(32)             not null,
   PROJ_ID              CHAR(17),
   SUBSC_USER_NO        VARCHAR2(32)         not null,
   RECV_PER_NUM         NUMBER(4)            not null,
   RECV_PRINC           NUMBER(20,2),
   RECV_RATE            NUMBER(20,2),
   RECV_FULL_DATE       CHAR(8),
   ACT_FULL_DATE        CHAR(8),
   RECVED_PRINC         NUMBER(20,2),
   RECVED_INTR          NUMBER(20,2),
   RECVED_PUNINTR       NUMBER(20,2),
   RECVED_PBC           NUMBER(20,2),
   RECVED_CLEAR_STATUS  CHAR                 not null,
   REMARK               VARCHAR2(1500),
   SUBSC_CUST_TY        VARCHAR2(20)         not null,
   RECV_TOTAL_AMT       NUMBER(20,2),
   constraint PK_LB_RECV_PLAN primary key (RECV_PLAN_ID)
);

comment on table TEST1.LB_RECV_PLAN is
'LB_RECV_PLAN';

comment on column TEST1.LB_RECV_PLAN.RECV_PLAN_ID is
'RECV_PLAN_ID';

comment on column TEST1.LB_RECV_PLAN.PROJ_ID is
'PROJ_ID';

comment on column TEST1.LB_RECV_PLAN.SUBSC_USER_NO is
'SUBSC_USER_NO';

comment on column TEST1.LB_RECV_PLAN.RECV_PER_NUM is
'RECV_PER_NUM';

comment on column TEST1.LB_RECV_PLAN.RECV_PRINC is
'RECV_PRINC';

comment on column TEST1.LB_RECV_PLAN.RECV_RATE is
'RECV_RATE';

comment on column TEST1.LB_RECV_PLAN.RECV_FULL_DATE is
'RECV_FULL_DATE';

comment on column TEST1.LB_RECV_PLAN.ACT_FULL_DATE is
'ACT_FULL_DATE';

comment on column TEST1.LB_RECV_PLAN.RECVED_PRINC is
'RECVED_PRINC';

comment on column TEST1.LB_RECV_PLAN.RECVED_INTR is
'RECVED_INTR';

comment on column TEST1.LB_RECV_PLAN.RECVED_PUNINTR is
'RECVED_PUNINTR';

comment on column TEST1.LB_RECV_PLAN.RECVED_PBC is
'RECVED_PBC';

comment on column TEST1.LB_RECV_PLAN.RECVED_CLEAR_STATUS is
'0-未还清；1-提前还清；2-逾期还清;3-到期还清；4-清偿';

comment on column TEST1.LB_RECV_PLAN.REMARK is
'REMARK';

comment on column TEST1.LB_RECV_PLAN.SUBSC_CUST_TY is
'SUBSC_CUST_TY';

comment on column TEST1.LB_RECV_PLAN.RECV_TOTAL_AMT is
'RECV_TOTAL_AMT';

/*==============================================================*/
/* Table: LB_RP_PLAN                                            */
/*==============================================================*/
create table TEST1.LB_RP_PLAN 
(
   RP_PLAN_ID           CHAR(32)             not null,
   PROJ_ID              CHAR(17)             not null,
   BO_CUST_ID           VARCHAR2(32)         not null,
   RP_PER_NUM           NUMBER(4)            not null,
   RP_PRINC             NUMBER(20,2),
   RP_INTR              NUMBER(20,2),
   RP_MANAGE_FEE        NUMBER(20,2),
   VAL_DATE             CHAR(8),
   PAY_OFF_DATE         CHAR(8),
   ACT_PAY_OFF_DATE     CHAR(17),
   RPED_PRINC           NUMBER(20,2),
   RPED_INTR            NUMBER(20,2),
   RPED_MANAGE_FEE      NUMBER(20,2),
   RPED_PUN_INTR        NUMBER(20,2),
   RPED_OVD_FEE         NUMBER(20,2),
   TOT_PUN_INTR_DAYS    NUMBER(6),
   TOT_OVD_FEE_DAYS     NUMBER(6),
   OVD_PEN_STATUS       CHAR                 not null,
   PAY_OFF_STATUS       CHAR                 not null,
   COM_PEN_TIME         CHAR(17),
   REMARK               VARCHAR2(1500),
   BO_CUST_TY           VARCHAR2(20)         not null,
   RPED_CUST_PBC        NUMBER(20,2),
   RPED_PF_PBC          NUMBER(20,2),
   constraint PK_LB_RP_PLAN primary key (RP_PLAN_ID)
);

comment on table TEST1.LB_RP_PLAN is
'LB_RP_PLAN';

comment on column TEST1.LB_RP_PLAN.RP_PLAN_ID is
'RP_PLAN_ID';

comment on column TEST1.LB_RP_PLAN.PROJ_ID is
'PROJ_ID';

comment on column TEST1.LB_RP_PLAN.BO_CUST_ID is
'BO_CUST_ID';

comment on column TEST1.LB_RP_PLAN.RP_PER_NUM is
'RP_PER_NUM';

comment on column TEST1.LB_RP_PLAN.RP_PRINC is
'RP_PRINC';

comment on column TEST1.LB_RP_PLAN.RP_INTR is
'RP_INTR';

comment on column TEST1.LB_RP_PLAN.RP_MANAGE_FEE is
'RP_MANAGE_FEE';

comment on column TEST1.LB_RP_PLAN.VAL_DATE is
'VAL_DATE';

comment on column TEST1.LB_RP_PLAN.PAY_OFF_DATE is
'PAY_OFF_DATE';

comment on column TEST1.LB_RP_PLAN.ACT_PAY_OFF_DATE is
'ACT_PAY_OFF_DATE';

comment on column TEST1.LB_RP_PLAN.RPED_PRINC is
'RPED_PRINC';

comment on column TEST1.LB_RP_PLAN.RPED_INTR is
'RPED_INTR';

comment on column TEST1.LB_RP_PLAN.RPED_MANAGE_FEE is
'RPED_MANAGE_FEE';

comment on column TEST1.LB_RP_PLAN.RPED_PUN_INTR is
'RPED_PUN_INTR';

comment on column TEST1.LB_RP_PLAN.RPED_OVD_FEE is
'RPED_OVD_FEE';

comment on column TEST1.LB_RP_PLAN.TOT_PUN_INTR_DAYS is
'TOT_PUN_INTR_DAYS';

comment on column TEST1.LB_RP_PLAN.TOT_OVD_FEE_DAYS is
'TOT_OVD_FEE_DAYS';

comment on column TEST1.LB_RP_PLAN.OVD_PEN_STATUS is
'0：正常；1：逾期未还款；2：逾期已还款；3：逾期待审核；4：逾期已赔付；5、赔付已还清；';

comment on column TEST1.LB_RP_PLAN.PAY_OFF_STATUS is
'0-未还清；1-提前还清；2-逾期还清; 3-到期还清；4-清偿';

comment on column TEST1.LB_RP_PLAN.COM_PEN_TIME is
'COM_PEN_TIME';

comment on column TEST1.LB_RP_PLAN.REMARK is
'REMARK';

comment on column TEST1.LB_RP_PLAN.BO_CUST_TY is
'BO_CUST_TY';

comment on column TEST1.LB_RP_PLAN.RPED_CUST_PBC is
'RPED_CUST_PBC';

comment on column TEST1.LB_RP_PLAN.RPED_PF_PBC is
'RPED_PF_PBC';

/*==============================================================*/
/* Table: LB_SUBSC_REC                                          */
/*==============================================================*/
create table TEST1.LB_SUBSC_REC 
(
   SUBSC_REC_ID         CHAR(32)             not null,
   PROJ_ID              CHAR(17)             not null,
   SUBSC_USER_NO        VARCHAR2(32)         not null,
   SUBSC_AMOUNT         NUMBER(20,2)         not null,
   SUBSC_TIME           TIMESTAMP            not null,
   SUBSC_SHARES         NUMBER(8)            not null,
   STATUS               CHAR                 not null,
   REMARK               VARCHAR2(1500),
   SUBSC_CUST_TY        VARCHAR2(20)         not null,
   PROJ_PAY_ID          VARCHAR2(32),
   OPER_USER_NO         VARCHAR2(32),
   constraint PK_LB_SUBSC_REC primary key (SUBSC_REC_ID)
);

comment on table TEST1.LB_SUBSC_REC is
'LB_SUBSC_REC';

comment on column TEST1.LB_SUBSC_REC.SUBSC_REC_ID is
'SUBSC_REC_ID';

comment on column TEST1.LB_SUBSC_REC.PROJ_ID is
'PROJ_ID';

comment on column TEST1.LB_SUBSC_REC.SUBSC_USER_NO is
'SUBSC_USER_NO';

comment on column TEST1.LB_SUBSC_REC.SUBSC_AMOUNT is
'SUBSC_AMOUNT';

comment on column TEST1.LB_SUBSC_REC.SUBSC_TIME is
'特别适用TIMESTAMP，用于网络投标';

comment on column TEST1.LB_SUBSC_REC.SUBSC_SHARES is
'SUBSC_SHARES';

comment on column TEST1.LB_SUBSC_REC.STATUS is
'0：正常；1：流标';

comment on column TEST1.LB_SUBSC_REC.REMARK is
'REMARK';

comment on column TEST1.LB_SUBSC_REC.SUBSC_CUST_TY is
'SUBSC_CUST_TY';

comment on column TEST1.LB_SUBSC_REC.PROJ_PAY_ID is
'PROJ_PAY_ID';

comment on column TEST1.LB_SUBSC_REC.OPER_USER_NO is
'OPER_USER_NO';

/*==============================================================*/
/* Table: LB_TEMPLATE                                           */
/*==============================================================*/
create table TEST1.LB_TEMPLATE 
(
   TEMPLATE_ID          CHAR(32)             not null,
   TITLE                VARCHAR2(150)        not null,
   TYPE                 VARCHAR2(20)         not null,
   VERSION_NUM          VARCHAR2(9)          not null,
   STATUS               CHAR                 not null,
   REMARK               VARCHAR2(1500),
   VRF_ID               VARCHAR2(32),
   VRF_TIME             CHAR(17),
   VRF_OPINENT          VARCHAR2(300),
   ENABLE_TIME          CHAR(17),
   DISABLE_TIME         CHAR(17),
   CURRENT_CONT         CLOB,
   FILE_ID              VARCHAR2(128),
   constraint PK_LB_TEMPLATE primary key (TEMPLATE_ID)
);

comment on table TEST1.LB_TEMPLATE is
'LB_TEMPLATE';

comment on column TEST1.LB_TEMPLATE.TEMPLATE_ID is
'TEMPLATE_ID';

comment on column TEST1.LB_TEMPLATE.TITLE is
'TITLE';

comment on column TEST1.LB_TEMPLATE.TYPE is
'TYPE';

comment on column TEST1.LB_TEMPLATE.VERSION_NUM is
'VERSION_NUM';

comment on column TEST1.LB_TEMPLATE.STATUS is
'0：当前版本，正在使用；1：历史版本；2：编辑状态；';

comment on column TEST1.LB_TEMPLATE.REMARK is
'REMARK';

comment on column TEST1.LB_TEMPLATE.VRF_ID is
'VRF_ID';

comment on column TEST1.LB_TEMPLATE.VRF_TIME is
'VRF_TIME';

comment on column TEST1.LB_TEMPLATE.VRF_OPINENT is
'VRF_OPINENT';

comment on column TEST1.LB_TEMPLATE.ENABLE_TIME is
'ENABLE_TIME';

comment on column TEST1.LB_TEMPLATE.DISABLE_TIME is
'DISABLE_TIME';

comment on column TEST1.LB_TEMPLATE.CURRENT_CONT is
'CURRENT_CONT';

comment on column TEST1.LB_TEMPLATE.FILE_ID is
'FILE_ID';

/*==============================================================*/
/* Table: LB_TEMP_PARAM                                         */
/*==============================================================*/
create table TEST1.LB_TEMP_PARAM 
(
   TEMP_PARAM_ID        CHAR(32)             not null,
   PARAM                VARCHAR2(15),
   REMARK               VARCHAR2(750),
   constraint PK_LB_TEMP_PARAM primary key (TEMP_PARAM_ID)
);

comment on table TEST1.LB_TEMP_PARAM is
'LB_TEMP_PARAM';

comment on column TEST1.LB_TEMP_PARAM.TEMP_PARAM_ID is
'TEMP_PARAM_ID';

comment on column TEST1.LB_TEMP_PARAM.PARAM is
'PARAM';

comment on column TEST1.LB_TEMP_PARAM.REMARK is
'REMARK';

/*==============================================================*/
/* Table: LB_TEMP_PARAM_REL                                     */
/*==============================================================*/
create table TEST1.LB_TEMP_PARAM_REL 
(
   TEMP_PARAM_REL_ID    CHAR(32)             not null,
   TEMPLATE_ID          CHAR(32),
   PARAM                VARCHAR2(48),
   POSITION             NUMBER,
   constraint PK_LB_TEMP_PARAM_REL primary key (TEMP_PARAM_REL_ID)
);

comment on table TEST1.LB_TEMP_PARAM_REL is
'LB_TEMP_PARAM_REL';

comment on column TEST1.LB_TEMP_PARAM_REL.TEMP_PARAM_REL_ID is
'TEMP_PARAM_REL_ID';

comment on column TEST1.LB_TEMP_PARAM_REL.TEMPLATE_ID is
'TEMPLATE_ID';

comment on column TEST1.LB_TEMP_PARAM_REL.PARAM is
'PARAM';

comment on column TEST1.LB_TEMP_PARAM_REL.POSITION is
'POSITION';

/*==============================================================*/
/* Table: LB_TRADE_SCALE_LIMIT                                  */
/*==============================================================*/
create table TEST1.LB_TRADE_SCALE_LIMIT 
(
   TRADE_NO             VARCHAR2(32)         not null,
   MEDIUM_TNV_MAX       NUMBER(20,2),
   MEDIUM_TNV_MIN       NUMBER(20,2),
   SMALL_TNV_MAX        NUMBER(20,2),
   SMALL_TNV_MIN        NUMBER(20,2),
   MINI_TNV_MAX         NUMBER(20,2),
   MINI_TNV_MIN         NUMBER(20,2),
   MEDIUM_LIMIT         NUMBER(20,2),
   SMALL_LIMIT          NUMBER(20,2),
   MINI_LIMIT           NUMBER(20,2),
   constraint PK_LB_TRADE_SCALE_LIMIT primary key (TRADE_NO)
);

comment on table TEST1.LB_TRADE_SCALE_LIMIT is
'LB_TRADE_SCALE_LIMIT';

comment on column TEST1.LB_TRADE_SCALE_LIMIT.TRADE_NO is
'TRADE_NO';

comment on column TEST1.LB_TRADE_SCALE_LIMIT.MEDIUM_TNV_MAX is
'MEDIUM_TNV_MAX';

comment on column TEST1.LB_TRADE_SCALE_LIMIT.MEDIUM_TNV_MIN is
'MEDIUM_TNV_MIN';

comment on column TEST1.LB_TRADE_SCALE_LIMIT.SMALL_TNV_MAX is
'SMALL_TNV_MAX';

comment on column TEST1.LB_TRADE_SCALE_LIMIT.SMALL_TNV_MIN is
'SMALL_TNV_MIN';

comment on column TEST1.LB_TRADE_SCALE_LIMIT.MINI_TNV_MAX is
'MINI_TNV_MAX';

comment on column TEST1.LB_TRADE_SCALE_LIMIT.MINI_TNV_MIN is
'MINI_TNV_MIN';

comment on column TEST1.LB_TRADE_SCALE_LIMIT.MEDIUM_LIMIT is
'MEDIUM_LIMIT';

comment on column TEST1.LB_TRADE_SCALE_LIMIT.SMALL_LIMIT is
'SMALL_LIMIT';

comment on column TEST1.LB_TRADE_SCALE_LIMIT.MINI_LIMIT is
'MINI_LIMIT';

/*==============================================================*/
/* Table: LB_TRANS_EXCEP_REC                                    */
/*==============================================================*/
create table TEST1.LB_TRANS_EXCEP_REC 
(
   TRANS_EXCEP_REC_ID   VARCHAR2(32)         not null,
   PROJ_ID              CHAR(17)             not null,
   PROJ_PAY_ID          VARCHAR2(32),
   TRANS_TIME           TIMESTAMP,
   TRANS_TOT_AMT        NUMBER(20,2),
   TRANS_TYPE           VARCHAR2(20),
   TRANS_MSG            VARCHAR2(1500),
   constraint PK_LB_TRANS_EXCEP_REC primary key (TRANS_EXCEP_REC_ID)
);

comment on table TEST1.LB_TRANS_EXCEP_REC is
'LB_TRANS_EXCEP_REC';

comment on column TEST1.LB_TRANS_EXCEP_REC.TRANS_EXCEP_REC_ID is
'TRANS_EXCEP_REC_ID';

comment on column TEST1.LB_TRANS_EXCEP_REC.PROJ_ID is
'PROJ_ID';

comment on column TEST1.LB_TRANS_EXCEP_REC.PROJ_PAY_ID is
'PROJ_PAY_ID';

comment on column TEST1.LB_TRANS_EXCEP_REC.TRANS_TIME is
'特别使用TIMESTAMP，记录交易时间';

comment on column TEST1.LB_TRANS_EXCEP_REC.TRANS_TOT_AMT is
'TRANS_TOT_AMT';

comment on column TEST1.LB_TRANS_EXCEP_REC.TRANS_TYPE is
'TRANS_TYPE';

comment on column TEST1.LB_TRANS_EXCEP_REC.TRANS_MSG is
'TRANS_MSG';

/*==============================================================*/
/* Table: LB_WORK_FLOW                                          */
/*==============================================================*/
create table TEST1.LB_WORK_FLOW 
(
   WORK_FLOW_ID         CHAR(32)             not null,
   OPER_USER_NO         VARCHAR2(32),
   OPER_USER_NAME       VARCHAR2(75),
   WORK_FLOW_TYPE       VARCHAR2(20),
   BIZ_MAIN_TABLE       VARCHAR2(75),
   BIZ_OBJECT_ID        VARCHAR2(50),
   OPER_TIME            CHAR(17),
   BEFORE_STATUS        VARCHAR2(20),
   OPERATION            VARCHAR2(30),
   AFTER_STATUS         VARCHAR2(20),
   OPER_OPINION         VARCHAR2(1500),
   constraint PK_LB_WORK_FLOW primary key (WORK_FLOW_ID)
);

comment on table TEST1.LB_WORK_FLOW is
'LB_WORK_FLOW';

comment on column TEST1.LB_WORK_FLOW.WORK_FLOW_ID is
'WORK_FLOW_ID';

comment on column TEST1.LB_WORK_FLOW.OPER_USER_NO is
'OPER_USER_NO';

comment on column TEST1.LB_WORK_FLOW.OPER_USER_NAME is
'OPER_USER_NAME';

comment on column TEST1.LB_WORK_FLOW.WORK_FLOW_TYPE is
'WORK_FLOW_TYPE';

comment on column TEST1.LB_WORK_FLOW.BIZ_MAIN_TABLE is
'BIZ_MAIN_TABLE';

comment on column TEST1.LB_WORK_FLOW.BIZ_OBJECT_ID is
'BIZ_OBJECT_ID';

comment on column TEST1.LB_WORK_FLOW.OPER_TIME is
'OPER_TIME';

comment on column TEST1.LB_WORK_FLOW.BEFORE_STATUS is
'BEFORE_STATUS';

comment on column TEST1.LB_WORK_FLOW.OPERATION is
'OPERATION';

comment on column TEST1.LB_WORK_FLOW.AFTER_STATUS is
'AFTER_STATUS';

comment on column TEST1.LB_WORK_FLOW.OPER_OPINION is
'OPER_OPINION';

/*==============================================================*/
/* Table: LN_ERRLOG                                             */
/*==============================================================*/
create table TEST1.LN_ERRLOG 
(
   ID                   VARCHAR2(32)         not null,
   BUSI_TRANS_NO        VARCHAR2(32),
   LOG_DATE             CHAR(8),
   LOG_TIMESTAMP        VARCHAR2(32),
   ERROR_CODE           VARCHAR2(8),
   ERROR_DESC           VARCHAR2(4000),
   SESSION_ID           VARCHAR2(64),
   EXE_CLASS_NAME       VARCHAR2(150),
   constraint PK_LN_ERRLOG primary key (ID)
);

comment on table TEST1.LN_ERRLOG is
'贷款产品错误日志记录表';

comment on column TEST1.LN_ERRLOG.ID is
'记录PK';

comment on column TEST1.LN_ERRLOG.BUSI_TRANS_NO is
'业务流水号';

comment on column TEST1.LN_ERRLOG.LOG_DATE is
'记录日期';

comment on column TEST1.LN_ERRLOG.LOG_TIMESTAMP is
'记录时间戳';

comment on column TEST1.LN_ERRLOG.ERROR_CODE is
'错误代码';

comment on column TEST1.LN_ERRLOG.ERROR_DESC is
'错误描述';

comment on column TEST1.LN_ERRLOG.SESSION_ID is
'会话ID';

comment on column TEST1.LN_ERRLOG.EXE_CLASS_NAME is
'执行类名称';

/*==============================================================*/
/* Table: LN_MD_BG_CREDIT_DATA                                  */
/*==============================================================*/
create table TEST1.LN_MD_BG_CREDIT_DATA 
(
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   CORE_ENT_NAME        VARCHAR2(90),
   LY_CORE_ENT_MAIN_BUSI_INCOME NUMBER(20,2)         default 0 not null,
   LY_CORE_ENT_MAIN_BUSI_COST NUMBER(20,2)         default 0 not null,
   CORE_ENT_EXP_SALE_GR NUMBER(10,7)         default 0 not null,
   CREDIT_ADJUST_COEF1  NUMBER(10,7)         default 0 not null,
   CREDIT_ADJUST_COEF1_INFO VARCHAR2(90)         default '0' not null,
   CREDIT_ADJUST_COEF2  NUMBER(10,7)         default 0 not null,
   CREDIT_ADJUST_COEF2_INFO VARCHAR2(90)         default '0' not null,
   CREDIT_ADJUST_COEF3  NUMBER(10,7)         default 0 not null,
   CREDIT_ADJUST_COEF3_INFO VARCHAR2(90)         default '0' not null,
   CREDIT_ADJUST_COEF4  NUMBER(10,7)         default 0 not null,
   CREDIT_ADJUST_COEF4_INFO VARCHAR2(90)         default '0' not null,
   CREDIT_ADJUST_COEF5  NUMBER(10,7)         default 0 not null,
   CREDIT_ADJUST_COEF5_INFO VARCHAR2(90)         default '0' not null,
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071994 primary key (BUSI_GROUP_NO)
);

comment on table TEST1.LN_MD_BG_CREDIT_DATA is
'商圈授信源数据表';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.CORE_ENT_NAME is
'核心企业名称';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.LY_CORE_ENT_MAIN_BUSI_INCOME is
'核心企业上一年主营业务收入';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.LY_CORE_ENT_MAIN_BUSI_COST is
'核心企业上一年主营营业成本';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.CORE_ENT_EXP_SALE_GR is
'核心企业预期销售增长率';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.CREDIT_ADJUST_COEF1 is
'授信调节系数1';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.CREDIT_ADJUST_COEF1_INFO is
'授信调节系数1说明';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.CREDIT_ADJUST_COEF2 is
'授信调节系数2';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.CREDIT_ADJUST_COEF2_INFO is
'授信调节系数2说明';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.CREDIT_ADJUST_COEF3 is
'授信调节系数3';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.CREDIT_ADJUST_COEF3_INFO is
'授信调节系数3说明';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.CREDIT_ADJUST_COEF4 is
'授信调节系数4';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.CREDIT_ADJUST_COEF4_INFO is
'授信调节系数4说明';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.CREDIT_ADJUST_COEF5 is
'授信调节系数5';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.CREDIT_ADJUST_COEF5_INFO is
'授信调节系数5说明';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_MD_BG_CREDIT_DATA.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_BG_CREDIT_DATA_TMP                              */
/*==============================================================*/
create table TEST1.LN_MD_BG_CREDIT_DATA_TMP 
(
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   CORE_ENT_NAME        VARCHAR2(90),
   LY_CORE_ENT_MAIN_BUSI_INCOME NUMBER(20,2)         default 0 not null,
   LY_CORE_ENT_MAIN_BUSI_COST NUMBER(20,2)         default 0 not null,
   CORE_ENT_EXP_SALE_GR NUMBER(10,7)         default 0 not null,
   CREDIT_ADJUST_COEF1  NUMBER(10,7)         default 0 not null,
   CREDIT_ADJUST_COEF1_INFO VARCHAR2(90)         default '0' not null,
   CREDIT_ADJUST_COEF2  NUMBER(10,7)         default 0 not null,
   CREDIT_ADJUST_COEF2_INFO VARCHAR2(90)         default '0' not null,
   CREDIT_ADJUST_COEF3  NUMBER(10,7)         default 0 not null,
   CREDIT_ADJUST_COEF3_INFO VARCHAR2(90)         default '0' not null,
   CREDIT_ADJUST_COEF4  NUMBER(10,7)         default 0 not null,
   CREDIT_ADJUST_COEF4_INFO VARCHAR2(90)         default '0' not null,
   CREDIT_ADJUST_COEF5  NUMBER(10,7)         default 0 not null,
   CREDIT_ADJUST_COEF5_INFO VARCHAR2(90)         default '0' not null,
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0072024 primary key (BUSI_GROUP_NO)
);

comment on table TEST1.LN_MD_BG_CREDIT_DATA_TMP is
'商圈授信源数据临时表';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.CORE_ENT_NAME is
'核心企业名称';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.LY_CORE_ENT_MAIN_BUSI_INCOME is
'核心企业上一年主营业务收入';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.LY_CORE_ENT_MAIN_BUSI_COST is
'核心企业上一年主营营业成本';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.CORE_ENT_EXP_SALE_GR is
'核心企业预期销售增长率';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF1 is
'授信调节系数1';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF1_INFO is
'授信调节系数1说明';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF2 is
'授信调节系数2';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF2_INFO is
'授信调节系数2说明';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF3 is
'授信调节系数3';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF3_INFO is
'授信调节系数3说明';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF4 is
'授信调节系数4';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF4_INFO is
'授信调节系数4说明';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF5 is
'授信调节系数5';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF5_INFO is
'授信调节系数5说明';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_MD_BG_CREDIT_DATA_TMP.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_BG_CREDIT_RESULT                                */
/*==============================================================*/
create table TEST1.LN_MD_BG_CREDIT_RESULT 
(
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   CORE_ENT_NAME        VARCHAR2(90),
   BUSI_GROUP_NO_S      VARCHAR2(32),
   SUPPLY_TOT_CREDIT_LIMIT NUMBER(20,2)         default 0 not null,
   BUSI_GROUP_NO_D      VARCHAR2(32),
   DEAL_TOT_CREDIT_LIMIT NUMBER(20,2)         default 0 not null,
   EFFECTIVE_FROM_DATE  VARCHAR2(8),
   EFFECTIVE_TO_DATE    VARCHAR2(8),
   CREDIT_DATE          DATE                 not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0072025 primary key (BUSI_GROUP_NO)
);

comment on table TEST1.LN_MD_BG_CREDIT_RESULT is
'商圈授信结果表';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT.CORE_ENT_NAME is
'核心企业名称';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT.BUSI_GROUP_NO_S is
'上游额度编码';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT.SUPPLY_TOT_CREDIT_LIMIT is
'上游供应商总授信额度';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT.BUSI_GROUP_NO_D is
'下游额度编码';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT.DEAL_TOT_CREDIT_LIMIT is
'下游经销商总授信额度';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT.EFFECTIVE_FROM_DATE is
'生效日期';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT.EFFECTIVE_TO_DATE is
'到期日期';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT.CREDIT_DATE is
'授信日期';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_BG_CREDIT_RESULT_H                              */
/*==============================================================*/
create table TEST1.LN_MD_BG_CREDIT_RESULT_H 
(
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   CORE_ENT_NAME        VARCHAR2(90),
   BUSI_GROUP_NO_S      VARCHAR2(32),
   SUPPLY_TOT_CREDIT_LIMIT NUMBER(20,2)         default 0 not null,
   BUSI_GROUP_NO_D      VARCHAR2(32),
   DEAL_TOT_CREDIT_LIMIT NUMBER(20,2)         default 0 not null,
   EFFECTIVE_FROM_DATE  VARCHAR2(8),
   EFFECTIVE_TO_DATE    VARCHAR2(8),
   CREDIT_DATE          DATE                 not null,
   ETL_DATE             DATE                 default SYSDATE not null
);

comment on table TEST1.LN_MD_BG_CREDIT_RESULT_H is
'商圈授信结果历史表';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT_H.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT_H.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT_H.CORE_ENT_NAME is
'核心企业名称';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT_H.BUSI_GROUP_NO_S is
'上游额度编码';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT_H.SUPPLY_TOT_CREDIT_LIMIT is
'上游供应商总授信额度';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT_H.BUSI_GROUP_NO_D is
'下游额度编码';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT_H.DEAL_TOT_CREDIT_LIMIT is
'下游经销商总授信额度';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT_H.EFFECTIVE_FROM_DATE is
'生效日期';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT_H.EFFECTIVE_TO_DATE is
'到期日期';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT_H.CREDIT_DATE is
'授信日期';

comment on column TEST1.LN_MD_BG_CREDIT_RESULT_H.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CONFIG_RATE                                     */
/*==============================================================*/
create table TEST1.LN_MD_CONFIG_RATE 
(
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   ASSESS_LEVEL         VARCHAR2(32)         not null,
   ASSESS_COEF          NUMBER(10,7),
   constraint SYS_C0071862 primary key (BUSI_GROUP_NO, ASSESS_LEVEL)
);

comment on table TEST1.LN_MD_CONFIG_RATE is
'模型配置表（授信系数配置）';

comment on column TEST1.LN_MD_CONFIG_RATE.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_CONFIG_RATE.ASSESS_LEVEL is
'评价级别';

comment on column TEST1.LN_MD_CONFIG_RATE.ASSESS_COEF is
'评价系数';

/*==============================================================*/
/* Table: LN_MD_CUST_BSCORE_DATA                                */
/*==============================================================*/
create table TEST1.LN_MD_CUST_BSCORE_DATA 
(
   ENT_NO               VARCHAR2(32)         not null,
   CIF_ID               VARCHAR2(16)         not null,
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   SD_FLAG              VARCHAR2(6)          not null,
   ASSESS_LEVEL         VARCHAR2(32)         default 'R3' not null,
   LM1_CREDIT_QURY_CNT  NUMBER(6)            default 0 not null,
   LY2_OVERDUE_MAX_CNT  NUMBER(6)            default 0 not null,
   LN_NPM_UNSETT_CNT    NUMBER(6)            default 0 not null,
   LN_INTR_NPM_SETT_CNT NUMBER(6)            default 0 not null,
   ENT_TOT_INCOME_RATE_CURR NUMBER(20,2)         default 0 not null,
   ENT_TOT_INCOME_RATE_LAST NUMBER(20,2)         default 0 not null,
   ENT_TOT_INCOME_RATE_DELTA NUMBER(20,2)         default 0 not null,
   STOCK_TURNOVER_RATE_CURR NUMBER(20,2)         default 0 not null,
   STOCK_TURNOVER_RATE_LAST NUMBER(20,2)         default 0 not null,
   STOCK_TURNOVER_RATE_DELTA NUMBER(20,2)         default 0 not null,
   RECEIV_ACCT_TO_RATE_CURR NUMBER(20,2)         default 0 not null,
   RECEIV_ACCT_TO_RATE_LAST NUMBER(20,2)         default 0 not null,
   RECEIV_ACCT_TO_RATE_DELTA NUMBER(20,2)         default 0 not null,
   RETURN_RATE_CURR     NUMBER(20,2)         default 0 not null,
   RETURN_RATE_LAST     NUMBER(20,2)         default 0 not null,
   RETURN_RATE_DELTA    NUMBER(20,2)         default 0 not null,
   ORDER_FULFILL_RATE_CURR NUMBER(20,2)         default 0 not null,
   ORDER_FULFILL_RATE_LAST NUMBER(20,2)         default 0 not null,
   ORDER_FULFILL_RATE_DALTA NUMBER(20,2)         default 0 not null,
   SUPPLIER_RATING_CURR VARCHAR2(10)         default 'B' not null,
   SUPPLIER_RATING_LAST VARCHAR2(10)         default 'B' not null,
   CU_LN_OVERDUE_AMT    NUMBER(20,2)         default 0 not null,
   CU_LN_OVERDUE_MAX_DAYS NUMBER(6)            default 0 not null,
   CU_LN_OVERDUE_AMT_RATE NUMBER(10,7)         default 0 not null,
   CU_LN_OVERDUE_CNT    NUMBER(6)            default 0 not null,
   CU_P2P_OVERDUE_AMT   NUMBER(20,2)         default 0 not null,
   CU_P2P_OVERDUE_MAX_DAYS NUMBER(6)            default 0 not null,
   CU_P2P_OVERDUE_AMT_RATE NUMBER(10,7)         default 0 not null,
   CU_P2P_OVERDUE_CNT   NUMBER(6)            default 0 not null,
   BUSI_DATE            DATE                 not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071995 primary key (ENT_NO, BUSI_GROUP_NO)
);

comment on table TEST1.LN_MD_CUST_BSCORE_DATA is
'贷后行为评分源数据表';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.ENT_NO is
'用户编码';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.SD_FLAG is
'上下游标志';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.ASSESS_LEVEL is
'客户评价级别';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.LM1_CREDIT_QURY_CNT is
'最近一个月征信查询次数';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.LY2_OVERDUE_MAX_CNT is
'近24个月最长逾期期数';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.LN_NPM_UNSETT_CNT is
'未结清信贷不良类的笔数';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.LN_INTR_NPM_SETT_CNT is
'已结清信贷不良及关注类贷款笔数';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.ENT_TOT_INCOME_RATE_CURR is
'销售额本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.ENT_TOT_INCOME_RATE_LAST is
'销售额上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.ENT_TOT_INCOME_RATE_DELTA is
'销售增长率';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.STOCK_TURNOVER_RATE_CURR is
'存货周转率本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.STOCK_TURNOVER_RATE_LAST is
'存货周转率上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.STOCK_TURNOVER_RATE_DELTA is
'存货周转率变化';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.RECEIV_ACCT_TO_RATE_CURR is
'应收账款周转率本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.RECEIV_ACCT_TO_RATE_LAST is
'应收账款周转率上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.RECEIV_ACCT_TO_RATE_DELTA is
'应收账款周转率变化';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.RETURN_RATE_CURR is
'退货率本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.RETURN_RATE_LAST is
'退货率上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.RETURN_RATE_DELTA is
'退货率变化';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.ORDER_FULFILL_RATE_CURR is
'订单满足率本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.ORDER_FULFILL_RATE_LAST is
'订单满足率上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.ORDER_FULFILL_RATE_DALTA is
'订单满足率变化';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.SUPPLIER_RATING_CURR is
'供应商等级本季度值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.SUPPLIER_RATING_LAST is
'供应商等级上季度值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.CU_LN_OVERDUE_AMT is
'当前贷款逾期金额';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.CU_LN_OVERDUE_MAX_DAYS is
'当前贷款最大逾期天数';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.CU_LN_OVERDUE_AMT_RATE is
'当前贷款逾期金额占比';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.CU_LN_OVERDUE_CNT is
'当前贷款逾期笔数';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.CU_P2P_OVERDUE_AMT is
'当前融资逾期金额';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.CU_P2P_OVERDUE_MAX_DAYS is
'当前融资最大逾期天数';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.CU_P2P_OVERDUE_AMT_RATE is
'当前融资逾期金额占比';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.CU_P2P_OVERDUE_CNT is
'当前融资逾期笔数';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_BSCORE_DATA_TMP                            */
/*==============================================================*/
create table TEST1.LN_MD_CUST_BSCORE_DATA_TMP 
(
   ENT_NO               VARCHAR2(32)         not null,
   CIF_ID               VARCHAR2(16)         not null,
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   SD_FLAG              VARCHAR2(6)          not null,
   ASSESS_LEVEL         VARCHAR2(32)         default 'R3' not null,
   LM1_CREDIT_QURY_CNT  NUMBER(6)            default 0 not null,
   LY2_OVERDUE_MAX_CNT  NUMBER(6)            default 0 not null,
   LN_NPM_UNSETT_CNT    NUMBER(6)            default 0 not null,
   LN_INTR_NPM_SETT_CNT NUMBER(6)            default 0 not null,
   ENT_TOT_INCOME_RATE_CURR NUMBER(20,2)         default 0 not null,
   ENT_TOT_INCOME_RATE_LAST NUMBER(20,2)         default 0 not null,
   ENT_TOT_INCOME_RATE_DELTA NUMBER(20,2)         default 0 not null,
   STOCK_TURNOVER_RATE_CURR NUMBER(20,2)         default 0 not null,
   STOCK_TURNOVER_RATE_LAST NUMBER(20,2)         default 0 not null,
   STOCK_TURNOVER_RATE_DELTA NUMBER(20,2)         default 0 not null,
   RECEIV_ACCT_TO_RATE_CURR NUMBER(20,2)         default 0 not null,
   RECEIV_ACCT_TO_RATE_LAST NUMBER(20,2)         default 0 not null,
   RECEIV_ACCT_TO_RATE_DELTA NUMBER(20,2)         default 0 not null,
   RETURN_RATE_CURR     NUMBER(20,2)         default 0 not null,
   RETURN_RATE_LAST     NUMBER(20,2)         default 0 not null,
   RETURN_RATE_DELTA    NUMBER(20,2)         default 0 not null,
   ORDER_FULFILL_RATE_CURR NUMBER(20,2)         default 0 not null,
   ORDER_FULFILL_RATE_LAST NUMBER(20,2)         default 0 not null,
   ORDER_FULFILL_RATE_DALTA NUMBER(20,2)         default 0 not null,
   SUPPLIER_RATING_CURR VARCHAR2(10)         default 'B' not null,
   SUPPLIER_RATING_LAST VARCHAR2(10)         default 'B' not null,
   CU_LN_OVERDUE_AMT    NUMBER(20,2)         default 0 not null,
   CU_LN_OVERDUE_MAX_DAYS NUMBER(6)            default 0 not null,
   CU_LN_OVERDUE_AMT_RATE NUMBER(10,7)         default 0 not null,
   CU_LN_OVERDUE_CNT    NUMBER(6)            default 0 not null,
   CU_P2P_OVERDUE_AMT   NUMBER(20,2)         default 0 not null,
   CU_P2P_OVERDUE_MAX_DAYS NUMBER(6)            default 0 not null,
   CU_P2P_OVERDUE_AMT_RATE NUMBER(10,7)         default 0 not null,
   CU_P2P_OVERDUE_CNT   NUMBER(6)            default 0 not null,
   BUSI_DATE            DATE                 not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071996 primary key (ENT_NO, BUSI_GROUP_NO)
);

comment on table TEST1.LN_MD_CUST_BSCORE_DATA_TMP is
'贷后行为评分源数据临时表';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.ENT_NO is
'用户编码';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.SD_FLAG is
'上下游标志';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.ASSESS_LEVEL is
'客户评价级别';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.LM1_CREDIT_QURY_CNT is
'最近一个月征信查询次数';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.LY2_OVERDUE_MAX_CNT is
'近24个月最长逾期期数';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.LN_NPM_UNSETT_CNT is
'未结清信贷不良类的笔数';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.LN_INTR_NPM_SETT_CNT is
'已结清信贷不良及关注类贷款笔数';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.ENT_TOT_INCOME_RATE_CURR is
'销售额本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.ENT_TOT_INCOME_RATE_LAST is
'销售额上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.ENT_TOT_INCOME_RATE_DELTA is
'销售增长率';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.STOCK_TURNOVER_RATE_CURR is
'存货周转率本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.STOCK_TURNOVER_RATE_LAST is
'存货周转率上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.STOCK_TURNOVER_RATE_DELTA is
'存货周转率变化';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.RECEIV_ACCT_TO_RATE_CURR is
'应收账款周转率本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.RECEIV_ACCT_TO_RATE_LAST is
'应收账款周转率上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.RECEIV_ACCT_TO_RATE_DELTA is
'应收账款周转率变化';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.RETURN_RATE_CURR is
'退货率本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.RETURN_RATE_LAST is
'退货率上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.RETURN_RATE_DELTA is
'退货率变化';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.ORDER_FULFILL_RATE_CURR is
'订单满足率本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.ORDER_FULFILL_RATE_LAST is
'订单满足率上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.ORDER_FULFILL_RATE_DALTA is
'订单满足率变化';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.SUPPLIER_RATING_CURR is
'供应商等级本季度值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.SUPPLIER_RATING_LAST is
'供应商等级上季度值';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.CU_LN_OVERDUE_AMT is
'当前贷款逾期金额';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.CU_LN_OVERDUE_MAX_DAYS is
'当前贷款最大逾期天数';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.CU_LN_OVERDUE_AMT_RATE is
'当前贷款逾期金额占比';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.CU_LN_OVERDUE_CNT is
'当前贷款逾期笔数';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.CU_P2P_OVERDUE_AMT is
'当前融资逾期金额';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.CU_P2P_OVERDUE_MAX_DAYS is
'当前融资最大逾期天数';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.CU_P2P_OVERDUE_AMT_RATE is
'当前融资逾期金额占比';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.CU_P2P_OVERDUE_CNT is
'当前融资逾期笔数';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_MD_CUST_BSCORE_DATA_TMP.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_BSCORE_RESULT                              */
/*==============================================================*/
create table TEST1.LN_MD_CUST_BSCORE_RESULT 
(
   ENT_NO               VARCHAR2(32)         not null,
   CIF_ID               VARCHAR2(16),
   TOT_SCORE            NUMBER(20,2)         default 0 not null,
   ASSESS_LEVEL         VARCHAR2(32),
   LM1_CREDIT_QURY_CNT  NUMBER(6),
   LY2_OVERDUE_MAX_CNT  NUMBER(6),
   LN_NPM_UNSETT_CNT    NUMBER(6),
   LN_INTR_NPM_SETT_CNT NUMBER(6),
   CREDIT_SCORE         NUMBER(20,2),
   ENT_TOT_INCOME_RATE_CURR NUMBER(20,2),
   ENT_TOT_INCOME_RATE_LAST NUMBER(20,2),
   ENT_TOT_INCOME_RATE_DELTA NUMBER(20,2),
   STOCK_TURNOVER_RATE_CURR NUMBER(20,2),
   STOCK_TURNOVER_RATE_LAST NUMBER(20,2),
   STOCK_TURNOVER_RATE_DELTA NUMBER(20,2),
   RECEIV_ACCT_TO_RATE_CURR NUMBER(20,2),
   RECEIV_ACCT_TO_RATE_LAST NUMBER(20,2),
   RECEIV_ACCT_TO_RATE_DELTA NUMBER(20,2),
   RETURN_RATE_CURR     NUMBER(20,2),
   RETURN_RATE_LAST     NUMBER(20,2),
   RETURN_RATE_DELTA    NUMBER(20,2),
   ORDER_FULFILL_RATE_CURR NUMBER(20,2),
   ORDER_FULFILL_RATE_LAST NUMBER(20,2),
   ORDER_FULFILL_RATE_DALTA NUMBER(20,2),
   SUPPLIER_RATING_CURR VARCHAR2(10),
   SUPPLIER_RATING_LAST VARCHAR2(10),
   OPERATION_SCORE      NUMBER(20,2),
   CU_LN_OVERDUE_AMT    NUMBER(20,2),
   CU_LN_OVERDUE_MAX_DAYS NUMBER(6),
   CU_LN_OVERDUE_AMT_RATE NUMBER(10,7),
   CU_LN_OVERDUE_CNT    NUMBER(6),
   CU_LN_SCORE          NUMBER(20,2),
   CU_P2P_OVERDUE_AMT   NUMBER(20,2),
   CU_P2P_OVERDUE_MAX_DAYS NUMBER(6),
   CU_P2P_OVERDUE_AMT_RATE NUMBER(10,7),
   CU_P2P_OVERDUE_CNT   NUMBER(6),
   CU_P2P_SCORE         NUMBER(20,2),
   SCORE_DATE           DATE                 not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071868 primary key (ENT_NO)
);

comment on table TEST1.LN_MD_CUST_BSCORE_RESULT is
'贷后行为评分表';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.ENT_NO is
'用户编码';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.TOT_SCORE is
'评分总分';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.ASSESS_LEVEL is
'客户评价级别';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.LM1_CREDIT_QURY_CNT is
'最近一个月征信查询次数';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.LY2_OVERDUE_MAX_CNT is
'近24个月最长逾期期数';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.LN_NPM_UNSETT_CNT is
'未结清信贷不良类的笔数';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.LN_INTR_NPM_SETT_CNT is
'已结清信贷不良及关注类贷款笔数';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.CREDIT_SCORE is
'信用评级总得分';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.ENT_TOT_INCOME_RATE_CURR is
'销售额本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.ENT_TOT_INCOME_RATE_LAST is
'销售额上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.ENT_TOT_INCOME_RATE_DELTA is
'销售增长率';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.STOCK_TURNOVER_RATE_CURR is
'存货周转率本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.STOCK_TURNOVER_RATE_LAST is
'存货周转率上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.STOCK_TURNOVER_RATE_DELTA is
'存货周转率变化';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.RECEIV_ACCT_TO_RATE_CURR is
'应收账款周转率本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.RECEIV_ACCT_TO_RATE_LAST is
'应收账款周转率上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.RECEIV_ACCT_TO_RATE_DELTA is
'应收账款周转率变化';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.RETURN_RATE_CURR is
'退货率本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.RETURN_RATE_LAST is
'退货率上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.RETURN_RATE_DELTA is
'退货率变化';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.ORDER_FULFILL_RATE_CURR is
'订单满足率本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.ORDER_FULFILL_RATE_LAST is
'订单满足率上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.ORDER_FULFILL_RATE_DALTA is
'订单满足率变化';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.SUPPLIER_RATING_CURR is
'供应商等级本季度值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.SUPPLIER_RATING_LAST is
'供应商等级上季度值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.OPERATION_SCORE is
'经营情况得分';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.CU_LN_OVERDUE_AMT is
'当前贷款逾期金额';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.CU_LN_OVERDUE_MAX_DAYS is
'当前贷款最大逾期天数';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.CU_LN_OVERDUE_AMT_RATE is
'当前贷款逾期金额占比';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.CU_LN_OVERDUE_CNT is
'当前贷款逾期笔数';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.CU_LN_SCORE is
'当前贷款行为得分';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.CU_P2P_OVERDUE_AMT is
'当前融资逾期金额';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.CU_P2P_OVERDUE_MAX_DAYS is
'当前融资最大逾期天数';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.CU_P2P_OVERDUE_AMT_RATE is
'当前融资逾期金额占比';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.CU_P2P_OVERDUE_CNT is
'当前融资逾期笔数';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.CU_P2P_SCORE is
'融资情况得分';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.SCORE_DATE is
'评分日期';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_BSCORE_RESULT_H                            */
/*==============================================================*/
create table TEST1.LN_MD_CUST_BSCORE_RESULT_H 
(
   ENT_NO               VARCHAR2(32)         not null,
   CIF_ID               VARCHAR2(16),
   TOT_SCORE            NUMBER(20,2)         default 0 not null,
   ASSESS_LEVEL         VARCHAR2(32),
   LM1_CREDIT_QURY_CNT  NUMBER(6),
   LY2_OVERDUE_MAX_CNT  NUMBER(6),
   LN_NPM_UNSETT_CNT    NUMBER(6),
   LN_INTR_NPM_SETT_CNT NUMBER(6),
   CREDIT_SCORE         NUMBER(20,2),
   ENT_TOT_INCOME_RATE_CURR NUMBER(20,2),
   ENT_TOT_INCOME_RATE_LAST NUMBER(20,2),
   ENT_TOT_INCOME_RATE_DELTA NUMBER(20,2),
   STOCK_TURNOVER_RATE_CURR NUMBER(20,2),
   STOCK_TURNOVER_RATE_LAST NUMBER(20,2),
   STOCK_TURNOVER_RATE_DELTA NUMBER(20,2),
   RECEIV_ACCT_TO_RATE_CURR NUMBER(20,2),
   RECEIV_ACCT_TO_RATE_LAST NUMBER(20,2),
   RECEIV_ACCT_TO_RATE_DELTA NUMBER(20,2),
   RETURN_RATE_CURR     NUMBER(20,2),
   RETURN_RATE_LAST     NUMBER(20,2),
   RETURN_RATE_DELTA    NUMBER(20,2),
   ORDER_FULFILL_RATE_CURR NUMBER(20,2),
   ORDER_FULFILL_RATE_LAST NUMBER(20,2),
   ORDER_FULFILL_RATE_DALTA NUMBER(20,2),
   SUPPLIER_RATING_CURR VARCHAR2(10),
   SUPPLIER_RATING_LAST VARCHAR2(10),
   OPERATION_SCORE      NUMBER(20,2),
   CU_LN_OVERDUE_AMT    NUMBER(20,2),
   CU_LN_OVERDUE_MAX_DAYS NUMBER(6),
   CU_LN_OVERDUE_AMT_RATE NUMBER(10,7),
   CU_LN_OVERDUE_CNT    NUMBER(6),
   CU_LN_SCORE          NUMBER(20,2),
   CU_P2P_OVERDUE_AMT   NUMBER(20,2),
   CU_P2P_OVERDUE_MAX_DAYS NUMBER(6),
   CU_P2P_OVERDUE_AMT_RATE NUMBER(10,7),
   CU_P2P_OVERDUE_CNT   NUMBER(6),
   CU_P2P_SCORE         NUMBER(20,2),
   SCORE_DATE           DATE                 not null,
   ETL_DATE             DATE                 default SYSDATE not null
);

comment on table TEST1.LN_MD_CUST_BSCORE_RESULT_H is
'贷后行为评分表';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.ENT_NO is
'用户编码';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.TOT_SCORE is
'评分总分';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.ASSESS_LEVEL is
'客户评价级别';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.LM1_CREDIT_QURY_CNT is
'最近一个月征信查询次数';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.LY2_OVERDUE_MAX_CNT is
'近24个月最长逾期期数';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.LN_NPM_UNSETT_CNT is
'未结清信贷不良类的笔数';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.LN_INTR_NPM_SETT_CNT is
'已结清信贷不良及关注类贷款笔数';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.CREDIT_SCORE is
'信用评级总得分';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.ENT_TOT_INCOME_RATE_CURR is
'销售额本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.ENT_TOT_INCOME_RATE_LAST is
'销售额上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.ENT_TOT_INCOME_RATE_DELTA is
'销售增长率';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.STOCK_TURNOVER_RATE_CURR is
'存货周转率本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.STOCK_TURNOVER_RATE_LAST is
'存货周转率上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.STOCK_TURNOVER_RATE_DELTA is
'存货周转率变化';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.RECEIV_ACCT_TO_RATE_CURR is
'应收账款周转率本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.RECEIV_ACCT_TO_RATE_LAST is
'应收账款周转率上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.RECEIV_ACCT_TO_RATE_DELTA is
'应收账款周转率变化';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.RETURN_RATE_CURR is
'退货率本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.RETURN_RATE_LAST is
'退货率上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.RETURN_RATE_DELTA is
'退货率变化';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.ORDER_FULFILL_RATE_CURR is
'订单满足率本期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.ORDER_FULFILL_RATE_LAST is
'订单满足率上期值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.ORDER_FULFILL_RATE_DALTA is
'订单满足率变化';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.SUPPLIER_RATING_CURR is
'供应商等级本季度值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.SUPPLIER_RATING_LAST is
'供应商等级上季度值';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.OPERATION_SCORE is
'经营情况得分';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.CU_LN_OVERDUE_AMT is
'当前贷款逾期金额';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.CU_LN_OVERDUE_MAX_DAYS is
'当前贷款最大逾期天数';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.CU_LN_OVERDUE_AMT_RATE is
'当前贷款逾期金额占比';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.CU_LN_OVERDUE_CNT is
'当前贷款逾期笔数';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.CU_LN_SCORE is
'当前贷款行为得分';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.CU_P2P_OVERDUE_AMT is
'当前融资逾期金额';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.CU_P2P_OVERDUE_MAX_DAYS is
'当前融资最大逾期天数';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.CU_P2P_OVERDUE_AMT_RATE is
'当前融资逾期金额占比';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.CU_P2P_OVERDUE_CNT is
'当前融资逾期笔数';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.CU_P2P_SCORE is
'融资情况得分';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.SCORE_DATE is
'评分日期';

comment on column TEST1.LN_MD_CUST_BSCORE_RESULT_H.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_CREDIT_DATA                                */
/*==============================================================*/
create table TEST1.LN_MD_CUST_CREDIT_DATA 
(
   SRC_ID               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   SD_FLAG              VARCHAR2(6)          not null,
   ORG_NO               VARCHAR2(32),
   BUSI_LICENCE         VARCHAR2(32),
   SUPPLY_NO            VARCHAR2(32),
   LY_TO_CORE_ENT_GOODS_COST NUMBER(20,2)         not null,
   LY_TO_CORE_ENT_SALE_INCOME NUMBER(20,2)         not null,
   TURNOVER_AVG_DAYS    NUMBER(6)            not null,
   EXPECT_GROWTH_RATE   NUMBER(10,7)         not null,
   CREDIT_ADJUST_COEF1  NUMBER(10,7)         not null,
   CREDIT_ADJUST_COEF1_INFO VARCHAR2(90)         not null,
   CREDIT_ADJUST_COEF2  NUMBER(10,7)         not null,
   CREDIT_ADJUST_COEF2_INFO VARCHAR2(90)         not null,
   CREDIT_ADJUST_COEF3  NUMBER(10,7)         not null,
   CREDIT_ADJUST_COEF3_INFO VARCHAR2(90)         not null,
   CREDIT_ADJUST_COEF4  NUMBER(10,7)         not null,
   CREDIT_ADJUST_COEF4_INFO VARCHAR2(90)         not null,
   CREDIT_ADJUST_COEF5  NUMBER(10,7)         not null,
   CREDIT_ADJUST_COEF5_INFO VARCHAR2(90)         not null,
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071846 primary key (SRC_ID, BUSI_GROUP_NO)
);

comment on table TEST1.LN_MD_CUST_CREDIT_DATA is
'客户授信源数据表';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.SRC_ID is
'ERP系统客户主键';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.SD_FLAG is
'上下游标志';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.ORG_NO is
'组织机构代码';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.BUSI_LICENCE is
'营业执照号码';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.SUPPLY_NO is
'供应商编号';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.LY_TO_CORE_ENT_GOODS_COST is
'上年度对核心企业进货成本';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.LY_TO_CORE_ENT_SALE_INCOME is
'上年度对核心企业销售收入';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.TURNOVER_AVG_DAYS is
'平均周转天数';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.EXPECT_GROWTH_RATE is
'预期增长率';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.CREDIT_ADJUST_COEF1 is
'授信调节系数1';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.CREDIT_ADJUST_COEF1_INFO is
'授信调节系数1说明';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.CREDIT_ADJUST_COEF2 is
'授信调节系数2';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.CREDIT_ADJUST_COEF2_INFO is
'授信调节系数2说明';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.CREDIT_ADJUST_COEF3 is
'授信调节系数3';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.CREDIT_ADJUST_COEF3_INFO is
'授信调节系数3说明';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.CREDIT_ADJUST_COEF4 is
'授信调节系数4';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.CREDIT_ADJUST_COEF4_INFO is
'授信调节系数4说明';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.CREDIT_ADJUST_COEF5 is
'授信调节系数5';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.CREDIT_ADJUST_COEF5_INFO is
'授信调节系数5说明';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_CREDIT_DATA_TMP                            */
/*==============================================================*/
create table TEST1.LN_MD_CUST_CREDIT_DATA_TMP 
(
   SRC_ID               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   SD_FLAG              VARCHAR2(6)          not null,
   ORG_NO               VARCHAR2(32),
   BUSI_LICENCE         VARCHAR2(32),
   SUPPLY_NO            VARCHAR2(32),
   LY_TO_CORE_ENT_GOODS_COST NUMBER(20,2)         not null,
   LY_TO_CORE_ENT_SALE_INCOME NUMBER(20,2)         not null,
   TURNOVER_AVG_DAYS    NUMBER(6)            not null,
   EXPECT_GROWTH_RATE   NUMBER(10,7)         not null,
   CREDIT_ADJUST_COEF1  NUMBER(10,7)         not null,
   CREDIT_ADJUST_COEF1_INFO VARCHAR2(90)         not null,
   CREDIT_ADJUST_COEF2  NUMBER(10,7)         not null,
   CREDIT_ADJUST_COEF2_INFO VARCHAR2(90)         not null,
   CREDIT_ADJUST_COEF3  NUMBER(10,7)         not null,
   CREDIT_ADJUST_COEF3_INFO VARCHAR2(90)         not null,
   CREDIT_ADJUST_COEF4  NUMBER(10,7)         not null,
   CREDIT_ADJUST_COEF4_INFO VARCHAR2(90)         not null,
   CREDIT_ADJUST_COEF5  NUMBER(10,7)         not null,
   CREDIT_ADJUST_COEF5_INFO VARCHAR2(90)         not null,
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071847 primary key (SRC_ID, BUSI_GROUP_NO)
);

comment on table TEST1.LN_MD_CUST_CREDIT_DATA_TMP is
'客户授信源数据临时表';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.SRC_ID is
'ERP系统客户主键';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.SD_FLAG is
'上下游标志';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.ORG_NO is
'组织机构代码';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.BUSI_LICENCE is
'营业执照号码';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.SUPPLY_NO is
'供应商编号';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.LY_TO_CORE_ENT_GOODS_COST is
'上年度对核心企业进货成本';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.LY_TO_CORE_ENT_SALE_INCOME is
'上年度对核心企业销售收入';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.TURNOVER_AVG_DAYS is
'平均周转天数';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.EXPECT_GROWTH_RATE is
'预期增长率';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF1 is
'授信调节系数1';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF1_INFO is
'授信调节系数1说明';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF2 is
'授信调节系数2';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF2_INFO is
'授信调节系数2说明';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF3 is
'授信调节系数3';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF3_INFO is
'授信调节系数3说明';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF4 is
'授信调节系数4';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF4_INFO is
'授信调节系数4说明';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF5 is
'授信调节系数5';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.CREDIT_ADJUST_COEF5_INFO is
'授信调节系数5说明';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_MD_CUST_CREDIT_DATA_TMP.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_CREDIT_RESULT                              */
/*==============================================================*/
create table TEST1.LN_MD_CUST_CREDIT_RESULT 
(
   SRC_ID               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   ORG_NO               VARCHAR2(32),
   BUSI_LICENCE         VARCHAR2(32),
   CREDIT_TYPE          CHAR                 not null,
   CREDIT_LIMIT         NUMBER(20,2)         default 0 not null,
   EFFECTIVE_FROM_DATE  VARCHAR2(8),
   EFFECTIVE_TO_DATE    VARCHAR2(8),
   CREDIT_DATE          DATE                 not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071848 primary key (SRC_ID, BUSI_GROUP_NO)
);

comment on table TEST1.LN_MD_CUST_CREDIT_RESULT is
'客户授信结果表';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT.SRC_ID is
'ERP系统客户主键';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT.ORG_NO is
'组织机构代码';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT.BUSI_LICENCE is
'营业执照号码';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT.CREDIT_TYPE is
'授信类型';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT.CREDIT_LIMIT is
'授信额度';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT.EFFECTIVE_FROM_DATE is
'生效日期';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT.EFFECTIVE_TO_DATE is
'到期日期';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT.CREDIT_DATE is
'授信日期';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_CREDIT_RESULT_H                            */
/*==============================================================*/
create table TEST1.LN_MD_CUST_CREDIT_RESULT_H 
(
   SRC_ID               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   ORG_NO               VARCHAR2(32),
   BUSI_LICENCE         VARCHAR2(32),
   CREDIT_TYPE          CHAR                 not null,
   CREDIT_LIMIT         NUMBER(20,2)         default 0 not null,
   EFFECTIVE_FROM_DATE  VARCHAR2(8),
   EFFECTIVE_TO_DATE    VARCHAR2(8),
   CREDIT_DATE          DATE                 not null,
   ETL_DATE             DATE                 default SYSDATE not null
);

comment on table TEST1.LN_MD_CUST_CREDIT_RESULT_H is
'客户授信结果历史表';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT_H.SRC_ID is
'ERP系统客户主键';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT_H.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT_H.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT_H.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT_H.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT_H.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT_H.ORG_NO is
'组织机构代码';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT_H.BUSI_LICENCE is
'营业执照号码';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT_H.CREDIT_TYPE is
'授信类型';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT_H.CREDIT_LIMIT is
'授信额度';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT_H.EFFECTIVE_FROM_DATE is
'生效日期';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT_H.EFFECTIVE_TO_DATE is
'到期日期';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT_H.CREDIT_DATE is
'授信日期';

comment on column TEST1.LN_MD_CUST_CREDIT_RESULT_H.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_POOL_BILL_RST                              */
/*==============================================================*/
create table TEST1.LN_MD_CUST_POOL_BILL_RST 
(
   SRC_ID               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   ORG_NO               VARCHAR2(32),
   BUSI_LICENCE         VARCHAR2(32),
   BILL_TYPE            VARCHAR2(2),
   BILL_NO              VARCHAR2(32),
   BILL_AMT             NUMBER(20,2),
   CURR_TYPE            VARCHAR2(10),
   CREDIT_LIMIT         NUMBER(20,2)         default 0 not null,
   CREDIT_DATE          DATE                 not null
);

comment on table TEST1.LN_MD_CUST_POOL_BILL_RST is
'客户池资产单据授信结果表';

comment on column TEST1.LN_MD_CUST_POOL_BILL_RST.SRC_ID is
'ERP系统客户主键';

comment on column TEST1.LN_MD_CUST_POOL_BILL_RST.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_MD_CUST_POOL_BILL_RST.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_POOL_BILL_RST.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_POOL_BILL_RST.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_CUST_POOL_BILL_RST.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_POOL_BILL_RST.ORG_NO is
'组织机构代码';

comment on column TEST1.LN_MD_CUST_POOL_BILL_RST.BUSI_LICENCE is
'营业执照号码';

comment on column TEST1.LN_MD_CUST_POOL_BILL_RST.BILL_TYPE is
'单据类型';

comment on column TEST1.LN_MD_CUST_POOL_BILL_RST.BILL_NO is
'单据编号';

comment on column TEST1.LN_MD_CUST_POOL_BILL_RST.BILL_AMT is
'单据面额';

comment on column TEST1.LN_MD_CUST_POOL_BILL_RST.CURR_TYPE is
'币种';

comment on column TEST1.LN_MD_CUST_POOL_BILL_RST.CREDIT_LIMIT is
'授信额度';

comment on column TEST1.LN_MD_CUST_POOL_BILL_RST.CREDIT_DATE is
'授信日期';

/*==============================================================*/
/* Table: LN_MD_CUST_POOL_BILL_SEQ                              */
/*==============================================================*/
create table TEST1.LN_MD_CUST_POOL_BILL_SEQ 
(
   SRC_NO               VARCHAR2(32)         not null,
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   SD_FLAG              VARCHAR2(6)          not null,
   ENT_NO               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BILL_TYPE            VARCHAR2(2)          not null,
   BILL_NO              VARCHAR2(32)         not null,
   BILL_AMT             NUMBER(20,2)         not null,
   CURR_TYPE            VARCHAR2(10)         default 'CNY',
   DATE1                VARCHAR2(8),
   DATE2                VARCHAR2(8),
   DATE3                VARCHAR2(8),
   DATE4                VARCHAR2(8),
   STATUS1              VARCHAR2(2),
   STATUS2              VARCHAR2(16),
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071849 primary key (SRC_NO, BUSI_GROUP_NO, BILL_NO)
);

comment on table TEST1.LN_MD_CUST_POOL_BILL_SEQ is
'客户池资产订单流水表';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.SRC_NO is
'客户外部编号';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.BUSI_GROUP_NO is
'商圈代码';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.SD_FLAG is
'上下游标志';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.ENT_NO is
'客户代码';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.BILL_TYPE is
'单据类型';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.BILL_NO is
'单据编号';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.BILL_AMT is
'单据面额';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.CURR_TYPE is
'币种';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.DATE1 is
'票据日期1';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.DATE2 is
'票据日期2';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.DATE3 is
'票据日期3';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.DATE4 is
'票据日期4';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.STATUS1 is
'状态标志1';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.STATUS2 is
'状态标志2';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_POOL_BILL_SEQ2                             */
/*==============================================================*/
create table TEST1.LN_MD_CUST_POOL_BILL_SEQ2 
(
   SRC_NO               VARCHAR2(32)         not null,
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   SD_FLAG              VARCHAR2(6)          not null,
   ENT_NO               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BILL_TYPE            VARCHAR2(2)          not null,
   BILL_NO              VARCHAR2(32)         not null,
   BILL_AMT             NUMBER(20,2)         not null,
   CURR_TYPE            VARCHAR2(10)         default 'CNY',
   DATE1                VARCHAR2(8)          not null,
   DATE2                VARCHAR2(8),
   DATE3                VARCHAR2(8),
   DATE4                VARCHAR2(8),
   STATUS1              VARCHAR2(2),
   STATUS2              VARCHAR2(16),
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071863 primary key (SRC_NO, BUSI_GROUP_NO, BILL_NO, DATE1)
);

comment on table TEST1.LN_MD_CUST_POOL_BILL_SEQ2 is
'客户池资产发货单流水表';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.SRC_NO is
'客户外部编号';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.BUSI_GROUP_NO is
'商圈代码';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.SD_FLAG is
'上下游标志';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.ENT_NO is
'客户代码';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.BILL_TYPE is
'单据类型';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.BILL_NO is
'单据编号';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.BILL_AMT is
'单据面额';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.CURR_TYPE is
'币种';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.DATE1 is
'票据日期1';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.DATE2 is
'票据日期2';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.DATE3 is
'票据日期3';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.DATE4 is
'票据日期4';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.STATUS1 is
'状态标志1';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.STATUS2 is
'状态标志2';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_POOL_BILL_SEQ2_TMP                         */
/*==============================================================*/
create table TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP 
(
   SRC_NO               VARCHAR2(32)         not null,
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   SD_FLAG              VARCHAR2(6)          not null,
   ENT_NO               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BILL_TYPE            VARCHAR2(2)          not null,
   BILL_NO              VARCHAR2(32)         not null,
   BILL_AMT             NUMBER(20,2)         not null,
   CURR_TYPE            VARCHAR2(10)         default 'CNY',
   DATE1                VARCHAR2(8)          not null,
   DATE2                VARCHAR2(8),
   DATE3                VARCHAR2(8),
   DATE4                VARCHAR2(8),
   STATUS1              VARCHAR2(2),
   STATUS2              VARCHAR2(16),
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071864 primary key (SRC_NO, BUSI_GROUP_NO, BILL_NO, DATE1)
);

comment on table TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP is
'客户池资产发货单流水临时表';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.SRC_NO is
'客户外部编号';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.BUSI_GROUP_NO is
'商圈代码';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.SD_FLAG is
'上下游标志';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.ENT_NO is
'客户代码';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.BILL_TYPE is
'单据类型';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.BILL_NO is
'单据编号';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.BILL_AMT is
'单据面额';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.CURR_TYPE is
'币种';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.DATE1 is
'票据日期1';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.DATE2 is
'票据日期2';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.DATE3 is
'票据日期3';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.DATE4 is
'票据日期4';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.STATUS1 is
'状态标志1';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.STATUS2 is
'状态标志2';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ2_TMP.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_POOL_BILL_SEQ_TMP                          */
/*==============================================================*/
create table TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP 
(
   SRC_NO               VARCHAR2(32)         not null,
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   SD_FLAG              VARCHAR2(6)          not null,
   ENT_NO               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BILL_TYPE            VARCHAR2(2)          not null,
   BILL_NO              VARCHAR2(32)         not null,
   BILL_AMT             NUMBER(20,2)         not null,
   CURR_TYPE            VARCHAR2(10),
   DATE1                VARCHAR2(8),
   DATE2                VARCHAR2(8),
   DATE3                VARCHAR2(8),
   DATE4                VARCHAR2(8),
   STATUS1              VARCHAR2(2),
   STATUS2              VARCHAR2(16),
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071850 primary key (SRC_NO, BUSI_GROUP_NO, BILL_NO)
);

comment on table TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP is
'客户池资产单据流水临时表';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.SRC_NO is
'客户外部编号';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.BUSI_GROUP_NO is
'商圈代码';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.SD_FLAG is
'上下游标志';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.ENT_NO is
'客户代码';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.BILL_TYPE is
'单据类型';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.BILL_NO is
'单据编号';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.BILL_AMT is
'单据面额';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.CURR_TYPE is
'币种';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.DATE1 is
'票据日期1';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.DATE2 is
'票据日期2';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.DATE3 is
'票据日期3';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.DATE4 is
'票据日期4';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.STATUS1 is
'状态标志1';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.STATUS2 is
'状态标志2';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_MD_CUST_POOL_BILL_SEQ_TMP.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_POOL_BILL_USE                              */
/*==============================================================*/
create table TEST1.LN_MD_CUST_POOL_BILL_USE 
(
   LOAN_APPLY_NO        VARCHAR2(32),
   CONT_NO              VARCHAR2(18),
   SRC_NO               VARCHAR2(32)         not null,
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   SD_FLAG              VARCHAR2(6)          not null,
   ENT_NO               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BILL_TYPE            VARCHAR2(2)          not null,
   BILL_NO              VARCHAR2(32)         not null,
   BILL_AMT             NUMBER(20,2)         not null,
   CURR_TYPE            VARCHAR2(10)         default 'CNY',
   DATE1                VARCHAR2(8),
   DATE2                VARCHAR2(8),
   DATE3                VARCHAR2(8),
   DATE4                VARCHAR2(8),
   STATUS1              VARCHAR2(2),
   STATUS2              VARCHAR2(16),
   BUSI_DATE            VARCHAR2(8)          not null,
   USE_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071877 primary key (BUSI_GROUP_NO)
);

comment on table TEST1.LN_MD_CUST_POOL_BILL_USE is
'客户池资产单据占用表';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.LOAN_APPLY_NO is
'贷款申请编号';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.CONT_NO is
'合同编号';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.SRC_NO is
'客户外部编号';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.BUSI_GROUP_NO is
'商圈代码';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.SD_FLAG is
'上下游标志';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.ENT_NO is
'客户代码';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.BILL_TYPE is
'单据类型';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.BILL_NO is
'单据编号';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.BILL_AMT is
'单据面额';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.CURR_TYPE is
'币种';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.DATE1 is
'票据日期1';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.DATE2 is
'票据日期2';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.DATE3 is
'票据日期3';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.DATE4 is
'票据日期4';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.STATUS1 is
'状态标志1';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.STATUS2 is
'状态标志2';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_MD_CUST_POOL_BILL_USE.USE_DATE is
'占用日期';

/*==============================================================*/
/* Table: LN_MD_CUST_POOL_CREDIT_RST                            */
/*==============================================================*/
create table TEST1.LN_MD_CUST_POOL_CREDIT_RST 
(
   SRC_ID               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   ORG_NO               VARCHAR2(32),
   BUSI_LICENCE         VARCHAR2(32),
   CREDIT_TYPE          CHAR                 not null,
   CREDIT_LIMIT         NUMBER(20,2)         default 0 not null,
   CREDIT_DATE          DATE                 not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071865 primary key (SRC_ID, BUSI_GROUP_NO)
);

comment on table TEST1.LN_MD_CUST_POOL_CREDIT_RST is
'客户池资产授信结果';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST.SRC_ID is
'ERP系统客户主键';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST.ORG_NO is
'组织机构代码';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST.BUSI_LICENCE is
'营业执照号码';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST.CREDIT_TYPE is
'授信类型';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST.CREDIT_LIMIT is
'授信额度';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST.CREDIT_DATE is
'授信日期';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_POOL_CREDIT_RST_H                          */
/*==============================================================*/
create table TEST1.LN_MD_CUST_POOL_CREDIT_RST_H 
(
   SRC_ID               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   ORG_NO               VARCHAR2(32),
   BUSI_LICENCE         VARCHAR2(32),
   CREDIT_TYPE          CHAR                 not null,
   CREDIT_LIMIT         NUMBER(20,2)         default 0 not null,
   CREDIT_DATE          DATE                 not null,
   ETL_DATE             DATE                 default SYSDATE not null
);

comment on table TEST1.LN_MD_CUST_POOL_CREDIT_RST_H is
'客户池资产授信结果历史表';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST_H.SRC_ID is
'ERP系统客户主键';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST_H.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST_H.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST_H.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST_H.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST_H.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST_H.ORG_NO is
'组织机构代码';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST_H.BUSI_LICENCE is
'营业执照号码';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST_H.CREDIT_TYPE is
'授信类型';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST_H.CREDIT_LIMIT is
'授信额度';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST_H.CREDIT_DATE is
'授信日期';

comment on column TEST1.LN_MD_CUST_POOL_CREDIT_RST_H.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_PRD_RECM_DATA                              */
/*==============================================================*/
create table TEST1.LN_MD_CUST_PRD_RECM_DATA 
(
   SRC_ID               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   ORG_NO               VARCHAR2(32),
   BUSI_LICENCE         VARCHAR2(32),
   SUPPLY_NO            VARCHAR2(32),
   BILL_TYPE            CHAR,
   BILL_NO              VARCHAR2(32),
   BILL_AMT             NUMBER(20,2),
   INVALID_DATE         VARCHAR2(8),
   ORDER_MEET_RATE      NUMBER(10,7),
   USED_FLAG            CHAR,
   LOAN_NO              VARCHAR2(32),
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071866 primary key (SRC_ID, BUSI_GROUP_NO)
);

comment on table TEST1.LN_MD_CUST_PRD_RECM_DATA is
'产品推荐源信息表';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.SRC_ID is
'ERP系统客户主键';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.ORG_NO is
'组织机构代码';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.BUSI_LICENCE is
'营业执照号码';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.SUPPLY_NO is
'供应商编号';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.BILL_TYPE is
'单据类型';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.BILL_NO is
'单据编号';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.BILL_AMT is
'单据面额';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.INVALID_DATE is
'失效期';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.ORDER_MEET_RATE is
'订单满足率/结算率';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.USED_FLAG is
'可用标志';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.LOAN_NO is
'贷款编号';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_MD_CUST_PRD_RECM_DATA.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_PRD_RECM_RESULT                            */
/*==============================================================*/
create table TEST1.LN_MD_CUST_PRD_RECM_RESULT 
(
   SRC_ID               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   ORG_NO               VARCHAR2(32),
   BUSI_LICENCE         VARCHAR2(32),
   RECM_LOAN_AMT        NUMBER(20,2),
   RECM_LOAN_NO         VARCHAR2(32),
   RECM_LOAN_TERM       NUMBER(6),
   RECM_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071867 primary key (SRC_ID, BUSI_GROUP_NO)
);

comment on table TEST1.LN_MD_CUST_PRD_RECM_RESULT is
'产品推荐结果表';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT.SRC_ID is
'ERP系统客户主键';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT.ORG_NO is
'组织机构代码';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT.BUSI_LICENCE is
'营业执照号码';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT.RECM_LOAN_AMT is
'可贷款金额';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT.RECM_LOAN_NO is
'推荐产品';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT.RECM_LOAN_TERM is
'贷款期限';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT.RECM_DATE is
'推荐日期';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_PRD_RECM_RESULT_H                          */
/*==============================================================*/
create table TEST1.LN_MD_CUST_PRD_RECM_RESULT_H 
(
   SRC_ID               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   ORG_NO               VARCHAR2(32),
   BUSI_LICENCE         VARCHAR2(32),
   RECM_LOAN_AMT        NUMBER(20,2),
   RECM_LOAN_NO         VARCHAR2(32),
   RECM_LOAN_TERM       NUMBER(6),
   RECM_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null
);

comment on table TEST1.LN_MD_CUST_PRD_RECM_RESULT_H is
'产品推荐结果历史表';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT_H.SRC_ID is
'ERP系统客户主键';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT_H.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT_H.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT_H.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT_H.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT_H.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT_H.ORG_NO is
'组织机构代码';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT_H.BUSI_LICENCE is
'营业执照号码';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT_H.RECM_LOAN_AMT is
'可贷款金额';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT_H.RECM_LOAN_NO is
'推荐产品';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT_H.RECM_LOAN_TERM is
'贷款期限';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT_H.RECM_DATE is
'推荐日期';

comment on column TEST1.LN_MD_CUST_PRD_RECM_RESULT_H.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_RATING_DATA                                */
/*==============================================================*/
create table TEST1.LN_MD_CUST_RATING_DATA 
(
   SRC_ID               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   SD_FLAG              VARCHAR2(6)          not null,
   ORG_NO               VARCHAR2(32),
   BUSI_LICENCE         VARCHAR2(32),
   CORE_ENT_SALE_AMT_PER_YEAR NUMBER(20,2)         default 0 not null,
   CORE_ENT_SALE_GROWTH_RATE NUMBER(10,7)         default 0 not null,
   SALE_GROSS_PROFIT_RATE NUMBER(10,7)         default 0 not null,
   ASSET_LIAB_RATE      NUMBER(10,7)         default 0 not null,
   QUALITY_CREDIT       VARCHAR2(2)          default '10' not null,
   ABILITY_PAYABLE      VARCHAR2(2)          default '01' not null,
   LM1_CREDIT_QURY_CNT  NUMBER(6)            default 0 not null,
   LM1_CREDIT_QURY_CNT_INST NUMBER(6)            default 0 not null,
   CURRENT_OVERDUE_SUM  NUMBER(6)            default 0 not null,
   LY2_OVERDUE_MAX_CNT  NUMBER(6)            default 0 not null,
   LY2_OVERDUE_MAX_CNT_ACCED NUMBER(6)            default 0 not null,
   LN_NPM_UNSETT_CNT    NUMBER(6)            default 0 not null,
   LN_INTR_NPM_SETT_CNT NUMBER(6)            default 0 not null,
   DEBT_NUMBER_ASSET    NUMBER(6)            default 0 not null,
   ENT_COOPERATE_MONTHS NUMBER(6)            default 0 not null,
   LY1_SALE_COST        NUMBER(20,2)         default 0 not null,
   ENT_SALE_GROWTH_RATE NUMBER(10,7)         default 0 not null,
   LY1_ORDER_MEET_RATE  NUMBER(10,7)         default 0 not null,
   LY1_RECEIV_ACCT_TURNOVER_RATE NUMBER(10,7)         default 0 not null,
   LY1_STOCK_TURNOVER_RATE NUMBER(10,7)         default 0 not null,
   LY1_RETURN_RATE      NUMBER(10,7)         default 0 not null,
   LY1_CUST_LEVEL       VARCHAR2(8)          default '0' not null,
   DEPOSIT_DAILY        NUMBER(20,2)         default 0 not null,
   ACCOUNTED_EXISTED    CHAR                 default '0' not null,
   RELATIONG_YEARS      NUMBER(6)            default 0 not null,
   LY1_LN_NORM_CNT      NUMBER(6)            default 0 not null,
   LY1_LN_NORM_AMT      NUMBER(20,2)         default 0 not null,
   LY1_LN_AVG_AMT       NUMBER(20,2)         default 0 not null,
   LY1_LN_OVERDUE_CNT   NUMBER(6)            default 0 not null,
   LY1_LN_OVERDUE_AMT   NUMBER(20,2)         default 0 not null,
   LY1_LN_OVERDUE_MAX_DAYS NUMBER(6)            default 0 not null,
   LY1_LN_DEFAULT_CNT   NUMBER(6)            default 0 not null,
   LY1_P2P_NORM_CNT     NUMBER(6)            default 0 not null,
   LY1_P2P_NORM_AMT     NUMBER(20,2)         default 0 not null,
   LY1_P2P_NORM_AVG_AMT NUMBER(20,2)         default 0 not null,
   LY1_P2P_OVERDUE_CNT  NUMBER(6)            default 0 not null,
   LY1_P2P_OVERDUE_AMT  NUMBER(20,2)         default 0 not null,
   LY1_P2P_OVERDUE_MAX_DAYS NUMBER(6)            default 0 not null,
   LY1_P2P_DEFAULT_CNT  NUMBER(6)            default 0 not null,
   ITEM1                NUMBER(6)            default 0 not null,
   ITEM2                NUMBER(20,2)         default 0 not null,
   ITEM3                VARCHAR2(32)         default '0' not null,
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071843 primary key (SRC_ID, BUSI_GROUP_NO)
);

comment on table TEST1.LN_MD_CUST_RATING_DATA is
'客户评价源数据表';

comment on column TEST1.LN_MD_CUST_RATING_DATA.SRC_ID is
'ERP系统客户主键';

comment on column TEST1.LN_MD_CUST_RATING_DATA.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_MD_CUST_RATING_DATA.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_RATING_DATA.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_RATING_DATA.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_CUST_RATING_DATA.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_RATING_DATA.SD_FLAG is
'上下游标志';

comment on column TEST1.LN_MD_CUST_RATING_DATA.ORG_NO is
'组织机构代码';

comment on column TEST1.LN_MD_CUST_RATING_DATA.BUSI_LICENCE is
'营业执照号码';

comment on column TEST1.LN_MD_CUST_RATING_DATA.CORE_ENT_SALE_AMT_PER_YEAR is
'近一年核心企业年销售收入（亿元）';

comment on column TEST1.LN_MD_CUST_RATING_DATA.CORE_ENT_SALE_GROWTH_RATE is
'近一年核心企业销售增长率';

comment on column TEST1.LN_MD_CUST_RATING_DATA.SALE_GROSS_PROFIT_RATE is
'近一年核心企业销售毛利率';

comment on column TEST1.LN_MD_CUST_RATING_DATA.ASSET_LIAB_RATE is
'近一年核心企业资产负债率';

comment on column TEST1.LN_MD_CUST_RATING_DATA.QUALITY_CREDIT is
'信用质量';

comment on column TEST1.LN_MD_CUST_RATING_DATA.ABILITY_PAYABLE is
'短期偿债能力';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LM1_CREDIT_QURY_CNT is
'最近一个月征信查询次数（贷款审批）';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LM1_CREDIT_QURY_CNT_INST is
'最近一个月查询机构数（贷款审批）';

comment on column TEST1.LN_MD_CUST_RATING_DATA.CURRENT_OVERDUE_SUM is
'当前逾期期数总计';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY2_OVERDUE_MAX_CNT is
'近24个月最长逾期期数';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY2_OVERDUE_MAX_CNT_ACCED is
'近24个月累计逾期期数';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LN_NPM_UNSETT_CNT is
'未结清信贷不良类的笔数';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LN_INTR_NPM_SETT_CNT is
'已结清信贷不良及关注类贷款笔数';

comment on column TEST1.LN_MD_CUST_RATING_DATA.DEBT_NUMBER_ASSET is
'由资产管理公司处置的债务笔数';

comment on column TEST1.LN_MD_CUST_RATING_DATA.ENT_COOPERATE_MONTHS is
'与核心企业合作月份数';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_SALE_COST is
'近一年销售成本';

comment on column TEST1.LN_MD_CUST_RATING_DATA.ENT_SALE_GROWTH_RATE is
'客户销售增长率';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_ORDER_MEET_RATE is
'客户近一年订单满足率';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_RECEIV_ACCT_TURNOVER_RATE is
'客户近一年应收账款周转率';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_STOCK_TURNOVER_RATE is
'客户近一年库存周转率';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_RETURN_RATE is
'客户近一年退货率';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_CUST_LEVEL is
'近一年供应商等级';

comment on column TEST1.LN_MD_CUST_RATING_DATA.DEPOSIT_DAILY is
'近一年内存款日均余额';

comment on column TEST1.LN_MD_CUST_RATING_DATA.ACCOUNTED_EXISTED is
'是否存在有效基本账户';

comment on column TEST1.LN_MD_CUST_RATING_DATA.RELATIONG_YEARS is
'客户关系存续年数';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_LN_NORM_CNT is
'近1年正常贷款笔数';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_LN_NORM_AMT is
'近1年正常贷款金额';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_LN_AVG_AMT is
'近1年平均贷款金额';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_LN_OVERDUE_CNT is
'近1年逾期贷款笔数';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_LN_OVERDUE_AMT is
'近1年逾期贷款金额';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_LN_OVERDUE_MAX_DAYS is
'近1年贷款最长逾期天数';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_LN_DEFAULT_CNT is
'近1年贷款违约次数';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_P2P_NORM_CNT is
'近1年正常融资笔数';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_P2P_NORM_AMT is
'近1年正常融资金额';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_P2P_NORM_AVG_AMT is
'近1年平均融资金额';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_P2P_OVERDUE_CNT is
'近1年逾期融资笔数';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_P2P_OVERDUE_AMT is
'近1年逾期融资金额';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_P2P_OVERDUE_MAX_DAYS is
'近1年融资最长逾期天数';

comment on column TEST1.LN_MD_CUST_RATING_DATA.LY1_P2P_DEFAULT_CNT is
'近1年融资违约次数';

comment on column TEST1.LN_MD_CUST_RATING_DATA.ITEM1 is
'备用项1';

comment on column TEST1.LN_MD_CUST_RATING_DATA.ITEM2 is
'备用项2';

comment on column TEST1.LN_MD_CUST_RATING_DATA.ITEM3 is
'备用项3';

comment on column TEST1.LN_MD_CUST_RATING_DATA.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_MD_CUST_RATING_DATA.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_RATING_DATA_TMP                            */
/*==============================================================*/
create table TEST1.LN_MD_CUST_RATING_DATA_TMP 
(
   SRC_ID               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   SD_FLAG              VARCHAR2(6)          not null,
   ORG_NO               VARCHAR2(32),
   BUSI_LICENCE         VARCHAR2(32),
   CORE_ENT_SALE_AMT_PER_YEAR NUMBER(20,2)         default 0 not null,
   CORE_ENT_SALE_GROWTH_RATE NUMBER(10,7)         default 0 not null,
   SALE_GROSS_PROFIT_RATE NUMBER(10,7)         default 0 not null,
   ASSET_LIAB_RATE      NUMBER(10,7)         default 0 not null,
   QUALITY_CREDIT       VARCHAR2(2)          default '10' not null,
   ABILITY_PAYABLE      VARCHAR2(2)          default '01' not null,
   LM1_CREDIT_QURY_CNT  NUMBER(6)            default 0 not null,
   LM1_CREDIT_QURY_CNT_INST NUMBER(6)            default 0 not null,
   CURRENT_OVERDUE_SUM  NUMBER(6)            default 0 not null,
   LY2_OVERDUE_MAX_CNT  NUMBER(6)            default 0 not null,
   LY2_OVERDUE_MAX_CNT_ACCED NUMBER(6)            default 0 not null,
   LN_NPM_UNSETT_CNT    NUMBER(6)            default 0 not null,
   LN_INTR_NPM_SETT_CNT NUMBER(6)            default 0 not null,
   DEBT_NUMBER_ASSET    NUMBER(6)            default 0 not null,
   ENT_COOPERATE_MONTHS NUMBER(6)            default 0 not null,
   LY1_SALE_COST        NUMBER(20,2)         default 0 not null,
   ENT_SALE_GROWTH_RATE NUMBER(10,7)         default 0 not null,
   LY1_ORDER_MEET_RATE  NUMBER(10,7)         default 0 not null,
   LY1_RECEIV_ACCT_TURNOVER_RATE NUMBER(10,7)         default 0 not null,
   LY1_STOCK_TURNOVER_RATE NUMBER(10,7)         default 0 not null,
   LY1_RETURN_RATE      NUMBER(10,7)         default 0 not null,
   LY1_CUST_LEVEL       VARCHAR2(8)          default '0' not null,
   DEPOSIT_DAILY        NUMBER(20,2)         default 0 not null,
   ACCOUNTED_EXISTED    CHAR                 default '0' not null,
   RELATIONG_YEARS      NUMBER(6)            default 0 not null,
   LY1_LN_NORM_CNT      NUMBER(6)            default 0 not null,
   LY1_LN_NORM_AMT      NUMBER(20,2)         default 0 not null,
   LY1_LN_AVG_AMT       NUMBER(20,2)         default 0 not null,
   LY1_LN_OVERDUE_CNT   NUMBER(6)            default 0 not null,
   LY1_LN_OVERDUE_AMT   NUMBER(20,2)         default 0 not null,
   LY1_LN_OVERDUE_MAX_DAYS NUMBER(6)            default 0 not null,
   LY1_LN_DEFAULT_CNT   NUMBER(6)            default 0 not null,
   LY1_P2P_NORM_CNT     NUMBER(6)            default 0 not null,
   LY1_P2P_NORM_AMT     NUMBER(20,2)         default 0 not null,
   LY1_P2P_NORM_AVG_AMT NUMBER(20,2)         default 0 not null,
   LY1_P2P_OVERDUE_CNT  NUMBER(6)            default 0 not null,
   LY1_P2P_OVERDUE_AMT  NUMBER(20,2)         default 0 not null,
   LY1_P2P_OVERDUE_MAX_DAYS NUMBER(6)            default 0 not null,
   LY1_P2P_DEFAULT_CNT  NUMBER(6)            default 0 not null,
   ITEM1                NUMBER(6)            default 0 not null,
   ITEM2                NUMBER(20,2)         default 0 not null,
   ITEM3                VARCHAR2(32)         default '0' not null,
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071844 primary key (SRC_ID, BUSI_GROUP_NO)
);

comment on table TEST1.LN_MD_CUST_RATING_DATA_TMP is
'客户评价源数据临时表';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.SRC_ID is
'ERP系统客户主键';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.SD_FLAG is
'上下游标志';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.ORG_NO is
'组织机构代码';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.BUSI_LICENCE is
'营业执照号码';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.CORE_ENT_SALE_AMT_PER_YEAR is
'近一年核心企业年销售收入（亿元）';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.CORE_ENT_SALE_GROWTH_RATE is
'近一年核心企业销售增长率';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.SALE_GROSS_PROFIT_RATE is
'近一年核心企业销售毛利率';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.ASSET_LIAB_RATE is
'近一年核心企业资产负债率';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.QUALITY_CREDIT is
'信用质量';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.ABILITY_PAYABLE is
'短期偿债能力';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LM1_CREDIT_QURY_CNT is
'最近一个月征信查询次数（贷款审批）';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LM1_CREDIT_QURY_CNT_INST is
'最近一个月查询机构数（贷款审批）';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.CURRENT_OVERDUE_SUM is
'当前逾期期数总计';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY2_OVERDUE_MAX_CNT is
'近24个月最长逾期期数';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY2_OVERDUE_MAX_CNT_ACCED is
'近24个月累计逾期期数';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LN_NPM_UNSETT_CNT is
'未结清信贷不良类的笔数';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LN_INTR_NPM_SETT_CNT is
'已结清信贷不良及关注类贷款笔数';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.DEBT_NUMBER_ASSET is
'由资产管理公司处置的债务笔数';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.ENT_COOPERATE_MONTHS is
'与核心企业合作月份数';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_SALE_COST is
'近一年销售成本';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.ENT_SALE_GROWTH_RATE is
'客户销售增长率';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_ORDER_MEET_RATE is
'客户近一年订单满足率';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_RECEIV_ACCT_TURNOVER_RATE is
'客户近一年应收账款周转率';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_STOCK_TURNOVER_RATE is
'客户近一年库存周转率';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_RETURN_RATE is
'客户近一年退货率';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_CUST_LEVEL is
'近一年供应商等级';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.DEPOSIT_DAILY is
'近一年内存款日均余额';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.ACCOUNTED_EXISTED is
'是否存在有效基本账户';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.RELATIONG_YEARS is
'客户关系存续年数';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_LN_NORM_CNT is
'近1年正常贷款笔数';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_LN_NORM_AMT is
'近1年正常贷款金额';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_LN_AVG_AMT is
'近1年平均贷款金额';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_LN_OVERDUE_CNT is
'近1年逾期贷款笔数';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_LN_OVERDUE_AMT is
'近1年逾期贷款金额';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_LN_OVERDUE_MAX_DAYS is
'近1年贷款最长逾期天数';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_LN_DEFAULT_CNT is
'近1年贷款违约次数';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_P2P_NORM_CNT is
'近1年正常融资笔数';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_P2P_NORM_AMT is
'近1年正常融资金额';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_P2P_NORM_AVG_AMT is
'近1年平均融资金额';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_P2P_OVERDUE_CNT is
'近1年逾期融资笔数';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_P2P_OVERDUE_AMT is
'近1年逾期融资金额';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_P2P_OVERDUE_MAX_DAYS is
'近1年融资最长逾期天数';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.LY1_P2P_DEFAULT_CNT is
'近1年融资违约次数';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.ITEM1 is
'备用项1';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.ITEM2 is
'备用项2';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.ITEM3 is
'备用项3';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_MD_CUST_RATING_DATA_TMP.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_RATING_RESULT                              */
/*==============================================================*/
create table TEST1.LN_MD_CUST_RATING_RESULT 
(
   SRC_ID               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   ORG_NO               VARCHAR2(32),
   BUSI_LICENCE         VARCHAR2(32),
   ASSESS_TYPE          CHAR                 not null,
   ASSESS_SCORE         NUMBER(20,2)         default 0 not null,
   ASSESS_LEVEL         VARCHAR2(32)         not null,
   ASSESS_DATE          DATE                 not null,
   ASSESS_TRANSF        CHAR,
   L_ASSESS_SCORE       NUMBER(20,2),
   L_ASSESS_LEVEL       VARCHAR2(32),
   L_ASSESS_DATE        DATE,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071845 primary key (SRC_ID, BUSI_GROUP_NO)
);

comment on table TEST1.LN_MD_CUST_RATING_RESULT is
'客户评价结果表';

comment on column TEST1.LN_MD_CUST_RATING_RESULT.SRC_ID is
'ERP系统客户主键';

comment on column TEST1.LN_MD_CUST_RATING_RESULT.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_MD_CUST_RATING_RESULT.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_RATING_RESULT.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_RATING_RESULT.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_CUST_RATING_RESULT.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_RATING_RESULT.ORG_NO is
'组织机构代码';

comment on column TEST1.LN_MD_CUST_RATING_RESULT.BUSI_LICENCE is
'营业执照号码';

comment on column TEST1.LN_MD_CUST_RATING_RESULT.ASSESS_TYPE is
'评价类型';

comment on column TEST1.LN_MD_CUST_RATING_RESULT.ASSESS_SCORE is
'评价分数';

comment on column TEST1.LN_MD_CUST_RATING_RESULT.ASSESS_LEVEL is
'评价级别';

comment on column TEST1.LN_MD_CUST_RATING_RESULT.ASSESS_DATE is
'评价日期';

comment on column TEST1.LN_MD_CUST_RATING_RESULT.ASSESS_TRANSF is
'评价变化';

comment on column TEST1.LN_MD_CUST_RATING_RESULT.L_ASSESS_SCORE is
'上次评价分数';

comment on column TEST1.LN_MD_CUST_RATING_RESULT.L_ASSESS_LEVEL is
'上次评价级别';

comment on column TEST1.LN_MD_CUST_RATING_RESULT.L_ASSESS_DATE is
'上次评价日期';

comment on column TEST1.LN_MD_CUST_RATING_RESULT.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_CUST_RATING_RESULT_H                            */
/*==============================================================*/
create table TEST1.LN_MD_CUST_RATING_RESULT_H 
(
   SRC_ID               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   ORG_NO               VARCHAR2(32),
   BUSI_LICENCE         VARCHAR2(32),
   ASSESS_TYPE          CHAR                 not null,
   ASSESS_SCORE         NUMBER(20,2)         default 0 not null,
   ASSESS_LEVEL         VARCHAR2(32)         not null,
   ASSESS_DATE          DATE                 not null,
   ASSESS_TRANSF        CHAR,
   L_ASSESS_SCORE       NUMBER(20,2),
   L_ASSESS_LEVEL       VARCHAR2(32),
   L_ASSESS_DATE        DATE,
   ETL_DATE             DATE                 default SYSDATE not null
);

comment on table TEST1.LN_MD_CUST_RATING_RESULT_H is
'客户评价结果历史表';

comment on column TEST1.LN_MD_CUST_RATING_RESULT_H.SRC_ID is
'ERP系统客户主键';

comment on column TEST1.LN_MD_CUST_RATING_RESULT_H.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_MD_CUST_RATING_RESULT_H.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_MD_CUST_RATING_RESULT_H.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MD_CUST_RATING_RESULT_H.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_CUST_RATING_RESULT_H.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MD_CUST_RATING_RESULT_H.ORG_NO is
'组织机构代码';

comment on column TEST1.LN_MD_CUST_RATING_RESULT_H.BUSI_LICENCE is
'营业执照号码';

comment on column TEST1.LN_MD_CUST_RATING_RESULT_H.ASSESS_TYPE is
'评价类型';

comment on column TEST1.LN_MD_CUST_RATING_RESULT_H.ASSESS_SCORE is
'评价分数';

comment on column TEST1.LN_MD_CUST_RATING_RESULT_H.ASSESS_LEVEL is
'评价级别';

comment on column TEST1.LN_MD_CUST_RATING_RESULT_H.ASSESS_DATE is
'评价日期';

comment on column TEST1.LN_MD_CUST_RATING_RESULT_H.ASSESS_TRANSF is
'评价变化';

comment on column TEST1.LN_MD_CUST_RATING_RESULT_H.L_ASSESS_SCORE is
'上次评价分数';

comment on column TEST1.LN_MD_CUST_RATING_RESULT_H.L_ASSESS_LEVEL is
'上次评价级别';

comment on column TEST1.LN_MD_CUST_RATING_RESULT_H.L_ASSESS_DATE is
'上次评价日期';

comment on column TEST1.LN_MD_CUST_RATING_RESULT_H.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MD_LIMIT_CONFIG_MONTH                              */
/*==============================================================*/
create table TEST1.LN_MD_LIMIT_CONFIG_MONTH 
(
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   MONTH                VARCHAR2(2)          not null,
   COEF                 NUMBER(10,7),
   constraint SYS_C0070146 primary key (BUSI_GROUP_NO, MONTH)
);

comment on table TEST1.LN_MD_LIMIT_CONFIG_MONTH is
'客户授信配置表之季节调节系数表';

comment on column TEST1.LN_MD_LIMIT_CONFIG_MONTH.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_LIMIT_CONFIG_MONTH.MONTH is
'月份';

comment on column TEST1.LN_MD_LIMIT_CONFIG_MONTH.COEF is
'季节调节系数';

/*==============================================================*/
/* Table: LN_MD_LIMIT_CONFIG_RATE                               */
/*==============================================================*/
create table TEST1.LN_MD_LIMIT_CONFIG_RATE 
(
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   ASSESS_LEVEL         VARCHAR2(32)         not null,
   ASSESS_COEF          NUMBER(10,7),
   constraint SYS_C0070132 primary key (BUSI_GROUP_NO, ASSESS_LEVEL)
);

comment on table TEST1.LN_MD_LIMIT_CONFIG_RATE is
'模型配置表（授信系数配置）';

comment on column TEST1.LN_MD_LIMIT_CONFIG_RATE.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_MD_LIMIT_CONFIG_RATE.ASSESS_LEVEL is
'评价级别';

comment on column TEST1.LN_MD_LIMIT_CONFIG_RATE.ASSESS_COEF is
'评价系数';

/*==============================================================*/
/* Table: LN_MD_MODEL_RULE                                      */
/*==============================================================*/
create table TEST1.LN_MD_MODEL_RULE 
(
   BUSI_GROUP_CODE      VARCHAR2(10)         not null,
   SD_FLAG              VARCHAR2(6)          not null,
   MODEL_TYPE           VARCHAR2(2)          not null,
   RULE_CODE            VARCHAR2(60)         not null,
   RULE_NAME            VARCHAR2(150),
   OP_USER              VARCHAR2(90),
   OP_DATE              DATE                 default SYSDATE,
   constraint SYS_C0071861 primary key (BUSI_GROUP_CODE, SD_FLAG, MODEL_TYPE)
);

comment on table TEST1.LN_MD_MODEL_RULE is
'模型规则表';

comment on column TEST1.LN_MD_MODEL_RULE.BUSI_GROUP_CODE is
'商圈编码';

comment on column TEST1.LN_MD_MODEL_RULE.SD_FLAG is
'上下游标志';

comment on column TEST1.LN_MD_MODEL_RULE.MODEL_TYPE is
'模型类别';

comment on column TEST1.LN_MD_MODEL_RULE.RULE_CODE is
'规则编号';

comment on column TEST1.LN_MD_MODEL_RULE.RULE_NAME is
'规则名称';

comment on column TEST1.LN_MD_MODEL_RULE.OP_USER is
'规则写入者';

comment on column TEST1.LN_MD_MODEL_RULE.OP_DATE is
'规则写入日期';

/*==============================================================*/
/* Table: LN_MID_C3_EALOANENROLL                                */
/*==============================================================*/
create table TEST1.LN_MID_C3_EALOANENROLL 
(
   LOAN_APPLY_NO        VARCHAR2(32)         not null,
   REQUNO               VARCHAR2(17),
   ORDER1               NUMBER(6),
   NOTICENO             VARCHAR2(60),
   CLICODE              VARCHAR2(16),
   CLINAME              VARCHAR2(90),
   PRJNO                VARCHAR2(16),
   PRJNAME              VARCHAR2(90),
   OPTKIND              VARCHAR2(5),
   DEALMODE             VARCHAR2(4),
   ISLOWRISK            CHAR,
   LOWOPTKIND           VARCHAR2(2),
   ISALLAPPV            CHAR,
   CURRKIND             VARCHAR2(2),
   LOANSUM              NUMBER(18,2),
   SIGNEDCONTSUM        NUMBER(18,2),
   LOANTERM             NUMBER(6),
   TERMCODE             VARCHAR2(2),
   USEWAY               CHAR,
   LOANTYPE1            VARCHAR2(3),
   LOANMANTYPE          CHAR,
   ORGTYPE              CHAR,
   LOANUSE              VARCHAR2(90),
   PURPSKIND            VARCHAR2(2),
   REPAYWAY             VARCHAR2(2),
   GUARWAY              VARCHAR2(5),
   DRAWVLDTERM          NUMBER(6),
   DRAWVLDTERMCODE      VARCHAR2(2),
   GRACETERM            NUMBER(6),
   GRACETERMCODE        VARCHAR2(2),
   RISKRANK             VARCHAR2(3),
   CREDITKIND           CHAR,
   INSREPPER            VARCHAR2(2),
   APPVVLDDATE          NUMBER(6),
   APPVVLDDATECODE      VARCHAR2(2),
   PROPKIND             VARCHAR2(2),
   INTEGKIND            VARCHAR2(90),
   ECONINDKIND          VARCHAR2(5),
   FARMKIND             VARCHAR2(5),
   LOANINDKIND          VARCHAR2(4),
   PRINCIPAL            VARCHAR2(2),
   DEPFEATURE           VARCHAR2(4),
   CONBUSIFLAG          CHAR,
   CONBUSISUM           NUMBER(18,2),
   ISFINPLAN            CHAR,
   FINSUM               NUMBER(18,2),
   ISRLTAPPV            CHAR,
   RLTAPPVKIND          CHAR,
   RLTAPPVNO            VARCHAR2(22),
   AUCSUBCLICOD         VARCHAR2(16),
   AUCSUBCLINAME        VARCHAR2(105),
   AUCACCINSTCODE       VARCHAR2(12),
   AUCACCINSTNAME       VARCHAR2(90),
   ISLIMTERM            CHAR,
   ISSUPREQ             CHAR,
   DEPARTMENT           VARCHAR2(3),
   APPVADV              VARCHAR2(2),
   APPVOPRCODE          VARCHAR2(20),
   APPVOPRNAME          VARCHAR2(45),
   APPVINSTCODE         VARCHAR2(12),
   APPVINSTNAME         VARCHAR2(90),
   APPVDATE             VARCHAR2(8),
   ENINSTCODE           VARCHAR2(12),
   ENINSTNAME           VARCHAR2(90),
   NOTICEDEADLINE       VARCHAR2(8),
   OPRID                VARCHAR2(20),
   OPRNAME              VARCHAR2(45),
   POSCODE              VARCHAR2(2),
   OPINSTCODE           VARCHAR2(12),
   OPINSTNAME           VARCHAR2(90),
   OPDATE               VARCHAR2(8),
   OPTIME               VARCHAR2(6),
   STATUS               CHAR,
   EFDDICF1             VARCHAR2(7),
   constraint SYS_C0072014 primary key (LOAN_APPLY_NO)
);

comment on table TEST1.LN_MID_C3_EALOANENROLL is
'贷款审批记录登记表';

comment on column TEST1.LN_MID_C3_EALOANENROLL.LOAN_APPLY_NO is
'贷款申请编号';

comment on column TEST1.LN_MID_C3_EALOANENROLL.REQUNO is
'申请书编号';

comment on column TEST1.LN_MID_C3_EALOANENROLL.ORDER1 is
'审批流转序号';

comment on column TEST1.LN_MID_C3_EALOANENROLL.NOTICENO is
'审批批复号';

comment on column TEST1.LN_MID_C3_EALOANENROLL.CLICODE is
'客户代码';

comment on column TEST1.LN_MID_C3_EALOANENROLL.CLINAME is
'客户名称';

comment on column TEST1.LN_MID_C3_EALOANENROLL.PRJNO is
'项目编号';

comment on column TEST1.LN_MID_C3_EALOANENROLL.PRJNAME is
'项目名称';

comment on column TEST1.LN_MID_C3_EALOANENROLL.OPTKIND is
'业务品种';

comment on column TEST1.LN_MID_C3_EALOANENROLL.DEALMODE is
'业务处理方式';

comment on column TEST1.LN_MID_C3_EALOANENROLL.ISLOWRISK is
'是否低风险业务';

comment on column TEST1.LN_MID_C3_EALOANENROLL.LOWOPTKIND is
'低风险业务品种';

comment on column TEST1.LN_MID_C3_EALOANENROLL.ISALLAPPV is
'是否一并审批授信';

comment on column TEST1.LN_MID_C3_EALOANENROLL.CURRKIND is
'币种';

comment on column TEST1.LN_MID_C3_EALOANENROLL.LOANSUM is
'贷款金额';

comment on column TEST1.LN_MID_C3_EALOANENROLL.SIGNEDCONTSUM is
'已签订合同金额';

comment on column TEST1.LN_MID_C3_EALOANENROLL.LOANTERM is
'期限';

comment on column TEST1.LN_MID_C3_EALOANENROLL.TERMCODE is
'期限表达方式';

comment on column TEST1.LN_MID_C3_EALOANENROLL.USEWAY is
'流动资金贷款使用方式';

comment on column TEST1.LN_MID_C3_EALOANENROLL.LOANTYPE1 is
'固定资产贷款用途分类';

comment on column TEST1.LN_MID_C3_EALOANENROLL.LOANMANTYPE is
'土地开发贷款分类';

comment on column TEST1.LN_MID_C3_EALOANENROLL.ORGTYPE is
'贷款组织形式';

comment on column TEST1.LN_MID_C3_EALOANENROLL.LOANUSE is
'贷款用途';

comment on column TEST1.LN_MID_C3_EALOANENROLL.PURPSKIND is
'用途分类';

comment on column TEST1.LN_MID_C3_EALOANENROLL.REPAYWAY is
'还款方式';

comment on column TEST1.LN_MID_C3_EALOANENROLL.GUARWAY is
'担保方式';

comment on column TEST1.LN_MID_C3_EALOANENROLL.DRAWVLDTERM is
'提款有效期';

comment on column TEST1.LN_MID_C3_EALOANENROLL.DRAWVLDTERMCODE is
'提款有效期表达方式';

comment on column TEST1.LN_MID_C3_EALOANENROLL.GRACETERM is
'宽限期';

comment on column TEST1.LN_MID_C3_EALOANENROLL.GRACETERMCODE is
'宽限期表达方式';

comment on column TEST1.LN_MID_C3_EALOANENROLL.RISKRANK is
'风险分类';

comment on column TEST1.LN_MID_C3_EALOANENROLL.CREDITKIND is
'授信额度使用方式';

comment on column TEST1.LN_MID_C3_EALOANENROLL.INSREPPER is
'分期还款周期标志';

comment on column TEST1.LN_MID_C3_EALOANENROLL.APPVVLDDATE is
'审批有效期';

comment on column TEST1.LN_MID_C3_EALOANENROLL.APPVVLDDATECODE is
'审批有效期表达式';

comment on column TEST1.LN_MID_C3_EALOANENROLL.PROPKIND is
'贷款性质分类';

comment on column TEST1.LN_MID_C3_EALOANENROLL.INTEGKIND is
'贷款综合分类';

comment on column TEST1.LN_MID_C3_EALOANENROLL.ECONINDKIND is
'投向国民经济行业分类';

comment on column TEST1.LN_MID_C3_EALOANENROLL.FARMKIND is
'人行涉农贷款分类';

comment on column TEST1.LN_MID_C3_EALOANENROLL.LOANINDKIND is
'贷款投向农行行业分类';

comment on column TEST1.LN_MID_C3_EALOANENROLL.PRINCIPAL is
'委托人类别';

comment on column TEST1.LN_MID_C3_EALOANENROLL.DEPFEATURE is
'部门特色分类';

comment on column TEST1.LN_MID_C3_EALOANENROLL.CONBUSIFLAG is
'是否可转换业务';

comment on column TEST1.LN_MID_C3_EALOANENROLL.CONBUSISUM is
'可转换业务额度';

comment on column TEST1.LN_MID_C3_EALOANENROLL.ISFINPLAN is
'是否有配套融资方案';

comment on column TEST1.LN_MID_C3_EALOANENROLL.FINSUM is
'配套融资额度';

comment on column TEST1.LN_MID_C3_EALOANENROLL.ISRLTAPPV is
'是否关联审批';

comment on column TEST1.LN_MID_C3_EALOANENROLL.RLTAPPVKIND is
'关联审批事项';

comment on column TEST1.LN_MID_C3_EALOANENROLL.RLTAPPVNO is
'关联审批编号';

comment on column TEST1.LN_MID_C3_EALOANENROLL.AUCSUBCLICOD is
'授信主体客户代码';

comment on column TEST1.LN_MID_C3_EALOANENROLL.AUCSUBCLINAME is
'授信主体客户名称';

comment on column TEST1.LN_MID_C3_EALOANENROLL.AUCACCINSTCODE is
'授信主体开户行机构代码';

comment on column TEST1.LN_MID_C3_EALOANENROLL.AUCACCINSTNAME is
'授信主体开户行机构名称';

comment on column TEST1.LN_MID_C3_EALOANENROLL.ISLIMTERM is
'有无限制性条款';

comment on column TEST1.LN_MID_C3_EALOANENROLL.ISSUPREQ is
'有无监管要求';

comment on column TEST1.LN_MID_C3_EALOANENROLL.DEPARTMENT is
'部门归属';

comment on column TEST1.LN_MID_C3_EALOANENROLL.APPVADV is
'审批意见';

comment on column TEST1.LN_MID_C3_EALOANENROLL.APPVOPRCODE is
'审批人代码';

comment on column TEST1.LN_MID_C3_EALOANENROLL.APPVOPRNAME is
'审批人姓名';

comment on column TEST1.LN_MID_C3_EALOANENROLL.APPVINSTCODE is
'审批机构代码';

comment on column TEST1.LN_MID_C3_EALOANENROLL.APPVINSTNAME is
'审批机构名称';

comment on column TEST1.LN_MID_C3_EALOANENROLL.APPVDATE is
'审批日期';

comment on column TEST1.LN_MID_C3_EALOANENROLL.ENINSTCODE is
'经营机构代码';

comment on column TEST1.LN_MID_C3_EALOANENROLL.ENINSTNAME is
'经营机构名称';

comment on column TEST1.LN_MID_C3_EALOANENROLL.NOTICEDEADLINE is
'审批批复到期日';

comment on column TEST1.LN_MID_C3_EALOANENROLL.OPRID is
'操作员代码';

comment on column TEST1.LN_MID_C3_EALOANENROLL.OPRNAME is
'操作员姓名';

comment on column TEST1.LN_MID_C3_EALOANENROLL.POSCODE is
'操作员身份代码';

comment on column TEST1.LN_MID_C3_EALOANENROLL.OPINSTCODE is
'操作机构代码';

comment on column TEST1.LN_MID_C3_EALOANENROLL.OPINSTNAME is
'操作机构名称';

comment on column TEST1.LN_MID_C3_EALOANENROLL.OPDATE is
'操作日期';

comment on column TEST1.LN_MID_C3_EALOANENROLL.OPTIME is
'操作时间';

comment on column TEST1.LN_MID_C3_EALOANENROLL.STATUS is
'审批记录状态';

comment on column TEST1.LN_MID_C3_EALOANENROLL.EFDDICF1 is
'信贷产品分类';

/*==============================================================*/
/* Table: LN_MID_C3_EULOANCONT                                  */
/*==============================================================*/
create table TEST1.LN_MID_C3_EULOANCONT 
(
   CONTNO               VARCHAR2(18)         not null,
   CLICODE              VARCHAR2(16),
   REQUNO               VARCHAR2(17),
   APPVNO               NUMBER(6),
   DOCNO                VARCHAR2(60),
   PROJNO               VARCHAR2(16),
   CHARKIND             VARCHAR2(2),
   PERIODKIND           VARCHAR2(3),
   LOANUSE              VARCHAR2(90),
   OPTKIND              VARCHAR2(5),
   INSTBELONG           VARCHAR2(3),
   CONTKIND             VARCHAR2(4),
   GUARWAY              VARCHAR2(150),
   AUCSUBCLICOD         VARCHAR2(16),
   AUCACCINSTCODE       VARCHAR2(12),
   LOANORGFORM          CHAR,
   ISTOGAPP             CHAR,
   ISLOWRISK            CHAR,
   LOWOPTKIND           VARCHAR2(2),
   CREDITFLAG           CHAR,
   ISCYCLE              CHAR,
   ISDISRATE            CHAR,
   DISRATE              NUMBER(8,5),
   DISENDDATE           VARCHAR2(8),
   CURRKIND             VARCHAR2(2),
   EXCHRAT              NUMBER(10,5),
   LOANSUM              NUMBER(18,2),
   USEDSUM              NUMBER(18,2),
   CANCELSUM            NUMBER(18,2),
   UNUSEDSUM            NUMBER(18,2),
   BEGINDATE            VARCHAR2(8),
   DUEDATE              VARCHAR2(8),
   ENDDATE              VARCHAR2(8),
   EXTKIND              VARCHAR2(2),
   EXTNUM               NUMBER(6),
   PERREPAYDAY          VARCHAR2(2),
   REPAYWAY             VARCHAR2(2),
   INTCALWAY            CHAR,
   DIVREPAYFLAG         VARCHAR2(2),
   CONTNUM              NUMBER(6),
   SIGNDATE             VARCHAR2(8),
   ISRLTAPPV            CHAR,
   RLTAPPVKIND          VARCHAR2(2),
   RLTAPPVNO            VARCHAR2(22),
   CONTSTA              VARCHAR2(2),
   DELFLAG              CHAR,
   WFSTA                VARCHAR2(5),
   ADMINST              VARCHAR2(12),
   ADMMGR               VARCHAR2(20),
   OPRINSTCODE          VARCHAR2(12),
   OPRID                VARCHAR2(20),
   ACCDATE              VARCHAR2(8),
   OPDATE               VARCHAR2(8),
   LOAN_APPLY_NO        VARCHAR2(32),
   CLINAME              VARCHAR2(90),
   constraint SYS_C0072015 primary key (CONTNO)
);

comment on table TEST1.LN_MID_C3_EULOANCONT is
'C3借款合同基础表';

comment on column TEST1.LN_MID_C3_EULOANCONT.CONTNO is
'借款合同编号';

comment on column TEST1.LN_MID_C3_EULOANCONT.CLICODE is
'客户ID';

comment on column TEST1.LN_MID_C3_EULOANCONT.REQUNO is
'申请书编号';

comment on column TEST1.LN_MID_C3_EULOANCONT.APPVNO is
'审批批次号';

comment on column TEST1.LN_MID_C3_EULOANCONT.DOCNO is
'借款合同正本编号';

comment on column TEST1.LN_MID_C3_EULOANCONT.PROJNO is
'项目贷款编号';

comment on column TEST1.LN_MID_C3_EULOANCONT.CHARKIND is
'贷款性质分类';

comment on column TEST1.LN_MID_C3_EULOANCONT.PERIODKIND is
'贷款期限分类';

comment on column TEST1.LN_MID_C3_EULOANCONT.LOANUSE is
'借款用途';

comment on column TEST1.LN_MID_C3_EULOANCONT.OPTKIND is
'业务品种';

comment on column TEST1.LN_MID_C3_EULOANCONT.INSTBELONG is
'部门归属';

comment on column TEST1.LN_MID_C3_EULOANCONT.CONTKIND is
'合同种类';

comment on column TEST1.LN_MID_C3_EULOANCONT.GUARWAY is
'担保方式';

comment on column TEST1.LN_MID_C3_EULOANCONT.AUCSUBCLICOD is
'授信主体客户代码';

comment on column TEST1.LN_MID_C3_EULOANCONT.AUCACCINSTCODE is
'授信主体开户行机构代码';

comment on column TEST1.LN_MID_C3_EULOANCONT.LOANORGFORM is
'贷款组织形式';

comment on column TEST1.LN_MID_C3_EULOANCONT.ISTOGAPP is
'是否一并审批';

comment on column TEST1.LN_MID_C3_EULOANCONT.ISLOWRISK is
'是否低风险';

comment on column TEST1.LN_MID_C3_EULOANCONT.LOWOPTKIND is
'低风险业务类别';

comment on column TEST1.LN_MID_C3_EULOANCONT.CREDITFLAG is
'授信额度标志';

comment on column TEST1.LN_MID_C3_EULOANCONT.ISCYCLE is
'是否可循环贷款';

comment on column TEST1.LN_MID_C3_EULOANCONT.ISDISRATE is
'是否贴息贷款';

comment on column TEST1.LN_MID_C3_EULOANCONT.DISRATE is
'贴息率';

comment on column TEST1.LN_MID_C3_EULOANCONT.DISENDDATE is
'贴息截止日期';

comment on column TEST1.LN_MID_C3_EULOANCONT.CURRKIND is
'币种';

comment on column TEST1.LN_MID_C3_EULOANCONT.EXCHRAT is
'发放贷款时汇率';

comment on column TEST1.LN_MID_C3_EULOANCONT.LOANSUM is
'借款金额';

comment on column TEST1.LN_MID_C3_EULOANCONT.USEDSUM is
'已用金额';

comment on column TEST1.LN_MID_C3_EULOANCONT.CANCELSUM is
'客户撤销金额';

comment on column TEST1.LN_MID_C3_EULOANCONT.UNUSEDSUM is
'可用金额';

comment on column TEST1.LN_MID_C3_EULOANCONT.BEGINDATE is
'借款日期';

comment on column TEST1.LN_MID_C3_EULOANCONT.DUEDATE is
'到期日期';

comment on column TEST1.LN_MID_C3_EULOANCONT.ENDDATE is
'发放终止日期';

comment on column TEST1.LN_MID_C3_EULOANCONT.EXTKIND is
'宽限方式';

comment on column TEST1.LN_MID_C3_EULOANCONT.EXTNUM is
'宽限期数';

comment on column TEST1.LN_MID_C3_EULOANCONT.PERREPAYDAY is
'每期还款日';

comment on column TEST1.LN_MID_C3_EULOANCONT.REPAYWAY is
'还款方式';

comment on column TEST1.LN_MID_C3_EULOANCONT.INTCALWAY is
'计息方式';

comment on column TEST1.LN_MID_C3_EULOANCONT.DIVREPAYFLAG is
'分期还款周期标志';

comment on column TEST1.LN_MID_C3_EULOANCONT.CONTNUM is
'合同份数';

comment on column TEST1.LN_MID_C3_EULOANCONT.SIGNDATE is
'签约日期';

comment on column TEST1.LN_MID_C3_EULOANCONT.ISRLTAPPV is
'是否关联审批';

comment on column TEST1.LN_MID_C3_EULOANCONT.RLTAPPVKIND is
'关联审批事项';

comment on column TEST1.LN_MID_C3_EULOANCONT.RLTAPPVNO is
'关联审批编号';

comment on column TEST1.LN_MID_C3_EULOANCONT.CONTSTA is
'合同状态';

comment on column TEST1.LN_MID_C3_EULOANCONT.DELFLAG is
'删除标志';

comment on column TEST1.LN_MID_C3_EULOANCONT.WFSTA is
'放款流程状态标志';

comment on column TEST1.LN_MID_C3_EULOANCONT.ADMINST is
'经营机构编码';

comment on column TEST1.LN_MID_C3_EULOANCONT.ADMMGR is
'客户经理代码';

comment on column TEST1.LN_MID_C3_EULOANCONT.OPRINSTCODE is
'操作机构编码';

comment on column TEST1.LN_MID_C3_EULOANCONT.OPRID is
'操作员代码';

comment on column TEST1.LN_MID_C3_EULOANCONT.ACCDATE is
'首次操作日期';

comment on column TEST1.LN_MID_C3_EULOANCONT.OPDATE is
'操作日期';

comment on column TEST1.LN_MID_C3_EULOANCONT.LOAN_APPLY_NO is
'贷款申请编号';

comment on column TEST1.LN_MID_C3_EULOANCONT.CLINAME is
'客户名称';

/*==============================================================*/
/* Table: LN_MID_C3_EULOANCONTRATE                              */
/*==============================================================*/
create table TEST1.LN_MID_C3_EULOANCONTRATE 
(
   CONTNO               VARCHAR2(18)         not null,
   RATEORD              NUMBER(6)            not null,
   RATEKIND             VARCHAR2(2),
   BASERATE             NUMBER(8,5),
   FLOATWAY             CHAR,
   EXECRATEKIND         VARCHAR2(2),
   ADJRATEFLAG          VARCHAR2(2),
   LOANINTCODE          VARCHAR2(8),
   FLOATRANGE           NUMBER(8,5),
   PECULATERATE         NUMBER(8,5),
   ISRECVBEFNOREPAY     CHAR,
   BEFNOREPAYRATE       NUMBER(8,5),
   RECVBRFORMCOD        VARCHAR2(2),
   ISEXPUP              CHAR,
   OVERINTBEGDATE       VARCHAR2(8),
   EXPUPKIND            VARCHAR2(2),
   EXPUPFLOAT           CHAR,
   EXPUPRANGE           NUMBER(8,5),
   OVERINTCOD           VARCHAR2(8),
   ISPECUP              CHAR,
   PECUPFLOAT           CHAR,
   PECUPRANGE           NUMBER(8,5),
   INTTERM              VARCHAR2(2),
   PROINTDATE           VARCHAR2(2),
   INTPAYWAY            CHAR,
   ISMIXRATE            CHAR,
   INTBEGDATE           VARCHAR2(8),
   INTCHGDATE           VARCHAR2(8),
   OPRINST              VARCHAR2(12),
   OPRID                VARCHAR2(20),
   ACCDATE              VARCHAR2(8),
   OPDATE               VARCHAR2(8),
   constraint SYS_C0072016 primary key (CONTNO, RATEORD)
);

comment on table TEST1.LN_MID_C3_EULOANCONTRATE is
'C3合同利率表';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.CONTNO is
'借款合同编号';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.RATEORD is
'混合利率阶段序号';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.RATEKIND is
'基础利率类别';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.BASERATE is
'基准利率';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.FLOATWAY is
'利率浮动方式';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.EXECRATEKIND is
'执行利率类别';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.ADJRATEFLAG is
'利率浮动周期标志';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.LOANINTCODE is
'贷款利率代码';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.FLOATRANGE is
'利率浮动幅度';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.PECULATERATE is
'挤占挪用贷款利率';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.ISRECVBEFNOREPAY is
'是否约定计收提前还款违约金';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.BEFNOREPAYRATE is
'提前还款违约金比率';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.RECVBRFORMCOD is
'违约金计收公式代码';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.ISEXPUP is
'是否指定逾期利率';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.OVERINTBEGDATE is
'逾期计息起始日';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.EXPUPKIND is
'逾期利率类别';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.EXPUPFLOAT is
'逾期利率浮动方式';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.EXPUPRANGE is
'逾期利率浮动幅度';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.OVERINTCOD is
'逾期利率代码';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.ISPECUP is
'是否指定违约罚息利率';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.PECUPFLOAT is
'违约罚息利率浮动方式';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.PECUPRANGE is
'违约罚息利率浮动幅度';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.INTTERM is
'结息周期';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.PROINTDATE is
'定期结息日';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.INTPAYWAY is
'利息扣收方式';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.ISMIXRATE is
'是否混合利率';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.INTBEGDATE is
'混合利率起始日期';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.INTCHGDATE is
'混合利率转换日期';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.OPRINST is
'操作机构编码';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.OPRID is
'操作员代码';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.ACCDATE is
'首次操作日期';

comment on column TEST1.LN_MID_C3_EULOANCONTRATE.OPDATE is
'操作日期';

/*==============================================================*/
/* Table: LN_MID_C3_EULOANVCH                                   */
/*==============================================================*/
create table TEST1.LN_MID_C3_EULOANVCH 
(
   VCHNO                VARCHAR2(16)         not null,
   CONTNO               VARCHAR2(18),
   CLICODE              VARCHAR2(16),
   REQUNO               VARCHAR2(17),
   PRJNO                VARCHAR2(16),
   ORIGINNO             VARCHAR2(16),
   OPTKIND              VARCHAR2(5),
   CHARKIND             VARCHAR2(2),
   PERIODKIND           VARCHAR2(3),
   LOANUSE              VARCHAR2(90),
   LOANORGFORM          CHAR,
   GUARWAY              VARCHAR2(150),
   GUARCONTNO           VARCHAR2(18),
   PURPSKIND            VARCHAR2(2),
   LOANCOLLKIND         VARCHAR2(90),
   LOANINDKIND          VARCHAR2(4),
   ECOINDKIND           VARCHAR2(5),
   RBLOANKIND           VARCHAR2(5),
   ISTOGAPP             CHAR,
   ISLOWRISK            CHAR,
   LOWOPTKIND           VARCHAR2(2),
   ISCYCLE              CHAR,
   ISDISRATE            CHAR,
   DISENDDATE           VARCHAR2(8),
   DISRATE              NUMBER(8,5),
   LOANDATE             VARCHAR2(8),
   ENDDATE              VARCHAR2(8),
   ABISDATE             VARCHAR2(8),
   EXFLAG               CHAR,
   EXTENDDATE           VARCHAR2(8),
   AGREEDATE            VARCHAR2(8),
   REPAYWAY             VARCHAR2(2),
   CURRKIND             VARCHAR2(2),
   LOANSUM              NUMBER(18,2),
   REST                 NUMBER(18,2),
   IINTREST             NUMBER(18,2),
   OINTREST             NUMBER(18,2),
   CANCELSUM            NUMBER(18,2),
   CANCELINT            NUMBER(18,2),
   DEBTSUM              NUMBER(18,2),
   DEBTINT              NUMBER(18,2),
   DEBTFLAG             CHAR,
   RISKKIND             VARCHAR2(3),
   INGRADEKIND          VARCHAR2(3),
   FIRSTVCHNO           VARCHAR2(16),
   FIRSTVCHDATE         VARCHAR2(8),
   ABISBANKNO           VARCHAR2(6),
   ABISOPTKIND          VARCHAR2(8),
   LOANACC              VARCHAR2(20),
   REPAYKIND            CHAR,
   ISLESSSUM            CHAR,
   HEADSUM              NUMBER(18,2),
   RECVACC              VARCHAR2(20),
   REPAYACC1            VARCHAR2(20),
   REPAYACC2            VARCHAR2(20),
   RLTAPPVKIND          VARCHAR2(2),
   SUEHINTDATE          VARCHAR2(8),
   WFSTA                VARCHAR2(5),
   LOANVCHSTA           VARCHAR2(2),
   DELFLAG              CHAR,
   LENDINST             VARCHAR2(12),
   ADMMGR               VARCHAR2(20),
   OPRINST              VARCHAR2(12),
   OPRID                VARCHAR2(20),
   ACCDATE              VARCHAR2(8),
   ACCTIME              VARCHAR2(6),
   OPDATE               VARCHAR2(8),
   OPTIME               VARCHAR2(6),
   LOAN_APPLY_NO        VARCHAR2(32),
   CLINAME              VARCHAR2(90),
   constraint SYS_C0072018 primary key (VCHNO)
);

comment on table TEST1.LN_MID_C3_EULOANVCH is
'C3借款凭证基础表';

comment on column TEST1.LN_MID_C3_EULOANVCH.VCHNO is
'借款凭证编号';

comment on column TEST1.LN_MID_C3_EULOANVCH.CONTNO is
'借款合同编号';

comment on column TEST1.LN_MID_C3_EULOANVCH.CLICODE is
'客户ID';

comment on column TEST1.LN_MID_C3_EULOANVCH.REQUNO is
'申请书编号';

comment on column TEST1.LN_MID_C3_EULOANVCH.PRJNO is
'项目贷款编号';

comment on column TEST1.LN_MID_C3_EULOANVCH.ORIGINNO is
'借款凭证原始号码';

comment on column TEST1.LN_MID_C3_EULOANVCH.OPTKIND is
'业务品种';

comment on column TEST1.LN_MID_C3_EULOANVCH.CHARKIND is
'贷款性质分类';

comment on column TEST1.LN_MID_C3_EULOANVCH.PERIODKIND is
'贷款期限分类';

comment on column TEST1.LN_MID_C3_EULOANVCH.LOANUSE is
'借款用途';

comment on column TEST1.LN_MID_C3_EULOANVCH.LOANORGFORM is
'贷款组织形式';

comment on column TEST1.LN_MID_C3_EULOANVCH.GUARWAY is
'担保方式';

comment on column TEST1.LN_MID_C3_EULOANVCH.GUARCONTNO is
'担保合同编号';

comment on column TEST1.LN_MID_C3_EULOANVCH.PURPSKIND is
'借款用途分类';

comment on column TEST1.LN_MID_C3_EULOANVCH.LOANCOLLKIND is
'贷款综合分类';

comment on column TEST1.LN_MID_C3_EULOANVCH.LOANINDKIND is
'贷款投向行业分类';

comment on column TEST1.LN_MID_C3_EULOANVCH.ECOINDKIND is
'贷款投向国民经济行业分类';

comment on column TEST1.LN_MID_C3_EULOANVCH.RBLOANKIND is
'人行涉农贷款分类';

comment on column TEST1.LN_MID_C3_EULOANVCH.ISTOGAPP is
'是否一并审批';

comment on column TEST1.LN_MID_C3_EULOANVCH.ISLOWRISK is
'是否低风险业务';

comment on column TEST1.LN_MID_C3_EULOANVCH.LOWOPTKIND is
'低风险业务类别';

comment on column TEST1.LN_MID_C3_EULOANVCH.ISCYCLE is
'是否可循环贷款';

comment on column TEST1.LN_MID_C3_EULOANVCH.ISDISRATE is
'是否贴息贷款';

comment on column TEST1.LN_MID_C3_EULOANVCH.DISENDDATE is
'贴息截止日期';

comment on column TEST1.LN_MID_C3_EULOANVCH.DISRATE is
'贴息率';

comment on column TEST1.LN_MID_C3_EULOANVCH.LOANDATE is
'借款日期';

comment on column TEST1.LN_MID_C3_EULOANVCH.ENDDATE is
'到期日期';

comment on column TEST1.LN_MID_C3_EULOANVCH.ABISDATE is
'会计入账日期';

comment on column TEST1.LN_MID_C3_EULOANVCH.EXFLAG is
'展期/约期标志';

comment on column TEST1.LN_MID_C3_EULOANVCH.EXTENDDATE is
'展期到期日';

comment on column TEST1.LN_MID_C3_EULOANVCH.AGREEDATE is
'约期到期日';

comment on column TEST1.LN_MID_C3_EULOANVCH.REPAYWAY is
'还款方式';

comment on column TEST1.LN_MID_C3_EULOANVCH.CURRKIND is
'币种';

comment on column TEST1.LN_MID_C3_EULOANVCH.LOANSUM is
'借款金额';

comment on column TEST1.LN_MID_C3_EULOANVCH.REST is
'凭证余额';

comment on column TEST1.LN_MID_C3_EULOANVCH.IINTREST is
'表内欠息（应收）';

comment on column TEST1.LN_MID_C3_EULOANVCH.OINTREST is
'表外欠息（实收）';

comment on column TEST1.LN_MID_C3_EULOANVCH.CANCELSUM is
'累计核销本金';

comment on column TEST1.LN_MID_C3_EULOANVCH.CANCELINT is
'累计核销利息';

comment on column TEST1.LN_MID_C3_EULOANVCH.DEBTSUM is
'累计抵债本金';

comment on column TEST1.LN_MID_C3_EULOANVCH.DEBTINT is
'累计抵债利息';

comment on column TEST1.LN_MID_C3_EULOANVCH.DEBTFLAG is
'以资抵债标志';

comment on column TEST1.LN_MID_C3_EULOANVCH.RISKKIND is
'风险分类';

comment on column TEST1.LN_MID_C3_EULOANVCH.INGRADEKIND is
'内部评级分类';

comment on column TEST1.LN_MID_C3_EULOANVCH.FIRSTVCHNO is
'首笔凭证编号';

comment on column TEST1.LN_MID_C3_EULOANVCH.FIRSTVCHDATE is
'首笔凭证发放日期';

comment on column TEST1.LN_MID_C3_EULOANVCH.ABISBANKNO is
'ABIS行号';

comment on column TEST1.LN_MID_C3_EULOANVCH.ABISOPTKIND is
'ABIS业务品种';

comment on column TEST1.LN_MID_C3_EULOANVCH.LOANACC is
'贷款账号';

comment on column TEST1.LN_MID_C3_EULOANVCH.REPAYKIND is
'还款类型';

comment on column TEST1.LN_MID_C3_EULOANVCH.ISLESSSUM is
'是否自动扣收本金';

comment on column TEST1.LN_MID_C3_EULOANVCH.HEADSUM is
'自动扣收本金起点金额';

comment on column TEST1.LN_MID_C3_EULOANVCH.RECVACC is
'收款账号';

comment on column TEST1.LN_MID_C3_EULOANVCH.REPAYACC1 is
'还款账号1';

comment on column TEST1.LN_MID_C3_EULOANVCH.REPAYACC2 is
'还款账号2';

comment on column TEST1.LN_MID_C3_EULOANVCH.RLTAPPVKIND is
'关联审批事项';

comment on column TEST1.LN_MID_C3_EULOANVCH.SUEHINTDATE is
'诉讼时效提示日期';

comment on column TEST1.LN_MID_C3_EULOANVCH.WFSTA is
'放款流程状态标志';

comment on column TEST1.LN_MID_C3_EULOANVCH.LOANVCHSTA is
'凭证状态';

comment on column TEST1.LN_MID_C3_EULOANVCH.DELFLAG is
'删除标志';

comment on column TEST1.LN_MID_C3_EULOANVCH.LENDINST is
'放款机构编码';

comment on column TEST1.LN_MID_C3_EULOANVCH.ADMMGR is
'客户经理代码';

comment on column TEST1.LN_MID_C3_EULOANVCH.OPRINST is
'操作机构编码';

comment on column TEST1.LN_MID_C3_EULOANVCH.OPRID is
'操作员代码';

comment on column TEST1.LN_MID_C3_EULOANVCH.ACCDATE is
'首次操作日期';

comment on column TEST1.LN_MID_C3_EULOANVCH.ACCTIME is
'首次操作时间';

comment on column TEST1.LN_MID_C3_EULOANVCH.OPDATE is
'操作日期';

comment on column TEST1.LN_MID_C3_EULOANVCH.OPTIME is
'操作时间';

comment on column TEST1.LN_MID_C3_EULOANVCH.LOAN_APPLY_NO is
'贷款申请编号';

comment on column TEST1.LN_MID_C3_EULOANVCH.CLINAME is
'客户名称';

/*==============================================================*/
/* Table: LN_MID_C3_EULOANVCHA                                  */
/*==============================================================*/
create table TEST1.LN_MID_C3_EULOANVCHA 
(
   VCHNO                VARCHAR2(16)         not null,
   PRINCIPAL            VARCHAR2(2),
   ASSETUSEWAY          VARCHAR2(3),
   LOANMANTYPE          CHAR,
   DEPFEATURE           VARCHAR2(4),
   TRANSFERLOAN         VARCHAR2(3),
   FOREIGNGUAR          VARCHAR2(3),
   GOVPLATFORMGRADE     VARCHAR2(2),
   GOVPLATFORMFUNC      CHAR,
   GOVPLATFORMTYPE      VARCHAR2(2),
   ISRESTRICT           CHAR,
   CREPROCF             VARCHAR2(10),
   BACKUP1              VARCHAR2(90),
   BACKUP2              VARCHAR2(10),
   BACKUP3              VARCHAR2(90),
   BACKUP4              VARCHAR2(90),
   BACKUP5              VARCHAR2(90),
   BACKUP6              VARCHAR2(90),
   BACKUP7              VARCHAR2(90),
   BACKUP8              VARCHAR2(90),
   BACKUP9              VARCHAR2(90),
   AGREESUMINT          NUMBER(18,2),
   ACTUALINT            NUMBER(18,2),
   CURMONINT            NUMBER(18,2),
   OPRINST              VARCHAR2(12),
   OPRID                VARCHAR2(20),
   ACCDATE              VARCHAR2(8),
   ACCTIME              VARCHAR2(6),
   OPDATE               VARCHAR2(8),
   OPTIME               VARCHAR2(6),
   constraint SYS_C0072019 primary key (VCHNO)
);

comment on table TEST1.LN_MID_C3_EULOANVCHA is
'C3借款凭证附加表';

comment on column TEST1.LN_MID_C3_EULOANVCHA.VCHNO is
'借款凭证编号';

comment on column TEST1.LN_MID_C3_EULOANVCHA.PRINCIPAL is
'委托人类别';

comment on column TEST1.LN_MID_C3_EULOANVCHA.ASSETUSEWAY is
'固定资产贷款用途分类';

comment on column TEST1.LN_MID_C3_EULOANVCHA.LOANMANTYPE is
'土地开发贷款分类';

comment on column TEST1.LN_MID_C3_EULOANVCHA.DEPFEATURE is
'部门特色分类';

comment on column TEST1.LN_MID_C3_EULOANVCHA.TRANSFERLOAN is
'转贷款分类';

comment on column TEST1.LN_MID_C3_EULOANVCHA.FOREIGNGUAR is
'外汇保证贷款分类';

comment on column TEST1.LN_MID_C3_EULOANVCHA.GOVPLATFORMGRADE is
'政府投融资平台层级分类';

comment on column TEST1.LN_MID_C3_EULOANVCHA.GOVPLATFORMFUNC is
'政府投融资平台功能分类';

comment on column TEST1.LN_MID_C3_EULOANVCHA.GOVPLATFORMTYPE is
'政府投融资平台类型分类';

comment on column TEST1.LN_MID_C3_EULOANVCHA.ISRESTRICT is
'是否国家限制行业';

comment on column TEST1.LN_MID_C3_EULOANVCHA.CREPROCF is
'信贷产品分类';

comment on column TEST1.LN_MID_C3_EULOANVCHA.BACKUP1 is
'备用1';

comment on column TEST1.LN_MID_C3_EULOANVCHA.BACKUP2 is
'备用2';

comment on column TEST1.LN_MID_C3_EULOANVCHA.BACKUP3 is
'支付方式';

comment on column TEST1.LN_MID_C3_EULOANVCHA.BACKUP4 is
'自然灾害影响';

comment on column TEST1.LN_MID_C3_EULOANVCHA.BACKUP5 is
'战略新兴产业分类';

comment on column TEST1.LN_MID_C3_EULOANVCHA.BACKUP6 is
'是否工业转型升级';

comment on column TEST1.LN_MID_C3_EULOANVCHA.BACKUP7 is
'备用7';

comment on column TEST1.LN_MID_C3_EULOANVCHA.BACKUP8 is
'备用8';

comment on column TEST1.LN_MID_C3_EULOANVCHA.BACKUP9 is
'备用9';

comment on column TEST1.LN_MID_C3_EULOANVCHA.AGREESUMINT is
'累计应还利息';

comment on column TEST1.LN_MID_C3_EULOANVCHA.ACTUALINT is
'累计实收利息';

comment on column TEST1.LN_MID_C3_EULOANVCHA.CURMONINT is
'本月实收利息';

comment on column TEST1.LN_MID_C3_EULOANVCHA.OPRINST is
'操作机构编码';

comment on column TEST1.LN_MID_C3_EULOANVCHA.OPRID is
'操作员代码';

comment on column TEST1.LN_MID_C3_EULOANVCHA.ACCDATE is
'首次操作日期';

comment on column TEST1.LN_MID_C3_EULOANVCHA.ACCTIME is
'首次操作时间';

comment on column TEST1.LN_MID_C3_EULOANVCHA.OPDATE is
'操作日期';

comment on column TEST1.LN_MID_C3_EULOANVCHA.OPTIME is
'操作时间';

/*==============================================================*/
/* Table: LN_MID_C3_EULOANVCHRATE                               */
/*==============================================================*/
create table TEST1.LN_MID_C3_EULOANVCHRATE 
(
   VCHNO                VARCHAR2(16)         not null,
   RATEORD              NUMBER(6)            not null,
   RATEKIND             VARCHAR2(2),
   BASERATE             NUMBER(8,5),
   FLOATWAY             CHAR,
   EXECRATEKIND         VARCHAR2(2),
   ADJRATEFLAG          VARCHAR2(2),
   LOANINTCODE          VARCHAR2(8),
   FLOATRANGE           NUMBER(8,5),
   ISRECVBEFNOREPAY     CHAR,
   BEFNOREPAYRATE       NUMBER(8,5),
   RECVBRFORMCOD        VARCHAR2(2),
   ISEXPUP              CHAR,
   OVERINTBEGDATE       VARCHAR2(8),
   EXPUPKIND            VARCHAR2(2),
   EXPUPFLOAT           CHAR,
   EXPUPRANGE           NUMBER(8,5),
   OVERINTCOD           VARCHAR2(8),
   ISPECUP              CHAR,
   PECUPFLOAT           CHAR,
   PECUPRANGE           NUMBER(8,5),
   INTTERM              VARCHAR2(2),
   PROINTDATE           VARCHAR2(2),
   INTPAYWAY            CHAR,
   ISMIXRATE            CHAR,
   INTBEGDATE           VARCHAR2(8),
   INTCHGDATE           VARCHAR2(8),
   ISPROINTADJSEL       CHAR,
   SELFEERATE           NUMBER(8,5),
   SELFEECOD            CHAR,
   SEDATE               VARCHAR2(8),
   OPRINST              VARCHAR2(12),
   OPRID                VARCHAR2(20),
   ACCDATE              VARCHAR2(8),
   ACCTIME              VARCHAR2(6),
   OPDATE               VARCHAR2(8),
   OPTIME               VARCHAR2(6),
   constraint SYS_C0072020 primary key (VCHNO, RATEORD)
);

comment on table TEST1.LN_MID_C3_EULOANVCHRATE is
'C3凭证利率信息表';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.VCHNO is
'借款凭证编号';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.RATEORD is
'混合利率阶段序号';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.RATEKIND is
'基础利率类别';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.BASERATE is
'基准利率';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.FLOATWAY is
'利率浮动方式';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.EXECRATEKIND is
'执行利率类别';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.ADJRATEFLAG is
'利率浮动周期标志';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.LOANINTCODE is
'贷款利率代码';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.FLOATRANGE is
'利率浮动幅度';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.ISRECVBEFNOREPAY is
'是否约定计收提前还款违约金';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.BEFNOREPAYRATE is
'提前还款违约金比率';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.RECVBRFORMCOD is
'违约金计收公式代码';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.ISEXPUP is
'是否指定逾期利率';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.OVERINTBEGDATE is
'逾期计息起始日';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.EXPUPKIND is
'逾期利率类别';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.EXPUPFLOAT is
'逾期利率浮动方式';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.EXPUPRANGE is
'逾期利率浮动幅度';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.OVERINTCOD is
'逾期利率代码';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.ISPECUP is
'是否指定违约罚息利率';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.PECUPFLOAT is
'违约罚息利率浮动方式';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.PECUPRANGE is
'违约罚息利率浮动幅度';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.INTTERM is
'结息周期';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.PROINTDATE is
'定期结息日';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.INTPAYWAY is
'利息扣收方式';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.ISMIXRATE is
'是否混合利率';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.INTBEGDATE is
'混合利率起始日期';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.INTCHGDATE is
'混合利率转换日期';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.ISPROINTADJSEL is
'是否约定利率调整选择权';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.SELFEERATE is
'选择权费率';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.SELFEECOD is
'选择权费用公式代码';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.SEDATE is
'选择权执行日期';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.OPRINST is
'操作机构编码';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.OPRID is
'操作员代码';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.ACCDATE is
'首次操作日期';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.ACCTIME is
'首次操作时间';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.OPDATE is
'操作日期';

comment on column TEST1.LN_MID_C3_EULOANVCHRATE.OPTIME is
'操作时间';

/*==============================================================*/
/* Table: LN_MID_C3_EULOANVCH_D                                 */
/*==============================================================*/
create table TEST1.LN_MID_C3_EULOANVCH_D 
(
   VCHNO                VARCHAR2(16)         not null,
   CONTNO               VARCHAR2(18),
   CLICODE              VARCHAR2(16),
   REQUNO               VARCHAR2(17),
   PRJNO                VARCHAR2(16),
   ORIGINNO             VARCHAR2(16),
   OPTKIND              VARCHAR2(5),
   CHARKIND             VARCHAR2(2),
   PERIODKIND           VARCHAR2(3),
   LOANUSE              VARCHAR2(90),
   LOANORGFORM          CHAR,
   GUARWAY              VARCHAR2(150),
   GUARCONTNO           VARCHAR2(18),
   PURPSKIND            VARCHAR2(2),
   LOANCOLLKIND         VARCHAR2(90),
   LOANINDKIND          VARCHAR2(4),
   ECOINDKIND           VARCHAR2(5),
   RBLOANKIND           VARCHAR2(5),
   ISTOGAPP             CHAR,
   ISLOWRISK            CHAR,
   LOWOPTKIND           VARCHAR2(2),
   ISCYCLE              CHAR,
   ISDISRATE            CHAR,
   DISENDDATE           VARCHAR2(8),
   DISRATE              NUMBER(10,7),
   LOANDATE             VARCHAR2(8),
   ENDDATE              VARCHAR2(8),
   ABISDATE             VARCHAR2(8),
   EXFLAG               CHAR,
   EXTENDDATE           VARCHAR2(8),
   AGREEDATE            VARCHAR2(8),
   REPAYWAY             VARCHAR2(2),
   CURRKIND             VARCHAR2(2),
   LOANSUM              NUMBER(20,2),
   REST                 NUMBER(20,2),
   IINTREST             NUMBER(20,2),
   OINTREST             NUMBER(20,2),
   CANCELSUM            NUMBER(20,2),
   CANCELINT            NUMBER(20,2),
   DEBTSUM              NUMBER(20,2),
   DEBTINT              NUMBER(20,2),
   DEBTFLAG             CHAR,
   RISKKIND             VARCHAR2(3),
   INGRADEKIND          VARCHAR2(3),
   FIRSTVCHNO           VARCHAR2(16),
   FIRSTVCHDATE         VARCHAR2(8),
   ABISBANKNO           VARCHAR2(6),
   ABISOPTKIND          VARCHAR2(8),
   LOANACC              VARCHAR2(30),
   REPAYKIND            CHAR,
   ISLESSSUM            CHAR,
   HEADSUM              NUMBER(20,2),
   RECVACC              VARCHAR2(30),
   REPAYACC1            VARCHAR2(30),
   REPAYACC2            VARCHAR2(30),
   RLTAPPVKIND          VARCHAR2(2),
   SUEHINTDATE          VARCHAR2(8),
   WFSTA                VARCHAR2(5),
   LOANVCHSTA           VARCHAR2(2),
   DELFLAG              CHAR,
   LENDINST             VARCHAR2(12),
   ADMMGR               VARCHAR2(30),
   OPRINST              VARCHAR2(12),
   OPRID                VARCHAR2(30),
   ACCDATE              VARCHAR2(8),
   ACCTIME              VARCHAR2(6),
   OPDATE               VARCHAR2(8),
   OPTIME               VARCHAR2(6),
   SOURCE               VARCHAR2(32),
   BUSI_DATE            VARCHAR2(8),
   ETL_DATE             DATE                 default SYSDATE,
   constraint SYS_C0072021 primary key (VCHNO)
);

comment on table TEST1.LN_MID_C3_EULOANVCH_D is
'C3贷款凭证信息表';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.VCHNO is
'借款凭证编号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.CONTNO is
'借款合同编号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.CLICODE is
'客户ID';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.REQUNO is
'申请书编号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.PRJNO is
'项目贷款编号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.ORIGINNO is
'借款凭证原始号码';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.OPTKIND is
'业务品种';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.CHARKIND is
'贷款性质分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.PERIODKIND is
'贷款期限分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.LOANUSE is
'借款用途';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.LOANORGFORM is
'贷款组织形式';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.GUARWAY is
'担保方式';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.GUARCONTNO is
'担保合同编号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.PURPSKIND is
'借款用途分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.LOANCOLLKIND is
'贷款综合分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.LOANINDKIND is
'贷款投向行业分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.ECOINDKIND is
'贷款投向国民经济行业分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.RBLOANKIND is
'人行涉农贷款分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.ISTOGAPP is
'是否一并审批';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.ISLOWRISK is
'是否低风险业务';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.LOWOPTKIND is
'低风险业务类别';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.ISCYCLE is
'是否可循环贷款';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.ISDISRATE is
'是否贴息贷款';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.DISENDDATE is
'贴息截止日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.DISRATE is
'贴息率';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.LOANDATE is
'借款日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.ENDDATE is
'到期日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.ABISDATE is
'会计入账日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.EXFLAG is
'展期/约期标志';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.EXTENDDATE is
'展期到期日';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.AGREEDATE is
'约期到期日';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.REPAYWAY is
'还款方式';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.CURRKIND is
'币种';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.LOANSUM is
'借款金额';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.REST is
'凭证余额';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.IINTREST is
'表内欠息';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.OINTREST is
'表外欠息';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.CANCELSUM is
'累计核销本金';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.CANCELINT is
'累计核销利息';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.DEBTSUM is
'累计抵债本金';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.DEBTINT is
'累计抵债利息';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.DEBTFLAG is
'以资抵债标志';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.RISKKIND is
'风险分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.INGRADEKIND is
'内部评级分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.FIRSTVCHNO is
'首笔凭证编号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.FIRSTVCHDATE is
'首笔凭证发放日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.ABISBANKNO is
'ABIS行号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.ABISOPTKIND is
'ABIS业务品种';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.LOANACC is
'贷款账号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.REPAYKIND is
'还款类型';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.ISLESSSUM is
'是否自动扣收本金';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.HEADSUM is
'自动扣收本金起点金额';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.RECVACC is
'收款账号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.REPAYACC1 is
'还款账号1';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.REPAYACC2 is
'还款账号2';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.RLTAPPVKIND is
'关联审批事项';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.SUEHINTDATE is
'诉讼时效提示日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.WFSTA is
'放款流程状态标志';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.LOANVCHSTA is
'凭证状态';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.DELFLAG is
'删除标志';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.LENDINST is
'放款机构编码';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.ADMMGR is
'客户经理代码';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.OPRINST is
'操作机构编码';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.OPRID is
'操作员代码';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.ACCDATE is
'首次操作日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.ACCTIME is
'首次操作时间';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.OPDATE is
'操作日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.OPTIME is
'操作时间';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.SOURCE is
'数据来源';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MID_C3_EULOANVCH_D_TMP                             */
/*==============================================================*/
create table TEST1.LN_MID_C3_EULOANVCH_D_TMP 
(
   VCHNO                VARCHAR2(16)         not null,
   CONTNO               VARCHAR2(18),
   CLICODE              VARCHAR2(16),
   REQUNO               VARCHAR2(17),
   PRJNO                VARCHAR2(16),
   ORIGINNO             VARCHAR2(16),
   OPTKIND              VARCHAR2(5),
   CHARKIND             VARCHAR2(2),
   PERIODKIND           VARCHAR2(3),
   LOANUSE              VARCHAR2(90),
   LOANORGFORM          CHAR,
   GUARWAY              VARCHAR2(150),
   GUARCONTNO           VARCHAR2(18),
   PURPSKIND            VARCHAR2(2),
   LOANCOLLKIND         VARCHAR2(90),
   LOANINDKIND          VARCHAR2(4),
   ECOINDKIND           VARCHAR2(5),
   RBLOANKIND           VARCHAR2(5),
   ISTOGAPP             CHAR,
   ISLOWRISK            CHAR,
   LOWOPTKIND           VARCHAR2(2),
   ISCYCLE              CHAR,
   ISDISRATE            CHAR,
   DISENDDATE           VARCHAR2(8),
   DISRATE              NUMBER(10,7),
   LOANDATE             VARCHAR2(8),
   ENDDATE              VARCHAR2(8),
   ABISDATE             VARCHAR2(8),
   EXFLAG               CHAR,
   EXTENDDATE           VARCHAR2(8),
   AGREEDATE            VARCHAR2(8),
   REPAYWAY             VARCHAR2(2),
   CURRKIND             VARCHAR2(2),
   LOANSUM              NUMBER(20,2),
   REST                 NUMBER(20,2),
   IINTREST             NUMBER(20,2),
   OINTREST             NUMBER(20,2),
   CANCELSUM            NUMBER(20,2),
   CANCELINT            NUMBER(20,2),
   DEBTSUM              NUMBER(20,2),
   DEBTINT              NUMBER(20,2),
   DEBTFLAG             CHAR,
   RISKKIND             VARCHAR2(3),
   INGRADEKIND          VARCHAR2(3),
   FIRSTVCHNO           VARCHAR2(16),
   FIRSTVCHDATE         VARCHAR2(8),
   ABISBANKNO           VARCHAR2(6),
   ABISOPTKIND          VARCHAR2(8),
   LOANACC              VARCHAR2(30),
   REPAYKIND            CHAR,
   ISLESSSUM            CHAR,
   HEADSUM              NUMBER(20,2),
   RECVACC              VARCHAR2(30),
   REPAYACC1            VARCHAR2(30),
   REPAYACC2            VARCHAR2(30),
   RLTAPPVKIND          VARCHAR2(2),
   SUEHINTDATE          VARCHAR2(8),
   WFSTA                VARCHAR2(5),
   LOANVCHSTA           VARCHAR2(2),
   DELFLAG              CHAR,
   LENDINST             VARCHAR2(12),
   ADMMGR               VARCHAR2(30),
   OPRINST              VARCHAR2(12),
   OPRID                VARCHAR2(30),
   ACCDATE              VARCHAR2(8),
   ACCTIME              VARCHAR2(6),
   OPDATE               VARCHAR2(8),
   OPTIME               VARCHAR2(6),
   SOURCE               VARCHAR2(32),
   BUSI_DATE            VARCHAR2(8),
   ETL_DATE             DATE                 default SYSDATE,
   constraint SYS_C0072022 primary key (VCHNO)
);

comment on table TEST1.LN_MID_C3_EULOANVCH_D_TMP is
'C3贷款凭证信息临时表';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.VCHNO is
'借款凭证编号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.CONTNO is
'借款合同编号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.CLICODE is
'客户ID';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.REQUNO is
'申请书编号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.PRJNO is
'项目贷款编号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.ORIGINNO is
'借款凭证原始号码';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.OPTKIND is
'业务品种';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.CHARKIND is
'贷款性质分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.PERIODKIND is
'贷款期限分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.LOANUSE is
'借款用途';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.LOANORGFORM is
'贷款组织形式';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.GUARWAY is
'担保方式';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.GUARCONTNO is
'担保合同编号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.PURPSKIND is
'借款用途分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.LOANCOLLKIND is
'贷款综合分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.LOANINDKIND is
'贷款投向行业分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.ECOINDKIND is
'贷款投向国民经济行业分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.RBLOANKIND is
'人行涉农贷款分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.ISTOGAPP is
'是否一并审批';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.ISLOWRISK is
'是否低风险业务';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.LOWOPTKIND is
'低风险业务类别';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.ISCYCLE is
'是否可循环贷款';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.ISDISRATE is
'是否贴息贷款';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.DISENDDATE is
'贴息截止日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.DISRATE is
'贴息率';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.LOANDATE is
'借款日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.ENDDATE is
'到期日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.ABISDATE is
'会计入账日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.EXFLAG is
'展期/约期标志';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.EXTENDDATE is
'展期到期日';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.AGREEDATE is
'约期到期日';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.REPAYWAY is
'还款方式';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.CURRKIND is
'币种';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.LOANSUM is
'借款金额';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.REST is
'凭证余额';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.IINTREST is
'表内欠息';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.OINTREST is
'表外欠息';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.CANCELSUM is
'累计核销本金';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.CANCELINT is
'累计核销利息';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.DEBTSUM is
'累计抵债本金';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.DEBTINT is
'累计抵债利息';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.DEBTFLAG is
'以资抵债标志';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.RISKKIND is
'风险分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.INGRADEKIND is
'内部评级分类';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.FIRSTVCHNO is
'首笔凭证编号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.FIRSTVCHDATE is
'首笔凭证发放日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.ABISBANKNO is
'ABIS行号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.ABISOPTKIND is
'ABIS业务品种';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.LOANACC is
'贷款账号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.REPAYKIND is
'还款类型';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.ISLESSSUM is
'是否自动扣收本金';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.HEADSUM is
'自动扣收本金起点金额';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.RECVACC is
'收款账号';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.REPAYACC1 is
'还款账号1';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.REPAYACC2 is
'还款账号2';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.RLTAPPVKIND is
'关联审批事项';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.SUEHINTDATE is
'诉讼时效提示日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.WFSTA is
'放款流程状态标志';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.LOANVCHSTA is
'凭证状态';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.DELFLAG is
'删除标志';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.LENDINST is
'放款机构编码';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.ADMMGR is
'客户经理代码';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.OPRINST is
'操作机构编码';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.OPRID is
'操作员代码';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.ACCDATE is
'首次操作日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.ACCTIME is
'首次操作时间';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.OPDATE is
'操作日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.OPTIME is
'操作时间';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.SOURCE is
'数据来源';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_MID_C3_EULOANVCH_D_TMP.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MID_C3_EUREPAYPLAN                                 */
/*==============================================================*/
create table TEST1.LN_MID_C3_EUREPAYPLAN 
(
   VCHNO                VARCHAR2(16)         not null,
   PLANNO               NUMBER(6),
   CLICODE              VARCHAR2(16),
   CURRKIND             VARCHAR2(2),
   INTSUM               NUMBER(18,2),
   PRIN                 NUMBER(18,2),
   NOPAYINT             NUMBER(18,2),
   PENINT               NUMBER(18,2),
   DISOBEYSUM           NUMBER(18,2),
   LOANREST             NUMBER(18,2),
   BEGINDATE            VARCHAR2(8),
   LOANTERM             NUMBER(6),
   ENDDATE              VARCHAR2(8),
   REPAYWAY             VARCHAR2(2),
   BASERATE             NUMBER(8,5),
   EXPRATE              NUMBER(8,5),
   PECULATERATE         NUMBER(8,5),
   FLOATRATE            NUMBER(8,5),
   EXECRATE             NUMBER(8,5),
   PERREPAYDAY          VARCHAR2(2),
   FIRSTREPAYDATE       VARCHAR2(8),
   DIVREPAYFLAG         VARCHAR2(2),
   EXECDATE             VARCHAR2(8),
   APPVNAME             VARCHAR2(26),
   PLANSTA              CHAR,
   ADJCYCLE             NUMBER(6),
   ADJSUM               NUMBER(18,2),
   ADJRATE              NUMBER(18,2),
   DISOBEYRATE          NUMBER(18,2),
   CLICODEDEPACC        VARCHAR2(20),
   TOTISSUENUM          NUMBER(6),
   EXECISSUENUM         NUMBER(6),
   REMARK               VARCHAR2(250),
   ACCINST              VARCHAR2(12),
   OPRINST              VARCHAR2(12),
   OPRID                VARCHAR2(20),
   OPDATE               VARCHAR2(8),
   OPTIME               VARCHAR2(6),
   constraint SYS_C0071878 primary key (VCHNO)
);

comment on table TEST1.LN_MID_C3_EUREPAYPLAN is
'凭证还款计划';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.VCHNO is
'借款凭证编号';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.PLANNO is
'还款计划编号';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.CLICODE is
'借款人代码';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.CURRKIND is
'币种';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.INTSUM is
'计息金额';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.PRIN is
'其中：本金';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.NOPAYINT is
'其中：应付未付利息';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.PENINT is
'其中：加罚息';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.DISOBEYSUM is
'其中：违约金';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.LOANREST is
'贷款余额';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.BEGINDATE is
'起始日期';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.LOANTERM is
'借款期限';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.ENDDATE is
'终止日期';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.REPAYWAY is
'还款方式';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.BASERATE is
'基准利率(年)';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.EXPRATE is
'逾期利率(日)';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.PECULATERATE is
'违约利率(日)';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.FLOATRATE is
'利率浮动幅度';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.EXECRATE is
'执行利率(年)';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.PERREPAYDAY is
'每期还款日';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.FIRSTREPAYDATE is
'首期还款日期';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.DIVREPAYFLAG is
'分期还款周期标志';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.EXECDATE is
'还款计划执行日期';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.APPVNAME is
'批准人';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.PLANSTA is
'还款计划状态';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.ADJCYCLE is
'还款调整周期';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.ADJSUM is
'调整金额';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.ADJRATE is
'调整比率';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.DISOBEYRATE is
'违约金比率';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.CLICODEDEPACC is
'存款帐号';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.TOTISSUENUM is
'计划还款总期数';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.EXECISSUENUM is
'已执行还款期数';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.REMARK is
'备注';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.ACCINST is
'放款机构编码';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.OPRINST is
'操作机构编码';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.OPRID is
'操作员代码';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.OPDATE is
'操作日期';

comment on column TEST1.LN_MID_C3_EUREPAYPLAN.OPTIME is
'操作时间';

/*==============================================================*/
/* Table: LN_MID_C3_MAP                                         */
/*==============================================================*/
create table TEST1.LN_MID_C3_MAP 
(
   LOAN_APPLY_NO        VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(16),
   ENT_NAME             VARCHAR2(90),
   STATUS               VARCHAR2(2),
   REQU_NO              VARCHAR2(17),
   CONT_NO              VARCHAR2(18),
   VCH_NO               VARCHAR2(16),
   BOEING_VCH_NO        VARCHAR2(20),
   SUCC_FLAG            CHAR,
   EXCEPTION_REASON     VARCHAR2(900),
   constraint SYS_C0072013 primary key (LOAN_APPLY_NO)
);

comment on table TEST1.LN_MID_C3_MAP is
'贷款审批结果表';

comment on column TEST1.LN_MID_C3_MAP.LOAN_APPLY_NO is
'贷款申请编号';

comment on column TEST1.LN_MID_C3_MAP.ENT_NO is
'客户ID';

comment on column TEST1.LN_MID_C3_MAP.CIF_ID is
'CIF客户代码';

comment on column TEST1.LN_MID_C3_MAP.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MID_C3_MAP.STATUS is
'状态';

comment on column TEST1.LN_MID_C3_MAP.REQU_NO is
'C3申请书编号';

comment on column TEST1.LN_MID_C3_MAP.CONT_NO is
'C3合同编号';

comment on column TEST1.LN_MID_C3_MAP.VCH_NO is
'C3凭证编号';

comment on column TEST1.LN_MID_C3_MAP.BOEING_VCH_NO is
'BOEING凭证合约号';

comment on column TEST1.LN_MID_C3_MAP.SUCC_FLAG is
'成功标志';

comment on column TEST1.LN_MID_C3_MAP.EXCEPTION_REASON is
'异常原因';

/*==============================================================*/
/* Table: LN_MID_CUST_LOAN_APPLY_INFO                           */
/*==============================================================*/
create table TEST1.LN_MID_CUST_LOAN_APPLY_INFO 
(
   LOAN_APPLY_NO        VARCHAR2(32)         not null,
   ACT_ID               VARCHAR2(16),
   STATUS               VARCHAR2(16),
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(16),
   ENT_NAME             VARCHAR2(90),
   LOAN_NO              VARCHAR2(32),
   LOAN_NAME            VARCHAR2(90),
   TITLE                VARCHAR2(256),
   EXPECT_LOAN_SUM      NUMBER(20,2),
   EXPECT_RATE          NUMBER(8,5),
   EXPECT_BEGIN_RATE    NUMBER(8,5),
   EXPECT_END_RATE      NUMBER(8,5),
   LOAN_TERM            NUMBER(6),
   TERM_CODE            VARCHAR2(2),
   REPAY_WAY            VARCHAR2(2),
   DIV_REPAY_FLAG       VARCHAR2(2),
   LOAN_USE             VARCHAR2(90),
   RECV_ACC             VARCHAR2(20),
   REPAY_ACC            VARCHAR2(20),
   ADMMGR_ID            VARCHAR2(20),
   ADMMGR_NAME          VARCHAR2(90),
   ADMMGR_INST_ID       VARCHAR2(20),
   ADMMGR_INST_NAME     VARCHAR2(90),
   OPR_ID               VARCHAR2(32),
   OPR_NAME             VARCHAR2(90),
   OP_DATE              VARCHAR2(17),
   RVR_ID               VARCHAR2(32),
   RVR_NAME             VARCHAR2(90),
   RV_DATE              VARCHAR2(17),
   RV_STATUS            VARCHAR2(17),
   BUSI_GROUP_CODE      VARCHAR2(32),
   BUSI_GROUP_NAME      VARCHAR2(90),
   SD_FLAG              VARCHAR2(6),
   constraint SYS_C0072001 primary key (LOAN_APPLY_NO)
);

comment on table TEST1.LN_MID_CUST_LOAN_APPLY_INFO is
'贷款申请信息表';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.LOAN_APPLY_NO is
'贷款申请编号';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.ACT_ID is
'环节';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.STATUS is
'状态';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.ENT_NO is
'客户ID(互联网银行)';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.CIF_ID is
'CIF客户代码';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.LOAN_NO is
'产品代码';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.LOAN_NAME is
'产品名称';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.TITLE is
'标题';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.EXPECT_LOAN_SUM is
'申请金额';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.EXPECT_RATE is
'申请利率';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.EXPECT_BEGIN_RATE is
'申请起始利率';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.EXPECT_END_RATE is
'申请截止利率';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.LOAN_TERM is
'期限';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.TERM_CODE is
'期限表达方式';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.REPAY_WAY is
'还款方式';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.DIV_REPAY_FLAG is
'分期还款周期标志';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.LOAN_USE is
'贷款用途';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.RECV_ACC is
'收款账号';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.REPAY_ACC is
'还款账号';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.ADMMGR_ID is
'客户经理代码';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.ADMMGR_NAME is
'客户经理名称';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.ADMMGR_INST_ID is
'客户经理机构代码';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.ADMMGR_INST_NAME is
'客户经理机构名称';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.OPR_ID is
'操作员代码(公司操作员)';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.OPR_NAME is
'操作员名称';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.OP_DATE is
'操作日期';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.RVR_ID is
'复核操作员代码(公司操作员)';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.RVR_NAME is
'复核操作员名称';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.RV_DATE is
'复核日期';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.RV_STATUS is
'复核状态码';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.BUSI_GROUP_CODE is
'商圈代码';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_INFO.SD_FLAG is
'上下游标识';

/*==============================================================*/
/* Table: LN_MID_CUST_LOAN_APPLY_RATE                           */
/*==============================================================*/
create table TEST1.LN_MID_CUST_LOAN_APPLY_RATE 
(
   LOAN_APPLY_NO        VARCHAR2(32)         not null,
   RATEORD              NUMBER(6)            not null,
   RATEKIND             VARCHAR2(2),
   BASERATE             NUMBER(8,5),
   FLOATWAY             CHAR,
   EXECRATEKIND         VARCHAR2(2),
   ADJRATEFLAG          VARCHAR2(2),
   LOANINTCODE          VARCHAR2(8),
   FLOATRANGE           NUMBER(8,5),
   PECULATERATE         NUMBER(8,5),
   ISRECVBEFNOREPAY     CHAR,
   BEFNOREPAYRATE       NUMBER(8,5),
   RECVBRFORMCOD        VARCHAR2(2),
   ISEXPUP              CHAR,
   OVERINTBEGDATE       VARCHAR2(8),
   EXPUPKIND            VARCHAR2(2),
   EXPUPFLOAT           CHAR,
   EXPUPRANGE           NUMBER(8,5),
   OVERINTCOD           VARCHAR2(8),
   ISPECUP              CHAR,
   PECUPFLOAT           CHAR,
   PECUPRANGE           NUMBER(8,5),
   INTTERM              VARCHAR2(2),
   PROINTDATE           VARCHAR2(2),
   INTPAYWAY            CHAR,
   ISMIXRATE            CHAR,
   INTBEGDATE           VARCHAR2(8),
   INTCHGDATE           VARCHAR2(8),
   PRICEFLOATRANGE      NUMBER(8,5),
   PRICERATE            NUMBER(8,5),
   PRICETYPE            VARCHAR2(2),
   ISINSURED            CHAR,
   INSURENO             VARCHAR2(32),
   INSDISCOUNT          NUMBER(8,5),
   ACCDATE              VARCHAR2(17),
   OPDATE               VARCHAR2(17),
   constraint SYS_C0072002 primary key (LOAN_APPLY_NO, RATEORD)
);

comment on table TEST1.LN_MID_CUST_LOAN_APPLY_RATE is
'贷款申请利率表';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.LOAN_APPLY_NO is
'贷款申请编号';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.RATEORD is
'混合利率阶段序号';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.RATEKIND is
'基础利率类别';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.BASERATE is
'基准利率';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.FLOATWAY is
'利率浮动方式';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.EXECRATEKIND is
'执行利率类别';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.ADJRATEFLAG is
'利率浮动周期标志';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.LOANINTCODE is
'贷款利率代码';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.FLOATRANGE is
'利率浮动幅度（最终）';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.PECULATERATE is
'挤占挪用贷款利率';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.ISRECVBEFNOREPAY is
'是否约定计收提前还款违约金';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.BEFNOREPAYRATE is
'提前还款违约金比率';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.RECVBRFORMCOD is
'违约金计收公式代码';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.ISEXPUP is
'是否指定逾期利率';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.OVERINTBEGDATE is
'逾期计息起始日';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.EXPUPKIND is
'逾期利率类别';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.EXPUPFLOAT is
'逾期利率浮动方式';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.EXPUPRANGE is
'逾期利率浮动幅度';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.OVERINTCOD is
'逾期利率代码';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.ISPECUP is
'是否指定违约罚息利率';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.PECUPFLOAT is
'违约罚息利率浮动方式';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.PECUPRANGE is
'违约罚息利率浮动幅度';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.INTTERM is
'结息周期';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.PROINTDATE is
'定期结息日';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.INTPAYWAY is
'利息扣收方式';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.ISMIXRATE is
'是否混合利率';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.INTBEGDATE is
'混合利率起始日期';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.INTCHGDATE is
'混合利率转换日期';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.PRICEFLOATRANGE is
'定价结果利率浮动幅度';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.PRICERATE is
'定价结果利率';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.PRICETYPE is
'价格类型';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.ISINSURED is
'是否购买保险';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.INSURENO is
'保单号';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.INSDISCOUNT is
'保险优惠幅度';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.ACCDATE is
'首次操作日期';

comment on column TEST1.LN_MID_CUST_LOAN_APPLY_RATE.OPDATE is
'操作日期';

/*==============================================================*/
/* Table: LN_MID_CUST_LOAN_AUTO_APPV_RST                        */
/*==============================================================*/
create table TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST 
(
   LOAN_APPLY_NO        VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_NO               VARCHAR2(16),
   ENT_NAME             VARCHAR2(90),
   STATUS               VARCHAR2(16),
   EXCEPTION_REASON     VARCHAR2(675),
   ENT_CREDIT_CHECK_RESULT CHAR,
   ENT_CREDIT_CHECK_FAIL_REASON VARCHAR2(675),
   ENT_CREDIT_CHECK_DATE VARCHAR2(17),
   REP_CREDIT_CHECK_RESULT CHAR,
   REP_CHECK_FAIL_REASON VARCHAR2(675),
   REP_CREDIT_CHECK_DATE VARCHAR2(17),
   ASSESS_TYPE          CHAR,
   ASSESS_SCORE         NUMBER(20,2),
   ASSESS_LEVEL         VARCHAR2(32),
   ASSESS_CHECK_RESULT  CHAR,
   ASSESS_CHECK_FAIL_REASON VARCHAR2(675),
   ASSESS_CHECK_DATE    VARCHAR2(17),
   LIMIT_OPTKIND        VARCHAR2(5),
   LIMIT_DATE           VARCHAR2(17),
   POOL_LIMIT           NUMBER(20,2),
   UNUSED_LIMIT         NUMBER(20,2),
   BUSI_GROUP_CODE      VARCHAR2(32),
   SD_FLAG              VARCHAR2(6),
   CORE_ENT_CIF_ID      VARCHAR2(16),
   BUSI_GROUP_UNUSED_LIMIT NUMBER(20,2),
   APPV_LOAN_SUM        NUMBER(20,2),
   LIMIT_CHECK_RESULT   CHAR,
   LIMIT_CHECK_RESULT_FAIL_REASON VARCHAR2(675),
   PRICE_CHECK_RESULT   CHAR,
   PRICE_CHECK_FAIL_REASON VARCHAR2(675),
   PRICE_CHECK_DATE     VARCHAR2(17),
   OVERDAY_CHECK_RESULT CHAR,
   OVERDAY_CHECK_FAIL_REASON VARCHAR2(675),
   OVERDAY_CHECK_DATE   VARCHAR2(17),
   AUTO_APPV_RESULT     CHAR,
   ACC_DATE             VARCHAR2(17),
   OP_DATE              VARCHAR2(17),
   constraint SYS_C0072007 primary key (LOAN_APPLY_NO)
);

comment on table TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST is
'自动审批结果表';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.LOAN_APPLY_NO is
'贷款申请编号';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.ENT_NO is
'客户ID';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.CIF_NO is
'CIF客户代码';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.STATUS is
'状态';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.EXCEPTION_REASON is
'异常原因';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.ENT_CREDIT_CHECK_RESULT is
'企业征信校验结果';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.ENT_CREDIT_CHECK_FAIL_REASON is
'企业征信校验不通过原因';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.ENT_CREDIT_CHECK_DATE is
'企业征信校验时间';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.REP_CREDIT_CHECK_RESULT is
'法定代表人征信校验结果';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.REP_CHECK_FAIL_REASON is
'法定代表人征信校验不通过原因';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.REP_CREDIT_CHECK_DATE is
'法定代表人征信校验操作时间';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.ASSESS_TYPE is
'评价类型';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.ASSESS_SCORE is
'评价分数';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.ASSESS_LEVEL is
'评价级别';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.ASSESS_CHECK_RESULT is
'评价校验结果';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.ASSESS_CHECK_FAIL_REASON is
'评价校验不通过原因';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.ASSESS_CHECK_DATE is
'评价校验操作时间';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.LIMIT_OPTKIND is
'授信业务品种';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.LIMIT_DATE is
'授信登记日期';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.POOL_LIMIT is
'池资产授信额度';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.UNUSED_LIMIT is
'可用额度';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.BUSI_GROUP_CODE is
'商圈代码';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.SD_FLAG is
'上下游标志';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.CORE_ENT_CIF_ID is
'核心企业CIF客户ID';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.BUSI_GROUP_UNUSED_LIMIT is
'商圈可用额度';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.APPV_LOAN_SUM is
'审批金额';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.LIMIT_CHECK_RESULT is
'授信校验结果';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.LIMIT_CHECK_RESULT_FAIL_REASON is
'授信额度校验失败原因';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.PRICE_CHECK_RESULT is
'定价校验结果';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.PRICE_CHECK_FAIL_REASON is
'定价校验结果不通过原因';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.PRICE_CHECK_DATE is
'定价校验时间';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.OVERDAY_CHECK_RESULT is
'逾期校验结果';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.OVERDAY_CHECK_FAIL_REASON is
'逾期校验结果不通过原因';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.OVERDAY_CHECK_DATE is
'逾期校验时间';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.AUTO_APPV_RESULT is
'自动审批结果';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.ACC_DATE is
'首次操作时间';

comment on column TEST1.LN_MID_CUST_LOAN_AUTO_APPV_RST.OP_DATE is
'操作时间';

/*==============================================================*/
/* Table: LN_MID_CUST_LOAN_MANU_APPV_RST                        */
/*==============================================================*/
create table TEST1.LN_MID_CUST_LOAN_MANU_APPV_RST 
(
   LOAN_APPLY_NO        VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_NO               VARCHAR2(16),
   ENT_NAME             VARCHAR2(90),
   STATUS               VARCHAR2(16),
   APPV_MANAGER_NO      VARCHAR2(18),
   APPV_MANAGER_NAME    VARCHAR2(90),
   APPV_ORG_NO          VARCHAR2(12),
   APPV_ORG_NAME        VARCHAR2(90),
   MANU_APPV_ADV        VARCHAR2(2),
   MANU_APPV_ADV_INFO   VARCHAR2(4000),
   MANU_APPV_DATE       VARCHAR2(17),
   constraint SYS_C0072008 primary key (LOAN_APPLY_NO)
);

comment on table TEST1.LN_MID_CUST_LOAN_MANU_APPV_RST is
'贷款人工审批结果表';

comment on column TEST1.LN_MID_CUST_LOAN_MANU_APPV_RST.LOAN_APPLY_NO is
'贷款申请编号';

comment on column TEST1.LN_MID_CUST_LOAN_MANU_APPV_RST.ENT_NO is
'客户ID';

comment on column TEST1.LN_MID_CUST_LOAN_MANU_APPV_RST.CIF_NO is
'CIF客户代码';

comment on column TEST1.LN_MID_CUST_LOAN_MANU_APPV_RST.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MID_CUST_LOAN_MANU_APPV_RST.STATUS is
'状态';

comment on column TEST1.LN_MID_CUST_LOAN_MANU_APPV_RST.APPV_MANAGER_NO is
'审批人代码';

comment on column TEST1.LN_MID_CUST_LOAN_MANU_APPV_RST.APPV_MANAGER_NAME is
'审批人名称';

comment on column TEST1.LN_MID_CUST_LOAN_MANU_APPV_RST.APPV_ORG_NO is
'审批机构代码';

comment on column TEST1.LN_MID_CUST_LOAN_MANU_APPV_RST.APPV_ORG_NAME is
'审批机构名称';

comment on column TEST1.LN_MID_CUST_LOAN_MANU_APPV_RST.MANU_APPV_ADV is
'人工审批意见';

comment on column TEST1.LN_MID_CUST_LOAN_MANU_APPV_RST.MANU_APPV_ADV_INFO is
'人工审批意见说明';

comment on column TEST1.LN_MID_CUST_LOAN_MANU_APPV_RST.MANU_APPV_DATE is
'操作时间';

/*==============================================================*/
/* Table: LN_MID_CUST_LOAN_PRICE_RESULT                         */
/*==============================================================*/
create table TEST1.LN_MID_CUST_LOAN_PRICE_RESULT 
(
   LOAN_APPLY_NO        VARCHAR2(32)         not null,
   REQU_NO              VARCHAR2(17),
   ENT_NO               VARCHAR2(32)         not null,
   ENT_NAME             VARCHAR2(90),
   CIF_ID               VARCHAR2(16),
   LOAN_NO              VARCHAR2(32),
   LOAN_NAME            VARCHAR2(90),
   CALC_NO              VARCHAR2(10)         not null,
   CALC_TYPE            CHAR,
   CALC_STATUS          VARCHAR2(8),
   CALC_DATE            VARCHAR2(8),
   CALC_MKT_DRCT_RATE   NUMBER(30,6),
   CALC_MKT_DRCT_FLOAT_INTERVAL NUMBER(30,6),
   CALC_COST_RATE       NUMBER(30,6),
   CALC_COST_FLOAT_INTERVAL NUMBER(30,6),
   CALC_FLOOR_RATE      NUMBER(30,6),
   CALC_FLOOR_FLOAT_INTERVAL NUMBER(30,6),
   EXEC_RATE            NUMBER(30,6),
   APPLY_ORG_NO         VARCHAR2(12),
   HEAD_FLAG            CHAR,
   CURR_TYPE            VARCHAR2(10),
   INDU_GB_TYPE         VARCHAR2(5),
   ENT_SCALE            VARCHAR2(2),
   CREDIT_LEVEL         VARCHAR2(2),
   CUST_DEP_AVG_FTP_YIELD NUMBER(18,6),
   CUST_DEP_AVG_PI_RATE NUMBER(18,6),
   AGENCY_EXP_INCOME_DELTA NUMBER(30,6),
   CUST_DEP_AVG_DAY_DELTA NUMBER(30,6),
   CUST_NEW_FLAG        CHAR,
   BZ_TYPE              VARCHAR2(5),
   LOAN_ORG_TYPE        CHAR,
   LOAN_AMT             NUMBER(20,2),
   LOAN_TERM            NUMBER(6),
   BASE_RATE            NUMBER(18,6),
   REPAY_TYPE           VARCHAR2(2),
   APPLY_RATE           NUMBER(18,6),
   REPRICE_CIRCLE       VARCHAR2(2),
   INTEREST_CALC_CIRCLE VARCHAR2(2),
   SUBJECT_NO           VARCHAR2(50),
   EXP_LOST_RATE        NUMBER(30,6),
   ECO_CAPITAL_COEF     NUMBER(30,6),
   OP_DATE              VARCHAR2(17),
   constraint SYS_C0072006 primary key (LOAN_APPLY_NO)
);

comment on table TEST1.LN_MID_CUST_LOAN_PRICE_RESULT is
'定价结果表';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.LOAN_APPLY_NO is
'贷款申请编号';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.REQU_NO is
'C3申请书编号';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.CIF_ID is
'CIF客户代码';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.LOAN_NO is
'产品代码';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.LOAN_NAME is
'产品名称';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.CALC_NO is
'测算编号';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.CALC_TYPE is
'测算类型(试算、测算)';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.CALC_STATUS is
'测算状态码';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.CALC_DATE is
'测算日期';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.CALC_MKT_DRCT_RATE is
'测定利率（市场指导价）';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.CALC_MKT_DRCT_FLOAT_INTERVAL is
'测定浮动幅度（市场指导价）';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.CALC_COST_RATE is
'测定利率（保本价）';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.CALC_COST_FLOAT_INTERVAL is
'测定浮动幅度（保本价）';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.CALC_FLOOR_RATE is
'测定利率（底线价）';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.CALC_FLOOR_FLOAT_INTERVAL is
'测定浮动幅度（底线价）';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.EXEC_RATE is
'最终执行利率';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.APPLY_ORG_NO is
'申报行机构代码';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.HEAD_FLAG is
'总分行模型标志';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.CURR_TYPE is
'币种';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.INDU_GB_TYPE is
'国标分类';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.ENT_SCALE is
'企业规模';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.CREDIT_LEVEL is
'信用等级';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.CUST_DEP_AVG_FTP_YIELD is
'客户存款平均FTP收益率';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.CUST_DEP_AVG_PI_RATE is
'客户存款平均付息率';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.AGENCY_EXP_INCOME_DELTA is
'中间业务收入预计增量';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.CUST_DEP_AVG_DAY_DELTA is
'客户日均存款预计增量';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.CUST_NEW_FLAG is
'新老客户标识';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.BZ_TYPE is
'业务品种';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.LOAN_ORG_TYPE is
'贷款组织形式（银团标志）';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.LOAN_AMT is
'本笔贷款金额';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.LOAN_TERM is
'贷款期限（月）';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.BASE_RATE is
'基准利率（%）';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.REPAY_TYPE is
'还款方式';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.APPLY_RATE is
'申请利率（%）';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.REPRICE_CIRCLE is
'再定价周期';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.INTEREST_CALC_CIRCLE is
'结息周期';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.SUBJECT_NO is
'入账科目';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.EXP_LOST_RATE is
'预期损失率（EL）';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.ECO_CAPITAL_COEF is
'经济资本系数';

comment on column TEST1.LN_MID_CUST_LOAN_PRICE_RESULT.OP_DATE is
'操作日期';

/*==============================================================*/
/* Table: LN_MID_ENT_CONTRL_CREDIT_RPT                          */
/*==============================================================*/
create table TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT 
(
   LOAN_APPLY_NO        VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(16),
   ENT_NAME             VARCHAR2(90),
   REP_CERTTYPE         VARCHAR2(6),
   REP_CERTNO           VARCHAR2(20),
   REP_NAME             VARCHAR2(90),
   REP_DEGREE           VARCHAR2(8),
   REP_EDULEVER         VARCHAR2(8),
   REP_MARRYSTA         VARCHAR2(8),
   FELLBACK_DEBT_SUM_COUNT NUMBER(6),
   FELLBACK_DEBT_SUM_BALANCE NUMBER(20,2),
   ASSET_DISPOSITION_SUM_COUNT NUMBER(6),
   ASSET_DISPOSITION_SUM_BALANCE NUMBER(20,2),
   ASSUREER_REPAY_SUM_COUNT NUMBER(6),
   ASSUREER_REPAY_SUM_BALANCE NUMBER(20,2),
   LOAN_CURR_OVERDUE_SUM_CYC NUMBER(6),
   LOAN_CURR_OVERDUE_SUM_AMOUNT NUMBER(20,2),
   LOANCARD_CURR_OVERDUE_SUM_CYC NUMBER(6),
   LOANCARD_CURR_OVERDUE_SUM_AMT NUMBER(20,2),
   LOANCARD_G_NUMBER    NUMBER(6),
   LM24_LOAN_OVERDUE_CYC NUMBER(6),
   LM24_LOAN_OVERDUE_SUM_CYC NUMBER(6),
   LM24_LOANCARD_OVERDUE_CYC NUMBER(6),
   LM24_LOANCARD_OVERDUE_SUM_CYC NUMBER(6),
   LM24_STDLNCARD_OVERDUE_CYC NUMBER(6),
   LM24_STDLNCARD_OVERDUE_SUM_CYC NUMBER(6),
   GUANANTEE_COUNT      NUMBER(6),
   GUANANTEE_MONEY_SUM  NUMBER(20,2),
   GUARANTEE_BALANCE_SUM NUMBER(20,2),
   PERSONDATE_CALENDAR  VARCHAR2(8),
   CARDDATE_CALENDAR    VARCHAR2(8),
   LAST_MONTH_QUERY_TIME NUMBER(6),
   REPORT_DATE          VARCHAR2(17),
   QUERY_DATE           VARCHAR2(17),
   constraint SYS_C0072004 primary key (LOAN_APPLY_NO)
);

comment on table TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT is
'企业法定代表人征信信息表';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.LOAN_APPLY_NO is
'贷款申请编号';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.ENT_NO is
'客户ID';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.CIF_ID is
'CIF客户代码';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.REP_CERTTYPE is
'法定代表人证件类型';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.REP_CERTNO is
'法定代表人证件号码';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.REP_NAME is
'法定代表人姓名';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.REP_DEGREE is
'法定代表人学位';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.REP_EDULEVER is
'法定代表人学历';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.REP_MARRYSTA is
'法定代表人婚姻状态';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.FELLBACK_DEBT_SUM_COUNT is
'呆账信息汇总笔数';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.FELLBACK_DEBT_SUM_BALANCE is
'呆账信息汇总余额';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.ASSET_DISPOSITION_SUM_COUNT is
'资产处置信息汇总笔数';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.ASSET_DISPOSITION_SUM_BALANCE is
'资产处置信息汇总余额';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.ASSUREER_REPAY_SUM_COUNT is
'保证人代偿信息汇总笔数';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.ASSUREER_REPAY_SUM_BALANCE is
'保证人代偿信息汇总余额';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.LOAN_CURR_OVERDUE_SUM_CYC is
'贷款当期逾期期数总计';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.LOAN_CURR_OVERDUE_SUM_AMOUNT is
'贷款当期逾期金额总计';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.LOANCARD_CURR_OVERDUE_SUM_CYC is
'贷记卡当期逾期期数总计';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.LOANCARD_CURR_OVERDUE_SUM_AMT is
'贷记卡当期逾期金额总计';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.LOANCARD_G_NUMBER is
'贷记卡结清以外终止账户数';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.LM24_LOAN_OVERDUE_CYC is
'最近24个月贷款最高逾期期数';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.LM24_LOAN_OVERDUE_SUM_CYC is
'最近24个月贷款累计逾期期数';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.LM24_LOANCARD_OVERDUE_CYC is
'最近24个月贷记卡最高逾期期数';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.LM24_LOANCARD_OVERDUE_SUM_CYC is
'最近24个月贷记卡累计逾期期数';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.LM24_STDLNCARD_OVERDUE_CYC is
'最近24个月准贷记卡最高逾期期数';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.LM24_STDLNCARD_OVERDUE_SUM_CYC is
'最近24个月准贷记卡累计逾期期数';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.GUANANTEE_COUNT is
'对外担保笔数';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.GUANANTEE_MONEY_SUM is
'对外担保金额总计';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.GUARANTEE_BALANCE_SUM is
'对外担保本金余额总计';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.PERSONDATE_CALENDAR is
'信用史（个贷）';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.CARDDATE_CALENDAR is
'信用史（卡）';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.LAST_MONTH_QUERY_TIME is
'最近一月查询次数';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.REPORT_DATE is
'人行报告日期';

comment on column TEST1.LN_MID_ENT_CONTRL_CREDIT_RPT.QUERY_DATE is
'查询日期';

/*==============================================================*/
/* Table: LN_MID_ENT_CREDIT_RPT                                 */
/*==============================================================*/
create table TEST1.LN_MID_ENT_CREDIT_RPT 
(
   LOAN_APPLY_NO        VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(16),
   ENT_NAME             VARCHAR2(90),
   ORG_CODE             VARCHAR2(16),
   CARD_NO              VARCHAR2(16),
   CARD_PWD             VARCHAR2(6),
   CARD_DATE            VARCHAR2(8),
   CARD_STA             CHAR,
   DEBTSDAMF_NUMBER     NUMBER(6),
   DEBTSDAMF_BALANCE    NUMBER(20,2),
   LAST_DISPOSALED_DATE VARCHAR2(8),
   OWE_BALANCE_SUM_NUMBER NUMBER(6),
   OWE_BALANCE_SUM_BALANCE NUMBER(20,2),
   PAIDBACK_BALANCE_SUM_NUMBER NUMBER(6),
   PAIDBACK_BALANCE_SUM_BALANCE NUMBER(20,2),
   NORMAL_SUM_NUMBER    NUMBER(6),
   NORMAL_SUM_BALANCE   NUMBER(20,2),
   CONCERNED_SUM_NUMBER NUMBER(6),
   CONCERNED_SUM_BALANCE NUMBER(20,2),
   BAD_SUM_NUMBER       NUMBER(6),
   BAD_SUM_BALANCE      NUMBER(20,2),
   SUM_TOTAL_NUMBER     NUMBER(6),
   SUM_TOTAL_BALANCE    NUMBER(20,2),
   LOAN_BAD_SUM_NUMBER  NUMBER(6),
   LOAN_NORMAL_SUM_AMOUNT NUMBER(6),
   FINAN_BAD_SUM_NUMBER NUMBER(6),
   FINAN_NORMAL_SUM_AMOUNT NUMBER(6),
   BILL_BAD_SUM_NUMBER  NUMBER(6),
   BILL_NORMAL_SUM_AMOUNT NUMBER(6),
   ASSUREE_BAD_SUM_NUMBER NUMBER(6),
   ASSUREE_NORMAL_SUM_AMOUNT NUMBER(6),
   POSTAL_BAD_SUM_NUMBER NUMBER(6),
   POSTAL_NORMAL_SUM_AMOUNT NUMBER(6),
   LETTER_BAD_SUM_NUMBER NUMBER(6),
   LETTER_NORMAL_SUM_AMOUNT NUMBER(6),
   GUARANTE_BADSUM_NUMBER NUMBER(6),
   GUARANTE_NORMALSUM_AMOUNT NUMBER(6),
   CURR_CREDIT_FLAG     CHAR,
   HIS_CREDIT_FLAG      CHAR,
   REPORT_DATE          VARCHAR2(8),
   QUERY_DATE           VARCHAR2(17),
   constraint SYS_C0072003 primary key (LOAN_APPLY_NO)
);

comment on table TEST1.LN_MID_ENT_CREDIT_RPT is
'企业征信信息表';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.LOAN_APPLY_NO is
'贷款申请编号';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.ENT_NO is
'客户ID';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.CIF_ID is
'CIF客户代码';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.ORG_CODE is
'组织机构代码';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.CARD_NO is
'贷款卡卡号';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.CARD_PWD is
'贷款卡密码';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.CARD_DATE is
'贷款卡有效期';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.CARD_STA is
'贷款卡状态';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.DEBTSDAMF_NUMBER is
'由资产管理公司处置的债务笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.DEBTSDAMF_BALANCE is
'由资产管理公司处置的债务余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.LAST_DISPOSALED_DATE is
'最近一次处置完成日期(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.OWE_BALANCE_SUM_NUMBER is
'欠息汇总笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.OWE_BALANCE_SUM_BALANCE is
'欠息汇总余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.PAIDBACK_BALANCE_SUM_NUMBER is
'垫款汇总笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.PAIDBACK_BALANCE_SUM_BALANCE is
'垫款汇总余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.NORMAL_SUM_NUMBER is
'正常类汇总笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.NORMAL_SUM_BALANCE is
'正常类汇总余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.CONCERNED_SUM_NUMBER is
'关注类汇总笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.CONCERNED_SUM_BALANCE is
'关注类汇总余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.BAD_SUM_NUMBER is
'不良类汇总笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.BAD_SUM_BALANCE is
'不良类汇总余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.SUM_TOTAL_NUMBER is
'未结清合计笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.SUM_TOTAL_BALANCE is
'未结清合计余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.LOAN_BAD_SUM_NUMBER is
'贷款不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.LOAN_NORMAL_SUM_AMOUNT is
'贷款正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.FINAN_BAD_SUM_NUMBER is
'贸易融资不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.FINAN_NORMAL_SUM_AMOUNT is
'贸易融资正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.BILL_BAD_SUM_NUMBER is
'票据贴现不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.BILL_NORMAL_SUM_AMOUNT is
'票据贴现正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.ASSUREE_BAD_SUM_NUMBER is
'保理不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.ASSUREE_NORMAL_SUM_AMOUNT is
'保理正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.POSTAL_BAD_SUM_NUMBER is
'银行承兑汇票不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.POSTAL_NORMAL_SUM_AMOUNT is
'银行承兑汇票正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.LETTER_BAD_SUM_NUMBER is
'信用证不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.LETTER_NORMAL_SUM_AMOUNT is
'信用证正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.GUARANTE_BADSUM_NUMBER is
'保函不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.GUARANTE_NORMALSUM_AMOUNT is
'保函正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.CURR_CREDIT_FLAG is
'是否存在未结清信贷(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.HIS_CREDIT_FLAG is
'是否存在已结清信贷(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.REPORT_DATE is
'人行报告日期';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT.QUERY_DATE is
'查询日期';

/*==============================================================*/
/* Table: LN_MID_ENT_CREDIT_RPT_D                               */
/*==============================================================*/
create table TEST1.LN_MID_ENT_CREDIT_RPT_D 
(
   ENT_NO               VARCHAR2(32)         not null,
   CIF_ID               VARCHAR2(16),
   ENT_NAME             VARCHAR2(90),
   REP_CERTTYPE         VARCHAR2(6),
   REP_CERTNO           VARCHAR2(20),
   REP_NAME             VARCHAR2(90),
   ORG_CODE             VARCHAR2(16),
   CARD_NO              VARCHAR2(16),
   CARD_PWD             VARCHAR2(6),
   CARD_DATE            VARCHAR2(8),
   CARD_STA             CHAR,
   DEBTSDAMF_NUMBER     NUMBER(6),
   DEBTSDAMF_BALANCE    NUMBER(20,2),
   LAST_DISPOSALED_DATE VARCHAR2(8),
   OWE_BALANCE_SUM_NUMBER NUMBER(6),
   OWE_BALANCE_SUM_BALANCE NUMBER(20,2),
   PAIDBACK_BALANCE_SUM_NUMBER NUMBER(6),
   PAIDBACK_BALANCE_SUM_BALANCE NUMBER(20,2),
   NORMAL_SUM_NUMBER    NUMBER(6),
   NORMAL_SUM_BALANCE   NUMBER(20,2),
   CONCERNED_SUM_NUMBER NUMBER(6),
   CONCERNED_SUM_BALANCE NUMBER(20,2),
   BAD_SUM_NUMBER       NUMBER(6),
   BAD_SUM_BALANCE      NUMBER(20,2),
   SUM_TOTAL_NUMBER     NUMBER(6),
   SUM_TOTAL_BALANCE    NUMBER(20,2),
   LOAN_BAD_SUM_NUMBER  NUMBER(6),
   LOAN_NORMAL_SUM_AMOUNT NUMBER(6),
   FINAN_BAD_SUM_NUMBER NUMBER(6),
   FINAN_NORMAL_SUM_AMOUNT NUMBER(6),
   BILL_BAD_SUM_NUMBER  NUMBER(6),
   BILL_NORMAL_SUM_AMOUNT NUMBER(6),
   ASSUREE_BAD_SUM_NUMBER NUMBER(6),
   ASSUREE_NORMAL_SUM_AMOUNT NUMBER(6),
   POSTAL_BAD_SUM_NUMBER NUMBER(6),
   POSTAL_NORMAL_SUM_AMOUNT NUMBER(6),
   LETTER_BAD_SUM_NUMBER NUMBER(6),
   LETTER_NORMAL_SUM_AMOUNT NUMBER(6),
   GUARANTE_BADSUM_NUMBER NUMBER(6),
   GUARANTE_NORMALSUM_AMOUNT NUMBER(6),
   CURR_CREDIT_FLAG     CHAR,
   HIS_CREDIT_FLAG      CHAR,
   REPORT_DATE          VARCHAR2(8),
   QUERY_DATE           VARCHAR2(17),
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0072009 primary key (ENT_NO)
);

comment on table TEST1.LN_MID_ENT_CREDIT_RPT_D is
'企业征信信息源表';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.ENT_NO is
'客户ID';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.CIF_ID is
'CIF客户代码';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.REP_CERTTYPE is
'法定代表人证件类型';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.REP_CERTNO is
'法定代表人身份证号码';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.REP_NAME is
'法定代表人姓名';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.ORG_CODE is
'组织机构代码';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.CARD_NO is
'贷款卡卡号';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.CARD_PWD is
'贷款卡密码';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.CARD_DATE is
'贷款卡有效期';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.CARD_STA is
'贷款卡状态';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.DEBTSDAMF_NUMBER is
'由资产管理公司处置的债务笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.DEBTSDAMF_BALANCE is
'由资产管理公司处置的债务余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.LAST_DISPOSALED_DATE is
'最近一次处置完成日期(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.OWE_BALANCE_SUM_NUMBER is
'欠息汇总笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.OWE_BALANCE_SUM_BALANCE is
'欠息汇总余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.PAIDBACK_BALANCE_SUM_NUMBER is
'垫款汇总笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.PAIDBACK_BALANCE_SUM_BALANCE is
'垫款汇总余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.NORMAL_SUM_NUMBER is
'正常类汇总笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.NORMAL_SUM_BALANCE is
'正常类汇总余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.CONCERNED_SUM_NUMBER is
'关注类汇总笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.CONCERNED_SUM_BALANCE is
'关注类汇总余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.BAD_SUM_NUMBER is
'不良类汇总笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.BAD_SUM_BALANCE is
'不良类汇总余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.SUM_TOTAL_NUMBER is
'未结清合计笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.SUM_TOTAL_BALANCE is
'未结清合计余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.LOAN_BAD_SUM_NUMBER is
'贷款不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.LOAN_NORMAL_SUM_AMOUNT is
'贷款正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.FINAN_BAD_SUM_NUMBER is
'贸易融资不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.FINAN_NORMAL_SUM_AMOUNT is
'贸易融资正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.BILL_BAD_SUM_NUMBER is
'票据贴现不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.BILL_NORMAL_SUM_AMOUNT is
'票据贴现正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.ASSUREE_BAD_SUM_NUMBER is
'保理不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.ASSUREE_NORMAL_SUM_AMOUNT is
'保理正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.POSTAL_BAD_SUM_NUMBER is
'银行承兑汇票不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.POSTAL_NORMAL_SUM_AMOUNT is
'银行承兑汇票正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.LETTER_BAD_SUM_NUMBER is
'信用证不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.LETTER_NORMAL_SUM_AMOUNT is
'信用证正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.GUARANTE_BADSUM_NUMBER is
'保函不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.GUARANTE_NORMALSUM_AMOUNT is
'保函正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.CURR_CREDIT_FLAG is
'是否存在未结清信贷(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.HIS_CREDIT_FLAG is
'是否存在已结清信贷(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.REPORT_DATE is
'人行报告日期';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.QUERY_DATE is
'查询日期';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MID_ENT_CREDIT_RPT_D_TMP                           */
/*==============================================================*/
create table TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP 
(
   ENT_NO               VARCHAR2(32)         not null,
   CIF_ID               VARCHAR2(16),
   ENT_NAME             VARCHAR2(90),
   REP_CERTTYPE         VARCHAR2(6),
   REP_CERTNO           VARCHAR2(20),
   REP_NAME             VARCHAR2(90),
   ORG_CODE             VARCHAR2(16),
   CARD_NO              VARCHAR2(16),
   CARD_PWD             VARCHAR2(6),
   CARD_DATE            VARCHAR2(8),
   CARD_STA             CHAR,
   DEBTSDAMF_NUMBER     NUMBER(6),
   DEBTSDAMF_BALANCE    NUMBER(20,2),
   LAST_DISPOSALED_DATE VARCHAR2(8),
   OWE_BALANCE_SUM_NUMBER NUMBER(6),
   OWE_BALANCE_SUM_BALANCE NUMBER(20,2),
   PAIDBACK_BALANCE_SUM_NUMBER NUMBER(6),
   PAIDBACK_BALANCE_SUM_BALANCE NUMBER(20,2),
   NORMAL_SUM_NUMBER    NUMBER(6),
   NORMAL_SUM_BALANCE   NUMBER(20,2),
   CONCERNED_SUM_NUMBER NUMBER(6),
   CONCERNED_SUM_BALANCE NUMBER(20,2),
   BAD_SUM_NUMBER       NUMBER(6),
   BAD_SUM_BALANCE      NUMBER(20,2),
   SUM_TOTAL_NUMBER     NUMBER(6),
   SUM_TOTAL_BALANCE    NUMBER(20,2),
   LOAN_BAD_SUM_NUMBER  NUMBER(6),
   LOAN_NORMAL_SUM_AMOUNT NUMBER(6),
   FINAN_BAD_SUM_NUMBER NUMBER(6),
   FINAN_NORMAL_SUM_AMOUNT NUMBER(6),
   BILL_BAD_SUM_NUMBER  NUMBER(6),
   BILL_NORMAL_SUM_AMOUNT NUMBER(6),
   ASSUREE_BAD_SUM_NUMBER NUMBER(6),
   ASSUREE_NORMAL_SUM_AMOUNT NUMBER(6),
   POSTAL_BAD_SUM_NUMBER NUMBER(6),
   POSTAL_NORMAL_SUM_AMOUNT NUMBER(6),
   LETTER_BAD_SUM_NUMBER NUMBER(6),
   LETTER_NORMAL_SUM_AMOUNT NUMBER(6),
   GUARANTE_BADSUM_NUMBER NUMBER(6),
   GUARANTE_NORMALSUM_AMOUNT NUMBER(6),
   CURR_CREDIT_FLAG     CHAR,
   HIS_CREDIT_FLAG      CHAR,
   REPORT_DATE          VARCHAR2(8),
   QUERY_DATE           VARCHAR2(17),
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0072010 primary key (ENT_NO)
);

comment on table TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP is
'企业征信信息源临时表';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.ENT_NO is
'客户ID';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.CIF_ID is
'CIF客户代码';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.ENT_NAME is
'客户名称';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.REP_CERTTYPE is
'法定代表人证件类型';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.REP_CERTNO is
'法定代表人身份证号码';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.REP_NAME is
'法定代表人姓名';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.ORG_CODE is
'组织机构代码';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.CARD_NO is
'贷款卡卡号';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.CARD_PWD is
'贷款卡密码';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.CARD_DATE is
'贷款卡有效期';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.CARD_STA is
'贷款卡状态';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.DEBTSDAMF_NUMBER is
'由资产管理公司处置的债务笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.DEBTSDAMF_BALANCE is
'由资产管理公司处置的债务余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.LAST_DISPOSALED_DATE is
'最近一次处置完成日期(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.OWE_BALANCE_SUM_NUMBER is
'欠息汇总笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.OWE_BALANCE_SUM_BALANCE is
'欠息汇总余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.PAIDBACK_BALANCE_SUM_NUMBER is
'垫款汇总笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.PAIDBACK_BALANCE_SUM_BALANCE is
'垫款汇总余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.NORMAL_SUM_NUMBER is
'正常类汇总笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.NORMAL_SUM_BALANCE is
'正常类汇总余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.CONCERNED_SUM_NUMBER is
'关注类汇总笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.CONCERNED_SUM_BALANCE is
'关注类汇总余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.BAD_SUM_NUMBER is
'不良类汇总笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.BAD_SUM_BALANCE is
'不良类汇总余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.SUM_TOTAL_NUMBER is
'未结清合计笔数(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.SUM_TOTAL_BALANCE is
'未结清合计余额(未结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.LOAN_BAD_SUM_NUMBER is
'贷款不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.LOAN_NORMAL_SUM_AMOUNT is
'贷款正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.FINAN_BAD_SUM_NUMBER is
'贸易融资不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.FINAN_NORMAL_SUM_AMOUNT is
'贸易融资正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.BILL_BAD_SUM_NUMBER is
'票据贴现不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.BILL_NORMAL_SUM_AMOUNT is
'票据贴现正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.ASSUREE_BAD_SUM_NUMBER is
'保理不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.ASSUREE_NORMAL_SUM_AMOUNT is
'保理正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.POSTAL_BAD_SUM_NUMBER is
'银行承兑汇票不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.POSTAL_NORMAL_SUM_AMOUNT is
'银行承兑汇票正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.LETTER_BAD_SUM_NUMBER is
'信用证不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.LETTER_NORMAL_SUM_AMOUNT is
'信用证正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.GUARANTE_BADSUM_NUMBER is
'保函不良和关注类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.GUARANTE_NORMALSUM_AMOUNT is
'保函正常类笔数(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.CURR_CREDIT_FLAG is
'是否存在未结清信贷(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.HIS_CREDIT_FLAG is
'是否存在已结清信贷(已结清)';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.REPORT_DATE is
'人行报告日期';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.QUERY_DATE is
'查询日期';

comment on column TEST1.LN_MID_ENT_CREDIT_RPT_D_TMP.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MID_ENT_CTL_CR_RPT_D                               */
/*==============================================================*/
create table TEST1.LN_MID_ENT_CTL_CR_RPT_D 
(
   REP_CERTTYPE         VARCHAR2(6)          not null,
   REP_CERTNO           VARCHAR2(20)         not null,
   REP_NAME             VARCHAR2(90),
   REP_DEGREE           VARCHAR2(8),
   REP_EDULEVER         VARCHAR2(8),
   REP_MARRYSTA         VARCHAR2(8),
   FELLBACK_DEBT_SUM_COUNT NUMBER(6),
   FELLBACK_DEBT_SUM_BALANCE NUMBER(20,2),
   ASSET_DISPOSITION_SUM_COUNT NUMBER(6),
   ASSET_DISPOSITION_SUM_BALANCE NUMBER(20,2),
   ASSUREER_REPAY_SUM_COUNT NUMBER(6),
   ASSUREER_REPAY_SUM_BALANCE NUMBER(20,2),
   LOAN_CURR_OVERDUE_SUM_CYC NUMBER(6),
   LOAN_CURR_OVERDUE_SUM_AMOUNT NUMBER(20,2),
   LOANCARD_CURR_OVERDUE_SUM_CYC NUMBER(6),
   LOANCARD_CURR_OVERDUE_SUM_AMT NUMBER(20,2),
   LOANCARD_G_NUMBER    NUMBER(6),
   LM24_LOAN_OVERDUE_CYC NUMBER(6),
   LM24_LOAN_OVERDUE_SUM_CYC NUMBER(6),
   LM24_LOANCARD_OVERDUE_CYC NUMBER(6),
   LM24_LOANCARD_OVERDUE_SUM_CYC NUMBER(6),
   LM24_STDLNCARD_OVERDUE_CYC NUMBER(6),
   LM24_STDLNCARD_OVERDUE_SUM_CYC NUMBER(6),
   GUANANTEE_COUNT      NUMBER(6),
   GUANANTEE_MONEY_SUM  NUMBER(20,2),
   GUARANTEE_BALANCE_SUM NUMBER(20,2),
   PERSONDATE_CALENDAR  VARCHAR2(8),
   CARDDATE_CALENDAR    VARCHAR2(8),
   LAST_MONTH_QUERY_TIME NUMBER(6),
   REPORT_DATE          VARCHAR2(17),
   QUERY_DATE           VARCHAR2(17),
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0072011 primary key (REP_CERTTYPE, REP_CERTNO)
);

comment on table TEST1.LN_MID_ENT_CTL_CR_RPT_D is
'企业实际控制人征信信息源表';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.REP_CERTTYPE is
'法定代表人证件类型';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.REP_CERTNO is
'法定代表人身份证号码';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.REP_NAME is
'法定代表人姓名';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.REP_DEGREE is
'法定代表人学位';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.REP_EDULEVER is
'法定代表人学历';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.REP_MARRYSTA is
'法定代表人婚姻状态';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.FELLBACK_DEBT_SUM_COUNT is
'呆账信息汇总笔数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.FELLBACK_DEBT_SUM_BALANCE is
'呆账信息汇总余额';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.ASSET_DISPOSITION_SUM_COUNT is
'资产处置信息汇总笔数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.ASSET_DISPOSITION_SUM_BALANCE is
'资产处置信息汇总余额';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.ASSUREER_REPAY_SUM_COUNT is
'保证人代偿信息汇总笔数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.ASSUREER_REPAY_SUM_BALANCE is
'保证人代偿信息汇总余额';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.LOAN_CURR_OVERDUE_SUM_CYC is
'贷款当期逾期期数总计';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.LOAN_CURR_OVERDUE_SUM_AMOUNT is
'贷款当期逾期金额总计';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.LOANCARD_CURR_OVERDUE_SUM_CYC is
'贷记卡当期逾期期数总计';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.LOANCARD_CURR_OVERDUE_SUM_AMT is
'贷记卡当期逾期金额总计';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.LOANCARD_G_NUMBER is
'贷记卡结清以外终止账户数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.LM24_LOAN_OVERDUE_CYC is
'最近24个月贷款最高逾期期数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.LM24_LOAN_OVERDUE_SUM_CYC is
'最近24个月贷款累计逾期期数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.LM24_LOANCARD_OVERDUE_CYC is
'最近24个月贷记卡最高逾期期数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.LM24_LOANCARD_OVERDUE_SUM_CYC is
'最近24个月贷记卡累计逾期期数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.LM24_STDLNCARD_OVERDUE_CYC is
'最近24个月准贷记卡最高逾期期数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.LM24_STDLNCARD_OVERDUE_SUM_CYC is
'最近24个月准贷记卡累计逾期期数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.GUANANTEE_COUNT is
'对外担保笔数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.GUANANTEE_MONEY_SUM is
'对外担保金额总计';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.GUARANTEE_BALANCE_SUM is
'对外担保本金余额总计';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.PERSONDATE_CALENDAR is
'信用史（个贷）';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.CARDDATE_CALENDAR is
'信用史（卡）';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.LAST_MONTH_QUERY_TIME is
'最近一月查询次数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.REPORT_DATE is
'人行报告日期';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.QUERY_DATE is
'查询日期';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MID_ENT_CTL_CR_RPT_D_TMP                           */
/*==============================================================*/
create table TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP 
(
   REP_CERTTYPE         VARCHAR2(6)          not null,
   REP_CERTNO           VARCHAR2(20)         not null,
   REP_NAME             VARCHAR2(90),
   REP_DEGREE           VARCHAR2(8),
   REP_EDULEVER         VARCHAR2(8),
   REP_MARRYSTA         VARCHAR2(8),
   FELLBACK_DEBT_SUM_COUNT NUMBER(6),
   FELLBACK_DEBT_SUM_BALANCE NUMBER(20,2),
   ASSET_DISPOSITION_SUM_COUNT NUMBER(6),
   ASSET_DISPOSITION_SUM_BALANCE NUMBER(20,2),
   ASSUREER_REPAY_SUM_COUNT NUMBER(6),
   ASSUREER_REPAY_SUM_BALANCE NUMBER(20,2),
   LOAN_CURR_OVERDUE_SUM_CYC NUMBER(6),
   LOAN_CURR_OVERDUE_SUM_AMOUNT NUMBER(20,2),
   LOANCARD_CURR_OVERDUE_SUM_CYC NUMBER(6),
   LOANCARD_CURR_OVERDUE_SUM_AMT NUMBER(20,2),
   LOANCARD_G_NUMBER    NUMBER(6),
   LM24_LOAN_OVERDUE_CYC NUMBER(6),
   LM24_LOAN_OVERDUE_SUM_CYC NUMBER(6),
   LM24_LOANCARD_OVERDUE_CYC NUMBER(6),
   LM24_LOANCARD_OVERDUE_SUM_CYC NUMBER(6),
   LM24_STDLNCARD_OVERDUE_CYC NUMBER(6),
   LM24_STDLNCARD_OVERDUE_SUM_CYC NUMBER(6),
   GUANANTEE_COUNT      NUMBER(6),
   GUANANTEE_MONEY_SUM  NUMBER(20,2),
   GUARANTEE_BALANCE_SUM NUMBER(20,2),
   PERSONDATE_CALENDAR  VARCHAR2(8),
   CARDDATE_CALENDAR    VARCHAR2(8),
   LAST_MONTH_QUERY_TIME NUMBER(6),
   REPORT_DATE          VARCHAR2(17),
   QUERY_DATE           VARCHAR2(17),
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0072012 primary key (REP_CERTTYPE, REP_CERTNO)
);

comment on table TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP is
'企业实际控制人征信信息源临时表';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.REP_CERTTYPE is
'法定代表人证件类型';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.REP_CERTNO is
'法定代表人证件号码';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.REP_NAME is
'法定代表人姓名';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.REP_DEGREE is
'法定代表人学位';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.REP_EDULEVER is
'法定代表人学历';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.REP_MARRYSTA is
'法定代表人婚姻状态';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.FELLBACK_DEBT_SUM_COUNT is
'呆账信息汇总笔数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.FELLBACK_DEBT_SUM_BALANCE is
'呆账信息汇总余额';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.ASSET_DISPOSITION_SUM_COUNT is
'资产处置信息汇总笔数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.ASSET_DISPOSITION_SUM_BALANCE is
'资产处置信息汇总余额';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.ASSUREER_REPAY_SUM_COUNT is
'保证人代偿信息汇总笔数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.ASSUREER_REPAY_SUM_BALANCE is
'保证人代偿信息汇总余额';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.LOAN_CURR_OVERDUE_SUM_CYC is
'贷款当期逾期期数总计';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.LOAN_CURR_OVERDUE_SUM_AMOUNT is
'贷款当期逾期金额总计';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.LOANCARD_CURR_OVERDUE_SUM_CYC is
'贷记卡当期逾期期数总计';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.LOANCARD_CURR_OVERDUE_SUM_AMT is
'贷记卡当期逾期金额总计';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.LOANCARD_G_NUMBER is
'贷记卡结清以外终止账户数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.LM24_LOAN_OVERDUE_CYC is
'最近24个月贷款最高逾期期数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.LM24_LOAN_OVERDUE_SUM_CYC is
'最近24个月贷款累计逾期期数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.LM24_LOANCARD_OVERDUE_CYC is
'最近24个月贷记卡最高逾期期数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.LM24_LOANCARD_OVERDUE_SUM_CYC is
'最近24个月贷记卡累计逾期期数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.LM24_STDLNCARD_OVERDUE_CYC is
'最近24个月准贷记卡最高逾期期数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.LM24_STDLNCARD_OVERDUE_SUM_CYC is
'最近24个月准贷记卡累计逾期期数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.GUANANTEE_COUNT is
'对外担保笔数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.GUANANTEE_MONEY_SUM is
'对外担保金额总计';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.GUARANTEE_BALANCE_SUM is
'对外担保本金余额总计';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.PERSONDATE_CALENDAR is
'信用史（个贷）';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.CARDDATE_CALENDAR is
'信用史（卡）';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.LAST_MONTH_QUERY_TIME is
'最近一月查询次数';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.REPORT_DATE is
'人行报告日期';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.QUERY_DATE is
'查询日期';

comment on column TEST1.LN_MID_ENT_CTL_CR_RPT_D_TMP.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_MID_LOANCONT_TEMPLATE                              */
/*==============================================================*/
create table TEST1.LN_MID_LOANCONT_TEMPLATE 
(
   LOANAPPLYNO          VARCHAR2(32)         not null,
   CONTNO               VARCHAR2(18),
   CLICODE              VARCHAR2(16),
   CLIENTNAME           VARCHAR2(270),
   CLIADDR              VARCHAR2(192),
   CLIPHONE             VARCHAR2(20),
   CLIFAX               VARCHAR2(16),
   CLINAME              VARCHAR2(90),
   INSTNAME             VARCHAR2(90),
   INSTADDR             VARCHAR2(192),
   INSTPHONE            VARCHAR2(20),
   INSTFAX              VARCHAR2(16),
   INSTLEGAL            VARCHAR2(48),
   LOANWAYNO            VARCHAR2(6),
   CURRKIND             VARCHAR2(2),
   LOANSUM              NUMBER(18,2),
   TERMCODE             VARCHAR2(2),
   LOANTERM             NUMBER(6),
   CYCLECURRKIND        VARCHAR2(2),
   CYCLELOANSUM         NUMBER(18,2),
   BEGINDATE            VARCHAR2(8),
   ENDDATE              VARCHAR2(8),
   SELFCYCLECURRKIND    VARCHAR2(2),
   SELFCYCLELOANSUM     NUMBER(18,2),
   SELFBEGINDATE        VARCHAR2(8),
   SELFENDDATE          VARCHAR2(8),
   LOANUSE              VARCHAR2(90),
   RATEWAYNO            VARCHAR2(6),
   LOANSIGNDAY          VARCHAR2(30),
   LOANTERMSUM          VARCHAR2(30),
   BASERATEUPDOWM       VARCHAR2(6),
   RATEFLOATINTERVAL    NUMBER(30,6),
   RATEFLOATUPDOWM      VARCHAR2(6),
   FRATEFLOATINTERVAL   NUMBER(30,6),
   FLOATCYCLE           VARCHAR2(2),
   OTHERRATE            VARCHAR2(383),
   EXCHANGENOWAY        VARCHAR2(6),
   EXCHANGEMONTH        VARCHAR2(6),
   EXCHANGEWAY          VARCHAR2(6),
   EXCHANGEWAYRATIO     VARCHAR2(6),
   EXCHANGEFLOATMONTH   VARCHAR2(6),
   EXCHANGERATE         NUMBER(30,6),
   EXCHANGEOTHERWAY     VARCHAR2(10),
   INTERESTCALCCIRCLE   VARCHAR2(2),
   INTERESTCALCDAYCIRCLE VARCHAR2(9),
   DAY30                VARCHAR2(6),
   DAY60                VARCHAR2(6),
   DAYBEYOND60          VARCHAR2(6),
   RATEPERCENT          VARCHAR2(6),
   COMPTERM             VARCHAR2(6),
   OTHERPAYWAY          VARCHAR2(6),
   LOANSIGNBEGINMONTH   VARCHAR2(2),
   COMWITHPLAN          VARCHAR2(6),
   FIRSTENDDATE         VARCHAR2(8),
   LASTENDDATE          VARCHAR2(8),
   PLANCHANGEDAY        VARCHAR2(2),
   TERMNOTBEYOND        VARCHAR2(2),
   TRUSTEEPAYQUOTA      NUMBER(30,6),
   TRUSTEEPAYOTHER      VARCHAR2(383),
   TRUSTEEPAYADVDAY     VARCHAR2(2),
   FINANCIALNO          VARCHAR2(6),
   LIABILITIESRATE      VARCHAR2(6),
   HAVEORNORATE         VARCHAR2(6),
   LASTYEARLOSE         VARCHAR2(2),
   OTHERFINANCIAL       VARCHAR2(96),
   MONEYBACKNONAME      VARCHAR2(96),
   MONEYBACKNO          VARCHAR2(20),
   OTHERFINANCIALASK    VARCHAR2(96),
   BEFOREREPAYDAY       VARCHAR2(2),
   AHEADREPAYDAY        VARCHAR2(2),
   AHEADREPAYRATEWAY    VARCHAR2(2),
   UPPERCENT            VARCHAR2(32),
   AHEADREPAYRATEOTHER  VARCHAR2(32),
   AHEADREPAYSUM        NUMBER(30,6),
   AHEADREPAYSUMBEI     VARCHAR2(6),
   GUARWAY              VARCHAR2(150),
   GUARCONTNO           VARCHAR2(18),
   OTHERSAVE            VARCHAR2(383),
   DEBATEWAY            VARCHAR2(6),
   ARBITRAL_INSTITUTIONS VARCHAR2(383),
   SIGNPLACE            VARCHAR2(383),
   CONTNUM              NUMBER(6),
   CLICONTNUM           NUMBER(6),
   INSCONTNUM           NUMBER(6),
   GUARANTEECONTNUM     NUMBER(6),
   OTHERCONTNUM         NUMBER(6),
   LOANSIGNDAY1         VARCHAR2(30),
   LOANTERMSUM1         VARCHAR2(30),
   ADDCLAUSE1           VARCHAR2(383),
   ADDCLAUSE2           VARCHAR2(383),
   CONTSIGHDATE         VARCHAR2(8),
   constraint SYS_C0072017 primary key (LOANAPPLYNO)
);

comment on table TEST1.LN_MID_LOANCONT_TEMPLATE is
'合同模板信息表';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.LOANAPPLYNO is
'贷款申请编号';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.CONTNO is
'主合同编号';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.CLICODE is
'借款人';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.CLIENTNAME is
'借款人姓名';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.CLIADDR is
'借款人地址';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.CLIPHONE is
'借款人电话';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.CLIFAX is
'借款人传真';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.CLINAME is
'法人代表名称';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.INSTNAME is
'贷款行名';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.INSTADDR is
'贷款行地址';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.INSTPHONE is
'贷款行电话';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.INSTFAX is
'贷款行传真';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.INSTLEGAL is
'贷款行法人代表';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.LOANWAYNO is
'第几种借款方式';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.CURRKIND is
'借款币种';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.LOANSUM is
'借款金额大写';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.TERMCODE is
'期限表达方式';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.LOANTERM is
'总借款期限大写';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.CYCLECURRKIND is
'可循环借款币种';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.CYCLELOANSUM is
'可循环借款金额大写';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.BEGINDATE is
'额度有效起始日期';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.ENDDATE is
'额度有效到期日期';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.SELFCYCLECURRKIND is
'自助可循环借款币种';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.SELFCYCLELOANSUM is
'自助可循环借款金额大写';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.SELFBEGINDATE is
'自助可循环借款额度起始日期';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.SELFENDDATE is
'自助可循环借款额度到期日期';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.LOANUSE is
'借款用途';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.RATEWAYNO is
'第几种方式执行利率';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.LOANSIGNDAY is
'按照每笔借款提款日或合同签订日';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.LOANTERMSUM is
'单笔借款期限或总借款期限';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.BASERATEUPDOWM is
'按照基准利率上下';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.RATEFLOATINTERVAL is
'按照基准利率浮动幅度';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.RATEFLOATUPDOWM is
'浮动利率按照基准利率上下';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.FRATEFLOATINTERVAL is
'浮动利率按照基准利率浮动幅度';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.FLOATCYCLE is
'浮动周期';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.OTHERRATE is
'其它利率方式';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.EXCHANGENOWAY is
'外汇借款第几种方式';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.EXCHANGEMONTH is
'外汇借款月份大写';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.EXCHANGEWAY is
'外汇利率方式';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.EXCHANGEWAYRATIO is
'外汇利率方式利差比率';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.EXCHANGEFLOATMONTH is
'外汇浮动月大写';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.EXCHANGERATE is
'外汇年利率';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.EXCHANGEOTHERWAY is
'外汇其他方式';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.INTERESTCALCCIRCLE is
'结息周期';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.INTERESTCALCDAYCIRCLE is
'结息日周期';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.DAY30 is
'逾期30天内罚息比例大写';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.DAY60 is
'逾期60天罚息比例大写';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.DAYBEYOND60 is
'逾期60天以上罚息比例大写';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.RATEPERCENT is
'违约罚息比例大写';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.COMPTERM is
'复利计收周期';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.OTHERPAYWAY is
'其它提款、贷款支付约定';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.LOANSIGNBEGINMONTH is
'合同签订起几个月';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.COMWITHPLAN is
'一般流资提款计划';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.FIRSTENDDATE is
'首笔借款提取截止日期';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.LASTENDDATE is
'末笔借款提取截止日期';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.PLANCHANGEDAY is
'提款计划调整提前几日通知贷款人';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.TERMNOTBEYOND is
'借款人逐笔提款期限不超过';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.TRUSTEEPAYQUOTA is
'受托支付限额';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.TRUSTEEPAYOTHER is
'受托支付其他约定';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.TRUSTEEPAYADVDAY is
'受托支付提前几日申请';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.FINANCIALNO is
'财务指标监督第几种情形';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.LIABILITIESRATE is
'借款人资产负债比率';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.HAVEORNORATE is
'借款人或有负债比率';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.LASTYEARLOSE is
'经营性现金流持续几年为负';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.OTHERFINANCIAL is
'其他财务指标';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.MONEYBACKNONAME is
'资金回笼户名';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.MONEYBACKNO is
'资金回笼户账号';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.OTHERFINANCIALASK is
'账户监管其他要求';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.BEFOREREPAYDAY is
'还款日前几日';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.AHEADREPAYDAY is
'提前还款提前几日申请';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.AHEADREPAYRATEWAY is
'提前还款部分计息方式选择';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.UPPERCENT is
'上浮比例';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.AHEADREPAYRATEOTHER is
'提前还款计息其他';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.AHEADREPAYSUM is
'提前还款本金金额';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.AHEADREPAYSUMBEI is
'提前还款本金整数倍';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.GUARWAY is
'担保方式';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.GUARCONTNO is
'担保合同编号';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.OTHERSAVE is
'其他救济措施';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.DEBATEWAY is
'争议第几种方式解决';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.ARBITRAL_INSTITUTIONS is
'仲裁机构全称';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.SIGNPLACE is
'签约地点';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.CONTNUM is
'合同份数';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.CLICONTNUM is
'借款人合同份数';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.INSCONTNUM is
'贷款人合同份数';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.GUARANTEECONTNUM is
'担保人合同份数';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.OTHERCONTNUM is
'其他人合同份数';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.LOANSIGNDAY1 is
'按每笔借款提款日或合同签订日1';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.LOANTERMSUM1 is
'单笔借款期限或总借款期限1';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.ADDCLAUSE1 is
'补充条款1';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.ADDCLAUSE2 is
'补充条款2';

comment on column TEST1.LN_MID_LOANCONT_TEMPLATE.CONTSIGHDATE is
'合同签订日期';

/*==============================================================*/
/* Table: LN_MID_LOAN_PRICE_PARAM                               */
/*==============================================================*/
create table TEST1.LN_MID_LOAN_PRICE_PARAM 
(
   PARAM_ID             VARCHAR2(32)         not null,
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   CUST_DEP_AVG_FTP_YIELD NUMBER(10,7),
   CUST_DEP_AVG_PI_RATE NUMBER(10,7),
   AGENCY_EXP_INCOME_DELTA NUMBER(20,2),
   CUST_DEP_AVG_DAY_DELTA NUMBER(20,2),
   OP_DATE              VARCHAR2(17),
   OPR_NAME             VARCHAR2(90),
   OPR_ID               VARCHAR2(20),
   EXP_LOST_RATE        NUMBER(10,7),
   ECO_CAPITAL_COEF     NUMBER(10,7),
   SECURE_ADJUST_INDEX  NUMBER(10,7),
   IS_SECURE_ACTIVE     CHAR,
   SD_FLAG              VARCHAR2(6),
   CUST_RATING_RESULT   VARCHAR2(32),
   constraint SYS_C0072005 primary key (PARAM_ID)
);

comment on table TEST1.LN_MID_LOAN_PRICE_PARAM is
'定价参数表';

comment on column TEST1.LN_MID_LOAN_PRICE_PARAM.PARAM_ID is
'参数ID';

comment on column TEST1.LN_MID_LOAN_PRICE_PARAM.BUSI_GROUP_NO is
'商圈ID';

comment on column TEST1.LN_MID_LOAN_PRICE_PARAM.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_MID_LOAN_PRICE_PARAM.CUST_DEP_AVG_FTP_YIELD is
'客户存款平均FTP收益率';

comment on column TEST1.LN_MID_LOAN_PRICE_PARAM.CUST_DEP_AVG_PI_RATE is
'客户存款平均付息率';

comment on column TEST1.LN_MID_LOAN_PRICE_PARAM.AGENCY_EXP_INCOME_DELTA is
'中间业务收入预计增量';

comment on column TEST1.LN_MID_LOAN_PRICE_PARAM.CUST_DEP_AVG_DAY_DELTA is
'客户日均存款预计增量';

comment on column TEST1.LN_MID_LOAN_PRICE_PARAM.OP_DATE is
'操作日期';

comment on column TEST1.LN_MID_LOAN_PRICE_PARAM.OPR_NAME is
'操作员名称';

comment on column TEST1.LN_MID_LOAN_PRICE_PARAM.OPR_ID is
'操作员代码';

comment on column TEST1.LN_MID_LOAN_PRICE_PARAM.EXP_LOST_RATE is
'预期损失率';

comment on column TEST1.LN_MID_LOAN_PRICE_PARAM.ECO_CAPITAL_COEF is
'经济资本系数';

comment on column TEST1.LN_MID_LOAN_PRICE_PARAM.SECURE_ADJUST_INDEX is
'保险调节系数';

comment on column TEST1.LN_MID_LOAN_PRICE_PARAM.IS_SECURE_ACTIVE is
'是否启用借意险';

comment on column TEST1.LN_MID_LOAN_PRICE_PARAM.SD_FLAG is
'上下游标志，暂无用';

comment on column TEST1.LN_MID_LOAN_PRICE_PARAM.CUST_RATING_RESULT is
'客户评价等级';

/*==============================================================*/
/* Table: LN_OVERDUE_DAYCNT                                     */
/*==============================================================*/
create table TEST1.LN_OVERDUE_DAYCNT 
(
   ELB_VCHNO            VARCHAR2(19)         not null,
   ELB_OPTKIND          VARCHAR2(5)          not null,
   ELB_INSTCODE         VARCHAR2(12),
   ELB_CLICODE          VARCHAR2(16),
   ELB_LOANDATE         VARCHAR2(8),
   ELB_ENDDATE          VARCHAR2(8),
   ELB_CURRKIND         VARCHAR2(2),
   ELB_REST             NUMBER(18,2),
   ELB_OVERDATE         VARCHAR2(8),
   ELB_OVERDAYS         NUMBER,
   ELB_OVERKIND         CHAR,
   ELB_BATCHKIND        VARCHAR2(2),
   ELB_NOTIYKIND        CHAR,
   ELB_LASTOPCLS        VARCHAR2(2),
   ELB_OPRID            VARCHAR2(20),
   ELB_OPDATE           VARCHAR2(17),
   ELB_LASTOPDATE       VARCHAR2(17),
   constraint SYS_C0071855 primary key (ELB_VCHNO)
);

comment on table TEST1.LN_OVERDUE_DAYCNT is
'逾期情况天数统计表';

comment on column TEST1.LN_OVERDUE_DAYCNT.ELB_VCHNO is
'凭证编号';

comment on column TEST1.LN_OVERDUE_DAYCNT.ELB_OPTKIND is
'业务品种';

comment on column TEST1.LN_OVERDUE_DAYCNT.ELB_INSTCODE is
'放款机构编码';

comment on column TEST1.LN_OVERDUE_DAYCNT.ELB_CLICODE is
'客户代码';

comment on column TEST1.LN_OVERDUE_DAYCNT.ELB_LOANDATE is
'借款日期';

comment on column TEST1.LN_OVERDUE_DAYCNT.ELB_ENDDATE is
'最后到期日期';

comment on column TEST1.LN_OVERDUE_DAYCNT.ELB_CURRKIND is
'币种';

comment on column TEST1.LN_OVERDUE_DAYCNT.ELB_REST is
'余额';

comment on column TEST1.LN_OVERDUE_DAYCNT.ELB_OVERDATE is
'逾期日期';

comment on column TEST1.LN_OVERDUE_DAYCNT.ELB_OVERDAYS is
'逾期天数累计';

comment on column TEST1.LN_OVERDUE_DAYCNT.ELB_OVERKIND is
'逾期类型';

comment on column TEST1.LN_OVERDUE_DAYCNT.ELB_BATCHKIND is
'批处理类别';

comment on column TEST1.LN_OVERDUE_DAYCNT.ELB_NOTIYKIND is
'调整类型';

comment on column TEST1.LN_OVERDUE_DAYCNT.ELB_LASTOPCLS is
'最近一次手工调整级次';

comment on column TEST1.LN_OVERDUE_DAYCNT.ELB_OPRID is
'操作员';

comment on column TEST1.LN_OVERDUE_DAYCNT.ELB_OPDATE is
'操作日期';

comment on column TEST1.LN_OVERDUE_DAYCNT.ELB_LASTOPDATE is
'最后操作日期';

/*==============================================================*/
/* Table: LN_PRE_C3_IMDEPTMST                                   */
/*==============================================================*/
create table TEST1.LN_PRE_C3_IMDEPTMST 
(
   DM_DEPTCODE          VARCHAR2(12)         not null,
   DM_SDEPTCODE         VARCHAR2(12)         not null,
   DM_OPRID             VARCHAR2(20),
   DM_OPDATE            VARCHAR2(8),
   SOURCE               VARCHAR2(32)         default 'C3' not null,
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071999 primary key (DM_DEPTCODE, DM_SDEPTCODE)
);

comment on table TEST1.LN_PRE_C3_IMDEPTMST is
'C3机构上级机构关系表';

comment on column TEST1.LN_PRE_C3_IMDEPTMST.DM_DEPTCODE is
'部门/营业单位编码';

comment on column TEST1.LN_PRE_C3_IMDEPTMST.DM_SDEPTCODE is
'上级主管部门编码';

comment on column TEST1.LN_PRE_C3_IMDEPTMST.DM_OPRID is
'操作员代码';

comment on column TEST1.LN_PRE_C3_IMDEPTMST.DM_OPDATE is
'操作日期';

comment on column TEST1.LN_PRE_C3_IMDEPTMST.SOURCE is
'数据来源';

comment on column TEST1.LN_PRE_C3_IMDEPTMST.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_PRE_C3_IMDEPTMST.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_PRE_C3_IMDEPTMST_TMP                               */
/*==============================================================*/
create table TEST1.LN_PRE_C3_IMDEPTMST_TMP 
(
   DM_DEPTCODE          VARCHAR2(12)         not null,
   DM_SDEPTCODE         VARCHAR2(12)         not null,
   DM_OPRID             VARCHAR2(20),
   DM_OPDATE            VARCHAR2(8),
   SOURCE               VARCHAR2(32)         default 'C3' not null,
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0072000 primary key (DM_DEPTCODE, DM_SDEPTCODE)
);

comment on table TEST1.LN_PRE_C3_IMDEPTMST_TMP is
'C3机构上级机构关系临时表';

comment on column TEST1.LN_PRE_C3_IMDEPTMST_TMP.DM_DEPTCODE is
'部门/营业单位编码';

comment on column TEST1.LN_PRE_C3_IMDEPTMST_TMP.DM_SDEPTCODE is
'上级主管部门编码';

comment on column TEST1.LN_PRE_C3_IMDEPTMST_TMP.DM_OPRID is
'操作员代码';

comment on column TEST1.LN_PRE_C3_IMDEPTMST_TMP.DM_OPDATE is
'操作日期';

comment on column TEST1.LN_PRE_C3_IMDEPTMST_TMP.SOURCE is
'数据来源';

comment on column TEST1.LN_PRE_C3_IMDEPTMST_TMP.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_PRE_C3_IMDEPTMST_TMP.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_PRE_C3_IMINSTREG                                   */
/*==============================================================*/
create table TEST1.LN_PRE_C3_IMINSTREG 
(
   IR_INSTCODE          VARCHAR2(12)         not null,
   IR_INSTNAME          VARCHAR2(90),
   IR_SHORTNAME         VARCHAR2(60),
   IR_CENTERNO          VARCHAR2(2),
   IR_INSTLEVEL         VARCHAR2(2),
   IR_INSTPROP          VARCHAR2(4),
   IR_AREA              VARCHAR2(2),
   IR_REGIONCODE        VARCHAR2(6),
   IR_ICTYPE            CHAR,
   IR_INSTVLD           CHAR,
   IR_STDINSTCODE       VARCHAR2(12),
   IR_SINSTCODE         VARCHAR2(12)         not null,
   IR_RINSTCODE         VARCHAR2(12),
   IR_INSTSTA           CHAR                 not null,
   IR_VIRTUAL           CHAR,
   IR_REGOPRID          VARCHAR2(20),
   IR_REGDATE           VARCHAR2(8),
   IR_DELOPRID          VARCHAR2(20),
   IR_DELDATE           VARCHAR2(8),
   IR_LASTOPRID         VARCHAR2(20),
   IR_LASTOPDATE        VARCHAR2(8),
   SOURCE               VARCHAR2(32)         default 'C3' not null,
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071873 primary key (IR_INSTCODE)
);

comment on table TEST1.LN_PRE_C3_IMINSTREG is
'C3机构注册信息表';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_INSTCODE is
'内部编码';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_INSTNAME is
'机构中文名称';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_SHORTNAME is
'机构中文简称';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_CENTERNO is
'中心号';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_INSTLEVEL is
'机构级别';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_INSTPROP is
'机构类别';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_AREA is
'所属区域';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_REGIONCODE is
'区划代码';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_ICTYPE is
'县域分类';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_INSTVLD is
'机构时间属性';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_STDINSTCODE is
'机构编码';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_SINSTCODE is
'直接上级机构编码';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_RINSTCODE is
'所属行编码';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_INSTSTA is
'机构状态';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_VIRTUAL is
'虚拟机构标识';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_REGOPRID is
'注销操作人员代码';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_REGDATE is
'注册日期';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_DELOPRID is
'注销操作人员代码';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_DELDATE is
'注销日期';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_LASTOPRID is
'最近操作人员代码';

comment on column TEST1.LN_PRE_C3_IMINSTREG.IR_LASTOPDATE is
'最近操作日期';

comment on column TEST1.LN_PRE_C3_IMINSTREG.SOURCE is
'数据来源';

comment on column TEST1.LN_PRE_C3_IMINSTREG.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_PRE_C3_IMINSTREG.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_PRE_C3_IMINSTREG_TMP                               */
/*==============================================================*/
create table TEST1.LN_PRE_C3_IMINSTREG_TMP 
(
   IR_INSTCODE          VARCHAR2(12)         not null,
   IR_INSTNAME          VARCHAR2(90),
   IR_SHORTNAME         VARCHAR2(60),
   IR_CENTERNO          VARCHAR2(2),
   IR_INSTLEVEL         VARCHAR2(2),
   IR_INSTPROP          VARCHAR2(4),
   IR_AREA              VARCHAR2(2),
   IR_REGIONCODE        VARCHAR2(6),
   IR_ICTYPE            CHAR,
   IR_INSTVLD           CHAR,
   IR_STDINSTCODE       VARCHAR2(12),
   IR_SINSTCODE         VARCHAR2(12)         not null,
   IR_RINSTCODE         VARCHAR2(12),
   IR_INSTSTA           CHAR                 not null,
   IR_VIRTUAL           CHAR,
   IR_REGOPRID          VARCHAR2(20),
   IR_REGDATE           VARCHAR2(8),
   IR_DELOPRID          VARCHAR2(20),
   IR_DELDATE           VARCHAR2(8),
   IR_LASTOPRID         VARCHAR2(20),
   IR_LASTOPDATE        VARCHAR2(8),
   SOURCE               VARCHAR2(32)         default 'C3' not null,
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071874 primary key (IR_INSTCODE)
);

comment on table TEST1.LN_PRE_C3_IMINSTREG_TMP is
'C3机构注册信息临时表';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_INSTCODE is
'内部编码';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_INSTNAME is
'机构中文名称';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_SHORTNAME is
'机构中文简称';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_CENTERNO is
'中心号';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_INSTLEVEL is
'机构级别';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_INSTPROP is
'机构类别';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_AREA is
'所属区域';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_REGIONCODE is
'区划代码';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_ICTYPE is
'县域分类';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_INSTVLD is
'机构时间属性';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_STDINSTCODE is
'机构编码';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_SINSTCODE is
'直接上级机构编码';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_RINSTCODE is
'所属行编码';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_INSTSTA is
'机构状态';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_VIRTUAL is
'虚拟机构标识';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_REGOPRID is
'注销操作人员代码';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_REGDATE is
'注册日期';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_DELOPRID is
'注销操作人员代码';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_DELDATE is
'注销日期';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_LASTOPRID is
'最近操作人员代码';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.IR_LASTOPDATE is
'最近操作日期';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.SOURCE is
'数据来源';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_PRE_C3_IMINSTREG_TMP.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_PRE_C3_IMOPRREG                                    */
/*==============================================================*/
create table TEST1.LN_PRE_C3_IMOPRREG 
(
   OR_USERID            VARCHAR2(20)         not null,
   OR_USERNAME          VARCHAR2(45)         not null,
   OR_USERENAME         VARCHAR2(45),
   OR_PWD               VARCHAR2(24)         default '11111111',
   OR_SETTIME           VARCHAR2(12),
   OR_ENDATE            VARCHAR2(12),
   OR_CERTNO            VARCHAR2(18)         not null,
   OR_EMPID             VARCHAR2(30),
   OR_USERSTA           CHAR                 not null,
   OR_BISTA             CHAR,
   OR_VIRTUAL           CHAR,
   OR_WORKDATE          VARCHAR2(8),
   OR_APPRLVL           VARCHAR2(2),
   OR_DLBLVL            VARCHAR2(2),
   OR_SEX               CHAR,
   OR_TELNUM            VARCHAR2(27),
   OR_MOBILE            VARCHAR2(16),
   OR_EADDR             VARCHAR2(90),
   OR_REGINST           VARCHAR2(12),
   OR_REGOPRID          VARCHAR2(20),
   OR_REGDATE           VARCHAR2(8),
   OR_DELOPRID          VARCHAR2(20),
   OR_DELDATE           VARCHAR2(8),
   OR_LASTOPRID         VARCHAR2(20),
   OR_LASTOPDATE        VARCHAR2(8),
   SOURCE               VARCHAR2(32)         default 'C3' not null,
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071875 primary key (OR_USERID)
);

comment on table TEST1.LN_PRE_C3_IMOPRREG is
'C3用户注册信息表';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_USERID is
'用户编码';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_USERNAME is
'中文姓名';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_USERENAME is
'英文姓名';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_PWD is
'操作密码';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_SETTIME is
'密码设置日期';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_ENDATE is
'密码失效日期';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_CERTNO is
'身份证号';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_EMPID is
'员工编号';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_USERSTA is
'用户状态';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_BISTA is
'业务状态';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_VIRTUAL is
'虚拟用户标识';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_WORKDATE is
'入行日期';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_APPRLVL is
'审批人员资质';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_DLBLVL is
'审议人员资质';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_SEX is
'性别';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_TELNUM is
'办公电话';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_MOBILE is
'手机';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_EADDR is
'电子信箱';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_REGINST is
'注册机构';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_REGOPRID is
'注册操作员';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_REGDATE is
'注册日期';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_DELOPRID is
'注销操作员';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_DELDATE is
'注销日期';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_LASTOPRID is
'最近操作人员代码';

comment on column TEST1.LN_PRE_C3_IMOPRREG.OR_LASTOPDATE is
'最近操作日期';

comment on column TEST1.LN_PRE_C3_IMOPRREG.SOURCE is
'数据来源';

comment on column TEST1.LN_PRE_C3_IMOPRREG.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_PRE_C3_IMOPRREG.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_PRE_C3_IMOPRREG_TMP                                */
/*==============================================================*/
create table TEST1.LN_PRE_C3_IMOPRREG_TMP 
(
   OR_USERID            VARCHAR2(20)         not null,
   OR_USERNAME          VARCHAR2(45)         not null,
   OR_USERENAME         VARCHAR2(45),
   OR_PWD               VARCHAR2(24)         default '11111111',
   OR_SETTIME           VARCHAR2(12),
   OR_ENDATE            VARCHAR2(12),
   OR_CERTNO            VARCHAR2(18)         not null,
   OR_EMPID             VARCHAR2(30),
   OR_USERSTA           CHAR                 not null,
   OR_BISTA             CHAR,
   OR_VIRTUAL           CHAR,
   OR_WORKDATE          VARCHAR2(8),
   OR_APPRLVL           VARCHAR2(2),
   OR_DLBLVL            VARCHAR2(2),
   OR_SEX               CHAR,
   OR_TELNUM            VARCHAR2(27),
   OR_MOBILE            VARCHAR2(16),
   OR_EADDR             VARCHAR2(90),
   OR_REGINST           VARCHAR2(12),
   OR_REGOPRID          VARCHAR2(20),
   OR_REGDATE           VARCHAR2(8),
   OR_DELOPRID          VARCHAR2(20),
   OR_DELDATE           VARCHAR2(8),
   OR_LASTOPRID         VARCHAR2(20),
   OR_LASTOPDATE        VARCHAR2(8),
   SOURCE               VARCHAR2(32)         default 'C3' not null,
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071876 primary key (OR_USERID)
);

comment on table TEST1.LN_PRE_C3_IMOPRREG_TMP is
'C3用户注册信息临时表';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_USERID is
'用户编码';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_USERNAME is
'中文姓名';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_USERENAME is
'英文姓名';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_PWD is
'操作密码';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_SETTIME is
'密码设置日期';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_ENDATE is
'密码失效日期';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_CERTNO is
'身份证号';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_EMPID is
'员工编号';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_USERSTA is
'用户状态';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_BISTA is
'业务状态';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_VIRTUAL is
'虚拟用户标识';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_WORKDATE is
'入行日期';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_APPRLVL is
'审批人员资质';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_DLBLVL is
'审议人员资质';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_SEX is
'性别';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_TELNUM is
'办公电话';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_MOBILE is
'手机';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_EADDR is
'电子信箱';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_REGINST is
'注册机构';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_REGOPRID is
'注册操作员';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_REGDATE is
'注册日期';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_DELOPRID is
'注销操作员';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_DELDATE is
'注销日期';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_LASTOPRID is
'最近操作人员代码';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.OR_LASTOPDATE is
'最近操作日期';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.SOURCE is
'数据来源';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_PRE_C3_IMOPRREG_TMP.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_PRE_C3_IMPOSINFO                                   */
/*==============================================================*/
create table TEST1.LN_PRE_C3_IMPOSINFO 
(
   PI_USERID            VARCHAR2(20)         not null,
   PI_INSTCODE          VARCHAR2(12)         not null,
   PI_POSCODE           VARCHAR2(2),
   PI_ADMLVL            VARCHAR2(2),
   PI_USERTYPE          VARCHAR2(2),
   PI_OPRINSTCODE       VARCHAR2(12),
   PI_OPRID             VARCHAR2(20),
   PI_OPDATE            VARCHAR2(8),
   SOURCE               VARCHAR2(32)         default 'C3' not null,
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071997 primary key (PI_USERID, PI_INSTCODE)
);

comment on table TEST1.LN_PRE_C3_IMPOSINFO is
'C3用户身份信息表';

comment on column TEST1.LN_PRE_C3_IMPOSINFO.PI_USERID is
'用户编码';

comment on column TEST1.LN_PRE_C3_IMPOSINFO.PI_INSTCODE is
'内部编码';

comment on column TEST1.LN_PRE_C3_IMPOSINFO.PI_POSCODE is
'身份编码';

comment on column TEST1.LN_PRE_C3_IMPOSINFO.PI_ADMLVL is
'行政职务';

comment on column TEST1.LN_PRE_C3_IMPOSINFO.PI_USERTYPE is
'用户类别';

comment on column TEST1.LN_PRE_C3_IMPOSINFO.PI_OPRINSTCODE is
'操作机构编码';

comment on column TEST1.LN_PRE_C3_IMPOSINFO.PI_OPRID is
'操作员ID';

comment on column TEST1.LN_PRE_C3_IMPOSINFO.PI_OPDATE is
'操作日期';

comment on column TEST1.LN_PRE_C3_IMPOSINFO.SOURCE is
'数据来源';

comment on column TEST1.LN_PRE_C3_IMPOSINFO.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_PRE_C3_IMPOSINFO.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_PRE_C3_IMPOSINFO_TMP                               */
/*==============================================================*/
create table TEST1.LN_PRE_C3_IMPOSINFO_TMP 
(
   PI_USERID            VARCHAR2(20)         not null,
   PI_INSTCODE          VARCHAR2(12)         not null,
   PI_POSCODE           VARCHAR2(2),
   PI_ADMLVL            VARCHAR2(2),
   PI_USERTYPE          VARCHAR2(2),
   PI_OPRINSTCODE       VARCHAR2(12),
   PI_OPRID             VARCHAR2(20),
   PI_OPDATE            VARCHAR2(8),
   SOURCE               VARCHAR2(32)         default 'C3' not null,
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071998 primary key (PI_USERID, PI_INSTCODE)
);

comment on table TEST1.LN_PRE_C3_IMPOSINFO_TMP is
'C3用户身份信息临时表';

comment on column TEST1.LN_PRE_C3_IMPOSINFO_TMP.PI_USERID is
'用户编码';

comment on column TEST1.LN_PRE_C3_IMPOSINFO_TMP.PI_INSTCODE is
'内部编码';

comment on column TEST1.LN_PRE_C3_IMPOSINFO_TMP.PI_POSCODE is
'身份编码';

comment on column TEST1.LN_PRE_C3_IMPOSINFO_TMP.PI_ADMLVL is
'行政职务';

comment on column TEST1.LN_PRE_C3_IMPOSINFO_TMP.PI_USERTYPE is
'用户类别';

comment on column TEST1.LN_PRE_C3_IMPOSINFO_TMP.PI_OPRINSTCODE is
'操作机构编码';

comment on column TEST1.LN_PRE_C3_IMPOSINFO_TMP.PI_OPRID is
'操作员ID';

comment on column TEST1.LN_PRE_C3_IMPOSINFO_TMP.PI_OPDATE is
'操作日期';

comment on column TEST1.LN_PRE_C3_IMPOSINFO_TMP.SOURCE is
'数据来源';

comment on column TEST1.LN_PRE_C3_IMPOSINFO_TMP.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_PRE_C3_IMPOSINFO_TMP.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_PRE_CUST_ACCT_OPEN_SEQ                             */
/*==============================================================*/
create table TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ 
(
   SEQ_NO               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CLICODE              VARCHAR2(16),
   CLINAME              VARCHAR2(90),
   CNSHORTNAME          VARCHAR2(30),
   REGCTY               VARCHAR2(3),
   REGDIST              VARCHAR2(6),
   REGADDR              VARCHAR2(90),
   ORGCODE              VARCHAR2(16),
   CERTTYPE             VARCHAR2(6),
   CERTNO               VARCHAR2(40),
   BZLOCCOUNTY          VARCHAR2(3),
   ENGNAME              VARCHAR2(60),
   ENGSHORTNAME         VARCHAR2(30),
   ADDRURALFLAG         VARCHAR2(4),
   ENTTYPE              VARCHAR2(2),
   OCCHKDATE            VARCHAR2(8),
   CARDNO               VARCHAR2(16),
   CARDPWD              VARCHAR2(6),
   CARDDATE             VARCHAR2(8),
   CARDSTA              CHAR,
   REGDATE              VARCHAR2(8),
   CERTCHKDATE          VARCHAR2(8),
   CERTBEGDATE          VARCHAR2(8),
   CERTENDDATE          VARCHAR2(8),
   REGCAP               NUMBER(18,2),
   REGCUR               VARCHAR2(2),
   TAXREGINO            VARCHAR2(40),
   GOVTAXREGINO         VARCHAR2(40),
   STDINDCLASS          VARCHAR2(5),
   ECONOMYTYPE          VARCHAR2(3),
   OTHFLAG              CHAR,
   BRCSMALLFLAG         CHAR,
   BUSISCALE            VARCHAR2(2),
   BUSITYPE             VARCHAR2(2),
   MGRNAME              VARCHAR2(90),
   MGRCERTTYPE          VARCHAR2(6),
   MGRCERTNO            VARCHAR2(60),
   OPINSTCODE           VARCHAR2(12),
   OPRID                VARCHAR2(20),
   OPDATE               VARCHAR2(17),
   constraint SYS_C0071871 primary key (SEQ_NO)
);

comment on table TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ is
'C3开户流水表';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.SEQ_NO is
'流水号';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.CLICODE is
'CIF客户ID';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.CLINAME is
'客户名称';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.CNSHORTNAME is
'中文简称';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.REGCTY is
'注册国家或地区';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.REGDIST is
'注册地行政区划';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.REGADDR is
'注册地址';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.ORGCODE is
'组织机构代码';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.CERTTYPE is
'注册或登记证件类型';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.CERTNO is
'注册或登记证件号码';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.BZLOCCOUNTY is
'主要营业场所所在国';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.ENGNAME is
'英文全称';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.ENGSHORTNAME is
'英文简称';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.ADDRURALFLAG is
'注册地城乡属性';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.ENTTYPE is
'单位类型';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.OCCHKDATE is
'组织机构代码年检日期';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.CARDNO is
'贷款卡编码';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.CARDPWD is
'贷款卡密码';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.CARDDATE is
'贷款卡有效期';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.CARDSTA is
'贷款卡状态';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.REGDATE is
'注册或批准成立日期';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.CERTCHKDATE is
'注册或登记证件年检日期';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.CERTBEGDATE is
'营业或有效期限起始日期';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.CERTENDDATE is
'营业或有效期限终止日期';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.REGCAP is
'注册或开办资金';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.REGCUR is
'注册或开办资金币种';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.TAXREGINO is
'国税登记证编号';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.GOVTAXREGINO is
'地税登记证编号';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.STDINDCLASS is
'国标行业分类';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.ECONOMYTYPE is
'经济类型';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.OTHFLAG is
'是否银监会小企业';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.BRCSMALLFLAG is
'是否农行小企业';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.BUSISCALE is
'企业规模';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.BUSITYPE is
'企业类型';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.MGRNAME is
'法定代表人姓名';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.MGRCERTTYPE is
'法定代表人证件类型';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.MGRCERTNO is
'法定代表人证件号码';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.OPINSTCODE is
'机构编码';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.OPRID is
'操作员编码';

comment on column TEST1.LN_PRE_CUST_ACCT_OPEN_SEQ.OPDATE is
'操作日期';

/*==============================================================*/
/* Table: LN_PRE_CUST_ACCT_SETTLE                               */
/*==============================================================*/
create table TEST1.LN_PRE_CUST_ACCT_SETTLE 
(
   ENT_NO               VARCHAR2(32)         not null,
   CIF_ID               VARCHAR2(16),
   LOANACCTNO           VARCHAR2(20),
   REPAYACCTNO          VARCHAR2(20),
   OPINSTCODE           VARCHAR2(12),
   OPRID                VARCHAR2(20),
   OPDATE               VARCHAR2(17),
   constraint SYS_C0071870 primary key (ENT_NO)
);

comment on table TEST1.LN_PRE_CUST_ACCT_SETTLE is
'客户结算帐户关联表';

comment on column TEST1.LN_PRE_CUST_ACCT_SETTLE.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_PRE_CUST_ACCT_SETTLE.CIF_ID is
'CIF客户ID';

comment on column TEST1.LN_PRE_CUST_ACCT_SETTLE.LOANACCTNO is
'放款帐户';

comment on column TEST1.LN_PRE_CUST_ACCT_SETTLE.REPAYACCTNO is
'还款帐户';

comment on column TEST1.LN_PRE_CUST_ACCT_SETTLE.OPINSTCODE is
'机构编码';

comment on column TEST1.LN_PRE_CUST_ACCT_SETTLE.OPRID is
'操作员编码';

comment on column TEST1.LN_PRE_CUST_ACCT_SETTLE.OPDATE is
'操作日期';

/*==============================================================*/
/* Table: LN_PRE_CUST_CORP_SEQ                                  */
/*==============================================================*/
create table TEST1.LN_PRE_CUST_CORP_SEQ 
(
   SEQ_NO               VARCHAR2(32)         not null,
   CORPNAME             VARCHAR2(90)         not null,
   CORPCERTTYPE         VARCHAR2(4)          not null,
   CORPCERTNO           VARCHAR2(64)         not null,
   OPINSTCODE           VARCHAR2(32)         not null,
   OPRID                VARCHAR2(32)         not null,
   OPDATE               VARCHAR2(17)         not null,
   constraint SYS_C0071872 primary key (SEQ_NO)
);

comment on table TEST1.LN_PRE_CUST_CORP_SEQ is
'C3法定代表人流水表';

comment on column TEST1.LN_PRE_CUST_CORP_SEQ.SEQ_NO is
'流水号';

comment on column TEST1.LN_PRE_CUST_CORP_SEQ.CORPNAME is
'法定代表人姓名';

comment on column TEST1.LN_PRE_CUST_CORP_SEQ.CORPCERTTYPE is
'法定代表人证件类型';

comment on column TEST1.LN_PRE_CUST_CORP_SEQ.CORPCERTNO is
'法定代表人证件号码';

comment on column TEST1.LN_PRE_CUST_CORP_SEQ.OPINSTCODE is
'机构编码';

comment on column TEST1.LN_PRE_CUST_CORP_SEQ.OPRID is
'操作员编码';

comment on column TEST1.LN_PRE_CUST_CORP_SEQ.OPDATE is
'操作日期';

/*==============================================================*/
/* Table: LN_PRE_CUST_LOAN_INFO                                 */
/*==============================================================*/
create table TEST1.LN_PRE_CUST_LOAN_INFO 
(
   ENT_NO               VARCHAR2(32)         not null,
   CIF_ID               VARCHAR2(16),
   CHINESE_FULLNAME     VARCHAR2(90),
   CNSHORTNAME          VARCHAR2(30),
   ENGNAME              VARCHAR2(60),
   ENGSHORTNAME         VARCHAR2(30),
   BUSI_GROUP_NO        VARCHAR2(32),
   BUSI_GROUP_NAME      VARCHAR2(90),
   BZLOCCOUNTY          VARCHAR2(3),
   ADDRURALFLAG         VARCHAR2(4),
   ENTTYPE              VARCHAR2(2),
   OCCHKDATE            VARCHAR2(8),
   CARDNO               VARCHAR2(16),
   CARDPWD              VARCHAR2(6),
   CARDDATE             VARCHAR2(8),
   CARDSTA              CHAR,
   REGDATE              VARCHAR2(8),
   CERTCHKDATE          VARCHAR2(8),
   CERTBEGDATE          VARCHAR2(8),
   CERTENDDATE          VARCHAR2(8),
   REGCAP               NUMBER(20,2),
   REGCUR               VARCHAR2(2),
   TAXREGINO            VARCHAR2(40),
   GOVTAXREGINO         VARCHAR2(40),
   STDINDCLASS          VARCHAR2(5),
   ECONOMYTYPE          VARCHAR2(3),
   OTHFLAG              CHAR,
   BRCSMALLFLAG         CHAR,
   BUSISCALE            VARCHAR2(2),
   BUSITYPE             VARCHAR2(2),
   PURPSKIND            VARCHAR2(2),
   RISKRANK             VARCHAR2(3),
   FARMKIND             VARCHAR2(5),
   LOANINDKIND          VARCHAR2(4),
   DEPFEATURE           VARCHAR2(4),
   DEPARTMENT           VARCHAR2(3),
   APPVINSTCODE         VARCHAR2(12),
   ENINSTCODE           VARCHAR2(12),
   ENINSTNAME           VARCHAR2(90),
   ABISBANKNO           VARCHAR2(6),
   LENDINST             VARCHAR2(12),
   MGRNAME              VARCHAR2(90),
   CERTTYPE             VARCHAR2(6),
   CERTNO               VARCHAR2(60),
   APPSTA               VARCHAR2(2)          default '0' not null,
   OPINSTCODE           VARCHAR2(12),
   OPRID                VARCHAR2(20),
   OPDATE               VARCHAR2(17),
   OPEN_FLAG            CHAR                 default '0' not null,
   constraint SYS_C0071869 primary key (ENT_NO)
);

comment on table TEST1.LN_PRE_CUST_LOAN_INFO is
'客户贷款资料表';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.CIF_ID is
'CIF客户ID';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.CHINESE_FULLNAME is
'中文全称';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.CNSHORTNAME is
'中文简称';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.ENGNAME is
'英文全称';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.ENGSHORTNAME is
'英文简称';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.BZLOCCOUNTY is
'主要营业场所所在国';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.ADDRURALFLAG is
'注册地城乡属性';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.ENTTYPE is
'单位类型';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.OCCHKDATE is
'组织机构代码年检日期';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.CARDNO is
'贷款卡编码';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.CARDPWD is
'贷款卡密码';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.CARDDATE is
'贷款卡有效期';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.CARDSTA is
'贷款卡状态';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.REGDATE is
'注册或批准成立日期';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.CERTCHKDATE is
'注册或登记证件年检日期';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.CERTBEGDATE is
'营业或有效期限起始日期';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.CERTENDDATE is
'营业或有效期限终止日期';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.REGCAP is
'注册或开办资金';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.REGCUR is
'注册或开办资金币种';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.TAXREGINO is
'国税登记证编号';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.GOVTAXREGINO is
'地税登记证编号';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.STDINDCLASS is
'国标行业分类';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.ECONOMYTYPE is
'经济类型';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.OTHFLAG is
'是否银监会小企业';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.BRCSMALLFLAG is
'是否农行小企业';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.BUSISCALE is
'企业规模';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.BUSITYPE is
'企业类型';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.PURPSKIND is
'用途分类';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.RISKRANK is
'风险分类';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.FARMKIND is
'人行涉农贷款分类';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.LOANINDKIND is
'贷款投向农行行业分类';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.DEPFEATURE is
'部门特色分类';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.DEPARTMENT is
'部门归属';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.APPVINSTCODE is
'审批机构代码';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.ENINSTCODE is
'经营机构代码';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.ENINSTNAME is
'经营机构名称';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.ABISBANKNO is
'ABIS行号';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.LENDINST is
'放款机构编码';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.MGRNAME is
'法定代表人姓名';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.CERTTYPE is
'法定代表人证件类型';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.CERTNO is
'法定代表人证件号码';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.APPSTA is
'审批状态';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.OPINSTCODE is
'机构编码';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.OPRID is
'操作员编码';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.OPDATE is
'操作日期';

comment on column TEST1.LN_PRE_CUST_LOAN_INFO.OPEN_FLAG is
'开户完成标志';

/*==============================================================*/
/* Table: LN_PRE_ERP_ENT_INFO                                   */
/*==============================================================*/
create table TEST1.LN_PRE_ERP_ENT_INFO 
(
   BUSI_GROUP_CODE      VARCHAR2(10)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   SD_FLAG              VARCHAR2(6)          not null,
   SRC_ID               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(32),
   CHINESE_FULLNAME     VARCHAR2(90),
   CHINESE_NAME         VARCHAR2(24),
   ENGLISH_FULLNAME     VARCHAR2(128),
   ENGLISH_NAME         VARCHAR2(16),
   REGISTER_COUNTRY     VARCHAR2(32),
   REGISTER_AREA        VARCHAR2(16),
   ADDRESS              VARCHAR2(90),
   ADDRESS_ATTRIBUTE    VARCHAR2(2),
   ENT_TYPE             VARCHAR2(2),
   VIRTUAL_ACCT         VARCHAR2(32),
   LOGO                 VARCHAR2(100),
   ORG_CODE             VARCHAR2(32),
   CHECK_DATE           VARCHAR2(8),
   REGISTER_IDENT_TYPE  CHAR,
   REGISTER_IDENT_NO    VARCHAR2(18),
   REGISTER_DATE        VARCHAR2(8),
   REG_CHECK_DATE       VARCHAR2(8),
   BUSI_LICENSE         VARCHAR2(32),
   BUSI_START_DATE      VARCHAR2(8),
   BUSI_END_DATE        VARCHAR2(8),
   TAX_NO               VARCHAR2(32),
   CORP_NAME            VARCHAR2(90),
   CORP_IDENT_TYPE      CHAR,
   CORP_IDENT_NO        VARCHAR2(18),
   CORP_IDENT_MOBILE    VARCHAR2(16),
   CONTRACTOR           VARCHAR2(90),
   EMAIL                VARCHAR2(32),
   TEL                  VARCHAR2(32),
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0072026 primary key (BUSI_GROUP_CODE, SRC_ID)
);

comment on table TEST1.LN_PRE_ERP_ENT_INFO is
'ERP企业信息表';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.BUSI_GROUP_CODE is
'商圈编码';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.SD_FLAG is
'上下游标志';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.SRC_ID is
'ERP系统客户主键';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.CHINESE_FULLNAME is
'中文全称';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.CHINESE_NAME is
'中文简称';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.ENGLISH_FULLNAME is
'英文全称';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.ENGLISH_NAME is
'英文简称';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.REGISTER_COUNTRY is
'注册国家或地区';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.REGISTER_AREA is
'注册地行政区划';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.ADDRESS is
'注册地址';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.ADDRESS_ATTRIBUTE is
'注册地城乡属性';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.ENT_TYPE is
'单位类型';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.VIRTUAL_ACCT is
'虚拟账户';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.LOGO is
'企业LOGO';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.ORG_CODE is
'组织机构代码';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.CHECK_DATE is
'组织机构代码年检日期';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.REGISTER_IDENT_TYPE is
'注册或登记证件类型';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.REGISTER_IDENT_NO is
'注册或登记证件号码';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.REGISTER_DATE is
'注册或批准成立日期';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.REG_CHECK_DATE is
'注册或登记证件年检日期';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.BUSI_LICENSE is
'营业执照代码';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.BUSI_START_DATE is
'营业或有效期限起始日期';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.BUSI_END_DATE is
'营业或有效期限终止日期';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.TAX_NO is
'纳税号';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.CORP_NAME is
'法定代表人';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.CORP_IDENT_TYPE is
'企业法人代表有效证件类型';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.CORP_IDENT_NO is
'企业法人代表有效证件号码';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.CORP_IDENT_MOBILE is
'企业法人代表手机号';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.CONTRACTOR is
'联系人';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.EMAIL is
'邮箱';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.TEL is
'联系电话';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_PRE_ERP_ENT_INFO.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_PRE_ERP_ENT_INFO_TMP                               */
/*==============================================================*/
create table TEST1.LN_PRE_ERP_ENT_INFO_TMP 
(
   BUSI_GROUP_CODE      VARCHAR2(10)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   SD_FLAG              VARCHAR2(6)          not null,
   SRC_ID               VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32),
   CIF_ID               VARCHAR2(32),
   CHINESE_FULLNAME     VARCHAR2(90),
   CHINESE_NAME         VARCHAR2(24),
   ENGLISH_FULLNAME     VARCHAR2(128),
   ENGLISH_NAME         VARCHAR2(16),
   REGISTER_COUNTRY     VARCHAR2(32),
   REGISTER_AREA        VARCHAR2(16),
   ADDRESS              VARCHAR2(90),
   ADDRESS_ATTRIBUTE    VARCHAR2(2),
   ENT_TYPE             VARCHAR2(2),
   VIRTUAL_ACCT         VARCHAR2(32),
   LOGO                 VARCHAR2(100),
   ORG_CODE             VARCHAR2(32),
   CHECK_DATE           VARCHAR2(8),
   REGISTER_IDENT_TYPE  CHAR,
   REGISTER_IDENT_NO    VARCHAR2(18),
   REGISTER_DATE        VARCHAR2(8),
   REG_CHECK_DATE       VARCHAR2(8),
   BUSI_LICENSE         VARCHAR2(32),
   BUSI_START_DATE      VARCHAR2(8),
   BUSI_END_DATE        VARCHAR2(8),
   TAX_NO               VARCHAR2(32),
   CORP_NAME            VARCHAR2(90),
   CORP_IDENT_TYPE      CHAR,
   CORP_IDENT_NO        VARCHAR2(18),
   CORP_IDENT_MOBILE    VARCHAR2(16),
   CONTRACTOR           VARCHAR2(90),
   EMAIL                VARCHAR2(32),
   TEL                  VARCHAR2(32),
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0072027 primary key (BUSI_GROUP_CODE, SRC_ID)
);

comment on table TEST1.LN_PRE_ERP_ENT_INFO_TMP is
'ERP企业信息临时表';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.BUSI_GROUP_CODE is
'商圈编码';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.SD_FLAG is
'上下游标志';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.SRC_ID is
'ERP系统客户主键';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.CHINESE_FULLNAME is
'中文全称';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.CHINESE_NAME is
'中文简称';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.ENGLISH_FULLNAME is
'英文全称';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.ENGLISH_NAME is
'英文简称';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.REGISTER_COUNTRY is
'注册国家或地区';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.REGISTER_AREA is
'注册地行政区划';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.ADDRESS is
'注册地址';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.ADDRESS_ATTRIBUTE is
'注册地城乡属性';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.ENT_TYPE is
'单位类型';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.VIRTUAL_ACCT is
'虚拟账户';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.LOGO is
'企业LOGO';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.ORG_CODE is
'组织机构代码';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.CHECK_DATE is
'组织机构代码年检日期';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.REGISTER_IDENT_TYPE is
'注册或登记证件类型';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.REGISTER_IDENT_NO is
'注册或登记证件号码';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.REGISTER_DATE is
'注册或批准成立日期';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.REG_CHECK_DATE is
'注册或登记证件年检日期';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.BUSI_LICENSE is
'营业执照代码';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.BUSI_START_DATE is
'营业或有效期限起始日期';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.BUSI_END_DATE is
'营业或有效期限终止日期';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.TAX_NO is
'纳税号';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.CORP_NAME is
'法定代表人';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.CORP_IDENT_TYPE is
'企业法人代表有效证件类型';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.CORP_IDENT_NO is
'企业法人代表有效证件号码';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.CORP_IDENT_MOBILE is
'企业法人代表手机号';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.CONTRACTOR is
'联系人';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.EMAIL is
'邮箱';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.TEL is
'联系电话';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_PRE_ERP_ENT_INFO_TMP.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_PST_C3_EZABLOANVCH                                 */
/*==============================================================*/
create table TEST1.LN_PST_C3_EZABLOANVCH 
(
   ELB_VCHNO            VARCHAR2(19)         not null,
   ELB_OPTKIND          VARCHAR2(5)          not null,
   ELB_INSTCODE         VARCHAR2(12),
   ELB_CLICODE          VARCHAR2(16),
   ELB_RATERESULT       VARCHAR2(2),
   ELB_ISLOWRISK        CHAR,
   ELB_CONTNO           VARCHAR2(18),
   ELB_LOANDATE         VARCHAR2(8),
   ELB_ENDDATE          VARCHAR2(8),
   ELB_REPAYWAY         VARCHAR2(2),
   ELB_CLSKIND          CHAR,
   ELB_CLSMODE          CHAR,
   ELB_GUARWAY          VARCHAR2(150),
   ELB_CURRKIND         VARCHAR2(2),
   ELB_REST             NUMBER(20,2),
   ELB_IINTREST         NUMBER(20,2),
   ELB_OINTREST         NUMBER(20,2),
   ELB_PRECLS           VARCHAR2(2),
   ELB_LOANCLS          VARCHAR2(2),
   ELB_OVERDATE         VARCHAR2(8),
   ELB_OVERDAYS         NUMBER,
   ELB_OVERKIND         CHAR,
   ELB_BATCHKIND        VARCHAR2(2),
   ELB_NOTIYKIND        CHAR,
   ELB_LASTOPCLS        VARCHAR2(2),
   ELB_OPRID            VARCHAR2(20),
   ELB_OPDATE           VARCHAR2(17),
   ELB_LASTOPDATE       VARCHAR2(17),
   SOURCE               VARCHAR2(32)         not null,
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071853 primary key (ELB_VCHNO)
);

comment on table TEST1.LN_PST_C3_EZABLOANVCH is
'C3逾期情况信息表';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_VCHNO is
'凭证编号';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_OPTKIND is
'业务品种';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_INSTCODE is
'放款机构编码';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_CLICODE is
'客户代码';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_RATERESULT is
'客户评级结果';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_ISLOWRISK is
'是否低风险业务';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_CONTNO is
'合同编号';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_LOANDATE is
'借款日期';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_ENDDATE is
'最后到期日期';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_REPAYWAY is
'还款方式';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_CLSKIND is
'分类种类';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_CLSMODE is
'分类模式';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_GUARWAY is
'担保方式';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_CURRKIND is
'币种';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_REST is
'余额';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_IINTREST is
'表内欠息';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_OINTREST is
'表外欠息';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_PRECLS is
'矩阵预分类结果';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_LOANCLS is
'分类形态';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_OVERDATE is
'逾期日期';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_OVERDAYS is
'逾期天数';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_OVERKIND is
'逾期类型';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_BATCHKIND is
'批处理类别';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_NOTIYKIND is
'调整类型';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_LASTOPCLS is
'最近一次手工调整级次';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_OPRID is
'操作员';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_OPDATE is
'操作日期';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ELB_LASTOPDATE is
'最后操作日期';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.SOURCE is
'数据来源';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_PST_C3_EZABLOANVCH.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_PST_C3_EZABLOANVCH_TMP                             */
/*==============================================================*/
create table TEST1.LN_PST_C3_EZABLOANVCH_TMP 
(
   ELB_VCHNO            VARCHAR2(19)         not null,
   ELB_OPTKIND          VARCHAR2(5)          not null,
   ELB_INSTCODE         VARCHAR2(12),
   ELB_CLICODE          VARCHAR2(16),
   ELB_RATERESULT       VARCHAR2(2),
   ELB_ISLOWRISK        CHAR,
   ELB_CONTNO           VARCHAR2(18),
   ELB_LOANDATE         VARCHAR2(8),
   ELB_ENDDATE          VARCHAR2(8),
   ELB_REPAYWAY         VARCHAR2(2),
   ELB_CLSKIND          CHAR,
   ELB_CLSMODE          CHAR,
   ELB_GUARWAY          VARCHAR2(150),
   ELB_CURRKIND         VARCHAR2(2),
   ELB_REST             NUMBER(20,2),
   ELB_IINTREST         NUMBER(20,2),
   ELB_OINTREST         NUMBER(20,2),
   ELB_PRECLS           VARCHAR2(2),
   ELB_LOANCLS          VARCHAR2(2),
   ELB_OVERDATE         VARCHAR2(8),
   ELB_OVERDAYS         NUMBER,
   ELB_OVERKIND         CHAR,
   ELB_BATCHKIND        VARCHAR2(2),
   ELB_NOTIYKIND        CHAR,
   ELB_LASTOPCLS        VARCHAR2(2),
   ELB_OPRID            VARCHAR2(20),
   ELB_OPDATE           VARCHAR2(17),
   ELB_LASTOPDATE       VARCHAR2(17),
   SOURCE               VARCHAR2(32)         not null,
   BUSI_DATE            VARCHAR2(8)          not null,
   ETL_DATE             DATE                 default SYSDATE not null,
   constraint SYS_C0071854 primary key (ELB_VCHNO)
);

comment on table TEST1.LN_PST_C3_EZABLOANVCH_TMP is
'C3逾期情况信息临时表';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_VCHNO is
'凭证编号';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_OPTKIND is
'业务品种';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_INSTCODE is
'放款机构编码';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_CLICODE is
'客户代码';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_RATERESULT is
'客户评级结果';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_ISLOWRISK is
'是否低风险业务';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_CONTNO is
'合同编号';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_LOANDATE is
'借款日期';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_ENDDATE is
'最后到期日期';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_REPAYWAY is
'还款方式';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_CLSKIND is
'分类种类';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_CLSMODE is
'分类模式';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_GUARWAY is
'担保方式';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_CURRKIND is
'币种';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_REST is
'余额';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_IINTREST is
'表内欠息';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_OINTREST is
'表外欠息';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_PRECLS is
'矩阵预分类结果';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_LOANCLS is
'分类形态';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_OVERDATE is
'逾期日期';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_OVERDAYS is
'逾期天数';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_OVERKIND is
'逾期类型';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_BATCHKIND is
'批处理类别';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_NOTIYKIND is
'调整类型';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_LASTOPCLS is
'最近一次手工调整级次';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_OPRID is
'操作员';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_OPDATE is
'操作日期';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ELB_LASTOPDATE is
'最后操作日期';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.SOURCE is
'数据来源';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.BUSI_DATE is
'数据业务日期';

comment on column TEST1.LN_PST_C3_EZABLOANVCH_TMP.ETL_DATE is
'数据处理日期';

/*==============================================================*/
/* Table: LN_PST_WARN_INFO                                      */
/*==============================================================*/
create table TEST1.LN_PST_WARN_INFO 
(
   WARN_NO              VARCHAR2(32)         not null,
   ENT_NO               VARCHAR2(32)         not null,
   CIF_ID               VARCHAR2(16),
   BSCORE               NUMBER(5,1),
   ETL_DATE             VARCHAR2(8),
   WARN_LEVEL           VARCHAR2(32),
   PROCESS_STATUS       VARCHAR2(32),
   PROCESS_DATE         VARCHAR2(17),
   PROCESS_MANAGER_NO   VARCHAR2(32),
   ISCLOSED             CHAR,
   CLOSE_MANAGER_NO     VARCHAR2(32),
   CLOSE_DATE           VARCHAR2(17),
   CLOSE_SUGGEST        VARCHAR2(20),
   constraint SYS_C0071851 primary key (WARN_NO)
);

comment on table TEST1.LN_PST_WARN_INFO is
'预警信息表';

comment on column TEST1.LN_PST_WARN_INFO.WARN_NO is
'预警编号';

comment on column TEST1.LN_PST_WARN_INFO.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_PST_WARN_INFO.CIF_ID is
'客户CIF编号';

comment on column TEST1.LN_PST_WARN_INFO.BSCORE is
'当前评分';

comment on column TEST1.LN_PST_WARN_INFO.ETL_DATE is
'预警日期';

comment on column TEST1.LN_PST_WARN_INFO.WARN_LEVEL is
'预警级别';

comment on column TEST1.LN_PST_WARN_INFO.PROCESS_STATUS is
'受理状态';

comment on column TEST1.LN_PST_WARN_INFO.PROCESS_DATE is
'受理时间';

comment on column TEST1.LN_PST_WARN_INFO.PROCESS_MANAGER_NO is
'受理人';

comment on column TEST1.LN_PST_WARN_INFO.ISCLOSED is
'是否关闭';

comment on column TEST1.LN_PST_WARN_INFO.CLOSE_MANAGER_NO is
'关闭人';

comment on column TEST1.LN_PST_WARN_INFO.CLOSE_DATE is
'关闭时间';

comment on column TEST1.LN_PST_WARN_INFO.CLOSE_SUGGEST is
'办结意见';

/*==============================================================*/
/* Table: LN_PST_WARN_PROCESS_RESULT                            */
/*==============================================================*/
create table TEST1.LN_PST_WARN_PROCESS_RESULT 
(
   WARN_NO              VARCHAR2(32)         not null,
   PROCESS_NO           VARCHAR2(32)         not null,
   PROCESS_MANAGER_NO   VARCHAR2(32),
   PROCESS_DATE         VARCHAR2(17),
   PROCESS_STATUS       VARCHAR2(2),
   PROCESS_SUGGEST      VARCHAR2(20),
   CLOSE_FLAG           CHAR,
   CLOSE_SUGGEST        VARCHAR2(20),
   PROCESS_REMARK       VARCHAR2(4000),
   constraint SYS_C0071852 primary key (WARN_NO, PROCESS_NO)
);

comment on table TEST1.LN_PST_WARN_PROCESS_RESULT is
'预警处理记录表';

comment on column TEST1.LN_PST_WARN_PROCESS_RESULT.WARN_NO is
'预警编号';

comment on column TEST1.LN_PST_WARN_PROCESS_RESULT.PROCESS_NO is
'处理序号';

comment on column TEST1.LN_PST_WARN_PROCESS_RESULT.PROCESS_MANAGER_NO is
'受理人';

comment on column TEST1.LN_PST_WARN_PROCESS_RESULT.PROCESS_DATE is
'处理日期';

comment on column TEST1.LN_PST_WARN_PROCESS_RESULT.PROCESS_STATUS is
'处理状态';

comment on column TEST1.LN_PST_WARN_PROCESS_RESULT.PROCESS_SUGGEST is
'处理意见';

comment on column TEST1.LN_PST_WARN_PROCESS_RESULT.CLOSE_FLAG is
'是否办结';

comment on column TEST1.LN_PST_WARN_PROCESS_RESULT.CLOSE_SUGGEST is
'办结意见';

comment on column TEST1.LN_PST_WARN_PROCESS_RESULT.PROCESS_REMARK is
'处理备注';

/*==============================================================*/
/* Table: LN_SM_BUSI_PARAM                                      */
/*==============================================================*/
create table TEST1.LN_SM_BUSI_PARAM 
(
   PAR_ID               VARCHAR2(32)         not null,
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   PAR_TYPE             VARCHAR2(2)          not null,
   PAR_CODE             VARCHAR2(32)         not null,
   PAR_NAME             VARCHAR2(32)         not null,
   PAR_C_VAL            VARCHAR2(383),
   PAR_N_VAL1           NUMBER(30,10),
   PAR_N_VAL2           NUMBER(30,10),
   PAR_D_DT1            VARCHAR2(8),
   PAR_D_DT2            VARCHAR2(8),
   PAR_REMARK           VARCHAR2(383),
   EFF_FROM_DATE        VARCHAR2(8),
   EFF_TO_DATE          VARCHAR2(8),
   PAR_STATUS           CHAR                 default '1' not null,
   OP_USER              VARCHAR2(32),
   OP_USER_NAME         VARCHAR2(45),
   OP_DATE              VARCHAR2(8),
   constraint SYS_C0071859 primary key (PAR_ID)
);

comment on table TEST1.LN_SM_BUSI_PARAM is
'贷款业务参数表';

comment on column TEST1.LN_SM_BUSI_PARAM.PAR_ID is
'参数ID';

comment on column TEST1.LN_SM_BUSI_PARAM.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_SM_BUSI_PARAM.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_SM_BUSI_PARAM.PAR_TYPE is
'参数类别';

comment on column TEST1.LN_SM_BUSI_PARAM.PAR_CODE is
'参数代码';

comment on column TEST1.LN_SM_BUSI_PARAM.PAR_NAME is
'参数名称';

comment on column TEST1.LN_SM_BUSI_PARAM.PAR_C_VAL is
'字符参数值';

comment on column TEST1.LN_SM_BUSI_PARAM.PAR_N_VAL1 is
'数字参数值1';

comment on column TEST1.LN_SM_BUSI_PARAM.PAR_N_VAL2 is
'数字参数值2';

comment on column TEST1.LN_SM_BUSI_PARAM.PAR_D_DT1 is
'日期参数值1';

comment on column TEST1.LN_SM_BUSI_PARAM.PAR_D_DT2 is
'日期参数值2';

comment on column TEST1.LN_SM_BUSI_PARAM.PAR_REMARK is
'参数描述';

comment on column TEST1.LN_SM_BUSI_PARAM.EFF_FROM_DATE is
'生效日期';

comment on column TEST1.LN_SM_BUSI_PARAM.EFF_TO_DATE is
'失效日期';

comment on column TEST1.LN_SM_BUSI_PARAM.PAR_STATUS is
'启用状态';

comment on column TEST1.LN_SM_BUSI_PARAM.OP_USER is
'操作人员编码';

comment on column TEST1.LN_SM_BUSI_PARAM.OP_USER_NAME is
'操作人员名称';

comment on column TEST1.LN_SM_BUSI_PARAM.OP_DATE is
'操作日期';

/*==============================================================*/
/* Table: LN_SM_CP_CODE_INFO                                    */
/*==============================================================*/
create table TEST1.LN_SM_CP_CODE_INFO 
(
   TYPE_CODE            VARCHAR2(32)         not null,
   TYPE_NAME            VARCHAR2(60)         not null,
   CONFIG_NAME          VARCHAR2(200)        not null,
   CONFIG_CODE          VARCHAR2(32)         not null,
   INDEX_NO             NUMBER,
   READ_FLAG            CHAR                 default '1' not null,
   DELETE_FLAG          CHAR                 default '1' not null,
   DESCRIPTION          VARCHAR2(200),
   constraint SYS_C0071860 primary key (TYPE_CODE, CONFIG_CODE)
);

comment on table TEST1.LN_SM_CP_CODE_INFO is
'贷款模块字典表';

comment on column TEST1.LN_SM_CP_CODE_INFO.TYPE_CODE is
'字典分类代码';

comment on column TEST1.LN_SM_CP_CODE_INFO.TYPE_NAME is
'字典分类名称，如性别';

comment on column TEST1.LN_SM_CP_CODE_INFO.CONFIG_NAME is
'值, 如男';

comment on column TEST1.LN_SM_CP_CODE_INFO.CONFIG_CODE is
'编码，如男对应的编码1';

comment on column TEST1.LN_SM_CP_CODE_INFO.INDEX_NO is
'顺序号，如1,2,3';

comment on column TEST1.LN_SM_CP_CODE_INFO.READ_FLAG is
'0：不可编辑 1：可编辑';

comment on column TEST1.LN_SM_CP_CODE_INFO.DELETE_FLAG is
'0:不可删除1:可删除';

comment on column TEST1.LN_SM_CP_CODE_INFO.DESCRIPTION is
'描述';

/*==============================================================*/
/* Table: LN_SM_LOAN_CONTR_TMPL                                 */
/*==============================================================*/
create table TEST1.LN_SM_LOAN_CONTR_TMPL 
(
   TMPL_ID              VARCHAR2(32)         not null,
   CONTR_TYPE           VARCHAR2(2),
   constraint SYS_C0071857 primary key (TMPL_ID)
);

comment on table TEST1.LN_SM_LOAN_CONTR_TMPL is
'贷款合同模板表';

comment on column TEST1.LN_SM_LOAN_CONTR_TMPL.TMPL_ID is
'模板ID';

comment on column TEST1.LN_SM_LOAN_CONTR_TMPL.CONTR_TYPE is
'合同类型';

/*==============================================================*/
/* Table: LN_SM_LOAN_PROD_INFO                                  */
/*==============================================================*/
create table TEST1.LN_SM_LOAN_PROD_INFO 
(
   PROD_ID              VARCHAR2(32)         not null,
   BUSI_GROUP_NO        VARCHAR2(32)         not null,
   BUSI_GROUP_NAME      VARCHAR2(90),
   PROD_TYPE            CHAR                 default '1' not null,
   ENT_NO               VARCHAR2(32),
   ENT_NAME             VARCHAR2(90),
   LOAN_NAME            VARCHAR2(45)         not null,
   LOAN_DESC            VARCHAR2(383),
   LOAN_CREDIT_LIMIT    NUMBER(22,2),
   LOAN_TERM_LEVEL      VARCHAR2(32),
   LOAN_TERM_VALUE      NUMBER(6),
   LOAN_REPAY_TYPE      VARCHAR2(32),
   LOAN_REPAY_TERM      VARCHAR2(32),
   LOAN_RATE            NUMBER(10,7),
   LOAN_BEGIN_RATE      NUMBER(10,7),
   LOAN_END_RATE        NUMBER(10,7),
   EFFECTIVE_FROM_DATE  VARCHAR2(8),
   EFFECTIVE_TO_DATE    VARCHAR2(8),
   STATUS               CHAR                 default '1' not null,
   OPERATE_MANAGER_NO   VARCHAR2(32),
   OPERATE_MANAGER_NAME VARCHAR2(32),
   OP_DATE              VARCHAR2(8),
   constraint SYS_C0071856 primary key (PROD_ID)
);

comment on table TEST1.LN_SM_LOAN_PROD_INFO is
'贷款产品信息表';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.PROD_ID is
'贷款产品ID';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.BUSI_GROUP_NAME is
'商圈名称';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.PROD_TYPE is
'产品类型';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.ENT_NO is
'企业客户编码（互联网银行）';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.ENT_NAME is
'客户名称';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.LOAN_NAME is
'贷款产品名称';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.LOAN_DESC is
'贷款产品描述';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.LOAN_CREDIT_LIMIT is
'产品额度上限';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.LOAN_TERM_LEVEL is
'贷款期限单位';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.LOAN_TERM_VALUE is
'贷款期限值';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.LOAN_REPAY_TYPE is
'贷款还款方式';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.LOAN_REPAY_TERM is
'还款周期';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.LOAN_RATE is
'利率';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.LOAN_BEGIN_RATE is
'利率下限';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.LOAN_END_RATE is
'利率上限';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.EFFECTIVE_FROM_DATE is
'生效日期';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.EFFECTIVE_TO_DATE is
'失效日期';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.STATUS is
'启用状态';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.OPERATE_MANAGER_NO is
'操作人员编码';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.OPERATE_MANAGER_NAME is
'操作人员名称';

comment on column TEST1.LN_SM_LOAN_PROD_INFO.OP_DATE is
'操作日期';

/*==============================================================*/
/* Table: LN_SM_SEND_MESSAGE                                    */
/*==============================================================*/
create table TEST1.LN_SM_SEND_MESSAGE 
(
   MSG_ID               VARCHAR2(32)         not null,
   BUSI_GROUP_NO        VARCHAR2(32),
   MSG_TYPE             CHAR                 not null,
   MSG_REQ              CHAR                 not null,
   MSG_SRC              VARCHAR2(32),
   MSG_SRC_OP           VARCHAR2(32),
   MSG_RECV             VARCHAR2(383),
   MSG_ADDR             VARCHAR2(383)        not null,
   MSG_TITLE            VARCHAR2(383),
   MSG_CONTENT          VARCHAR2(383),
   SEND_STATUS          CHAR                 not null,
   SEND_DATE            DATE,
   SEND_BACK            CHAR,
   SEND_BACK_DATE       DATE,
   constraint SYS_C0071858 primary key (MSG_ID)
);

comment on table TEST1.LN_SM_SEND_MESSAGE is
'推送信息记录表';

comment on column TEST1.LN_SM_SEND_MESSAGE.MSG_ID is
'消息ID';

comment on column TEST1.LN_SM_SEND_MESSAGE.BUSI_GROUP_NO is
'商圈编码';

comment on column TEST1.LN_SM_SEND_MESSAGE.MSG_TYPE is
'消息类型';

comment on column TEST1.LN_SM_SEND_MESSAGE.MSG_REQ is
'发送要求';

comment on column TEST1.LN_SM_SEND_MESSAGE.MSG_SRC is
'来源模块';

comment on column TEST1.LN_SM_SEND_MESSAGE.MSG_SRC_OP is
'来源操作';

comment on column TEST1.LN_SM_SEND_MESSAGE.MSG_RECV is
'接收人';

comment on column TEST1.LN_SM_SEND_MESSAGE.MSG_ADDR is
'接收地址';

comment on column TEST1.LN_SM_SEND_MESSAGE.MSG_TITLE is
'消息标题';

comment on column TEST1.LN_SM_SEND_MESSAGE.MSG_CONTENT is
'消息正文';

comment on column TEST1.LN_SM_SEND_MESSAGE.SEND_STATUS is
'发送状态';

comment on column TEST1.LN_SM_SEND_MESSAGE.SEND_DATE is
'发送日期时间';

comment on column TEST1.LN_SM_SEND_MESSAGE.SEND_BACK is
'反馈状态';

comment on column TEST1.LN_SM_SEND_MESSAGE.SEND_BACK_DATE is
'反馈日期时间';

/*==============================================================*/
/* Table: OL_APPRAISE                                           */
/*==============================================================*/
create table TEST1.OL_APPRAISE 
(
   APPR_NO              VARCHAR2(32)         not null,
   USER_NO              VARCHAR2(32)         not null,
   USER_NAME            VARCHAR2(32),
   PRODUCT_CODE         CHAR(2),
   SOURCE_NO            VARCHAR2(32)         not null,
   APPR_LEVEL           CHAR                 not null,
   APPR_CONTENT         VARCHAR2(750)        not null,
   APPR_TOP             CHAR,
   APPR_TIME            CHAR(17)             not null,
   SUP_APPR_NO          VARCHAR2(32),
   APPR_LINK            VARCHAR2(500),
   constraint PK_OL_APPRAISE primary key (APPR_NO)
);

comment on table TEST1.OL_APPRAISE is
'评价表';

comment on column TEST1.OL_APPRAISE.APPR_NO is
'评价编码';

comment on column TEST1.OL_APPRAISE.USER_NO is
'用户编码';

comment on column TEST1.OL_APPRAISE.USER_NAME is
'用户名';

comment on column TEST1.OL_APPRAISE.PRODUCT_CODE is
'产品代码';

comment on column TEST1.OL_APPRAISE.SOURCE_NO is
'来源编码';

comment on column TEST1.OL_APPRAISE.APPR_LEVEL is
'评价等级';

comment on column TEST1.OL_APPRAISE.APPR_CONTENT is
'评价内容';

comment on column TEST1.OL_APPRAISE.APPR_TOP is
'置顶';

comment on column TEST1.OL_APPRAISE.APPR_TIME is
'评价时间';

comment on column TEST1.OL_APPRAISE.SUP_APPR_NO is
'上级评价编码';

comment on column TEST1.OL_APPRAISE.APPR_LINK is
'评价链接';

/*==============================================================*/
/* Table: OL_BATCH_FILE                                         */
/*==============================================================*/
create table TEST1.OL_BATCH_FILE 
(
   SYS_SEQ              VARCHAR2(32)         not null,
   MERCH_NO             VARCHAR2(15),
   FILE_NAME            VARCHAR2(32),
   FILE_ID              VARCHAR2(64),
   CREATE_TIME          CHAR(17),
   constraint PK_OL_BATCH_FILE primary key (SYS_SEQ)
);

comment on table TEST1.OL_BATCH_FILE is
'OL_BATCH_FILE';

comment on column TEST1.OL_BATCH_FILE.SYS_SEQ is
'SYS_SEQ';

comment on column TEST1.OL_BATCH_FILE.MERCH_NO is
'MERCH_NO';

comment on column TEST1.OL_BATCH_FILE.FILE_NAME is
'FILE_NAME';

comment on column TEST1.OL_BATCH_FILE.FILE_ID is
'FILE_ID';

comment on column TEST1.OL_BATCH_FILE.CREATE_TIME is
'CREATE_TIME';

/*==============================================================*/
/* Table: OL_BATCH_USER                                         */
/*==============================================================*/
create table TEST1.OL_BATCH_USER 
(
   SYS_SEQ              VARCHAR2(32)         not null,
   MERCH_NAME           VARCHAR2(64),
   MERCH_NO             VARCHAR2(15),
   USER_NAME            VARCHAR2(64),
   USER_NO              VARCHAR2(32),
   RESERVE1             VARCHAR2(32),
   constraint PK_OL_BATCH_USER primary key (SYS_SEQ)
);

comment on table TEST1.OL_BATCH_USER is
'OL_BATCH_USER';

comment on column TEST1.OL_BATCH_USER.SYS_SEQ is
'SYS_SEQ';

comment on column TEST1.OL_BATCH_USER.MERCH_NAME is
'MERCH_NAME';

comment on column TEST1.OL_BATCH_USER.MERCH_NO is
'MERCH_NO';

comment on column TEST1.OL_BATCH_USER.USER_NAME is
'USER_NAME';

comment on column TEST1.OL_BATCH_USER.USER_NO is
'USER_NO';

comment on column TEST1.OL_BATCH_USER.RESERVE1 is
'RESERVE1';

/*==============================================================*/
/* Table: OL_BLOCK                                              */
/*==============================================================*/
create table TEST1.OL_BLOCK 
(
   BLOCK_NO             VARCHAR2(32)         not null,
   BLOCK_NAME           VARCHAR2(64)         not null,
   BLOCK_ORDER          NUMBER               not null,
   BLOCK_SHOW           CHAR                 not null,
   BLOCK_DESCRIPTION    VARCHAR2(280)        not null,
   ADD_USER             VARCHAR2(32)         not null,
   UPDATE_USER          VARCHAR2(32),
   ADD_TIME             CHAR(17)             not null,
   UPDATE_TIME          CHAR(17),
   constraint PK_OL_BLOCK primary key (BLOCK_NO)
);

comment on table TEST1.OL_BLOCK is
'分块信息表';

comment on column TEST1.OL_BLOCK.BLOCK_NO is
'分块编码';

comment on column TEST1.OL_BLOCK.BLOCK_NAME is
'分块名称';

comment on column TEST1.OL_BLOCK.BLOCK_ORDER is
'分块序号';

comment on column TEST1.OL_BLOCK.BLOCK_SHOW is
'是否显示分块';

comment on column TEST1.OL_BLOCK.BLOCK_DESCRIPTION is
'分块描述信息';

comment on column TEST1.OL_BLOCK.ADD_USER is
'添加用户';

comment on column TEST1.OL_BLOCK.UPDATE_USER is
'更新用户';

comment on column TEST1.OL_BLOCK.ADD_TIME is
'添加时间';

comment on column TEST1.OL_BLOCK.UPDATE_TIME is
'更新时间';

/*==============================================================*/
/* Table: OL_BRAND                                              */
/*==============================================================*/
create table TEST1.OL_BRAND 
(
   BRAND_NO             VARCHAR2(32)         not null,
   BLOCK_NO             VARCHAR2(32),
   BRAND_NAME           VARCHAR2(64)         not null,
   BRAND_LOGO           VARCHAR2(500)        not null,
   BRAND_LINK           VARCHAR2(500),
   BRAND_DESCRIPTION    VARCHAR2(900),
   BRAND_SPC_PAGE       CHAR                 not null,
   BRAND_BUILT_IN       CHAR                 not null,
   BRAND_STATUS         VARCHAR2(1)          not null,
   BRAND_SHOW           CHAR                 not null,
   BRAND_CLICK          CHAR                 not null,
   BRAND_ORDER          NUMBER,
   CONTACTS             VARCHAR2(64)         not null,
   MOBILE_NO            CHAR(14)             not null,
   MAIL                 VARCHAR2(64)         not null,
   ADD_USER             VARCHAR2(32)         not null,
   UPDATE_USER          VARCHAR2(32),
   ADD_TIME             CHAR(17)             not null,
   UPDATE_TIME          CHAR(17),
   BRAND_PIC            VARCHAR2(2000),
   MERCH_NO             VARCHAR2(15)         not null,
   MERCH_NAME           VARCHAR2(96),
   BLOCK_NAME           VARCHAR2(64),
   constraint PK_OL_BRAND primary key (BRAND_NO)
);

comment on table TEST1.OL_BRAND is
'品牌信息表';

comment on column TEST1.OL_BRAND.BRAND_NO is
'品牌编码';

comment on column TEST1.OL_BRAND.BLOCK_NO is
'分块编码';

comment on column TEST1.OL_BRAND.BRAND_NAME is
'品牌名称';

comment on column TEST1.OL_BRAND.BRAND_LOGO is
'BRAND_LOGO';

comment on column TEST1.OL_BRAND.BRAND_LINK is
'品牌链接地址';

comment on column TEST1.OL_BRAND.BRAND_DESCRIPTION is
'品牌描述信息';

comment on column TEST1.OL_BRAND.BRAND_SPC_PAGE is
'是否具有专场页';

comment on column TEST1.OL_BRAND.BRAND_BUILT_IN is
'是否内嵌';

comment on column TEST1.OL_BRAND.BRAND_STATUS is
'品牌状态';

comment on column TEST1.OL_BRAND.BRAND_SHOW is
'是否首页显示';

comment on column TEST1.OL_BRAND.BRAND_CLICK is
'是否可点击';

comment on column TEST1.OL_BRAND.BRAND_ORDER is
'品牌序号';

comment on column TEST1.OL_BRAND.CONTACTS is
'联系人';

comment on column TEST1.OL_BRAND.MOBILE_NO is
'手机号码';

comment on column TEST1.OL_BRAND.MAIL is
'邮箱地址';

comment on column TEST1.OL_BRAND.ADD_USER is
'添加用户';

comment on column TEST1.OL_BRAND.UPDATE_USER is
'更新用户';

comment on column TEST1.OL_BRAND.ADD_TIME is
'添加时间';

comment on column TEST1.OL_BRAND.UPDATE_TIME is
'更新时间';

comment on column TEST1.OL_BRAND.BRAND_PIC is
'品牌图片地址';

comment on column TEST1.OL_BRAND.MERCH_NO is
'商户编码';

comment on column TEST1.OL_BRAND.MERCH_NAME is
'商户名称';

comment on column TEST1.OL_BRAND.BLOCK_NAME is
'分块名称';

/*==============================================================*/
/* Table: OL_BRAND_PICTURE_RECYCLE                              */
/*==============================================================*/
create table TEST1.OL_BRAND_PICTURE_RECYCLE 
(
   PICTURE_NO           VARCHAR2(32)         not null,
   BRAND_NAME           VARCHAR2(64)         not null,
   PICTURE_TYPE         CHAR,
   BRAND_PIC            VARCHAR2(500)        not null,
   DELETE_TIME          CHAR(17)             not null,
   DELETE_USER          VARCHAR2(32)         not null
);

comment on table TEST1.OL_BRAND_PICTURE_RECYCLE is
'品牌图片回收信息表';

comment on column TEST1.OL_BRAND_PICTURE_RECYCLE.PICTURE_NO is
'图片编码';

comment on column TEST1.OL_BRAND_PICTURE_RECYCLE.BRAND_NAME is
'品牌名称';

comment on column TEST1.OL_BRAND_PICTURE_RECYCLE.PICTURE_TYPE is
'图片类型';

comment on column TEST1.OL_BRAND_PICTURE_RECYCLE.BRAND_PIC is
'图片地址';

comment on column TEST1.OL_BRAND_PICTURE_RECYCLE.DELETE_TIME is
'删除时间';

comment on column TEST1.OL_BRAND_PICTURE_RECYCLE.DELETE_USER is
'删除用户';

/*==============================================================*/
/* Table: OL_ERRLOG                                             */
/*==============================================================*/
create table TEST1.OL_ERRLOG 
(
   ID                   VARCHAR2(32)         not null,
   BUSI_TRANS_NO        VARCHAR2(32),
   LOG_DATE             CHAR(8),
   LOG_TIMESTAMP        VARCHAR2(32),
   ERROR_CODE           VARCHAR2(8),
   ERROR_DESC           VARCHAR2(4000),
   SESSION_ID           VARCHAR2(64),
   EXE_CLASS_NAME       VARCHAR2(150),
   constraint PK_OL_ERRLOG primary key (ID)
);

comment on table TEST1.OL_ERRLOG is
'网购产品错误日志记录表';

comment on column TEST1.OL_ERRLOG.ID is
'记录PK';

comment on column TEST1.OL_ERRLOG.BUSI_TRANS_NO is
'业务流水号';

comment on column TEST1.OL_ERRLOG.LOG_DATE is
'记录日期';

comment on column TEST1.OL_ERRLOG.LOG_TIMESTAMP is
'记录时间戳';

comment on column TEST1.OL_ERRLOG.ERROR_CODE is
'错误代码';

comment on column TEST1.OL_ERRLOG.ERROR_DESC is
'错误描述';

comment on column TEST1.OL_ERRLOG.SESSION_ID is
'会话ID';

comment on column TEST1.OL_ERRLOG.EXE_CLASS_NAME is
'执行类名称';

/*==============================================================*/
/* Table: OL_FRIENDS                                            */
/*==============================================================*/
create table TEST1.OL_FRIENDS 
(
   FRIENDS_NO           VARCHAR2(32)         not null,
   APPLY_USER_NO        VARCHAR2(32)         not null,
   APPLY_USER_NAME      VARCHAR2(32),
   ACCEPT_USER_NO       VARCHAR2(32)         not null,
   ACCEPT_USER_NAME     VARCHAR2(32),
   ADD_TIME             CHAR(17)             not null,
   constraint PK_OL_FRIENDS primary key (FRIENDS_NO)
);

comment on table TEST1.OL_FRIENDS is
'好友信息表';

comment on column TEST1.OL_FRIENDS.FRIENDS_NO is
'好友信息编码';

comment on column TEST1.OL_FRIENDS.APPLY_USER_NO is
'申请人编码';

comment on column TEST1.OL_FRIENDS.APPLY_USER_NAME is
'申请人用户名';

comment on column TEST1.OL_FRIENDS.ACCEPT_USER_NO is
'接受人编码';

comment on column TEST1.OL_FRIENDS.ACCEPT_USER_NAME is
'接受人用户名';

comment on column TEST1.OL_FRIENDS.ADD_TIME is
'好友添加时间';

/*==============================================================*/
/* Table: OL_LINK_CLICK_RECORD                                  */
/*==============================================================*/
create table TEST1.OL_LINK_CLICK_RECORD 
(
   LCR_NO               VARCHAR2(32)         not null,
   LINK                 VARCHAR2(500)        not null,
   BRAND_NO             VARCHAR2(32)         not null,
   TIME                 CHAR(17)             not null,
   USER_NO              VARCHAR2(32),
   constraint PK_OL_LINK_CLICK_RECORD primary key (LCR_NO)
);

comment on table TEST1.OL_LINK_CLICK_RECORD is
'链接点击记录表';

comment on column TEST1.OL_LINK_CLICK_RECORD.LCR_NO is
'链接点击记录编码';

comment on column TEST1.OL_LINK_CLICK_RECORD.LINK is
'链接地址';

comment on column TEST1.OL_LINK_CLICK_RECORD.BRAND_NO is
'品牌编码';

comment on column TEST1.OL_LINK_CLICK_RECORD.TIME is
'点击时间';

comment on column TEST1.OL_LINK_CLICK_RECORD.USER_NO is
'用户编码';

/*==============================================================*/
/* Table: OL_LINK_CODE_REC                                      */
/*==============================================================*/
create table TEST1.OL_LINK_CODE_REC 
(
   LINK_NO              VARCHAR2(32)         not null,
   LINK_URL             VARCHAR2(500),
   LINK_POST_VALUE      VARCHAR2(1000),
   LINK_ADD_TIME        CHAR(17),
   LINK_RESERVE         VARCHAR2(32),
   constraint PK_OL_LINK_CODE_REC primary key (LINK_NO)
);

comment on table TEST1.OL_LINK_CODE_REC is
'链接码表';

comment on column TEST1.OL_LINK_CODE_REC.LINK_NO is
'链接编码';

comment on column TEST1.OL_LINK_CODE_REC.LINK_URL is
'链接路径';

comment on column TEST1.OL_LINK_CODE_REC.LINK_POST_VALUE is
'提交数据';

comment on column TEST1.OL_LINK_CODE_REC.LINK_ADD_TIME is
'添加时间';

comment on column TEST1.OL_LINK_CODE_REC.LINK_RESERVE is
'保留字段';

/*==============================================================*/
/* Table: OL_LINK_SHARE                                         */
/*==============================================================*/
create table TEST1.OL_LINK_SHARE 
(
   SHARE_NO             VARCHAR2(32)         not null,
   USER_NO              VARCHAR2(32)         not null,
   SHARE_PIC            VARCHAR2(500)        not null,
   SHARE_SOURCE_NO      VARCHAR2(32)         not null,
   SHARE_LINK           VARCHAR2(500)        not null,
   SHARE_DESCRIPTION    VARCHAR2(600),
   PRODUCT_CODE         CHAR(2)              not null,
   SHARE_STATUS         CHAR,
   SHARE_TIME           CHAR(17)             not null,
   USER_NAME            VARCHAR2(32),
   constraint PK_OL_LINK_SHARE primary key (SHARE_NO)
);

comment on table TEST1.OL_LINK_SHARE is
'链接分享信息表';

comment on column TEST1.OL_LINK_SHARE.SHARE_NO is
'链接分享编码';

comment on column TEST1.OL_LINK_SHARE.USER_NO is
'分享用户编码';

comment on column TEST1.OL_LINK_SHARE.SHARE_PIC is
'分享图片地址';

comment on column TEST1.OL_LINK_SHARE.SHARE_SOURCE_NO is
'分享来源编码';

comment on column TEST1.OL_LINK_SHARE.SHARE_LINK is
'分享链接';

comment on column TEST1.OL_LINK_SHARE.SHARE_DESCRIPTION is
'分享描述';

comment on column TEST1.OL_LINK_SHARE.PRODUCT_CODE is
'产品代码';

comment on column TEST1.OL_LINK_SHARE.SHARE_STATUS is
'是否分享';

comment on column TEST1.OL_LINK_SHARE.SHARE_TIME is
'分享时间';

comment on column TEST1.OL_LINK_SHARE.USER_NAME is
'分享用户名';

/*==============================================================*/
/* Table: OL_MERCHANTS                                          */
/*==============================================================*/
create table TEST1.OL_MERCHANTS 
(
   MERCH_NO             VARCHAR2(15)         not null,
   MERCH_NAME           VARCHAR2(96),
   MERCH_ADDR           VARCHAR2(192),
   RATE_NO              NUMBER,
   MANAGER              VARCHAR2(25),
   PHONE                VARCHAR2(30),
   EMAIL                VARCHAR2(128),
   ACCT_NO              VARCHAR2(32),
   BANK_NO              VARCHAR2(32),
   MERCH_STATUS         CHAR                 not null,
   REVERSE1             VARCHAR2(48),
   REVERSE2             VARCHAR2(48),
   KEY                  VARCHAR2(1600),
   PAY_METHOD           VARCHAR2(16),
   constraint PK_OL_MERCHANTS primary key (MERCH_NO)
);

comment on table TEST1.OL_MERCHANTS is
'商户信息表';

comment on column TEST1.OL_MERCHANTS.MERCH_NO is
'商户号';

comment on column TEST1.OL_MERCHANTS.MERCH_NAME is
'商户名称';

comment on column TEST1.OL_MERCHANTS.MERCH_ADDR is
'商户地址';

comment on column TEST1.OL_MERCHANTS.RATE_NO is
'商户费率策略';

comment on column TEST1.OL_MERCHANTS.MANAGER is
'负责人姓名';

comment on column TEST1.OL_MERCHANTS.PHONE is
'联系电话';

comment on column TEST1.OL_MERCHANTS.EMAIL is
'电子邮箱';

comment on column TEST1.OL_MERCHANTS.ACCT_NO is
'虚拟账户号';

comment on column TEST1.OL_MERCHANTS.BANK_NO is
'实体账户号';

comment on column TEST1.OL_MERCHANTS.MERCH_STATUS is
'商户状态：0、正常 ；1、关闭 ；2、测试中； 3、 维护中 ；4、已销户';

comment on column TEST1.OL_MERCHANTS.REVERSE1 is
'保留';

comment on column TEST1.OL_MERCHANTS.REVERSE2 is
'保留2';

comment on column TEST1.OL_MERCHANTS.KEY is
'商户key';

comment on column TEST1.OL_MERCHANTS.PAY_METHOD is
'支付方式';

/*==============================================================*/
/* Table: OL_MSG_PARAM                                          */
/*==============================================================*/
create table TEST1.OL_MSG_PARAM 
(
   MSG_PARAM_CODE       VARCHAR2(32)         not null,
   MSG_PARAM_NAME       VARCHAR2(60)         not null,
   MSG_PARAM_VALUE      VARCHAR2(200)        not null,
   ADD_TIME             CHAR(17)             not null,
   constraint PK_OL_MSG_PARAM primary key (MSG_PARAM_CODE)
);

comment on table TEST1.OL_MSG_PARAM is
'消息参数表';

comment on column TEST1.OL_MSG_PARAM.MSG_PARAM_CODE is
'参数编码';

comment on column TEST1.OL_MSG_PARAM.MSG_PARAM_NAME is
'参数名称';

comment on column TEST1.OL_MSG_PARAM.MSG_PARAM_VALUE is
'参数值';

comment on column TEST1.OL_MSG_PARAM.ADD_TIME is
'添加时间';

/*==============================================================*/
/* Table: OL_ORDER_TRACE                                        */
/*==============================================================*/
create table TEST1.OL_ORDER_TRACE 
(
   USER_NO              VARCHAR2(32),
   ACCT_NO              VARCHAR2(32),
   SYS_SEQ              VARCHAR2(32)         not null,
   SET_DATE             VARCHAR2(8),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   TRANS_TYPE           VARCHAR2(6),
   MERCH_NO             VARCHAR2(15),
   MERCH_ORDERNO        VARCHAR2(32),
   ORG_MERCH_ORDERNO    VARCHAR2(32),
   SUB_MERCH_NO         VARCHAR2(15),
   SUB_MERCH_NAME       VARCHAR2(40),
   MERCH_DT             VARCHAR2(17),
   ORDER_OVER_DT        VARCHAR2(17),
   PAY_OVER_DT          VARCHAR2(17),
   BACK_OVER_DT         VARCHAR2(17),
   TRANS_CURR           VARCHAR2(3),
   ORDER_AMT            NUMBER(25,2),
   ORDER_FEE_AMT        NUMBER(25,2),
   SYS_FEE_AMT          NUMBER(25,2),
   BLANCE_AMT           NUMBER(25,2),
   EBANK_AMT            NUMBER(25,2),
   FASTPAY_AMT          NUMBER(25,2),
   CREDIT_AMT           NUMBER(25,2),
   ICOIN_PAY_AMT        NUMBER(25,2),
   INSTALLMENT          VARCHAR2(5),
   ORDER_STAT           CHAR,
   PAY_FLAG             CHAR(32),
   EXT_ACCT_NO          VARCHAR2(32),
   EXT_ACCT_NAME        VARCHAR2(50),
   FRONT_URL            VARCHAR2(256),
   BACK_URL             VARCHAR2(256),
   SHIPPING_ADDR        VARCHAR2(256),
   GOODS_URL            VARCHAR2(256),
   GOODS_NAME           VARCHAR2(50),
   GOODS_INFO           VARCHAR2(50),
   REMARK               VARCHAR2(128),
   ACCOUNTING_TYPE      CHAR,
   RESP_CODE            VARCHAR2(6),
   RESP_MSG             VARCHAR2(128),
   REVERSE1             VARCHAR2(128),
   REVERSE2             VARCHAR2(128),
   GOODS_TYPE           CHAR,
   constraint PK_OL_ORDER_TRACE primary key (SYS_SEQ)
);

comment on table TEST1.OL_ORDER_TRACE is
'网购订单流水表';

comment on column TEST1.OL_ORDER_TRACE.USER_NO is
'用户ID';

comment on column TEST1.OL_ORDER_TRACE.ACCT_NO is
'账号';

comment on column TEST1.OL_ORDER_TRACE.SYS_SEQ is
'支付平台流水号';

comment on column TEST1.OL_ORDER_TRACE.SET_DATE is
'清算日期';

comment on column TEST1.OL_ORDER_TRACE.TRANS_DATE is
'交易日期';

comment on column TEST1.OL_ORDER_TRACE.TRANS_TIME is
'交易时间';

comment on column TEST1.OL_ORDER_TRACE.TRANS_TYPE is
'交易类型';

comment on column TEST1.OL_ORDER_TRACE.MERCH_NO is
'平台商户号';

comment on column TEST1.OL_ORDER_TRACE.MERCH_ORDERNO is
'商户订单号';

comment on column TEST1.OL_ORDER_TRACE.ORG_MERCH_ORDERNO is
'原商户订单号';

comment on column TEST1.OL_ORDER_TRACE.SUB_MERCH_NO is
'子商户代码';

comment on column TEST1.OL_ORDER_TRACE.SUB_MERCH_NAME is
'子商户名称';

comment on column TEST1.OL_ORDER_TRACE.MERCH_DT is
'订单日期';

comment on column TEST1.OL_ORDER_TRACE.ORDER_OVER_DT is
'订单超时时间';

comment on column TEST1.OL_ORDER_TRACE.PAY_OVER_DT is
'支付超时时间';

comment on column TEST1.OL_ORDER_TRACE.BACK_OVER_DT is
'退单限制时间';

comment on column TEST1.OL_ORDER_TRACE.TRANS_CURR is
'交易币种';

comment on column TEST1.OL_ORDER_TRACE.ORDER_AMT is
'订单金额';

comment on column TEST1.OL_ORDER_TRACE.ORDER_FEE_AMT is
'订单手续费';

comment on column TEST1.OL_ORDER_TRACE.SYS_FEE_AMT is
'平台手续费';

comment on column TEST1.OL_ORDER_TRACE.BLANCE_AMT is
'余额支付金额';

comment on column TEST1.OL_ORDER_TRACE.EBANK_AMT is
'网银支付金额';

comment on column TEST1.OL_ORDER_TRACE.FASTPAY_AMT is
'快捷支付金额';

comment on column TEST1.OL_ORDER_TRACE.CREDIT_AMT is
'信用卡支付金额';

comment on column TEST1.OL_ORDER_TRACE.ICOIN_PAY_AMT is
'农银通宝币支付金额';

comment on column TEST1.OL_ORDER_TRACE.INSTALLMENT is
'分期数';

comment on column TEST1.OL_ORDER_TRACE.ORDER_STAT is
'订单状态';

comment on column TEST1.OL_ORDER_TRACE.PAY_FLAG is
'支付方式';

comment on column TEST1.OL_ORDER_TRACE.EXT_ACCT_NO is
'扩展帐号';

comment on column TEST1.OL_ORDER_TRACE.EXT_ACCT_NAME is
'扩展帐号名称';

comment on column TEST1.OL_ORDER_TRACE.FRONT_URL is
'前台通知地址';

comment on column TEST1.OL_ORDER_TRACE.BACK_URL is
'后台通知地址';

comment on column TEST1.OL_ORDER_TRACE.SHIPPING_ADDR is
'收货地址';

comment on column TEST1.OL_ORDER_TRACE.GOODS_URL is
'商品URL';

comment on column TEST1.OL_ORDER_TRACE.GOODS_NAME is
'商品名称';

comment on column TEST1.OL_ORDER_TRACE.GOODS_INFO is
'商品信息';

comment on column TEST1.OL_ORDER_TRACE.REMARK is
'备注信息';

comment on column TEST1.OL_ORDER_TRACE.ACCOUNTING_TYPE is
'账务类型';

comment on column TEST1.OL_ORDER_TRACE.RESP_CODE is
'响应码';

comment on column TEST1.OL_ORDER_TRACE.RESP_MSG is
'响应信息';

comment on column TEST1.OL_ORDER_TRACE.REVERSE1 is
'保留1';

comment on column TEST1.OL_ORDER_TRACE.REVERSE2 is
'保留2';

comment on column TEST1.OL_ORDER_TRACE.GOODS_TYPE is
'GOODS_TYPE';

/*==============================================================*/
/* Table: OL_PRODUCT_COLLECTION                                 */
/*==============================================================*/
create table TEST1.OL_PRODUCT_COLLECTION 
(
   COLLECTION_NO        VARCHAR2(32)         not null,
   USER_NO              VARCHAR2(32)         not null,
   SOURCE_NO            VARCHAR2(32)         not null,
   COLLECTION_PIC       VARCHAR2(500),
   COLLECTION_LINK      VARCHAR2(500)        not null,
   PRODUCT_CODE         CHAR(2)              not null,
   COLLECTION_TIME      CHAR(17)             not null,
   COLLECTION_TITLE     VARCHAR2(64)         not null,
   constraint PK_OL_COLLECTION primary key (COLLECTION_NO)
);

comment on table TEST1.OL_PRODUCT_COLLECTION is
'收藏信息表';

comment on column TEST1.OL_PRODUCT_COLLECTION.COLLECTION_NO is
'收藏编码';

comment on column TEST1.OL_PRODUCT_COLLECTION.USER_NO is
'收藏用户编码';

comment on column TEST1.OL_PRODUCT_COLLECTION.SOURCE_NO is
'收藏来源编码';

comment on column TEST1.OL_PRODUCT_COLLECTION.COLLECTION_PIC is
'收藏图片地址';

comment on column TEST1.OL_PRODUCT_COLLECTION.COLLECTION_LINK is
'收藏链接';

comment on column TEST1.OL_PRODUCT_COLLECTION.PRODUCT_CODE is
'产品代码';

comment on column TEST1.OL_PRODUCT_COLLECTION.COLLECTION_TIME is
'收藏时间';

comment on column TEST1.OL_PRODUCT_COLLECTION.COLLECTION_TITLE is
'收藏标题';

/*==============================================================*/
/* Table: OL_SOCIAL_MSG_REC                                     */
/*==============================================================*/
create table TEST1.OL_SOCIAL_MSG_REC 
(
   MSG_REC_NO           VARCHAR2(32)         not null,
   SRC_USER_NO          VARCHAR2(32)         not null,
   SRC_USER_NAME        VARCHAR2(32),
   DEST_USER_NO         VARCHAR2(32)         not null,
   DEST_USER_NAME       VARCHAR2(32),
   MSG_TYPE             CHAR                 not null,
   MSG_CONTENT          VARCHAR2(200)        not null,
   SEND_TIME            VARCHAR2(17)         not null,
   constraint PK_OL_SOCIAL_MSG_REC primary key (MSG_REC_NO)
);

comment on table TEST1.OL_SOCIAL_MSG_REC is
'消息记录表';

comment on column TEST1.OL_SOCIAL_MSG_REC.MSG_REC_NO is
'消息编码';

comment on column TEST1.OL_SOCIAL_MSG_REC.SRC_USER_NO is
'发送人编码';

comment on column TEST1.OL_SOCIAL_MSG_REC.SRC_USER_NAME is
'发送人姓名';

comment on column TEST1.OL_SOCIAL_MSG_REC.DEST_USER_NO is
'接受人编码';

comment on column TEST1.OL_SOCIAL_MSG_REC.DEST_USER_NAME is
'接受人姓名';

comment on column TEST1.OL_SOCIAL_MSG_REC.MSG_TYPE is
'类型';

comment on column TEST1.OL_SOCIAL_MSG_REC.MSG_CONTENT is
'内容';

comment on column TEST1.OL_SOCIAL_MSG_REC.SEND_TIME is
'发送时间';

/*==============================================================*/
/* Table: OL_USER_ACTION_REC                                    */
/*==============================================================*/
create table TEST1.OL_USER_ACTION_REC 
(
   ACTION_REC_NO        VARCHAR2(32)         not null,
   SRC_USER_NO          VARCHAR2(32)         not null,
   DEST_USER_NO         VARCHAR2(32)         not null,
   SRC_REC_NO           VARCHAR2(32),
   GENERATE_TIME        CHAR(17)             not null,
   ACTION_TYPE          CHAR                 not null,
   constraint PK_OL_USER_ACTION_REC primary key (ACTION_REC_NO)
);

comment on table TEST1.OL_USER_ACTION_REC is
'用户动态记录表';

comment on column TEST1.OL_USER_ACTION_REC.ACTION_REC_NO is
'动态记录编码';

comment on column TEST1.OL_USER_ACTION_REC.SRC_USER_NO is
'来源用户编码';

comment on column TEST1.OL_USER_ACTION_REC.DEST_USER_NO is
'目标用户编码';

comment on column TEST1.OL_USER_ACTION_REC.SRC_REC_NO is
'记录来源编码';

comment on column TEST1.OL_USER_ACTION_REC.GENERATE_TIME is
'产生时间';

comment on column TEST1.OL_USER_ACTION_REC.ACTION_TYPE is
'动态类型';

/*==============================================================*/
/* Table: OL_USER_MSG_REC                                       */
/*==============================================================*/
create table TEST1.OL_USER_MSG_REC 
(
   REC_NO               VARCHAR2(32)         not null,
   SENDER_NO            VARCHAR2(32),
   SENDER               VARCHAR2(60),
   RECEIVER_NO          VARCHAR2(32)         not null,
   RECEIVER             VARCHAR2(60)         not null,
   MSG_CONTENT          VARCHAR2(1000)       not null,
   CREATE_TIME          CHAR(17)             not null,
   READ_FLAG            CHAR                 not null,
   constraint PK_OL_USER_MSG_REC primary key (REC_NO)
);

comment on table TEST1.OL_USER_MSG_REC is
'用户私信记录表';

comment on column TEST1.OL_USER_MSG_REC.REC_NO is
'记录编码';

comment on column TEST1.OL_USER_MSG_REC.SENDER_NO is
'发送人编码';

comment on column TEST1.OL_USER_MSG_REC.SENDER is
'发送人姓名';

comment on column TEST1.OL_USER_MSG_REC.RECEIVER_NO is
'接收人编码';

comment on column TEST1.OL_USER_MSG_REC.RECEIVER is
'接收人姓名';

comment on column TEST1.OL_USER_MSG_REC.MSG_CONTENT is
'消息内容';

comment on column TEST1.OL_USER_MSG_REC.CREATE_TIME is
'消息发送时间';

comment on column TEST1.OL_USER_MSG_REC.READ_FLAG is
'阅读标志';

/*==============================================================*/
/* Table: TRN_TRANLOGXML                                        */
/*==============================================================*/
create table TEST1.TRN_TRANLOGXML 
(
   TLX_SEQNO            VARCHAR2(50)         not null,
   TLX_TRNCOD           VARCHAR2(50)         not null,
   TLX_SEND             CLOB                 default NULL,
   TLX_RECV             CLOB                 default NULL,
   TLX_DATE             DATE                 default SYSDATE
);

comment on table TEST1.TRN_TRANLOGXML is
'TRN_TRANLOGXML';

comment on column TEST1.TRN_TRANLOGXML.TLX_SEQNO is
'TLX_SEQNO';

comment on column TEST1.TRN_TRANLOGXML.TLX_TRNCOD is
'TLX_TRNCOD';

comment on column TEST1.TRN_TRANLOGXML.TLX_SEND is
'TLX_SEND';

comment on column TEST1.TRN_TRANLOGXML.TLX_RECV is
'TLX_RECV';

comment on column TEST1.TRN_TRANLOGXML.TLX_DATE is
'TLX_DATE';

/*==============================================================*/
/* Table: WB_ERRLOG                                             */
/*==============================================================*/
create table TEST1.WB_ERRLOG 
(
   ID                   VARCHAR2(32)         not null,
   BUSI_TRANS_NO        VARCHAR2(32),
   LOG_DATE             CHAR(8),
   LOG_TIMESTAMP        VARCHAR2(32),
   ERROR_CODE           VARCHAR2(8),
   ERROR_DESC           VARCHAR2(4000),
   SESSION_ID           VARCHAR2(64),
   EXE_CLASS_NAME       VARCHAR2(150),
   constraint PK_WB_ERRLOG primary key (ID)
);

comment on table TEST1.WB_ERRLOG is
'业务看板错误日志记录表';

comment on column TEST1.WB_ERRLOG.ID is
'记录PK';

comment on column TEST1.WB_ERRLOG.BUSI_TRANS_NO is
'业务流水号';

comment on column TEST1.WB_ERRLOG.LOG_DATE is
'记录日期';

comment on column TEST1.WB_ERRLOG.LOG_TIMESTAMP is
'记录时间戳';

comment on column TEST1.WB_ERRLOG.ERROR_CODE is
'错误代码';

comment on column TEST1.WB_ERRLOG.ERROR_DESC is
'错误描述';

comment on column TEST1.WB_ERRLOG.SESSION_ID is
'会话ID';

comment on column TEST1.WB_ERRLOG.EXE_CLASS_NAME is
'执行类名称';

/*==============================================================*/
/* Table: WI_CONTACT_LIST                                       */
/*==============================================================*/
create table TEST1.WI_CONTACT_LIST 
(
   USER_NO              VARCHAR2(32)         not null,
   INPUT_DATE           CHAR(8)              not null,
   CONTACT_NAME         VARCHAR2(60)         not null,
   CERT_ID              VARCHAR2(18)         not null,
   GENDER               CHAR                 not null,
   BIRTHDAY             CHAR(8)              not null,
   PHONE                VARCHAR2(18),
   MAIL                 VARCHAR2(50),
   RELATION             CHAR(2)              not null,
   CERT_TYPE            VARCHAR2(6)          not null,
   ADDRESS              VARCHAR2(150),
   POST_CODE            CHAR(6),
   MOBILE               VARCHAR2(18),
   PROVINCE             VARCHAR2(50),
   CITY                 VARCHAR2(50),
   CERT_EFF_DATE        CHAR(8),
   COUNTRY              VARCHAR2(50),
   constraint PK_WI_CONTACT_LIST primary key (USER_NO, CERT_ID, CERT_TYPE)
);

comment on table TEST1.WI_CONTACT_LIST is
'常用联系人信息表';

comment on column TEST1.WI_CONTACT_LIST.USER_NO is
'客户号';

comment on column TEST1.WI_CONTACT_LIST.INPUT_DATE is
'保存时间';

comment on column TEST1.WI_CONTACT_LIST.CONTACT_NAME is
'姓名';

comment on column TEST1.WI_CONTACT_LIST.CERT_ID is
'证件号码';

comment on column TEST1.WI_CONTACT_LIST.GENDER is
'性别';

comment on column TEST1.WI_CONTACT_LIST.BIRTHDAY is
'生日';

comment on column TEST1.WI_CONTACT_LIST.PHONE is
'电话';

comment on column TEST1.WI_CONTACT_LIST.MAIL is
'邮箱';

comment on column TEST1.WI_CONTACT_LIST.RELATION is
'与客户关系';

comment on column TEST1.WI_CONTACT_LIST.CERT_TYPE is
'证件类型';

comment on column TEST1.WI_CONTACT_LIST.ADDRESS is
'地址';

comment on column TEST1.WI_CONTACT_LIST.POST_CODE is
'邮编';

comment on column TEST1.WI_CONTACT_LIST.MOBILE is
'手机';

comment on column TEST1.WI_CONTACT_LIST.PROVINCE is
'常驻省';

comment on column TEST1.WI_CONTACT_LIST.CITY is
'常驻城市';

comment on column TEST1.WI_CONTACT_LIST.CERT_EFF_DATE is
'证件有效期';

comment on column TEST1.WI_CONTACT_LIST.COUNTRY is
'国籍';




/*==============================================================*/
/* Table: WI_EP_RECORD                                          */
/*==============================================================*/
create table TEST1.WI_EP_RECORD 
(
   EP_RECORD_ID         VARCHAR2(32)         not null,
   USER_NO              VARCHAR2(32)         not null,
   EP_RECORD_NAME       VARCHAR2(48)         not null,
   EP_RECORD_NO         CHAR(4)              not null,
   EP_RECORD_NUMBER     VARCHAR2(32)         not null,
   EP_RECORD_NUMBER2    VARCHAR2(32),
   EP_RECORD_NUMBER3    VARCHAR2(32),
   EP_BRANCH_NO         CHAR(4)              not null,
   EP_RECORD_PROVINCE   VARCHAR2(48),
   EP_RECORD_CITY       VARCHAR2(48),
   EP_RECORD_CPYNO      VARCHAR2(48),
   EP_RECORD_COMPANY    VARCHAR2(96),
   EP_RECORD_TIME       CHAR(17)             not null,
   EP_RECORD_CARD       VARCHAR2(48)         not null,
   EP_RECORD_AMOUNT     NUMBER(25,2)         not null,
   EP_RECORD_FEE        NUMBER(25,2),
   EP_RECORD_TOTALAMT   NUMBER(25,2)         not null,
   EP_REMARK            VARCHAR2(192),
   EP_RECORD_STAT       CHAR,
   constraint PK_WI_EP_RECORD primary key (EP_RECORD_ID)
);

comment on table TEST1.WI_EP_RECORD is
'主要存储水/电/煤气/手机话费等交易流水';

comment on column TEST1.WI_EP_RECORD.EP_RECORD_ID is
'EP_RECORD_ID';

comment on column TEST1.WI_EP_RECORD.USER_NO is
'USER_NO';

comment on column TEST1.WI_EP_RECORD.EP_RECORD_NAME is
'EP_RECORD_NAME';

comment on column TEST1.WI_EP_RECORD.EP_RECORD_NO is
'EP_RECORD_NO';

comment on column TEST1.WI_EP_RECORD.EP_RECORD_NUMBER is
'EP_RECORD_NUMBER';

comment on column TEST1.WI_EP_RECORD.EP_RECORD_NUMBER2 is
'EP_RECORD_NUMBER2';

comment on column TEST1.WI_EP_RECORD.EP_RECORD_NUMBER3 is
'EP_RECORD_NUMBER3';

comment on column TEST1.WI_EP_RECORD.EP_BRANCH_NO is
'EP_BRANCH_NO';

comment on column TEST1.WI_EP_RECORD.EP_RECORD_PROVINCE is
'EP_RECORD_PROVINCE';

comment on column TEST1.WI_EP_RECORD.EP_RECORD_CITY is
'EP_RECORD_CITY';

comment on column TEST1.WI_EP_RECORD.EP_RECORD_CPYNO is
'EP_RECORD_CPYNO';

comment on column TEST1.WI_EP_RECORD.EP_RECORD_COMPANY is
'EP_RECORD_COMPANY';

comment on column TEST1.WI_EP_RECORD.EP_RECORD_TIME is
'EP_RECORD_TIME';

comment on column TEST1.WI_EP_RECORD.EP_RECORD_CARD is
'EP_RECORD_CARD';

comment on column TEST1.WI_EP_RECORD.EP_RECORD_AMOUNT is
'EP_RECORD_AMOUNT';

comment on column TEST1.WI_EP_RECORD.EP_RECORD_FEE is
'EP_RECORD_FEE';

comment on column TEST1.WI_EP_RECORD.EP_RECORD_TOTALAMT is
'EP_RECORD_TOTALAMT';

comment on column TEST1.WI_EP_RECORD.EP_REMARK is
'EP_REMARK';

comment on column TEST1.WI_EP_RECORD.EP_RECORD_STAT is
'EP_RECORD_STAT';

/*==============================================================*/
/* Table: WI_ERRLOG                                             */
/*==============================================================*/
create table TEST1.WI_ERRLOG 
(
   ID                   VARCHAR2(32)         not null,
   BUSI_TRANS_NO        VARCHAR2(32),
   LOG_DATE             CHAR(8),
   LOG_TIMESTAMP        VARCHAR2(32),
   ERROR_CODE           VARCHAR2(8),
   ERROR_DESC           VARCHAR2(4000),
   SESSION_ID           VARCHAR2(64),
   EXE_CLASS_NAME       VARCHAR2(150),
   constraint PK_WI_ERRLOG primary key (ID)
);

comment on table TEST1.WI_ERRLOG is
'理财产品错误日志记录表';

comment on column TEST1.WI_ERRLOG.ID is
'记录PK';

comment on column TEST1.WI_ERRLOG.BUSI_TRANS_NO is
'业务流水号';

comment on column TEST1.WI_ERRLOG.LOG_DATE is
'记录日期';

comment on column TEST1.WI_ERRLOG.LOG_TIMESTAMP is
'记录时间戳';

comment on column TEST1.WI_ERRLOG.ERROR_CODE is
'错误代码';

comment on column TEST1.WI_ERRLOG.ERROR_DESC is
'错误描述';

comment on column TEST1.WI_ERRLOG.SESSION_ID is
'会话ID';

comment on column TEST1.WI_ERRLOG.EXE_CLASS_NAME is
'执行类名称';

/*==============================================================*/
/* Table: WI_FILE_INCOMING_HEADER                               */
/*==============================================================*/
create table TEST1.WI_FILE_INCOMING_HEADER 
(
   FILE_NAME            VARCHAR2(64)         not null,
   IN_TOTAL_RES         NUMBER               not null,
   IN_TOTAL_AMT         NUMBER(25,2)         not null,
   IN_SUC_TOTAL_RES     NUMBER               not null,
   IN_SUC_TOTAL_AMT     NUMBER(25,2)         not null,
   OUT_TOTAL_RES        NUMBER               not null,
   OUT_TOTAL_AMT        NUMBER(25,2)         not null,
   OUT_SUC_TOTAL_RES    NUMBER               not null,
   OUT_SUC_TOTAL_AMT    NUMBER(25,2)         not null,
   PROCESS_TIME         VARCHAR2(17)         not null,
   TRANS_DATE           VARCHAR2(8)          not null
);

comment on table TEST1.WI_FILE_INCOMING_HEADER is
'WI_FILE_INCOMING_HEADER';

comment on column TEST1.WI_FILE_INCOMING_HEADER.FILE_NAME is
'FILE_NAME';

comment on column TEST1.WI_FILE_INCOMING_HEADER.IN_TOTAL_RES is
'IN_TOTAL_RES';

comment on column TEST1.WI_FILE_INCOMING_HEADER.IN_TOTAL_AMT is
'IN_TOTAL_AMT';

comment on column TEST1.WI_FILE_INCOMING_HEADER.IN_SUC_TOTAL_RES is
'IN_SUC_TOTAL_RES';

comment on column TEST1.WI_FILE_INCOMING_HEADER.IN_SUC_TOTAL_AMT is
'IN_SUC_TOTAL_AMT';

comment on column TEST1.WI_FILE_INCOMING_HEADER.OUT_TOTAL_RES is
'OUT_TOTAL_RES';

comment on column TEST1.WI_FILE_INCOMING_HEADER.OUT_TOTAL_AMT is
'OUT_TOTAL_AMT';

comment on column TEST1.WI_FILE_INCOMING_HEADER.OUT_SUC_TOTAL_RES is
'OUT_SUC_TOTAL_RES';

comment on column TEST1.WI_FILE_INCOMING_HEADER.OUT_SUC_TOTAL_AMT is
'OUT_SUC_TOTAL_AMT';

comment on column TEST1.WI_FILE_INCOMING_HEADER.PROCESS_TIME is
'PROCESS_TIME';

comment on column TEST1.WI_FILE_INCOMING_HEADER.TRANS_DATE is
'TRANS_DATE';

/*==============================================================*/
/* Table: WI_FILE_INCOMING_RECORD                               */
/*==============================================================*/
create table TEST1.WI_FILE_INCOMING_RECORD 
(
   FILE_NAME            VARCHAR2(64)         not null,
   LINE                 VARCHAR2(512)        not null,
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   SYS_SEQ              VARCHAR2(32),
   MERCH_ORDER_NO       VARCHAR2(32),
   MERCH_NO             VARCHAR2(15),
   SUB_MERCH_NO         VARCHAR2(15),
   USER_NO              VARCHAR2(32),
   ACCT_NO              VARCHAR2(32),
   EXT_ACCT_NO          VARCHAR2(32),
   GOODS_NAME           VARCHAR2(200),
   GOODS_INFO           VARCHAR2(200),
   ORDER_AMT            NUMBER(25,2),
   TRANS_CURR           VARCHAR2(3),
   ORDER_FEE_AMT        NUMBER(25,2),
   SYS_FEE_AMT          NUMBER(25,2),
   ORDER_STAT           CHAR,
   ACCOUNTING_TYPE      CHAR,
   TRANS_TYPE           VARCHAR2(6),
   PROCESS_TIME         VARCHAR2(17)
);

comment on table TEST1.WI_FILE_INCOMING_RECORD is
'WI_FILE_INCOMING_RECORD';

comment on column TEST1.WI_FILE_INCOMING_RECORD.FILE_NAME is
'FILE_NAME';

comment on column TEST1.WI_FILE_INCOMING_RECORD.LINE is
'LINE';

comment on column TEST1.WI_FILE_INCOMING_RECORD.TRANS_DATE is
'TRANS_DATE';

comment on column TEST1.WI_FILE_INCOMING_RECORD.TRANS_TIME is
'TRANS_TIME';

comment on column TEST1.WI_FILE_INCOMING_RECORD.SYS_SEQ is
'SYS_SEQ';

comment on column TEST1.WI_FILE_INCOMING_RECORD.MERCH_ORDER_NO is
'MERCH_ORDER_NO';

comment on column TEST1.WI_FILE_INCOMING_RECORD.MERCH_NO is
'MERCH_NO';

comment on column TEST1.WI_FILE_INCOMING_RECORD.SUB_MERCH_NO is
'SUB_MERCH_NO';

comment on column TEST1.WI_FILE_INCOMING_RECORD.USER_NO is
'USER_NO';

comment on column TEST1.WI_FILE_INCOMING_RECORD.ACCT_NO is
'ACCT_NO';

comment on column TEST1.WI_FILE_INCOMING_RECORD.EXT_ACCT_NO is
'EXT_ACCT_NO';

comment on column TEST1.WI_FILE_INCOMING_RECORD.GOODS_NAME is
'GOODS_NAME';

comment on column TEST1.WI_FILE_INCOMING_RECORD.GOODS_INFO is
'GOODS_INFO';

comment on column TEST1.WI_FILE_INCOMING_RECORD.ORDER_AMT is
'ORDER_AMT';

comment on column TEST1.WI_FILE_INCOMING_RECORD.TRANS_CURR is
'TRANS_CURR';

comment on column TEST1.WI_FILE_INCOMING_RECORD.ORDER_FEE_AMT is
'ORDER_FEE_AMT';

comment on column TEST1.WI_FILE_INCOMING_RECORD.SYS_FEE_AMT is
'SYS_FEE_AMT';

comment on column TEST1.WI_FILE_INCOMING_RECORD.ORDER_STAT is
'ORDER_STAT';

comment on column TEST1.WI_FILE_INCOMING_RECORD.ACCOUNTING_TYPE is
'ACCOUNTING_TYPE';

comment on column TEST1.WI_FILE_INCOMING_RECORD.TRANS_TYPE is
'TRANS_TYPE';

comment on column TEST1.WI_FILE_INCOMING_RECORD.PROCESS_TIME is
'PROCESS_TIME';


/*==============================================================*/
/* Table: WI_FILE_OUTGOING_HEADER                               */
/*==============================================================*/
create table TEST1.WI_FILE_OUTGOING_HEADER 
(
   FILE_NAME            VARCHAR2(64)         not null,
   COM_NO               VARCHAR2(32)         not null,
   BANK_NO              VARCHAR2(32)         not null,
   IN_TOTAL_RES         NUMBER               not null,
   IN_TOTAL_AMT         NUMBER(25,2)         not null,
   IN_SUC_TOTAL_RES     NUMBER               not null,
   IN_SUC_TOTAL_AMT     NUMBER(25,2)         not null,
   OUT_TOTAL_RES        NUMBER               not null,
   OUT_TOTAL_AMT        NUMBER(25,2)         not null,
   OUT_SUC_TOTAL_RES    NUMBER               not null,
   OUT_SUC_TOTAL_AMT    NUMBER(25,2)         not null,
   PROCESS_TIME         VARCHAR2(17)         not null,
   TRANS_DATE           VARCHAR2(8)          not null
);

comment on table TEST1.WI_FILE_OUTGOING_HEADER is
'WI_FILE_OUTGOING_HEADER';

comment on column TEST1.WI_FILE_OUTGOING_HEADER.FILE_NAME is
'FILE_NAME';

comment on column TEST1.WI_FILE_OUTGOING_HEADER.COM_NO is
'COM_NO';

comment on column TEST1.WI_FILE_OUTGOING_HEADER.BANK_NO is
'BANK_NO';

comment on column TEST1.WI_FILE_OUTGOING_HEADER.IN_TOTAL_RES is
'IN_TOTAL_RES';

comment on column TEST1.WI_FILE_OUTGOING_HEADER.IN_TOTAL_AMT is
'IN_TOTAL_AMT';

comment on column TEST1.WI_FILE_OUTGOING_HEADER.IN_SUC_TOTAL_RES is
'IN_SUC_TOTAL_RES';

comment on column TEST1.WI_FILE_OUTGOING_HEADER.IN_SUC_TOTAL_AMT is
'IN_SUC_TOTAL_AMT';

comment on column TEST1.WI_FILE_OUTGOING_HEADER.OUT_TOTAL_RES is
'OUT_TOTAL_RES';

comment on column TEST1.WI_FILE_OUTGOING_HEADER.OUT_TOTAL_AMT is
'OUT_TOTAL_AMT';

comment on column TEST1.WI_FILE_OUTGOING_HEADER.OUT_SUC_TOTAL_RES is
'OUT_SUC_TOTAL_RES';

comment on column TEST1.WI_FILE_OUTGOING_HEADER.OUT_SUC_TOTAL_AMT is
'OUT_SUC_TOTAL_AMT';

comment on column TEST1.WI_FILE_OUTGOING_HEADER.PROCESS_TIME is
'PROCESS_TIME';

comment on column TEST1.WI_FILE_OUTGOING_HEADER.TRANS_DATE is
'TRANS_DATE';

/*==============================================================*/
/* Table: WI_FILE_OUTGOING_RECORD                               */
/*==============================================================*/
create table TEST1.WI_FILE_OUTGOING_RECORD 
(
   FILE_NAME            VARCHAR2(64),
   TRANS_DATE           VARCHAR2(8),
   TRANS_TIME           VARCHAR2(6),
   SYS_SEQ              VARCHAR2(32),
   ORDER_ID             VARCHAR2(32),
   MERCH_NO             VARCHAR2(15),
   USER_ID              VARCHAR2(32),
   ACCT_NO              VARCHAR2(32),
   TRANS_AMT            NUMBER(25,2),
   ORDER_FEE_AMT        NUMBER(25,2),
   SYS_FEE_AMT          NUMBER(25,2),
   TRANS_TYPE           CHAR(2),
   ORDER_STAT           CHAR,
   ACCOUNTING_TYPE      CHAR,
   IN_OUT_FLAG          CHAR,
   PROPOSAL_NO          VARCHAR2(32),
   POLICY_NO            VARCHAR2(32),
   PROCESS_TIME         VARCHAR2(17)
);

comment on table TEST1.WI_FILE_OUTGOING_RECORD is
'WI_FILE_OUTGOING_RECORD';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.FILE_NAME is
'FILE_NAME';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.TRANS_DATE is
'TRANS_DATE';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.TRANS_TIME is
'TRANS_TIME';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.SYS_SEQ is
'SYS_SEQ';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.ORDER_ID is
'ORDER_ID';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.MERCH_NO is
'MERCH_NO';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.USER_ID is
'USER_ID';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.ACCT_NO is
'ACCT_NO';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.TRANS_AMT is
'TRANS_AMT';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.ORDER_FEE_AMT is
'ORDER_FEE_AMT';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.SYS_FEE_AMT is
'SYS_FEE_AMT';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.TRANS_TYPE is
'TRANS_TYPE';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.ORDER_STAT is
'ORDER_STAT';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.ACCOUNTING_TYPE is
'ACCOUNTING_TYPE';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.IN_OUT_FLAG is
'IN_OUT_FLAG';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.PROPOSAL_NO is
'PROPOSAL_NO';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.POLICY_NO is
'POLICY_NO';

comment on column TEST1.WI_FILE_OUTGOING_RECORD.PROCESS_TIME is
'PROCESS_TIME';

/*==============================================================*/
/* Table: WI_MANAGER_ACT_LIST                                   */
/*==============================================================*/
create table TEST1.WI_MANAGER_ACT_LIST 
(
   ACT_ID               VARCHAR2(20)         not null,
   ACT_TYPE             CHAR(2),
   OPERATOR_ID          CHAR(6),
   ACT_TIME             CHAR(17),
   ACT_DESC             VARCHAR2(300),
   ADD_INFO             VARCHAR2(150),
   constraint PK_WI_MANAGER_ACT_LIST primary key (ACT_ID)
);

comment on table TEST1.WI_MANAGER_ACT_LIST is
'管理员操作流水';

comment on column TEST1.WI_MANAGER_ACT_LIST.ACT_ID is
'操作流水号';

comment on column TEST1.WI_MANAGER_ACT_LIST.ACT_TYPE is
'操作类型';

comment on column TEST1.WI_MANAGER_ACT_LIST.OPERATOR_ID is
'操作员';

comment on column TEST1.WI_MANAGER_ACT_LIST.ACT_TIME is
'操作时间';

comment on column TEST1.WI_MANAGER_ACT_LIST.ACT_DESC is
'操作描述';

comment on column TEST1.WI_MANAGER_ACT_LIST.ADD_INFO is
'附加信息';

/*==============================================================*/
/* Table: WI_ORDER_LIST                                         */
/*==============================================================*/
create table TEST1.WI_ORDER_LIST 
(
   USER_NO              VARCHAR2(32)         not null,
   ORDER_ID             VARCHAR2(32)         not null,
   PRODUCT_ID           VARCHAR2(12)         not null,
   FORMAT_ID            CHAR(6)              not null,
   PRODUCT_NAME         VARCHAR2(75),
   PROVIDER_ID          VARCHAR2(6)          not null,
   CATEGORY_ID          CHAR(6),
   QUANTITY             NUMBER               not null,
   AMOUNT               NUMBER(20,2)         not null,
   STATUS               CHAR                 not null,
   DETAIL               VARCHAR2(4000),
   INSU_ID              VARCHAR2(32),
   CREATED_TIME         CHAR(17)             not null,
   PAY_TIME             CHAR(17),
   CANCEL_TIME          CHAR(17),
   IS_DISCOUNT          CHAR,
   CHANNEL              CHAR,
   PRICE                NUMBER(20,2)         not null,
   EFFECTIVE_DATE       CHAR(17),
   CHECK_PAY_NO         VARCHAR2(32),
   USER_ACCOUNT         VARCHAR2(32),
   POLICY_URL           VARCHAR2(150),
   ISSUE_TIME           CHAR(17),
   PROPOSAL_NO          VARCHAR2(32),
   LOAN_CONTRACT_NO     VARCHAR2(32),
   LOAN_START_DATE      CHAR(17),
   LOAN_END_DATE        CHAR(17),
   LOAN_APPLY_NO        VARCHAR2(32),
   LOAN_INVOICE_NO      VARCHAR2(32),
   LOAN_CONTRACT_AMT    NUMBER(20,2),
   ENT_NO               VARCHAR2(32),
   constraint PK_WI_ORDER_LIST primary key (ORDER_ID)
);

comment on table TEST1.WI_ORDER_LIST is
'WI_ORDER_LIST';

comment on column TEST1.WI_ORDER_LIST.USER_NO is
'USER_NO';

comment on column TEST1.WI_ORDER_LIST.ORDER_ID is
'ORDER_ID';

comment on column TEST1.WI_ORDER_LIST.PRODUCT_ID is
'PRODUCT_ID';

comment on column TEST1.WI_ORDER_LIST.FORMAT_ID is
'FORMAT_ID';

comment on column TEST1.WI_ORDER_LIST.PRODUCT_NAME is
'PRODUCT_NAME';

comment on column TEST1.WI_ORDER_LIST.PROVIDER_ID is
'PROVIDER_ID';

comment on column TEST1.WI_ORDER_LIST.CATEGORY_ID is
'CATEGORY_ID';

comment on column TEST1.WI_ORDER_LIST.QUANTITY is
'QUANTITY';

comment on column TEST1.WI_ORDER_LIST.AMOUNT is
'AMOUNT';

comment on column TEST1.WI_ORDER_LIST.STATUS is
'STATUS';

comment on column TEST1.WI_ORDER_LIST.DETAIL is
'DETAIL';

comment on column TEST1.WI_ORDER_LIST.INSU_ID is
'INSU_ID';

comment on column TEST1.WI_ORDER_LIST.CREATED_TIME is
'CREATED_TIME';

comment on column TEST1.WI_ORDER_LIST.PAY_TIME is
'PAY_TIME';

comment on column TEST1.WI_ORDER_LIST.CANCEL_TIME is
'CANCEL_TIME';

comment on column TEST1.WI_ORDER_LIST.IS_DISCOUNT is
'IS_DISCOUNT';

comment on column TEST1.WI_ORDER_LIST.CHANNEL is
'CHANNEL';

comment on column TEST1.WI_ORDER_LIST.PRICE is
'PRICE';

comment on column TEST1.WI_ORDER_LIST.EFFECTIVE_DATE is
'EFFECTIVE_DATE';

comment on column TEST1.WI_ORDER_LIST.CHECK_PAY_NO is
'CHECK_PAY_NO';

comment on column TEST1.WI_ORDER_LIST.USER_ACCOUNT is
'USER_ACCOUNT';

comment on column TEST1.WI_ORDER_LIST.POLICY_URL is
'POLICY_URL';

comment on column TEST1.WI_ORDER_LIST.ISSUE_TIME is
'ISSUE_TIME';

comment on column TEST1.WI_ORDER_LIST.PROPOSAL_NO is
'PROPOSAL_NO';

comment on column TEST1.WI_ORDER_LIST.LOAN_CONTRACT_NO is
'LOAN_CONTRACT_NO';

comment on column TEST1.WI_ORDER_LIST.LOAN_START_DATE is
'LOAN_START_DATE';

comment on column TEST1.WI_ORDER_LIST.LOAN_END_DATE is
'LOAN_END_DATE';

comment on column TEST1.WI_ORDER_LIST.LOAN_APPLY_NO is
'LOAN_APPLY_NO';

comment on column TEST1.WI_ORDER_LIST.LOAN_INVOICE_NO is
'LOAN_INVOICE_NO';

comment on column TEST1.WI_ORDER_LIST.LOAN_CONTRACT_AMT is
'LOAN_CONTRACT_AMT';

comment on column TEST1.WI_ORDER_LIST.ENT_NO is
'ENT_NO';


/*==============================================================*/
/* Table: WI_PRODUCT_CATE                                       */
/*==============================================================*/
create table TEST1.WI_PRODUCT_CATE 
(
   CATEGORY_ID          CHAR(6)              not null,
   CATEGORY_NAME        VARCHAR2(60)         not null,
   PARENT_ID            CHAR(6)              not null,
   ID_LEVEL             NUMBER               not null,
   CATEGORY_DESC        VARCHAR2(200)        not null,
   constraint PK_WI_PRODUCT_CATE primary key (CATEGORY_ID)
);

comment on table TEST1.WI_PRODUCT_CATE is
'商品分类信息表';

comment on column TEST1.WI_PRODUCT_CATE.CATEGORY_ID is
'分类编号';

comment on column TEST1.WI_PRODUCT_CATE.CATEGORY_NAME is
'分类名称';

comment on column TEST1.WI_PRODUCT_CATE.PARENT_ID is
'父类编号';

comment on column TEST1.WI_PRODUCT_CATE.ID_LEVEL is
'所处层级';

comment on column TEST1.WI_PRODUCT_CATE.CATEGORY_DESC is
'分类描述';

/*==============================================================*/
/* Table: WI_PRODUCT_DEF                                        */
/*==============================================================*/
create table TEST1.WI_PRODUCT_DEF 
(
   PRODUCT_ID           CHAR(12)             not null,
   PROPERTY_ID          CHAR(4)              not null,
   PROPERTY_NAME        VARCHAR2(60)         not null,
   PROPERTY_VALUE       VARCHAR2(3000),
   PARENT_ID            CHAR(4)              not null,
   constraint PK_WI_PRODUCT_DEF primary key (PRODUCT_ID, PROPERTY_ID, PARENT_ID)
);

comment on table TEST1.WI_PRODUCT_DEF is
'商品定义信息表';

comment on column TEST1.WI_PRODUCT_DEF.PRODUCT_ID is
'商品编号';

comment on column TEST1.WI_PRODUCT_DEF.PROPERTY_ID is
'属性编号';

comment on column TEST1.WI_PRODUCT_DEF.PROPERTY_NAME is
'属性名称';

comment on column TEST1.WI_PRODUCT_DEF.PROPERTY_VALUE is
'属性值';

comment on column TEST1.WI_PRODUCT_DEF.PARENT_ID is
'父属性编号';

/*==============================================================*/
/* Table: WI_PRODUCT_DEF_CONT                                   */
/*==============================================================*/
create table TEST1.WI_PRODUCT_DEF_CONT 
(
   PROPERTY_ID          CHAR(4)              not null,
   PROPERTY_NAME        VARCHAR2(75)         not null,
   PROPERTY_VALUE       VARCHAR2(3000)       not null,
   PRODUCT_ID           CHAR(12)             not null,
   PROPERTY_INDEX       NUMBER,
   constraint PK_WI_PRODUCT_DEF_CONT primary key (PROPERTY_ID, PRODUCT_ID)
);

comment on table TEST1.WI_PRODUCT_DEF_CONT is
'商品定义信息表（联系人属性）';

comment on column TEST1.WI_PRODUCT_DEF_CONT.PROPERTY_ID is
'属性编号';

comment on column TEST1.WI_PRODUCT_DEF_CONT.PROPERTY_NAME is
'属性名称';

comment on column TEST1.WI_PRODUCT_DEF_CONT.PROPERTY_VALUE is
'属性值';

comment on column TEST1.WI_PRODUCT_DEF_CONT.PRODUCT_ID is
'商品编号';

comment on column TEST1.WI_PRODUCT_DEF_CONT.PROPERTY_INDEX is
'属性排序索引';

/*==============================================================*/
/* Table: WI_PRODUCT_FORM                                       */
/*==============================================================*/
create table TEST1.WI_PRODUCT_FORM 
(
   PRODUCT_ID           CHAR(12)             not null,
   FORMAT_ID            CHAR(4)              not null,
   FORMAT_NAME          VARCHAR2(60)         not null,
   FORMAT_DESC          VARCHAR2(75),
   constraint PK_WI_PRODUCT_FORM primary key (PRODUCT_ID, FORMAT_ID)
);

comment on table TEST1.WI_PRODUCT_FORM is
'商品规格定义表';

comment on column TEST1.WI_PRODUCT_FORM.PRODUCT_ID is
'商品编号';

comment on column TEST1.WI_PRODUCT_FORM.FORMAT_ID is
'规格编号';

comment on column TEST1.WI_PRODUCT_FORM.FORMAT_NAME is
'规格名称';

comment on column TEST1.WI_PRODUCT_FORM.FORMAT_DESC is
'规格描述';

/*==============================================================*/
/* Table: WI_PRODUCT_INFO                                       */
/*==============================================================*/
create table TEST1.WI_PRODUCT_INFO 
(
   PRODUCT_ID           CHAR(12)             not null,
   PRODUCT_NAME         VARCHAR2(150)        not null,
   PRODUCT_DESC         VARCHAR2(300)        not null,
   LOGO                 VARCHAR2(150),
   MEMO                 VARCHAR2(300),
   PRODUCT_STATUS       CHAR                 not null,
   VERIFY_STATUS        CHAR,
   DISCOUNT_DESC        VARCHAR2(300),
   DISCOUNT_START       CHAR(17),
   DISCOUNT_END         CHAR(17),
   DISCOUNT_STATUS      CHAR,
   USER_ROLE            CHAR(4)              not null,
   OPP_PID              VARCHAR2(32),
   TEMPLATE_ID          CHAR(6),
   CATEGORY_ID          CHAR(6),
   PROVIDER_ID          VARCHAR2(6),
   OPP_PROD_NAME        VARCHAR2(100),
   INPUT_BY             VARCHAR2(32),
   INPUT_TIME           CHAR(17),
   VERIFY_BY            VARCHAR2(32),
   VERIFY_TIME          CHAR(17),
   constraint PK_WI_PRODUCT_INFO primary key (PRODUCT_ID)
);

comment on table TEST1.WI_PRODUCT_INFO is
'商品信息主表';

comment on column TEST1.WI_PRODUCT_INFO.PRODUCT_ID is
'商品编号';

comment on column TEST1.WI_PRODUCT_INFO.PRODUCT_NAME is
'商品名称';

comment on column TEST1.WI_PRODUCT_INFO.PRODUCT_DESC is
'商品描述';

comment on column TEST1.WI_PRODUCT_INFO.LOGO is
'图标';

comment on column TEST1.WI_PRODUCT_INFO.MEMO is
'备注';

comment on column TEST1.WI_PRODUCT_INFO.PRODUCT_STATUS is
'商品状态';

comment on column TEST1.WI_PRODUCT_INFO.VERIFY_STATUS is
'审核状态';

comment on column TEST1.WI_PRODUCT_INFO.DISCOUNT_DESC is
'促销简介';

comment on column TEST1.WI_PRODUCT_INFO.DISCOUNT_START is
'促销开始';

comment on column TEST1.WI_PRODUCT_INFO.DISCOUNT_END is
'促销结束';

comment on column TEST1.WI_PRODUCT_INFO.DISCOUNT_STATUS is
'促销状态';

comment on column TEST1.WI_PRODUCT_INFO.USER_ROLE is
'允许购买的用户角色';

comment on column TEST1.WI_PRODUCT_INFO.OPP_PID is
'对方产品代码';

comment on column TEST1.WI_PRODUCT_INFO.TEMPLATE_ID is
'模板编号';

comment on column TEST1.WI_PRODUCT_INFO.CATEGORY_ID is
'商品分类号';

comment on column TEST1.WI_PRODUCT_INFO.PROVIDER_ID is
'所属商户';

comment on column TEST1.WI_PRODUCT_INFO.OPP_PROD_NAME is
'对方产品名称';

comment on column TEST1.WI_PRODUCT_INFO.INPUT_BY is
'输入操作员';

comment on column TEST1.WI_PRODUCT_INFO.INPUT_TIME is
'输入时间';

comment on column TEST1.WI_PRODUCT_INFO.VERIFY_BY is
'复核操作员';

comment on column TEST1.WI_PRODUCT_INFO.VERIFY_TIME is
'复核时间';

/*==============================================================*/
/* Table: WI_PRODUCT_PRIC                                       */
/*==============================================================*/
create table TEST1.WI_PRODUCT_PRIC 
(
   PRODUCT_ID           CHAR(12)             not null,
   FORMAT_ID            CHAR(4)              not null,
   QUANTITY             NUMBER,
   PRICE                NUMBER(20,2)         not null,
   DISCOUNT_QUANTITY    NUMBER,
   DISCOUNT_PRICE       NUMBER(20,2),
   POINT_RATIO          NUMBER(10,4),
   OPP_SKU_CODE         VARCHAR2(32),
   FORMAT_DESC          VARCHAR2(150),
   FORMAT_NAME          VARCHAR2(75),
   constraint PK_WI_PRODUCT_STOC primary key (PRODUCT_ID, FORMAT_ID)
);

comment on table TEST1.WI_PRODUCT_PRIC is
'商品价格信息表';

comment on column TEST1.WI_PRODUCT_PRIC.PRODUCT_ID is
'商品编号';

comment on column TEST1.WI_PRODUCT_PRIC.FORMAT_ID is
'规格编号';

comment on column TEST1.WI_PRODUCT_PRIC.QUANTITY is
'库存数量';

comment on column TEST1.WI_PRODUCT_PRIC.PRICE is
'价格';

comment on column TEST1.WI_PRODUCT_PRIC.DISCOUNT_QUANTITY is
'促销库存';

comment on column TEST1.WI_PRODUCT_PRIC.DISCOUNT_PRICE is
'促销价格';

comment on column TEST1.WI_PRODUCT_PRIC.POINT_RATIO is
'促销积分系数';

comment on column TEST1.WI_PRODUCT_PRIC.OPP_SKU_CODE is
'商户SKU代码';

comment on column TEST1.WI_PRODUCT_PRIC.FORMAT_DESC is
'规格描述';

comment on column TEST1.WI_PRODUCT_PRIC.FORMAT_NAME is
'规格名称';

/*==============================================================*/
/* Table: WI_PRODUCT_SECU                                       */
/*==============================================================*/
create table TEST1.WI_PRODUCT_SECU 
(
   SECU_CONT            VARCHAR2(150)        not null,
   SECU_AMT             VARCHAR2(75)         not null,
   SECU_RANGE           VARCHAR2(300)        not null,
   PRODUCT_ID           VARCHAR2(12)         not null,
   SECU_NO              NUMBER               not null,
   constraint SYS_C0071928 primary key (PRODUCT_ID, SECU_NO)
);

comment on table TEST1.WI_PRODUCT_SECU is
'WI_PRODUCT_SECU';

comment on column TEST1.WI_PRODUCT_SECU.SECU_CONT is
'保障内容';

comment on column TEST1.WI_PRODUCT_SECU.SECU_AMT is
'保障金额';

comment on column TEST1.WI_PRODUCT_SECU.SECU_RANGE is
'保障范围';

comment on column TEST1.WI_PRODUCT_SECU.PRODUCT_ID is
'PRODUCT_ID';

comment on column TEST1.WI_PRODUCT_SECU.SECU_NO is
'保障编号';

/*==============================================================*/
/* Table: WI_PRODUCT_TMPL                                       */
/*==============================================================*/
create table TEST1.WI_PRODUCT_TMPL 
(
   TEMPLATE_ID          CHAR(4)              not null,
   TEMPLATE_NAME        VARCHAR2(60)         not null,
   URL                  VARCHAR2(75),
   constraint PK_WI_PRODUCT_TMPL primary key (TEMPLATE_ID)
);

comment on table TEST1.WI_PRODUCT_TMPL is
'模板定义表';

comment on column TEST1.WI_PRODUCT_TMPL.TEMPLATE_ID is
'模板编号';

comment on column TEST1.WI_PRODUCT_TMPL.TEMPLATE_NAME is
'模板名称';

comment on column TEST1.WI_PRODUCT_TMPL.URL is
'JSP页面路径';

/*==============================================================*/
/* Table: WI_PROVIDER_INFO                                      */
/*==============================================================*/
create table TEST1.WI_PROVIDER_INFO 
(
   PROVIDER_ID          VARCHAR2(6)          not null,
   PROVIDER_NAME        VARCHAR2(100)        not null,
   PROVIDER_DESC        VARCHAR2(500)        not null,
   LOGO                 VARCHAR2(150),
   URL                  VARCHAR2(150),
   PROVIDER_TYPE        CHAR                 not null,
   PROVIDER_ACC         VARCHAR2(19),
   ACC_TYPE             CHAR,
   ACC_NAME             VARCHAR2(150),
   STATUS               CHAR                 not null,
   CS_PHONE_NUM         VARCHAR2(20),
   PAY_PROVIDER_ID      VARCHAR2(20),
   MSG_RCV_URL          VARCHAR2(100),
   PRIVATE_KEY          VARCHAR2(10),
   constraint PK_WI_PROVIDER_INFO primary key (PROVIDER_ID)
);

comment on table TEST1.WI_PROVIDER_INFO is
'商户信息表';

comment on column TEST1.WI_PROVIDER_INFO.PROVIDER_ID is
'商户编号';

comment on column TEST1.WI_PROVIDER_INFO.PROVIDER_NAME is
'商户名称';

comment on column TEST1.WI_PROVIDER_INFO.PROVIDER_DESC is
'商户简介';

comment on column TEST1.WI_PROVIDER_INFO.LOGO is
'图标';

comment on column TEST1.WI_PROVIDER_INFO.URL is
'超链接';

comment on column TEST1.WI_PROVIDER_INFO.PROVIDER_TYPE is
'商户类型';

comment on column TEST1.WI_PROVIDER_INFO.PROVIDER_ACC is
'商户账号';

comment on column TEST1.WI_PROVIDER_INFO.ACC_TYPE is
'账号类型';

comment on column TEST1.WI_PROVIDER_INFO.ACC_NAME is
'账号名称';

comment on column TEST1.WI_PROVIDER_INFO.STATUS is
'商户状态';

comment on column TEST1.WI_PROVIDER_INFO.CS_PHONE_NUM is
'客服电话';

comment on column TEST1.WI_PROVIDER_INFO.PAY_PROVIDER_ID is
'支付平台商户号';

comment on column TEST1.WI_PROVIDER_INFO.MSG_RCV_URL is
'报文接收URL';

comment on column TEST1.WI_PROVIDER_INFO.PRIVATE_KEY is
'PRIVATE_KEY';


/*==============================================================*/
/* Table: WI_REFUND_LIST                                        */
/*==============================================================*/
create table TEST1.WI_REFUND_LIST 
(
   USER_NO              VARCHAR2(32)         not null,
   ORDER_ID             VARCHAR2(32)         not null,
   INSU_ID              VARCHAR2(32)         not null,
   REFUND_ID            VARCHAR2(32)         not null,
   POLICY_VALUE         NUMBER(20,2)         not null,
   WITHDRAW_AMT         NUMBER(20,2)         not null,
   AVAI_AMT             NUMBER(20,2)         not null,
   IS_CANCEL            CHAR                 not null,
   IS_WITHDRAW_ALL      CHAR                 not null,
   STATUS               CHAR                 not null,
   MEMO                 VARCHAR2(150),
   OPP_REFUND_ID        VARCHAR2(32),
   PAY_ID               VARCHAR2(32),
   USER_ACCOUNT         VARCHAR2(32),
   PAY_TIME             CHAR(17),
   IS_PAY_SUCC          CHAR,
   PAY_MEMO             VARCHAR2(150),
   CREATE_TIME          CHAR(17),
   IS_CHECK_PAY         CHAR,
   ENT_NO               VARCHAR2(32),
   constraint PK_WI_REFUND_LIST primary key (REFUND_ID)
);

comment on table TEST1.WI_REFUND_LIST is
'WI_REFUND_LIST';

comment on column TEST1.WI_REFUND_LIST.USER_NO is
'USER_NO';

comment on column TEST1.WI_REFUND_LIST.ORDER_ID is
'ORDER_ID';

comment on column TEST1.WI_REFUND_LIST.INSU_ID is
'INSU_ID';

comment on column TEST1.WI_REFUND_LIST.REFUND_ID is
'REFUND_ID';

comment on column TEST1.WI_REFUND_LIST.POLICY_VALUE is
'POLICY_VALUE';

comment on column TEST1.WI_REFUND_LIST.WITHDRAW_AMT is
'WITHDRAW_AMT';

comment on column TEST1.WI_REFUND_LIST.AVAI_AMT is
'AVAI_AMT';

comment on column TEST1.WI_REFUND_LIST.IS_CANCEL is
'IS_CANCEL';

comment on column TEST1.WI_REFUND_LIST.IS_WITHDRAW_ALL is
'IS_WITHDRAW_ALL';

comment on column TEST1.WI_REFUND_LIST.STATUS is
'1.等待核保
2.核保通过
3.核保失败';

comment on column TEST1.WI_REFUND_LIST.MEMO is
'MEMO';

comment on column TEST1.WI_REFUND_LIST.OPP_REFUND_ID is
'OPP_REFUND_ID';

comment on column TEST1.WI_REFUND_LIST.PAY_ID is
'PAY_ID';

comment on column TEST1.WI_REFUND_LIST.USER_ACCOUNT is
'USER_ACCOUNT';

comment on column TEST1.WI_REFUND_LIST.PAY_TIME is
'PAY_TIME';

comment on column TEST1.WI_REFUND_LIST.IS_PAY_SUCC is
'IS_PAY_SUCC';

comment on column TEST1.WI_REFUND_LIST.PAY_MEMO is
'PAY_MEMO';

comment on column TEST1.WI_REFUND_LIST.CREATE_TIME is
'CREATE_TIME';

comment on column TEST1.WI_REFUND_LIST.IS_CHECK_PAY is
'IS_CHECK_PAY';

comment on column TEST1.WI_REFUND_LIST.ENT_NO is
'ENT_NO';



/*==============================================================*/
/* Table: WI_REQUEST_TRACE                                      */
/*==============================================================*/
create table TEST1.WI_REQUEST_TRACE 
(
   TRACE_ID             VARCHAR2(32)         not null,
   WI_OPERATOR          VARCHAR2(32),
   COMPANY_ID           VARCHAR2(32),
   TRANS_CODE           CHAR(12),
   TRANS_TIME           CHAR(17),
   REQUEST              VARCHAR2(4000),
   ORDER_ID             VARCHAR2(32),
   constraint PK_WI_REQUEST_TRACE primary key (TRACE_ID)
);

comment on table TEST1.WI_REQUEST_TRACE is
'WI_REQUEST_TRACE';

comment on column TEST1.WI_REQUEST_TRACE.TRACE_ID is
'TRACE_ID';

comment on column TEST1.WI_REQUEST_TRACE.WI_OPERATOR is
'WI_OPERATOR';

comment on column TEST1.WI_REQUEST_TRACE.COMPANY_ID is
'COMPANY_ID';

comment on column TEST1.WI_REQUEST_TRACE.TRANS_CODE is
'TRANS_CODE';

comment on column TEST1.WI_REQUEST_TRACE.TRANS_TIME is
'TRANS_TIME';

comment on column TEST1.WI_REQUEST_TRACE.REQUEST is
'REQUEST';

comment on column TEST1.WI_REQUEST_TRACE.ORDER_ID is
'ORDER_ID';

/*==============================================================*/
/* Table: WI_RESPONSE_TRACE                                     */
/*==============================================================*/
create table TEST1.WI_RESPONSE_TRACE 
(
   TRACE_ID             VARCHAR2(32)         not null,
   TRANS_CODE           CHAR(12),
   TRANS_TIME           CHAR(17),
   RESPONSE             VARCHAR2(4000),
   constraint PK_WI_RESPONSE_TRACE primary key (TRACE_ID)
);

comment on table TEST1.WI_RESPONSE_TRACE is
'WI_RESPONSE_TRACE';

comment on column TEST1.WI_RESPONSE_TRACE.TRACE_ID is
'TRACE_ID';

comment on column TEST1.WI_RESPONSE_TRACE.TRANS_CODE is
'TRANS_CODE';

comment on column TEST1.WI_RESPONSE_TRACE.TRANS_TIME is
'TRANS_TIME';

comment on column TEST1.WI_RESPONSE_TRACE.RESPONSE is
'RESPONSE';

/*==============================================================*/
/* Table: WI_RUNNING_ARGS                                       */
/*==============================================================*/
create table TEST1.WI_RUNNING_ARGS 
(
   ARG_ID               CHAR(2)              not null,
   ARG_NAME             VARCHAR2(60)         not null,
   ARG_VALUE            VARCHAR2(50)         not null,
   constraint PK_WI_RUNNING_ARGS primary key (ARG_ID)
);

comment on table TEST1.WI_RUNNING_ARGS is
'运行参数表';

comment on column TEST1.WI_RUNNING_ARGS.ARG_ID is
'参数号';

comment on column TEST1.WI_RUNNING_ARGS.ARG_NAME is
'参数名';

comment on column TEST1.WI_RUNNING_ARGS.ARG_VALUE is
'参数值';


---------------20140110---------------------

/*==============================================================*/
/* Table: CP_USER_WHITE_PAPER                                   */
/*==============================================================*/
create table TEST1.CP_USER_WHITE_PAPER 
(
   REC_NO               varchar2(32)         not null,
   NAME                 varchar2(60),
   MOBILE               varchar2(16)         not null,
   REMARK               varchar2(60)
);

comment on column TEST1.CP_USER_WHITE_PAPER.REC_NO is
'记录编码';

comment on column TEST1.CP_USER_WHITE_PAPER.NAME is
'姓名';

comment on column TEST1.CP_USER_WHITE_PAPER.MOBILE is
'手机号码。';

comment on column TEST1.CP_USER_WHITE_PAPER.REMARK is
'该人员情况需要补充的信息';

alter table TEST1.CP_USER_WHITE_PAPER
   add constraint PK_CP_USER_WHITE_PAPER primary key (REC_NO);

---------------LN Seq------------------------
--generate the warning number for table ln_pst_warn_info
--DECLARE
--    v_sql varchar2(1000);
--    v_cnt int;
--BEGIN
--   select count(*) into v_cnt from user_sequences where sequence_name='IBANK_LN_PST_WARN_NO_SEQ';
--   if v_cnt=0 then
--      v_sql:='CREATE SEQUENCE TEST1.IBANK_LN_PST_WARN_NO_SEQ
--           START WITH 1000000000
--           INCREMENT BY 1
--           NOCACHE
--           NOCYCLE';
--      execute immediate v_sql;
--      commit;
--   end if;
--END;
CREATE SEQUENCE TEST1.IBANK_LN_PST_WARN_NO_SEQ
           START WITH 1000000000
           INCREMENT BY 1
           NOCACHE
           NOCYCLE
/


--------------------------------------------


exit;
