/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : job_platform

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 18:59:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply` (
  `Apply_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '每个申请的独特编号',
  `Project_ID` bigint(20) NOT NULL COMMENT '项目编号',
  `Employee_ID` varchar(255) NOT NULL COMMENT '设计师编号',
  `IsRead` int(1) DEFAULT '0' COMMENT '该申请是否已读,0:未读,1:已读',
  `Riqi` varchar(50) DEFAULT NULL COMMENT '提交这条log的具体时间，格式为年-月-日 时:分:秒',
  PRIMARY KEY (`Apply_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES ('1', '1', '33a150b0-d458-11e7-920f-0d47fb440c3a', '0', '2017-11-29 00:22:40');
INSERT INTO `apply` VALUES ('2', '2', '33a150b0-d458-11e7-920f-0d47fb440c3a', '0', '2017-11-29 00:38:44');
INSERT INTO `apply` VALUES ('3', '4', '41733ff0-d4e9-11e7-a567-29bd96aea731', '0', '2017-11-29 17:42:38');
INSERT INTO `apply` VALUES ('4', '5', '41733ff0-d4e9-11e7-a567-29bd96aea731', '0', '2017-11-29 18:06:27');
INSERT INTO `apply` VALUES ('5', '6', 'c2211630-d4ef-11e7-a567-29bd96aea731', '0', '2017-11-29 18:27:26');
INSERT INTO `apply` VALUES ('6', '7', '33a150b0-d458-11e7-920f-0d47fb440c3a', '0', '2017-11-29 18:30:54');
INSERT INTO `apply` VALUES ('7', '6', '33a150b0-d458-11e7-920f-0d47fb440c3a', '0', '2017-11-29 18:30:57');
INSERT INTO `apply` VALUES ('8', '10', '41733ff0-d4e9-11e7-a567-29bd96aea731', '1', '2017-11-29 19:41:14');
INSERT INTO `apply` VALUES ('9', '14', '33a150b0-d458-11e7-920f-0d47fb440c3a', '1', '2018-05-30 21:25:38');
INSERT INTO `apply` VALUES ('10', '15', '41733ff0-d4e9-11e7-a567-29bd96aea731', '1', '2018-06-01 00:43:09');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `Employee_ID` varchar(255) NOT NULL COMMENT '设计师的唯一编号',
  `HeadImgUrl` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `Name` varchar(255) DEFAULT NULL COMMENT '设计师昵称',
  `Name_real` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `Mobile` varchar(50) DEFAULT NULL COMMENT '手机号',
  `Zhifubao` varchar(100) DEFAULT NULL COMMENT '支付宝账号（用户薪酬发放）',
  `Position` varchar(255) DEFAULT NULL COMMENT '兼职岗位',
  `Wage` int(11) DEFAULT NULL COMMENT '兼职日薪',
  `Job_company` varchar(255) DEFAULT NULL COMMENT '工作经历——单位',
  `Job_position` varchar(255) DEFAULT NULL COMMENT '工作经历——职位',
  `Job_experience` int(11) DEFAULT NULL COMMENT '工作经历——经验（几年）',
  `Job_city` varchar(100) DEFAULT NULL COMMENT '工作经历——城市',
  `Job_district` varchar(50) DEFAULT NULL COMMENT '工作经历——区县',
  `Edu_school` varchar(255) DEFAULT NULL COMMENT '教育经历——学校',
  `Edu_department` varchar(255) DEFAULT NULL COMMENT '教育经历——系别',
  `Edu_degree` varchar(10) DEFAULT NULL COMMENT '教育经历——学历',
  `Skills` varchar(500) DEFAULT NULL COMMENT '掌握技能（文字）',
  `Skills_list` varchar(500) DEFAULT NULL COMMENT '隐性，掌握技能列表（json：技能标签）',
  `Projects` varchar(1000) DEFAULT NULL COMMENT '展示项目（文字）',
  `Projects_list` varchar(1000) DEFAULT NULL COMMENT '隐性，展示项目列表（json：项目名称+链接）',
  `Riqi` varchar(50) DEFAULT NULL COMMENT '注册日期，格式为年-月-日 时:分:秒',
  `Ordered_number` int(11) DEFAULT '0' COMMENT '被预约次数',
  `Rating` float DEFAULT '5' COMMENT '隐性，雇主对这位设计师的综合评分',
  `State` int(1) DEFAULT '0' COMMENT '预约状态,0:未预约,1:已预约',
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('33a150b0-d458-11e7-920f-0d47fb440c3a', null, '夏', null, '18157146715', null, '前端工程师', '600', '京东', '前端', '3', '北京', '海淀区', '清华', '软件学院', '本科', '精通桌面电脑软、硬件相关知识和技能，能独立判断软、硬件故障，对于常用的Office办公软件较精通； 精通桌面电脑软、硬件相关知识和技能，能独立判断软、硬件故障，对于常用的Office办公软件较精通； \n熟悉Windows AD、Exchange、Symantec 防病毒、NBU等系统的配置经验并具备一定的基础理论知识； 精通桌面电脑软、硬件相关知识和技能，能独立判断软、硬件故障，对于常用的Office办公软件较精通； \n具备国内主流OA系统的日常维护操作经验，熟悉系统层面和应用层面的相关操作 精通桌面电脑软、硬件相关知识和技能，能独立判断软、硬件故障，对于常用的Office办公软件较精通； \n具有较强的沟通能力，有上进心、责任心、学习能力及服务意识强。能承受工作压力，接受必要时的加班工作。精通桌面电脑软、硬件相关知识和技能，能独立判断软、硬件故障，对于常用的Office办公软件较精通；', null, '北京法院运维 北京法院运维 北京法院运维 北京法院运维 北京安监局运维 北京安监局运维 北京安监局运维 北京安监局运维 北京安监局运维 北京安监局运维 北京安监局运维 \n北京安监局运维 \n北京金融资产交易所运维 \n民生金融中心-建银投资运维北京法院运维 \n北京安监局运维 \n北京金融资产交易所运维 \n民生金融中心-建银投资运维\n北京安监局运维 \n北京金融资产交易所运维 \n民生金融中心-建银投资运维\n北京安监局运维 \n北京金融资产交易所运维 \n民生金融中心-建银投资运维\n北京安监局运维 \n北京金融资产交易所运维 \n民生金融中心-建银投资运维', null, '2017-11-29 00:21:34', '5', '4.3', '1');
INSERT INTO `employee` VALUES ('33a150b0-d458-11e7-920f-0d47fb441c3b', null, '夏1', null, '18157146714', null, '前端工程师', '600', '京东', '前端', '3', '北京', '海淀区', '清华', '软件学院', '本科', '精通桌面电脑软、硬件相关知识和技能，能独立判断软、硬件故障，对于常用的Office办公软件较精通； 精通桌面电脑软、硬件相关知识和技能，能独立判断软、硬件故障，对于常用的Office办公软件较精通； \n熟悉Windows AD、Exchange、Symantec 防病毒、NBU等系统的配置经验并具备一定的基础理论知识； 精通桌面电脑软、硬件相关知识和技能，能独立判断软、硬件故障，对于常用的Office办公软件较精通； \n具备国内主流OA系统的日常维护操作经验，熟悉系统层面和应用层面的相关操作 精通桌面电脑软、硬件相关知识和技能，能独立判断软、硬件故障，对于常用的Office办公软件较精通； \n具有较强的沟通能力，有上进心、责任心、学习能力及服务意识强。能承受工作压力，接受必要时的加班工作。精通桌面电脑软、硬件相关知识和技能，能独立判断软、硬件故障，对于常用的Office办公软件较精通；', null, '北京法院运维 北京法院运维 北京法院运维 北京法院运维 北京安监局运维 北京安监局运维 北京安监局运维 北京安监局运维 北京安监局运维 北京安监局运维 北京安监局运维 \n北京安监局运维 \n北京金融资产交易所运维 \n民生金融中心-建银投资运维北京法院运维 \n北京安监局运维 \n北京金融资产交易所运维 \n民生金融中心-建银投资运维\n北京安监局运维 \n北京金融资产交易所运维 \n民生金融中心-建银投资运维\n北京安监局运维 \n北京金融资产交易所运维 \n民生金融中心-建银投资运维\n北京安监局运维 \n北京金融资产交易所运维 \n民生金融中心-建银投资运维', null, '2017-11-29 00:21:34', '0', '0', '0');
INSERT INTO `employee` VALUES ('41733ff0-d4e9-11e7-a567-29bd96aea731', null, '设2', null, '18811439382', null, '前端工程师', '600', '腾讯', '前端', '2', '北京', '海淀区', null, null, null, null, null, null, null, '2017-11-29 17:39:54', '3', '4', '0');
INSERT INTO `employee` VALUES ('c2211630-d4ef-11e7-a567-29bd96aea731', null, '设4', null, '18811439384', null, 'JAVA工程师', '500', '百度', 'java工程师', '3', '北京', '海淀区', null, null, null, null, null, null, null, '2017-11-29 18:26:27', '5', '4', '1');

-- ----------------------------
-- Table structure for employer
-- ----------------------------
DROP TABLE IF EXISTS `employer`;
CREATE TABLE `employer` (
  `Employer_ID` varchar(255) NOT NULL COMMENT '雇主的唯一编号',
  `HeadImgUrl` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `Name` varchar(255) DEFAULT NULL COMMENT '雇主昵称',
  `Name_real` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `Mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `Company` varchar(255) DEFAULT NULL COMMENT '公司名称（报销用）',
  `Location` varchar(255) DEFAULT NULL COMMENT '发票寄送地址',
  `Company_introduction` varchar(1000) DEFAULT NULL COMMENT '公司产品介绍',
  `Riqi` varchar(50) DEFAULT NULL COMMENT '注册日期，格式为年-月-日 时:分:秒',
  `Rating` float DEFAULT '5' COMMENT '设计师对雇主的平均打分',
  PRIMARY KEY (`Employer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employer
-- ----------------------------
INSERT INTO `employer` VALUES ('35850160-d4f3-11e7-a567-29bd96aea731', null, '吴3', '吴3', '18811439383', null, null, null, '2017-11-29 18:51:09', '4');
INSERT INTO `employer` VALUES ('e6c01a60-d4e8-11e7-a567-29bd96aea731', null, '吴1', '吴1', '18157146715', null, null, null, '2017-11-29 17:37:22', '3.5');
INSERT INTO `employer` VALUES ('f5b56ac0-d457-11e7-920f-0d47fb440c3a', null, '七', '七酱', '18332551342', '', '', '', '2017-11-29 00:19:50', '3.3');

-- ----------------------------
-- Table structure for ip
-- ----------------------------
DROP TABLE IF EXISTS `ip`;
CREATE TABLE `ip` (
  `Ip_address` varchar(50) NOT NULL COMMENT 'ip地址',
  `Ip_location` varchar(255) DEFAULT NULL COMMENT 'ip地址背后对应的真实地址',
  `Ip_ISP` varchar(255) DEFAULT NULL COMMENT 'ip地址背后对应的运营商',
  PRIMARY KEY (`Ip_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ip
-- ----------------------------

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `Log_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '每条log记录的唯一编号',
  `Project_ID` bigint(20) NOT NULL COMMENT '项目编号',
  `Progress` varchar(1000) DEFAULT NULL COMMENT '这条log的详细内容',
  `IsRead_Employee` int(1) DEFAULT '0' COMMENT '该记录设计师是否已读,0:未读,1:已读',
  `IsRead_Employer` int(1) DEFAULT '0' COMMENT '该记录雇主是否已读,0:未读,1:已读',
  `Riqi` varchar(50) DEFAULT NULL COMMENT '提交这条log的具体时间，格式为年-月-日 时:分:秒',
  PRIMARY KEY (`Log_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', '1', '预约夏设计师成功', '1', '1', '2017-11-29 00:23:52');
INSERT INTO `log` VALUES ('2', '1', '雇主已申请退款500元', '1', '1', '2017-11-29 00:25:01');
INSERT INTO `log` VALUES ('4', '1', '雇主已同意退款500元', '1', '1', '2017-11-29 00:27:45');
INSERT INTO `log` VALUES ('5', '1', '设计师已评价雇主', '1', '1', '2017-11-29 00:28:08');
INSERT INTO `log` VALUES ('6', '1', '雇主已评价设计师', '1', '1', '2017-11-29 00:28:58');
INSERT INTO `log` VALUES ('8', '2', '预约夏设计师成功', '1', '1', '2017-11-29 00:39:47');
INSERT INTO `log` VALUES ('9', '2', '雇主延长预约5天', '1', '1', '2017-11-29 00:39:58');
INSERT INTO `log` VALUES ('10', '2', '设计师已申请完工，请雇主尽快验收项目，系统会在申请完工后七天内自动确认完工', '1', '1', '2017-11-29 00:41:41');
INSERT INTO `log` VALUES ('11', '2', '雇主确认完工申请', '1', '1', '2017-11-29 00:42:35');
INSERT INTO `log` VALUES ('12', '2', '雇主已评价设计师', '1', '1', '2017-11-29 00:42:53');
INSERT INTO `log` VALUES ('13', '3', '预约夏设计师成功，预约项目日薪：800元/天，项目工时：5天', '1', '1', '2017-11-29 09:16:07');
INSERT INTO `log` VALUES ('14', '3', '雇主延长预约20天', '1', '1', '2017-11-29 09:31:09');
INSERT INTO `log` VALUES ('15', '2', '设计师已评价雇主', '1', '1', '2017-11-29 09:47:15');
INSERT INTO `log` VALUES ('16', '3', '设计师已申请完工，请雇主尽快验收项目，否则系统会在申请完工后七天内自动确认完工', '1', '1', '2017-11-29 09:47:32');
INSERT INTO `log` VALUES ('17', '3', '雇主确认完工申请', '1', '1', '2017-11-29 10:02:16');
INSERT INTO `log` VALUES ('18', '3', '雇主已评价设计师', '1', '1', '2017-11-29 10:02:37');
INSERT INTO `log` VALUES ('19', '4', '预约设2设计师成功，预约项目日薪：800元/天，项目工时：2天', '1', '1', '2017-11-29 17:43:12');
INSERT INTO `log` VALUES ('20', '4', '雇主延长预约3天', '1', '1', '2017-11-29 17:45:35');
INSERT INTO `log` VALUES ('21', '4', '工作记录：testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest', '1', '1', '2017-11-29 17:48:18');
INSERT INTO `log` VALUES ('22', '4', '设计师已申请完工，请雇主尽快验收项目，否则系统会在申请完工后七天内自动确认完工', '1', '1', '2017-11-29 17:49:30');
INSERT INTO `log` VALUES ('23', '4', '雇主驳回完工申请', '1', '1', '2017-11-29 17:50:16');
INSERT INTO `log` VALUES ('24', '4', '设计师已申请完工，请雇主尽快验收项目，否则系统会在申请完工后七天内自动确认完工', '1', '1', '2017-11-29 17:50:44');
INSERT INTO `log` VALUES ('25', '4', '雇主确认完工申请', '1', '1', '2017-11-29 17:51:53');
INSERT INTO `log` VALUES ('26', '4', '雇主已评价设计师', '1', '1', '2017-11-29 17:52:03');
INSERT INTO `log` VALUES ('27', '5', '预约设2设计师成功，预约项目日薪：800元/天，项目工时：3天', '1', '1', '2017-11-29 18:07:23');
INSERT INTO `log` VALUES ('28', '5', '雇主延长预约1天', '1', '1', '2017-11-29 18:15:02');
INSERT INTO `log` VALUES ('29', '5', '雇主已申请退款2400元', '1', '1', '2017-11-29 18:15:28');
INSERT INTO `log` VALUES ('30', '5', '设计师驳回退款申请，等待平台介入处理', '1', '1', '2017-11-29 18:23:20');
INSERT INTO `log` VALUES ('31', '8', '预约设4设计师成功，预约项目日薪：500元/天，项目工时：3天', '1', '1', '2017-11-29 18:29:25');
INSERT INTO `log` VALUES ('32', '9', '预约夏设计师成功，预约项目日薪：500元/天，项目工时：4天', '1', '1', '2017-11-29 18:53:19');
INSERT INTO `log` VALUES ('34', '8', '雇主已申请退款1000元，设计师将在3天内答复，逾期默认确认退款', '1', '1', '2017-11-30 13:39:42');
INSERT INTO `log` VALUES ('35', '8', '平台已自动确认退款1000元', '1', '1', '2017-11-30 13:40:42');
INSERT INTO `log` VALUES ('36', '12', '预约设4设计师成功，预约项目日薪：500元/天，项目工时：6天', '0', '0', '2017-11-30 20:26:14');
INSERT INTO `log` VALUES ('37', '9', '工作记录：测试消息', '1', '1', '2017-11-30 21:51:17');
INSERT INTO `log` VALUES ('38', '9', '工作记录：测试消息小', '1', '1', '2017-11-30 21:51:40');
INSERT INTO `log` VALUES ('39', '9', '工作记录：测试测试', '1', '1', '2017-11-30 21:52:59');
INSERT INTO `log` VALUES ('40', '9', '工作记录：测试测试测试测试', '1', '1', '2017-11-30 22:07:47');
INSERT INTO `log` VALUES ('41', '9', '工作记录：测试车', '1', '1', '2017-11-30 22:10:40');
INSERT INTO `log` VALUES ('42', '3', '设计师已评价雇主', '1', '1', '2017-11-30 22:14:11');
INSERT INTO `log` VALUES ('43', '6', '预约设4设计师成功，预约项目日薪：800元/天，项目工时：6天', '1', '1', '2017-11-30 22:15:56');
INSERT INTO `log` VALUES ('44', '6', '雇主延长预约5天', '1', '1', '2017-11-30 22:16:30');
INSERT INTO `log` VALUES ('45', '6', '雇主延长预约6天', '1', '1', '2017-11-30 22:16:41');
INSERT INTO `log` VALUES ('46', '6', '雇主延长预约3天', '1', '1', '2017-11-30 22:23:51');
INSERT INTO `log` VALUES ('47', '6', '雇主延长预约2天', '1', '1', '2017-11-30 22:27:10');
INSERT INTO `log` VALUES ('48', '6', '雇主延长预约2天', '1', '1', '2017-11-30 22:35:05');
INSERT INTO `log` VALUES ('49', '6', '雇主延长预约5天', '1', '1', '2017-11-30 23:05:11');
INSERT INTO `log` VALUES ('50', '6', '雇主延长预约30天', '1', '1', '2017-11-30 23:05:24');
INSERT INTO `log` VALUES ('51', '6', '工作记录：测试测', '1', '1', '2017-11-30 23:06:52');
INSERT INTO `log` VALUES ('52', '8', '设计师已评价雇主', '1', '1', '2017-11-30 23:07:31');
INSERT INTO `log` VALUES ('53', '6', '逾期未付款，平台已自动取消对设4设计师的预约', '1', '1', '2017-11-30 23:15:56');
INSERT INTO `log` VALUES ('54', '6', '预约设4设计师成功，预约项目日薪：600元/天，项目工时：5天', '1', '1', '2017-11-30 23:22:11');
INSERT INTO `log` VALUES ('55', '6', '雇主延长预约6天', '1', '1', '2017-11-30 23:22:30');
INSERT INTO `log` VALUES ('56', '6', '工作记录：工作积累', '1', '1', '2017-11-30 23:22:51');
INSERT INTO `log` VALUES ('57', '6', '工作记录：工作积累', '1', '1', '2017-11-30 23:23:12');
INSERT INTO `log` VALUES ('58', '6', '预约设4设计师成功，预约项目日薪：800元/天，项目工时：6天', '1', '1', '2017-11-30 23:31:16');
INSERT INTO `log` VALUES ('59', '6', '雇主延长预约14天', '1', '1', '2017-11-30 23:31:54');
INSERT INTO `log` VALUES ('60', '6', '雇主延长预约4天', '0', '1', '2017-11-30 23:39:09');
INSERT INTO `log` VALUES ('61', '9', '工作记录：123', '1', '1', '2018-05-23 22:41:33');
INSERT INTO `log` VALUES ('62', '8', '雇主已评价设计师', '0', '1', '2018-05-23 22:43:57');
INSERT INTO `log` VALUES ('63', '9', '设计师已申请完工，请雇主尽快验收项目，否则系统会在申请完工后七天内自动确认完工', '1', '1', '2018-05-30 21:23:39');
INSERT INTO `log` VALUES ('64', '9', '雇主确认完工申请', '0', '1', '2018-05-30 21:45:05');
INSERT INTO `log` VALUES ('65', '9', '雇主已评价设计师', '0', '1', '2018-05-30 21:45:14');
INSERT INTO `log` VALUES ('66', '14', '预约夏设计师成功，预约项目日薪：500元/天，项目工时：2天', '1', '1', '2018-05-30 21:45:27');
INSERT INTO `log` VALUES ('67', '9', '设计师已评价雇主', '0', '1', '2018-05-30 21:47:32');
INSERT INTO `log` VALUES ('68', '14', '雇主延长预约4天', '1', '1', '2018-05-30 21:48:00');
INSERT INTO `log` VALUES ('69', '14', '工作记录：工作开始了', '1', '1', '2018-05-30 22:01:56');
INSERT INTO `log` VALUES ('70', '14', '工作记录：正在处理中', '1', '1', '2018-05-30 22:02:19');
INSERT INTO `log` VALUES ('71', '14', '工作记录：已经完成了，可以查看验收', '1', '1', '2018-05-30 22:02:35');
INSERT INTO `log` VALUES ('72', '14', '设计师已申请完工，请雇主尽快验收项目，否则系统会在申请完工后七天内自动确认完工', '1', '1', '2018-05-30 22:03:38');
INSERT INTO `log` VALUES ('73', '14', '雇主驳回完工申请', '1', '1', '2018-05-30 22:03:54');
INSERT INTO `log` VALUES ('74', '14', '工作记录：重新制作', '1', '1', '2018-05-30 22:04:21');
INSERT INTO `log` VALUES ('75', '14', '雇主已申请退款1元，设计师将在3天内答复，逾期默认自动退款', '1', '1', '2018-05-30 22:07:50');
INSERT INTO `log` VALUES ('76', '14', '设计师驳回退款申请，等待平台介入处理', '1', '1', '2018-05-30 22:08:01');
INSERT INTO `log` VALUES ('77', '4', '设计师已评价雇主', '1', '0', '2018-06-01 00:41:36');
INSERT INTO `log` VALUES ('78', '15', '预约设2设计师成功，预约项目日薪：500元/天，项目工时：1天', '1', '1', '2018-06-01 00:44:42');
INSERT INTO `log` VALUES ('79', '15', '工作记录：123', '1', '1', '2018-06-01 00:46:27');
INSERT INTO `log` VALUES ('80', '15', '工作记录：123', '1', '1', '2018-06-01 00:46:31');
INSERT INTO `log` VALUES ('81', '15', '设计师已申请完工，请雇主尽快验收项目，否则系统会在申请完工后七天内自动确认完工', '1', '1', '2018-06-01 00:46:46');
INSERT INTO `log` VALUES ('82', '15', '雇主确认完工申请', '1', '1', '2018-06-01 00:48:12');
INSERT INTO `log` VALUES ('83', '15', '雇主已评价设计师', '1', '1', '2018-06-01 00:48:20');

-- ----------------------------
-- Table structure for operating
-- ----------------------------
DROP TABLE IF EXISTS `operating`;
CREATE TABLE `operating` (
  `Operation_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '操作记录的唯一ID',
  `Employer_ID` varchar(255) DEFAULT NULL COMMENT '雇主和设计师的ID二选一',
  `Employee_ID` varchar(255) DEFAULT NULL COMMENT '雇主和设计师的ID二选一',
  `Ip_address` varchar(50) DEFAULT NULL COMMENT 'ip地址',
  `Page_url` varchar(255) DEFAULT NULL COMMENT '当前页面',
  `Element` varchar(255) DEFAULT NULL COMMENT '操作对象，具体操作的html元素（具体可以讨论）',
  `Event` varchar(50) DEFAULT NULL COMMENT '操作类型，比如“点击”、“搜索”等等',
  `Desp` varchar(255) DEFAULT NULL COMMENT '这项操作的详情，比如操作是“搜索”，那么这里就记录搜索内容',
  `Riqi` varchar(50) DEFAULT NULL COMMENT '这项操作的具体日期',
  PRIMARY KEY (`Operation_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operating
-- ----------------------------

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `Project_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '每个项目的唯一编号',
  `Riqi` varchar(50) DEFAULT NULL COMMENT 'project的发布日期，格式为年-月-日 时:分:秒',
  `Name` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `Desp` varchar(1000) DEFAULT NULL COMMENT '项目描述',
  `Wage` int(11) DEFAULT NULL COMMENT '项目日薪（发布）',
  `Length` int(11) DEFAULT NULL COMMENT '项目工时（多少天）（发布）',
  `Wage_real` int(11) DEFAULT NULL COMMENT '项目日薪（实际支付）',
  `Length_real` int(11) DEFAULT NULL COMMENT '项目工时（实际支付）',
  `Employer_ID` varchar(255) DEFAULT NULL COMMENT '雇主编号',
  `Employee_ID` varchar(255) DEFAULT NULL COMMENT '选中的设计师的编号',
  `Skills_list` varchar(500) DEFAULT NULL COMMENT '隐性，项目需要的技能列表，json',
  `Position` varchar(255) DEFAULT NULL COMMENT '隐性，项目需要的岗位',
  `State` int(1) DEFAULT '1' COMMENT '项目状态（非常重要）',
  `Refund` int(11) DEFAULT '0' COMMENT '项目退款金额（申请）',
  `Refund_real` int(11) DEFAULT '0' COMMENT '项目退款金额（实际）',
  `Amount_paid` int(11) DEFAULT '0' COMMENT '项目已支付金额',
  `Delivery_number` int(1) DEFAULT '0' COMMENT '投递次数',
  `System_paidFlag` int(1) DEFAULT '0' COMMENT '系统支付状态，0:未结款，1:已结款',
  PRIMARY KEY (`Project_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('1', '2017-11-29 00:20:41', '测试修改', '测试修改测试修改测试修改测试修改测试修改测试修改测试修改测试修改测试修改测试修改测试修改测试修改测试修改', '800', '5', '600', '5', 'f5b56ac0-d457-11e7-920f-0d47fb440c3a', '33a150b0-d458-11e7-920f-0d47fb440c3a', null, null, '7', '500', '500', '1000', '1', '0');
INSERT INTO `project` VALUES ('2', '2017-11-29 00:37:36', '测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '700', '3', '800', '10', 'f5b56ac0-d457-11e7-920f-0d47fb440c3a', '33a150b0-d458-11e7-920f-0d47fb440c3a', null, null, '7', '0', '0', '8000', '1', '0');
INSERT INTO `project` VALUES ('3', '2017-11-29 09:16:07', '测试测试哦', '测试测试哦测试测试哦测试测试哦测试测试哦测试测试哦测试测试哦测试测试哦', '800', '5', '800', '25', 'f5b56ac0-d457-11e7-920f-0d47fb440c3a', '33a150b0-d458-11e7-920f-0d47fb440c3a', null, null, '7', '0', '0', '10000', '0', '0');
INSERT INTO `project` VALUES ('4', '2017-11-29 17:39:16', 'test', 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest', '800', '3', '800', '5', 'e6c01a60-d4e8-11e7-a567-29bd96aea731', '41733ff0-d4e9-11e7-a567-29bd96aea731', null, null, '7', '0', '0', '4000', '1', '0');
INSERT INTO `project` VALUES ('5', '2017-11-29 17:52:58', 'test2', 'test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2test2', '800', '5', '800', '4', 'e6c01a60-d4e8-11e7-a567-29bd96aea731', '41733ff0-d4e9-11e7-a567-29bd96aea731', null, null, '6', '2400', '0', '2400', '1', '0');
INSERT INTO `project` VALUES ('6', '2017-11-29 18:22:49', '类似网易云极客学院 招募兼职讲师. 我们会有专门的技术讲师将技术大牛的分享变成成品教学视频.', '1.项目实战: 以高仿商业项目讲解为主.引入一.架构设计(MVC,MVVM,MVP等) 二.设计模式 三.编程思想(响应式,函数式,链式编程等) 四.内容.通过项目讲解,将编程思想上的技术运用到实际开发中.(注:上面列举仅做参考,案例和技术自拟) \n2.实用技术: 实用API技术讲解.通过高仿商业项目,讲解某些实用技术API.如,直播技术.即时通讯技术,人工智能,AR技术等(注:实用技术讲解,不能局限于一套API.特殊功能除外.讲解过程要对比讲解.可侧重讲解某套API,除API讲解外.分析底层技术以及原理讲解更为重要.) \n3.iOS & MacOS 逆向工程: 逆向工程为冷门技术领域.无经验者慎重接单.方向 打造iOS正向工程师 转型 逆向工程之路. ARM汇编详解,逆向原理分析,反汇编案例分析(重点),项目演示(非越狱机)\n4.iOS安全开发：熟悉全盘加密 ，固态NAND ，磁盘加密 ，复制实时文件系统，DataTheft载荷 等技术，有实际对于項目攻防实作经验为主，课程內容以著名項目做解析，解释为何如此处理可以达到什么安全效果，或是有和安全漏洞。 \n5.音视频：掌握OpenGL 与 OpenGL ES；有OpenGL ES 或 OpenGL相关项目经验优先；对音视频编解码、AV Foundation、有多媒体处理工作经验的优先，如Shader、滤镜、GPUImage；了解GPU 与 CPU 的原理和差异性；具备扎实的C/C++基础，对于算法和数据结构基础牢固；具备扎实的图像处理的功底，3D数学、线性代数基础数学牢固；具体OpenGLOpenGL ES 项目者优先', '600', '4', '800', '24', 'f5b56ac0-d457-11e7-920f-0d47fb440c3a', 'c2211630-d4ef-11e7-a567-29bd96aea731', null, null, '2', '0', '0', '0', '2', '0');
INSERT INTO `project` VALUES ('7', '2017-11-29 18:28:26', 'test3', 'test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3test3', '600', '3', null, null, 'e6c01a60-d4e8-11e7-a567-29bd96aea731', null, null, null, '1', '0', '0', '0', '1', '0');
INSERT INTO `project` VALUES ('8', '2017-11-29 18:29:25', 'test4', 'asdfghjonbvhfgyuhoijwdrytfuygihjokLuygduwge9qwhf89wehfierhvgidjxvnfijihfw', '500', '3', '500', '3', 'e6c01a60-d4e8-11e7-a567-29bd96aea731', 'c2211630-d4ef-11e7-a567-29bd96aea731', null, null, '7', '1000', '0', '1500', '0', '0');
INSERT INTO `project` VALUES ('9', '2017-11-29 18:53:19', 'test5', 'test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5test5phpjs', '500', '4', '500', '4', '35850160-d4f3-11e7-a567-29bd96aea731', '33a150b0-d458-11e7-920f-0d47fb440c3a', null, null, '7', '0', '0', '2000', '0', '0');
INSERT INTO `project` VALUES ('10', '2017-11-29 19:40:40', 'test', '11112111111111111111111111111211111111111111111111111121111111111111111111111112111111111111111111111111211111111111111111111', '500', '3', null, null, '35850160-d4f3-11e7-a567-29bd96aea731', null, null, null, '1', '0', '0', '0', '1', '0');
INSERT INTO `project` VALUES ('13', '2018-05-23 22:45:02', '项目新需求', '123hkasd阿打算考核 as 去我饿   as的完全饿 人 啊是好 人啊沙发 和人案发生了噶  按时发货杰卡斯 反而as', '900', '4', null, null, 'e6c01a60-d4e8-11e7-a567-29bd96aea731', null, null, null, '1', '0', '0', '0', '0', '0');
INSERT INTO `project` VALUES ('14', '2018-05-30 21:25:26', '123', '发布需求后，专员将在2小时内为您推荐知名设计师为您工作。如您对设计师的服务不满意，可以无条件退款。', '500', '2', '500', '6', '35850160-d4f3-11e7-a567-29bd96aea731', '33a150b0-d458-11e7-920f-0d47fb440c3a', null, null, '6', '1', '500', '500', '1', '0');
INSERT INTO `project` VALUES ('15', '2018-06-01 00:39:15', '新需求', '发布需求后，专员将在2小时内为您推荐知名设计师为您工作。如您对设计师的服务不满意，可以无条件退款', '900', '6', '500', '1', '35850160-d4f3-11e7-a567-29bd96aea731', '41733ff0-d4e9-11e7-a567-29bd96aea731', null, null, '5', '0', '0', '0', '1', '0');

-- ----------------------------
-- Table structure for rating
-- ----------------------------
DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `Rating_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '每个评分的唯一编号',
  `Project_ID` bigint(20) NOT NULL COMMENT '项目编号',
  `Comment` varchar(1000) DEFAULT NULL COMMENT '评论（文本）',
  `Rating` float DEFAULT NULL COMMENT '评分（0-5）',
  `Type` int(1) DEFAULT NULL COMMENT '1表示这条评分是雇主对设计师的评分，2表示这条评分是设计师对雇主的评分',
  `UserId` varchar(255) DEFAULT NULL COMMENT '被评价者ID',
  `Riqi` varchar(50) DEFAULT NULL COMMENT '该评论提交的日期',
  PRIMARY KEY (`Rating_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rating
-- ----------------------------
INSERT INTO `rating` VALUES ('1', '1', '差评', '2', '2', 'f5b56ac0-d457-11e7-920f-0d47fb440c3a', '2017-11-29 00:28:08');
INSERT INTO `rating` VALUES ('2', '1', '差评', '2', '1', '33a150b0-d458-11e7-920f-0d47fb440c3a', '2017-11-29 00:28:58');
INSERT INTO `rating` VALUES ('3', '2', '很不错', '5', '1', '33a150b0-d458-11e7-920f-0d47fb440c3a', '2017-11-29 00:42:53');
INSERT INTO `rating` VALUES ('4', '2', '不错', '4', '2', 'f5b56ac0-d457-11e7-920f-0d47fb440c3a', '2017-11-29 09:47:14');
INSERT INTO `rating` VALUES ('5', '3', '非常棒', '5', '1', '33a150b0-d458-11e7-920f-0d47fb440c3a', '2017-11-29 10:02:37');
INSERT INTO `rating` VALUES ('6', '4', '好', '5', '1', '41733ff0-d4e9-11e7-a567-29bd96aea731', '2017-11-29 17:52:03');
INSERT INTO `rating` VALUES ('7', '3', '不错不错', '4', '2', 'f5b56ac0-d457-11e7-920f-0d47fb440c3a', '2017-11-30 22:14:11');
INSERT INTO `rating` VALUES ('8', '8', '测试测试', '4', '2', 'e6c01a60-d4e8-11e7-a567-29bd96aea731', '2017-11-30 23:07:31');
INSERT INTO `rating` VALUES ('9', '8', '123', '4', '1', 'c2211630-d4ef-11e7-a567-29bd96aea731', '2018-05-23 22:43:57');
INSERT INTO `rating` VALUES ('10', '9', '12341', '5', '1', '33a150b0-d458-11e7-920f-0d47fb440c3a', '2018-05-30 21:45:14');
INSERT INTO `rating` VALUES ('11', '9', '123', '4', '2', '35850160-d4f3-11e7-a567-29bd96aea731', '2018-05-30 21:47:32');
INSERT INTO `rating` VALUES ('12', '4', '123', '3', '2', 'e6c01a60-d4e8-11e7-a567-29bd96aea731', '2018-06-01 00:41:36');
INSERT INTO `rating` VALUES ('13', '15', '123', '3', '1', '41733ff0-d4e9-11e7-a567-29bd96aea731', '2018-06-01 00:48:20');
