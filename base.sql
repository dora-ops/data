/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : base

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 18:54:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for common
-- ----------------------------
DROP TABLE IF EXISTS `common`;
CREATE TABLE `common` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `json` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common
-- ----------------------------
INSERT INTO `common` VALUES ('1', '123asd12');
INSERT INTO `common` VALUES ('2', '123asd');

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
-- Table structure for tb_resource
-- ----------------------------
DROP TABLE IF EXISTS `tb_resource`;
CREATE TABLE `tb_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `is_hide` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `source_key` varchar(255) DEFAULT NULL,
  `source_url` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf5ra2gn0xedeida2op8097sr5` (`parent_id`),
  CONSTRAINT `FKf5ra2gn0xedeida2op8097sr5` FOREIGN KEY (`parent_id`) REFERENCES `tb_resource` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_resource
-- ----------------------------
INSERT INTO `tb_resource` VALUES ('1', '2017-01-10 13:56:51', '用户管理', null, '0', '2', '用户管理', '1', 'system:user:index', '/admin/user/index', '1', '2017-01-10 13:59:01', null);
INSERT INTO `tb_resource` VALUES ('2', '2017-01-10 13:56:51', '用户编辑', null, '0', '3', '用户编辑', '1', 'system:user:edit', '/admin/user/edit*', '2', '2017-01-10 16:26:42', '1');
INSERT INTO `tb_resource` VALUES ('3', '2017-01-11 16:48:48', '用户添加', null, '0', '3', '用户添加', '2', 'system:user:add', '/admin/user/add', '2', '2017-01-11 16:49:26', '1');
INSERT INTO `tb_resource` VALUES ('4', '2017-01-11 16:48:48', '用户删除', null, '0', '3', '用户删除', '3', 'system:user:deleteBatch', '/admin/user/deleteBatch', '2', '2017-01-18 14:11:41', '1');
INSERT INTO `tb_resource` VALUES ('5', '2017-01-11 16:48:48', '角色分配', null, '0', '3', '角色分配', '4', 'system:user:grant', '/admin/user/grant/**', '2', '2017-01-18 14:11:51', '1');
INSERT INTO `tb_resource` VALUES ('6', '2017-01-12 16:45:10', '角色管理', null, '0', '2', '角色管理', '2', 'system:role:index', '/admin/role/index', '1', '2017-01-12 16:46:52', null);
INSERT INTO `tb_resource` VALUES ('7', '2017-01-12 16:47:02', '角色编辑', null, '0', '3', '角色编辑', '1', 'system:role:edit', '/admin/role/edit*', '2', '2017-01-18 10:24:06', '1');
INSERT INTO `tb_resource` VALUES ('8', '2017-01-12 16:47:23', '角色添加', null, '0', '3', '角色添加', '2', 'system:role:add', '/admin/role/add', '2', '2017-01-12 16:49:16', '6');
INSERT INTO `tb_resource` VALUES ('9', '2017-01-12 16:47:23', '角色删除', null, '0', '3', '角色删除', '3', 'system:role:deleteBatch', '/admin/role/deleteBatch', '2', '2017-01-18 14:12:03', '6');
INSERT INTO `tb_resource` VALUES ('10', '2017-01-12 16:47:23', '资源分配', null, '0', '3', '资源分配', '4', 'system:role:grant', '/admin/role/grant/**', '2', '2017-01-18 14:12:11', '6');
INSERT INTO `tb_resource` VALUES ('11', '2017-01-17 11:21:12', '资源管理', null, '0', '2', '资源管理', '3', 'system:resource:index', '/admin/resource/index', '1', '2017-01-17 11:21:42', null);
INSERT INTO `tb_resource` VALUES ('12', '2017-01-17 11:21:52', '资源编辑', null, '0', '3', '资源编辑', '1', 'system:resource:edit', '/admin/resource/edit*', '2', '2017-01-17 11:22:36', '11');
INSERT INTO `tb_resource` VALUES ('13', '2017-01-17 11:21:54', '资源添加', null, '0', '3', '资源添加', '2', 'system:resource:add', '/admin/resource/add', '2', '2017-01-17 11:22:39', '11');
INSERT INTO `tb_resource` VALUES ('14', '2017-01-17 11:21:54', '资源删除', null, '0', '3', '资源删除', '3', 'system:resource:deleteBatch', '/admin/resource/deleteBatch', '2', '2017-01-18 14:12:31', '11');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role_key` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '2017-01-09 17:25:30', '超级管理员', 'administrator', 'administrator', '0', '2017-01-09 17:26:25');

-- ----------------------------
-- Table structure for tb_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_resource`;
CREATE TABLE `tb_role_resource` (
  `role_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`resource_id`),
  KEY `FK868kc8iic48ilv5npa80ut6qo` (`resource_id`),
  CONSTRAINT `FK7ffc7h6obqxflhj1aq1mk20jk` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`),
  CONSTRAINT `FK868kc8iic48ilv5npa80ut6qo` FOREIGN KEY (`resource_id`) REFERENCES `tb_resource` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role_resource
-- ----------------------------
INSERT INTO `tb_role_resource` VALUES ('1', '1');
INSERT INTO `tb_role_resource` VALUES ('1', '2');
INSERT INTO `tb_role_resource` VALUES ('1', '3');
INSERT INTO `tb_role_resource` VALUES ('1', '4');
INSERT INTO `tb_role_resource` VALUES ('1', '5');
INSERT INTO `tb_role_resource` VALUES ('1', '6');
INSERT INTO `tb_role_resource` VALUES ('1', '7');
INSERT INTO `tb_role_resource` VALUES ('1', '8');
INSERT INTO `tb_role_resource` VALUES ('1', '9');
INSERT INTO `tb_role_resource` VALUES ('1', '10');
INSERT INTO `tb_role_resource` VALUES ('1', '11');
INSERT INTO `tb_role_resource` VALUES ('1', '12');
INSERT INTO `tb_role_resource` VALUES ('1', '13');
INSERT INTO `tb_role_resource` VALUES ('1', '14');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delete_status` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `locked` int(11) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '成都', '2017-01-09 17:26:39', '2017-01-09 17:26:41', '0', '超级管理员', 'whoismy8023@163.com', '0', 'admin', '3931MUEQD1939MQMLM4AISPVNE', '1', '15923930000', '2017-01-09 17:27:11', 'admin');

-- ----------------------------
-- Table structure for tb_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_role`;
CREATE TABLE `tb_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKea2ootw6b6bb0xt3ptl28bymv` (`role_id`),
  CONSTRAINT `FK7vn3h53d0tqdimm8cp45gc0kl` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `FKea2ootw6b6bb0xt3ptl28bymv` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES ('1', '1');
