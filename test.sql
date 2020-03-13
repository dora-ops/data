/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 19:06:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `blogId` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `text` longtext,
  `md` longtext,
  `comment` varchar(255) DEFAULT NULL,
  `star` int(10) DEFAULT NULL,
  PRIMARY KEY (`blogId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', 'root', '自己博客文章', '', '<p>Hello World</p>\n<p>123</p>\n', 'Hello World\n\n123', null, null);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `commentId` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(255) DEFAULT NULL,
  `blogId` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`commentId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', '1', '1234');

-- ----------------------------
-- Table structure for hash
-- ----------------------------
DROP TABLE IF EXISTS `hash`;
CREATE TABLE `hash` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `hash` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hash
-- ----------------------------
INSERT INTO `hash` VALUES ('1', '1', '1', '1');

-- ----------------------------
-- Table structure for leaveword
-- ----------------------------
DROP TABLE IF EXISTS `leaveword`;
CREATE TABLE `leaveword` (
  `lwId` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` int(30) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lwId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of leaveword
-- ----------------------------
INSERT INTO `leaveword` VALUES ('1', 'root', '访问', '1524244776', '1234');
INSERT INTO `leaveword` VALUES ('2', 'root', '访问', '1524244781', '1234');
INSERT INTO `leaveword` VALUES ('3', 'root', '访问', '1524244784', '1234');

-- ----------------------------
-- Table structure for list_t
-- ----------------------------
DROP TABLE IF EXISTS `list_t`;
CREATE TABLE `list_t` (
  `id` int(11) NOT NULL,
  `id_store` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY LIST (id_store)
(PARTITION p0 VALUES IN (1,2,3) ENGINE = InnoDB,
 PARTITION p1 VALUES IN (4,9,10) ENGINE = InnoDB) */;

-- ----------------------------
-- Records of list_t
-- ----------------------------

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `userId` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `visitNum` int(10) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('1', 'root', '123456', null, '5');
INSERT INTO `person` VALUES ('2', 'test', '123456', null, '6');

-- ----------------------------
-- Table structure for range_t
-- ----------------------------
DROP TABLE IF EXISTS `range_t`;
CREATE TABLE `range_t` (
  `id` int(11) NOT NULL,
  `id_store` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (id_store)
(PARTITION p0 VALUES LESS THAN (10) ENGINE = InnoDB,
 PARTITION p1 VALUES LESS THAN (20) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN (30) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN (40) ENGINE = InnoDB) */;

-- ----------------------------
-- Records of range_t
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dob` datetime DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `mobno` bigint(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '2015-01-15 02:09:32', 'hello@gmail.com', '2324', 'Tarunkumar', 'hellohello');

-- ----------------------------
-- Table structure for tab_hash
-- ----------------------------
DROP TABLE IF EXISTS `tab_hash`;
CREATE TABLE `tab_hash` (
  `id` int(11) NOT NULL,
  `id_store` int(11) DEFAULT NULL,
  KEY `index_id_store` (`id_store`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY HASH (id_store)
PARTITIONS 4 */;

-- ----------------------------
-- Records of tab_hash
-- ----------------------------
INSERT INTO `tab_hash` VALUES ('1', '100');
INSERT INTO `tab_hash` VALUES ('4', '104');
INSERT INTO `tab_hash` VALUES ('1', '101');
INSERT INTO `tab_hash` VALUES ('2', '102');
INSERT INTO `tab_hash` VALUES ('3', '103');

-- ----------------------------
-- Table structure for visit
-- ----------------------------
DROP TABLE IF EXISTS `visit`;
CREATE TABLE `visit` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `time` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of visit
-- ----------------------------
INSERT INTO `visit` VALUES ('1', 'root', '1524244384');
INSERT INTO `visit` VALUES ('2', 'root', '1524244369');
INSERT INTO `visit` VALUES ('3', 'root', '1526709241');
INSERT INTO `visit` VALUES ('4', 'root', '1526795647');
INSERT INTO `visit` VALUES ('5', 'root', '1526536455');
INSERT INTO `visit` VALUES ('6', 'root', '1526536455');
INSERT INTO `visit` VALUES ('7', 'root', '1526536455');
INSERT INTO `visit` VALUES ('8', 'root', '1526536456');
INSERT INTO `visit` VALUES ('9', 'root', '1526536456');
INSERT INTO `visit` VALUES ('10', 'root', '1526536456');
