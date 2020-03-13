/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : itemdemo

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 18:59:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ability
-- ----------------------------
DROP TABLE IF EXISTS `ability`;
CREATE TABLE `ability` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adesc` varchar(255) DEFAULT NULL,
  `akey` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `devauthor` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `storelocation` varchar(255) DEFAULT NULL,
  `application` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfwujc7f7gt181glpgr352kwcu` (`application`),
  CONSTRAINT `FKfwujc7f7gt181glpgr352kwcu` FOREIGN KEY (`application`) REFERENCES `application` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ability
-- ----------------------------

-- ----------------------------
-- Table structure for ability_configure
-- ----------------------------
DROP TABLE IF EXISTS `ability_configure`;
CREATE TABLE `ability_configure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ability_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4mb8efiv0nu17e41cjtlb2wre` (`ability_id`),
  CONSTRAINT `FK4mb8efiv0nu17e41cjtlb2wre` FOREIGN KEY (`ability_id`) REFERENCES `ability` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ability_configure
-- ----------------------------

-- ----------------------------
-- Table structure for application
-- ----------------------------
DROP TABLE IF EXISTS `application`;
CREATE TABLE `application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appdesc` varchar(255) DEFAULT NULL,
  `appname` varchar(255) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmilj69pu4uu1gdd607pscfo5j` (`user`),
  CONSTRAINT `FKmilj69pu4uu1gdd607pscfo5j` FOREIGN KEY (`user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of application
-- ----------------------------

