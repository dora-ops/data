/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : illustrator

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 18:58:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for commentlist
-- ----------------------------
DROP TABLE IF EXISTS `commentlist`;
CREATE TABLE `commentlist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cus_nickname` varchar(255) NOT NULL COMMENT '用户名',
  `comment` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `cus_id` int(11) NOT NULL COMMENT '评论用户id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pub_id` int(11) NOT NULL COMMENT '发布id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of commentlist
-- ----------------------------
INSERT INTO `commentlist` VALUES ('1', '123', '123123', '1', '2019-05-01 19:07:10', '3');
INSERT INTO `commentlist` VALUES ('2', '1234', '1234123', '6', '2019-05-02 00:32:54', '7');
INSERT INTO `commentlist` VALUES ('3', '1234', '1234123', '6', '2019-05-02 00:32:57', '7');
INSERT INTO `commentlist` VALUES ('4', '1234', '1234123', '6', '2019-05-02 00:33:01', '7');
INSERT INTO `commentlist` VALUES ('5', '1234', '1234', '6', '2019-05-02 00:56:43', '4');
INSERT INTO `commentlist` VALUES ('6', '123456', '123124213123', '7', '2019-05-08 22:23:03', '1');
INSERT INTO `commentlist` VALUES ('7', '123', '123', '1', '2019-05-08 22:32:17', '2');

-- ----------------------------
-- Table structure for pub_content
-- ----------------------------
DROP TABLE IF EXISTS `pub_content`;
CREATE TABLE `pub_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `description` varchar(255) DEFAULT NULL COMMENT '介绍',
  `property` varchar(20) DEFAULT NULL COMMENT '属性',
  `tag` varchar(20) DEFAULT NULL COMMENT '标签',
  `res_id` varchar(20) DEFAULT NULL COMMENT '资源id',
  `cus_id` varchar(255) DEFAULT NULL COMMENT '用户id',
  `flag` int(1) DEFAULT NULL COMMENT '是否打水印',
  `url` varchar(255) DEFAULT NULL,
  `like_count` int(11) NOT NULL DEFAULT '0',
  `com_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pub_content
