/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : ssm_crm

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 19:06:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `roleid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`roleid`,`userid`),
  KEY `fk_t_role_has_t_user_t_user1_idx` (`userid`),
  KEY `fk_t_role_has_t_user_t_role_idx` (`roleid`),
  CONSTRAINT `fk_t_role_has_t_user_t_role` FOREIGN KEY (`roleid`) REFERENCES `t_role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_role_has_t_user_t_user1` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES ('1', '1');
INSERT INTO `role_user` VALUES ('1', '8');
INSERT INTO `role_user` VALUES ('2', '8');
INSERT INTO `role_user` VALUES ('3', '9');
INSERT INTO `role_user` VALUES ('3', '10');
INSERT INTO `role_user` VALUES ('2', '11');
INSERT INTO `role_user` VALUES ('3', '11');
INSERT INTO `role_user` VALUES ('1', '12');
INSERT INTO `role_user` VALUES ('2', '12');
INSERT INTO `role_user` VALUES ('3', '12');
INSERT INTO `role_user` VALUES ('2', '13');

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custname` varchar(45) DEFAULT NULL COMMENT '客户名称',
  `contact` varchar(45) DEFAULT NULL COMMENT '联系人',
  `tel` varchar(45) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `wechar` varchar(45) DEFAULT NULL COMMENT '微信',
  `qq` varchar(45) DEFAULT NULL COMMENT 'QQ',
  `mark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` int(11) DEFAULT NULL COMMENT '所属用户',
  `progress` varchar(45) DEFAULT NULL COMMENT '当前进度',
  `progresstime` varchar(45) DEFAULT NULL COMMENT '最后跟进时间',
  `createtime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `fk_t_customer_t_user1_idx` (`userid`),
  CONSTRAINT `fk_t_customer_t_user1` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('1', '北京即可科技', '李思凯', '18939870345', '北京长安街34号', 'lisikai@jike.com', 'lisika', '1100000', 'CEO', '1', '初访', null, '2016-05-03 10:23');
INSERT INTO `t_customer` VALUES ('2', '赵丽丽', '', '17000987909', '', '', '', '', '', '1', '无', null, '2016-05-03 11:21');
INSERT INTO `t_customer` VALUES ('3', '美国微软科技有限公司', '比尔', '010-8899776', '北京中关村', '', '', '', '', '1', '无', null, '2016-05-03 13:01');
INSERT INTO `t_customer` VALUES ('4', 'Google', '布林', '089-0099932', '美国加利福尼亚', '', '', '', '<br>admin转交过来的客户   jack转交过来的客户', '1', '报价', '2016-05-05 08:36', '2016-05-03 13:09');
INSERT INTO `t_customer` VALUES ('5', '谢利英', '', '15833476589', '西安电子科技大学计算机学院', 'xie.edu@163.com', 'xieliying', '', '', '1', '无', null, '2016-05-03 13:13');
INSERT INTO `t_customer` VALUES ('6', '豆瓣网络', '阿贝', '029-8899765', '西安市长安南路119号凌翼大楼11层', 'dou@ban.com', '', '', '<br>admin转交过来的客户   jack转交过来的客户', '1', '无', null, '2016-05-03 13:15');
INSERT INTO `t_customer` VALUES ('7', '张武柳', '', '1560000998', '', '', '', '', '', null, '无', null, '2016-05-03 14:05');

-- ----------------------------
-- Table structure for t_progress
-- ----------------------------
DROP TABLE IF EXISTS `t_progress`;
CREATE TABLE `t_progress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `progress` varchar(45) DEFAULT NULL COMMENT '当前进度',
  `mark` text COMMENT '记录',
  `createtime` varchar(45) DEFAULT NULL COMMENT '跟进时间',
  `custid` int(11) NOT NULL COMMENT '关联客户ID',
  `userid` int(11) NOT NULL COMMENT '跟进用户ID',
  PRIMARY KEY (`id`),
  KEY `fk_t_progress_t_customer1_idx` (`custid`),
  KEY `fk_t_progress_t_user1_idx` (`userid`),
  CONSTRAINT `fk_t_progress_t_customer1` FOREIGN KEY (`custid`) REFERENCES `t_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_progress_t_user1` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_progress
