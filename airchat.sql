/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : airchat

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 18:54:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for group_info
-- ----------------------------
DROP TABLE IF EXISTS `group_info`;
CREATE TABLE `group_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '群id',
  `group_id` char(100) NOT NULL,
  `group_name` varchar(20) NOT NULL DEFAULT '交流群' COMMENT '群名称',
  `group_notice` varchar(100) NOT NULL DEFAULT '欢迎大家入群交流~' COMMENT '群公告',
  `group_avator` varchar(50) NOT NULL DEFAULT 'http://ooytyiziz.bkt.clouddn.com/peoples1.jpg' COMMENT '群头像',
  `group_creater` varchar(10) NOT NULL DEFAULT '' COMMENT '群创建人',
  `creater_time` int(11) NOT NULL COMMENT '群创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_info
-- ----------------------------
INSERT INTO `group_info` VALUES ('1', '8eeccfc0-0f1e-11e8-892e-5ba8fc68dc36', '交流群', '交流群', 'http://ooytyiziz.bkt.clouddn.com/peoples1.jpg', '罗宾', '1518348455');

-- ----------------------------
-- Table structure for group_msg
-- ----------------------------
DROP TABLE IF EXISTS `group_msg`;
CREATE TABLE `group_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user` int(11) NOT NULL COMMENT '谁发的',
  `to_group` char(100) NOT NULL DEFAULT '' COMMENT '群id',
  `message` text NOT NULL COMMENT '聊天信息',
  `time` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`),
  KEY `to_group` (`to_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_msg
-- ----------------------------
INSERT INTO `group_msg` VALUES ('1', '1', '8eeccfc0-0f1e-11e8-892e-5ba8fc68dc36', '路飞 : 有人不？', '1518348482');
INSERT INTO `group_msg` VALUES ('2', '14', '8eeccfc0-0f1e-11e8-892e-5ba8fc68dc36', '罗宾 : 有呀  我呀', '1518348493');
INSERT INTO `group_msg` VALUES ('3', '1', '8eeccfc0-0f1e-11e8-892e-5ba8fc68dc36', '路飞 : 123qwe', '1526828827');

-- ----------------------------
-- Table structure for group_user_relation
-- ----------------------------
DROP TABLE IF EXISTS `group_user_relation`;
CREATE TABLE `group_user_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` char(100) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_user_relation
-- ----------------------------
INSERT INTO `group_user_relation` VALUES ('2', '8eeccfc0-0f1e-11e8-892e-5ba8fc68dc36', '1');
INSERT INTO `group_user_relation` VALUES ('3', '8eeccfc0-0f1e-11e8-892e-5ba8fc68dc36', '14');

-- ----------------------------
-- Table structure for new_friends
-- ----------------------------
DROP TABLE IF EXISTS `new_friends`;
CREATE TABLE `new_friends` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` int(11) NOT NULL COMMENT '主动加方',
  `to_user` int(11) NOT NULL COMMENT '被加方',
  `content` varchar(50) NOT NULL DEFAULT '' COMMENT '加好友验证内容',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1同意，0未同意',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of new_friends
-- ----------------------------
INSERT INTO `new_friends` VALUES ('1', '14', '1', '您好，我想加您为好友', '1', '1518348301');
INSERT INTO `new_friends` VALUES ('2', '1', '14', '咋把我删了呢', '1', '1518349582');
INSERT INTO `new_friends` VALUES ('3', '1', '14', '您好，我想加您为好友', '1', '1518350494');
INSERT INTO `new_friends` VALUES ('4', '1', '14', '您好，我想加您为好友', '1', '1518350921');
INSERT INTO `new_friends` VALUES ('5', '1', '14', '咋把我删了呢，重新加一下', '1', '1518351200');
INSERT INTO `new_friends` VALUES ('6', '14', '1', '您好，我想加您为好友', '1', '1518485362');
INSERT INTO `new_friends` VALUES ('7', '14', '1', '您好，我想加您为好友', '1', '1518745791');

-- ----------------------------
-- Table structure for private__msg
-- ----------------------------
DROP TABLE IF EXISTS `private__msg`;
CREATE TABLE `private__msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user` int(11) NOT NULL COMMENT '谁发的',
  `to_user` int(11) NOT NULL COMMENT '发给谁',
  `message` text NOT NULL COMMENT '聊天信息',
  `time` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`),
  KEY `from_user` (`from_user`),
  KEY `to_user` (`to_user`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of private__msg
-- ----------------------------
INSERT INTO `private__msg` VALUES ('1', '1', '14', '路飞 : 你好罗宾', '1518348322');
INSERT INTO `private__msg` VALUES ('2', '14', '1', '罗宾 : 你好呀路飞', '1518348331');
INSERT INTO `private__msg` VALUES ('3', '14', '1', '罗宾 : 我建个群去 ，你待会加哈    叫 交流群', '1518348364');
INSERT INTO `private__msg` VALUES ('6', '1', '14', '路飞 : 咋把我删了呢，重新加一下', '1518351218');
INSERT INTO `private__msg` VALUES ('7', '14', '1', '罗宾 : 额 误删.', '1518351226');
INSERT INTO `private__msg` VALUES ('8', '14', '1', '罗宾 : 在么', '1519377863');
INSERT INTO `private__msg` VALUES ('9', '1', '14', '路飞 : 123123as', '1526828751');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT 'NOT NULL' COMMENT '用户名',
  `password` varchar(40) NOT NULL DEFAULT 'NOT NULL' COMMENT '密码',
  `sex` varchar(2) NOT NULL DEFAULT '男' COMMENT '性别',
  `avator` varchar(100) NOT NULL DEFAULT 'http://ooytyiziz.bkt.clouddn.com/people5.jpg' COMMENT '头像',
  `place` varchar(50) DEFAULT NULL COMMENT '来自哪里',
  `last_login` int(10) NOT NULL COMMENT '最后登陆时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '在线状态,0离线,1在线',
  `socketid` varchar(20) NOT NULL DEFAULT '' COMMENT '登陆时的socketid',
  `website` varchar(50) DEFAULT NULL COMMENT '个人网站',
  `github` varchar(50) DEFAULT NULL,
  `intro` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', '路飞', '6512bd43d9caa6e02c990b0a82652dca', '男', 'http://ooytyiziz.bkt.clouddn.com/people1.jpg', '厦门', '0', '0', '0KaUOj6OU83UbdMAAAAA', '', 'https://github.com/Hxvin', null);
INSERT INTO `user_info` VALUES ('2', '索隆', 'b6d767d2f8ed5d21a44b0e5886680cb9', '男', 'http://ooytyiziz.bkt.clouddn.com/people2.jpg', '深圳', '0', '0', 'l12EoQ8PbnmvupNQAAAP', null, '', null);
INSERT INTO `user_info` VALUES ('3', '乔治', '182be0c5cdcd5072bb1864cdee4d3d6e', '女', 'http://ooytyiziz.bkt.clouddn.com/people3.jpg', '杭州', '0', '0', 'ue0dCyN0zAyJurW-AABQ', null, null, null);
INSERT INTO `user_info` VALUES ('4', '罗', 'f7177163c833dff4b38fc8d2872f1ec6', '女', 'http://ooytyiziz.bkt.clouddn.com/people4.jpg', '', '0', '0', '67kamGg8ibMLEjpZAAAD', null, null, null);
INSERT INTO `user_info` VALUES ('14', '罗宾', 'b6d767d2f8ed5d21a44b0e5886680cb9', '女', 'http://ooytyiziz.bkt.clouddn.com/people6.jpg', null, '0', '0', '9sictmm25dBk8tj2AAAC', null, null, null);

-- ----------------------------
-- Table structure for user_user_relation
-- ----------------------------
DROP TABLE IF EXISTS `user_user_relation`;
CREATE TABLE `user_user_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户',
  `other_user_id` int(11) NOT NULL COMMENT '用户的朋友',
  `remark` varchar(10) DEFAULT '' COMMENT '备注',
  `shield` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不屏蔽 1屏蔽',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_user_relation
-- ----------------------------
INSERT INTO `user_user_relation` VALUES ('1', '1', '14', '罗宾', '0', '1518348308');
INSERT INTO `user_user_relation` VALUES ('2', '14', '1', '23333', '0', '1518745801');