-- ----------------------------
INSERT INTO `pub_content` VALUES ('1', '123', '2019-05-08 22:08:10', '4213', '1', '[\"12\",\"2\"]', '[74,75]', '1', '0', 'http://localhost:3000/a7d558b0-719a-11e9-8cd9-f7a8dda3d556.jpg', '1', '1');
INSERT INTO `pub_content` VALUES ('2', '1231244123', '2019-05-08 22:22:44', '123412321', '1', '[\"1\",\"2\",\"e\"]', '[79,80]', '7', '0', 'http://localhost:3000/b52b6e30-719c-11e9-8cd9-f7a8dda3d556.jpg', '2', '1');
INSERT INTO `pub_content` VALUES ('3', '作品发布', '2019-05-25 12:07:41', '1234123', '1', '[\"1\",\"2\",\"3\"]', '[81]', '1', '0', 'http://localhost:3000/87388220-7ea2-11e9-9f08-3747062f57c8.jpg', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('57', 'E:\\node相关\\node后台服务\\server\\public\\52647540-6bec-11e9-bac6-1ddae2ac3cfc.jpg', '52647540-6bec-11e9-bac6-1ddae2ac3cfc.jpg', '2e35f3b0-5d2d-11e9-9ca9-9354f3217b2f.jpg');
INSERT INTO `resource` VALUES ('58', 'E:\\node相关\\node后台服务\\server\\public\\59a80bf0-6bec-11e9-bac6-1ddae2ac3cfc.jpg', '59a80bf0-6bec-11e9-bac6-1ddae2ac3cfc.jpg', '03e7f4d0-5d2f-11e9-9ca9-9354f3217b2f.jpg');
INSERT INTO `resource` VALUES ('59', 'E:\\node相关\\node后台服务\\server\\public\\eadbc290-6bee-11e9-bac6-1ddae2ac3cfc.jpg', 'eadbc290-6bee-11e9-bac6-1ddae2ac3cfc.jpg', '2e35f3b0-5d2d-11e9-9ca9-9354f3217b2f.jpg');
INSERT INTO `resource` VALUES ('60', 'E:\\node相关\\node后台服务\\server\\public\\7d4c29d0-6bef-11e9-bac6-1ddae2ac3cfc.jpg', '7d4c29d0-6bef-11e9-bac6-1ddae2ac3cfc.jpg', '2e35f3b0-5d2d-11e9-9ca9-9354f3217b2f.jpg');
INSERT INTO `resource` VALUES ('61', 'E:\\node相关\\node后台服务\\server\\public\\78443830-6c24-11e9-bac6-1ddae2ac3cfc.jpg', '78443830-6c24-11e9-bac6-1ddae2ac3cfc.jpg', '30da0fb0-68b4-11e9-82be-33a27ce45db1.jpg');
INSERT INTO `resource` VALUES ('62', 'E:\\node相关\\node后台服务\\server\\public\\dc3cdef0-6c24-11e9-bac6-1ddae2ac3cfc.jpg', 'dc3cdef0-6c24-11e9-bac6-1ddae2ac3cfc.jpg', '03e7f4d0-5d2f-11e9-9ca9-9354f3217b2f.jpg');
INSERT INTO `resource` VALUES ('63', 'E:\\node相关\\node后台服务\\server\\public\\e0166fa0-6c24-11e9-bac6-1ddae2ac3cfc.jpg', 'e0166fa0-6c24-11e9-bac6-1ddae2ac3cfc.jpg', '78443830-6c24-11e9-bac6-1ddae2ac3cfc.jpg');
INSERT INTO `resource` VALUES ('64', 'E:\\node相关\\node后台服务\\server\\public\\fcee7820-6c24-11e9-bac6-1ddae2ac3cfc.jpg', 'fcee7820-6c24-11e9-bac6-1ddae2ac3cfc.jpg', '78443830-6c24-11e9-bac6-1ddae2ac3cfc.jpg');
INSERT INTO `resource` VALUES ('65', 'E:\\node相关\\node后台服务\\server\\public\\ff899560-6c24-11e9-bac6-1ddae2ac3cfc.jpg', 'ff899560-6c24-11e9-bac6-1ddae2ac3cfc.jpg', '7d4c29d0-6bef-11e9-bac6-1ddae2ac3cfc.jpg');
INSERT INTO `resource` VALUES ('66', 'E:\\node相关\\node后台服务\\server\\public\\ff9e82e0-6ca6-11e9-8978-715f095c020c.jpg', 'ff9e82e0-6ca6-11e9-8978-715f095c020c.jpg', '2e35f3b0-5d2d-11e9-9ca9-9354f3217b2f.jpg');
INSERT INTO `resource` VALUES ('67', 'E:\\node相关\\node后台服务\\server\\public\\f8f00ad0-6ca7-11e9-8978-715f095c020c.jpg', 'f8f00ad0-6ca7-11e9-8978-715f095c020c.jpg', '2e35f3b0-5d2d-11e9-9ca9-9354f3217b2f.jpg');
INSERT INTO `resource` VALUES ('68', 'E:\\node相关\\node后台服务\\server\\public\\13fc7b10-6ca8-11e9-8978-715f095c020c.jpg', '13fc7b10-6ca8-11e9-8978-715f095c020c.jpg', '2e35f3b0-5d2d-11e9-9ca9-9354f3217b2f.jpg');
INSERT INTO `resource` VALUES ('69', 'E:\\node相关\\node后台服务\\server\\public\\a347fba0-6ca8-11e9-8978-715f095c020c.jpg', 'a347fba0-6ca8-11e9-8978-715f095c020c.jpg', '2e35f3b0-5d2d-11e9-9ca9-9354f3217b2f.jpg');
INSERT INTO `resource` VALUES ('70', 'E:\\node相关\\node后台服务\\server\\public\\bc52cf80-6ca8-11e9-8978-715f095c020c.jpg', 'bc52cf80-6ca8-11e9-8978-715f095c020c.jpg', '2e35f3b0-5d2d-11e9-9ca9-9354f3217b2f.jpg');
INSERT INTO `resource` VALUES ('71', 'E:\\node相关\\node后台服务\\server\\public\\d0d8de90-6ca8-11e9-8978-715f095c020c.jpg', 'd0d8de90-6ca8-11e9-8978-715f095c020c.jpg', '13fc7b10-6ca8-11e9-8978-715f095c020c.jpg');
INSERT INTO `resource` VALUES ('72', 'E:\\node相关\\node后台服务\\server\\public\\2f7752a0-6caa-11e9-8978-715f095c020c.jpg', '2f7752a0-6caa-11e9-8978-715f095c020c.jpg', '6abf1c30-682c-11e9-a5a7-8f3b4914626a.jpg');
INSERT INTO `resource` VALUES ('73', 'E:\\node相关\\node后台服务\\server\\public\\71e277f0-6cd2-11e9-8978-715f095c020c.jpg', '71e277f0-6cd2-11e9-8978-715f095c020c.jpg', '2f7752a0-6caa-11e9-8978-715f095c020c.jpg');
INSERT INTO `resource` VALUES ('74', 'E:\\node相关\\node后台服务\\server\\public\\a7d558b0-719a-11e9-8cd9-f7a8dda3d556.jpg', 'a7d558b0-719a-11e9-8cd9-f7a8dda3d556.jpg', 'QQ浏览器截图_20180421012224_E4D1588961FC4fa9863E6D865ADCECE5.jpg');
INSERT INTO `resource` VALUES ('75', 'E:\\node相关\\node后台服务\\server\\public\\aa3c1f80-719a-11e9-8cd9-f7a8dda3d556.jpg', 'aa3c1f80-719a-11e9-8cd9-f7a8dda3d556.jpg', 'QQ浏览器截图_20180421012243_FDDE36E0CD834fe192FC5845C8EE17FF.jpg');
INSERT INTO `resource` VALUES ('76', 'E:\\node相关\\node后台服务\\server\\public\\d4cc6ca0-719a-11e9-8cd9-f7a8dda3d556.jpg', 'd4cc6ca0-719a-11e9-8cd9-f7a8dda3d556.jpg', 'QQ浏览器截图_20180429235258_EDEB3315DC944b28A5A93EBD3BCE652D.jpg');
INSERT INTO `resource` VALUES ('77', 'E:\\node相关\\node后台服务\\server\\public\\59ef10e0-719b-11e9-8cd9-f7a8dda3d556.jpg', '59ef10e0-719b-11e9-8cd9-f7a8dda3d556.jpg', 'QQ浏览器截图_20180502221122_63D4AD3EC4C447899DFF8BD81C2F0A28.jpg');
INSERT INTO `resource` VALUES ('78', 'E:\\node相关\\node后台服务\\server\\public\\a8f11700-719c-11e9-8cd9-f7a8dda3d556.jpg', 'a8f11700-719c-11e9-8cd9-f7a8dda3d556.jpg', 'QQ浏览器截图_20180421012224_E4D1588961FC4fa9863E6D865ADCECE5.jpg');
INSERT INTO `resource` VALUES ('79', 'E:\\node相关\\node后台服务\\server\\public\\b52b6e30-719c-11e9-8cd9-f7a8dda3d556.jpg', 'b52b6e30-719c-11e9-8cd9-f7a8dda3d556.jpg', 'QQ浏览器截图_20180421012224_E4D1588961FC4fa9863E6D865ADCECE5.jpg');
INSERT INTO `resource` VALUES ('80', 'E:\\node相关\\node后台服务\\server\\public\\b6e88780-719c-11e9-8cd9-f7a8dda3d556.jpg', 'b6e88780-719c-11e9-8cd9-f7a8dda3d556.jpg', 'QQ浏览器截图_20180430100646_0AF72E54AADE4a92AC2EFCFFBF6220C1.jpg');
INSERT INTO `resource` VALUES ('81', 'E:\\node相关\\node后台服务\\server\\public\\87388220-7ea2-11e9-9f08-3747062f57c8.jpg', '87388220-7ea2-11e9-9f08-3747062f57c8.jpg', 'QQ浏览器截图_20180421012300_8695FC1429714ea0B6250CF1785C711F.jpg');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(20) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `mobile` char(11) NOT NULL,
  `bio` varchar(40) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '123', '123', '15060137713', '1234', 'http://localhost:3000/d4cc6ca0-719a-11e9-8cd9-f7a8dda3d556.jpg');