-- ----------------------------
INSERT INTO `t_progress` VALUES ('1', '初访', 'MultipartFile[]', '2016-05-01 11:16', '1', '1');
INSERT INTO `t_progress` VALUES ('2', '意向', '对方对我们的OA产品有意向', '2016-05-02 11:18', '2', '1');
INSERT INTO `t_progress` VALUES ('3', '报价', '直接报价了500w，对方考虑中', '2016-05-03 11:19', '1', '1');
INSERT INTO `t_progress` VALUES ('4', '成交', '购买了MR-98服务器', '2016-05-03 11:21', '4', '1');
INSERT INTO `t_progress` VALUES ('5', '意向', '对MR-90型号服务器有意向，需要多次跟进', '2016-05-04 12:55', '7', '1');
INSERT INTO `t_progress` VALUES ('6', '暂时搁置', '对方对我们的产品没有兴趣，以后联系', '2016-05-04 14:21', '3', '1');
INSERT INTO `t_progress` VALUES ('7', '意向', '报价2300w，对方确认中', '2016-05-04 17:07', '7', '11');
INSERT INTO `t_progress` VALUES ('8', '初访', '价格降低后，对方很开心', '2016-05-04 17:48', '3', '1');
INSERT INTO `t_progress` VALUES ('9', '初访', '最终', '2016-05-04 17:48', '3', '1');
INSERT INTO `t_progress` VALUES ('10', '成交', '1500w拿下', '2016-05-04 17:49', '3', '1');
INSERT INTO `t_progress` VALUES ('11', '成交', '再次购买1000T的SSD硬盘', '2016-05-04 17:52', '4', '1');
INSERT INTO `t_progress` VALUES ('12', '意向', '对xx感兴趣', '2016-05-05 08:35', '4', '1');
INSERT INTO `t_progress` VALUES ('13', '报价', '报价100w', '2016-05-05 08:36', '4', '1');

-- ----------------------------
-- Table structure for t_progress_file
-- ----------------------------
DROP TABLE IF EXISTS `t_progress_file`;
CREATE TABLE `t_progress_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) DEFAULT NULL COMMENT '文件名称',
  `path` varchar(300) DEFAULT NULL COMMENT '文件存储路径',
  `createtime` varchar(45) DEFAULT NULL COMMENT '创建时间',
  `progressid` int(11) NOT NULL COMMENT '关联的跟进记录',
  `custid` int(11) NOT NULL COMMENT '关联的客户ID',
  `userid` int(11) NOT NULL COMMENT '上传的用户ID',
  PRIMARY KEY (`id`),
  KEY `fk_t_progress_file_t_progress1_idx` (`progressid`),
  KEY `fk_t_progress_file_t_customer1_idx` (`custid`),
  KEY `fk_t_progress_file_t_user1_idx` (`userid`),
  CONSTRAINT `fk_t_progress_file_t_customer1` FOREIGN KEY (`custid`) REFERENCES `t_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_progress_file_t_progress1` FOREIGN KEY (`progressid`) REFERENCES `t_progress` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_progress_file_t_user1` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_progress_file
-- ----------------------------
INSERT INTO `t_progress_file` VALUES ('1', 'v-1.png', 'http://7xs9b4.com1.z0.glb.clouddn.com/FjqEQ8F3FJNw2gqfypI0vuWyZaPy', '2016-05-04 11:19', '2', '2', '1');
INSERT INTO `t_progress_file` VALUES ('2', '1.jpg', 'http://7xs9b4.com1.z0.glb.clouddn.com/FgmkyaGFLSy6aZkUtV9LoeQP1tFB', '2016-05-04 11:19', '2', '2', '1');
INSERT INTO `t_progress_file` VALUES ('4', 'OA微信接口调用API.docx', 'http://7xs9b4.com1.z0.glb.clouddn.com/FnYo6z5H0XC_G-EN1lAsvShgcEje', '2016-05-04 14:21', '6', '3', '1');
INSERT INTO `t_progress_file` VALUES ('5', 'crm.sql', 'http://7xs9b4.com1.z0.glb.clouddn.com/FjFlNKDtl6v8h4-HzGz5EAsAOo58', '2016-05-04 14:21', '6', '3', '1');
INSERT INTO `t_progress_file` VALUES ('6', 'douban.sql', 'http://7xs9b4.com1.z0.glb.clouddn.com/Fq5m9jrGuRaP4Qbr_lLga6ldDr1N', '2016-05-04 17:49', '10', '3', '1');
INSERT INTO `t_progress_file` VALUES ('7', 'generatorConfig.xml', 'http://7xs9b4.com1.z0.glb.clouddn.com/FuJVniRT8JKfP1uJUVhbMzL36dWj', '2016-05-05 08:35', '12', '4', '1');
INSERT INTO `t_progress_file` VALUES ('8', 'douban.sql', 'http://7xs9b4.com1.z0.glb.clouddn.com/Fq5m9jrGuRaP4Qbr_lLga6ldDr1N', '2016-05-05 08:36', '13', '4', '1');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(45) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '管理员');
INSERT INTO `t_role` VALUES ('2', '经理');
INSERT INTO `t_role` VALUES ('3', '员工');

