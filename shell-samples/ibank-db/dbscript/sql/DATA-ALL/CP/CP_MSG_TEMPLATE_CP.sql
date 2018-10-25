INSERT INTO "CP_MSG_TEMPLATE" ("TEMPLATE_CODE", "TEMPLATE_NAME", "MSG_SUBJECT", "MSG_CONTENT", "PRODUCT_CODE", "SEND_LEVEL", "DISP_LEVEL", "TIME_FLAG", "START_TIME1", "END_TIME1", "START_TIME2", "END_TIME2", "WEEKEND_FLAG", "HOLIDAY_FLAG", "DESCRIPTION", "TEMPLATE_STATUS", "MSG_TYPE", "MSG_CHANNEL", "TRANS_CODE") VALUES ('MSG_CP_008', '短信验证码默认模板', '短信验证码', '<p><span style="line-height: 15.98px;">尊敬的客户，您正在${operation}，验证码${phoneAuthCode}，请于五分钟之内输入，工作人员不会向您索取，请勿泄露。</span></p>', 'CP', 3, 3, '0', '09:30', '11:35', '19:27', '23:00', '1', NULL, '发送短信验证码的默认模板', '1', '04', NULL, NULL);
INSERT INTO "CP_MSG_TEMPLATE" ("TEMPLATE_CODE", "TEMPLATE_NAME", "MSG_SUBJECT", "MSG_CONTENT", "PRODUCT_CODE", "SEND_LEVEL", "DISP_LEVEL", "TIME_FLAG", "START_TIME1", "END_TIME1", "START_TIME2", "END_TIME2", "WEEKEND_FLAG", "HOLIDAY_FLAG", "DESCRIPTION", "TEMPLATE_STATUS", "MSG_TYPE", "MSG_CHANNEL", "TRANS_CODE") VALUES ('CREDIT_01', '实时农银豆消息', '您的农银豆增加了', '<p>尊敬的${userName}，您在${dateTime}，增加${creditCount}个农银豆。明细如下：${creditDetail}</p>', 'CP', 1, 3, '0', '08:00', '09:00', '11:18', '12:00', NULL, NULL, '对于实时农银豆，发送消息的模板', '1', '04', NULL, 'CREDIT01');
INSERT INTO "CP_MSG_TEMPLATE" (TEMPLATE_CODE, TEMPLATE_NAME, MSG_SUBJECT, MSG_CONTENT, PRODUCT_CODE, SEND_LEVEL, DISP_LEVEL, TIME_FLAG, START_TIME1, END_TIME1, START_TIME2, END_TIME2, WEEKEND_FLAG, HOLIDAY_FLAG, DESCRIPTION, TEMPLATE_STATUS, MSG_TYPE, MSG_CHANNEL, TRANS_CODE) values ('MSG_CP_014', '个人一级实名认证成功信息', '个人一级实名认证结果', '<p>&nbsp;尊敬的${name}</p><p>&nbsp;&nbsp;&nbsp;&nbsp;恭喜您！</p><p>&nbsp;&nbsp;&nbsp;&nbsp;您所提交的个人一级实名认证信息已经通过了系统认证，你现在可以进行放心投、安心理等业务。<span style="font-family: 宋体;"></span></p>', 'CP', 3, 3, '0', null, null, null, null, '1', null, '个人一级实名认证定时处理结束', '1', '04', '1', null);
INSERT INTO "CP_MSG_TEMPLATE" (TEMPLATE_CODE, TEMPLATE_NAME, MSG_SUBJECT, MSG_CONTENT, PRODUCT_CODE, SEND_LEVEL, DISP_LEVEL, TIME_FLAG, START_TIME1, END_TIME1, START_TIME2, END_TIME2, WEEKEND_FLAG, HOLIDAY_FLAG, DESCRIPTION, TEMPLATE_STATUS, MSG_TYPE, MSG_CHANNEL, TRANS_CODE) values ('MSG_CP_015', '个人一级实名认证失败信息', '个人一级实名认证结果', '<p>&nbsp;尊敬的${name}：<br/>&nbsp;&nbsp;&nbsp;&nbsp;很抱歉通知您！<br/>&nbsp;&nbsp;&nbsp;&nbsp;您所提交的个人一级实名认证信息没有通过我们的认证处理，请您确认您提交的信息是否正确。</p>', 'CP', 3, 3, '0', null, null, null, null, '1', null, '个人一级实名认证失败', '1', '04', '1', null);

