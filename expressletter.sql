/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : expressletter

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 18:57:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cardclip
-- ----------------------------
DROP TABLE IF EXISTS `cardclip`;
CREATE TABLE `cardclip` (
  `cardclipid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `fuserid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cardclipid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cardclip
-- ----------------------------
INSERT INTO `cardclip` VALUES ('4', '3', '5');
INSERT INTO `cardclip` VALUES ('5', '3', '8');
INSERT INTO `cardclip` VALUES ('7', '3', '11');
INSERT INTO `cardclip` VALUES ('8', '3', '3');

-- ----------------------------
-- Table structure for email
-- ----------------------------
DROP TABLE IF EXISTS `email`;
CREATE TABLE `email` (
  `emailid` int(11) NOT NULL AUTO_INCREMENT,
  `suserid` int(11) DEFAULT NULL,
  `auserid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `filepath` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`emailid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of email
-- ----------------------------
INSERT INTO `email` VALUES ('1', null, null, '1234', '12341234', '1526393724889.doc', null);
INSERT INTO `email` VALUES ('2', null, null, '1234', '12341234', '', null);
INSERT INTO `email` VALUES ('7', '3', '4', '1231', '23123123', '1526394586270.doc', '2018-05-15 22:29:47');
INSERT INTO `email` VALUES ('8', '3', '5', '1231', '23123123', '1526394586270.doc', '2018-05-15 22:29:47');
INSERT INTO `email` VALUES ('9', '3', '8', '234', '12341234', '1526395579756.doc', '2018-05-15 22:46:20');
INSERT INTO `email` VALUES ('10', '3', '11', '234', '12341234', '1526395579756.doc', '2018-05-15 22:46:20');

-- ----------------------------
-- Table structure for massage
-- ----------------------------
DROP TABLE IF EXISTS `massage`;
CREATE TABLE `massage` (
  `massageid` int(11) NOT NULL AUTO_INCREMENT,
  `suserid` int(11) DEFAULT NULL,
  `auserid` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`massageid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of massage
-- ----------------------------
INSERT INTO `massage` VALUES ('3', '3', '4', '1234123412341234', '2018-05-15 22:46:42');
INSERT INTO `massage` VALUES ('4', '3', '5', '1234123412341234', '2018-05-15 22:46:42');
INSERT INTO `massage` VALUES ('5', '3', '8', '1234123412341234', '2018-05-15 22:46:42');
INSERT INTO `massage` VALUES ('6', '3', '11', '1234123412341234', '2018-05-15 22:46:42');
INSERT INTO `massage` VALUES ('7', '3', '5', '123', '2019-01-01 22:30:23');
INSERT INTO `massage` VALUES ('8', '3', '8', '123', '2019-01-01 22:30:23');

-- ----------------------------
-- Table structure for phrase
-- ----------------------------
DROP TABLE IF EXISTS `phrase`;
CREATE TABLE `phrase` (
  `phraseid` int(11) NOT NULL AUTO_INCREMENT,
  `massage` varchar(255) DEFAULT NULL,
  `phrasetypeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`phraseid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of phrase
-- ----------------------------
INSERT INTO `phrase` VALUES ('2', '12341234', '3');

-- ----------------------------
-- Table structure for phrasetype
-- ----------------------------
DROP TABLE IF EXISTS `phrasetype`;
CREATE TABLE `phrasetype` (
  `phrasetypeid` int(11) NOT NULL AUTO_INCREMENT,
  `phrasetype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`phrasetypeid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of phrasetype
-- ----------------------------
INSERT INTO `phrasetype` VALUES ('2', '分类1');
INSERT INTO `phrasetype` VALUES ('3', '分类2');
INSERT INTO `phrasetype` VALUES ('4', '分类3');
INSERT INTO `phrasetype` VALUES ('5', '分类4');
INSERT INTO `phrasetype` VALUES ('6', '分类5');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `role` char(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123456', '0', null, null, null);
INSERT INTO `user` VALUES ('3', '员工1', '123456', '1', '部门1', '1@qq.com', '15236985631');
INSERT INTO `user` VALUES ('4', '员工2', '123456', '1', '部门12', '2@qq.com', '15236985632');
INSERT INTO `user` VALUES ('5', '员工3', '123456', '1', '部门2', '3@qq.com', '15236985633');
INSERT INTO `user` VALUES ('6', '员工4', '123456', '1', '部门13', '4@qq.com', '15236985634');
INSERT INTO `user` VALUES ('7', '员工5', '123456', '1', '部门14', '5@qq.com', '15236985635');
INSERT INTO `user` VALUES ('8', '员工6', '123456', '1', '部门1', '6@qq.com', '15236985636');
INSERT INTO `user` VALUES ('9', '员工7', '123456', '1', '部门1', '7@qq.com', '15236985637');
INSERT INTO `user` VALUES ('10', '员工8', '123456', '1', '部门15', '8@qq.com', '15236985638');
INSERT INTO `user` VALUES ('11', '员工9', '123456', '1', '部门1', '9@qq.com', '15236985639');
INSERT INTO `user` VALUES ('13', '员工11', '123456', '1', '部门1', '11@qq.com', '15236985611');
INSERT INTO `user` VALUES ('14', '员工12', '123456', '1', '部门1', '12@qq.com', '15236985612');
INSERT INTO `user` VALUES ('15', '员工13', '123456', '1', '部门1', '13@qq.com', '15236985613');
INSERT INTO `user` VALUES ('16', '员工14', '123456', '1', '部门1', '14@qq.com', '15236985614');
INSERT INTO `user` VALUES ('17', '员工15', '123456', '1', '部门1', '15@qq.com', '15236985615');
INSERT INTO `user` VALUES ('18', '员工16', '123456', '1', '部门1', '16@qq.com', '15236985616');
INSERT INTO `user` VALUES ('19', '员工17', '123456', '1', '部门1', '17@qq.com', '15236985617');
INSERT INTO `user` VALUES ('20', '员工18', '123456', '1', '部门1', '18@qq.com', '15236985618');
INSERT INTO `user` VALUES ('21', '员工19', '123456', '1', '部门1', '19@qq.com', '15236985619');
INSERT INTO `user` VALUES ('22', '员工20', '123456', '1', '部门1', '20@qq.com', '15236985620');
