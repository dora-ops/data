/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : tranin

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 19:07:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` bigint(32) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123');

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` bigint(32) NOT NULL,
  `carnum` varchar(255) DEFAULT NULL,
  `beginsite` varchar(255) DEFAULT NULL,
  `endsite` varchar(255) DEFAULT NULL,
  `begindate` varchar(255) DEFAULT NULL,
  `enddate` varchar(255) DEFAULT NULL,
  `sumcount` int(11) DEFAULT NULL COMMENT '总票数',
  `state` varchar(50) DEFAULT NULL,
  `shengyu` int(11) DEFAULT NULL COMMENT '剩余数',
  `price` double DEFAULT NULL COMMENT '基础价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('149534207311229', null, null, null, null, null, null, '2', null, null);
INSERT INTO `car` VALUES ('149535421097329', 'T244', '齐齐哈尔', '合肥', '07:00', '23:57', '1000', '1', '990', '30');
INSERT INTO `car` VALUES ('152799687611844', 'T55', '杭州', '上海', '11:34', '11:30', '600', '1', '600', null);
INSERT INTO `car` VALUES ('152837405323771', 'T551', '杭州', '北京', '19:00', '21:00', '900', '1', '900', null);

-- ----------------------------
-- Table structure for chexiang
-- ----------------------------
DROP TABLE IF EXISTS `chexiang`;
CREATE TABLE `chexiang` (
  `id` bigint(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `carid` bigint(32) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `carnum` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chexiang
-- ----------------------------
INSERT INTO `chexiang` VALUES ('149536154488771', '02', '149535421097329', '1', 'T244');
INSERT INTO `chexiang` VALUES ('149536392982906', '01', '149535421097329', '2', 'T244');
INSERT INTO `chexiang` VALUES ('149555864620785', '03', '149535421097329', '3', 'T244');
INSERT INTO `chexiang` VALUES ('149555865101481', '04', '149535421097329', '1', 'T244');
INSERT INTO `chexiang` VALUES ('149555866596114', '05', '149535421097329', '2', 'T244');
INSERT INTO `chexiang` VALUES ('149555867309771', '06', '149535421097329', '3', 'T244');
INSERT INTO `chexiang` VALUES ('149555868280179', '07', '149535421097329', '1', 'T244');
INSERT INTO `chexiang` VALUES ('149555868747861', '08', '149535421097329', '1', 'T244');
INSERT INTO `chexiang` VALUES ('149555869627832', '09', '149535421097329', '1', 'T244');
INSERT INTO `chexiang` VALUES ('149555870294430', '10', '149535421097329', '3', 'T244');
INSERT INTO `chexiang` VALUES ('152820393019854', '11', '149535421097329', '3', 'T244');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `sendtime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', 'admin', '爱护公物人人有责！', '爱护公物人人有责123', '2009-12-20 20:06:39');
INSERT INTO `notice` VALUES ('2', 'admin', '局域网内有人中毒，请注册杀毒！', '局域网内有人中毒，请注册杀毒！', '2009-12-20 20:06:56');
INSERT INTO `notice` VALUES ('3', 'admin', '明后天放假通知！', '明后天放假通知！', '2009-12-20 20:07:22');
INSERT INTO `notice` VALUES ('4', 'admin', 'sanqing发公告', 'sanqing发公告sanqing发公告sanqing发公告', '2010-02-01 16:40:35');
INSERT INTO `notice` VALUES ('5', 'admin', '公告测试标题', '公告测试内容', '2018-06-04 22:46:16');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(32) NOT NULL,
  `userid` bigint(32) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `beginsite` varchar(255) DEFAULT NULL,
  `endsite` varchar(255) DEFAULT NULL,
  `begindate` varchar(255) DEFAULT NULL,
  `enddate` varchar(255) DEFAULT NULL,
  `carnum` varchar(255) DEFAULT NULL COMMENT '车次',
  `chexiangnum` varchar(255) DEFAULT NULL COMMENT '车厢',
  `type` varchar(255) DEFAULT NULL COMMENT '席位类型',
  `xiweinum` varchar(255) DEFAULT NULL COMMENT '座位号',
  `price` double DEFAULT NULL COMMENT '价格',
  `credate` datetime DEFAULT NULL COMMENT '时间',
  `state` varchar(255) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('149555984447094', '1', 'cxx', '齐齐哈尔', '扶余', '07:00', '11:46', 'T244', '02', '1', '窗01', '120', '2017-05-24 01:17:27', '5');
INSERT INTO `orders` VALUES ('149556021782443', '1', 'cxx', '肇东', '唐山', '08:55', '21:48', 'T244', '01', '2', '上铺01', '270', '2017-05-24 01:23:37', '3');
INSERT INTO `orders` VALUES ('149556023651737', '1', 'cxx', '哈尔滨', '合肥', '10:20', '23:57', 'T244', '03', '3', '上01', '360', '2017-05-24 01:23:56', '2');
INSERT INTO `orders` VALUES ('149556029380080', '1', 'cxx', '齐齐哈尔', '沈阳北', '07:00', '15:47', 'T244', '02', '1', '中02', '180', '2017-05-24 01:24:53', '4');
INSERT INTO `orders` VALUES ('149556031647806', '1', 'cxx', '长春', '合肥', '13:46', '23:57', 'T244', '02', '1', '过03', '120', '2017-05-24 01:25:16', '3');
INSERT INTO `orders` VALUES ('149556044490352', '1', 'cxx', '齐齐哈尔', '大庆西', '07:00', '08:30', 'T244', '01', '2', '中铺02', '45', '2017-05-24 01:27:24', '3');
INSERT INTO `orders` VALUES ('149556827817789', '1', 'cxx', '肇东', '长春', '08:55', '13:46', 'T244', '02', '1', '窗01', '90', '2017-05-24 03:37:58', '2');
INSERT INTO `orders` VALUES ('149561326858761', '1', 'cxx', '哈尔滨', '扶余', '10:20', '11:46', 'T244', '02', '1', '中02', '30', '2017-05-24 16:07:48', '4');
INSERT INTO `orders` VALUES ('149561370190158', '1', 'cxx', '哈尔滨', '唐山', '10:20', '21:48', 'T244', '02', '1', '窗04', '150', '2017-05-24 16:15:01', '1');
INSERT INTO `orders` VALUES ('152799626186012', '1', 'cxx123', '大庆西', '唐山', '08:30', '21:48', 'T244', '03', '3', '下02', '420', '2018-06-03 11:24:21', '1');
INSERT INTO `orders` VALUES ('152837579771778', '1', 'cxx123', '大庆西', '合肥', '08:30', '23:57', 'T244', '03', '3', '上03', '480', '2018-06-07 20:49:57', '1');
INSERT INTO `orders` VALUES ('152860596733060', '1', 'cxx123', '齐齐哈尔', '唐山', '07:00', '21:48', 'T244', '01', '2', '上铺01', '84', '2018-06-10 12:46:09', '1');
INSERT INTO `orders` VALUES ('152860651762200', '1', 'cxx123', '齐齐哈尔', '大庆西', '07:00', '08:30', 'T244', '02', '1', '窗09', '28', '2018-06-10 12:55:17', '1');

-- ----------------------------
-- Table structure for site
-- ----------------------------
DROP TABLE IF EXISTS `site`;
CREATE TABLE `site` (
  `id` bigint(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `cardid` bigint(32) DEFAULT NULL,
  `ordernum` int(11) DEFAULT NULL COMMENT '站点排序号',
  `sitedaotime` varchar(255) DEFAULT NULL,
  `sitetingtime` varchar(255) DEFAULT NULL,
  `sitekaitime` varchar(2558) DEFAULT NULL,
  `price` double(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of site
-- ----------------------------
INSERT INTO `site` VALUES ('149537048792238', '齐齐哈尔', '149535421097329', '1', '07:00', '1', '07:01', '0.00');
INSERT INTO `site` VALUES ('149553623559396', '大庆西', '149535421097329', '2', '08:30', '5', '08:35', '40.00');
INSERT INTO `site` VALUES ('149553630007134', '肇东', '149535421097329', '3', '08:55', '10', '09:05', '50.00');
INSERT INTO `site` VALUES ('149553636712175', '哈尔滨', '149535421097329', '4', '10:20', '25', '10:45', '60.00');
INSERT INTO `site` VALUES ('149553639915174', '扶余', '149535421097329', '5', '11:46', '4', '11:50', '70.00');
INSERT INTO `site` VALUES ('149553644045934', '长春', '149535421097329', '6', '13:46', '9', '13:55', '80.00');
INSERT INTO `site` VALUES ('149553647402643', '沈阳北', '149535421097329', '7', '15:47', '8', '15:55', '90.00');
INSERT INTO `site` VALUES ('149553651365175', '秦皇岛', '149535421097329', '8', '18:48', '7', '18:55', '100.00');
INSERT INTO `site` VALUES ('149553654277446', '唐山', '149535421097329', '9', '21:48', '7', '21:55', '110.00');
INSERT INTO `site` VALUES ('149553659713963', '合肥', '149535421097329', '10', '23:57', '10', '23:57', '120.00');
INSERT INTO `site` VALUES ('152799675093843', '站点一', '149534207311229', '1', '20:45', '30', '12:00', '130.00');
INSERT INTO `site` VALUES ('152819765648090', 'ceshi2', '149535421097329', '13', '18:01', '1', '18:02', '150.00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(32) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `card` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'cdd', '123', '15866998878', '34012119988754479', '148775586@qq.com', 'cxx123');
INSERT INTO `user` VALUES ('149556854365940', 'cyy', '123', '15877478874', '34012155687745', '14788556688@qq.com', '程某某');

-- ----------------------------
-- Table structure for xiwei
-- ----------------------------
DROP TABLE IF EXISTS `xiwei`;
CREATE TABLE `xiwei` (
  `id` bigint(32) NOT NULL,
  `num` varchar(255) DEFAULT NULL,
  `chexiangid` bigint(32) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `chexiangname` varchar(255) DEFAULT NULL,
  `carnum` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xiwei
-- ----------------------------
INSERT INTO `xiwei` VALUES ('149536371536551', '窗03', '149536154488771', '0', '1', '02', 'T244');
INSERT INTO `xiwei` VALUES ('149555881494857', '中02', '149536154488771', '0', '1', '02', 'T244');
INSERT INTO `xiwei` VALUES ('149555882252321', '过03', '149536154488771', '0', '1', '02', 'T244');
INSERT INTO `xiwei` VALUES ('149555883359746', '窗04', '149536154488771', null, '1', '02', 'T244');
INSERT INTO `xiwei` VALUES ('149555885482297', '中05', '149536154488771', '0', '1', '02', 'T244');
INSERT INTO `xiwei` VALUES ('149555886175798', '过06', '149536154488771', '0', '1', '02', 'T244');
INSERT INTO `xiwei` VALUES ('149555893412965', '上铺01', '149536392982906', null, '2', '01', 'T244');
INSERT INTO `xiwei` VALUES ('149555894507490', '中铺02', '149536392982906', null, '2', '01', 'T244');
INSERT INTO `xiwei` VALUES ('149555896286144', '下铺03', '149536392982906', null, '2', '01', 'T244');
INSERT INTO `xiwei` VALUES ('149555899222082', '上铺04', '149536392982906', null, '2', '01', 'T244');
INSERT INTO `xiwei` VALUES ('149555900282826', '中铺05', '149536392982906', null, '2', '01', 'T244');
INSERT INTO `xiwei` VALUES ('149555901130812', '下铺06', '149536392982906', null, '2', '01', 'T244');
INSERT INTO `xiwei` VALUES ('149555933703202', '上01', '149555864620785', null, '3', '03', 'T244');
INSERT INTO `xiwei` VALUES ('149555934508235', '下02', '149555864620785', null, '3', '03', 'T244');
INSERT INTO `xiwei` VALUES ('149555935351949', '上03', '149555864620785', null, '3', '03', 'T244');
INSERT INTO `xiwei` VALUES ('149555936204658', '下04', '149555864620785', null, '3', '03', 'T244');
INSERT INTO `xiwei` VALUES ('149555937133189', '上05', '149555864620785', null, '3', '03', 'T244');
INSERT INTO `xiwei` VALUES ('149555937758422', '下06', '149555864620785', null, '3', '03', 'T244');
INSERT INTO `xiwei` VALUES ('152799694491195', '窗09', '149536154488771', '0', '1', '02', 'T244');
