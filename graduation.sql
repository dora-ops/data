/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : graduation

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 18:58:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('1', 'admin', 'admin', '123123');

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `peopleQTY` int(11) DEFAULT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `progress` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES ('14', '课程111的班级1', '课程111', '2019-04-03', '2019-04-30', '9', 'teahcer1', '[34]', null);
INSERT INTO `classes` VALUES ('18', '班级121', '课程111', '2019-04-11', '2019-04-30', '15', '王', '[35]', null);

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `classQTY` int(11) DEFAULT NULL,
  `ifSale` varchar(1) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `classes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES ('9', '课程111', '5', '1', '1230', '课程简介1', '[14,15,16,17,18]');
INSERT INTO `courses` VALUES ('10', '测试老师', '0', '1', '560', '哈哈哈哈哈哈哈哈哈哈哈哈哈\n', null);
INSERT INTO `courses` VALUES ('11', '测试数量', '0', '0', '111', '0', null);

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `ifBuy` varchar(255) DEFAULT NULL,
  `courses` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `classes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('21', 'admin', '13131313131', '1', '[0,9]', null, null, 'admin', '32', '[14,15,17,16,18]');

-- ----------------------------
-- Table structure for identity
-- ----------------------------
DROP TABLE IF EXISTS `identity`;
CREATE TABLE `identity` (
  `id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of identity
-- ----------------------------
INSERT INTO `identity` VALUES ('1', 'admin');
INSERT INTO `identity` VALUES ('2', 'sale');
INSERT INTO `identity` VALUES ('3', 'study');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `uid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', '帖子1', '暗杀回到房间安徽省大家发十九分看阿萨大；开发和速度发哈岁的发啊啊；阿斯蒂芬；的v', '1', '2019-03-26 15:57:30');
INSERT INTO `posts` VALUES ('9', '123', '1234', '2', '2019-04-05 19:28:45');
INSERT INTO `posts` VALUES ('9', '123', '23das123', '3', '2019-04-05 19:50:23');
INSERT INTO `posts` VALUES ('123', '测名字', 'name123', '4', '2019-04-10 22:53:32');
INSERT INTO `posts` VALUES ('000', 'qwe', 'qwe', '5', '2019-04-11 15:28:45');
INSERT INTO `posts` VALUES ('000', '高度', '高度', '6', '2019-04-11 15:30:17');
INSERT INTO `posts` VALUES ('000', '空袭', '111', '7', '2019-04-11 15:34:39');
INSERT INTO `posts` VALUES ('000', '倒转', 'reserve（）', '8', '2019-04-11 15:45:20');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filePath` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('30', 'E:\\graduation_design_front_sit\\server\\public\\ec5bf110-5c23-11e9-a92f-b5207def3019.mp4', 'ec5bf110-5c23-11e9-a92f-b5207def3019.mp4', 'QQ视频20190411143443.mp4');
INSERT INTO `resource` VALUES ('31', 'E:\\graduation_design_front_sit\\server\\public\\35f71a50-5c26-11e9-be96-9d06db63761a.mp4', '35f71a50-5c26-11e9-be96-9d06db63761a.mp4', 'QQ视频20190411143443.mp4');
INSERT INTO `resource` VALUES ('32', 'E:\\graduation_design_front_sit\\server\\public\\71aa45f0-5c34-11e9-adfc-cfdef25ace2c.png', '71aa45f0-5c34-11e9-adfc-cfdef25ace2c.png', 'webpack.png');
INSERT INTO `resource` VALUES ('33', 'e:\\study\\graduation_design_front_sit\\server\\public\\196d07c0-5c47-11e9-8b33-1b9608bd0bb3.mp4', '196d07c0-5c47-11e9-8b33-1b9608bd0bb3.mp4', '1.mp4');
INSERT INTO `resource` VALUES ('34', 'e:\\study\\graduation_design_front_sit\\server\\public\\0cf67570-5c48-11e9-8b33-1b9608bd0bb3.mp4', '0cf67570-5c48-11e9-8b33-1b9608bd0bb3.mp4', '1.mp4');
INSERT INTO `resource` VALUES ('35', 'e:\\study\\graduation_design_front_sit\\server\\public\\24a9bbb0-5c60-11e9-aa65-890f80028ab7.mp4', '24a9bbb0-5c60-11e9-aa65-890f80028ab7.mp4', '0cf67570-5c48-11e9-8b33-1b9608bd0bb3.mp4');
INSERT INTO `resource` VALUES ('36', 'E:\\node相关\\node后台服务\\server\\public\\8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', '8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', '1dfbf610-5b94-11e9-a9cb-a70754482d5d.jpg');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `name` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('王', '9', '1');
INSERT INTO `teacher` VALUES ('李11', '10', '2');
