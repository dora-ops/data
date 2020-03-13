/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : financial

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 18:57:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `member` varchar(255) DEFAULT NULL COMMENT '这笔钱谁赚的，或者给了谁',
  `num` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `typeName` varchar(255) DEFAULT NULL COMMENT '类别',
  `remake` varchar(255) DEFAULT NULL COMMENT '备注',
  `time` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '支出、收入',
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES ('2', '好奇宝宝', '1.00', '兼职外快', '123', '2019-03-09', '收入', '1');
INSERT INTO `bill` VALUES ('3', '好奇宝宝', '1.00', '兼职外快', '123', '2019-03-09', '收入', '1');
INSERT INTO `bill` VALUES ('4', '家庭公共', '1.00', '饮料水果', '123', '2019-03-02', '收入', '1');
INSERT INTO `bill` VALUES ('7', '工商银行', '123.00', '晚餐', '123', '2019-03-09', '支出', '1');
INSERT INTO `bill` VALUES ('8', '18157146715', '1212.00', '工资薪水', '123123', '2019-03-05', '收入', '1');
INSERT INTO `bill` VALUES ('9', '家庭公共', '12.00', '饮料水果', '123', '2019-03-09', '支出', '1');
INSERT INTO `bill` VALUES ('10', '工商银行', '123.00', '饮料水果', '1233', '2019-03-09', '支出', '1');
INSERT INTO `bill` VALUES ('11', '工商银行', '123.00', '饮料水果', '123', '2019-03-09', '支出', '1');
INSERT INTO `bill` VALUES ('12', '18157146715', '20.00', '工资薪水', '123', '2019-03-24', '收入', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `super` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123456', '18157146715', '1', '1');