-- ----------------------------
-- Table structure for t_task
-- ----------------------------
DROP TABLE IF EXISTS `t_task`;
CREATE TABLE `t_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `worktime` varchar(45) DEFAULT NULL COMMENT '执行时间',
  `task` varchar(45) DEFAULT NULL COMMENT '待办内容',
  `done` tinyint(1) DEFAULT NULL COMMENT '是否已完成',
  `donetime` varchar(45) DEFAULT NULL COMMENT '完成时间',
  `createtime` varchar(45) DEFAULT NULL COMMENT '创建时间',
  `userid` int(11) NOT NULL COMMENT '创建用户ID',
  `custid` int(11) DEFAULT NULL COMMENT '关联客户ID',
  PRIMARY KEY (`id`),
  KEY `fk_t_task_t_user1_idx` (`userid`),
  KEY `fk_t_task_t_customer1_idx` (`custid`),
  CONSTRAINT `fk_t_task_t_customer1` FOREIGN KEY (`custid`) REFERENCES `t_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_task_t_user1` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_task
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL COMMENT '员工姓名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `tel` varchar(45) DEFAULT NULL COMMENT '手机号码',
  `createtime` varchar(45) DEFAULT NULL COMMENT '创建时间',
  `state` varchar(45) DEFAULT NULL COMMENT '员工状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '4add772619cc3dc871179ee57f40a3c8', '138', '2016-04-28 09:51', '正常');
INSERT INTO `t_user` VALUES ('2', '张小龙', '4add772619cc3dc871179ee57f40a3c8', '13800000001', '2016-04-28 09:51', '正常');
INSERT INTO `t_user` VALUES ('3', '刘莉莉', 'f76a319dbd7ad4d3c153c775ad503f37', '13800000002', '2016-04-28 09:51', '正常');
INSERT INTO `t_user` VALUES ('4', '刘潇潇', 'f76a319dbd7ad4d3c153c775ad503f37', '13800000003', '2016-04-28 09:51', '正常');
INSERT INTO `t_user` VALUES ('5', '费希特', 'f76a319dbd7ad4d3c153c775ad503f37', '13800000004', '2016-04-28 09:51', '禁用');
INSERT INTO `t_user` VALUES ('6', '赵玲玲', 'f76a319dbd7ad4d3c153c775ad503f37', '13800000005', '2016-04-28 09:51', '禁用');
INSERT INTO `t_user` VALUES ('7', '马历涛', 'f76a319dbd7ad4d3c153c775ad503f37', '13800000006', '2016-04-28 09:51', '正常');
INSERT INTO `t_user` VALUES ('8', '李四', 'f76a319dbd7ad4d3c153c775ad503f37', '18900000000', '2016-04-29 15:05', '正常');
INSERT INTO `t_user` VALUES ('9', '王武武', 'f76a319dbd7ad4d3c153c775ad503f37', '13700000000', '2016-04-29 15:09', '正常');
INSERT INTO `t_user` VALUES ('10', '王溜溜', 'f76a319dbd7ad4d3c153c775ad503f37', '1870000000', '2016-04-29 15:11', '正常');
INSERT INTO `t_user` VALUES ('11', 'jack', 'f76a319dbd7ad4d3c153c775ad503f37', '190', '2016-04-29 15:13', '正常');
INSERT INTO `t_user` VALUES ('12', 'rose', 'f76a319dbd7ad4d3c153c775ad503f37', '111', '2016-04-29 15:13', '正常');
INSERT INTO `t_user` VALUES ('13', '郑哲丽', 'f76a319dbd7ad4d3c153c775ad503f37', '1300000000', '2016-04-29 15:14', '禁用');

-- ----------------------------
-- Table structure for t_user_log
-- ----------------------------
DROP TABLE IF EXISTS `t_user_log`;
CREATE TABLE `t_user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logintime` varchar(45) DEFAULT NULL,
  `loginip` varchar(45) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_user_log_t_user1_idx` (`userid`),
  CONSTRAINT `fk_t_user_log_t_user1` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_log
-- ----------------------------