INSERT INTO `users` VALUES ('6', '123', '1234', '1324658', '1234213', 'http://localhost:3000/59ef10e0-719b-11e9-8cd9-f7a8dda3d556.jpg');
INSERT INTO `users` VALUES ('7', '123456', '1123', '15648231567', '123', 'http://localhost:3000/a8f11700-719c-11e9-8cd9-f7a8dda3d556.jpg');

-- ----------------------------
-- Table structure for user_follow
-- ----------------------------
DROP TABLE IF EXISTS `user_follow`;
CREATE TABLE `user_follow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) NOT NULL COMMENT '被关注用户id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cus_follow_id` int(11) NOT NULL COMMENT '关注用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of user_follow
-- ----------------------------
INSERT INTO `user_follow` VALUES ('8', '1', '2019-05-02 00:26:02', '6');
INSERT INTO `user_follow` VALUES ('9', '1', '2019-05-08 22:22:58', '7');
INSERT INTO `user_follow` VALUES ('10', '7', '2019-05-08 22:24:45', '6');

-- ----------------------------
-- Table structure for user_pub
-- ----------------------------
DROP TABLE IF EXISTS `user_pub`;
CREATE TABLE `user_pub` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) NOT NULL COMMENT '用户id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pub_id` int(11) NOT NULL COMMENT '发布id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of user_pub
-- ----------------------------
INSERT INTO `user_pub` VALUES ('9', '6', '2019-05-01 23:56:33', '7');
INSERT INTO `user_pub` VALUES ('10', '6', '2019-05-02 00:45:51', '4');
INSERT INTO `user_pub` VALUES ('11', '7', '2019-05-08 22:23:00', '1');
INSERT INTO `user_pub` VALUES ('12', '6', '2019-05-08 22:24:47', '2');
INSERT INTO `user_pub` VALUES ('13', '1', '2019-05-08 22:31:33', '2');
