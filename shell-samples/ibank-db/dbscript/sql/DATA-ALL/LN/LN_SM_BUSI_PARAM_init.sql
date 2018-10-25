﻿--评价授信校验参数
--写入数据
insert into LN_SM_BUSI_PARAM (PAR_ID, BUSI_GROUP_NO, BUSI_GROUP_NAME, PAR_TYPE, PAR_CODE, PAR_NAME, PAR_C_VAL, PAR_N_VAL1, PAR_N_VAL2, PAR_D_DT1, PAR_D_DT2, PAR_REMARK, EFF_FROM_DATE, EFF_TO_DATE, PAR_STATUS, OP_USER, OP_USER_NAME, OP_DATE) values ('LBPI000001002', '00S1400001', '浪潮商圈', 'LN', 'LN_SM_BUSI_PARAM', '是否启用保险', null, 0.0000000000, 0.0000000000, null, null, 'PAR_CODE = IS_INSURE_ACTIVE 的数据为空，不为空时设置该条数据 ，PAR_STATUS 字段的值为 0 -禁用', '20140101', '20140131', '0', 'ABC00000294', '何友彬', '20140108');
insert into LN_SM_BUSI_PARAM (PAR_ID, BUSI_GROUP_NO, BUSI_GROUP_NAME, PAR_TYPE, PAR_CODE, PAR_NAME, PAR_C_VAL, PAR_N_VAL1, PAR_N_VAL2, PAR_D_DT1, PAR_D_DT2, PAR_REMARK, EFF_FROM_DATE, EFF_TO_DATE, PAR_STATUS, OP_USER, OP_USER_NAME, OP_DATE) values ('LBPH000000002', '00S1400001', '浪潮商圈', 'MD', '00S1400001000001_R', '上游准入评价等级', null, 3.0000000000, 9.0000000000, null, null, null, null, null, '1', null, null, '20140117');
insert into LN_SM_BUSI_PARAM (PAR_ID, BUSI_GROUP_NO, BUSI_GROUP_NAME, PAR_TYPE, PAR_CODE, PAR_NAME, PAR_C_VAL, PAR_N_VAL1, PAR_N_VAL2, PAR_D_DT1, PAR_D_DT2, PAR_REMARK, EFF_FROM_DATE, EFF_TO_DATE, PAR_STATUS, OP_USER, OP_USER_NAME, OP_DATE) values ('LBPH000000003', '00S1400001', '浪潮商圈', 'MD', '00S1400001000002_R', '下游准入评价等级', null, 3.0000000000, 9.0000000000, null, null, null, null, null, '1', null, null, '20140117');
insert into LN_SM_BUSI_PARAM (PAR_ID, BUSI_GROUP_NO, BUSI_GROUP_NAME, PAR_TYPE, PAR_CODE, PAR_NAME, PAR_C_VAL, PAR_N_VAL1, PAR_N_VAL2, PAR_D_DT1, PAR_D_DT2, PAR_REMARK, EFF_FROM_DATE, EFF_TO_DATE, PAR_STATUS, OP_USER, OP_USER_NAME, OP_DATE) values ('LBPH000000004', '00S1400002', '比亚迪商圈', 'MD', '00S1400002000001_R', '上游准入评价等级', null, 3.0000000000, 9.0000000000, null, null, null, null, null, '1', null, null, '20140117');
insert into LN_SM_BUSI_PARAM (PAR_ID, BUSI_GROUP_NO, BUSI_GROUP_NAME, PAR_TYPE, PAR_CODE, PAR_NAME, PAR_C_VAL, PAR_N_VAL1, PAR_N_VAL2, PAR_D_DT1, PAR_D_DT2, PAR_REMARK, EFF_FROM_DATE, EFF_TO_DATE, PAR_STATUS, OP_USER, OP_USER_NAME, OP_DATE) values ('LBPH000000005', '00S1400002', '比亚迪商圈', 'MD', '00S1400002000002_R', '下游准入评价等级', null, 3.0000000000, 9.0000000000, null, null, null, null, null, '1', null, null, '20140115');
insert into LN_SM_BUSI_PARAM (PAR_ID, BUSI_GROUP_NO, BUSI_GROUP_NAME, PAR_TYPE, PAR_CODE, PAR_NAME, PAR_C_VAL, PAR_N_VAL1, PAR_N_VAL2, PAR_D_DT1, PAR_D_DT2, PAR_REMARK, EFF_FROM_DATE, EFF_TO_DATE, PAR_STATUS, OP_USER, OP_USER_NAME, OP_DATE) values ('LBPH000000006', '00S1400001', '浪潮商圈', 'MD', '00S1400001000001_C', '上游准入授信金额', null, 100000.0000000000, 5000000.0000000000, null, null, null, null, null, '1', null, null, '20140117');
insert into LN_SM_BUSI_PARAM (PAR_ID, BUSI_GROUP_NO, BUSI_GROUP_NAME, PAR_TYPE, PAR_CODE, PAR_NAME, PAR_C_VAL, PAR_N_VAL1, PAR_N_VAL2, PAR_D_DT1, PAR_D_DT2, PAR_REMARK, EFF_FROM_DATE, EFF_TO_DATE, PAR_STATUS, OP_USER, OP_USER_NAME, OP_DATE) values ('LBPH000000007', '00S1400001', '浪潮商圈', 'MD', '00S1400001000002_C', '下游准入授信金额', null, 100000.0000000000, 5000000.0000000000, null, null, null, null, null, '1', null, null, '20140117');
insert into LN_SM_BUSI_PARAM (PAR_ID, BUSI_GROUP_NO, BUSI_GROUP_NAME, PAR_TYPE, PAR_CODE, PAR_NAME, PAR_C_VAL, PAR_N_VAL1, PAR_N_VAL2, PAR_D_DT1, PAR_D_DT2, PAR_REMARK, EFF_FROM_DATE, EFF_TO_DATE, PAR_STATUS, OP_USER, OP_USER_NAME, OP_DATE) values ('LBPH000000008', '00S1400002', '比亚迪商圈', 'MD', '00S1400002000001_C', '上游准入授信金额', null, 100000.0000000000, 5000000.0000000000, null, null, null, null, null, '1', null, null, '20140117');
insert into LN_SM_BUSI_PARAM (PAR_ID, BUSI_GROUP_NO, BUSI_GROUP_NAME, PAR_TYPE, PAR_CODE, PAR_NAME, PAR_C_VAL, PAR_N_VAL1, PAR_N_VAL2, PAR_D_DT1, PAR_D_DT2, PAR_REMARK, EFF_FROM_DATE, EFF_TO_DATE, PAR_STATUS, OP_USER, OP_USER_NAME, OP_DATE) values ('LBPH000000009', '00S1400002', '比亚迪商圈', 'MD', '00S1400002000002_C', '下游准入授信金额', null, 100000.0000000000, 5000000.0000000000, null, null, null, null, null, '1', null, null, '20140117');
commit;