INSERT INTO "CP_MSG_TEMPLATE" ("TEMPLATE_CODE", "TEMPLATE_NAME", "MSG_SUBJECT", "MSG_CONTENT", "PRODUCT_CODE", "SEND_LEVEL", "DISP_LEVEL", "TIME_FLAG", "START_TIME1", "END_TIME1", "START_TIME2", "END_TIME2", "WEEKEND_FLAG", "HOLIDAY_FLAG", "DESCRIPTION", "TEMPLATE_STATUS", "MSG_TYPE", "MSG_CHANNEL", "TRANS_CODE") VALUES ('MSG_CP_001', '邮箱激活', '请尽快激活您的邮箱', ' ', 'CP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '01', NULL, NULL);
UPDATE CP_MSG_TEMPLATE SET MSG_CONTENT ='<p><span style="font-size: 14px;font-family: 微软雅黑, sans-serif">尊敬的${userName}：</span></p><p><span style="font-size: 14px;font-family: 微软雅黑, sans-serif"> &nbsp;</span><span style="font-size: 14px;font-family: 微软雅黑, sans-serif">您于<em><span style="font-family:#39;微软雅黑#39;,#39;sans-serif#39;">${time}</span></em>申请验证邮箱，请点击下面的链接完成操作：</span></p><p><span style="font-size: 14px;font-family: 微软雅黑, sans-serif"> &nbsp; &nbsp;</span><span style="font-family: Arial, sans-serif"><a href="http://${domain}/emailValidate/validate?userNo=${userNo}&validateCode=${validateCode}&backToURL=${backToURL}" target="_blank" textvalue="验证邮箱"><span style="font-size:14px;font-family:#39;微软雅黑#39;,#39;sans-serif#39;;color:#00B050">验证邮箱</span></a></span></p><p><span style="font-size: 14px;font-family: 微软雅黑, sans-serif"> </span></p><p><span style="font-size: 14px;font-family: 微软雅黑, sans-serif"></span><span style="font-size: 14px;font-family: 微软雅黑, sans-serif">如果点击无效，请复制下方网址到浏览器地址栏中打开：</span></p>'
|| '<p><span style="font-size: 14px;font-family: 微软雅黑, sans-serif"> &nbsp;http://${domain}/emailValidate/validate?userNo=${userNo}&amp;validateCode=${validateCode}&amp;backToURL=${backToURL}</span></p><p><span style="font-family: 微软雅黑, sans-serif"></span></p><p style="margin: 5px 0;line-height: 24px"><span style="font-size: 14px;font-family: 微软雅黑, sans-serif"> &nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size: 14px;font-family: 微软雅黑, sans-serif">此邮件由系统自动发送，请勿回复！</span></p><p><span style="font-size: 14px;font-family: 微软雅黑, sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;为保障您的账号安全，请于24小时内完成操作，若您没有申请过验证邮箱，请忽略此邮件，由此给您带来的不便请谅解。</span></p><hr/><p><img src="http://${domain}/base/file/download/f4499d46edfb4050bb2ecb8569dd7a2d99000001" alt=""/>'
|| '<span style="font-family: 微软雅黑, sans-serif; font-size: 14px;"> &nbsp; &nbsp;</span><br/><span style="font-size: 14px;font-family: 微软雅黑, sans-serif"></span></p><p><span style="font-size: 14px;font-family: 微软雅黑, sans-serif">服务热线：</span><strong><span style="font-size:24px;font-family:#39;微软雅黑#39;,#39;sans-serif#39;;color:#00B050">95599</span></strong><em><span style="font-family:#39;微软雅黑#39;,#39;sans-serif#39;;color:#D8D8D8">（周一至周五9:00-18:00）</span></em></p>'
WHERE TEMPLATE_CODE = 'MSG_CP_001';

INSERT INTO "CP_MSG_TEMPLATE" ("TEMPLATE_CODE", "TEMPLATE_NAME", "MSG_SUBJECT", "MSG_CONTENT", "PRODUCT_CODE", "SEND_LEVEL", "DISP_LEVEL", "TIME_FLAG", "START_TIME1", "END_TIME1", "START_TIME2", "END_TIME2", "WEEKEND_FLAG", "HOLIDAY_FLAG", "DESCRIPTION", "TEMPLATE_STATUS", "MSG_TYPE", "MSG_CHANNEL", "TRANS_CODE") VALUES ('MSG_CP_002', '邮箱重新绑定', '请尽快完成邮箱重新绑定', ' ', 'CP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '邮箱重新绑定时发送的邮件', '1', '04', NULL, NULL);
UPDATE CP_MSG_TEMPLATE SET MSG_CONTENT ='<p><span style="font-family: 微软雅黑, #39;Microsoft YaHei#39;; font-size: 14px;">尊敬的${userName}：</span></p><p><span style="font-family: 微软雅黑, #39;Microsoft YaHei#39;; font-size: 14px;"><span style="line-height: 1em;"> &nbsp;您于</span><em style="line-height: 1em;">${time}</em><span style="line-height: 1em;">申请重新绑定邮箱，请点击下面的链接完成操作：</span><br/></span></p><p><span style="font-family: 微软雅黑, #39;Microsoft YaHei#39;; font-size: 14px;"> &nbsp; &nbsp; </span><a href="http://${domain}/emailValidate/validate?userNo=${userNo}&validateCode=${validateCode}&backToURL=${backToURL}" target="_blank" textvalue="激活新邮箱" style="font-family: 微软雅黑, #39;Microsoft YaHei#39;; text-decoration: underline; color: rgb(0, 176, 80);"><span style="font-family: 微软雅黑, #39;Microsoft YaHei#39;; color: rgb(0, 176, 80);">激活新邮箱</span></a></p><p><span style="font-family: 微软雅黑, #39;Microsoft YaHei#39;; line-height: 1em; font-size: 14px;"> </span></p><p style="line-height: 1.5em; white-space: normal;"><span style="font-family: 微软雅黑, '
|| '#39;Microsoft YaHei#39;; line-height: 1em; font-size: 14px;">如果点击无效，请复制下方网址到浏览器中打开：<br/></span></p><p style="line-height: 1.5em; white-space: normal;"><span style="font-family: 微软雅黑, #39;Microsoft YaHei#39;; line-height: 1em; font-size: 14px;"> &nbsp;http://${domain}/emailValidate/validate?userNo=${userNo}&amp;validateCode=${validateCode}&amp;backToURL=${backToURL}<br/></span></p><p><span style="font-family: 微软雅黑, #39;Microsoft YaHei#39;; line-height: 1em;"></span><br/></p><p style="line-height: 1.5em; white-space: normal;"><span style="font-family: 微软雅黑, #39;Microsoft YaHei#39;; font-size: 14px;"><span style="line-height: 1em;">为保障您的账号安全，请于24小时内完成操作，若您没有申请过重新绑定邮箱，请忽略此邮件，由此给您带来的不便请谅解。</span></span></p><p style="line-height: 1.5em; white-space: normal;"><br/></p><p style="line-height: 1.5em; white-space: normal;"><span style="font-family: 微软雅黑, #39;Microsoft YaHei#39;; line-height: 1em; font-size: 14px;"> &nbsp;此邮件由系统自动发送，请勿回复！</span></p><hr/><p style="line-height: 1.5em; white-space: normal;">'
|| '<span style="line-height: 1em; font-family: 微软雅黑, #39;Microsoft YaHei#39;; font-size: 14px;"> </span><img src="http://${domain}/base/file/download/f4499d46edfb4050bb2ecb8569dd7a2d99000001" alt="" style="line-height: 1em;"/><span style="font-family: 微软雅黑, #39;Microsoft YaHei#39;; font-size: 14px; line-height: 1em;"> &nbsp; &nbsp;</span><br/><span style="font-family: 微软雅黑, #39;Microsoft YaHei#39;; line-height: 1em; font-size: 14px;"></span></p><p><span style="font-family: 微软雅黑, #39;Microsoft YaHei#39;; font-size: 14px;">服务热线：<strong><span style="font-family: 微软雅黑, #39;Microsoft YaHei#39;; font-size: 24px; color: rgb(0, 176, 80);">95599</span></strong><span style="font-size: 16px; color: rgb(216, 216, 216);"><em>（周一至周五9:00-18:00）</em></span></span></p>'
WHERE TEMPLATE_CODE = 'MSG_CP_002';

INSERT INTO CP_MSG_TEMPLATE("TEMPLATE_CODE", "TEMPLATE_NAME", "MSG_SUBJECT", "MSG_CONTENT", "PRODUCT_CODE", "SEND_LEVEL", "DISP_LEVEL", "TIME_FLAG", "START_TIME1", "END_TIME1", "START_TIME2", "END_TIME2", "WEEKEND_FLAG", "HOLIDAY_FLAG", "DESCRIPTION", "TEMPLATE_STATUS", "MSG_TYPE", "MSG_CHANNEL", "TRANS_CODE") 
VALUES ('MSG_CP_016', '企业一级实名认证成功信息', '企业一级实名认证成功', '<p>尊敬的${chineseFullName}：<br/>&nbsp;&nbsp;&nbsp;&nbsp;恭喜贵公司！<br/>&nbsp;&nbsp;&nbsp;&nbsp;您所提交的企业一级实名认证信息已经通过了系统认证，您现在可以进行放心投、安心理等业务！</p>', 'CP', 3, 3, '0', NULL, NULL, NULL, NULL, '1', NULL, '企业一级实名认证首次认证通过。', '1', '04', '1', NULL);

INSERT INTO CP_MSG_TEMPLATE(TEMPLATE_CODE,TEMPLATE_NAME,MSG_SUBJECT,MSG_CONTENT,PRODUCT_CODE,SEND_LEVEL,DISP_LEVEL,TIME_FLAG,START_TIME1,END_TIME1,START_TIME2,END_TIME2,WEEKEND_FLAG,HOLIDAY_FLAG,DESCRIPTION,TEMPLATE_STATUS,MSG_TYPE,MSG_CHANNEL,TRANS_CODE) VALUES ('MSG_CP_017', '企业二级实名认证成功消息', '企业二级实名认证成功', '尊敬的${chineseFullName}：<br/><p>&nbsp;&nbsp;&nbsp; 经过工作人员的认证审核，您提交的企业资料符合要求，恭喜您顺利通过企业审核!</p><p>&nbsp;&nbsp;&nbsp;&nbsp;您的企业实名认证等级达到2级！</p>', 'CP', 3, 3, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '04', '1', NULL);

INSERT INTO "CP_MSG_TEMPLATE" ("TEMPLATE_CODE", "TEMPLATE_NAME", "MSG_SUBJECT", "MSG_CONTENT", "PRODUCT_CODE", "SEND_LEVEL", "DISP_LEVEL", "TIME_FLAG", "START_TIME1", "END_TIME1", "START_TIME2", "END_TIME2", "WEEKEND_FLAG", "HOLIDAY_FLAG", "DESCRIPTION", "TEMPLATE_STATUS", "MSG_TYPE", "MSG_CHANNEL", "TRANS_CODE") VALUES ('APPLYEMAIL', '申请行内邮箱增加农银豆', '申请行内邮箱增加农银豆', '<p>applyEmail</p>', 'CP', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '04', '5', 'APPLYEMAIL');
