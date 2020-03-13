/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : tally

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 19:06:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for expenditure
-- ----------------------------
DROP TABLE IF EXISTS `expenditure`;
CREATE TABLE `expenditure` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '支出表ID',
  `deleted` int(11) NOT NULL DEFAULT '0' COMMENT '0不删除 1删除',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `money` decimal(10,0) DEFAULT NULL,
  `sort_id` int(11) DEFAULT NULL COMMENT 'sort_id 消费分类，存放id',
  `way` int(11) DEFAULT NULL COMMENT 'way 消费方式（1、现金，2、支付宝，3、微信，4、其他）',
  `time` bigint(13) DEFAULT NULL COMMENT '消费时间，13位时间戳',
  `remark` varchar(500) DEFAULT NULL COMMENT 'remark 备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of expenditure
-- ----------------------------
INSERT INTO `expenditure` VALUES ('25', '1', '18', '150', '2', '4', '1553767607000', '消费消费消费消费');
INSERT INTO `expenditure` VALUES ('26', '1', '18', '1', '3', '2', '1553767572000', '公交车');
INSERT INTO `expenditure` VALUES ('27', '0', '16', '12', '3', '2', '1558455820000', '123213');

-- ----------------------------
-- Table structure for income
-- ----------------------------
DROP TABLE IF EXISTS `income`;
CREATE TABLE `income` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收入表ID',
  `deleted` int(11) NOT NULL DEFAULT '0' COMMENT '0不删除 1删除',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `money` decimal(10,0) DEFAULT NULL COMMENT '金额，精确到小数点后两位',
  `time` bigint(13) DEFAULT NULL COMMENT '收入时间，13位时间戳',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of income
-- ----------------------------
INSERT INTO `income` VALUES ('20', '0', '18', '100', '1553767615000', '工资收入');
INSERT INTO `income` VALUES ('21', '0', '16', '1000', '1559146906000', '发货 ');
INSERT INTO `income` VALUES ('22', '0', '16', '12', '1558455876000', '123412');

-- ----------------------------
-- Table structure for repayment
-- ----------------------------
DROP TABLE IF EXISTS `repayment`;
CREATE TABLE `repayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '还款倒计时表ID',
  `deleted` int(11) NOT NULL DEFAULT '0' COMMENT '0不删除 1删除',
  `money` decimal(10,0) DEFAULT NULL COMMENT '还款金额',
  `title` varchar(250) DEFAULT NULL COMMENT '还款标题（如：花呗还款、京东白条还款，存放字符串）',
  `targetTime` bigint(13) DEFAULT NULL COMMENT '目标日期，即为还款到期日',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repayment
-- ----------------------------
INSERT INTO `repayment` VALUES ('1', '0', '12', '123', '1559145600000', null, '16');
INSERT INTO `repayment` VALUES ('2', '0', '12', '123', '1559145600000', null, '16');

-- ----------------------------
-- Table structure for sort_type
-- ----------------------------
DROP TABLE IF EXISTS `sort_type`;
CREATE TABLE `sort_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sort` varchar(50) NOT NULL COMMENT '消费类型',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID 是哪个用户添加的私有分类',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '该分类的分类状态，1为私有分类，0为公有分类',
  `deleted` int(11) NOT NULL DEFAULT '0' COMMENT '0不删除 1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sort_type
-- ----------------------------
INSERT INTO `sort_type` VALUES ('1', '消费', null, '0', '0');
INSERT INTO `sort_type` VALUES ('2', '餐饮', null, '0', '0');
INSERT INTO `sort_type` VALUES ('3', '交通', null, '0', '0');
INSERT INTO `sort_type` VALUES ('4', '娱乐', null, '0', '0');
INSERT INTO `sort_type` VALUES ('5', '通讯', null, '0', '0');
INSERT INTO `sort_type` VALUES ('6', '医疗', null, '0', '0');
INSERT INTO `sort_type` VALUES ('7', '服饰', null, '0', '0');
INSERT INTO `sort_type` VALUES ('8', '测试', '16', '1', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `account` varchar(50) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0' COMMENT '0不删除 1删除',
  `reg_time` bigint(13) DEFAULT NULL COMMENT '注册时间字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('14', '张三', '001', 'e864c15ec921a50e5ca713741abe04a0', '0', '1553664486671');
INSERT INTO `user` VALUES ('16', 'EsunR', '16031210105', 'e864c15ec921a50e5ca713741abe04a0', '0', '1553688401000');
INSERT INTO `user` VALUES ('18', 'Tester', '123456', 'e864c15ec921a50e5ca713741abe04a0', '0', '1553767528000');
