/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : office_mui

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 19:04:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '昵称',
  `tel` varchar(11) DEFAULT NULL COMMENT '手机号',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `classes` varchar(255) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '部门名',
  `uid` bigint(11) DEFAULT NULL COMMENT '部门负责人id',
  `href` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `uname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='部门表';

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '董事会及经理会', '1', 'department_member.html', null);
INSERT INTO `department` VALUES ('2', '移动互联业务部', '2', null, null);

-- ----------------------------
-- Table structure for leave
-- ----------------------------
DROP TABLE IF EXISTS `leave`;
CREATE TABLE `leave` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '请假申请id',
  `uid` bigint(11) NOT NULL COMMENT '员工id',
  `title` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '请假申请标题',
  `type` varchar(15) COLLATE utf8_bin NOT NULL COMMENT '请假类型',
  `apply_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '请假申请日期',
  `start_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '请假开始日期',
  `stop_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '请假结束日期',
  `count` int(11) NOT NULL COMMENT '请假天数',
  `reason` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '请假事由',
  `approval` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '待审批' COMMENT '请假审批状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='请假表';

-- ----------------------------
-- Records of leave
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '员工id',
  `name` varchar(15) COLLATE utf8_bin DEFAULT NULL COMMENT '员工姓名',
  `password` varchar(20) COLLATE utf8_bin DEFAULT '123456' COMMENT '密码',
  `tel` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `did` int(11) DEFAULT NULL COMMENT '部门id',
  `pid` int(11) DEFAULT NULL COMMENT '职位id',
  `rid` int(11) DEFAULT NULL COMMENT '角色id',
  `pos` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '职位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='员工表';

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '123', '123', '123', null, '1', null, null, null);
INSERT INTO `userinfo` VALUES ('2', '1234', '1234', '123', null, '1', null, null, null);
