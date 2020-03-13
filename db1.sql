/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : db1

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 18:56:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for campaign
-- ----------------------------
DROP TABLE IF EXISTS `campaign`;
CREATE TABLE `campaign` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of campaign
-- ----------------------------

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_801vlclah89ymu7dppibe5flo` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict
-- ----------------------------

-- ----------------------------
-- Table structure for dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `dict_detail`;
CREATE TABLE `dict_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `sort` varchar(255) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `dict_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5tpkputc6d9nboxojdbgnpmyb` (`dict_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_detail
-- ----------------------------

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort` bigint(20) NOT NULL,
  `dept_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_db9dlna8wi9ljov2h4knqwro1` (`sort`),
  KEY `FKmvhj0rogastlctflsxf1d6k3i` (`dept_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------

-- ----------------------------
-- Table structure for market
-- ----------------------------
DROP TABLE IF EXISTS `market`;
CREATE TABLE `market` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of market
-- ----------------------------

-- ----------------------------
-- Table structure for meeting
-- ----------------------------
DROP TABLE IF EXISTS `meeting`;
CREATE TABLE `meeting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `host_per` varchar(255) DEFAULT NULL,
  `out_per` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meeting
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `component` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `i_frame` bit(1) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `pid` bigint(20) NOT NULL,
  `sort` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_dka841cha8dli79k7tijbp8o8` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Table structure for notify
-- ----------------------------
DROP TABLE IF EXISTS `notify`;
CREATE TABLE `notify` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notify
-- ----------------------------

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper
-- ----------------------------

-- ----------------------------
-- Table structure for peccancy
-- ----------------------------
DROP TABLE IF EXISTS `peccancy`;
CREATE TABLE `peccancy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of peccancy
-- ----------------------------

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------

-- ----------------------------
-- Table structure for quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `quartz_job`;
CREATE TABLE `quartz_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bean_name` varchar(255) DEFAULT NULL,
  `cron_expression` varchar(255) DEFAULT NULL,
  `is_pause` bit(1) DEFAULT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `method_name` varchar(255) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quartz_job
-- ----------------------------

-- ----------------------------
-- Table structure for quartz_log
-- ----------------------------
DROP TABLE IF EXISTS `quartz_log`;
CREATE TABLE `quartz_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `baen_name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `cron_expression` varchar(255) DEFAULT NULL,
  `exception_detail` text,
  `is_success` bit(1) DEFAULT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `method_name` varchar(255) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quartz_log
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `data_scope` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for roles_depts
-- ----------------------------
DROP TABLE IF EXISTS `roles_depts`;
CREATE TABLE `roles_depts` (
  `role_id` bigint(20) NOT NULL,
  `dept_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`dept_id`),
  KEY `FK7qg6itn5ajdoa9h9o78v9ksur` (`dept_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles_depts
-- ----------------------------

-- ----------------------------
-- Table structure for roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `roles_menus`;
CREATE TABLE `roles_menus` (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`),
  KEY `FKo7wsmlrrxb2osfaoavp46rv2r` (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles_menus
-- ----------------------------

-- ----------------------------
-- Table structure for roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE `roles_permissions` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `FKboeuhl31go7wer3bpy6so7exi` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for technology
-- ----------------------------
DROP TABLE IF EXISTS `technology`;
CREATE TABLE `technology` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of technology
-- ----------------------------

-- ----------------------------
-- Table structure for t_news
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
  `id` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `news_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_news
-- ----------------------------
INSERT INTO `t_news` VALUES ('182835610497855488', 'test_1', '2018-05-20 12:43:26', 'test_1', '2018-05-20 12:43:26', 'test_1');
INSERT INTO `t_news` VALUES ('182835610812428288', 'test_2', '2018-05-20 12:43:27', 'test_2', '2018-05-20 12:43:27', 'test_2');
INSERT INTO `t_news` VALUES ('182835610841788416', 'test_3', '2018-05-20 12:43:27', 'test_3', '2018-05-20 12:43:27', 'test_3');
INSERT INTO `t_news` VALUES ('182835610871148544', 'test_4', '2018-05-20 12:43:27', 'test_4', '2018-05-20 12:43:27', 'test_4');
INSERT INTO `t_news` VALUES ('182835610900508672', 'test_5', '2018-05-20 12:43:27', 'test_5', '2018-05-20 12:43:27', 'test_5');
INSERT INTO `t_news` VALUES ('182835610925674496', 'test_6', '2018-05-20 12:43:27', 'test_6', '2018-05-20 12:43:27', 'test_6');
INSERT INTO `t_news` VALUES ('182835610955034624', 'test_7', '2018-05-20 12:43:27', 'test_7', '2018-05-20 12:43:27', 'test_7');
INSERT INTO `t_news` VALUES ('182835610976006144', 'test_8', '2018-05-20 12:43:27', 'test_8', '2018-05-20 12:43:27', 'test_8');
INSERT INTO `t_news` VALUES ('182835611001171968', 'test_9', '2018-05-20 12:43:27', 'test_9', '2018-05-20 12:43:27', 'test_9');
INSERT INTO `t_news` VALUES ('182835611026337792', 'test_10', '2018-05-20 12:43:27', 'test_10', '2018-05-20 12:43:27', 'test_10');
INSERT INTO `t_news` VALUES ('182835611055697920', 'test_11', '2018-05-20 12:43:27', 'test_11', '2018-05-20 12:43:27', 'test_11');
INSERT INTO `t_news` VALUES ('182835611080863744', 'test_12', '2018-05-20 12:43:27', 'test_12', '2018-05-20 12:43:27', 'test_12');
INSERT INTO `t_news` VALUES ('182835611106029568', 'test_13', '2018-05-20 12:43:27', 'test_13', '2018-05-20 12:43:27', 'test_13');
INSERT INTO `t_news` VALUES ('182835611131195392', 'test_14', '2018-05-20 12:43:27', 'test_14', '2018-05-20 12:43:27', 'test_14');
INSERT INTO `t_news` VALUES ('182835611160555520', 'test_15', '2018-05-20 12:43:27', 'test_15', '2018-05-20 12:43:27', 'test_15');
INSERT INTO `t_news` VALUES ('182835611189915648', 'test_16', '2018-05-20 12:43:27', 'test_16', '2018-05-20 12:43:27', 'test_16');
INSERT INTO `t_news` VALUES ('182835611236052992', 'test_17', '2018-05-20 12:43:27', 'test_17', '2018-05-20 12:43:27', 'test_17');
INSERT INTO `t_news` VALUES ('182835611261218816', 'test_18', '2018-05-20 12:43:27', 'test_18', '2018-05-20 12:43:27', 'test_18');
INSERT INTO `t_news` VALUES ('182835611290578944', 'test_19', '2018-05-20 12:43:27', 'test_19', '2018-05-20 12:43:27', 'test_19');
INSERT INTO `t_news` VALUES ('182835611319939072', 'test_20', '2018-05-20 12:43:27', 'test_20', '2018-05-20 12:43:27', 'test_20');
INSERT INTO `t_news` VALUES ('182835611345104896', 'test_21', '2018-05-20 12:43:27', 'test_21', '2018-05-20 12:43:27', 'test_21');
INSERT INTO `t_news` VALUES ('182835611387047936', 'test_22', '2018-05-20 12:43:27', 'test_22', '2018-05-20 12:43:27', 'test_22');
INSERT INTO `t_news` VALUES ('182835611416408064', 'test_23', '2018-05-20 12:43:27', 'test_23', '2018-05-20 12:43:27', 'test_23');
INSERT INTO `t_news` VALUES ('182835611441573888', 'test_24', '2018-05-20 12:43:27', 'test_24', '2018-05-20 12:43:27', 'test_24');
INSERT INTO `t_news` VALUES ('182835611466739712', 'test_25', '2018-05-20 12:43:27', 'test_25', '2018-05-20 12:43:27', 'test_25');
INSERT INTO `t_news` VALUES ('182835611496099840', 'test_26', '2018-05-20 12:43:27', 'test_26', '2018-05-20 12:43:27', 'test_26');
INSERT INTO `t_news` VALUES ('182835611533848576', 'test_27', '2018-05-20 12:43:27', 'test_27', '2018-05-20 12:43:27', 'test_27');
INSERT INTO `t_news` VALUES ('182835611563208704', 'test_28', '2018-05-20 12:43:27', 'test_28', '2018-05-20 12:43:27', 'test_28');
INSERT INTO `t_news` VALUES ('182835611600957440', 'test_29', '2018-05-20 12:43:27', 'test_29', '2018-05-20 12:43:27', 'test_29');
INSERT INTO `t_news` VALUES ('182835611630317568', 'test_30', '2018-05-20 12:43:27', 'test_30', '2018-05-20 12:43:27', 'test_30');
INSERT INTO `t_news` VALUES ('182835611655483392', 'test_31', '2018-05-20 12:43:27', 'test_31', '2018-05-20 12:43:27', 'test_31');
INSERT INTO `t_news` VALUES ('182835611680649216', 'test_32', '2018-05-20 12:43:27', 'test_32', '2018-05-20 12:43:27', 'test_32');
INSERT INTO `t_news` VALUES ('182835611714203648', 'test_33', '2018-05-20 12:43:27', 'test_33', '2018-05-20 12:43:27', 'test_33');
INSERT INTO `t_news` VALUES ('182835611743563776', 'test_34', '2018-05-20 12:43:27', 'test_34', '2018-05-20 12:43:27', 'test_34');
INSERT INTO `t_news` VALUES ('182835611772923904', 'test_35', '2018-05-20 12:43:27', 'test_35', '2018-05-20 12:43:27', 'test_35');
INSERT INTO `t_news` VALUES ('182835611802284032', 'test_36', '2018-05-20 12:43:27', 'test_36', '2018-05-20 12:43:27', 'test_36');
INSERT INTO `t_news` VALUES ('182835611827449856', 'test_37', '2018-05-20 12:43:27', 'test_37', '2018-05-20 12:43:27', 'test_37');
INSERT INTO `t_news` VALUES ('182835611869392896', 'test_38', '2018-05-20 12:43:27', 'test_38', '2018-05-20 12:43:27', 'test_38');
INSERT INTO `t_news` VALUES ('182835611902947328', 'test_39', '2018-05-20 12:43:27', 'test_39', '2018-05-20 12:43:27', 'test_39');
INSERT INTO `t_news` VALUES ('182835611936501760', 'test_40', '2018-05-20 12:43:27', 'test_40', '2018-05-20 12:43:27', 'test_40');
INSERT INTO `t_news` VALUES ('182835611965861888', 'test_41', '2018-05-20 12:43:27', 'test_41', '2018-05-20 12:43:27', 'test_41');
INSERT INTO `t_news` VALUES ('182835611991027712', 'test_42', '2018-05-20 12:43:27', 'test_42', '2018-05-20 12:43:27', 'test_42');
INSERT INTO `t_news` VALUES ('182835612020387840', 'test_43', '2018-05-20 12:43:27', 'test_43', '2018-05-20 12:43:27', 'test_43');
INSERT INTO `t_news` VALUES ('182835612049747968', 'test_44', '2018-05-20 12:43:27', 'test_44', '2018-05-20 12:43:27', 'test_44');
INSERT INTO `t_news` VALUES ('182835612074913792', 'test_45', '2018-05-20 12:43:27', 'test_45', '2018-05-20 12:43:27', 'test_45');
INSERT INTO `t_news` VALUES ('182835612112662528', 'test_46', '2018-05-20 12:43:27', 'test_46', '2018-05-20 12:43:27', 'test_46');
INSERT INTO `t_news` VALUES ('182835612154605568', 'test_47', '2018-05-20 12:43:27', 'test_47', '2018-05-20 12:43:27', 'test_47');
INSERT INTO `t_news` VALUES ('182835612196548608', 'test_48', '2018-05-20 12:43:27', 'test_48', '2018-05-20 12:43:27', 'test_48');
INSERT INTO `t_news` VALUES ('182835612234297344', 'test_49', '2018-05-20 12:43:27', 'test_49', '2018-05-20 12:43:27', 'test_49');
INSERT INTO `t_news` VALUES ('182835612259463168', 'test_50', '2018-05-20 12:43:27', 'test_50', '2018-05-20 12:43:27', 'test_50');
INSERT INTO `t_news` VALUES ('182835612284628992', 'test_51', '2018-05-20 12:43:27', 'test_51', '2018-05-20 12:43:27', 'test_51');
INSERT INTO `t_news` VALUES ('182835612313989120', 'test_52', '2018-05-20 12:43:27', 'test_52', '2018-05-20 12:43:27', 'test_52');
INSERT INTO `t_news` VALUES ('182835612347543552', 'test_53', '2018-05-20 12:43:27', 'test_53', '2018-05-20 12:43:27', 'test_53');
INSERT INTO `t_news` VALUES ('182835612385292288', 'test_54', '2018-05-20 12:43:27', 'test_54', '2018-05-20 12:43:27', 'test_54');
INSERT INTO `t_news` VALUES ('182835612444012544', 'test_55', '2018-05-20 12:43:27', 'test_55', '2018-05-20 12:43:27', 'test_55');
INSERT INTO `t_news` VALUES ('182835612481761280', 'test_56', '2018-05-20 12:43:27', 'test_56', '2018-05-20 12:43:27', 'test_56');
INSERT INTO `t_news` VALUES ('182835612511121408', 'test_57', '2018-05-20 12:43:27', 'test_57', '2018-05-20 12:43:27', 'test_57');
INSERT INTO `t_news` VALUES ('182835612553064448', 'test_58', '2018-05-20 12:43:27', 'test_58', '2018-05-20 12:43:27', 'test_58');
INSERT INTO `t_news` VALUES ('182835612595007488', 'test_59', '2018-05-20 12:43:27', 'test_59', '2018-05-20 12:43:27', 'test_59');
INSERT INTO `t_news` VALUES ('182835612628561920', 'test_60', '2018-05-20 12:43:27', 'test_60', '2018-05-20 12:43:27', 'test_60');
INSERT INTO `t_news` VALUES ('182835612662116352', 'test_61', '2018-05-20 12:43:27', 'test_61', '2018-05-20 12:43:27', 'test_61');
INSERT INTO `t_news` VALUES ('182835612691476480', 'test_62', '2018-05-20 12:43:27', 'test_62', '2018-05-20 12:43:27', 'test_62');
INSERT INTO `t_news` VALUES ('182835612720836608', 'test_63', '2018-05-20 12:43:27', 'test_63', '2018-05-20 12:43:27', 'test_63');
INSERT INTO `t_news` VALUES ('182835612762779648', 'test_64', '2018-05-20 12:43:27', 'test_64', '2018-05-20 12:43:27', 'test_64');
INSERT INTO `t_news` VALUES ('182835612796334080', 'test_65', '2018-05-20 12:43:27', 'test_65', '2018-05-20 12:43:27', 'test_65');
INSERT INTO `t_news` VALUES ('182835612829888512', 'test_66', '2018-05-20 12:43:27', 'test_66', '2018-05-20 12:43:27', 'test_66');
INSERT INTO `t_news` VALUES ('182835612859248640', 'test_67', '2018-05-20 12:43:27', 'test_67', '2018-05-20 12:43:27', 'test_67');
INSERT INTO `t_news` VALUES ('182835612892803072', 'test_68', '2018-05-20 12:43:27', 'test_68', '2018-05-20 12:43:27', 'test_68');
INSERT INTO `t_news` VALUES ('182835612926357504', 'test_69', '2018-05-20 12:43:27', 'test_69', '2018-05-20 12:43:27', 'test_69');
INSERT INTO `t_news` VALUES ('182835612964106240', 'test_70', '2018-05-20 12:43:27', 'test_70', '2018-05-20 12:43:27', 'test_70');
INSERT INTO `t_news` VALUES ('182835612989272064', 'test_71', '2018-05-20 12:43:27', 'test_71', '2018-05-20 12:43:27', 'test_71');
INSERT INTO `t_news` VALUES ('182835613014437888', 'test_72', '2018-05-20 12:43:27', 'test_72', '2018-05-20 12:43:27', 'test_72');
INSERT INTO `t_news` VALUES ('182835613060575232', 'test_73', '2018-05-20 12:43:27', 'test_73', '2018-05-20 12:43:27', 'test_73');
INSERT INTO `t_news` VALUES ('182835613094129664', 'test_74', '2018-05-20 12:43:27', 'test_74', '2018-05-20 12:43:27', 'test_74');
INSERT INTO `t_news` VALUES ('182835613127684096', 'test_75', '2018-05-20 12:43:27', 'test_75', '2018-05-20 12:43:27', 'test_75');
INSERT INTO `t_news` VALUES ('182835613161238528', 'test_76', '2018-05-20 12:43:27', 'test_76', '2018-05-20 12:43:27', 'test_76');
INSERT INTO `t_news` VALUES ('182835613194792960', 'test_77', '2018-05-20 12:43:27', 'test_77', '2018-05-20 12:43:27', 'test_77');
INSERT INTO `t_news` VALUES ('182835613245124608', 'test_78', '2018-05-20 12:43:27', 'test_78', '2018-05-20 12:43:27', 'test_78');
INSERT INTO `t_news` VALUES ('182835613287067648', 'test_79', '2018-05-20 12:43:27', 'test_79', '2018-05-20 12:43:27', 'test_79');
INSERT INTO `t_news` VALUES ('182835613316427776', 'test_80', '2018-05-20 12:43:27', 'test_80', '2018-05-20 12:43:27', 'test_80');
INSERT INTO `t_news` VALUES ('182835613349982208', 'test_81', '2018-05-20 12:43:27', 'test_81', '2018-05-20 12:43:27', 'test_81');
INSERT INTO `t_news` VALUES ('182835613387730944', 'test_82', '2018-05-20 12:43:27', 'test_82', '2018-05-20 12:43:27', 'test_82');
INSERT INTO `t_news` VALUES ('182835613425479680', 'test_83', '2018-05-20 12:43:27', 'test_83', '2018-05-20 12:43:27', 'test_83');
INSERT INTO `t_news` VALUES ('182835613463228416', 'test_84', '2018-05-20 12:43:27', 'test_84', '2018-05-20 12:43:27', 'test_84');
INSERT INTO `t_news` VALUES ('182835613488394240', 'test_85', '2018-05-20 12:43:27', 'test_85', '2018-05-20 12:43:27', 'test_85');
INSERT INTO `t_news` VALUES ('182835613521948672', 'test_86', '2018-05-20 12:43:27', 'test_86', '2018-05-20 12:43:27', 'test_86');
INSERT INTO `t_news` VALUES ('182835613559697408', 'test_87', '2018-05-20 12:43:27', 'test_87', '2018-05-20 12:43:27', 'test_87');
INSERT INTO `t_news` VALUES ('182835613597446144', 'test_88', '2018-05-20 12:43:27', 'test_88', '2018-05-20 12:43:27', 'test_88');
INSERT INTO `t_news` VALUES ('182835613631000576', 'test_89', '2018-05-20 12:43:27', 'test_89', '2018-05-20 12:43:27', 'test_89');
INSERT INTO `t_news` VALUES ('182835613689720832', 'test_90', '2018-05-20 12:43:27', 'test_90', '2018-05-20 12:43:27', 'test_90');
INSERT INTO `t_news` VALUES ('182835613723275264', 'test_91', '2018-05-20 12:43:27', 'test_91', '2018-05-20 12:43:27', 'test_91');
INSERT INTO `t_news` VALUES ('182835613761024000', 'test_92', '2018-05-20 12:43:27', 'test_92', '2018-05-20 12:43:27', 'test_92');
INSERT INTO `t_news` VALUES ('182835613798772736', 'test_93', '2018-05-20 12:43:27', 'test_93', '2018-05-20 12:43:27', 'test_93');
INSERT INTO `t_news` VALUES ('182835613836521472', 'test_94', '2018-05-20 12:43:27', 'test_94', '2018-05-20 12:43:27', 'test_94');
INSERT INTO `t_news` VALUES ('182835613865881600', 'test_95', '2018-05-20 12:43:27', 'test_95', '2018-05-20 12:43:27', 'test_95');
INSERT INTO `t_news` VALUES ('182835613895241728', 'test_96', '2018-05-20 12:43:27', 'test_96', '2018-05-20 12:43:27', 'test_96');
INSERT INTO `t_news` VALUES ('182835613920407552', 'test_97', '2018-05-20 12:43:27', 'test_97', '2018-05-20 12:43:27', 'test_97');
INSERT INTO `t_news` VALUES ('182835613949767680', 'test_98', '2018-05-20 12:43:27', 'test_98', '2018-05-20 12:43:27', 'test_98');
INSERT INTO `t_news` VALUES ('182835613974933504', 'test_99', '2018-05-20 12:43:27', 'test_99', '2018-05-20 12:43:27', 'test_99');
INSERT INTO `t_news` VALUES ('182835614008487936', 'test_100', '2018-05-20 12:43:27', 'test_100', '2018-05-20 12:43:27', 'test_100');
INSERT INTO `t_news` VALUES ('182835614058819584', 'test_101', '2018-05-20 12:43:27', 'test_101', '2018-05-20 12:43:27', 'test_101');
INSERT INTO `t_news` VALUES ('182835614096568320', 'test_102', '2018-05-20 12:43:27', 'test_102', '2018-05-20 12:43:27', 'test_102');
INSERT INTO `t_news` VALUES ('182835614125928448', 'test_103', '2018-05-20 12:43:27', 'test_103', '2018-05-20 12:43:27', 'test_103');
INSERT INTO `t_news` VALUES ('182835614155288576', 'test_104', '2018-05-20 12:43:27', 'test_104', '2018-05-20 12:43:27', 'test_104');
INSERT INTO `t_news` VALUES ('182835614180454400', 'test_105', '2018-05-20 12:43:27', 'test_105', '2018-05-20 12:43:27', 'test_105');
INSERT INTO `t_news` VALUES ('182835614209814528', 'test_106', '2018-05-20 12:43:27', 'test_106', '2018-05-20 12:43:27', 'test_106');
INSERT INTO `t_news` VALUES ('182835614251757568', 'test_107', '2018-05-20 12:43:27', 'test_107', '2018-05-20 12:43:27', 'test_107');
INSERT INTO `t_news` VALUES ('182835614276923392', 'test_108', '2018-05-20 12:43:27', 'test_108', '2018-05-20 12:43:27', 'test_108');
INSERT INTO `t_news` VALUES ('182835614310477824', 'test_109', '2018-05-20 12:43:27', 'test_109', '2018-05-20 12:43:27', 'test_109');
INSERT INTO `t_news` VALUES ('182835614335643648', 'test_110', '2018-05-20 12:43:27', 'test_110', '2018-05-20 12:43:27', 'test_110');
INSERT INTO `t_news` VALUES ('182835614360809472', 'test_111', '2018-05-20 12:43:27', 'test_111', '2018-05-20 12:43:27', 'test_111');
INSERT INTO `t_news` VALUES ('182835614385975296', 'test_112', '2018-05-20 12:43:27', 'test_112', '2018-05-20 12:43:27', 'test_112');
INSERT INTO `t_news` VALUES ('182835614415335424', 'test_113', '2018-05-20 12:43:27', 'test_113', '2018-05-20 12:43:27', 'test_113');
INSERT INTO `t_news` VALUES ('182835614461472768', 'test_114', '2018-05-20 12:43:27', 'test_114', '2018-05-20 12:43:27', 'test_114');
INSERT INTO `t_news` VALUES ('182835614490832896', 'test_115', '2018-05-20 12:43:27', 'test_115', '2018-05-20 12:43:27', 'test_115');
INSERT INTO `t_news` VALUES ('182835614515998720', 'test_116', '2018-05-20 12:43:27', 'test_116', '2018-05-20 12:43:27', 'test_116');
INSERT INTO `t_news` VALUES ('182835614541164544', 'test_117', '2018-05-20 12:43:27', 'test_117', '2018-05-20 12:43:27', 'test_117');
INSERT INTO `t_news` VALUES ('182835614562136064', 'test_118', '2018-05-20 12:43:27', 'test_118', '2018-05-20 12:43:27', 'test_118');
INSERT INTO `t_news` VALUES ('182835614587301888', 'test_119', '2018-05-20 12:43:27', 'test_119', '2018-05-20 12:43:27', 'test_119');
INSERT INTO `t_news` VALUES ('182835614620856320', 'test_120', '2018-05-20 12:43:27', 'test_120', '2018-05-20 12:43:27', 'test_120');
INSERT INTO `t_news` VALUES ('182835614650216448', 'test_121', '2018-05-20 12:43:27', 'test_121', '2018-05-20 12:43:27', 'test_121');
INSERT INTO `t_news` VALUES ('182835614679576576', 'test_122', '2018-05-20 12:43:27', 'test_122', '2018-05-20 12:43:27', 'test_122');
INSERT INTO `t_news` VALUES ('182835614708936704', 'test_123', '2018-05-20 12:43:27', 'test_123', '2018-05-20 12:43:27', 'test_123');
INSERT INTO `t_news` VALUES ('182835614738296832', 'test_124', '2018-05-20 12:43:27', 'test_124', '2018-05-20 12:43:27', 'test_124');
INSERT INTO `t_news` VALUES ('182835614767656960', 'test_125', '2018-05-20 12:43:27', 'test_125', '2018-05-20 12:43:27', 'test_125');
INSERT INTO `t_news` VALUES ('182835614788628480', 'test_126', '2018-05-20 12:43:27', 'test_126', '2018-05-20 12:43:27', 'test_126');
INSERT INTO `t_news` VALUES ('182835614813794304', 'test_127', '2018-05-20 12:43:27', 'test_127', '2018-05-20 12:43:27', 'test_127');
INSERT INTO `t_news` VALUES ('182835614843154432', 'test_128', '2018-05-20 12:43:28', 'test_128', '2018-05-20 12:43:27', 'test_128');
INSERT INTO `t_news` VALUES ('182835614864125952', 'test_129', '2018-05-20 12:43:28', 'test_129', '2018-05-20 12:43:28', 'test_129');
INSERT INTO `t_news` VALUES ('182835614889291776', 'test_130', '2018-05-20 12:43:28', 'test_130', '2018-05-20 12:43:28', 'test_130');
INSERT INTO `t_news` VALUES ('182835614922846208', 'test_131', '2018-05-20 12:43:28', 'test_131', '2018-05-20 12:43:28', 'test_131');
INSERT INTO `t_news` VALUES ('182835614960594944', 'test_132', '2018-05-20 12:43:28', 'test_132', '2018-05-20 12:43:28', 'test_132');
INSERT INTO `t_news` VALUES ('182835614989955072', 'test_133', '2018-05-20 12:43:28', 'test_133', '2018-05-20 12:43:28', 'test_133');
INSERT INTO `t_news` VALUES ('182835615019315200', 'test_134', '2018-05-20 12:43:28', 'test_134', '2018-05-20 12:43:28', 'test_134');
INSERT INTO `t_news` VALUES ('182835615040286720', 'test_135', '2018-05-20 12:43:28', 'test_135', '2018-05-20 12:43:28', 'test_135');
INSERT INTO `t_news` VALUES ('182835615078035456', 'test_136', '2018-05-20 12:43:28', 'test_136', '2018-05-20 12:43:28', 'test_136');
INSERT INTO `t_news` VALUES ('182835615107395584', 'test_137', '2018-05-20 12:43:28', 'test_137', '2018-05-20 12:43:28', 'test_137');
INSERT INTO `t_news` VALUES ('182835615132561408', 'test_138', '2018-05-20 12:43:28', 'test_138', '2018-05-20 12:43:28', 'test_138');
INSERT INTO `t_news` VALUES ('182835615157727232', 'test_139', '2018-05-20 12:43:28', 'test_139', '2018-05-20 12:43:28', 'test_139');
INSERT INTO `t_news` VALUES ('182835615178698752', 'test_140', '2018-05-20 12:43:28', 'test_140', '2018-05-20 12:43:28', 'test_140');
INSERT INTO `t_news` VALUES ('182835615203864576', 'test_141', '2018-05-20 12:43:28', 'test_141', '2018-05-20 12:43:28', 'test_141');
INSERT INTO `t_news` VALUES ('182835615229030400', 'test_142', '2018-05-20 12:43:28', 'test_142', '2018-05-20 12:43:28', 'test_142');
INSERT INTO `t_news` VALUES ('182835615258390528', 'test_143', '2018-05-20 12:43:28', 'test_143', '2018-05-20 12:43:28', 'test_143');
INSERT INTO `t_news` VALUES ('182835615283556352', 'test_144', '2018-05-20 12:43:28', 'test_144', '2018-05-20 12:43:28', 'test_144');
INSERT INTO `t_news` VALUES ('182835615312916480', 'test_145', '2018-05-20 12:43:28', 'test_145', '2018-05-20 12:43:28', 'test_145');
INSERT INTO `t_news` VALUES ('182835615333888000', 'test_146', '2018-05-20 12:43:28', 'test_146', '2018-05-20 12:43:28', 'test_146');
INSERT INTO `t_news` VALUES ('182835615363248128', 'test_147', '2018-05-20 12:43:28', 'test_147', '2018-05-20 12:43:28', 'test_147');
INSERT INTO `t_news` VALUES ('182835615388413952', 'test_148', '2018-05-20 12:43:28', 'test_148', '2018-05-20 12:43:28', 'test_148');
INSERT INTO `t_news` VALUES ('182835615426162688', 'test_149', '2018-05-20 12:43:28', 'test_149', '2018-05-20 12:43:28', 'test_149');
INSERT INTO `t_news` VALUES ('182835615455522816', 'test_150', '2018-05-20 12:43:28', 'test_150', '2018-05-20 12:43:28', 'test_150');
INSERT INTO `t_news` VALUES ('182835615484882944', 'test_151', '2018-05-20 12:43:28', 'test_151', '2018-05-20 12:43:28', 'test_151');
INSERT INTO `t_news` VALUES ('182835615510048768', 'test_152', '2018-05-20 12:43:28', 'test_152', '2018-05-20 12:43:28', 'test_152');
INSERT INTO `t_news` VALUES ('182835615535214592', 'test_153', '2018-05-20 12:43:28', 'test_153', '2018-05-20 12:43:28', 'test_153');
INSERT INTO `t_news` VALUES ('182835615564574720', 'test_154', '2018-05-20 12:43:28', 'test_154', '2018-05-20 12:43:28', 'test_154');
INSERT INTO `t_news` VALUES ('182835615585546240', 'test_155', '2018-05-20 12:43:28', 'test_155', '2018-05-20 12:43:28', 'test_155');
INSERT INTO `t_news` VALUES ('182835615623294976', 'test_156', '2018-05-20 12:43:28', 'test_156', '2018-05-20 12:43:28', 'test_156');
INSERT INTO `t_news` VALUES ('182835615656849408', 'test_157', '2018-05-20 12:43:28', 'test_157', '2018-05-20 12:43:28', 'test_157');
INSERT INTO `t_news` VALUES ('182835615690403840', 'test_158', '2018-05-20 12:43:28', 'test_158', '2018-05-20 12:43:28', 'test_158');
INSERT INTO `t_news` VALUES ('182835615719763968', 'test_159', '2018-05-20 12:43:28', 'test_159', '2018-05-20 12:43:28', 'test_159');
INSERT INTO `t_news` VALUES ('182835615744929792', 'test_160', '2018-05-20 12:43:28', 'test_160', '2018-05-20 12:43:28', 'test_160');
INSERT INTO `t_news` VALUES ('182835615774289920', 'test_161', '2018-05-20 12:43:28', 'test_161', '2018-05-20 12:43:28', 'test_161');
INSERT INTO `t_news` VALUES ('182835615795261440', 'test_162', '2018-05-20 12:43:28', 'test_162', '2018-05-20 12:43:28', 'test_162');
INSERT INTO `t_news` VALUES ('182835615824621568', 'test_163', '2018-05-20 12:43:28', 'test_163', '2018-05-20 12:43:28', 'test_163');
INSERT INTO `t_news` VALUES ('182835615853981696', 'test_164', '2018-05-20 12:43:28', 'test_164', '2018-05-20 12:43:28', 'test_164');
INSERT INTO `t_news` VALUES ('182835615874953216', 'test_165', '2018-05-20 12:43:28', 'test_165', '2018-05-20 12:43:28', 'test_165');
INSERT INTO `t_news` VALUES ('182835615912701952', 'test_166', '2018-05-20 12:43:28', 'test_166', '2018-05-20 12:43:28', 'test_166');
INSERT INTO `t_news` VALUES ('182835615950450688', 'test_167', '2018-05-20 12:43:28', 'test_167', '2018-05-20 12:43:28', 'test_167');
INSERT INTO `t_news` VALUES ('182835615988199424', 'test_168', '2018-05-20 12:43:28', 'test_168', '2018-05-20 12:43:28', 'test_168');
INSERT INTO `t_news` VALUES ('182835616021753856', 'test_169', '2018-05-20 12:43:28', 'test_169', '2018-05-20 12:43:28', 'test_169');
INSERT INTO `t_news` VALUES ('182835616051113984', 'test_170', '2018-05-20 12:43:28', 'test_170', '2018-05-20 12:43:28', 'test_170');
INSERT INTO `t_news` VALUES ('182835616080474112', 'test_171', '2018-05-20 12:43:28', 'test_171', '2018-05-20 12:43:28', 'test_171');
INSERT INTO `t_news` VALUES ('182835616118222848', 'test_172', '2018-05-20 12:43:28', 'test_172', '2018-05-20 12:43:28', 'test_172');
INSERT INTO `t_news` VALUES ('182835616151777280', 'test_173', '2018-05-20 12:43:28', 'test_173', '2018-05-20 12:43:28', 'test_173');
INSERT INTO `t_news` VALUES ('182835616185331712', 'test_174', '2018-05-20 12:43:28', 'test_174', '2018-05-20 12:43:28', 'test_174');
INSERT INTO `t_news` VALUES ('182835616214691840', 'test_175', '2018-05-20 12:43:28', 'test_175', '2018-05-20 12:43:28', 'test_175');
INSERT INTO `t_news` VALUES ('182835616239857664', 'test_176', '2018-05-20 12:43:28', 'test_176', '2018-05-20 12:43:28', 'test_176');
INSERT INTO `t_news` VALUES ('182835616265023488', 'test_177', '2018-05-20 12:43:28', 'test_177', '2018-05-20 12:43:28', 'test_177');
INSERT INTO `t_news` VALUES ('182835616290189312', 'test_178', '2018-05-20 12:43:28', 'test_178', '2018-05-20 12:43:28', 'test_178');
INSERT INTO `t_news` VALUES ('182835616319549440', 'test_179', '2018-05-20 12:43:28', 'test_179', '2018-05-20 12:43:28', 'test_179');
INSERT INTO `t_news` VALUES ('182835616369881088', 'test_180', '2018-05-20 12:43:28', 'test_180', '2018-05-20 12:43:28', 'test_180');
INSERT INTO `t_news` VALUES ('182835616403435520', 'test_181', '2018-05-20 12:43:28', 'test_181', '2018-05-20 12:43:28', 'test_181');
INSERT INTO `t_news` VALUES ('182835616432795648', 'test_182', '2018-05-20 12:43:28', 'test_182', '2018-05-20 12:43:28', 'test_182');
INSERT INTO `t_news` VALUES ('182835616453767168', 'test_183', '2018-05-20 12:43:28', 'test_183', '2018-05-20 12:43:28', 'test_183');
INSERT INTO `t_news` VALUES ('182835616478932992', 'test_184', '2018-05-20 12:43:28', 'test_184', '2018-05-20 12:43:28', 'test_184');
INSERT INTO `t_news` VALUES ('182835616508293120', 'test_185', '2018-05-20 12:43:28', 'test_185', '2018-05-20 12:43:28', 'test_185');
INSERT INTO `t_news` VALUES ('182835616546041856', 'test_186', '2018-05-20 12:43:28', 'test_186', '2018-05-20 12:43:28', 'test_186');
INSERT INTO `t_news` VALUES ('182835616571207680', 'test_187', '2018-05-20 12:43:28', 'test_187', '2018-05-20 12:43:28', 'test_187');
INSERT INTO `t_news` VALUES ('182835616600567808', 'test_188', '2018-05-20 12:43:28', 'test_188', '2018-05-20 12:43:28', 'test_188');
INSERT INTO `t_news` VALUES ('182835616629927936', 'test_189', '2018-05-20 12:43:28', 'test_189', '2018-05-20 12:43:28', 'test_189');
INSERT INTO `t_news` VALUES ('182835616655093760', 'test_190', '2018-05-20 12:43:28', 'test_190', '2018-05-20 12:43:28', 'test_190');
INSERT INTO `t_news` VALUES ('182835616684453888', 'test_191', '2018-05-20 12:43:28', 'test_191', '2018-05-20 12:43:28', 'test_191');
INSERT INTO `t_news` VALUES ('182835616705425408', 'test_192', '2018-05-20 12:43:28', 'test_192', '2018-05-20 12:43:28', 'test_192');
INSERT INTO `t_news` VALUES ('182835616738979840', 'test_193', '2018-05-20 12:43:28', 'test_193', '2018-05-20 12:43:28', 'test_193');
INSERT INTO `t_news` VALUES ('182835616759951360', 'test_194', '2018-05-20 12:43:28', 'test_194', '2018-05-20 12:43:28', 'test_194');
INSERT INTO `t_news` VALUES ('182835616785117184', 'test_195', '2018-05-20 12:43:28', 'test_195', '2018-05-20 12:43:28', 'test_195');
INSERT INTO `t_news` VALUES ('182835616810283008', 'test_196', '2018-05-20 12:43:28', 'test_196', '2018-05-20 12:43:28', 'test_196');
INSERT INTO `t_news` VALUES ('182835616843837440', 'test_197', '2018-05-20 12:43:28', 'test_197', '2018-05-20 12:43:28', 'test_197');
INSERT INTO `t_news` VALUES ('182835616885780480', 'test_198', '2018-05-20 12:43:28', 'test_198', '2018-05-20 12:43:28', 'test_198');
INSERT INTO `t_news` VALUES ('182835616919334912', 'test_199', '2018-05-20 12:43:28', 'test_199', '2018-05-20 12:43:28', 'test_199');
INSERT INTO `t_news` VALUES ('182835616952889344', 'test_200', '2018-05-20 12:43:28', 'test_200', '2018-05-20 12:43:28', 'test_200');
INSERT INTO `t_news` VALUES ('182835616982249472', 'test_201', '2018-05-20 12:43:28', 'test_201', '2018-05-20 12:43:28', 'test_201');
INSERT INTO `t_news` VALUES ('182835617015803904', 'test_202', '2018-05-20 12:43:28', 'test_202', '2018-05-20 12:43:28', 'test_202');
INSERT INTO `t_news` VALUES ('182835617045164032', 'test_203', '2018-05-20 12:43:28', 'test_203', '2018-05-20 12:43:28', 'test_203');
INSERT INTO `t_news` VALUES ('182835617070329856', 'test_204', '2018-05-20 12:43:28', 'test_204', '2018-05-20 12:43:28', 'test_204');
INSERT INTO `t_news` VALUES ('182835617099689984', 'test_205', '2018-05-20 12:43:28', 'test_205', '2018-05-20 12:43:28', 'test_205');
INSERT INTO `t_news` VALUES ('182835617124855808', 'test_206', '2018-05-20 12:43:28', 'test_206', '2018-05-20 12:43:28', 'test_206');
INSERT INTO `t_news` VALUES ('182835617154215936', 'test_207', '2018-05-20 12:43:28', 'test_207', '2018-05-20 12:43:28', 'test_207');
INSERT INTO `t_news` VALUES ('182835617200353280', 'test_208', '2018-05-20 12:43:28', 'test_208', '2018-05-20 12:43:28', 'test_208');
INSERT INTO `t_news` VALUES ('182835617233907712', 'test_209', '2018-05-20 12:43:28', 'test_209', '2018-05-20 12:43:28', 'test_209');
INSERT INTO `t_news` VALUES ('182835617263267840', 'test_210', '2018-05-20 12:43:28', 'test_210', '2018-05-20 12:43:28', 'test_210');
INSERT INTO `t_news` VALUES ('182835617288433664', 'test_211', '2018-05-20 12:43:28', 'test_211', '2018-05-20 12:43:28', 'test_211');
INSERT INTO `t_news` VALUES ('182835617313599488', 'test_212', '2018-05-20 12:43:28', 'test_212', '2018-05-20 12:43:28', 'test_212');
INSERT INTO `t_news` VALUES ('182835617338765312', 'test_213', '2018-05-20 12:43:28', 'test_213', '2018-05-20 12:43:28', 'test_213');
INSERT INTO `t_news` VALUES ('182835617372319744', 'test_214', '2018-05-20 12:43:28', 'test_214', '2018-05-20 12:43:28', 'test_214');
INSERT INTO `t_news` VALUES ('182835617405874176', 'test_215', '2018-05-20 12:43:28', 'test_215', '2018-05-20 12:43:28', 'test_215');
INSERT INTO `t_news` VALUES ('182835617431040000', 'test_216', '2018-05-20 12:43:28', 'test_216', '2018-05-20 12:43:28', 'test_216');
INSERT INTO `t_news` VALUES ('182835617460400128', 'test_217', '2018-05-20 12:43:28', 'test_217', '2018-05-20 12:43:28', 'test_217');
INSERT INTO `t_news` VALUES ('182835617485565952', 'test_218', '2018-05-20 12:43:28', 'test_218', '2018-05-20 12:43:28', 'test_218');
INSERT INTO `t_news` VALUES ('182835617514926080', 'test_219', '2018-05-20 12:43:28', 'test_219', '2018-05-20 12:43:28', 'test_219');
INSERT INTO `t_news` VALUES ('182835617540091904', 'test_220', '2018-05-20 12:43:28', 'test_220', '2018-05-20 12:43:28', 'test_220');
INSERT INTO `t_news` VALUES ('182835617573646336', 'test_221', '2018-05-20 12:43:28', 'test_221', '2018-05-20 12:43:28', 'test_221');
INSERT INTO `t_news` VALUES ('182835617611395072', 'test_222', '2018-05-20 12:43:28', 'test_222', '2018-05-20 12:43:28', 'test_222');
INSERT INTO `t_news` VALUES ('182835617644949504', 'test_223', '2018-05-20 12:43:28', 'test_223', '2018-05-20 12:43:28', 'test_223');
INSERT INTO `t_news` VALUES ('182835617674309632', 'test_224', '2018-05-20 12:43:28', 'test_224', '2018-05-20 12:43:28', 'test_224');
INSERT INTO `t_news` VALUES ('182835617699475456', 'test_225', '2018-05-20 12:43:28', 'test_225', '2018-05-20 12:43:28', 'test_225');
INSERT INTO `t_news` VALUES ('182835617728835584', 'test_226', '2018-05-20 12:43:28', 'test_226', '2018-05-20 12:43:28', 'test_226');
INSERT INTO `t_news` VALUES ('182835617754001408', 'test_227', '2018-05-20 12:43:28', 'test_227', '2018-05-20 12:43:28', 'test_227');
INSERT INTO `t_news` VALUES ('182835617779167232', 'test_228', '2018-05-20 12:43:28', 'test_228', '2018-05-20 12:43:28', 'test_228');
INSERT INTO `t_news` VALUES ('182835617804333056', 'test_229', '2018-05-20 12:43:28', 'test_229', '2018-05-20 12:43:28', 'test_229');
INSERT INTO `t_news` VALUES ('182835617829498880', 'test_230', '2018-05-20 12:43:28', 'test_230', '2018-05-20 12:43:28', 'test_230');
INSERT INTO `t_news` VALUES ('182835617854664704', 'test_231', '2018-05-20 12:43:28', 'test_231', '2018-05-20 12:43:28', 'test_231');
INSERT INTO `t_news` VALUES ('182835617884024832', 'test_232', '2018-05-20 12:43:28', 'test_232', '2018-05-20 12:43:28', 'test_232');
INSERT INTO `t_news` VALUES ('182835617930162176', 'test_233', '2018-05-20 12:43:28', 'test_233', '2018-05-20 12:43:28', 'test_233');
INSERT INTO `t_news` VALUES ('182835617963716608', 'test_234', '2018-05-20 12:43:28', 'test_234', '2018-05-20 12:43:28', 'test_234');
INSERT INTO `t_news` VALUES ('182835617997271040', 'test_235', '2018-05-20 12:43:28', 'test_235', '2018-05-20 12:43:28', 'test_235');
INSERT INTO `t_news` VALUES ('182835618022436864', 'test_236', '2018-05-20 12:43:28', 'test_236', '2018-05-20 12:43:28', 'test_236');
INSERT INTO `t_news` VALUES ('182835618047602688', 'test_237', '2018-05-20 12:43:28', 'test_237', '2018-05-20 12:43:28', 'test_237');
INSERT INTO `t_news` VALUES ('182835618081157120', 'test_238', '2018-05-20 12:43:28', 'test_238', '2018-05-20 12:43:28', 'test_238');
INSERT INTO `t_news` VALUES ('182835618102128640', 'test_239', '2018-05-20 12:43:28', 'test_239', '2018-05-20 12:43:28', 'test_239');
INSERT INTO `t_news` VALUES ('182835618135683072', 'test_240', '2018-05-20 12:43:28', 'test_240', '2018-05-20 12:43:28', 'test_240');
INSERT INTO `t_news` VALUES ('182835618169237504', 'test_241', '2018-05-20 12:43:28', 'test_241', '2018-05-20 12:43:28', 'test_241');
INSERT INTO `t_news` VALUES ('182835618198597632', 'test_242', '2018-05-20 12:43:28', 'test_242', '2018-05-20 12:43:28', 'test_242');
INSERT INTO `t_news` VALUES ('182835618227957760', 'test_243', '2018-05-20 12:43:28', 'test_243', '2018-05-20 12:43:28', 'test_243');
INSERT INTO `t_news` VALUES ('182835618253123584', 'test_244', '2018-05-20 12:43:28', 'test_244', '2018-05-20 12:43:28', 'test_244');
INSERT INTO `t_news` VALUES ('182835618278289408', 'test_245', '2018-05-20 12:43:28', 'test_245', '2018-05-20 12:43:28', 'test_245');
INSERT INTO `t_news` VALUES ('182835618303455232', 'test_246', '2018-05-20 12:43:28', 'test_246', '2018-05-20 12:43:28', 'test_246');
INSERT INTO `t_news` VALUES ('182835618328621056', 'test_247', '2018-05-20 12:43:28', 'test_247', '2018-05-20 12:43:28', 'test_247');
INSERT INTO `t_news` VALUES ('182835618353786880', 'test_248', '2018-05-20 12:43:28', 'test_248', '2018-05-20 12:43:28', 'test_248');
INSERT INTO `t_news` VALUES ('182835618378952704', 'test_249', '2018-05-20 12:43:28', 'test_249', '2018-05-20 12:43:28', 'test_249');
INSERT INTO `t_news` VALUES ('182835618404118528', 'test_250', '2018-05-20 12:43:28', 'test_250', '2018-05-20 12:43:28', 'test_250');
INSERT INTO `t_news` VALUES ('182835618433478656', 'test_251', '2018-05-20 12:43:28', 'test_251', '2018-05-20 12:43:28', 'test_251');
INSERT INTO `t_news` VALUES ('182835618454450176', 'test_252', '2018-05-20 12:43:28', 'test_252', '2018-05-20 12:43:28', 'test_252');
INSERT INTO `t_news` VALUES ('182835618479616000', 'test_253', '2018-05-20 12:43:28', 'test_253', '2018-05-20 12:43:28', 'test_253');
INSERT INTO `t_news` VALUES ('182835618508976128', 'test_254', '2018-05-20 12:43:28', 'test_254', '2018-05-20 12:43:28', 'test_254');
INSERT INTO `t_news` VALUES ('182835618529947648', 'test_255', '2018-05-20 12:43:28', 'test_255', '2018-05-20 12:43:28', 'test_255');
INSERT INTO `t_news` VALUES ('182835618571890688', 'test_256', '2018-05-20 12:43:28', 'test_256', '2018-05-20 12:43:28', 'test_256');
INSERT INTO `t_news` VALUES ('182835618609639424', 'test_257', '2018-05-20 12:43:28', 'test_257', '2018-05-20 12:43:28', 'test_257');
INSERT INTO `t_news` VALUES ('182835618643193856', 'test_258', '2018-05-20 12:43:28', 'test_258', '2018-05-20 12:43:28', 'test_258');
INSERT INTO `t_news` VALUES ('182835618668359680', 'test_259', '2018-05-20 12:43:28', 'test_259', '2018-05-20 12:43:28', 'test_259');
INSERT INTO `t_news` VALUES ('182835618689331200', 'test_260', '2018-05-20 12:43:28', 'test_260', '2018-05-20 12:43:28', 'test_260');
INSERT INTO `t_news` VALUES ('182835618718691328', 'test_261', '2018-05-20 12:43:28', 'test_261', '2018-05-20 12:43:28', 'test_261');
INSERT INTO `t_news` VALUES ('182835618743857152', 'test_262', '2018-05-20 12:43:28', 'test_262', '2018-05-20 12:43:28', 'test_262');
INSERT INTO `t_news` VALUES ('182835618781605888', 'test_263', '2018-05-20 12:43:28', 'test_263', '2018-05-20 12:43:28', 'test_263');
INSERT INTO `t_news` VALUES ('182835618815160320', 'test_264', '2018-05-20 12:43:28', 'test_264', '2018-05-20 12:43:28', 'test_264');
INSERT INTO `t_news` VALUES ('182835618852909056', 'test_265', '2018-05-20 12:43:28', 'test_265', '2018-05-20 12:43:28', 'test_265');
INSERT INTO `t_news` VALUES ('182835618878074880', 'test_266', '2018-05-20 12:43:28', 'test_266', '2018-05-20 12:43:28', 'test_266');
INSERT INTO `t_news` VALUES ('182835618903240704', 'test_267', '2018-05-20 12:43:28', 'test_267', '2018-05-20 12:43:28', 'test_267');
INSERT INTO `t_news` VALUES ('182835618928406528', 'test_268', '2018-05-20 12:43:28', 'test_268', '2018-05-20 12:43:28', 'test_268');
INSERT INTO `t_news` VALUES ('182835618953572352', 'test_269', '2018-05-20 12:43:28', 'test_269', '2018-05-20 12:43:28', 'test_269');
INSERT INTO `t_news` VALUES ('182835618978738176', 'test_270', '2018-05-20 12:43:28', 'test_270', '2018-05-20 12:43:28', 'test_270');
INSERT INTO `t_news` VALUES ('182835618999709696', 'test_271', '2018-05-20 12:43:28', 'test_271', '2018-05-20 12:43:28', 'test_271');
INSERT INTO `t_news` VALUES ('182835619024875520', 'test_272', '2018-05-20 12:43:28', 'test_272', '2018-05-20 12:43:28', 'test_272');
INSERT INTO `t_news` VALUES ('182835619054235648', 'test_273', '2018-05-20 12:43:29', 'test_273', '2018-05-20 12:43:29', 'test_273');
INSERT INTO `t_news` VALUES ('182835619087790080', 'test_274', '2018-05-20 12:43:29', 'test_274', '2018-05-20 12:43:29', 'test_274');
INSERT INTO `t_news` VALUES ('182835619125538816', 'test_275', '2018-05-20 12:43:29', 'test_275', '2018-05-20 12:43:29', 'test_275');
INSERT INTO `t_news` VALUES ('182835619154898944', 'test_276', '2018-05-20 12:43:29', 'test_276', '2018-05-20 12:43:29', 'test_276');
INSERT INTO `t_news` VALUES ('182835619192647680', 'test_277', '2018-05-20 12:43:29', 'test_277', '2018-05-20 12:43:29', 'test_277');
INSERT INTO `t_news` VALUES ('182835619222007808', 'test_278', '2018-05-20 12:43:29', 'test_278', '2018-05-20 12:43:29', 'test_278');
INSERT INTO `t_news` VALUES ('182835619259756544', 'test_279', '2018-05-20 12:43:29', 'test_279', '2018-05-20 12:43:29', 'test_279');
INSERT INTO `t_news` VALUES ('182835619284922368', 'test_280', '2018-05-20 12:43:29', 'test_280', '2018-05-20 12:43:29', 'test_280');
INSERT INTO `t_news` VALUES ('182835619310088192', 'test_281', '2018-05-20 12:43:29', 'test_281', '2018-05-20 12:43:29', 'test_281');
INSERT INTO `t_news` VALUES ('182835619335254016', 'test_282', '2018-05-20 12:43:29', 'test_282', '2018-05-20 12:43:29', 'test_282');
INSERT INTO `t_news` VALUES ('182835619360419840', 'test_283', '2018-05-20 12:43:29', 'test_283', '2018-05-20 12:43:29', 'test_283');
INSERT INTO `t_news` VALUES ('182835619393974272', 'test_284', '2018-05-20 12:43:29', 'test_284', '2018-05-20 12:43:29', 'test_284');
INSERT INTO `t_news` VALUES ('182835619431723008', 'test_285', '2018-05-20 12:43:29', 'test_285', '2018-05-20 12:43:29', 'test_285');
INSERT INTO `t_news` VALUES ('182835619461083136', 'test_286', '2018-05-20 12:43:29', 'test_286', '2018-05-20 12:43:29', 'test_286');
INSERT INTO `t_news` VALUES ('182835619490443264', 'test_287', '2018-05-20 12:43:29', 'test_287', '2018-05-20 12:43:29', 'test_287');
INSERT INTO `t_news` VALUES ('182835619515609088', 'test_288', '2018-05-20 12:43:29', 'test_288', '2018-05-20 12:43:29', 'test_288');
INSERT INTO `t_news` VALUES ('182835619540774912', 'test_289', '2018-05-20 12:43:29', 'test_289', '2018-05-20 12:43:29', 'test_289');
INSERT INTO `t_news` VALUES ('182835619565940736', 'test_290', '2018-05-20 12:43:29', 'test_290', '2018-05-20 12:43:29', 'test_290');
INSERT INTO `t_news` VALUES ('182835619591106560', 'test_291', '2018-05-20 12:43:29', 'test_291', '2018-05-20 12:43:29', 'test_291');
INSERT INTO `t_news` VALUES ('182835619628855296', 'test_292', '2018-05-20 12:43:29', 'test_292', '2018-05-20 12:43:29', 'test_292');
INSERT INTO `t_news` VALUES ('182835619658215424', 'test_293', '2018-05-20 12:43:29', 'test_293', '2018-05-20 12:43:29', 'test_293');
INSERT INTO `t_news` VALUES ('182835619687575552', 'test_294', '2018-05-20 12:43:29', 'test_294', '2018-05-20 12:43:29', 'test_294');
INSERT INTO `t_news` VALUES ('182835619712741376', 'test_295', '2018-05-20 12:43:29', 'test_295', '2018-05-20 12:43:29', 'test_295');
INSERT INTO `t_news` VALUES ('182835619737907200', 'test_296', '2018-05-20 12:43:29', 'test_296', '2018-05-20 12:43:29', 'test_296');
INSERT INTO `t_news` VALUES ('182835619758878720', 'test_297', '2018-05-20 12:43:29', 'test_297', '2018-05-20 12:43:29', 'test_297');
INSERT INTO `t_news` VALUES ('182835619784044544', 'test_298', '2018-05-20 12:43:29', 'test_298', '2018-05-20 12:43:29', 'test_298');
INSERT INTO `t_news` VALUES ('182835619821793280', 'test_299', '2018-05-20 12:43:29', 'test_299', '2018-05-20 12:43:29', 'test_299');
INSERT INTO `t_news` VALUES ('182835619859542016', 'test_300', '2018-05-20 12:43:29', 'test_300', '2018-05-20 12:43:29', 'test_300');
INSERT INTO `t_news` VALUES ('182835619888902144', 'test_301', '2018-05-20 12:43:29', 'test_301', '2018-05-20 12:43:29', 'test_301');
INSERT INTO `t_news` VALUES ('182835619909873664', 'test_302', '2018-05-20 12:43:29', 'test_302', '2018-05-20 12:43:29', 'test_302');
INSERT INTO `t_news` VALUES ('182835619935039488', 'test_303', '2018-05-20 12:43:29', 'test_303', '2018-05-20 12:43:29', 'test_303');
INSERT INTO `t_news` VALUES ('182835619968593920', 'test_304', '2018-05-20 12:43:29', 'test_304', '2018-05-20 12:43:29', 'test_304');
INSERT INTO `t_news` VALUES ('182835620018925568', 'test_305', '2018-05-20 12:43:29', 'test_305', '2018-05-20 12:43:29', 'test_305');
INSERT INTO `t_news` VALUES ('182835620048285696', 'test_306', '2018-05-20 12:43:29', 'test_306', '2018-05-20 12:43:29', 'test_306');
INSERT INTO `t_news` VALUES ('182835620077645824', 'test_307', '2018-05-20 12:43:29', 'test_307', '2018-05-20 12:43:29', 'test_307');
INSERT INTO `t_news` VALUES ('182835620115394560', 'test_308', '2018-05-20 12:43:29', 'test_308', '2018-05-20 12:43:29', 'test_308');
INSERT INTO `t_news` VALUES ('182835620136366080', 'test_309', '2018-05-20 12:43:29', 'test_309', '2018-05-20 12:43:29', 'test_309');
INSERT INTO `t_news` VALUES ('182835620174114816', 'test_310', '2018-05-20 12:43:29', 'test_310', '2018-05-20 12:43:29', 'test_310');
INSERT INTO `t_news` VALUES ('182835620203474944', 'test_311', '2018-05-20 12:43:29', 'test_311', '2018-05-20 12:43:29', 'test_311');
INSERT INTO `t_news` VALUES ('182835620232835072', 'test_312', '2018-05-20 12:43:29', 'test_312', '2018-05-20 12:43:29', 'test_312');
INSERT INTO `t_news` VALUES ('182835620262195200', 'test_313', '2018-05-20 12:43:29', 'test_313', '2018-05-20 12:43:29', 'test_313');
INSERT INTO `t_news` VALUES ('182835620287361024', 'test_314', '2018-05-20 12:43:29', 'test_314', '2018-05-20 12:43:29', 'test_314');
INSERT INTO `t_news` VALUES ('182835620316721152', 'test_315', '2018-05-20 12:43:29', 'test_315', '2018-05-20 12:43:29', 'test_315');
INSERT INTO `t_news` VALUES ('182835620341886976', 'test_316', '2018-05-20 12:43:29', 'test_316', '2018-05-20 12:43:29', 'test_316');
INSERT INTO `t_news` VALUES ('182835620371247104', 'test_317', '2018-05-20 12:43:29', 'test_317', '2018-05-20 12:43:29', 'test_317');
INSERT INTO `t_news` VALUES ('182835620413190144', 'test_318', '2018-05-20 12:43:29', 'test_318', '2018-05-20 12:43:29', 'test_318');
INSERT INTO `t_news` VALUES ('182835620446744576', 'test_319', '2018-05-20 12:43:29', 'test_319', '2018-05-20 12:43:29', 'test_319');
INSERT INTO `t_news` VALUES ('182835620476104704', 'test_320', '2018-05-20 12:43:29', 'test_320', '2018-05-20 12:43:29', 'test_320');
INSERT INTO `t_news` VALUES ('182835620497076224', 'test_321', '2018-05-20 12:43:29', 'test_321', '2018-05-20 12:43:29', 'test_321');
INSERT INTO `t_news` VALUES ('182835620526436352', 'test_322', '2018-05-20 12:43:29', 'test_322', '2018-05-20 12:43:29', 'test_322');
INSERT INTO `t_news` VALUES ('182835620547407872', 'test_323', '2018-05-20 12:43:29', 'test_323', '2018-05-20 12:43:29', 'test_323');
INSERT INTO `t_news` VALUES ('182835620572573696', 'test_324', '2018-05-20 12:43:29', 'test_324', '2018-05-20 12:43:29', 'test_324');
INSERT INTO `t_news` VALUES ('182835620610322432', 'test_325', '2018-05-20 12:43:29', 'test_325', '2018-05-20 12:43:29', 'test_325');
INSERT INTO `t_news` VALUES ('182835620639682560', 'test_326', '2018-05-20 12:43:29', 'test_326', '2018-05-20 12:43:29', 'test_326');
INSERT INTO `t_news` VALUES ('182835620664848384', 'test_327', '2018-05-20 12:43:29', 'test_327', '2018-05-20 12:43:29', 'test_327');
INSERT INTO `t_news` VALUES ('182835620694208512', 'test_328', '2018-05-20 12:43:29', 'test_328', '2018-05-20 12:43:29', 'test_328');
INSERT INTO `t_news` VALUES ('182835620715180032', 'test_329', '2018-05-20 12:43:29', 'test_329', '2018-05-20 12:43:29', 'test_329');
INSERT INTO `t_news` VALUES ('182835620740345856', 'test_330', '2018-05-20 12:43:29', 'test_330', '2018-05-20 12:43:29', 'test_330');
INSERT INTO `t_news` VALUES ('182835620765511680', 'test_331', '2018-05-20 12:43:29', 'test_331', '2018-05-20 12:43:29', 'test_331');
INSERT INTO `t_news` VALUES ('182835620811649024', 'test_332', '2018-05-20 12:43:29', 'test_332', '2018-05-20 12:43:29', 'test_332');
INSERT INTO `t_news` VALUES ('182835620845203456', 'test_333', '2018-05-20 12:43:29', 'test_333', '2018-05-20 12:43:29', 'test_333');
INSERT INTO `t_news` VALUES ('182835620874563584', 'test_334', '2018-05-20 12:43:29', 'test_334', '2018-05-20 12:43:29', 'test_334');
INSERT INTO `t_news` VALUES ('182835620899729408', 'test_335', '2018-05-20 12:43:29', 'test_335', '2018-05-20 12:43:29', 'test_335');
INSERT INTO `t_news` VALUES ('182835620933283840', 'test_336', '2018-05-20 12:43:29', 'test_336', '2018-05-20 12:43:29', 'test_336');
INSERT INTO `t_news` VALUES ('182835620962643968', 'test_337', '2018-05-20 12:43:29', 'test_337', '2018-05-20 12:43:29', 'test_337');
INSERT INTO `t_news` VALUES ('182835621008781312', 'test_338', '2018-05-20 12:43:29', 'test_338', '2018-05-20 12:43:29', 'test_338');
INSERT INTO `t_news` VALUES ('182835621038141440', 'test_339', '2018-05-20 12:43:29', 'test_339', '2018-05-20 12:43:29', 'test_339');
INSERT INTO `t_news` VALUES ('182835621067501568', 'test_340', '2018-05-20 12:43:29', 'test_340', '2018-05-20 12:43:29', 'test_340');
INSERT INTO `t_news` VALUES ('182835621096861696', 'test_341', '2018-05-20 12:43:29', 'test_341', '2018-05-20 12:43:29', 'test_341');
INSERT INTO `t_news` VALUES ('182835621122027520', 'test_342', '2018-05-20 12:43:29', 'test_342', '2018-05-20 12:43:29', 'test_342');
INSERT INTO `t_news` VALUES ('182835621163970560', 'test_343', '2018-05-20 12:43:29', 'test_343', '2018-05-20 12:43:29', 'test_343');
INSERT INTO `t_news` VALUES ('182835621189136384', 'test_344', '2018-05-20 12:43:29', 'test_344', '2018-05-20 12:43:29', 'test_344');
INSERT INTO `t_news` VALUES ('182835621218496512', 'test_345', '2018-05-20 12:43:29', 'test_345', '2018-05-20 12:43:29', 'test_345');
INSERT INTO `t_news` VALUES ('182835621247856640', 'test_346', '2018-05-20 12:43:29', 'test_346', '2018-05-20 12:43:29', 'test_346');
INSERT INTO `t_news` VALUES ('182835621268828160', 'test_347', '2018-05-20 12:43:29', 'test_347', '2018-05-20 12:43:29', 'test_347');
INSERT INTO `t_news` VALUES ('182835621293993984', 'test_348', '2018-05-20 12:43:29', 'test_348', '2018-05-20 12:43:29', 'test_348');
INSERT INTO `t_news` VALUES ('182835621319159808', 'test_349', '2018-05-20 12:43:29', 'test_349', '2018-05-20 12:43:29', 'test_349');
INSERT INTO `t_news` VALUES ('182835621356908544', 'test_350', '2018-05-20 12:43:29', 'test_350', '2018-05-20 12:43:29', 'test_350');
INSERT INTO `t_news` VALUES ('182835621386268672', 'test_351', '2018-05-20 12:43:29', 'test_351', '2018-05-20 12:43:29', 'test_351');
INSERT INTO `t_news` VALUES ('182835621415628800', 'test_352', '2018-05-20 12:43:29', 'test_352', '2018-05-20 12:43:29', 'test_352');
INSERT INTO `t_news` VALUES ('182835621440794624', 'test_353', '2018-05-20 12:43:29', 'test_353', '2018-05-20 12:43:29', 'test_353');
INSERT INTO `t_news` VALUES ('182835621465960448', 'test_354', '2018-05-20 12:43:29', 'test_354', '2018-05-20 12:43:29', 'test_354');
INSERT INTO `t_news` VALUES ('182835621491126272', 'test_355', '2018-05-20 12:43:29', 'test_355', '2018-05-20 12:43:29', 'test_355');
INSERT INTO `t_news` VALUES ('182835621512097792', 'test_356', '2018-05-20 12:43:29', 'test_356', '2018-05-20 12:43:29', 'test_356');
INSERT INTO `t_news` VALUES ('182835621533069312', 'test_357', '2018-05-20 12:43:29', 'test_357', '2018-05-20 12:43:29', 'test_357');
INSERT INTO `t_news` VALUES ('182835621558235136', 'test_358', '2018-05-20 12:43:29', 'test_358', '2018-05-20 12:43:29', 'test_358');
INSERT INTO `t_news` VALUES ('182835621583400960', 'test_359', '2018-05-20 12:43:29', 'test_359', '2018-05-20 12:43:29', 'test_359');
INSERT INTO `t_news` VALUES ('182835621604372480', 'test_360', '2018-05-20 12:43:29', 'test_360', '2018-05-20 12:43:29', 'test_360');
INSERT INTO `t_news` VALUES ('182835621629538304', 'test_361', '2018-05-20 12:43:29', 'test_361', '2018-05-20 12:43:29', 'test_361');
INSERT INTO `t_news` VALUES ('182835621658898432', 'test_362', '2018-05-20 12:43:29', 'test_362', '2018-05-20 12:43:29', 'test_362');
INSERT INTO `t_news` VALUES ('182835621684064256', 'test_363', '2018-05-20 12:43:29', 'test_363', '2018-05-20 12:43:29', 'test_363');
INSERT INTO `t_news` VALUES ('182835621709230080', 'test_364', '2018-05-20 12:43:29', 'test_364', '2018-05-20 12:43:29', 'test_364');
INSERT INTO `t_news` VALUES ('182835621730201600', 'test_365', '2018-05-20 12:43:29', 'test_365', '2018-05-20 12:43:29', 'test_365');
INSERT INTO `t_news` VALUES ('182835621759561728', 'test_366', '2018-05-20 12:43:29', 'test_366', '2018-05-20 12:43:29', 'test_366');
INSERT INTO `t_news` VALUES ('182835621801504768', 'test_367', '2018-05-20 12:43:29', 'test_367', '2018-05-20 12:43:29', 'test_367');
INSERT INTO `t_news` VALUES ('182835621826670592', 'test_368', '2018-05-20 12:43:29', 'test_368', '2018-05-20 12:43:29', 'test_368');
INSERT INTO `t_news` VALUES ('182835621864419328', 'test_369', '2018-05-20 12:43:29', 'test_369', '2018-05-20 12:43:29', 'test_369');
INSERT INTO `t_news` VALUES ('182835621889585152', 'test_370', '2018-05-20 12:43:29', 'test_370', '2018-05-20 12:43:29', 'test_370');
INSERT INTO `t_news` VALUES ('182835621910556672', 'test_371', '2018-05-20 12:43:29', 'test_371', '2018-05-20 12:43:29', 'test_371');
INSERT INTO `t_news` VALUES ('182835621935722496', 'test_372', '2018-05-20 12:43:29', 'test_372', '2018-05-20 12:43:29', 'test_372');
INSERT INTO `t_news` VALUES ('182835621960888320', 'test_373', '2018-05-20 12:43:29', 'test_373', '2018-05-20 12:43:29', 'test_373');
INSERT INTO `t_news` VALUES ('182835621990248448', 'test_374', '2018-05-20 12:43:29', 'test_374', '2018-05-20 12:43:29', 'test_374');
INSERT INTO `t_news` VALUES ('182835622011219968', 'test_375', '2018-05-20 12:43:29', 'test_375', '2018-05-20 12:43:29', 'test_375');
INSERT INTO `t_news` VALUES ('182835622036385792', 'test_376', '2018-05-20 12:43:29', 'test_376', '2018-05-20 12:43:29', 'test_376');
INSERT INTO `t_news` VALUES ('182835622078328832', 'test_377', '2018-05-20 12:43:29', 'test_377', '2018-05-20 12:43:29', 'test_377');
INSERT INTO `t_news` VALUES ('182835622111883264', 'test_378', '2018-05-20 12:43:29', 'test_378', '2018-05-20 12:43:29', 'test_378');
INSERT INTO `t_news` VALUES ('182835622141243392', 'test_379', '2018-05-20 12:43:29', 'test_379', '2018-05-20 12:43:29', 'test_379');
INSERT INTO `t_news` VALUES ('182835622162214912', 'test_380', '2018-05-20 12:43:29', 'test_380', '2018-05-20 12:43:29', 'test_380');
INSERT INTO `t_news` VALUES ('182835622191575040', 'test_381', '2018-05-20 12:43:29', 'test_381', '2018-05-20 12:43:29', 'test_381');
INSERT INTO `t_news` VALUES ('182835622212546560', 'test_382', '2018-05-20 12:43:29', 'test_382', '2018-05-20 12:43:29', 'test_382');
INSERT INTO `t_news` VALUES ('182835622237712384', 'test_383', '2018-05-20 12:43:29', 'test_383', '2018-05-20 12:43:29', 'test_383');
INSERT INTO `t_news` VALUES ('182835622267072512', 'test_384', '2018-05-20 12:43:29', 'test_384', '2018-05-20 12:43:29', 'test_384');
INSERT INTO `t_news` VALUES ('182835622296432640', 'test_385', '2018-05-20 12:43:29', 'test_385', '2018-05-20 12:43:29', 'test_385');
INSERT INTO `t_news` VALUES ('182835622338375680', 'test_386', '2018-05-20 12:43:29', 'test_386', '2018-05-20 12:43:29', 'test_386');
INSERT INTO `t_news` VALUES ('182835622376124416', 'test_387', '2018-05-20 12:43:29', 'test_387', '2018-05-20 12:43:29', 'test_387');
INSERT INTO `t_news` VALUES ('182835622401290240', 'test_388', '2018-05-20 12:43:29', 'test_388', '2018-05-20 12:43:29', 'test_388');
INSERT INTO `t_news` VALUES ('182835622426456064', 'test_389', '2018-05-20 12:43:29', 'test_389', '2018-05-20 12:43:29', 'test_389');
INSERT INTO `t_news` VALUES ('182835622455816192', 'test_390', '2018-05-20 12:43:29', 'test_390', '2018-05-20 12:43:29', 'test_390');
INSERT INTO `t_news` VALUES ('182835622501953536', 'test_391', '2018-05-20 12:43:29', 'test_391', '2018-05-20 12:43:29', 'test_391');
INSERT INTO `t_news` VALUES ('182835622531313664', 'test_392', '2018-05-20 12:43:29', 'test_392', '2018-05-20 12:43:29', 'test_392');
INSERT INTO `t_news` VALUES ('182835622569062400', 'test_393', '2018-05-20 12:43:29', 'test_393', '2018-05-20 12:43:29', 'test_393');
INSERT INTO `t_news` VALUES ('182835622598422528', 'test_394', '2018-05-20 12:43:29', 'test_394', '2018-05-20 12:43:29', 'test_394');
INSERT INTO `t_news` VALUES ('182835622627782656', 'test_395', '2018-05-20 12:43:29', 'test_395', '2018-05-20 12:43:29', 'test_395');
INSERT INTO `t_news` VALUES ('182835622652948480', 'test_396', '2018-05-20 12:43:29', 'test_396', '2018-05-20 12:43:29', 'test_396');
INSERT INTO `t_news` VALUES ('182835622673920000', 'test_397', '2018-05-20 12:43:29', 'test_397', '2018-05-20 12:43:29', 'test_397');
INSERT INTO `t_news` VALUES ('182835622699085824', 'test_398', '2018-05-20 12:43:29', 'test_398', '2018-05-20 12:43:29', 'test_398');
INSERT INTO `t_news` VALUES ('182835622720057344', 'test_399', '2018-05-20 12:43:29', 'test_399', '2018-05-20 12:43:29', 'test_399');
INSERT INTO `t_news` VALUES ('182835622762000384', 'test_400', '2018-05-20 12:43:29', 'test_400', '2018-05-20 12:43:29', 'test_400');
INSERT INTO `t_news` VALUES ('182835622791360512', 'test_401', '2018-05-20 12:43:29', 'test_401', '2018-05-20 12:43:29', 'test_401');
INSERT INTO `t_news` VALUES ('182835622824914944', 'test_402', '2018-05-20 12:43:29', 'test_402', '2018-05-20 12:43:29', 'test_402');
INSERT INTO `t_news` VALUES ('182835622854275072', 'test_403', '2018-05-20 12:43:29', 'test_403', '2018-05-20 12:43:29', 'test_403');
INSERT INTO `t_news` VALUES ('182835622883635200', 'test_404', '2018-05-20 12:43:29', 'test_404', '2018-05-20 12:43:29', 'test_404');
INSERT INTO `t_news` VALUES ('182835622917189632', 'test_405', '2018-05-20 12:43:29', 'test_405', '2018-05-20 12:43:29', 'test_405');
INSERT INTO `t_news` VALUES ('182835622938161152', 'test_406', '2018-05-20 12:43:29', 'test_406', '2018-05-20 12:43:29', 'test_406');
INSERT INTO `t_news` VALUES ('182835622967521280', 'test_407', '2018-05-20 12:43:29', 'test_407', '2018-05-20 12:43:29', 'test_407');
INSERT INTO `t_news` VALUES ('182835622988492800', 'test_408', '2018-05-20 12:43:29', 'test_408', '2018-05-20 12:43:29', 'test_408');
INSERT INTO `t_news` VALUES ('182835623013658624', 'test_409', '2018-05-20 12:43:29', 'test_409', '2018-05-20 12:43:29', 'test_409');
INSERT INTO `t_news` VALUES ('182835623055601664', 'test_410', '2018-05-20 12:43:29', 'test_410', '2018-05-20 12:43:29', 'test_410');
INSERT INTO `t_news` VALUES ('182835623080767488', 'test_411', '2018-05-20 12:43:29', 'test_411', '2018-05-20 12:43:29', 'test_411');
INSERT INTO `t_news` VALUES ('182835623114321920', 'test_412', '2018-05-20 12:43:29', 'test_412', '2018-05-20 12:43:29', 'test_412');
INSERT INTO `t_news` VALUES ('182835623139487744', 'test_413', '2018-05-20 12:43:29', 'test_413', '2018-05-20 12:43:29', 'test_413');
INSERT INTO `t_news` VALUES ('182835623164653568', 'test_414', '2018-05-20 12:43:29', 'test_414', '2018-05-20 12:43:29', 'test_414');
INSERT INTO `t_news` VALUES ('182835623185625088', 'test_415', '2018-05-20 12:43:29', 'test_415', '2018-05-20 12:43:29', 'test_415');
INSERT INTO `t_news` VALUES ('182835623210790912', 'test_416', '2018-05-20 12:43:29', 'test_416', '2018-05-20 12:43:29', 'test_416');
INSERT INTO `t_news` VALUES ('182835623248539648', 'test_417', '2018-05-20 12:43:30', 'test_417', '2018-05-20 12:43:30', 'test_417');
INSERT INTO `t_news` VALUES ('182835623277899776', 'test_418', '2018-05-20 12:43:30', 'test_418', '2018-05-20 12:43:30', 'test_418');
INSERT INTO `t_news` VALUES ('182835623303065600', 'test_419', '2018-05-20 12:43:30', 'test_419', '2018-05-20 12:43:30', 'test_419');
INSERT INTO `t_news` VALUES ('182835623328231424', 'test_420', '2018-05-20 12:43:30', 'test_420', '2018-05-20 12:43:30', 'test_420');
INSERT INTO `t_news` VALUES ('182835623349202944', 'test_421', '2018-05-20 12:43:30', 'test_421', '2018-05-20 12:43:30', 'test_421');
INSERT INTO `t_news` VALUES ('182835623378563072', 'test_422', '2018-05-20 12:43:30', 'test_422', '2018-05-20 12:43:30', 'test_422');
INSERT INTO `t_news` VALUES ('182835623403728896', 'test_423', '2018-05-20 12:43:30', 'test_423', '2018-05-20 12:43:30', 'test_423');
INSERT INTO `t_news` VALUES ('182835623445671936', 'test_424', '2018-05-20 12:43:30', 'test_424', '2018-05-20 12:43:30', 'test_424');
INSERT INTO `t_news` VALUES ('182835623475032064', 'test_425', '2018-05-20 12:43:30', 'test_425', '2018-05-20 12:43:30', 'test_425');
INSERT INTO `t_news` VALUES ('182835623500197888', 'test_426', '2018-05-20 12:43:30', 'test_426', '2018-05-20 12:43:30', 'test_426');
INSERT INTO `t_news` VALUES ('182835623533752320', 'test_427', '2018-05-20 12:43:30', 'test_427', '2018-05-20 12:43:30', 'test_427');
INSERT INTO `t_news` VALUES ('182835623554723840', 'test_428', '2018-05-20 12:43:30', 'test_428', '2018-05-20 12:43:30', 'test_428');
INSERT INTO `t_news` VALUES ('182835623579889664', 'test_429', '2018-05-20 12:43:30', 'test_429', '2018-05-20 12:43:30', 'test_429');
INSERT INTO `t_news` VALUES ('182835623617638400', 'test_430', '2018-05-20 12:43:30', 'test_430', '2018-05-20 12:43:30', 'test_430');
INSERT INTO `t_news` VALUES ('182835623651192832', 'test_431', '2018-05-20 12:43:30', 'test_431', '2018-05-20 12:43:30', 'test_431');
INSERT INTO `t_news` VALUES ('182835623676358656', 'test_432', '2018-05-20 12:43:30', 'test_432', '2018-05-20 12:43:30', 'test_432');
INSERT INTO `t_news` VALUES ('182835623701524480', 'test_433', '2018-05-20 12:43:30', 'test_433', '2018-05-20 12:43:30', 'test_433');
INSERT INTO `t_news` VALUES ('182835623722496000', 'test_434', '2018-05-20 12:43:30', 'test_434', '2018-05-20 12:43:30', 'test_434');
INSERT INTO `t_news` VALUES ('182835623751856128', 'test_435', '2018-05-20 12:43:30', 'test_435', '2018-05-20 12:43:30', 'test_435');
INSERT INTO `t_news` VALUES ('182835623772827648', 'test_436', '2018-05-20 12:43:30', 'test_436', '2018-05-20 12:43:30', 'test_436');
INSERT INTO `t_news` VALUES ('182835623810576384', 'test_437', '2018-05-20 12:43:30', 'test_437', '2018-05-20 12:43:30', 'test_437');
INSERT INTO `t_news` VALUES ('182835623844130816', 'test_438', '2018-05-20 12:43:30', 'test_438', '2018-05-20 12:43:30', 'test_438');
INSERT INTO `t_news` VALUES ('182835623873490944', 'test_439', '2018-05-20 12:43:30', 'test_439', '2018-05-20 12:43:30', 'test_439');
INSERT INTO `t_news` VALUES ('182835623898656768', 'test_440', '2018-05-20 12:43:30', 'test_440', '2018-05-20 12:43:30', 'test_440');
INSERT INTO `t_news` VALUES ('182835623919628288', 'test_441', '2018-05-20 12:43:30', 'test_441', '2018-05-20 12:43:30', 'test_441');
INSERT INTO `t_news` VALUES ('182835623940599808', 'test_442', '2018-05-20 12:43:30', 'test_442', '2018-05-20 12:43:30', 'test_442');
INSERT INTO `t_news` VALUES ('182835623965765632', 'test_443', '2018-05-20 12:43:30', 'test_443', '2018-05-20 12:43:30', 'test_443');
INSERT INTO `t_news` VALUES ('182835623990931456', 'test_444', '2018-05-20 12:43:30', 'test_444', '2018-05-20 12:43:30', 'test_444');
INSERT INTO `t_news` VALUES ('182835624024485888', 'test_445', '2018-05-20 12:43:30', 'test_445', '2018-05-20 12:43:30', 'test_445');
INSERT INTO `t_news` VALUES ('182835624053846016', 'test_446', '2018-05-20 12:43:30', 'test_446', '2018-05-20 12:43:30', 'test_446');
INSERT INTO `t_news` VALUES ('182835624083206144', 'test_447', '2018-05-20 12:43:30', 'test_447', '2018-05-20 12:43:30', 'test_447');
INSERT INTO `t_news` VALUES ('182835624112566272', 'test_448', '2018-05-20 12:43:30', 'test_448', '2018-05-20 12:43:30', 'test_448');
INSERT INTO `t_news` VALUES ('182835624133537792', 'test_449', '2018-05-20 12:43:30', 'test_449', '2018-05-20 12:43:30', 'test_449');
INSERT INTO `t_news` VALUES ('182835624162897920', 'test_450', '2018-05-20 12:43:30', 'test_450', '2018-05-20 12:43:30', 'test_450');
INSERT INTO `t_news` VALUES ('182835624183869440', 'test_451', '2018-05-20 12:43:30', 'test_451', '2018-05-20 12:43:30', 'test_451');
INSERT INTO `t_news` VALUES ('182835624209035264', 'test_452', '2018-05-20 12:43:30', 'test_452', '2018-05-20 12:43:30', 'test_452');
INSERT INTO `t_news` VALUES ('182835624250978304', 'test_453', '2018-05-20 12:43:30', 'test_453', '2018-05-20 12:43:30', 'test_453');
INSERT INTO `t_news` VALUES ('182835624280338432', 'test_454', '2018-05-20 12:43:30', 'test_454', '2018-05-20 12:43:30', 'test_454');
INSERT INTO `t_news` VALUES ('182835624305504256', 'test_455', '2018-05-20 12:43:30', 'test_455', '2018-05-20 12:43:30', 'test_455');
INSERT INTO `t_news` VALUES ('182835624330670080', 'test_456', '2018-05-20 12:43:30', 'test_456', '2018-05-20 12:43:30', 'test_456');
INSERT INTO `t_news` VALUES ('182835624355835904', 'test_457', '2018-05-20 12:43:30', 'test_457', '2018-05-20 12:43:30', 'test_457');
INSERT INTO `t_news` VALUES ('182835624381001728', 'test_458', '2018-05-20 12:43:30', 'test_458', '2018-05-20 12:43:30', 'test_458');
INSERT INTO `t_news` VALUES ('182835624422944768', 'test_459', '2018-05-20 12:43:30', 'test_459', '2018-05-20 12:43:30', 'test_459');
INSERT INTO `t_news` VALUES ('182835624448110592', 'test_460', '2018-05-20 12:43:30', 'test_460', '2018-05-20 12:43:30', 'test_460');
INSERT INTO `t_news` VALUES ('182835624477470720', 'test_461', '2018-05-20 12:43:30', 'test_461', '2018-05-20 12:43:30', 'test_461');
INSERT INTO `t_news` VALUES ('182835624506830848', 'test_462', '2018-05-20 12:43:30', 'test_462', '2018-05-20 12:43:30', 'test_462');
INSERT INTO `t_news` VALUES ('182835624531996672', 'test_463', '2018-05-20 12:43:30', 'test_463', '2018-05-20 12:43:30', 'test_463');
INSERT INTO `t_news` VALUES ('182835624552968192', 'test_464', '2018-05-20 12:43:30', 'test_464', '2018-05-20 12:43:30', 'test_464');
INSERT INTO `t_news` VALUES ('182835624594911232', 'test_465', '2018-05-20 12:43:30', 'test_465', '2018-05-20 12:43:30', 'test_465');
INSERT INTO `t_news` VALUES ('182835624624271360', 'test_466', '2018-05-20 12:43:30', 'test_466', '2018-05-20 12:43:30', 'test_466');
INSERT INTO `t_news` VALUES ('182835624657825792', 'test_467', '2018-05-20 12:43:30', 'test_467', '2018-05-20 12:43:30', 'test_467');
INSERT INTO `t_news` VALUES ('182835624678797312', 'test_468', '2018-05-20 12:43:30', 'test_468', '2018-05-20 12:43:30', 'test_468');
INSERT INTO `t_news` VALUES ('182835624708157440', 'test_469', '2018-05-20 12:43:30', 'test_469', '2018-05-20 12:43:30', 'test_469');
INSERT INTO `t_news` VALUES ('182835624733323264', 'test_470', '2018-05-20 12:43:30', 'test_470', '2018-05-20 12:43:30', 'test_470');
INSERT INTO `t_news` VALUES ('182835624758489088', 'test_471', '2018-05-20 12:43:30', 'test_471', '2018-05-20 12:43:30', 'test_471');
INSERT INTO `t_news` VALUES ('182835624796237824', 'test_472', '2018-05-20 12:43:30', 'test_472', '2018-05-20 12:43:30', 'test_472');
INSERT INTO `t_news` VALUES ('182835624825597952', 'test_473', '2018-05-20 12:43:30', 'test_473', '2018-05-20 12:43:30', 'test_473');
INSERT INTO `t_news` VALUES ('182835624854958080', 'test_474', '2018-05-20 12:43:30', 'test_474', '2018-05-20 12:43:30', 'test_474');
INSERT INTO `t_news` VALUES ('182835624880123904', 'test_475', '2018-05-20 12:43:30', 'test_475', '2018-05-20 12:43:30', 'test_475');
INSERT INTO `t_news` VALUES ('182835624901095424', 'test_476', '2018-05-20 12:43:30', 'test_476', '2018-05-20 12:43:30', 'test_476');
INSERT INTO `t_news` VALUES ('182835624926261248', 'test_477', '2018-05-20 12:43:30', 'test_477', '2018-05-20 12:43:30', 'test_477');
INSERT INTO `t_news` VALUES ('182835624947232768', 'test_478', '2018-05-20 12:43:30', 'test_478', '2018-05-20 12:43:30', 'test_478');
INSERT INTO `t_news` VALUES ('182835624968204288', 'test_479', '2018-05-20 12:43:30', 'test_479', '2018-05-20 12:43:30', 'test_479');
INSERT INTO `t_news` VALUES ('182835624993370112', 'test_480', '2018-05-20 12:43:30', 'test_480', '2018-05-20 12:43:30', 'test_480');
INSERT INTO `t_news` VALUES ('182835625014341632', 'test_481', '2018-05-20 12:43:30', 'test_481', '2018-05-20 12:43:30', 'test_481');
INSERT INTO `t_news` VALUES ('182835625039507456', 'test_482', '2018-05-20 12:43:30', 'test_482', '2018-05-20 12:43:30', 'test_482');
INSERT INTO `t_news` VALUES ('182835625064673280', 'test_483', '2018-05-20 12:43:30', 'test_483', '2018-05-20 12:43:30', 'test_483');
INSERT INTO `t_news` VALUES ('182835625085644800', 'test_484', '2018-05-20 12:43:30', 'test_484', '2018-05-20 12:43:30', 'test_484');
INSERT INTO `t_news` VALUES ('182835625110810624', 'test_485', '2018-05-20 12:43:30', 'test_485', '2018-05-20 12:43:30', 'test_485');
INSERT INTO `t_news` VALUES ('182835625135976448', 'test_486', '2018-05-20 12:43:30', 'test_486', '2018-05-20 12:43:30', 'test_486');
INSERT INTO `t_news` VALUES ('182835625156947968', 'test_487', '2018-05-20 12:43:30', 'test_487', '2018-05-20 12:43:30', 'test_487');
INSERT INTO `t_news` VALUES ('182835625182113792', 'test_488', '2018-05-20 12:43:30', 'test_488', '2018-05-20 12:43:30', 'test_488');
INSERT INTO `t_news` VALUES ('182835625219862528', 'test_489', '2018-05-20 12:43:30', 'test_489', '2018-05-20 12:43:30', 'test_489');
INSERT INTO `t_news` VALUES ('182835625245028352', 'test_490', '2018-05-20 12:43:30', 'test_490', '2018-05-20 12:43:30', 'test_490');
INSERT INTO `t_news` VALUES ('182835625274388480', 'test_491', '2018-05-20 12:43:30', 'test_491', '2018-05-20 12:43:30', 'test_491');
INSERT INTO `t_news` VALUES ('182835625303748608', 'test_492', '2018-05-20 12:43:30', 'test_492', '2018-05-20 12:43:30', 'test_492');
INSERT INTO `t_news` VALUES ('182835625333108736', 'test_493', '2018-05-20 12:43:30', 'test_493', '2018-05-20 12:43:30', 'test_493');
INSERT INTO `t_news` VALUES ('182835625358274560', 'test_494', '2018-05-20 12:43:30', 'test_494', '2018-05-20 12:43:30', 'test_494');
INSERT INTO `t_news` VALUES ('182835625379246080', 'test_495', '2018-05-20 12:43:30', 'test_495', '2018-05-20 12:43:30', 'test_495');
INSERT INTO `t_news` VALUES ('182835625400217600', 'test_496', '2018-05-20 12:43:30', 'test_496', '2018-05-20 12:43:30', 'test_496');
INSERT INTO `t_news` VALUES ('182835625425383424', 'test_497', '2018-05-20 12:43:30', 'test_497', '2018-05-20 12:43:30', 'test_497');
INSERT INTO `t_news` VALUES ('182835625446354944', 'test_498', '2018-05-20 12:43:30', 'test_498', '2018-05-20 12:43:30', 'test_498');
INSERT INTO `t_news` VALUES ('182835625471520768', 'test_499', '2018-05-20 12:43:30', 'test_499', '2018-05-20 12:43:30', 'test_499');
INSERT INTO `t_news` VALUES ('182835625509269504', 'test_500', '2018-05-20 12:43:30', 'test_500', '2018-05-20 12:43:30', 'test_500');
INSERT INTO `t_news` VALUES ('182835625538629632', 'test_501', '2018-05-20 12:43:30', 'test_501', '2018-05-20 12:43:30', 'test_501');
INSERT INTO `t_news` VALUES ('182835625567989760', 'test_502', '2018-05-20 12:43:30', 'test_502', '2018-05-20 12:43:30', 'test_502');
INSERT INTO `t_news` VALUES ('182835625593155584', 'test_503', '2018-05-20 12:43:30', 'test_503', '2018-05-20 12:43:30', 'test_503');
INSERT INTO `t_news` VALUES ('182835625614127104', 'test_504', '2018-05-20 12:43:30', 'test_504', '2018-05-20 12:43:30', 'test_504');
INSERT INTO `t_news` VALUES ('182835625639292928', 'test_505', '2018-05-20 12:43:30', 'test_505', '2018-05-20 12:43:30', 'test_505');
INSERT INTO `t_news` VALUES ('182835625664458752', 'test_506', '2018-05-20 12:43:30', 'test_506', '2018-05-20 12:43:30', 'test_506');
INSERT INTO `t_news` VALUES ('182835625689624576', 'test_507', '2018-05-20 12:43:30', 'test_507', '2018-05-20 12:43:30', 'test_507');
INSERT INTO `t_news` VALUES ('182835625714790400', 'test_508', '2018-05-20 12:43:30', 'test_508', '2018-05-20 12:43:30', 'test_508');
INSERT INTO `t_news` VALUES ('182835625735761920', 'test_509', '2018-05-20 12:43:30', 'test_509', '2018-05-20 12:43:30', 'test_509');
INSERT INTO `t_news` VALUES ('182835625760927744', 'test_510', '2018-05-20 12:43:30', 'test_510', '2018-05-20 12:43:30', 'test_510');
INSERT INTO `t_news` VALUES ('182835625781899264', 'test_511', '2018-05-20 12:43:30', 'test_511', '2018-05-20 12:43:30', 'test_511');
INSERT INTO `t_news` VALUES ('182835625815453696', 'test_512', '2018-05-20 12:43:30', 'test_512', '2018-05-20 12:43:30', 'test_512');
INSERT INTO `t_news` VALUES ('182835625844813824', 'test_513', '2018-05-20 12:43:30', 'test_513', '2018-05-20 12:43:30', 'test_513');
INSERT INTO `t_news` VALUES ('182835625865785344', 'test_514', '2018-05-20 12:43:30', 'test_514', '2018-05-20 12:43:30', 'test_514');
INSERT INTO `t_news` VALUES ('182835625890951168', 'test_515', '2018-05-20 12:43:30', 'test_515', '2018-05-20 12:43:30', 'test_515');
INSERT INTO `t_news` VALUES ('182835625916116992', 'test_516', '2018-05-20 12:43:30', 'test_516', '2018-05-20 12:43:30', 'test_516');
INSERT INTO `t_news` VALUES ('182835625945477120', 'test_517', '2018-05-20 12:43:30', 'test_517', '2018-05-20 12:43:30', 'test_517');
INSERT INTO `t_news` VALUES ('182835625974837248', 'test_518', '2018-05-20 12:43:30', 'test_518', '2018-05-20 12:43:30', 'test_518');
INSERT INTO `t_news` VALUES ('182835626008391680', 'test_519', '2018-05-20 12:43:30', 'test_519', '2018-05-20 12:43:30', 'test_519');
INSERT INTO `t_news` VALUES ('182835626033557504', 'test_520', '2018-05-20 12:43:30', 'test_520', '2018-05-20 12:43:30', 'test_520');
INSERT INTO `t_news` VALUES ('182835626062917632', 'test_521', '2018-05-20 12:43:30', 'test_521', '2018-05-20 12:43:30', 'test_521');
INSERT INTO `t_news` VALUES ('182835626083889152', 'test_522', '2018-05-20 12:43:30', 'test_522', '2018-05-20 12:43:30', 'test_522');
INSERT INTO `t_news` VALUES ('182835626109054976', 'test_523', '2018-05-20 12:43:30', 'test_523', '2018-05-20 12:43:30', 'test_523');
INSERT INTO `t_news` VALUES ('182835626138415104', 'test_524', '2018-05-20 12:43:30', 'test_524', '2018-05-20 12:43:30', 'test_524');
INSERT INTO `t_news` VALUES ('182835626163580928', 'test_525', '2018-05-20 12:43:30', 'test_525', '2018-05-20 12:43:30', 'test_525');
INSERT INTO `t_news` VALUES ('182835626205523968', 'test_526', '2018-05-20 12:43:30', 'test_526', '2018-05-20 12:43:30', 'test_526');
INSERT INTO `t_news` VALUES ('182835626234884096', 'test_527', '2018-05-20 12:43:30', 'test_527', '2018-05-20 12:43:30', 'test_527');
INSERT INTO `t_news` VALUES ('182835626272632832', 'test_528', '2018-05-20 12:43:30', 'test_528', '2018-05-20 12:43:30', 'test_528');
INSERT INTO `t_news` VALUES ('182835626297798656', 'test_529', '2018-05-20 12:43:30', 'test_529', '2018-05-20 12:43:30', 'test_529');
INSERT INTO `t_news` VALUES ('182835626327158784', 'test_530', '2018-05-20 12:43:30', 'test_530', '2018-05-20 12:43:30', 'test_530');
INSERT INTO `t_news` VALUES ('182835626352324608', 'test_531', '2018-05-20 12:43:30', 'test_531', '2018-05-20 12:43:30', 'test_531');
INSERT INTO `t_news` VALUES ('182835626385879040', 'test_532', '2018-05-20 12:43:30', 'test_532', '2018-05-20 12:43:30', 'test_532');
INSERT INTO `t_news` VALUES ('182835626411044864', 'test_533', '2018-05-20 12:43:30', 'test_533', '2018-05-20 12:43:30', 'test_533');
INSERT INTO `t_news` VALUES ('182835626432016384', 'test_534', '2018-05-20 12:43:30', 'test_534', '2018-05-20 12:43:30', 'test_534');
INSERT INTO `t_news` VALUES ('182835626473959424', 'test_535', '2018-05-20 12:43:30', 'test_535', '2018-05-20 12:43:30', 'test_535');
INSERT INTO `t_news` VALUES ('182835626503319552', 'test_536', '2018-05-20 12:43:30', 'test_536', '2018-05-20 12:43:30', 'test_536');
INSERT INTO `t_news` VALUES ('182835626528485376', 'test_537', '2018-05-20 12:43:30', 'test_537', '2018-05-20 12:43:30', 'test_537');
INSERT INTO `t_news` VALUES ('182835626557845504', 'test_538', '2018-05-20 12:43:30', 'test_538', '2018-05-20 12:43:30', 'test_538');
INSERT INTO `t_news` VALUES ('182835626583011328', 'test_539', '2018-05-20 12:43:30', 'test_539', '2018-05-20 12:43:30', 'test_539');
INSERT INTO `t_news` VALUES ('182835626612371456', 'test_540', '2018-05-20 12:43:30', 'test_540', '2018-05-20 12:43:30', 'test_540');
INSERT INTO `t_news` VALUES ('182835626633342976', 'test_541', '2018-05-20 12:43:30', 'test_541', '2018-05-20 12:43:30', 'test_541');
INSERT INTO `t_news` VALUES ('182835626658508800', 'test_542', '2018-05-20 12:43:30', 'test_542', '2018-05-20 12:43:30', 'test_542');
INSERT INTO `t_news` VALUES ('182835626687868928', 'test_543', '2018-05-20 12:43:30', 'test_543', '2018-05-20 12:43:30', 'test_543');
INSERT INTO `t_news` VALUES ('182835626713034752', 'test_544', '2018-05-20 12:43:30', 'test_544', '2018-05-20 12:43:30', 'test_544');
INSERT INTO `t_news` VALUES ('182835626738200576', 'test_545', '2018-05-20 12:43:30', 'test_545', '2018-05-20 12:43:30', 'test_545');
INSERT INTO `t_news` VALUES ('182835626775949312', 'test_546', '2018-05-20 12:43:30', 'test_546', '2018-05-20 12:43:30', 'test_546');
INSERT INTO `t_news` VALUES ('182835626813698048', 'test_547', '2018-05-20 12:43:30', 'test_547', '2018-05-20 12:43:30', 'test_547');
INSERT INTO `t_news` VALUES ('182835626843058176', 'test_548', '2018-05-20 12:43:30', 'test_548', '2018-05-20 12:43:30', 'test_548');
INSERT INTO `t_news` VALUES ('182835626876612608', 'test_549', '2018-05-20 12:43:30', 'test_549', '2018-05-20 12:43:30', 'test_549');
INSERT INTO `t_news` VALUES ('182835626910167040', 'test_550', '2018-05-20 12:43:30', 'test_550', '2018-05-20 12:43:30', 'test_550');
INSERT INTO `t_news` VALUES ('182835626943721472', 'test_551', '2018-05-20 12:43:30', 'test_551', '2018-05-20 12:43:30', 'test_551');
INSERT INTO `t_news` VALUES ('182835626968887296', 'test_552', '2018-05-20 12:43:30', 'test_552', '2018-05-20 12:43:30', 'test_552');
INSERT INTO `t_news` VALUES ('182835627002441728', 'test_553', '2018-05-20 12:43:30', 'test_553', '2018-05-20 12:43:30', 'test_553');
INSERT INTO `t_news` VALUES ('182835627027607552', 'test_554', '2018-05-20 12:43:30', 'test_554', '2018-05-20 12:43:30', 'test_554');
INSERT INTO `t_news` VALUES ('182835627052773376', 'test_555', '2018-05-20 12:43:30', 'test_555', '2018-05-20 12:43:30', 'test_555');
INSERT INTO `t_news` VALUES ('182835627077939200', 'test_556', '2018-05-20 12:43:30', 'test_556', '2018-05-20 12:43:30', 'test_556');
INSERT INTO `t_news` VALUES ('182835627107299328', 'test_557', '2018-05-20 12:43:30', 'test_557', '2018-05-20 12:43:30', 'test_557');
INSERT INTO `t_news` VALUES ('182835627128270848', 'test_558', '2018-05-20 12:43:30', 'test_558', '2018-05-20 12:43:30', 'test_558');
INSERT INTO `t_news` VALUES ('182835627170213888', 'test_559', '2018-05-20 12:43:30', 'test_559', '2018-05-20 12:43:30', 'test_559');
INSERT INTO `t_news` VALUES ('182835627199574016', 'test_560', '2018-05-20 12:43:30', 'test_560', '2018-05-20 12:43:30', 'test_560');
INSERT INTO `t_news` VALUES ('182835627233128448', 'test_561', '2018-05-20 12:43:30', 'test_561', '2018-05-20 12:43:30', 'test_561');
INSERT INTO `t_news` VALUES ('182835627258294272', 'test_562', '2018-05-20 12:43:30', 'test_562', '2018-05-20 12:43:30', 'test_562');
INSERT INTO `t_news` VALUES ('182835627279265792', 'test_563', '2018-05-20 12:43:30', 'test_563', '2018-05-20 12:43:30', 'test_563');
INSERT INTO `t_news` VALUES ('182835627308625920', 'test_564', '2018-05-20 12:43:30', 'test_564', '2018-05-20 12:43:30', 'test_564');
INSERT INTO `t_news` VALUES ('182835627329597440', 'test_565', '2018-05-20 12:43:30', 'test_565', '2018-05-20 12:43:30', 'test_565');
INSERT INTO `t_news` VALUES ('182835627363151872', 'test_566', '2018-05-20 12:43:30', 'test_566', '2018-05-20 12:43:30', 'test_566');
INSERT INTO `t_news` VALUES ('182835627400900608', 'test_567', '2018-05-20 12:43:30', 'test_567', '2018-05-20 12:43:30', 'test_567');
INSERT INTO `t_news` VALUES ('182835627430260736', 'test_568', '2018-05-20 12:43:31', 'test_568', '2018-05-20 12:43:31', 'test_568');
INSERT INTO `t_news` VALUES ('182835627459620864', 'test_569', '2018-05-20 12:43:31', 'test_569', '2018-05-20 12:43:31', 'test_569');
INSERT INTO `t_news` VALUES ('182835627484786688', 'test_570', '2018-05-20 12:43:31', 'test_570', '2018-05-20 12:43:31', 'test_570');
INSERT INTO `t_news` VALUES ('182835627505758208', 'test_571', '2018-05-20 12:43:31', 'test_571', '2018-05-20 12:43:31', 'test_571');
INSERT INTO `t_news` VALUES ('182835627530924032', 'test_572', '2018-05-20 12:43:31', 'test_572', '2018-05-20 12:43:31', 'test_572');
INSERT INTO `t_news` VALUES ('182835627547701248', 'test_573', '2018-05-20 12:43:31', 'test_573', '2018-05-20 12:43:31', 'test_573');
INSERT INTO `t_news` VALUES ('182835627568672768', 'test_574', '2018-05-20 12:43:31', 'test_574', '2018-05-20 12:43:31', 'test_574');
INSERT INTO `t_news` VALUES ('182835627589644288', 'test_575', '2018-05-20 12:43:31', 'test_575', '2018-05-20 12:43:31', 'test_575');
INSERT INTO `t_news` VALUES ('182835627610615808', 'test_576', '2018-05-20 12:43:31', 'test_576', '2018-05-20 12:43:31', 'test_576');
INSERT INTO `t_news` VALUES ('182835627635781632', 'test_577', '2018-05-20 12:43:31', 'test_577', '2018-05-20 12:43:31', 'test_577');
INSERT INTO `t_news` VALUES ('182835627669336064', 'test_578', '2018-05-20 12:43:31', 'test_578', '2018-05-20 12:43:31', 'test_578');
INSERT INTO `t_news` VALUES ('182835627694501888', 'test_579', '2018-05-20 12:43:31', 'test_579', '2018-05-20 12:43:31', 'test_579');
INSERT INTO `t_news` VALUES ('182835627723862016', 'test_580', '2018-05-20 12:43:31', 'test_580', '2018-05-20 12:43:31', 'test_580');
INSERT INTO `t_news` VALUES ('182835627744833536', 'test_581', '2018-05-20 12:43:31', 'test_581', '2018-05-20 12:43:31', 'test_581');
INSERT INTO `t_news` VALUES ('182835627761610752', 'test_582', '2018-05-20 12:43:31', 'test_582', '2018-05-20 12:43:31', 'test_582');
INSERT INTO `t_news` VALUES ('182835627782582272', 'test_583', '2018-05-20 12:43:31', 'test_583', '2018-05-20 12:43:31', 'test_583');
INSERT INTO `t_news` VALUES ('182835627799359488', 'test_584', '2018-05-20 12:43:31', 'test_584', '2018-05-20 12:43:31', 'test_584');
INSERT INTO `t_news` VALUES ('182835627828719616', 'test_585', '2018-05-20 12:43:31', 'test_585', '2018-05-20 12:43:31', 'test_585');
INSERT INTO `t_news` VALUES ('182835627849691136', 'test_586', '2018-05-20 12:43:31', 'test_586', '2018-05-20 12:43:31', 'test_586');
INSERT INTO `t_news` VALUES ('182835627870662656', 'test_587', '2018-05-20 12:43:31', 'test_587', '2018-05-20 12:43:31', 'test_587');
INSERT INTO `t_news` VALUES ('182835627904217088', 'test_588', '2018-05-20 12:43:31', 'test_588', '2018-05-20 12:43:31', 'test_588');
INSERT INTO `t_news` VALUES ('182835627933577216', 'test_589', '2018-05-20 12:43:31', 'test_589', '2018-05-20 12:43:31', 'test_589');
INSERT INTO `t_news` VALUES ('182835627967131648', 'test_590', '2018-05-20 12:43:31', 'test_590', '2018-05-20 12:43:31', 'test_590');
INSERT INTO `t_news` VALUES ('182835627988103168', 'test_591', '2018-05-20 12:43:31', 'test_591', '2018-05-20 12:43:31', 'test_591');
INSERT INTO `t_news` VALUES ('182835628013268992', 'test_592', '2018-05-20 12:43:31', 'test_592', '2018-05-20 12:43:31', 'test_592');
INSERT INTO `t_news` VALUES ('182835628034240512', 'test_593', '2018-05-20 12:43:31', 'test_593', '2018-05-20 12:43:31', 'test_593');
INSERT INTO `t_news` VALUES ('182835628055212032', 'test_594', '2018-05-20 12:43:31', 'test_594', '2018-05-20 12:43:31', 'test_594');
INSERT INTO `t_news` VALUES ('182835628080377856', 'test_595', '2018-05-20 12:43:31', 'test_595', '2018-05-20 12:43:31', 'test_595');
INSERT INTO `t_news` VALUES ('182835628097155072', 'test_596', '2018-05-20 12:43:31', 'test_596', '2018-05-20 12:43:31', 'test_596');
INSERT INTO `t_news` VALUES ('182835628118126592', 'test_597', '2018-05-20 12:43:31', 'test_597', '2018-05-20 12:43:31', 'test_597');
INSERT INTO `t_news` VALUES ('182835628155875328', 'test_598', '2018-05-20 12:43:31', 'test_598', '2018-05-20 12:43:31', 'test_598');
INSERT INTO `t_news` VALUES ('182835628181041152', 'test_599', '2018-05-20 12:43:31', 'test_599', '2018-05-20 12:43:31', 'test_599');
INSERT INTO `t_news` VALUES ('182835628202012672', 'test_600', '2018-05-20 12:43:31', 'test_600', '2018-05-20 12:43:31', 'test_600');
INSERT INTO `t_news` VALUES ('182835628222984192', 'test_601', '2018-05-20 12:43:31', 'test_601', '2018-05-20 12:43:31', 'test_601');
INSERT INTO `t_news` VALUES ('182835628243955712', 'test_602', '2018-05-20 12:43:31', 'test_602', '2018-05-20 12:43:31', 'test_602');
INSERT INTO `t_news` VALUES ('182835628264927232', 'test_603', '2018-05-20 12:43:31', 'test_603', '2018-05-20 12:43:31', 'test_603');
INSERT INTO `t_news` VALUES ('182835628290093056', 'test_604', '2018-05-20 12:43:31', 'test_604', '2018-05-20 12:43:31', 'test_604');
INSERT INTO `t_news` VALUES ('182835628311064576', 'test_605', '2018-05-20 12:43:31', 'test_605', '2018-05-20 12:43:31', 'test_605');
INSERT INTO `t_news` VALUES ('182835628327841792', 'test_606', '2018-05-20 12:43:31', 'test_606', '2018-05-20 12:43:31', 'test_606');
INSERT INTO `t_news` VALUES ('182835628365590528', 'test_607', '2018-05-20 12:43:31', 'test_607', '2018-05-20 12:43:31', 'test_607');
INSERT INTO `t_news` VALUES ('182835628394950656', 'test_608', '2018-05-20 12:43:31', 'test_608', '2018-05-20 12:43:31', 'test_608');
INSERT INTO `t_news` VALUES ('182835628420116480', 'test_609', '2018-05-20 12:43:31', 'test_609', '2018-05-20 12:43:31', 'test_609');
INSERT INTO `t_news` VALUES ('182835628445282304', 'test_610', '2018-05-20 12:43:31', 'test_610', '2018-05-20 12:43:31', 'test_610');
INSERT INTO `t_news` VALUES ('182835628470448128', 'test_611', '2018-05-20 12:43:31', 'test_611', '2018-05-20 12:43:31', 'test_611');
INSERT INTO `t_news` VALUES ('182835628491419648', 'test_612', '2018-05-20 12:43:31', 'test_612', '2018-05-20 12:43:31', 'test_612');
INSERT INTO `t_news` VALUES ('182835628508196864', 'test_613', '2018-05-20 12:43:31', 'test_613', '2018-05-20 12:43:31', 'test_613');
INSERT INTO `t_news` VALUES ('182835628533362688', 'test_614', '2018-05-20 12:43:31', 'test_614', '2018-05-20 12:43:31', 'test_614');
INSERT INTO `t_news` VALUES ('182835628566917120', 'test_615', '2018-05-20 12:43:31', 'test_615', '2018-05-20 12:43:31', 'test_615');
INSERT INTO `t_news` VALUES ('182835628592082944', 'test_616', '2018-05-20 12:43:31', 'test_616', '2018-05-20 12:43:31', 'test_616');
INSERT INTO `t_news` VALUES ('182835628621443072', 'test_617', '2018-05-20 12:43:31', 'test_617', '2018-05-20 12:43:31', 'test_617');
INSERT INTO `t_news` VALUES ('182835628646608896', 'test_618', '2018-05-20 12:43:31', 'test_618', '2018-05-20 12:43:31', 'test_618');
INSERT INTO `t_news` VALUES ('182835628671774720', 'test_619', '2018-05-20 12:43:31', 'test_619', '2018-05-20 12:43:31', 'test_619');
INSERT INTO `t_news` VALUES ('182835628696940544', 'test_620', '2018-05-20 12:43:31', 'test_620', '2018-05-20 12:43:31', 'test_620');
INSERT INTO `t_news` VALUES ('182835628717912064', 'test_621', '2018-05-20 12:43:31', 'test_621', '2018-05-20 12:43:31', 'test_621');
INSERT INTO `t_news` VALUES ('182835628738883584', 'test_622', '2018-05-20 12:43:31', 'test_622', '2018-05-20 12:43:31', 'test_622');
INSERT INTO `t_news` VALUES ('182835628755660800', 'test_623', '2018-05-20 12:43:31', 'test_623', '2018-05-20 12:43:31', 'test_623');
INSERT INTO `t_news` VALUES ('182835628780826624', 'test_624', '2018-05-20 12:43:31', 'test_624', '2018-05-20 12:43:31', 'test_624');
INSERT INTO `t_news` VALUES ('182835628801798144', 'test_625', '2018-05-20 12:43:31', 'test_625', '2018-05-20 12:43:31', 'test_625');
INSERT INTO `t_news` VALUES ('182835628831158272', 'test_626', '2018-05-20 12:43:31', 'test_626', '2018-05-20 12:43:31', 'test_626');
INSERT INTO `t_news` VALUES ('182835628864712704', 'test_627', '2018-05-20 12:43:31', 'test_627', '2018-05-20 12:43:31', 'test_627');
INSERT INTO `t_news` VALUES ('182835628889878528', 'test_628', '2018-05-20 12:43:31', 'test_628', '2018-05-20 12:43:31', 'test_628');
INSERT INTO `t_news` VALUES ('182835628915044352', 'test_629', '2018-05-20 12:43:31', 'test_629', '2018-05-20 12:43:31', 'test_629');
INSERT INTO `t_news` VALUES ('182835628940210176', 'test_630', '2018-05-20 12:43:31', 'test_630', '2018-05-20 12:43:31', 'test_630');
INSERT INTO `t_news` VALUES ('182835628961181696', 'test_631', '2018-05-20 12:43:31', 'test_631', '2018-05-20 12:43:31', 'test_631');
INSERT INTO `t_news` VALUES ('182835628982153216', 'test_632', '2018-05-20 12:43:31', 'test_632', '2018-05-20 12:43:31', 'test_632');
INSERT INTO `t_news` VALUES ('182835629003124736', 'test_633', '2018-05-20 12:43:31', 'test_633', '2018-05-20 12:43:31', 'test_633');
INSERT INTO `t_news` VALUES ('182835629024096256', 'test_634', '2018-05-20 12:43:31', 'test_634', '2018-05-20 12:43:31', 'test_634');
INSERT INTO `t_news` VALUES ('182835629045067776', 'test_635', '2018-05-20 12:43:31', 'test_635', '2018-05-20 12:43:31', 'test_635');
INSERT INTO `t_news` VALUES ('182835629061844992', 'test_636', '2018-05-20 12:43:31', 'test_636', '2018-05-20 12:43:31', 'test_636');
INSERT INTO `t_news` VALUES ('182835629082816512', 'test_637', '2018-05-20 12:43:31', 'test_637', '2018-05-20 12:43:31', 'test_637');
INSERT INTO `t_news` VALUES ('182835629103788032', 'test_638', '2018-05-20 12:43:31', 'test_638', '2018-05-20 12:43:31', 'test_638');
INSERT INTO `t_news` VALUES ('182835629124759552', 'test_639', '2018-05-20 12:43:31', 'test_639', '2018-05-20 12:43:31', 'test_639');
INSERT INTO `t_news` VALUES ('182835629154119680', 'test_640', '2018-05-20 12:43:31', 'test_640', '2018-05-20 12:43:31', 'test_640');
INSERT INTO `t_news` VALUES ('182835629183479808', 'test_641', '2018-05-20 12:43:31', 'test_641', '2018-05-20 12:43:31', 'test_641');
INSERT INTO `t_news` VALUES ('182835629217034240', 'test_642', '2018-05-20 12:43:31', 'test_642', '2018-05-20 12:43:31', 'test_642');
INSERT INTO `t_news` VALUES ('182835629238005760', 'test_643', '2018-05-20 12:43:31', 'test_643', '2018-05-20 12:43:31', 'test_643');
INSERT INTO `t_news` VALUES ('182835629271560192', 'test_644', '2018-05-20 12:43:31', 'test_644', '2018-05-20 12:43:31', 'test_644');
INSERT INTO `t_news` VALUES ('182835629292531712', 'test_645', '2018-05-20 12:43:31', 'test_645', '2018-05-20 12:43:31', 'test_645');
INSERT INTO `t_news` VALUES ('182835629321891840', 'test_646', '2018-05-20 12:43:31', 'test_646', '2018-05-20 12:43:31', 'test_646');
INSERT INTO `t_news` VALUES ('182835629347057664', 'test_647', '2018-05-20 12:43:31', 'test_647', '2018-05-20 12:43:31', 'test_647');
INSERT INTO `t_news` VALUES ('182835629368029184', 'test_648', '2018-05-20 12:43:31', 'test_648', '2018-05-20 12:43:31', 'test_648');
INSERT INTO `t_news` VALUES ('182835629389000704', 'test_649', '2018-05-20 12:43:31', 'test_649', '2018-05-20 12:43:31', 'test_649');
INSERT INTO `t_news` VALUES ('182835629409972224', 'test_650', '2018-05-20 12:43:31', 'test_650', '2018-05-20 12:43:31', 'test_650');
INSERT INTO `t_news` VALUES ('182835629430943744', 'test_651', '2018-05-20 12:43:31', 'test_651', '2018-05-20 12:43:31', 'test_651');
INSERT INTO `t_news` VALUES ('182835629464498176', 'test_652', '2018-05-20 12:43:31', 'test_652', '2018-05-20 12:43:31', 'test_652');
INSERT INTO `t_news` VALUES ('182835629493858304', 'test_653', '2018-05-20 12:43:31', 'test_653', '2018-05-20 12:43:31', 'test_653');
INSERT INTO `t_news` VALUES ('182835629523218432', 'test_654', '2018-05-20 12:43:31', 'test_654', '2018-05-20 12:43:31', 'test_654');
INSERT INTO `t_news` VALUES ('182835629548384256', 'test_655', '2018-05-20 12:43:31', 'test_655', '2018-05-20 12:43:31', 'test_655');
INSERT INTO `t_news` VALUES ('182835629573550080', 'test_656', '2018-05-20 12:43:31', 'test_656', '2018-05-20 12:43:31', 'test_656');
INSERT INTO `t_news` VALUES ('182835629594521600', 'test_657', '2018-05-20 12:43:31', 'test_657', '2018-05-20 12:43:31', 'test_657');
INSERT INTO `t_news` VALUES ('182835629623881728', 'test_658', '2018-05-20 12:43:31', 'test_658', '2018-05-20 12:43:31', 'test_658');
INSERT INTO `t_news` VALUES ('182835629640658944', 'test_659', '2018-05-20 12:43:31', 'test_659', '2018-05-20 12:43:31', 'test_659');
INSERT INTO `t_news` VALUES ('182835629661630464', 'test_660', '2018-05-20 12:43:31', 'test_660', '2018-05-20 12:43:31', 'test_660');
INSERT INTO `t_news` VALUES ('182835629686796288', 'test_661', '2018-05-20 12:43:31', 'test_661', '2018-05-20 12:43:31', 'test_661');
INSERT INTO `t_news` VALUES ('182835629707767808', 'test_662', '2018-05-20 12:43:31', 'test_662', '2018-05-20 12:43:31', 'test_662');
INSERT INTO `t_news` VALUES ('182835629728739328', 'test_663', '2018-05-20 12:43:31', 'test_663', '2018-05-20 12:43:31', 'test_663');
INSERT INTO `t_news` VALUES ('182835629766488064', 'test_664', '2018-05-20 12:43:31', 'test_664', '2018-05-20 12:43:31', 'test_664');
INSERT INTO `t_news` VALUES ('182835629787459584', 'test_665', '2018-05-20 12:43:31', 'test_665', '2018-05-20 12:43:31', 'test_665');
INSERT INTO `t_news` VALUES ('182835629812625408', 'test_666', '2018-05-20 12:43:31', 'test_666', '2018-05-20 12:43:31', 'test_666');
INSERT INTO `t_news` VALUES ('182835629837791232', 'test_667', '2018-05-20 12:43:31', 'test_667', '2018-05-20 12:43:31', 'test_667');
INSERT INTO `t_news` VALUES ('182835629858762752', 'test_668', '2018-05-20 12:43:31', 'test_668', '2018-05-20 12:43:31', 'test_668');
INSERT INTO `t_news` VALUES ('182835629875539968', 'test_669', '2018-05-20 12:43:31', 'test_669', '2018-05-20 12:43:31', 'test_669');
INSERT INTO `t_news` VALUES ('182835629896511488', 'test_670', '2018-05-20 12:43:31', 'test_670', '2018-05-20 12:43:31', 'test_670');
INSERT INTO `t_news` VALUES ('182835629917483008', 'test_671', '2018-05-20 12:43:31', 'test_671', '2018-05-20 12:43:31', 'test_671');
INSERT INTO `t_news` VALUES ('182835629938454528', 'test_672', '2018-05-20 12:43:31', 'test_672', '2018-05-20 12:43:31', 'test_672');
INSERT INTO `t_news` VALUES ('182835629976203264', 'test_673', '2018-05-20 12:43:31', 'test_673', '2018-05-20 12:43:31', 'test_673');
INSERT INTO `t_news` VALUES ('182835630001369088', 'test_674', '2018-05-20 12:43:31', 'test_674', '2018-05-20 12:43:31', 'test_674');
INSERT INTO `t_news` VALUES ('182835630022340608', 'test_675', '2018-05-20 12:43:31', 'test_675', '2018-05-20 12:43:31', 'test_675');
INSERT INTO `t_news` VALUES ('182835630047506432', 'test_676', '2018-05-20 12:43:31', 'test_676', '2018-05-20 12:43:31', 'test_676');
INSERT INTO `t_news` VALUES ('182835630064283648', 'test_677', '2018-05-20 12:43:31', 'test_677', '2018-05-20 12:43:31', 'test_677');
INSERT INTO `t_news` VALUES ('182835630089449472', 'test_678', '2018-05-20 12:43:31', 'test_678', '2018-05-20 12:43:31', 'test_678');
INSERT INTO `t_news` VALUES ('182835630114615296', 'test_679', '2018-05-20 12:43:31', 'test_679', '2018-05-20 12:43:31', 'test_679');
INSERT INTO `t_news` VALUES ('182835630135586816', 'test_680', '2018-05-20 12:43:31', 'test_680', '2018-05-20 12:43:31', 'test_680');
INSERT INTO `t_news` VALUES ('182835630173335552', 'test_681', '2018-05-20 12:43:31', 'test_681', '2018-05-20 12:43:31', 'test_681');
INSERT INTO `t_news` VALUES ('182835630194307072', 'test_682', '2018-05-20 12:43:31', 'test_682', '2018-05-20 12:43:31', 'test_682');
INSERT INTO `t_news` VALUES ('182835630223667200', 'test_683', '2018-05-20 12:43:31', 'test_683', '2018-05-20 12:43:31', 'test_683');
INSERT INTO `t_news` VALUES ('182835630248833024', 'test_684', '2018-05-20 12:43:31', 'test_684', '2018-05-20 12:43:31', 'test_684');
INSERT INTO `t_news` VALUES ('182835630269804544', 'test_685', '2018-05-20 12:43:31', 'test_685', '2018-05-20 12:43:31', 'test_685');
INSERT INTO `t_news` VALUES ('182835630294970368', 'test_686', '2018-05-20 12:43:31', 'test_686', '2018-05-20 12:43:31', 'test_686');
INSERT INTO `t_news` VALUES ('182835630328524800', 'test_687', '2018-05-20 12:43:31', 'test_687', '2018-05-20 12:43:31', 'test_687');
INSERT INTO `t_news` VALUES ('182835630353690624', 'test_688', '2018-05-20 12:43:31', 'test_688', '2018-05-20 12:43:31', 'test_688');
INSERT INTO `t_news` VALUES ('182835630383050752', 'test_689', '2018-05-20 12:43:31', 'test_689', '2018-05-20 12:43:31', 'test_689');
INSERT INTO `t_news` VALUES ('182835630404022272', 'test_690', '2018-05-20 12:43:31', 'test_690', '2018-05-20 12:43:31', 'test_690');
INSERT INTO `t_news` VALUES ('182835630424993792', 'test_691', '2018-05-20 12:43:31', 'test_691', '2018-05-20 12:43:31', 'test_691');
INSERT INTO `t_news` VALUES ('182835630445965312', 'test_692', '2018-05-20 12:43:31', 'test_692', '2018-05-20 12:43:31', 'test_692');
INSERT INTO `t_news` VALUES ('182835630466936832', 'test_693', '2018-05-20 12:43:31', 'test_693', '2018-05-20 12:43:31', 'test_693');
INSERT INTO `t_news` VALUES ('182835630487908352', 'test_694', '2018-05-20 12:43:31', 'test_694', '2018-05-20 12:43:31', 'test_694');
INSERT INTO `t_news` VALUES ('182835630525657088', 'test_695', '2018-05-20 12:43:31', 'test_695', '2018-05-20 12:43:31', 'test_695');
INSERT INTO `t_news` VALUES ('182835630550822912', 'test_696', '2018-05-20 12:43:31', 'test_696', '2018-05-20 12:43:31', 'test_696');
INSERT INTO `t_news` VALUES ('182835630580183040', 'test_697', '2018-05-20 12:43:31', 'test_697', '2018-05-20 12:43:31', 'test_697');
INSERT INTO `t_news` VALUES ('182835630605348864', 'test_698', '2018-05-20 12:43:31', 'test_698', '2018-05-20 12:43:31', 'test_698');
INSERT INTO `t_news` VALUES ('182835630626320384', 'test_699', '2018-05-20 12:43:31', 'test_699', '2018-05-20 12:43:31', 'test_699');
INSERT INTO `t_news` VALUES ('182835630643097600', 'test_700', '2018-05-20 12:43:31', 'test_700', '2018-05-20 12:43:31', 'test_700');
INSERT INTO `t_news` VALUES ('182835630668263424', 'test_701', '2018-05-20 12:43:31', 'test_701', '2018-05-20 12:43:31', 'test_701');
INSERT INTO `t_news` VALUES ('182835630689234944', 'test_702', '2018-05-20 12:43:31', 'test_702', '2018-05-20 12:43:31', 'test_702');
INSERT INTO `t_news` VALUES ('182835630714400768', 'test_703', '2018-05-20 12:43:31', 'test_703', '2018-05-20 12:43:31', 'test_703');
INSERT INTO `t_news` VALUES ('182835630747955200', 'test_704', '2018-05-20 12:43:31', 'test_704', '2018-05-20 12:43:31', 'test_704');
INSERT INTO `t_news` VALUES ('182835630773121024', 'test_705', '2018-05-20 12:43:31', 'test_705', '2018-05-20 12:43:31', 'test_705');
INSERT INTO `t_news` VALUES ('182835630802481152', 'test_706', '2018-05-20 12:43:31', 'test_706', '2018-05-20 12:43:31', 'test_706');
INSERT INTO `t_news` VALUES ('182835630827646976', 'test_707', '2018-05-20 12:43:31', 'test_707', '2018-05-20 12:43:31', 'test_707');
INSERT INTO `t_news` VALUES ('182835630848618496', 'test_708', '2018-05-20 12:43:31', 'test_708', '2018-05-20 12:43:31', 'test_708');
INSERT INTO `t_news` VALUES ('182835630882172928', 'test_709', '2018-05-20 12:43:31', 'test_709', '2018-05-20 12:43:31', 'test_709');
INSERT INTO `t_news` VALUES ('182835630907338752', 'test_710', '2018-05-20 12:43:31', 'test_710', '2018-05-20 12:43:31', 'test_710');
INSERT INTO `t_news` VALUES ('182835630928310272', 'test_711', '2018-05-20 12:43:31', 'test_711', '2018-05-20 12:43:31', 'test_711');
INSERT INTO `t_news` VALUES ('182835630949281792', 'test_712', '2018-05-20 12:43:31', 'test_712', '2018-05-20 12:43:31', 'test_712');
INSERT INTO `t_news` VALUES ('182835630974447616', 'test_713', '2018-05-20 12:43:31', 'test_713', '2018-05-20 12:43:31', 'test_713');
INSERT INTO `t_news` VALUES ('182835631012196352', 'test_714', '2018-05-20 12:43:31', 'test_714', '2018-05-20 12:43:31', 'test_714');
INSERT INTO `t_news` VALUES ('182835631037362176', 'test_715', '2018-05-20 12:43:31', 'test_715', '2018-05-20 12:43:31', 'test_715');
INSERT INTO `t_news` VALUES ('182835631066722304', 'test_716', '2018-05-20 12:43:31', 'test_716', '2018-05-20 12:43:31', 'test_716');
INSERT INTO `t_news` VALUES ('182835631091888128', 'test_717', '2018-05-20 12:43:31', 'test_717', '2018-05-20 12:43:31', 'test_717');
INSERT INTO `t_news` VALUES ('182835631112859648', 'test_718', '2018-05-20 12:43:31', 'test_718', '2018-05-20 12:43:31', 'test_718');
INSERT INTO `t_news` VALUES ('182835631138025472', 'test_719', '2018-05-20 12:43:31', 'test_719', '2018-05-20 12:43:31', 'test_719');
INSERT INTO `t_news` VALUES ('182835631158996992', 'test_720', '2018-05-20 12:43:31', 'test_720', '2018-05-20 12:43:31', 'test_720');
INSERT INTO `t_news` VALUES ('182835631188357120', 'test_721', '2018-05-20 12:43:31', 'test_721', '2018-05-20 12:43:31', 'test_721');
INSERT INTO `t_news` VALUES ('182835631209328640', 'test_722', '2018-05-20 12:43:31', 'test_722', '2018-05-20 12:43:31', 'test_722');
INSERT INTO `t_news` VALUES ('182835631230300160', 'test_723', '2018-05-20 12:43:31', 'test_723', '2018-05-20 12:43:31', 'test_723');
INSERT INTO `t_news` VALUES ('182835631251271680', 'test_724', '2018-05-20 12:43:31', 'test_724', '2018-05-20 12:43:31', 'test_724');
INSERT INTO `t_news` VALUES ('182835631289020416', 'test_725', '2018-05-20 12:43:31', 'test_725', '2018-05-20 12:43:31', 'test_725');
INSERT INTO `t_news` VALUES ('182835631314186240', 'test_726', '2018-05-20 12:43:31', 'test_726', '2018-05-20 12:43:31', 'test_726');
INSERT INTO `t_news` VALUES ('182835631339352064', 'test_727', '2018-05-20 12:43:31', 'test_727', '2018-05-20 12:43:31', 'test_727');
INSERT INTO `t_news` VALUES ('182835631364517888', 'test_728', '2018-05-20 12:43:31', 'test_728', '2018-05-20 12:43:31', 'test_728');
INSERT INTO `t_news` VALUES ('182835631385489408', 'test_729', '2018-05-20 12:43:31', 'test_729', '2018-05-20 12:43:31', 'test_729');
INSERT INTO `t_news` VALUES ('182835631406460928', 'test_730', '2018-05-20 12:43:31', 'test_730', '2018-05-20 12:43:31', 'test_730');
INSERT INTO `t_news` VALUES ('182835631427432448', 'test_731', '2018-05-20 12:43:31', 'test_731', '2018-05-20 12:43:31', 'test_731');
INSERT INTO `t_news` VALUES ('182835631448403968', 'test_732', '2018-05-20 12:43:31', 'test_732', '2018-05-20 12:43:31', 'test_732');
INSERT INTO `t_news` VALUES ('182835631469375488', 'test_733', '2018-05-20 12:43:31', 'test_733', '2018-05-20 12:43:31', 'test_733');
INSERT INTO `t_news` VALUES ('182835631502929920', 'test_734', '2018-05-20 12:43:31', 'test_734', '2018-05-20 12:43:31', 'test_734');
INSERT INTO `t_news` VALUES ('182835631528095744', 'test_735', '2018-05-20 12:43:31', 'test_735', '2018-05-20 12:43:31', 'test_735');
INSERT INTO `t_news` VALUES ('182835631557455872', 'test_736', '2018-05-20 12:43:31', 'test_736', '2018-05-20 12:43:31', 'test_736');
INSERT INTO `t_news` VALUES ('182835631582621696', 'test_737', '2018-05-20 12:43:31', 'test_737', '2018-05-20 12:43:31', 'test_737');
INSERT INTO `t_news` VALUES ('182835631603593216', 'test_738', '2018-05-20 12:43:31', 'test_738', '2018-05-20 12:43:31', 'test_738');
INSERT INTO `t_news` VALUES ('182835631628759040', 'test_739', '2018-05-20 12:43:32', 'test_739', '2018-05-20 12:43:32', 'test_739');
INSERT INTO `t_news` VALUES ('182835631653924864', 'test_740', '2018-05-20 12:43:32', 'test_740', '2018-05-20 12:43:32', 'test_740');
INSERT INTO `t_news` VALUES ('182835631674896384', 'test_741', '2018-05-20 12:43:32', 'test_741', '2018-05-20 12:43:32', 'test_741');
INSERT INTO `t_news` VALUES ('182835631691673600', 'test_742', '2018-05-20 12:43:32', 'test_742', '2018-05-20 12:43:32', 'test_742');
INSERT INTO `t_news` VALUES ('182835631716839424', 'test_743', '2018-05-20 12:43:32', 'test_743', '2018-05-20 12:43:32', 'test_743');
INSERT INTO `t_news` VALUES ('182835631737810944', 'test_744', '2018-05-20 12:43:32', 'test_744', '2018-05-20 12:43:32', 'test_744');
INSERT INTO `t_news` VALUES ('182835631762976768', 'test_745', '2018-05-20 12:43:32', 'test_745', '2018-05-20 12:43:32', 'test_745');
INSERT INTO `t_news` VALUES ('182835631792336896', 'test_746', '2018-05-20 12:43:32', 'test_746', '2018-05-20 12:43:32', 'test_746');
INSERT INTO `t_news` VALUES ('182835631817502720', 'test_747', '2018-05-20 12:43:32', 'test_747', '2018-05-20 12:43:32', 'test_747');
INSERT INTO `t_news` VALUES ('182835631842668544', 'test_748', '2018-05-20 12:43:32', 'test_748', '2018-05-20 12:43:32', 'test_748');
INSERT INTO `t_news` VALUES ('182835631863640064', 'test_749', '2018-05-20 12:43:32', 'test_749', '2018-05-20 12:43:32', 'test_749');
INSERT INTO `t_news` VALUES ('182835631884611584', 'test_750', '2018-05-20 12:43:32', 'test_750', '2018-05-20 12:43:32', 'test_750');
INSERT INTO `t_news` VALUES ('182835631905583104', 'test_751', '2018-05-20 12:43:32', 'test_751', '2018-05-20 12:43:32', 'test_751');
INSERT INTO `t_news` VALUES ('182835631926554624', 'test_752', '2018-05-20 12:43:32', 'test_752', '2018-05-20 12:43:32', 'test_752');
INSERT INTO `t_news` VALUES ('182835631943331840', 'test_753', '2018-05-20 12:43:32', 'test_753', '2018-05-20 12:43:32', 'test_753');
INSERT INTO `t_news` VALUES ('182835631968497664', 'test_754', '2018-05-20 12:43:32', 'test_754', '2018-05-20 12:43:32', 'test_754');
INSERT INTO `t_news` VALUES ('182835631985274880', 'test_755', '2018-05-20 12:43:32', 'test_755', '2018-05-20 12:43:32', 'test_755');
INSERT INTO `t_news` VALUES ('182835632006246400', 'test_756', '2018-05-20 12:43:32', 'test_756', '2018-05-20 12:43:32', 'test_756');
INSERT INTO `t_news` VALUES ('182835632027217920', 'test_757', '2018-05-20 12:43:32', 'test_757', '2018-05-20 12:43:32', 'test_757');
INSERT INTO `t_news` VALUES ('182835632060772352', 'test_758', '2018-05-20 12:43:32', 'test_758', '2018-05-20 12:43:32', 'test_758');
INSERT INTO `t_news` VALUES ('182835632081743872', 'test_759', '2018-05-20 12:43:32', 'test_759', '2018-05-20 12:43:32', 'test_759');
INSERT INTO `t_news` VALUES ('182835632106909696', 'test_760', '2018-05-20 12:43:32', 'test_760', '2018-05-20 12:43:32', 'test_760');
INSERT INTO `t_news` VALUES ('182835632127881216', 'test_761', '2018-05-20 12:43:32', 'test_761', '2018-05-20 12:43:32', 'test_761');
INSERT INTO `t_news` VALUES ('182835632153047040', 'test_762', '2018-05-20 12:43:32', 'test_762', '2018-05-20 12:43:32', 'test_762');
INSERT INTO `t_news` VALUES ('182835632174018560', 'test_763', '2018-05-20 12:43:32', 'test_763', '2018-05-20 12:43:32', 'test_763');
INSERT INTO `t_news` VALUES ('182835632194990080', 'test_764', '2018-05-20 12:43:32', 'test_764', '2018-05-20 12:43:32', 'test_764');
INSERT INTO `t_news` VALUES ('182835632224350208', 'test_765', '2018-05-20 12:43:32', 'test_765', '2018-05-20 12:43:32', 'test_765');
INSERT INTO `t_news` VALUES ('182835632253710336', 'test_766', '2018-05-20 12:43:32', 'test_766', '2018-05-20 12:43:32', 'test_766');
INSERT INTO `t_news` VALUES ('182835632283070464', 'test_767', '2018-05-20 12:43:32', 'test_767', '2018-05-20 12:43:32', 'test_767');
INSERT INTO `t_news` VALUES ('182835632308236288', 'test_768', '2018-05-20 12:43:32', 'test_768', '2018-05-20 12:43:32', 'test_768');
INSERT INTO `t_news` VALUES ('182835632333402112', 'test_769', '2018-05-20 12:43:32', 'test_769', '2018-05-20 12:43:32', 'test_769');
INSERT INTO `t_news` VALUES ('182835632358567936', 'test_770', '2018-05-20 12:43:32', 'test_770', '2018-05-20 12:43:32', 'test_770');
INSERT INTO `t_news` VALUES ('182835632375345152', 'test_771', '2018-05-20 12:43:32', 'test_771', '2018-05-20 12:43:32', 'test_771');
INSERT INTO `t_news` VALUES ('182835632396316672', 'test_772', '2018-05-20 12:43:32', 'test_772', '2018-05-20 12:43:32', 'test_772');
INSERT INTO `t_news` VALUES ('182835632421482496', 'test_773', '2018-05-20 12:43:32', 'test_773', '2018-05-20 12:43:32', 'test_773');
INSERT INTO `t_news` VALUES ('182835632446648320', 'test_774', '2018-05-20 12:43:32', 'test_774', '2018-05-20 12:43:32', 'test_774');
INSERT INTO `t_news` VALUES ('182835632480202752', 'test_775', '2018-05-20 12:43:32', 'test_775', '2018-05-20 12:43:32', 'test_775');
INSERT INTO `t_news` VALUES ('182835632505368576', 'test_776', '2018-05-20 12:43:32', 'test_776', '2018-05-20 12:43:32', 'test_776');
INSERT INTO `t_news` VALUES ('182835632526340096', 'test_777', '2018-05-20 12:43:32', 'test_777', '2018-05-20 12:43:32', 'test_777');
INSERT INTO `t_news` VALUES ('182835632551505920', 'test_778', '2018-05-20 12:43:32', 'test_778', '2018-05-20 12:43:32', 'test_778');
INSERT INTO `t_news` VALUES ('182835632572477440', 'test_779', '2018-05-20 12:43:32', 'test_779', '2018-05-20 12:43:32', 'test_779');
INSERT INTO `t_news` VALUES ('182835632593448960', 'test_780', '2018-05-20 12:43:32', 'test_780', '2018-05-20 12:43:32', 'test_780');
INSERT INTO `t_news` VALUES ('182835632614420480', 'test_781', '2018-05-20 12:43:32', 'test_781', '2018-05-20 12:43:32', 'test_781');
INSERT INTO `t_news` VALUES ('182835632635392000', 'test_782', '2018-05-20 12:43:32', 'test_782', '2018-05-20 12:43:32', 'test_782');
INSERT INTO `t_news` VALUES ('182835632656363520', 'test_783', '2018-05-20 12:43:32', 'test_783', '2018-05-20 12:43:32', 'test_783');
INSERT INTO `t_news` VALUES ('182835632689917952', 'test_784', '2018-05-20 12:43:32', 'test_784', '2018-05-20 12:43:32', 'test_784');
INSERT INTO `t_news` VALUES ('182835632715083776', 'test_785', '2018-05-20 12:43:32', 'test_785', '2018-05-20 12:43:32', 'test_785');
INSERT INTO `t_news` VALUES ('182835632740249600', 'test_786', '2018-05-20 12:43:32', 'test_786', '2018-05-20 12:43:32', 'test_786');
INSERT INTO `t_news` VALUES ('182835632765415424', 'test_787', '2018-05-20 12:43:32', 'test_787', '2018-05-20 12:43:32', 'test_787');
INSERT INTO `t_news` VALUES ('182835632786386944', 'test_788', '2018-05-20 12:43:32', 'test_788', '2018-05-20 12:43:32', 'test_788');
INSERT INTO `t_news` VALUES ('182835632807358464', 'test_789', '2018-05-20 12:43:32', 'test_789', '2018-05-20 12:43:32', 'test_789');
INSERT INTO `t_news` VALUES ('182835632824135680', 'test_790', '2018-05-20 12:43:32', 'test_790', '2018-05-20 12:43:32', 'test_790');
INSERT INTO `t_news` VALUES ('182835632845107200', 'test_791', '2018-05-20 12:43:32', 'test_791', '2018-05-20 12:43:32', 'test_791');
INSERT INTO `t_news` VALUES ('182835632866078720', 'test_792', '2018-05-20 12:43:32', 'test_792', '2018-05-20 12:43:32', 'test_792');
INSERT INTO `t_news` VALUES ('182835632899633152', 'test_793', '2018-05-20 12:43:32', 'test_793', '2018-05-20 12:43:32', 'test_793');
INSERT INTO `t_news` VALUES ('182835632924798976', 'test_794', '2018-05-20 12:43:32', 'test_794', '2018-05-20 12:43:32', 'test_794');
INSERT INTO `t_news` VALUES ('182835632949964800', 'test_795', '2018-05-20 12:43:32', 'test_795', '2018-05-20 12:43:32', 'test_795');
INSERT INTO `t_news` VALUES ('182835632979324928', 'test_796', '2018-05-20 12:43:32', 'test_796', '2018-05-20 12:43:32', 'test_796');
INSERT INTO `t_news` VALUES ('182835633004490752', 'test_797', '2018-05-20 12:43:32', 'test_797', '2018-05-20 12:43:32', 'test_797');
INSERT INTO `t_news` VALUES ('182835633025462272', 'test_798', '2018-05-20 12:43:32', 'test_798', '2018-05-20 12:43:32', 'test_798');
INSERT INTO `t_news` VALUES ('182835633050628096', 'test_799', '2018-05-20 12:43:32', 'test_799', '2018-05-20 12:43:32', 'test_799');
INSERT INTO `t_news` VALUES ('182835633067405312', 'test_800', '2018-05-20 12:43:32', 'test_800', '2018-05-20 12:43:32', 'test_800');
INSERT INTO `t_news` VALUES ('182835633088376832', 'test_801', '2018-05-20 12:43:32', 'test_801', '2018-05-20 12:43:32', 'test_801');
INSERT INTO `t_news` VALUES ('182835633109348352', 'test_802', '2018-05-20 12:43:32', 'test_802', '2018-05-20 12:43:32', 'test_802');
INSERT INTO `t_news` VALUES ('182835633130319872', 'test_803', '2018-05-20 12:43:32', 'test_803', '2018-05-20 12:43:32', 'test_803');
INSERT INTO `t_news` VALUES ('182835633151291392', 'test_804', '2018-05-20 12:43:32', 'test_804', '2018-05-20 12:43:32', 'test_804');
INSERT INTO `t_news` VALUES ('182835633184845824', 'test_805', '2018-05-20 12:43:32', 'test_805', '2018-05-20 12:43:32', 'test_805');
INSERT INTO `t_news` VALUES ('182835633205817344', 'test_806', '2018-05-20 12:43:32', 'test_806', '2018-05-20 12:43:32', 'test_806');
INSERT INTO `t_news` VALUES ('182835633226788864', 'test_807', '2018-05-20 12:43:32', 'test_807', '2018-05-20 12:43:32', 'test_807');
INSERT INTO `t_news` VALUES ('182835633247760384', 'test_808', '2018-05-20 12:43:32', 'test_808', '2018-05-20 12:43:32', 'test_808');
INSERT INTO `t_news` VALUES ('182835633268731904', 'test_809', '2018-05-20 12:43:32', 'test_809', '2018-05-20 12:43:32', 'test_809');
INSERT INTO `t_news` VALUES ('182835633289703424', 'test_810', '2018-05-20 12:43:32', 'test_810', '2018-05-20 12:43:32', 'test_810');
INSERT INTO `t_news` VALUES ('182835633314869248', 'test_811', '2018-05-20 12:43:32', 'test_811', '2018-05-20 12:43:32', 'test_811');
INSERT INTO `t_news` VALUES ('182835633331646464', 'test_812', '2018-05-20 12:43:32', 'test_812', '2018-05-20 12:43:32', 'test_812');
INSERT INTO `t_news` VALUES ('182835633352617984', 'test_813', '2018-05-20 12:43:32', 'test_813', '2018-05-20 12:43:32', 'test_813');
INSERT INTO `t_news` VALUES ('182835633373589504', 'test_814', '2018-05-20 12:43:32', 'test_814', '2018-05-20 12:43:32', 'test_814');
INSERT INTO `t_news` VALUES ('182835633398755328', 'test_815', '2018-05-20 12:43:32', 'test_815', '2018-05-20 12:43:32', 'test_815');
INSERT INTO `t_news` VALUES ('182835633415532544', 'test_816', '2018-05-20 12:43:32', 'test_816', '2018-05-20 12:43:32', 'test_816');
INSERT INTO `t_news` VALUES ('182835633436504064', 'test_817', '2018-05-20 12:43:32', 'test_817', '2018-05-20 12:43:32', 'test_817');
INSERT INTO `t_news` VALUES ('182835633457475584', 'test_818', '2018-05-20 12:43:32', 'test_818', '2018-05-20 12:43:32', 'test_818');
INSERT INTO `t_news` VALUES ('182835633491030016', 'test_819', '2018-05-20 12:43:32', 'test_819', '2018-05-20 12:43:32', 'test_819');
INSERT INTO `t_news` VALUES ('182835633524584448', 'test_820', '2018-05-20 12:43:32', 'test_820', '2018-05-20 12:43:32', 'test_820');
INSERT INTO `t_news` VALUES ('182835633549750272', 'test_821', '2018-05-20 12:43:32', 'test_821', '2018-05-20 12:43:32', 'test_821');
INSERT INTO `t_news` VALUES ('182835633574916096', 'test_822', '2018-05-20 12:43:32', 'test_822', '2018-05-20 12:43:32', 'test_822');
INSERT INTO `t_news` VALUES ('182835633604276224', 'test_823', '2018-05-20 12:43:32', 'test_823', '2018-05-20 12:43:32', 'test_823');
INSERT INTO `t_news` VALUES ('182835633625247744', 'test_824', '2018-05-20 12:43:32', 'test_824', '2018-05-20 12:43:32', 'test_824');
INSERT INTO `t_news` VALUES ('182835633650413568', 'test_825', '2018-05-20 12:43:32', 'test_825', '2018-05-20 12:43:32', 'test_825');
INSERT INTO `t_news` VALUES ('182835633683968000', 'test_826', '2018-05-20 12:43:32', 'test_826', '2018-05-20 12:43:32', 'test_826');
INSERT INTO `t_news` VALUES ('182835633709133824', 'test_827', '2018-05-20 12:43:32', 'test_827', '2018-05-20 12:43:32', 'test_827');
INSERT INTO `t_news` VALUES ('182835633734299648', 'test_828', '2018-05-20 12:43:32', 'test_828', '2018-05-20 12:43:32', 'test_828');
INSERT INTO `t_news` VALUES ('182835633759465472', 'test_829', '2018-05-20 12:43:32', 'test_829', '2018-05-20 12:43:32', 'test_829');
INSERT INTO `t_news` VALUES ('182835633780436992', 'test_830', '2018-05-20 12:43:32', 'test_830', '2018-05-20 12:43:32', 'test_830');
INSERT INTO `t_news` VALUES ('182835633801408512', 'test_831', '2018-05-20 12:43:32', 'test_831', '2018-05-20 12:43:32', 'test_831');
INSERT INTO `t_news` VALUES ('182835633822380032', 'test_832', '2018-05-20 12:43:32', 'test_832', '2018-05-20 12:43:32', 'test_832');
INSERT INTO `t_news` VALUES ('182835633843351552', 'test_833', '2018-05-20 12:43:32', 'test_833', '2018-05-20 12:43:32', 'test_833');
INSERT INTO `t_news` VALUES ('182835633872711680', 'test_834', '2018-05-20 12:43:32', 'test_834', '2018-05-20 12:43:32', 'test_834');
INSERT INTO `t_news` VALUES ('182835633893683200', 'test_835', '2018-05-20 12:43:32', 'test_835', '2018-05-20 12:43:32', 'test_835');
INSERT INTO `t_news` VALUES ('182835633918849024', 'test_836', '2018-05-20 12:43:32', 'test_836', '2018-05-20 12:43:32', 'test_836');
INSERT INTO `t_news` VALUES ('182835633960792064', 'test_837', '2018-05-20 12:43:32', 'test_837', '2018-05-20 12:43:32', 'test_837');
INSERT INTO `t_news` VALUES ('182835633994346496', 'test_838', '2018-05-20 12:43:32', 'test_838', '2018-05-20 12:43:32', 'test_838');
INSERT INTO `t_news` VALUES ('182835634023706624', 'test_839', '2018-05-20 12:43:32', 'test_839', '2018-05-20 12:43:32', 'test_839');
INSERT INTO `t_news` VALUES ('182835634048872448', 'test_840', '2018-05-20 12:43:32', 'test_840', '2018-05-20 12:43:32', 'test_840');
INSERT INTO `t_news` VALUES ('182835634069843968', 'test_841', '2018-05-20 12:43:32', 'test_841', '2018-05-20 12:43:32', 'test_841');
INSERT INTO `t_news` VALUES ('182835634090815488', 'test_842', '2018-05-20 12:43:32', 'test_842', '2018-05-20 12:43:32', 'test_842');
INSERT INTO `t_news` VALUES ('182835634115981312', 'test_843', '2018-05-20 12:43:32', 'test_843', '2018-05-20 12:43:32', 'test_843');
INSERT INTO `t_news` VALUES ('182835634145341440', 'test_844', '2018-05-20 12:43:32', 'test_844', '2018-05-20 12:43:32', 'test_844');
INSERT INTO `t_news` VALUES ('182835634174701568', 'test_845', '2018-05-20 12:43:32', 'test_845', '2018-05-20 12:43:32', 'test_845');
INSERT INTO `t_news` VALUES ('182835634195673088', 'test_846', '2018-05-20 12:43:32', 'test_846', '2018-05-20 12:43:32', 'test_846');
INSERT INTO `t_news` VALUES ('182835634216644608', 'test_847', '2018-05-20 12:43:32', 'test_847', '2018-05-20 12:43:32', 'test_847');
INSERT INTO `t_news` VALUES ('182835634241810432', 'test_848', '2018-05-20 12:43:32', 'test_848', '2018-05-20 12:43:32', 'test_848');
INSERT INTO `t_news` VALUES ('182835634262781952', 'test_849', '2018-05-20 12:43:32', 'test_849', '2018-05-20 12:43:32', 'test_849');
INSERT INTO `t_news` VALUES ('182835634283753472', 'test_850', '2018-05-20 12:43:32', 'test_850', '2018-05-20 12:43:32', 'test_850');
INSERT INTO `t_news` VALUES ('182835634304724992', 'test_851', '2018-05-20 12:43:32', 'test_851', '2018-05-20 12:43:32', 'test_851');
INSERT INTO `t_news` VALUES ('182835634321502208', 'test_852', '2018-05-20 12:43:32', 'test_852', '2018-05-20 12:43:32', 'test_852');
INSERT INTO `t_news` VALUES ('182835634346668032', 'test_853', '2018-05-20 12:43:32', 'test_853', '2018-05-20 12:43:32', 'test_853');
INSERT INTO `t_news` VALUES ('182835634363445248', 'test_854', '2018-05-20 12:43:32', 'test_854', '2018-05-20 12:43:32', 'test_854');
INSERT INTO `t_news` VALUES ('182835634384416768', 'test_855', '2018-05-20 12:43:32', 'test_855', '2018-05-20 12:43:32', 'test_855');
INSERT INTO `t_news` VALUES ('182835634401193984', 'test_856', '2018-05-20 12:43:32', 'test_856', '2018-05-20 12:43:32', 'test_856');
INSERT INTO `t_news` VALUES ('182835634430554112', 'test_857', '2018-05-20 12:43:32', 'test_857', '2018-05-20 12:43:32', 'test_857');
INSERT INTO `t_news` VALUES ('182835634455719936', 'test_858', '2018-05-20 12:43:32', 'test_858', '2018-05-20 12:43:32', 'test_858');
INSERT INTO `t_news` VALUES ('182835634476691456', 'test_859', '2018-05-20 12:43:32', 'test_859', '2018-05-20 12:43:32', 'test_859');
INSERT INTO `t_news` VALUES ('182835634497662976', 'test_860', '2018-05-20 12:43:32', 'test_860', '2018-05-20 12:43:32', 'test_860');
INSERT INTO `t_news` VALUES ('182835634518634496', 'test_861', '2018-05-20 12:43:32', 'test_861', '2018-05-20 12:43:32', 'test_861');
INSERT INTO `t_news` VALUES ('182835634539606016', 'test_862', '2018-05-20 12:43:32', 'test_862', '2018-05-20 12:43:32', 'test_862');
INSERT INTO `t_news` VALUES ('182835634560577536', 'test_863', '2018-05-20 12:43:32', 'test_863', '2018-05-20 12:43:32', 'test_863');
INSERT INTO `t_news` VALUES ('182835634581549056', 'test_864', '2018-05-20 12:43:32', 'test_864', '2018-05-20 12:43:32', 'test_864');
INSERT INTO `t_news` VALUES ('182835634602520576', 'test_865', '2018-05-20 12:43:32', 'test_865', '2018-05-20 12:43:32', 'test_865');
INSERT INTO `t_news` VALUES ('182835634623492096', 'test_866', '2018-05-20 12:43:32', 'test_866', '2018-05-20 12:43:32', 'test_866');
INSERT INTO `t_news` VALUES ('182835634652852224', 'test_867', '2018-05-20 12:43:32', 'test_867', '2018-05-20 12:43:32', 'test_867');
INSERT INTO `t_news` VALUES ('182835634678018048', 'test_868', '2018-05-20 12:43:32', 'test_868', '2018-05-20 12:43:32', 'test_868');
INSERT INTO `t_news` VALUES ('182835634715766784', 'test_869', '2018-05-20 12:43:32', 'test_869', '2018-05-20 12:43:32', 'test_869');
INSERT INTO `t_news` VALUES ('182835634740932608', 'test_870', '2018-05-20 12:43:32', 'test_870', '2018-05-20 12:43:32', 'test_870');
INSERT INTO `t_news` VALUES ('182835634766098432', 'test_871', '2018-05-20 12:43:32', 'test_871', '2018-05-20 12:43:32', 'test_871');
INSERT INTO `t_news` VALUES ('182835634791264256', 'test_872', '2018-05-20 12:43:32', 'test_872', '2018-05-20 12:43:32', 'test_872');
INSERT INTO `t_news` VALUES ('182835634816430080', 'test_873', '2018-05-20 12:43:32', 'test_873', '2018-05-20 12:43:32', 'test_873');
INSERT INTO `t_news` VALUES ('182835634837401600', 'test_874', '2018-05-20 12:43:32', 'test_874', '2018-05-20 12:43:32', 'test_874');
INSERT INTO `t_news` VALUES ('182835634858373120', 'test_875', '2018-05-20 12:43:32', 'test_875', '2018-05-20 12:43:32', 'test_875');
INSERT INTO `t_news` VALUES ('182835634879344640', 'test_876', '2018-05-20 12:43:32', 'test_876', '2018-05-20 12:43:32', 'test_876');
INSERT INTO `t_news` VALUES ('182835634900316160', 'test_877', '2018-05-20 12:43:32', 'test_877', '2018-05-20 12:43:32', 'test_877');
INSERT INTO `t_news` VALUES ('182835634917093376', 'test_878', '2018-05-20 12:43:32', 'test_878', '2018-05-20 12:43:32', 'test_878');
INSERT INTO `t_news` VALUES ('182835634933870592', 'test_879', '2018-05-20 12:43:32', 'test_879', '2018-05-20 12:43:32', 'test_879');
INSERT INTO `t_news` VALUES ('182835634959036416', 'test_880', '2018-05-20 12:43:32', 'test_880', '2018-05-20 12:43:32', 'test_880');
INSERT INTO `t_news` VALUES ('182835634980007936', 'test_881', '2018-05-20 12:43:32', 'test_881', '2018-05-20 12:43:32', 'test_881');
INSERT INTO `t_news` VALUES ('182835635009368064', 'test_882', '2018-05-20 12:43:32', 'test_882', '2018-05-20 12:43:32', 'test_882');
INSERT INTO `t_news` VALUES ('182835635030339584', 'test_883', '2018-05-20 12:43:32', 'test_883', '2018-05-20 12:43:32', 'test_883');
INSERT INTO `t_news` VALUES ('182835635051311104', 'test_884', '2018-05-20 12:43:32', 'test_884', '2018-05-20 12:43:32', 'test_884');
INSERT INTO `t_news` VALUES ('182835635072282624', 'test_885', '2018-05-20 12:43:32', 'test_885', '2018-05-20 12:43:32', 'test_885');
INSERT INTO `t_news` VALUES ('182835635093254144', 'test_886', '2018-05-20 12:43:32', 'test_886', '2018-05-20 12:43:32', 'test_886');
INSERT INTO `t_news` VALUES ('182835635110031360', 'test_887', '2018-05-20 12:43:32', 'test_887', '2018-05-20 12:43:32', 'test_887');
INSERT INTO `t_news` VALUES ('182835635143585792', 'test_888', '2018-05-20 12:43:32', 'test_888', '2018-05-20 12:43:32', 'test_888');
INSERT INTO `t_news` VALUES ('182835635164557312', 'test_889', '2018-05-20 12:43:32', 'test_889', '2018-05-20 12:43:32', 'test_889');
INSERT INTO `t_news` VALUES ('182835635189723136', 'test_890', '2018-05-20 12:43:32', 'test_890', '2018-05-20 12:43:32', 'test_890');
INSERT INTO `t_news` VALUES ('182835635210694656', 'test_891', '2018-05-20 12:43:32', 'test_891', '2018-05-20 12:43:32', 'test_891');
INSERT INTO `t_news` VALUES ('182835635231666176', 'test_892', '2018-05-20 12:43:32', 'test_892', '2018-05-20 12:43:32', 'test_892');
INSERT INTO `t_news` VALUES ('182835635252637696', 'test_893', '2018-05-20 12:43:32', 'test_893', '2018-05-20 12:43:32', 'test_893');
INSERT INTO `t_news` VALUES ('182835635273609216', 'test_894', '2018-05-20 12:43:32', 'test_894', '2018-05-20 12:43:32', 'test_894');
INSERT INTO `t_news` VALUES ('182835635290386432', 'test_895', '2018-05-20 12:43:32', 'test_895', '2018-05-20 12:43:32', 'test_895');
INSERT INTO `t_news` VALUES ('182835635311357952', 'test_896', '2018-05-20 12:43:32', 'test_896', '2018-05-20 12:43:32', 'test_896');
INSERT INTO `t_news` VALUES ('182835635340718080', 'test_897', '2018-05-20 12:43:32', 'test_897', '2018-05-20 12:43:32', 'test_897');
INSERT INTO `t_news` VALUES ('182835635370078208', 'test_898', '2018-05-20 12:43:32', 'test_898', '2018-05-20 12:43:32', 'test_898');
INSERT INTO `t_news` VALUES ('182835635395244032', 'test_899', '2018-05-20 12:43:32', 'test_899', '2018-05-20 12:43:32', 'test_899');
INSERT INTO `t_news` VALUES ('182835635416215552', 'test_900', '2018-05-20 12:43:32', 'test_900', '2018-05-20 12:43:32', 'test_900');
INSERT INTO `t_news` VALUES ('182835635437187072', 'test_901', '2018-05-20 12:43:32', 'test_901', '2018-05-20 12:43:32', 'test_901');
INSERT INTO `t_news` VALUES ('182835635458158592', 'test_902', '2018-05-20 12:43:32', 'test_902', '2018-05-20 12:43:32', 'test_902');
INSERT INTO `t_news` VALUES ('182835635483324416', 'test_903', '2018-05-20 12:43:32', 'test_903', '2018-05-20 12:43:32', 'test_903');
INSERT INTO `t_news` VALUES ('182835635521073152', 'test_904', '2018-05-20 12:43:32', 'test_904', '2018-05-20 12:43:32', 'test_904');
INSERT INTO `t_news` VALUES ('182835635558821888', 'test_905', '2018-05-20 12:43:32', 'test_905', '2018-05-20 12:43:32', 'test_905');
INSERT INTO `t_news` VALUES ('182835635588182016', 'test_906', '2018-05-20 12:43:32', 'test_906', '2018-05-20 12:43:32', 'test_906');
INSERT INTO `t_news` VALUES ('182835635613347840', 'test_907', '2018-05-20 12:43:32', 'test_907', '2018-05-20 12:43:32', 'test_907');
INSERT INTO `t_news` VALUES ('182835635638513664', 'test_908', '2018-05-20 12:43:32', 'test_908', '2018-05-20 12:43:32', 'test_908');
INSERT INTO `t_news` VALUES ('182835635655290880', 'test_909', '2018-05-20 12:43:32', 'test_909', '2018-05-20 12:43:32', 'test_909');
INSERT INTO `t_news` VALUES ('182835635684651008', 'test_910', '2018-05-20 12:43:32', 'test_910', '2018-05-20 12:43:32', 'test_910');
INSERT INTO `t_news` VALUES ('182835635714011136', 'test_911', '2018-05-20 12:43:32', 'test_911', '2018-05-20 12:43:32', 'test_911');
INSERT INTO `t_news` VALUES ('182835635734982656', 'test_912', '2018-05-20 12:43:32', 'test_912', '2018-05-20 12:43:32', 'test_912');
INSERT INTO `t_news` VALUES ('182835635755954176', 'test_913', '2018-05-20 12:43:32', 'test_913', '2018-05-20 12:43:32', 'test_913');
INSERT INTO `t_news` VALUES ('182835635772731392', 'test_914', '2018-05-20 12:43:32', 'test_914', '2018-05-20 12:43:32', 'test_914');
INSERT INTO `t_news` VALUES ('182835635797897216', 'test_915', '2018-05-20 12:43:32', 'test_915', '2018-05-20 12:43:32', 'test_915');
INSERT INTO `t_news` VALUES ('182835635818868736', 'test_916', '2018-05-20 12:43:33', 'test_916', '2018-05-20 12:43:33', 'test_916');
INSERT INTO `t_news` VALUES ('182835635839840256', 'test_917', '2018-05-20 12:43:33', 'test_917', '2018-05-20 12:43:33', 'test_917');
INSERT INTO `t_news` VALUES ('182835635860811776', 'test_918', '2018-05-20 12:43:33', 'test_918', '2018-05-20 12:43:33', 'test_918');
INSERT INTO `t_news` VALUES ('182835635877588992', 'test_919', '2018-05-20 12:43:33', 'test_919', '2018-05-20 12:43:33', 'test_919');
INSERT INTO `t_news` VALUES ('182835635898560512', 'test_920', '2018-05-20 12:43:33', 'test_920', '2018-05-20 12:43:33', 'test_920');
INSERT INTO `t_news` VALUES ('182835635932114944', 'test_921', '2018-05-20 12:43:33', 'test_921', '2018-05-20 12:43:33', 'test_921');
INSERT INTO `t_news` VALUES ('182835635986640896', 'test_922', '2018-05-20 12:43:33', 'test_922', '2018-05-20 12:43:33', 'test_922');
INSERT INTO `t_news` VALUES ('182835636011806720', 'test_923', '2018-05-20 12:43:33', 'test_923', '2018-05-20 12:43:33', 'test_923');
INSERT INTO `t_news` VALUES ('182835636036972544', 'test_924', '2018-05-20 12:43:33', 'test_924', '2018-05-20 12:43:33', 'test_924');
INSERT INTO `t_news` VALUES ('182835636057944064', 'test_925', '2018-05-20 12:43:33', 'test_925', '2018-05-20 12:43:33', 'test_925');
INSERT INTO `t_news` VALUES ('182835636074721280', 'test_926', '2018-05-20 12:43:33', 'test_926', '2018-05-20 12:43:33', 'test_926');
INSERT INTO `t_news` VALUES ('182835636104081408', 'test_927', '2018-05-20 12:43:33', 'test_927', '2018-05-20 12:43:33', 'test_927');
INSERT INTO `t_news` VALUES ('182835636129247232', 'test_928', '2018-05-20 12:43:33', 'test_928', '2018-05-20 12:43:33', 'test_928');
INSERT INTO `t_news` VALUES ('182835636150218752', 'test_929', '2018-05-20 12:43:33', 'test_929', '2018-05-20 12:43:33', 'test_929');
INSERT INTO `t_news` VALUES ('182835636171190272', 'test_930', '2018-05-20 12:43:33', 'test_930', '2018-05-20 12:43:33', 'test_930');
INSERT INTO `t_news` VALUES ('182835636187967488', 'test_931', '2018-05-20 12:43:33', 'test_931', '2018-05-20 12:43:33', 'test_931');
INSERT INTO `t_news` VALUES ('182835636208939008', 'test_932', '2018-05-20 12:43:33', 'test_932', '2018-05-20 12:43:33', 'test_932');
INSERT INTO `t_news` VALUES ('182835636229910528', 'test_933', '2018-05-20 12:43:33', 'test_933', '2018-05-20 12:43:33', 'test_933');
INSERT INTO `t_news` VALUES ('182835636271853568', 'test_934', '2018-05-20 12:43:33', 'test_934', '2018-05-20 12:43:33', 'test_934');
INSERT INTO `t_news` VALUES ('182835636301213696', 'test_935', '2018-05-20 12:43:33', 'test_935', '2018-05-20 12:43:33', 'test_935');
INSERT INTO `t_news` VALUES ('182835636338962432', 'test_936', '2018-05-20 12:43:33', 'test_936', '2018-05-20 12:43:33', 'test_936');
INSERT INTO `t_news` VALUES ('182835636364128256', 'test_937', '2018-05-20 12:43:33', 'test_937', '2018-05-20 12:43:33', 'test_937');
INSERT INTO `t_news` VALUES ('182835636389294080', 'test_938', '2018-05-20 12:43:33', 'test_938', '2018-05-20 12:43:33', 'test_938');
INSERT INTO `t_news` VALUES ('182835636414459904', 'test_939', '2018-05-20 12:43:33', 'test_939', '2018-05-20 12:43:33', 'test_939');
INSERT INTO `t_news` VALUES ('182835636615786496', 'test_940', '2018-05-20 12:43:33', 'test_940', '2018-05-20 12:43:33', 'test_940');
INSERT INTO `t_news` VALUES ('182835636645146624', 'test_941', '2018-05-20 12:43:33', 'test_941', '2018-05-20 12:43:33', 'test_941');
INSERT INTO `t_news` VALUES ('182835636678701056', 'test_942', '2018-05-20 12:43:33', 'test_942', '2018-05-20 12:43:33', 'test_942');
INSERT INTO `t_news` VALUES ('182835636703866880', 'test_943', '2018-05-20 12:43:33', 'test_943', '2018-05-20 12:43:33', 'test_943');
INSERT INTO `t_news` VALUES ('182835636724838400', 'test_944', '2018-05-20 12:43:33', 'test_944', '2018-05-20 12:43:33', 'test_944');
INSERT INTO `t_news` VALUES ('182835636754198528', 'test_945', '2018-05-20 12:43:33', 'test_945', '2018-05-20 12:43:33', 'test_945');
INSERT INTO `t_news` VALUES ('182835636775170048', 'test_946', '2018-05-20 12:43:33', 'test_946', '2018-05-20 12:43:33', 'test_946');
INSERT INTO `t_news` VALUES ('182835636800335872', 'test_947', '2018-05-20 12:43:33', 'test_947', '2018-05-20 12:43:33', 'test_947');
INSERT INTO `t_news` VALUES ('182835636825501696', 'test_948', '2018-05-20 12:43:33', 'test_948', '2018-05-20 12:43:33', 'test_948');
INSERT INTO `t_news` VALUES ('182835636842278912', 'test_949', '2018-05-20 12:43:33', 'test_949', '2018-05-20 12:43:33', 'test_949');
INSERT INTO `t_news` VALUES ('182835636871639040', 'test_950', '2018-05-20 12:43:33', 'test_950', '2018-05-20 12:43:33', 'test_950');
INSERT INTO `t_news` VALUES ('182835636892610560', 'test_951', '2018-05-20 12:43:33', 'test_951', '2018-05-20 12:43:33', 'test_951');
INSERT INTO `t_news` VALUES ('182835636917776384', 'test_952', '2018-05-20 12:43:33', 'test_952', '2018-05-20 12:43:33', 'test_952');
INSERT INTO `t_news` VALUES ('182835636955525120', 'test_953', '2018-05-20 12:43:33', 'test_953', '2018-05-20 12:43:33', 'test_953');
INSERT INTO `t_news` VALUES ('182835636984885248', 'test_954', '2018-05-20 12:43:33', 'test_954', '2018-05-20 12:43:33', 'test_954');
INSERT INTO `t_news` VALUES ('182835637010051072', 'test_955', '2018-05-20 12:43:33', 'test_955', '2018-05-20 12:43:33', 'test_955');
INSERT INTO `t_news` VALUES ('182835637043605504', 'test_956', '2018-05-20 12:43:33', 'test_956', '2018-05-20 12:43:33', 'test_956');
INSERT INTO `t_news` VALUES ('182835637072965632', 'test_957', '2018-05-20 12:43:33', 'test_957', '2018-05-20 12:43:33', 'test_957');
INSERT INTO `t_news` VALUES ('182835637098131456', 'test_958', '2018-05-20 12:43:33', 'test_958', '2018-05-20 12:43:33', 'test_958');
INSERT INTO `t_news` VALUES ('182835637119102976', 'test_959', '2018-05-20 12:43:33', 'test_959', '2018-05-20 12:43:33', 'test_959');
INSERT INTO `t_news` VALUES ('182835637140074496', 'test_960', '2018-05-20 12:43:33', 'test_960', '2018-05-20 12:43:33', 'test_960');
INSERT INTO `t_news` VALUES ('182835637165240320', 'test_961', '2018-05-20 12:43:33', 'test_961', '2018-05-20 12:43:33', 'test_961');
INSERT INTO `t_news` VALUES ('182835637186211840', 'test_962', '2018-05-20 12:43:33', 'test_962', '2018-05-20 12:43:33', 'test_962');
INSERT INTO `t_news` VALUES ('182835637207183360', 'test_963', '2018-05-20 12:43:33', 'test_963', '2018-05-20 12:43:33', 'test_963');
INSERT INTO `t_news` VALUES ('182835637244932096', 'test_964', '2018-05-20 12:43:33', 'test_964', '2018-05-20 12:43:33', 'test_964');
INSERT INTO `t_news` VALUES ('182835637270097920', 'test_965', '2018-05-20 12:43:33', 'test_965', '2018-05-20 12:43:33', 'test_965');
INSERT INTO `t_news` VALUES ('182835637295263744', 'test_966', '2018-05-20 12:43:33', 'test_966', '2018-05-20 12:43:33', 'test_966');
INSERT INTO `t_news` VALUES ('182835637316235264', 'test_967', '2018-05-20 12:43:33', 'test_967', '2018-05-20 12:43:33', 'test_967');
INSERT INTO `t_news` VALUES ('182835637341401088', 'test_968', '2018-05-20 12:43:33', 'test_968', '2018-05-20 12:43:33', 'test_968');
INSERT INTO `t_news` VALUES ('182835637370761216', 'test_969', '2018-05-20 12:43:33', 'test_969', '2018-05-20 12:43:33', 'test_969');
INSERT INTO `t_news` VALUES ('182835637429481472', 'test_970', '2018-05-20 12:43:33', 'test_970', '2018-05-20 12:43:33', 'test_970');
INSERT INTO `t_news` VALUES ('182835637454647296', 'test_971', '2018-05-20 12:43:33', 'test_971', '2018-05-20 12:43:33', 'test_971');
INSERT INTO `t_news` VALUES ('182835637484007424', 'test_972', '2018-05-20 12:43:33', 'test_972', '2018-05-20 12:43:33', 'test_972');
INSERT INTO `t_news` VALUES ('182835637517561856', 'test_973', '2018-05-20 12:43:33', 'test_973', '2018-05-20 12:43:33', 'test_973');
INSERT INTO `t_news` VALUES ('182835637546921984', 'test_974', '2018-05-20 12:43:33', 'test_974', '2018-05-20 12:43:33', 'test_974');
INSERT INTO `t_news` VALUES ('182835637584670720', 'test_975', '2018-05-20 12:43:33', 'test_975', '2018-05-20 12:43:33', 'test_975');
INSERT INTO `t_news` VALUES ('182835637609836544', 'test_976', '2018-05-20 12:43:33', 'test_976', '2018-05-20 12:43:33', 'test_976');
INSERT INTO `t_news` VALUES ('182835637630808064', 'test_977', '2018-05-20 12:43:33', 'test_977', '2018-05-20 12:43:33', 'test_977');
INSERT INTO `t_news` VALUES ('182835637655973888', 'test_978', '2018-05-20 12:43:33', 'test_978', '2018-05-20 12:43:33', 'test_978');
INSERT INTO `t_news` VALUES ('182835637685334016', 'test_979', '2018-05-20 12:43:33', 'test_979', '2018-05-20 12:43:33', 'test_979');
INSERT INTO `t_news` VALUES ('182835637714694144', 'test_980', '2018-05-20 12:43:33', 'test_980', '2018-05-20 12:43:33', 'test_980');
INSERT INTO `t_news` VALUES ('182835637748248576', 'test_981', '2018-05-20 12:43:33', 'test_981', '2018-05-20 12:43:33', 'test_981');
INSERT INTO `t_news` VALUES ('182835637781803008', 'test_982', '2018-05-20 12:43:33', 'test_982', '2018-05-20 12:43:33', 'test_982');
INSERT INTO `t_news` VALUES ('182835637806968832', 'test_983', '2018-05-20 12:43:33', 'test_983', '2018-05-20 12:43:33', 'test_983');
INSERT INTO `t_news` VALUES ('182835637836328960', 'test_984', '2018-05-20 12:43:33', 'test_984', '2018-05-20 12:43:33', 'test_984');
INSERT INTO `t_news` VALUES ('182835637857300480', 'test_985', '2018-05-20 12:43:33', 'test_985', '2018-05-20 12:43:33', 'test_985');
INSERT INTO `t_news` VALUES ('182835637874077696', 'test_986', '2018-05-20 12:43:33', 'test_986', '2018-05-20 12:43:33', 'test_986');
INSERT INTO `t_news` VALUES ('182835637899243520', 'test_987', '2018-05-20 12:43:33', 'test_987', '2018-05-20 12:43:33', 'test_987');
INSERT INTO `t_news` VALUES ('182835637932797952', 'test_988', '2018-05-20 12:43:33', 'test_988', '2018-05-20 12:43:33', 'test_988');
INSERT INTO `t_news` VALUES ('182835637953769472', 'test_989', '2018-05-20 12:43:33', 'test_989', '2018-05-20 12:43:33', 'test_989');
INSERT INTO `t_news` VALUES ('182835637974740992', 'test_990', '2018-05-20 12:43:33', 'test_990', '2018-05-20 12:43:33', 'test_990');
INSERT INTO `t_news` VALUES ('182835637999906816', 'test_991', '2018-05-20 12:43:33', 'test_991', '2018-05-20 12:43:33', 'test_991');
INSERT INTO `t_news` VALUES ('182835638020878336', 'test_992', '2018-05-20 12:43:33', 'test_992', '2018-05-20 12:43:33', 'test_992');
INSERT INTO `t_news` VALUES ('182835638046044160', 'test_993', '2018-05-20 12:43:33', 'test_993', '2018-05-20 12:43:33', 'test_993');
INSERT INTO `t_news` VALUES ('182835638067015680', 'test_994', '2018-05-20 12:43:33', 'test_994', '2018-05-20 12:43:33', 'test_994');
INSERT INTO `t_news` VALUES ('182835638087987200', 'test_995', '2018-05-20 12:43:33', 'test_995', '2018-05-20 12:43:33', 'test_995');
INSERT INTO `t_news` VALUES ('182835638108958720', 'test_996', '2018-05-20 12:43:33', 'test_996', '2018-05-20 12:43:33', 'test_996');
INSERT INTO `t_news` VALUES ('182835638150901760', 'test_997', '2018-05-20 12:43:33', 'test_997', '2018-05-20 12:43:33', 'test_997');
INSERT INTO `t_news` VALUES ('182835638192844800', 'test_998', '2018-05-20 12:43:33', 'test_998', '2018-05-20 12:43:33', 'test_998');
INSERT INTO `t_news` VALUES ('182835638218010624', 'test_999', '2018-05-20 12:43:33', 'test_999', '2018-05-20 12:43:33', 'test_999');
INSERT INTO `t_news` VALUES ('182835638238982144', 'test_1000', '2018-05-20 12:43:33', 'test_1000', '2018-05-20 12:43:33', 'test_1000');

-- ----------------------------
-- Table structure for t_sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_permission`;
CREATE TABLE `t_sys_permission` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名',
  `css_class` varchar(255) DEFAULT NULL COMMENT '菜单样式图标名',
  `url` varchar(255) DEFAULT NULL COMMENT '菜单相对URL',
  `skey` varchar(255) DEFAULT NULL COMMENT '菜单KEY',
  `parent_key` varchar(255) DEFAULT NULL COMMENT '父菜单KEY',
  `hide` int(11) DEFAULT NULL COMMENT '是否显示：1=有效，0=无效',
  `lev` int(11) DEFAULT NULL COMMENT '菜单级别，最多只能有3级',
  `sort` int(11) DEFAULT NULL COMMENT '菜单排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_permission
-- ----------------------------
INSERT INTO `t_sys_permission` VALUES ('182834649146601472', '管理首页', 'fa-home', 'index', 'glsy', null, '1', '1', '1');
INSERT INTO `t_sys_permission` VALUES ('182834649318567936', '站内新闻', '', null, 'znxy', null, '1', '1', '10');
INSERT INTO `t_sys_permission` VALUES ('182834649360510976', '新闻发布', '', 'news/add', 'znxy_xwfb', 'znxy', '1', '2', '11');
INSERT INTO `t_sys_permission` VALUES ('182834649389871104', '新闻列表', '', 'news/list', 'znxy_xwlb', 'znxy', '1', '2', '12');
INSERT INTO `t_sys_permission` VALUES ('182834649419231232', '默认数据库', '', 'news/list', 'znxy_mrsjk', 'znxy', '1', '2', '13');
INSERT INTO `t_sys_permission` VALUES ('182834649448591360', '数据库1', '', 'news/list1', 'znxy_sjk1', 'znxy', '1', '2', '14');
INSERT INTO `t_sys_permission` VALUES ('182834649490534400', '数据库2', '', 'news/list2', 'znxy_sjk2', 'znxy', '1', '2', '15');
INSERT INTO `t_sys_permission` VALUES ('182834649519894528', '系统配置', 'fa-gear', 'view/sysconfig/setconfig', 'xtpz', null, '1', '1', '20');
INSERT INTO `t_sys_permission` VALUES ('182834649553448960', '电商管理', 'fa-desktop', 'view/tenant/tenant-list', 'dxgl', null, '1', '1', '30');
INSERT INTO `t_sys_permission` VALUES ('182834649582809088', '电商配置', 'fa-gears', 'view/tenantConfig/list', 'dspz', null, '1', '1', '40');
INSERT INTO `t_sys_permission` VALUES ('182834649603780608', '地区城市管理', 'fa-map-marker', null, 'dccsgl', null, '1', '1', '50');
INSERT INTO `t_sys_permission` VALUES ('182834649628946432', '添加城市', null, 'view/city/add2', 'dccsgl_tjcs', 'dccsgl', '1', '2', '51');
INSERT INTO `t_sys_permission` VALUES ('182834649654112256', '城市列表', null, 'view/city/list', 'dccsgl_cslb', 'dccsgl', '1', '2', '51');
INSERT INTO `t_sys_permission` VALUES ('182834649687666688', '账号管理', 'fa-user', 'view/user/user_list', 'chgl', null, '1', '1', '60');
INSERT INTO `t_sys_permission` VALUES ('182834649721221120', '楼盘管理', 'fa-building', 'view/project/list', 'lpgl', null, '1', '1', '70');
INSERT INTO `t_sys_permission` VALUES ('182834649750581248', '开通楼盘', 'fa-plus', 'view/project/openProject', 'lpgl_ktlp', 'lpgl', '1', '2', '71');
INSERT INTO `t_sys_permission` VALUES ('182834649784135680', '楼盘审核', 'fa-pencil', 'view/project/list', 'lpgl_lpsh', 'lpgl', '1', '2', '72');
INSERT INTO `t_sys_permission` VALUES ('182834649817690112', '楼盘管理', 'fa-building', 'view/project/manager_list', 'lpgl_lpgl', 'lpgl', '1', '2', '73');
INSERT INTO `t_sys_permission` VALUES ('182834649847050240', '合作楼盘', 'fa-slideshare', 'view/project/edit_list', 'lpgl_hzlp', 'lpgl', '1', '2', '74');
INSERT INTO `t_sys_permission` VALUES ('182834649872216064', '添加楼盘', 'fa-plus', 'view/project/add', 'lpgl_tjlp', 'lpgl', '1', '2', '75');
INSERT INTO `t_sys_permission` VALUES ('182834649909964800', '基本信息', 'fa-file-text-o', 'view/project/add', 'lpgl_tjlp_jbxx', 'lpgl_tjlp', '1', '3', '76');
INSERT INTO `t_sys_permission` VALUES ('182834649943519232', '户型管理', 'fa-puzzle-piece', 'view/project/add2', 'lpgl_tjlp_hxgl', 'lpgl_tjlp', '1', '3', '77');
INSERT INTO `t_sys_permission` VALUES ('182834649977073664', '楼盘相册', 'fa-picture-o', 'view/project/add3', 'lpgl_tjlp_lpxc', 'lpgl_tjlp', '1', '3', '78');
INSERT INTO `t_sys_permission` VALUES ('182834650014822400', '销控管理', 'fa-sort-numeric-asc', 'view/project/add4', 'lpgl_tjlp_xkgl', 'lpgl_tjlp', '1', '3', '79');
INSERT INTO `t_sys_permission` VALUES ('182834650039988224', '合作信息', 'fa-slideshare', 'view/project/add5', 'lpgl_tjlp_hzxx', 'lpgl_tjlp', '1', '3', '80');
INSERT INTO `t_sys_permission` VALUES ('182834650060959744', '产品维护', 'fa-share-alt', 'view/project/add6', 'lpgl_tjlp_cpwh', 'lpgl_tjlp', '1', '3', '81');
INSERT INTO `t_sys_permission` VALUES ('182834650086125568', '拥金维护', 'fa-dollar', 'view/project/add7', 'lpgl_tjlp_rjwh', 'lpgl_tjlp', '1', '3', '82');
INSERT INTO `t_sys_permission` VALUES ('182834650123874304', '楼盘动态', 'fa-list-alt', 'view/project/add8', 'lpgl_tjlp_lpdt', 'lpgl_tjlp', '1', '3', '83');
INSERT INTO `t_sys_permission` VALUES ('182834650161623040', '优惠活动', 'fa-heart', 'view/project/add9', 'lpgl_tjlp_yhhd', 'lpgl_tjlp', '1', '3', '84');
INSERT INTO `t_sys_permission` VALUES ('182834650195177472', '经济公司/经纪人', 'fa-group', null, 'jjgsjjr', null, '1', '1', '90');
INSERT INTO `t_sys_permission` VALUES ('182834650220343296', '经纪公司维护', 'fa-vine', 'view/firm/list', 'jjgsjjr_jjgswh', 'jjgsjjr', '1', '2', '91');
INSERT INTO `t_sys_permission` VALUES ('182834650249703424', '经纪人管理', 'fa-group', 'view/agent/list', 'jjgsjjr_jjrgl', 'jjgsjjr', '1', '2', '92');
INSERT INTO `t_sys_permission` VALUES ('182834650274869248', '经纪人实名认证', 'fa-newspaper-o', 'view/agent/list', 'jjgsjjr_jjrsmrz', 'jjgsjjr', '1', '2', '93');
INSERT INTO `t_sys_permission` VALUES ('182834650308423680', '经纪人银行卡认证', 'fa-credit-card', 'view/agent/list', 'jjgsjjr_jjryhkrz', 'jjgsjjr', '1', '2', '94');
INSERT INTO `t_sys_permission` VALUES ('182834650337783808', '置业顾问管理', 'fa-user-md', null, 'zygwgl', null, '1', '1', '100');
INSERT INTO `t_sys_permission` VALUES ('182834650383921152', '置业顾问挂靠审核', 'fa-stumbleupon', 'view/adviserProject/adviserAuditList', 'zygwgl_zygwgksh', 'zygwgl', '1', '2', '101');
INSERT INTO `t_sys_permission` VALUES ('182834650413281280', '置业顾问管理', 'fa-user-md', 'view/adviser/list', 'zygwgl_zygwgl', 'zygwgl', '1', '2', '102');
INSERT INTO `t_sys_permission` VALUES ('182834650442641408', '置业顾问实名认证', 'fa-newspaper-o', 'view/agent/list', 'zygwgl_zygwsmrz', 'zygwgl', '1', '2', '103');
INSERT INTO `t_sys_permission` VALUES ('182834650472001536', '置业顾问银行卡认证', 'fa-credit-card', 'view/agent/list', 'zygwgl_zygwyhkrz', 'zygwgl', '1', '2', '104');
INSERT INTO `t_sys_permission` VALUES ('182834650497167360', '置业顾问元宝提现', 'fa-database', 'view/agent/list', 'zygwgl_zygwybtx', 'zygwgl', '1', '2', '105');
INSERT INTO `t_sys_permission` VALUES ('182834650522333184', 'POS交易管理', 'fa-credit-card', null, 'posjygl', null, '1', '1', '110');
INSERT INTO `t_sys_permission` VALUES ('182834650547499008', 'POS机绑定', 'fa-unlock-alt', 'view/pos/bind', 'posjygl_posjbd', 'posjygl', '1', '2', '111');
INSERT INTO `t_sys_permission` VALUES ('182834650568470528', 'POS绑定信息', 'fa-link', 'view/pos/list', 'posjygl_posbdxx', 'posjygl', '1', '2', '112');
INSERT INTO `t_sys_permission` VALUES ('182834650589442048', 'POS交易信息', 'fa-legal', 'view/pos/poslog', 'posjygl_posjyxx', 'posjygl', '1', '2', '113');
INSERT INTO `t_sys_permission` VALUES ('182834650614607872', '数据统计', 'fa-pie-chart', null, 'sjtj', null, '1', '1', '120');
INSERT INTO `t_sys_permission` VALUES ('182834650635579392', '用户统计', 'fa-user', 'view/data/statIncome_data', 'sjtj_yhtj', 'sjtj', '1', '2', '121');
INSERT INTO `t_sys_permission` VALUES ('182834650664939520', '客户统计', 'fa-group', 'view/data/statIncome_data', 'sjtj_khtj', 'sjtj', '1', '2', '122');
INSERT INTO `t_sys_permission` VALUES ('182834650690105344', '收入统计', 'fa-line-chart', 'view/data/statIncome_data', 'sjtj_sytj', 'sjtj', '1', '2', '123');
INSERT INTO `t_sys_permission` VALUES ('182834650719465472', '佣金统计', 'fa-pie-chart', 'view/data/statIncome_data', 'sjtj_yjtj', 'sjtj', '1', '2', '124');
INSERT INTO `t_sys_permission` VALUES ('182834650744631296', '合同管理', 'fa-edit', null, 'htgl', null, '1', '1', '130');
INSERT INTO `t_sys_permission` VALUES ('182834650773991424', '添加/管理列表', 'fa-plus', 'view/agreement/list', 'htgl_tjgllb', 'htgl', '1', '2', '131');
INSERT INTO `t_sys_permission` VALUES ('182834650799157248', '转认购', 'fa-mail-forward', 'view/agreement/rengou', 'htgl_zrg', 'htgl', '1', '2', '132');
INSERT INTO `t_sys_permission` VALUES ('182834650824323072', '签约', 'fa-check-square-o', 'view/agreement/qianyue', 'htgl_qy', 'htgl', '1', '2', '133');
INSERT INTO `t_sys_permission` VALUES ('182834650845294592', '合同明细/编辑', 'fa-edit', 'view/agreement/edit', 'htgl_htmxbj', 'htgl', '1', '2', '134');
INSERT INTO `t_sys_permission` VALUES ('182834650878849024', '合同详情', 'fa-building-o', 'view/agreement/view', 'htgl_htxq', 'htgl', '1', '2', '135');
INSERT INTO `t_sys_permission` VALUES ('182834650904014848', '总经理', 'fa-sitemap', null, 'zjl', null, '1', '1', '140');
INSERT INTO `t_sys_permission` VALUES ('182834650941763584', '客户统计', 'fa-group', 'view/data/statIncome_data', 'zjl_khtj', 'zjl', '1', '2', '141');
INSERT INTO `t_sys_permission` VALUES ('182834650966929408', '收入统计', 'fa-line-chart', 'view/data/statIncome_data', 'zjl_sytj', 'zjl', '1', '2', '143');
INSERT INTO `t_sys_permission` VALUES ('182834651008872448', '佣金统计', 'fa-pie-chart', 'view/data/statIncome_data', 'zjl_yjtj', 'zjl', '1', '2', '144');
INSERT INTO `t_sys_permission` VALUES ('182834651055009792', '经济公司管理员', 'fa-sitemap', null, 'jjgsgly', null, '1', '1', '150');
INSERT INTO `t_sys_permission` VALUES ('182834651084369920', '合作', 'fa-slideshare', 'view/firm/verify', 'jjgsgly_hz', 'jjgsgly', '1', '2', '151');
INSERT INTO `t_sys_permission` VALUES ('182834651109535744', '门店列表', 'fa-slideshare', 'view/firm/list2', 'jjgsgly_mdlb', 'jjgsgly', '1', '2', '152');
INSERT INTO `t_sys_permission` VALUES ('182834651134701568', '账号管理', 'fa-slideshare', 'view/user/user_list', 'jjgsgly_zhgl', 'jjgsgly', '1', '2', '153');
INSERT INTO `t_sys_permission` VALUES ('182834651164061696', '挂靠审核', 'fa-slideshare', 'view/firm/verify', 'jjgsgly_ghsh', 'jjgsgly', '1', '2', '154');
INSERT INTO `t_sys_permission` VALUES ('182834651185033216', '对公账号', 'fa-slideshare', 'view/firm/view', 'jjgsgly_dgzh', 'jjgsgly', '1', '2', '155');
INSERT INTO `t_sys_permission` VALUES ('182834651214393344', '经纪人列表', 'fa-slideshare', 'view/agent/list', 'jjgsgly_jjrlb', 'jjgsgly', '1', '2', '156');
INSERT INTO `t_sys_permission` VALUES ('182834651252142080', '客户列表', 'fa-slideshare', 'view/agent/custAgent', 'jjgsgly_khlb', 'jjgsgly', '1', '2', '157');
INSERT INTO `t_sys_permission` VALUES ('182834651281502208', '佣金信息', 'fa-slideshare', 'view/commission/agentCommission', 'jjgsgly_yjxx', 'jjgsgly', '1', '2', '158');
INSERT INTO `t_sys_permission` VALUES ('182834651306668032', '额外佣金', 'fa-slideshare', 'view/commission/commissionExt', 'jjgsgly_ewyj', 'jjgsgly', '1', '2', '159');
INSERT INTO `t_sys_permission` VALUES ('182834651331833856', '客户统计', 'fa-group', 'view/data/statIncome_data', 'jjgsgly_khtj', 'jjgsgly', '1', '2', '160');
INSERT INTO `t_sys_permission` VALUES ('182834651369582592', '收入统计', 'fa-line-chart', 'view/data/statIncome_data', 'jjgsgly_sytj', 'jjgsgly', '1', '2', '161');
INSERT INTO `t_sys_permission` VALUES ('182834651411525632', '佣金统计', 'fa-pie-chart', 'view/data/statIncome_data', 'jjgsgly_yjtj', 'jjgsgly', '1', '2', '162');
INSERT INTO `t_sys_permission` VALUES ('182834651453468672', '门店管理员', 'fa-sitemap', null, 'mdgly', null, '1', '1', '170');
INSERT INTO `t_sys_permission` VALUES ('182834651478634496', '挂靠审核', 'fa-slideshare', 'view/firm/verify', 'mdgly_ghsh', 'mdgly', '1', '2', '171');
INSERT INTO `t_sys_permission` VALUES ('182834651507994624', '经纪人列表', 'fa-slideshare', 'view/agent/list', 'mdgly_jjrlb', 'mdgly', '1', '2', '172');
INSERT INTO `t_sys_permission` VALUES ('182834651533160448', '客户列表', 'fa-slideshare', 'view/agent/custAgent', 'mdgly_khlb', 'mdgly', '1', '2', '173');
INSERT INTO `t_sys_permission` VALUES ('182834651566714880', '用户统计', 'fa-user', 'view/data/statIncome_data', 'mdgly_yhtj2', 'mdgly', '1', '2', '174');
INSERT INTO `t_sys_permission` VALUES ('182834651604463616', '用户统计', 'fa-user', 'view/data/statIncome_data', 'mdgly_yhtj3', 'mdgly', '1', '2', '175');
INSERT INTO `t_sys_permission` VALUES ('182834651638018048', '用户统计', 'fa-user', 'view/data/statIncome_data', 'mdgly_yhtj4', 'mdgly', '1', '2', '176');
INSERT INTO `t_sys_permission` VALUES ('182834651671572480', '客户统计', 'fa-group', 'view/data/statIncome_data', 'mdgly_khtj', 'mdgly', '1', '2', '177');
INSERT INTO `t_sys_permission` VALUES ('182834651709321216', '案场经理', 'fa-sitemap', null, 'acjl', null, '1', '1', '180');
INSERT INTO `t_sys_permission` VALUES ('182834651734487040', '楼盘管理', null, null, 'acjl_lpgl', 'acjl', '1', '2', '181');
INSERT INTO `t_sys_permission` VALUES ('182834651759652864', '楼盘列表', null, 'view/project/list', 'acjl_lpgl_lpgl', 'acjl_lpgl', '1', '3', '182');
INSERT INTO `t_sys_permission` VALUES ('182834651801595904', '编辑添加', null, 'view/project/add', 'acjl_lpgl_bjtj', 'acjl_lpgl', '1', '3', '183');
INSERT INTO `t_sys_permission` VALUES ('182834651830956032', '置业顾问挂靠审核', 'fa-stumbleupon', 'view/adviserProject/adviserAuditList', 'acjl_zygwgksh', 'acjl', '1', '2', '184');
INSERT INTO `t_sys_permission` VALUES ('182834651868704768', '置业顾问管理', 'fa-user-md', 'view/adviser/list', 'acjl_zygwgl', 'acjl', '1', '2', '185');
INSERT INTO `t_sys_permission` VALUES ('182834651893870592', '客户审核', null, 'view/custintent/custAuditList', 'acjl_khsh', 'acjl', '1', '2', '186');
INSERT INTO `t_sys_permission` VALUES ('182834651927425024', '项目总监', null, null, 'xmzj', null, '1', '1', '190');
INSERT INTO `t_sys_permission` VALUES ('182834651952590848', '客户统计', 'fa-group', 'view/data/statIncome_data', 'xmzj_khtj', 'xmzj', '1', '2', '191');
INSERT INTO `t_sys_permission` VALUES ('182834651981950976', '收入统计', 'fa-line-chart', 'view/data/statIncome_data', 'xmzj_sytj', 'xmzj', '1', '2', '192');
INSERT INTO `t_sys_permission` VALUES ('182834652015505408', '佣金统计', 'fa-pie-chart', 'view/data/statIncome_data', 'xmzj_yjtj', 'xmzj', '1', '2', '193');
INSERT INTO `t_sys_permission` VALUES ('182834652049059840', '项目经理', 'fa-sitemap', null, 'xmjl', null, '1', '1', '200');
INSERT INTO `t_sys_permission` VALUES ('182834652082614272', '开通楼盘', 'fa-plus', 'view/project/openProject', 'xmjl_ktlp', 'xmjl', '1', '2', '201');
INSERT INTO `t_sys_permission` VALUES ('182834652111974400', '账号管理', 'fa-slideshare', 'view/user/user_list', 'xmjl_zhgl', 'xmjl', '1', '2', '202');
INSERT INTO `t_sys_permission` VALUES ('182834652141334528', '佣金审核', null, 'view/commission/list', 'xmjl_yjsh', 'xmjl', '1', '2', '203');
INSERT INTO `t_sys_permission` VALUES ('182834652191666176', '开发商补贴', null, 'view/devpSubsidy/list', 'xmjl_kfsbt', 'xmjl', '1', '2', '204');
INSERT INTO `t_sys_permission` VALUES ('182834652225220608', '推送管理', null, 'view/push/list', 'xmjl_tsgl', 'xmjl', '1', '2', '205');
INSERT INTO `t_sys_permission` VALUES ('182834652250386432', '客户统计', 'fa-group', 'view/data/statIncome_data', 'xmjl_khtj', 'xmjl', '1', '2', '206');
INSERT INTO `t_sys_permission` VALUES ('182834652279746560', '收入统计', 'fa-line-chart', 'view/data/statIncome_data', 'xmjl_sytj', 'xmjl', '1', '2', '207');
INSERT INTO `t_sys_permission` VALUES ('182834652304912384', '佣金统计', 'fa-pie-chart', 'view/data/statIncome_data', 'xmjl_yjtj', 'xmjl', '1', '2', '208');
INSERT INTO `t_sys_permission` VALUES ('182834652342661120', '项目助理', 'fa-sitemap', null, 'xmzl', null, '1', '1', '210');
INSERT INTO `t_sys_permission` VALUES ('182834652376215552', '确认到访', null, 'view/code/code', 'xmzl_qrdf', 'xmzl', '1', '2', '211');
INSERT INTO `t_sys_permission` VALUES ('182834652401381376', '发送语音验证码', null, 'view/code/telcode', 'xmzl_fsyyyzm', 'xmzl', '1', '2', '212');
INSERT INTO `t_sys_permission` VALUES ('182834652430741504', 'POS机绑定', 'fa-unlock-alt', 'view/pos/bind', 'xmzl_posjbd', 'xmzl', '1', '2', '213');
INSERT INTO `t_sys_permission` VALUES ('182834652468490240', 'POS交易记录', 'fa-link', 'view/pos/list', 'xmzl_posbdxx', 'xmzl', '1', '2', '214');
INSERT INTO `t_sys_permission` VALUES ('182834652497850368', '客户意向查询', null, 'view/custintent/custAuditList', 'xmzl_khyxqx', 'xmzl', '1', '2', '215');
INSERT INTO `t_sys_permission` VALUES ('182834652531404800', '合同管理', null, 'view/agreement/list', 'xmzl_htgl', 'xmzl', '1', '2', '216');
INSERT INTO `t_sys_permission` VALUES ('182834652573347840', '运营专员', 'fa-sitemap', null, 'yyzy', null, '1', '1', '220');
INSERT INTO `t_sys_permission` VALUES ('182834652606902272', '签到规则配置', null, 'view/sysconfig/signin', 'yyzy_qdgzpz', 'yyzy', '1', '2', '221');
INSERT INTO `t_sys_permission` VALUES ('182834652648845312', '楼盘管理', 'fa-building', 'view/project/manager_list', 'yyzy_lpgl', 'yyzy', '1', '2', '222');
INSERT INTO `t_sys_permission` VALUES ('182834652682399744', '城市管理', null, 'view/city/add2', 'yyzy_tjcs', 'yyzy', '1', '2', '223');
INSERT INTO `t_sys_permission` VALUES ('182834652720148480', '账号管理', 'fa-slideshare', 'view/user/user_list', 'yyzy_zhgl', 'yyzy', '1', '2', '224');
INSERT INTO `t_sys_permission` VALUES ('182834652749508608', '推送管理', null, 'view/push/list', 'yyzy_tsgl', 'yyzy', '1', '2', '225');
INSERT INTO `t_sys_permission` VALUES ('182834652778868736', '广告位管理', null, 'view/adv/list', 'yyzy_ggwgl', 'yyzy', '1', '2', '226');
INSERT INTO `t_sys_permission` VALUES ('182834652808228864', '客户意向查询', null, 'view/custintent/custAuditList', 'yyzy_khyxqx', 'yyzy', '1', '2', '227');
INSERT INTO `t_sys_permission` VALUES ('182834652841783296', 'POS机绑定', 'fa-unlock-alt', 'view/pos/bind', 'yyzy_posjbd', 'yyzy', '1', '2', '228');
INSERT INTO `t_sys_permission` VALUES ('182834652875337728', 'POS交易记录', 'fa-link', 'view/pos/list', 'yyzy_posjyjl', 'yyzy', '1', '2', '229');
INSERT INTO `t_sys_permission` VALUES ('182834652908892160', '签约经纪公司', null, 'view/pos/list', 'yyzy_qyjjgs', 'yyzy', '1', '2', '230');
INSERT INTO `t_sys_permission` VALUES ('182834652942446592', '经纪人管理', 'fa-group', 'view/agent/list', 'yyzy_jjrgl', 'yyzy', '1', '2', '231');
INSERT INTO `t_sys_permission` VALUES ('182834652988583936', '用户统计', 'fa-user', 'view/data/statIncome_data', 'yyzy_yhtj', 'yyzy', '1', '2', '232');
INSERT INTO `t_sys_permission` VALUES ('182834653013749760', '客户统计', 'fa-group', 'view/data/statIncome_data', 'yyzy_khtj', 'yyzy', '1', '2', '233');
INSERT INTO `t_sys_permission` VALUES ('182834653038915584', '收入统计', 'fa-line-chart', 'view/data/statIncome_data', 'yyzy_sytj', 'yyzy', '1', '2', '234');
INSERT INTO `t_sys_permission` VALUES ('182834653068275712', '佣金统计', 'fa-pie-chart', 'view/data/statIncome_data', 'yyzy_yjtj', 'yyzy', '1', '2', '235');
INSERT INTO `t_sys_permission` VALUES ('182834653089247232', '佣金专员', 'fa-sitemap', null, 'yjzy', null, '1', '1', '240');
INSERT INTO `t_sys_permission` VALUES ('182834653118607360', '佣金规则审核', null, 'view/commission/auditList', 'yjzy_yjgzsh', 'yjzy', '1', '2', '241');
INSERT INTO `t_sys_permission` VALUES ('182834653147967488', '经纪人实名认证', 'fa-newspaper-o', 'view/agent/list', 'yjzy_jjrsmrz', 'yjzy', '1', '2', '242');
INSERT INTO `t_sys_permission` VALUES ('182834653177327616', '经纪人银行卡认证', 'fa-credit-card', 'view/agent/list', 'yjzy_jjryhkrz', 'yjzy', '1', '2', '243');
INSERT INTO `t_sys_permission` VALUES ('182834653202493440', '经纪人元宝提现', 'fa-credit-card', 'view/agent/grain', 'yjzy_jjrybtx', 'yjzy', '1', '2', '244');
INSERT INTO `t_sys_permission` VALUES ('182834653223464960', '置业顾问实名认证', 'fa-newspaper-o', 'view/agent/list', 'yjzy_zygwsmrz', 'yjzy', '1', '2', '245');
INSERT INTO `t_sys_permission` VALUES ('182834653248630784', '置业顾问银行卡认证', 'fa-credit-card', 'view/agent/list', 'yjzy_zygwyhkrz', 'yjzy', '1', '2', '246');
INSERT INTO `t_sys_permission` VALUES ('182834653286379520', '置业顾问元宝提现', 'fa-database', 'view/agent/list', 'yjzy_zygwybtx', 'yjzy', '1', '2', '247');
INSERT INTO `t_sys_permission` VALUES ('182834653319933952', '对公账号审核', 'fa-database', 'view/firm/account', 'yjzy_dgzhsh', 'yjzy', '1', '2', '248');
INSERT INTO `t_sys_permission` VALUES ('182834653345099776', '退款审核', null, 'view/refund/list', 'yjzy_tksh', 'yjzy', '1', '2', '249');
INSERT INTO `t_sys_permission` VALUES ('182834653370265600', '佣金审核', null, 'view/commission/list', 'yjzy_yjsh', 'yjzy', '1', '2', '250');
INSERT INTO `t_sys_permission` VALUES ('182834653399625728', '合同管理', null, 'view/agreement/list', 'yjzy_htgl', 'yjzy', '1', '2', '251');
INSERT INTO `t_sys_permission` VALUES ('182834653424791552', '额外佣金审核', null, 'view/commission/Ext', 'yjzy_ewyjsh', 'yjzy', '1', '2', '252');
INSERT INTO `t_sys_permission` VALUES ('182834653449957376', '出纳专员', 'fa-sitemap', null, 'cnzy', null, '1', '1', '260');
INSERT INTO `t_sys_permission` VALUES ('182834653475123200', '经纪人元宝提现', 'fa-credit-card', 'view/agent/grain', 'cnzy_jjrybtx', 'cnzy', '1', '2', '261');
INSERT INTO `t_sys_permission` VALUES ('182834653500289024', '置业顾问元宝提现', 'fa-database', 'view/agent/list', 'cnzy_zygwybtx', 'cnzy', '1', '2', '262');
INSERT INTO `t_sys_permission` VALUES ('182834653525454848', '退款审核', null, 'view/refund/list', 'cnzy_tksh', 'cnzy', '1', '2', '263');
INSERT INTO `t_sys_permission` VALUES ('182834653550620672', '佣金审核', null, 'view/commission/list', 'cnzy_yjsh', 'cnzy', '1', '2', '264');
INSERT INTO `t_sys_permission` VALUES ('182834653575786496', '额外佣金审核', null, 'view/commission/Ext', 'cnzy_ewyjsh', 'cnzy', '1', '2', '265');
INSERT INTO `t_sys_permission` VALUES ('182834653613535232', '财务专员', null, null, 'cwzy', null, '1', '1', '270');
INSERT INTO `t_sys_permission` VALUES ('182834653638701056', '经纪人元宝提现', 'fa-credit-card', 'view/agent/grain', 'cwzy_jjrybtx', 'cwzy', '1', '2', '271');
INSERT INTO `t_sys_permission` VALUES ('182834653668061184', '置业顾问元宝提现', 'fa-database', 'view/agent/list', 'cwzy_zygwybtx', 'cwzy', '1', '2', '272');
INSERT INTO `t_sys_permission` VALUES ('182834653689032704', '开发商补贴确认', null, 'view/devpSubsidy/list2', 'cwzy_kfsbt', 'cwzy', '1', '2', '273');
INSERT INTO `t_sys_permission` VALUES ('182834653722587136', '退款审核', null, 'view/refund/list', 'cwzy_tksh', 'cwzy', '1', '2', '274');
INSERT INTO `t_sys_permission` VALUES ('182834653751947264', '佣金审核', null, 'view/commission/list', 'cwzy_yjsh', 'cwzy', '1', '2', '275');
INSERT INTO `t_sys_permission` VALUES ('182834653777113088', 'POS交易记录', 'fa-link', 'view/pos/list', 'cwzy_posbdxx', 'cwzy', '1', '2', '276');
INSERT INTO `t_sys_permission` VALUES ('182834653802278912', '额外佣金审核', null, 'view/commission/Ext', 'cwzy_ewyjsh', 'cwzy', '1', '2', '277');
INSERT INTO `t_sys_permission` VALUES ('182834653831639040', '经纪服务专员测试', 'fa-sitemap', null, 'jjfwzycs', null, '1', '1', '280');
INSERT INTO `t_sys_permission` VALUES ('182834653856804864', '经纪公司维护', null, 'view/firm/list2', 'jjfwzycs_jjgswh', 'jjfwzycs', '1', '2', '281');
INSERT INTO `t_sys_permission` VALUES ('182834653881970688', '客服专员', 'fa-sitemap', null, 'kfzy', null, '1', '1', '290');
INSERT INTO `t_sys_permission` VALUES ('182834653911330816', '客户意向审核', 'fa-sitemap', 'view/custintent/custSupport', 'kfzy_khyxsh', 'kfzy', '1', '2', '291');

-- ----------------------------
-- Table structure for t_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名',
  `code` varchar(255) DEFAULT NULL COMMENT '角色编码',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES ('182834649041743872', '超级管理员', 'admin_role', '超级管理员');
INSERT INTO `t_sys_role` VALUES ('182834649100464128', '普通用户', 'common_role', '普通用户');

-- ----------------------------
-- Table structure for t_sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_permission`;
CREATE TABLE `t_sys_role_permission` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `permission_id` varchar(255) DEFAULT NULL COMMENT '菜单表主键',
  `role_id` varchar(255) DEFAULT NULL COMMENT '角色表主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_role_permission
-- ----------------------------
INSERT INTO `t_sys_role_permission` VALUES ('182834654204932096', '182834649146601472', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834654263652352', '182834649146601472', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834654318178304', '182834649318567936', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834654368509952', '182834649318567936', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834654431424512', '182834649360510976', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834654494339072', '182834649360510976', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834654561447936', '182834649389871104', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834654615973888', '182834649389871104', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834654670499840', '182834649419231232', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834654741803008', '182834649419231232', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834654813106176', '182834649448591360', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834654871826432', '182834649448591360', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834654930546688', '182834649490534400', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834654997655552', '182834649490534400', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834655043792896', '182834649519894528', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834655094124544', '182834649519894528', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834655161233408', '182834649553448960', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834655211565056', '182834649553448960', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834655257702400', '182834649582809088', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834655303839744', '182834649582809088', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834655354171392', '182834649603780608', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834655417085952', '182834649603780608', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834655471611904', '182834649628946432', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834655521943552', '182834649628946432', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834655572275200', '182834649654112256', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834655622606848', '182834649654112256', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834655668744192', '182834649687666688', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834655727464448', '182834649687666688', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834655786184704', '182834649721221120', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834655844904960', '182834649721221120', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834655886848000', '182834649750581248', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834655928791040', '182834649750581248', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834655979122688', '182834649784135680', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834656029454336', '182834649784135680', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834656075591680', '182834649817690112', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834656134311936', '182834649817690112', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834656184643584', '182834649847050240', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834656226586624', '182834649847050240', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834656281112576', '182834649872216064', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834656339832832', '182834649872216064', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834656398553088', '182834649909964800', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834656461467648', '182834649909964800', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834656511799296', '182834649943519232', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834656566325248', '182834649943519232', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834656620851200', '182834649977073664', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834656671182848', '182834649977073664', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834656717320192', '182834650014822400', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834656771846144', '182834650014822400', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834656826372096', '182834650039988224', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834656876703744', '182834650039988224', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834656931229696', '182834650060959744', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834656985755648', '182834650060959744', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834657036087296', '182834650086125568', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834657094807552', '182834650086125568', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834657140944896', '182834650123874304', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834657191276544', '182834650123874304', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834657233219584', '182834650161623040', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834657279356928', '182834650161623040', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834657329688576', '182834650195177472', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834657375825920', '182834650195177472', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834657413574656', '182834650220343296', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834657455517696', '182834650220343296', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834657501655040', '182834650249703424', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834657547792384', '182834650249703424', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834657602318336', '182834650274869248', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834657652649984', '182834650274869248', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834657698787328', '182834650308423680', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834657744924672', '182834650308423680', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834657786867712', '182834650337783808', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834657824616448', '182834650337783808', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834657870753792', '182834650383921152', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834657916891136', '182834650383921152', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834657967222784', '182834650413281280', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834658017554432', '182834650413281280', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834658072080384', '182834650442641408', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834658130800640', '182834650442641408', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834658181132288', '182834650472001536', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834658231463936', '182834650472001536', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834658277601280', '182834650497167360', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834658327932928', '182834650497167360', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834658374070272', '182834650522333184', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834658420207616', '182834650522333184', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834658466344960', '182834650547499008', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834658546036736', '182834650547499008', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834658613145600', '182834650568470528', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834658667671552', '182834650568470528', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834658718003200', '182834650589442048', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834658772529152', '182834650589442048', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834658818666496', '182834650614607872', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834658868998144', '182834650614607872', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834658927718400', '182834650635579392', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834658982244352', '182834650635579392', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834659028381696', '182834650664939520', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834659082907648', '182834650664939520', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834659133239296', '182834650690105344', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834659187765248', '182834650690105344', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834659229708288', '182834650719465472', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834659275845632', '182834650719465472', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834659321982976', '182834650744631296', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834659372314624', '182834650744631296', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834659418451968', '182834650773991424', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834659464589312', '182834650773991424', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834659527503872', '182834650799157248', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834659582029824', '182834650799157248', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834659628167168', '182834650824323072', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834659674304512', '182834650824323072', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834659724636160', '182834650845294592', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834659770773504', '182834650845294592', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834659812716544', '182834650878849024', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834659850465280', '182834650878849024', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834659904991232', '182834650904014848', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834659946934272', '182834650904014848', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834660001460224', '182834650941763584', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834660047597568', '182834650941763584', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834660089540608', '182834650966929408', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834660139872256', '182834650966929408', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834660186009600', '182834651008872448', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834660232146944', '182834651008872448', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834660278284288', '182834651055009792', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834660328615936', '182834651055009792', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834660370558976', '182834651084369920', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834660416696320', '182834651084369920', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834660467027968', '182834651109535744', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834660521553920', '182834651109535744', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834660567691264', '182834651134701568', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834660618022912', '182834651134701568', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834660668354560', '182834651164061696', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834660718686208', '182834651164061696', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834660773212160', '182834651185033216', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834660827738112', '182834651185033216', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834660882264064', '182834651214393344', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834660924207104', '182834651214393344', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834660974538752', '182834651252142080', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834661016481792', '182834651252142080', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834661062619136', '182834651281502208', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834661108756480', '182834651281502208', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834661159088128', '182834651306668032', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834661201031168', '182834651306668032', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834661242974208', '182834651331833856', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834661301694464', '182834651331833856', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834661347831808', '182834651369582592', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834661389774848', '182834651369582592', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834661431717888', '182834651411525632', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834661490438144', '182834651411525632', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834661540769792', '182834651453468672', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834661586907136', '182834651453468672', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834661637238784', '182834651478634496', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834661687570432', '182834651478634496', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834661737902080', '182834651507994624', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834661788233728', '182834651507994624', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834661825982464', '182834651533160448', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834661876314112', '182834651533160448', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834661922451456', '182834651566714880', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834661964394496', '182834651566714880', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834662010531840', '182834651604463616', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834662056669184', '182834651604463616', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834662102806528', '182834651638018048', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834662153138176', '182834651638018048', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834662190886912', '182834651671572480', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834662237024256', '182834651671572480', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834662287355904', '182834651709321216', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834662341881856', '182834651709321216', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834662388019200', '182834651734487040', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834662429962240', '182834651734487040', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834662480293888', '182834651759652864', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834662526431232', '182834651759652864', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834662568374272', '182834651801595904', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834662614511616', '182834651801595904', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834662656454656', '182834651830956032', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834662706786304', '182834651830956032', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834662748729344', '182834651868704768', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834662790672384', '182834651868704768', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834662845198336', '182834651893870592', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834662891335680', '182834651893870592', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834662937473024', '182834651927425024', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834662991998976', '182834651927425024', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834663029747712', '182834651952590848', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834663071690752', '182834651952590848', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834663126216704', '182834651981950976', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834663172354048', '182834651981950976', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834663235268608', '182834652015505408', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834663285600256', '182834652015505408', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834663335931904', '182834652049059840', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834663390457856', '182834652049059840', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834663440789504', '182834652082614272', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834663486926848', '182834652082614272', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834663528869888', '182834652111974400', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834663575007232', '182834652111974400', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834663625338880', '182834652141334528', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834663675670528', '182834652141334528', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834663717613568', '182834652191666176', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834663759556608', '182834652191666176', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834663814082560', '182834652225220608', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834663864414208', '182834652225220608', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834663910551552', '182834652250386432', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834663960883200', '182834652250386432', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834664007020544', '182834652279746560', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834664057352192', '182834652279746560', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834664103489536', '182834652304912384', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834664153821184', '182834652304912384', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834664204152832', '182834652342661120', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834664258678784', '182834652342661120', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834664309010432', '182834652376215552', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834664346759168', '182834652376215552', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834664392896512', '182834652401381376', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834664439033856', '182834652401381376', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834664480976896', '182834652430741504', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834664527114240', '182834652430741504', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834664569057280', '182834652468490240', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834664615194624', '182834652468490240', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834664665526272', '182834652497850368', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834664703275008', '182834652497850368', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834664736829440', '182834652531404800', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834664782966784', '182834652531404800', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834664829104128', '182834652573347840', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834664875241472', '182834652573347840', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834664921378816', '182834652606902272', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834664959127552', '182834652606902272', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834665001070592', '182834652648845312', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834665047207936', '182834652648845312', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834665097539584', '182834652682399744', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834665139482624', '182834652682399744', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834665181425664', '182834652720148480', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834665235951616', '182834652720148480', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834665277894656', '182834652749508608', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834665311449088', '182834652749508608', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834665353392128', '182834652778868736', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834665403723776', '182834652778868736', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834665449861120', '182834652808228864', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834665500192768', '182834652808228864', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834665542135808', '182834652841783296', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834665584078848', '182834652841783296', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834665630216192', '182834652875337728', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834665680547840', '182834652875337728', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834665722490880', '182834652908892160', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834665764433920', '182834652908892160', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834665802182656', '182834652942446592', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834665852514304', '182834652942446592', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834665907040256', '182834652988583936', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834665948983296', '182834652988583936', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834665990926336', '182834653013749760', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834666032869376', '182834653013749760', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834666074812416', '182834653038915584', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834666125144064', '182834653038915584', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834666167087104', '182834653068275712', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834666225807360', '182834653068275712', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834666276139008', '182834653089247232', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834666326470656', '182834653089247232', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834666372608000', '182834653118607360', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834666431328256', '182834653118607360', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834666494242816', '182834653147967488', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834666544574464', '182834653147967488', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834666594906112', '182834653177327616', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834666641043456', '182834653177327616', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834666687180800', '182834653202493440', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834666745901056', '182834653202493440', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834666792038400', '182834653223464960', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834666842370048', '182834653223464960', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834666892701696', '182834653248630784', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834666930450432', '182834653248630784', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834666976587776', '182834653286379520', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834667026919424', '182834653286379520', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834667073056768', '182834653319933952', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834667114999808', '182834653319933952', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834667173720064', '182834653345099776', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834667224051712', '182834653345099776', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834667270189056', '182834653370265600', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834667316326400', '182834653370265600', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834667362463744', '182834653399625728', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834667408601088', '182834653399625728', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834667458932736', '182834653424791552', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834667513458688', '182834653424791552', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834667559596032', '182834653449957376', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834667601539072', '182834653449957376', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834667643482112', '182834653475123200', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834667706396672', '182834653475123200', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834667752534016', '182834653500289024', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834667802865664', '182834653500289024', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834667853197312', '182834653525454848', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834667899334656', '182834653525454848', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834667949666304', '182834653550620672', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834667995803648', '182834653550620672', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834668033552384', '182834653575786496', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834668079689728', '182834653575786496', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834668121632768', '182834653613535232', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834668180353024', '182834653613535232', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834668230684672', '182834653638701056', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834668276822016', '182834653638701056', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834668318765056', '182834653668061184', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834668369096704', '182834653668061184', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834668419428352', '182834653689032704', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834668461371392', '182834653689032704', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834668507508736', '182834653722587136', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834668553646080', '182834653722587136', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834668599783424', '182834653751947264', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834668645920768', '182834653751947264', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834668683669504', '182834653777113088', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834668742389760', '182834653777113088', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834668788527104', '182834653802278912', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834668843053056', '182834653802278912', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834668880801792', '182834653831639040', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834668926939136', '182834653831639040', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834668968882176', '182834653856804864', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834669019213824', '182834653856804864', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834669065351168', '182834653881970688', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834669103099904', '182834653881970688', '182834649100464128');
INSERT INTO `t_sys_role_permission` VALUES ('182834669145042944', '182834653911330816', '182834649041743872');
INSERT INTO `t_sys_role_permission` VALUES ('182834669195374592', '182834653911330816', '182834649100464128');

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `username` varchar(255) DEFAULT NULL COMMENT '登录账号',
  `password` varchar(255) DEFAULT NULL COMMENT '登录密码',
  `salt` varchar(255) DEFAULT NULL COMMENT 'salt',
  `true_name` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `organize_id` varchar(255) DEFAULT NULL COMMENT '部门ID',
  `status` int(11) DEFAULT NULL COMMENT '状态：0=有效，1=无效',
  `last_login_time` datetime DEFAULT NULL COMMENT '上将登录时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('182834654032965632', 'admin', '72845d26161548bd29c200f1c40bff698b1b2966', 'ef0230e610d0304d', '管理员', 'admin@163.com', '182834649041743872', '1', null, '2018-05-20 12:39:38', null);
INSERT INTO `t_sys_user` VALUES ('182834654112657408', 'wangxin', '4c3e758c9616c41981e0f1c8ac1f1c85592dc5ef', '294aad7919e44719', '王鑫', 'wangxin@139.com', '182834649100464128', '1', null, '2018-05-20 12:39:38', null);

-- ----------------------------
-- Table structure for t_sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user_role`;
CREATE TABLE `t_sys_user_role` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `role_id` varchar(255) DEFAULT NULL COMMENT '角色表主键',
  `user_id` varchar(255) DEFAULT NULL COMMENT '用户表主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user_role
-- ----------------------------
INSERT INTO `t_sys_user_role` VALUES ('182834654058131456', '182834649041743872', '182834654032965632');
INSERT INTO `t_sys_user_role` VALUES ('182834654133628928', '182834649100464128', '182834654112657408');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `last_password_reset_time` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `dept_id` bigint(20) DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5rwmryny6jthaaxkogownknqp` (`dept_id`),
  KEY `FKfftoc2abhot8f2wu6cl9a5iky` (`job_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bio` varchar(255) DEFAULT NULL,
  `followers` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_63cf888pmqtt5tipcne79xsbm` (`mobile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for users_roles
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_roles
-- ----------------------------

-- ----------------------------
-- Table structure for visits
-- ----------------------------
DROP TABLE IF EXISTS `visits`;
CREATE TABLE `visits` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `ip_counts` bigint(20) DEFAULT NULL,
  `pv_counts` bigint(20) DEFAULT NULL,
  `week_day` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_11aksgq87euk9bcyeesfs4vtp` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visits
-- ----------------------------