-- ----------------------------
-- Table structure for bussinessabilitypou_has_ability
-- ----------------------------
DROP TABLE IF EXISTS `bussinessabilitypou_has_ability`;
CREATE TABLE `bussinessabilitypou_has_ability` (
  `bussinessabilitypou_id` int(11) NOT NULL,
  `ability_id` int(11) NOT NULL,
  PRIMARY KEY (`bussinessabilitypou_id`,`ability_id`),
  KEY `FKm4g7m2dxcct5ric6g09onvdod` (`ability_id`),
  CONSTRAINT `FKm4g7m2dxcct5ric6g09onvdod` FOREIGN KEY (`ability_id`) REFERENCES `bussiness_ability_pou` (`id`),
  CONSTRAINT `FKs0mm7isvidr4436rfy19j8q36` FOREIGN KEY (`bussinessabilitypou_id`) REFERENCES `ability` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bussinessabilitypou_has_ability
-- ----------------------------

-- ----------------------------
-- Table structure for bussiness_ability
-- ----------------------------
DROP TABLE IF EXISTS `bussiness_ability`;
CREATE TABLE `bussiness_ability` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appuser` varchar(255) DEFAULT NULL,
  `badesc` varchar(255) DEFAULT NULL,
  `bakey` varchar(255) DEFAULT NULL,
  `devdate` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `application` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKaw20fajiachndp73bpk4fcda8` (`application`),
  CONSTRAINT `FKaw20fajiachndp73bpk4fcda8` FOREIGN KEY (`application`) REFERENCES `application` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bussiness_ability
-- ----------------------------

-- ----------------------------
-- Table structure for bussiness_ability_pou
-- ----------------------------
DROP TABLE IF EXISTS `bussiness_ability_pou`;
CREATE TABLE `bussiness_ability_pou` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `badesc` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `uitype` varchar(255) DEFAULT NULL,
  `bussinessabilitypou_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn8e4bc166qun9bn0ldacrk0c9` (`bussinessabilitypou_id`),
  CONSTRAINT `FKn8e4bc166qun9bn0ldacrk0c9` FOREIGN KEY (`bussinessabilitypou_id`) REFERENCES `bussiness_ability` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bussiness_ability_pou
-- ----------------------------

-- ----------------------------
-- Table structure for node_page
-- ----------------------------
DROP TABLE IF EXISTS `node_page`;
CREATE TABLE `node_page` (
  `node_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`node_id`,`page_id`),
  KEY `FKfiucy5488auu39k5qtd1dxnpu` (`page_id`),
  CONSTRAINT `FK6g05exx6xypf22as832smacn6` FOREIGN KEY (`node_id`) REFERENCES `process_node` (`id`),
  CONSTRAINT `FKfiucy5488auu39k5qtd1dxnpu` FOREIGN KEY (`page_id`) REFERENCES `page_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of node_page
-- ----------------------------

-- ----------------------------
-- Table structure for node_pre_condition
-- ----------------------------
DROP TABLE IF EXISTS `node_pre_condition`;
CREATE TABLE `node_pre_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_pre_conditions` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj01w255fdhduelf9ec5ad2oxf` (`node_pre_conditions`),
  CONSTRAINT `FKj01w255fdhduelf9ec5ad2oxf` FOREIGN KEY (`node_pre_conditions`) REFERENCES `process_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of node_pre_condition
-- ----------------------------

-- ----------------------------
-- Table structure for pagemdel_type_bussinessabilitypou
-- ----------------------------
DROP TABLE IF EXISTS `pagemdel_type_bussinessabilitypou`;
CREATE TABLE `pagemdel_type_bussinessabilitypou` (
  `pagemodel_type_id` int(11) NOT NULL,
  `bussinessabilitypou_id` int(11) NOT NULL,
  PRIMARY KEY (`pagemodel_type_id`,`bussinessabilitypou_id`),
  KEY `FK3ks2rjypc1j92xp2k8xf7rmeq` (`bussinessabilitypou_id`),
  CONSTRAINT `FK3ks2rjypc1j92xp2k8xf7rmeq` FOREIGN KEY (`bussinessabilitypou_id`) REFERENCES `bussiness_ability_pou` (`id`),
  CONSTRAINT `FKk703nct3jer0oy7srh69bjlk5` FOREIGN KEY (`pagemodel_type_id`) REFERENCES `page_model_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pagemdel_type_bussinessabilitypou
-- ----------------------------

-- ----------------------------
-- Table structure for pagemdel__pagemodeltype
-- ----------------------------
DROP TABLE IF EXISTS `pagemdel__pagemodeltype`;
CREATE TABLE `pagemdel__pagemodeltype` (
  `pagemodel_id` int(11) NOT NULL,
  `pagemodel_type_id` int(11) NOT NULL,
  PRIMARY KEY (`pagemodel_id`,`pagemodel_type_id`),
  KEY `FK6q69x403itaj22x3gxmfbr86b` (`pagemodel_type_id`),
  CONSTRAINT `FK6q69x403itaj22x3gxmfbr86b` FOREIGN KEY (`pagemodel_type_id`) REFERENCES `page_model_type` (`id`),
  CONSTRAINT `FK9e5aau2yiyjen44l3a1x19o9r` FOREIGN KEY (`pagemodel_id`) REFERENCES `page_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pagemdel__pagemodeltype
-- ----------------------------

-- ----------------------------
-- Table structure for page_model
-- ----------------------------
DROP TABLE IF EXISTS `page_model`;
CREATE TABLE `page_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `devauthor` varchar(255) DEFAULT NULL,
  `devdate` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `application` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7hn4v1ihfu8d9o4f5f13dc03j` (`application`),
  CONSTRAINT `FK7hn4v1ihfu8d9o4f5f13dc03j` FOREIGN KEY (`application`) REFERENCES `application` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page_model
-- ----------------------------

-- ----------------------------
-- Table structure for page_model_type
-- ----------------------------
DROP TABLE IF EXISTS `page_model_type`;
CREATE TABLE `page_model_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moduledesc` varchar(255) DEFAULT NULL,
  `modulename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page_model_type
-- ----------------------------

-- ----------------------------
-- Table structure for page_pre_condition
-- ----------------------------
DROP TABLE IF EXISTS `page_pre_condition`;
CREATE TABLE `page_pre_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `page_pre_conditions` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK84fr50fqunmkq5cnjx5cyrry5` (`page_pre_conditions`),
  CONSTRAINT `FK84fr50fqunmkq5cnjx5cyrry5` FOREIGN KEY (`page_pre_conditions`) REFERENCES `process_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page_pre_condition
-- ----------------------------

-- ----------------------------
-- Table structure for process
-- ----------------------------
DROP TABLE IF EXISTS `process`;
CREATE TABLE `process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `devauthor` varchar(255) DEFAULT NULL,
  `devdate` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `node_num` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `application` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1j925ccpjp0cgnhgp3vgthsv1` (`application`),
  CONSTRAINT `FK1j925ccpjp0cgnhgp3vgthsv1` FOREIGN KEY (`application`) REFERENCES `application` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of process
-- ----------------------------

-- ----------------------------
-- Table structure for process_node
-- ----------------------------
DROP TABLE IF EXISTS `process_node`;
CREATE TABLE `process_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `process_nodes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9i95s93qw9xvlp4b6httslqvw` (`process_nodes`),
  CONSTRAINT `FK9i95s93qw9xvlp4b6httslqvw` FOREIGN KEY (`process_nodes`) REFERENCES `process` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of process_node
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'root', 'root', '0');
