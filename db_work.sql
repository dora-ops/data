/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : db_work

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 18:56:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_bm
-- ----------------------------
DROP TABLE IF EXISTS `tb_bm`;
CREATE TABLE `tb_bm` (
  `Id` int(11) NOT NULL,
  `name1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time1` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_bm
-- ----------------------------
INSERT INTO `tb_bm` VALUES ('1', '部门名称', '计划主题', '计划内容', '2008-01-04 00:00:00');
INSERT INTO `tb_bm` VALUES ('2', '开发部', '下一系列图书', '下一系列图书下一系列图书下一系列图书下一系列图书下一系列图书', '2011-05-20 00:00:00');
INSERT INTO `tb_bm` VALUES ('3', '魂牵梦萦', '塔城', '震荡', '2011-05-20 00:00:00');

-- ----------------------------
-- Table structure for tb_chuchai
-- ----------------------------
DROP TABLE IF EXISTS `tb_chuchai`;
CREATE TABLE `tb_chuchai` (
  `Id` int(11) NOT NULL,
  `chuarea` varchar(255) DEFAULT NULL,
  `time1` datetime DEFAULT NULL,
  `time2` datetime DEFAULT NULL,
  `name1` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_chuchai
-- ----------------------------
INSERT INTO `tb_chuchai` VALUES ('3', '学习先进的技术', '2007-12-25 00:00:00', '2007-12-28 00:00:00', 'TSoft', '策划部', '0');
INSERT INTO `tb_chuchai` VALUES ('4', '公费旅游', '2007-12-30 00:00:00', '2007-12-31 00:00:00', 'TSoft', '质量部', '0');
INSERT INTO `tb_chuchai` VALUES ('5', '集体', '2008-01-05 00:00:00', '2008-01-06 00:00:00', 'TSoft', '文档部', '0');
INSERT INTO `tb_chuchai` VALUES ('6', '组装程序', '2011-05-16 00:00:00', '2011-05-17 00:00:00', 'mr', '开发', '1');
INSERT INTO `tb_chuchai` VALUES ('7', '程序安装', '2011-05-20 00:00:00', '2011-05-24 00:00:00', 'mr', '开发', '0');

-- ----------------------------
-- Table structure for tb_meeting
-- ----------------------------
DROP TABLE IF EXISTS `tb_meeting`;
CREATE TABLE `tb_meeting` (
  `Id` int(11) NOT NULL,
  `MTime` varchar(255) DEFAULT NULL,
  `ZPerson` varchar(255) DEFAULT NULL,
  `CPerson` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_meeting
-- ----------------------------
INSERT INTO `tb_meeting` VALUES ('1', '2007-12-25 08:25', '各部门经理', '总经理', '提高工作质量', '会议室', '讨论一下怎样将工作保质保量的搞上去');
INSERT INTO `tb_meeting` VALUES ('2', '2010-05-14 17:20', '所有人员', '明明', '表扬大会', '本公司', '表扬大会表扬大会表扬大会表扬大会表扬大会表扬大会表扬大会表扬大会');
INSERT INTO `tb_meeting` VALUES ('3', '2011-05-20 13:56', '全体', '总经理', '为什么', '本公司', '为什么为什么为什么为什么为什么为什么');

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `Id` decimal(19,0) NOT NULL,
  `modeId` decimal(19,0) DEFAULT NULL,
  `linkUrl` varchar(255) DEFAULT NULL,
  `menuName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES ('1', '0', null, '日常管理');
INSERT INTO `tb_menu` VALUES ('3', '1', 'EveryDay/meeting/meeting_index.jsp', '会议管理');
INSERT INTO `tb_menu` VALUES ('4', '1', 'EveryDay/BBC/bbc_index.jsp', '公告管理');
INSERT INTO `tb_menu` VALUES ('5', '0', null, '考勤管理');
INSERT INTO `tb_menu` VALUES ('6', '5', 'Kaoqin/waichu.jsp', '外出登记');
INSERT INTO `tb_menu` VALUES ('7', '5', 'Kaoqin/qingjia_index.jsp', '请假登记');
INSERT INTO `tb_menu` VALUES ('8', '5', 'Kaoqin/chuchai_index.jsp', '出差登记');
INSERT INTO `tb_menu` VALUES ('9', '5', 'Kaoqin/onduty_index.jsp', '上下班登记');
INSERT INTO `tb_menu` VALUES ('10', '0', null, '计划制定');
INSERT INTO `tb_menu` VALUES ('11', '10', 'Planmanage/qiye_planindex.jsp', '企业计划');
INSERT INTO `tb_menu` VALUES ('12', '10', 'Planmanage/bm_index.jsp', '部门计划');
INSERT INTO `tb_menu` VALUES ('13', '10', 'Planmanage/person_index.jsp', '个人计划 ');
INSERT INTO `tb_menu` VALUES ('14', '0', null, '审核管理');
INSERT INTO `tb_menu` VALUES ('15', '14', 'Shenhe/fa.jsp', '发布申请');
INSERT INTO `tb_menu` VALUES ('16', '14', 'Shenhe/piguan.jsp', '审核批示');
INSERT INTO `tb_menu` VALUES ('17', '0', null, '员工管理');
INSERT INTO `tb_menu` VALUES ('18', '17', 'UserManage/personnel_add.jsp', '员工添加');
INSERT INTO `tb_menu` VALUES ('19', '17', 'UserManage/personnel_top.jsp', '员工维护');
INSERT INTO `tb_menu` VALUES ('20', '0', null, '通讯管理');
INSERT INTO `tb_menu` VALUES ('21', '20', 'TongXunManage/tongxun_index.jsp', '显示通讯组');
INSERT INTO `tb_menu` VALUES ('22', '20', 'TongXunManage/tongxun_xianxi.jsp', '增加通讯详细信息');

-- ----------------------------
-- Table structure for tb_onduty
-- ----------------------------
DROP TABLE IF EXISTS `tb_onduty`;
CREATE TABLE `tb_onduty` (
  `Id` int(11) NOT NULL,
  `name1` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `enroltype` varchar(255) DEFAULT NULL,
  `definetime` varchar(255) DEFAULT NULL,
  `enroltime` varchar(255) DEFAULT NULL,
  `enrolremark` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_onduty
-- ----------------------------
INSERT INTO `tb_onduty` VALUES ('1', 'TSoft', '策划部', '下班登记', '2007-12-21 05:10', '2007-12-21 13:25:32', '', '早退');
INSERT INTO `tb_onduty` VALUES ('2', 'TSoft', ' 质量部', '下班登记', '2007-12-29 05:10', '2007-12-29 10:26:46', '回家', '早退');
INSERT INTO `tb_onduty` VALUES ('3', 'TSoft', '文档部', '下班登记', '2008-01-04 05:10', '2008-01-04 10:41:23', '休息', '早退');
INSERT INTO `tb_onduty` VALUES ('4', 'mr', '开发', '上班登记', '2011-05-16 08:20:00', '2011-05-16 09:13:10', '无', '迟到');
INSERT INTO `tb_onduty` VALUES ('5', 'mr', '开发', '下班登记', '2011-05-20 17:10:00', '2011-05-20 14:01:44', '回家', '正常');

-- ----------------------------
-- Table structure for tb_person
-- ----------------------------
DROP TABLE IF EXISTS `tb_person`;
CREATE TABLE `tb_person` (
  `Id` int(11) NOT NULL,
  `name1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time1` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_person
-- ----------------------------
INSERT INTO `tb_person` VALUES ('2', '一天', '计划主题', '计划内容', '2008-01-06 00:00:00');
INSERT INTO `tb_person` VALUES ('4', '毛毛', '测试工作', '测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作', '2011-05-20 00:00:00');
INSERT INTO `tb_person` VALUES ('5', '载载震荡', 'f载城', '载震荡载', '2011-05-20 00:00:00');

-- ----------------------------
-- Table structure for tb_placard
-- ----------------------------
DROP TABLE IF EXISTS `tb_placard`;
CREATE TABLE `tb_placard` (
  `Id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `person` varchar(255) DEFAULT NULL,
  `DDate` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_placard
-- ----------------------------
INSERT INTO `tb_placard` VALUES ('1', '明天休息', 'TSoft', '2007-11-28 00:00:00', '停电明天休息,gh');
INSERT INTO `tb_placard` VALUES ('7', '公司调整', 'TSoft', '2008-01-04 00:00:00', '公司要做一个大的调整');
INSERT INTO `tb_placard` VALUES ('8', '好好玩', 'mr', '2011-05-20 00:00:00', '好好玩好好玩好好玩好好玩好好玩好好玩好好玩好好玩好好玩好好玩好好玩好好玩好好玩好好玩好好玩好好玩好好玩好好玩好好玩好好玩好好玩好好玩好好玩好好玩');

-- ----------------------------
-- Table structure for tb_qingjia
-- ----------------------------
DROP TABLE IF EXISTS `tb_qingjia`;
CREATE TABLE `tb_qingjia` (
  `Id` int(11) NOT NULL,
  `name1` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time1` datetime DEFAULT NULL,
  `time2` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_qingjia
-- ----------------------------
INSERT INTO `tb_qingjia` VALUES ('1', 'TSoft', '策划部', '家里有事', '2007-12-26 00:00:00', '2007-12-28 00:00:00', '0');
INSERT INTO `tb_qingjia` VALUES ('2', 'TSoft', '质量部', '感冒', '2007-12-29 00:00:00', '2007-12-30 00:00:00', '0');
INSERT INTO `tb_qingjia` VALUES ('3', 'TSoft', '文档部', '朋友结婚', '2008-01-04 00:00:00', '2008-01-04 00:00:00', '0');
INSERT INTO `tb_qingjia` VALUES ('4', 'mr', '开发', '不知道', '2011-05-16 00:00:00', '2011-05-16 00:00:00', '1');
INSERT INTO `tb_qingjia` VALUES ('5', 'mr', '开发', '头痛', '2011-05-20 00:00:00', '2011-05-21 00:00:00', '0');

-- ----------------------------
-- Table structure for tb_qiye
-- ----------------------------
DROP TABLE IF EXISTS `tb_qiye`;
CREATE TABLE `tb_qiye` (
  `Id` int(11) NOT NULL,
  `riqi` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `name1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_qiye
-- ----------------------------
INSERT INTO `tb_qiye` VALUES ('2', '2008-01-04 00:00:00', '企业计划主题', '企业计计内容', '企业名称');
INSERT INTO `tb_qiye` VALUES ('4', '2011-05-20 00:00:00', '说点什么', '说点什么说点什么说点什么说点什么说点什么', '公司');

-- ----------------------------
-- Table structure for tb_shehe
-- ----------------------------
DROP TABLE IF EXISTS `tb_shehe`;
CREATE TABLE `tb_shehe` (
  `Id` int(11) NOT NULL,
  `shen` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time1` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_shehe
-- ----------------------------
INSERT INTO `tb_shehe` VALUES ('7', '0', '工要在地', '载震荡震荡载载载载载载载载', '2011-05-16 00:00:00');
INSERT INTO `tb_shehe` VALUES ('8', '0', '年假申请', '年假申请年假申请年假申请年假申请年假申请年假申请年假申请年假申请年假申请年假申请年假申请', '2011-05-16 00:00:00');
INSERT INTO `tb_shehe` VALUES ('12', '1', '测试工作测试工作测试工作', '测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作测试工作', '2011-05-20 00:00:00');

-- ----------------------------
-- Table structure for tb_tongxun
-- ----------------------------
DROP TABLE IF EXISTS `tb_tongxun`;
CREATE TABLE `tb_tongxun` (
  `Id` int(11) NOT NULL,
  `name1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_tongxun
-- ----------------------------
INSERT INTO `tb_tongxun` VALUES ('2', '销售部');
INSERT INTO `tb_tongxun` VALUES ('4', '广告部');
INSERT INTO `tb_tongxun` VALUES ('5', '开发');
INSERT INTO `tb_tongxun` VALUES ('6', '质量部');

-- ----------------------------
-- Table structure for tb_tongxunadd
-- ----------------------------
DROP TABLE IF EXISTS `tb_tongxunadd`;
CREATE TABLE `tb_tongxunadd` (
  `Id` int(11) NOT NULL,
  `name11` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `hy` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `zw` varchar(255) DEFAULT NULL,
  `cf` varchar(255) DEFAULT NULL,
  `cs` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `OICQ` varchar(255) DEFAULT NULL,
  `family` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `name1` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_tongxunadd
-- ----------------------------
INSERT INTO `tb_tongxunadd` VALUES ('1', '陈XXX', '1979-12-14 00:00:00', '女', '已婚', '人事部', '部门经理', '吉林省', '长春市', '234**@34', '131***2341', 'huk**df@*.com', '111', '234**', '234*45', '长春市二道区', '优秀员工', '1');
INSERT INTO `tb_tongxunadd` VALUES ('3', '冯XXX', '1984-08-17 00:00:00', '男', '未婚', '销售部', '业务员', '吉林省', '长春市', '23**345', '132***1231', 'feng@1*6.com', '111', '123*', '23***34', '长春市二道区', '新员工', '2');
INSERT INTO `tb_tongxunadd` VALUES ('15', '一洋', '1984-12-06 00:00:00', '女', '已婚', '质量', '普通职员', '吉林', '长春', '711***', '13588******', '88@**.com', '121', '55', '455****', '长春市南关区', '无\r\n \r\n  ', '5');
INSERT INTO `tb_tongxunadd` VALUES ('16', '小猛', '1980-01-04 00:00:00', '男', '未婚', '销售部', '普通职员', '吉林', '长春', '33', '545454', '88@**.com', '221', '242', '2424', '长春市二道区', '无', '2');
INSERT INTO `tb_tongxunadd` VALUES ('17', '城在', '2011-05-19 00:00:00', '女', '未婚', '广告部', '职员', '吉林', '长春', '45', '4565', '88@88.com', '5151', '959', '656', '长春', '无', '4');
INSERT INTO `tb_tongxunadd` VALUES ('18', '平平', '1985-08-23 00:00:00', '女', '已婚', '开发', '职员', '吉林', '长春', '11111111', '11111111111', '88@88.com', '300000', '211', '44444444', '长春', '无\r\n \r\n  ', '6');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `Id` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `purview` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bestMan` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('2', 'mr', 'mrsoft', 'mr', '系统', '策划部', '经理', '男', 'sdf@*.com', '22', '长春市', '1');
INSERT INTO `tb_user` VALUES ('11', '明明', '111', '明明', '系统', '广告部', '普通员工', '男', '88@**.com', '121****', '长春市', '0');
INSERT INTO `tb_user` VALUES ('12', '小华', '111', '小华', '只读', '广告部', '销售员', '女', '88@**.com', '135********', '长春市二道区', '0');
INSERT INTO `tb_user` VALUES ('13', '小飞', '000000', '小飞', '只读', '售后服务', '主任', '女', '88@**.com', '121****', '长春市二道区', '0');
INSERT INTO `tb_user` VALUES ('15', '美美', '000000', '美美', '系统', '广告部', '部门经理', '女', '88@88.com', '11111111', '长春', '0');

-- ----------------------------
-- Table structure for tb_waichu
-- ----------------------------
DROP TABLE IF EXISTS `tb_waichu`;
CREATE TABLE `tb_waichu` (
  `Id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time1` datetime DEFAULT NULL,
  `time2` datetime DEFAULT NULL,
  `name1` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_waichu
-- ----------------------------
INSERT INTO `tb_waichu` VALUES ('1', '家里有事', '2007-12-17 00:00:00', '2007-12-25 00:00:00', 'TSoft', '策划部', '0');
INSERT INTO `tb_waichu` VALUES ('2', '去楼下取东西', '2007-12-29 00:00:00', '2007-12-29 00:00:00', 'TSoft', '质量部', '1');
INSERT INTO `tb_waichu` VALUES ('3', '取东西', '2008-01-04 00:00:00', '2008-01-04 00:00:00', 'TSoft', '文档部', '0');
INSERT INTO `tb_waichu` VALUES ('4', '头痛', '2011-05-16 00:00:00', '2011-05-16 00:00:00', 'mr', '开发', '1');
INSERT INTO `tb_waichu` VALUES ('5', '买东西', '2011-05-20 00:00:00', '2011-05-20 00:00:00', 'mr', '客服', '0');
