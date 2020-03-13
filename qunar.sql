/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : qunar

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 19:05:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bannerlist
-- ----------------------------
DROP TABLE IF EXISTS `bannerlist`;
CREATE TABLE `bannerlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgsrc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bannerlist
-- ----------------------------
INSERT INTO `bannerlist` VALUES ('2', '/api/images/2.jpeg');
INSERT INTO `bannerlist` VALUES ('3', '/api/images/3.jpg');
INSERT INTO `bannerlist` VALUES ('4', '/api/images/4.jpg');
INSERT INTO `bannerlist` VALUES ('5', '/api/images/5.jpg');
INSERT INTO `bannerlist` VALUES ('6', '/api/images/6.jpg');

-- ----------------------------
-- Table structure for commentlist
-- ----------------------------
DROP TABLE IF EXISTS `commentlist`;
CREATE TABLE `commentlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rate` double(255,0) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `cus_id` varchar(255) DEFAULT NULL,
  `like_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commentlist
-- ----------------------------
INSERT INTO `commentlist` VALUES ('36', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', 'test', '12', '1234', '22', '1', '6');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('22', 'test', '13426451384', null, null, null, null, '123123', null, null);
INSERT INTO `customers` VALUES ('23', '123', '13684561532', null, null, null, null, '123123', null, null);
INSERT INTO `customers` VALUES ('24', '测试', '15498641246', null, null, null, null, '123123', null, null);

-- ----------------------------
-- Table structure for hotcities
-- ----------------------------
DROP TABLE IF EXISTS `hotcities`;
CREATE TABLE `hotcities` (
  `spell` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=853 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotcities
-- ----------------------------
INSERT INTO `hotcities` VALUES ('beijing', '成华区', '1');
INSERT INTO `hotcities` VALUES ('shanghai', '上海', '29');
INSERT INTO `hotcities` VALUES ('suzhou', '苏州', '305');
INSERT INTO `hotcities` VALUES ('hangzhou', '杭州', '331');
INSERT INTO `hotcities` VALUES ('xiamen', '厦门', '393');
INSERT INTO `hotcities` VALUES ('guangzhou', '广州', '581');
INSERT INTO `hotcities` VALUES ('shenzhen', '深圳', '584');
INSERT INTO `hotcities` VALUES ('guilin', '桂林', '617');
INSERT INTO `hotcities` VALUES ('sanya', '三亚', '642');
INSERT INTO `hotcities` VALUES ('chengdu', '成都', '651');
INSERT INTO `hotcities` VALUES ('xian', '西安', '791');
INSERT INTO `hotcities` VALUES ('hk', '香港', '852');

-- ----------------------------
-- Table structure for hotlist
-- ----------------------------
DROP TABLE IF EXISTS `hotlist`;
CREATE TABLE `hotlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgsrc` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double(11,0) DEFAULT NULL,
  `top1` varchar(255) DEFAULT NULL,
  `top2` varchar(255) DEFAULT NULL,
  `top3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotlist
-- ----------------------------
INSERT INTO `hotlist` VALUES ('1', '/api/images/hot1.jpg', '长隆水上乐园', '97', '1', null, null);
INSERT INTO `hotlist` VALUES ('2', '/api/images/hot2.jpg', '长隆野生动物世界', '171', null, '1', null);
INSERT INTO `hotlist` VALUES ('3', '/api/images/hot3.jpg', '长隆欢乐世界', '158', null, null, '1');
INSERT INTO `hotlist` VALUES ('4', '/api/images/hot4.jpg', '长隆国际大马戏剧院', '314', null, null, null);
INSERT INTO `hotlist` VALUES ('5', '/api/images/hot5.jpg', '珠江夜游', '178', null, null, null);
INSERT INTO `hotlist` VALUES ('6', '/api/images/hot6.jpg', '广州长隆旅游度假区', '69', null, null, null);
INSERT INTO `hotlist` VALUES ('7', '/api/images/hot7.jpg', '广州塔', '75', null, null, null);
INSERT INTO `hotlist` VALUES ('8', '/api/images/hot8.png', '广东科学中心', '30', null, null, null);
INSERT INTO `hotlist` VALUES ('9', '/api/images/hot9.jpg', '白水寨', '49', null, null, null);
INSERT INTO `hotlist` VALUES ('10', '/api/images/hot10.jpg', '广州正佳极地海洋世界', '49', null, null, null);

-- ----------------------------
-- Table structure for iconsmenulist
-- ----------------------------
DROP TABLE IF EXISTS `iconsmenulist`;
CREATE TABLE `iconsmenulist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgsrc` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iconsmenulist
-- ----------------------------
INSERT INTO `iconsmenulist` VALUES ('1', '/api/images/i1.png', '景点门票');
INSERT INTO `iconsmenulist` VALUES ('2', '/api/images/i2.png', '必游榜单');
INSERT INTO `iconsmenulist` VALUES ('4', '/api/images/i4.png', '公园');
INSERT INTO `iconsmenulist` VALUES ('5', '/api/images/i5.png', '游船游艇');
INSERT INTO `iconsmenulist` VALUES ('10', '/api/images/i10.png', '全部玩乐');

-- ----------------------------
-- Table structure for likelist
-- ----------------------------
DROP TABLE IF EXISTS `likelist`;
CREATE TABLE `likelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgsrc` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `star` int(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `price` double(11,0) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `anytime` varchar(255) DEFAULT NULL,
  `i_menu_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `imgCover` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `top` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likelist
-- ----------------------------
INSERT INTO `likelist` VALUES ('1', '/api/images/hot6.jpg', '成都旅游度假区', '5', '42026', '69', '成都', 'true', '1', '成都旅游度假区', '/api/images/detail/d1.jpg', '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', '公告1', '1234', '9', '2019-04-15 00:02:42');
INSERT INTO `posts` VALUES ('test', '公告一', '123啥都好看', '10', '2019-04-15 20:36:13');
INSERT INTO `posts` VALUES ('测试', '公告二', '公告内容', '11', '2019-04-16 22:26:11');

-- ----------------------------
-- Table structure for v_order
-- ----------------------------
DROP TABLE IF EXISTS `v_order`;
CREATE TABLE `v_order` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `num` double(10,0) DEFAULT NULL,
  `like_name` varchar(255) DEFAULT NULL,
  `cus_id` int(255) DEFAULT NULL,
  `like_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_order
-- ----------------------------
INSERT INTO `v_order` VALUES ('6', '69', '河南长隆旅游度假区', '22', '1');
INSERT INTO `v_order` VALUES ('7', '69', '河南长隆旅游度假区', '24', '1');
INSERT INTO `v_order` VALUES ('8', '69', '成都旅游度假区', '24', '1');
INSERT INTO `v_order` VALUES ('9', '69', '成都旅游度假区', '22', '1');
INSERT INTO `v_order` VALUES ('10', '69', '成都旅游度假区', '22', '1');
INSERT INTO `v_order` VALUES ('11', '69', '成都旅游度假区', '22', '1');
INSERT INTO `v_order` VALUES ('12', '69', '成都旅游度假区', '22', '1');

-- ----------------------------
-- Table structure for weekendlist
-- ----------------------------
DROP TABLE IF EXISTS `weekendlist`;
CREATE TABLE `weekendlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgsrc` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weekendlist
-- ----------------------------
INSERT INTO `weekendlist` VALUES ('1', '/api/images/weekend1.jpg', '广州必游TOP10', '感受现代与传统相融合的广州');
INSERT INTO `weekendlist` VALUES ('2', '/api/images/weekend2.jpg', '暑期玩转粤港澳', '这个假期开启最高大上的国内游');
INSERT INTO `weekendlist` VALUES ('3', '/api/images/weekend3.jpg', '签到广州长隆', '来广州来长隆，就对了，就够了~');
INSERT INTO `weekendlist` VALUES ('4', '/api/images/weekend4.jpg', '自然户外好去处', '快快来到户外，感受花城的魅力');
INSERT INTO `weekendlist` VALUES ('5', '/api/images/weekend5.jpg', '开启激情逐浪之旅', '畅爽一夏从这里开始！');
