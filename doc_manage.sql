/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : doc_manage

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 18:53:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for alipay_config
-- ----------------------------
DROP TABLE IF EXISTS `alipay_config`;
CREATE TABLE `alipay_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `app_id` varchar(255) DEFAULT NULL COMMENT '应用ID',
  `charset` varchar(255) DEFAULT NULL COMMENT '编码',
  `format` varchar(255) DEFAULT NULL COMMENT '类型 固定格式json',
  `gateway_url` varchar(255) DEFAULT NULL COMMENT '网关地址',
  `notify_url` varchar(255) DEFAULT NULL COMMENT '异步回调',
  `private_key` text COMMENT '私钥',
  `public_key` text COMMENT '公钥',
  `return_url` varchar(255) DEFAULT NULL COMMENT '回调地址',
  `sign_type` varchar(255) DEFAULT NULL COMMENT '签名方式',
  `sys_service_provider_id` varchar(255) DEFAULT NULL COMMENT '商户号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alipay_config
-- ----------------------------
INSERT INTO `alipay_config` VALUES ('1', '2016091700532697', 'utf-8', 'JSON', 'https://openapi.alipaydev.com/gateway.do', 'http://api.auauz.net/api/aliPay/notify', 'MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC5js8sInU10AJ0cAQ8UMMyXrQ+oHZEkVt5lBwsStmTJ7YikVYgbskx1YYEXTojRsWCb+SH/kDmDU4pK/u91SJ4KFCRMF2411piYuXU/jF96zKrADznYh/zAraqT6hvAIVtQAlMHN53nx16rLzZ/8jDEkaSwT7+HvHiS+7sxSojnu/3oV7BtgISoUNstmSe8WpWHOaWv19xyS+Mce9MY4BfseFhzTICUymUQdd/8hXA28/H6osUfAgsnxAKv7Wil3aJSgaJczWuflYOve0dJ3InZkhw5Cvr0atwpk8YKBQjy5CdkoHqvkOcIB+cYHXJKzOE5tqU7inSwVbHzOLQ3XbnAgMBAAECggEAVJp5eT0Ixg1eYSqFs9568WdetUNCSUchNxDBu6wxAbhUgfRUGZuJnnAll63OCTGGck+EGkFh48JjRcBpGoeoHLL88QXlZZbC/iLrea6gcDIhuvfzzOffe1RcZtDFEj9hlotg8dQj1tS0gy9pN9g4+EBH7zeu+fyv+qb2e/v1l6FkISXUjpkD7RLQr3ykjiiEw9BpeKb7j5s7Kdx1NNIzhkcQKNqlk8JrTGDNInbDM6inZfwwIO2R1DHinwdfKWkvOTODTYa2MoAvVMFT9Bec9FbLpoWp7ogv1JMV9svgrcF9XLzANZ/OQvkbe9TV9GWYvIbxN6qwQioKCWO4GPnCAQKBgQDgW5MgfhX8yjXqoaUy/d1VjI8dHeIyw8d+OBAYwaxRSlCfyQ+tieWcR2HdTzPca0T0GkWcKZm0ei5xRURgxt4DUDLXNh26HG0qObbtLJdu/AuBUuCqgOiLqJ2f1uIbrz6OZUHns+bT/jGW2Ws8+C13zTCZkZt9CaQsrp3QOGDx5wKBgQDTul39hp3ZPwGNFeZdkGoUoViOSd5Lhowd5wYMGAEXWRLlU8z+smT5v0POz9JnIbCRchIY2FAPKRdVTICzmPk2EPJFxYTcwaNbVqL6lN7J2IlXXMiit5QbiLauo55w7plwV6LQmKm9KV7JsZs5XwqF7CEovI7GevFzyD3w+uizAQKBgC3LY1eRhOlpWOIAhpjG6qOoohmeXOphvdmMlfSHq6WYFqbWwmV4rS5d/6LNpNdL6fItXqIGd8I34jzql49taCmi+A2nlR/E559j0mvM20gjGDIYeZUz5MOE8k+K6/IcrhcgofgqZ2ZED1ksHdB/E8DNWCswZl16V1FrfvjeWSNnAoGAMrBplCrIW5xz+J0Hm9rZKrs+AkK5D4fUv8vxbK/KgxZ2KaUYbNm0xv39c+PZUYuFRCz1HDGdaSPDTE6WeWjkMQd5mS6ikl9hhpqFRkyh0d0fdGToO9yLftQKOGE/q3XUEktI1XvXF0xyPwNgUCnq0QkpHyGVZPtGFxwXiDvpvgECgYA5PoB+nY8iDiRaJNko9w0hL4AeKogwf+4TbCw+KWVEn6jhuJa4LFTdSqp89PktQaoVpwv92el/AhYjWOl/jVCm122f9b7GyoelbjMNolToDwe5pF5RnSpEuDdLy9MfE8LnE3PlbE7E5BipQ3UjSebkgNboLHH/lNZA5qvEtvbfvQ==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAut9evKRuHJ/2QNfDlLwvN/S8l9hRAgPbb0u61bm4AtzaTGsLeMtScetxTWJnVvAVpMS9luhEJjt+Sbk5TNLArsgzzwARgaTKOLMT1TvWAK5EbHyI+eSrc3s7Awe1VYGwcubRFWDm16eQLv0k7iqiw+4mweHSz/wWyvBJVgwLoQ02btVtAQErCfSJCOmt0Q/oJQjj08YNRV4EKzB19+f5A+HQVAKy72dSybTzAK+3FPtTtNen/+b5wGeat7c32dhYHnGorPkPeXLtsqqUTp1su5fMfd4lElNdZaoCI7osZxWWUo17vBCZnyeXc9fk0qwD9mK6yRAxNbrY72Xx5VqIqwIDAQAB', 'http://api.auauz.net/api/aliPay/return', 'RSA2', '2088102176044281');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `cus` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tea` varchar(255) DEFAULT NULL COMMENT '教师',
  `read` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='文章';

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('7', '12341', '<p>123412</p><table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><th>123 </th><th>123 </th><th> </th><th> </th><th> </th></tr><tr><td> 1123</td><td> </td><td> </td><td> </td><td> </td></tr><tr><td> 123</td><td> 123</td><td> </td><td> </td><td> </td></tr><tr><td> 123</td><td> 123</td><td> 1</td><td> </td><td> </td></tr><tr><td> 42131</td><td> 12</td><td> 123</td><td> </td><td> </td></tr></tbody></table><p>\n</p>', 'admin', '2019-05-17 23:01:33', null, null, null);
INSERT INTO `article` VALUES ('8', '123', '<p>1234123</p><table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table><p><img src=\"https://i.loli.net/2019/05/17/5cdecace9eb5840116.jpg\" style=\"max-width:100%;\"><br></p>', 'admin', '2019-05-17 23:02:02', null, null, null);
INSERT INTO `article` VALUES ('9', '123', '<p>1234123</p><table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table><p><img src=\"https://i.loli.net/2019/05/17/5cdecb21bf32390000.jpg\" style=\"max-width: 100%;\"><img src=\"https://i.loli.net/2019/05/17/5cdecaf844e4665415.jpg\" style=\"max-width: 100%;\"><br></p>', 'admin', '2019-05-17 23:03:08', 'admin', '1', null);
INSERT INTO `article` VALUES ('10', '123y4123', '<ol><li>weq13</li></ol><p><br></p><table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table><p>sdqweqweqwe</p><p>qwe123<span style=\"font-weight: bold;\"></span></p>', 'test', '2019-05-18 10:43:10', 'admin', '1', null);
INSERT INTO `article` VALUES ('11', '123', '<p>1234123</p>', 'test', '2019-05-18 10:45:31', 'admin', '1', 'finish');
INSERT INTO `article` VALUES ('12', '1234123', '<p><img src=\"https://i.loli.net/2019/05/18/5cdfe72bcd58911230.jpg\" style=\"max-width:100%;\"><br></p><p>123421321321</p><table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><th>&nbsp;1</th><th>2&nbsp;</th><th>3&nbsp;</th><th>4&nbsp;</th><th>5&nbsp;</th></tr><tr><td>&nbsp;123</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;123</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;123</td><td>&nbsp;123</td><td>&nbsp;</td><td>&nbsp;312</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;123</td><td>&nbsp;123</td><td>&nbsp;12</td><td>&nbsp;123</td></tr></tbody></table><p><br></p><p><br></p><p><br></p>', 'test', '2019-05-18 19:15:36', null, null, null);
INSERT INTO `article` VALUES ('13', '测试报告1', '<p>123<img src=\"https://i.loli.net/2019/05/18/5cdfe76e415d812089.jpg\" style=\"max-width: 100%;\"></p><table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th><th>&nbsp;</th></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table><p><br></p>', 'test', '2019-05-18 19:16:35', 'admin', '1', 'finish');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `pid` bigint(20) NOT NULL COMMENT '上级部门',
  `create_time` datetime DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', 'XX学校', '0', '2019-03-25 09:14:05', '');
INSERT INTO `dept` VALUES ('2', '1号楼', '7', '2019-03-25 09:15:32', '');
INSERT INTO `dept` VALUES ('5', '2号楼', '7', '2019-03-25 09:20:44', '');
INSERT INTO `dept` VALUES ('7', '1号教学楼', '1', '2019-03-25 11:04:50', '');
INSERT INTO `dept` VALUES ('8', '2号教学楼', '1', '2019-03-25 11:04:53', '');
INSERT INTO `dept` VALUES ('9', '3号楼', '7', '2019-03-25 11:05:34', '');
INSERT INTO `dept` VALUES ('11', '1号楼', '8', '2019-03-25 11:07:58', '');

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '字典名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES ('1', 'user_status', '用户状态');
INSERT INTO `dict` VALUES ('4', 'dept_status', '部门状态');
INSERT INTO `dict` VALUES ('5', 'job_status', '岗位状态');

-- ----------------------------
-- Table structure for dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `dict_detail`;
CREATE TABLE `dict_detail` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL COMMENT '字典标签',
  `value` varchar(255) NOT NULL COMMENT '字典值',
  `sort` varchar(255) DEFAULT NULL COMMENT '排序',
  `dict_id` bigint(11) DEFAULT NULL COMMENT '字典id',
  PRIMARY KEY (`id`),
  KEY `FK5tpkputc6d9nboxojdbgnpmyb` (`dict_id`),
  CONSTRAINT `FK5tpkputc6d9nboxojdbgnpmyb` FOREIGN KEY (`dict_id`) REFERENCES `dict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_detail
-- ----------------------------
INSERT INTO `dict_detail` VALUES ('1', '激活', 'true', '1', '1');
INSERT INTO `dict_detail` VALUES ('2', '锁定', 'false', '2', '1');
INSERT INTO `dict_detail` VALUES ('11', '正常', 'true', '1', '4');
INSERT INTO `dict_detail` VALUES ('12', '停用', 'false', '2', '4');
INSERT INTO `dict_detail` VALUES ('13', '正常', 'true', '1', '5');
INSERT INTO `dict_detail` VALUES ('14', '停用', 'false', '2', '5');

-- ----------------------------
-- Table structure for email_config
-- ----------------------------
DROP TABLE IF EXISTS `email_config`;
CREATE TABLE `email_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `from_user` varchar(255) DEFAULT NULL COMMENT '收件人',
  `host` varchar(255) DEFAULT NULL COMMENT '邮件服务器SMTP地址',
  `pass` varchar(255) DEFAULT NULL COMMENT '密码',
  `port` varchar(255) DEFAULT NULL COMMENT '端口',
  `user` varchar(255) DEFAULT NULL COMMENT '发件者用户名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of email_config
-- ----------------------------

-- ----------------------------
-- Table structure for gen_config
-- ----------------------------
DROP TABLE IF EXISTS `gen_config`;
CREATE TABLE `gen_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `cover` bit(1) DEFAULT NULL COMMENT '是否覆盖',
  `module_name` varchar(255) DEFAULT NULL COMMENT '模块名称',
  `pack` varchar(255) DEFAULT NULL COMMENT '至于哪个包下',
  `path` varchar(255) DEFAULT NULL COMMENT '前端代码生成的路径',
  `api_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gen_config
-- ----------------------------
INSERT INTO `gen_config` VALUES ('1', 'jie', '', 'eladmin-system', 'me.zhengjie.modules.notice', 'E:\\study\\eladmin-qd\\src\\views\\manage\\notice', 'E:\\study\\eladmin-qd\\src\\api');

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `score` int(11) NOT NULL COMMENT '分数',
  `tea` varchar(255) DEFAULT NULL COMMENT '老师',
  `cus` varchar(255) DEFAULT NULL COMMENT '学生',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='成绩';

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('5', '123', '12', 'admin', 'admin', '2019-05-18 00:32:22');
INSERT INTO `grade` VALUES ('7', '123', '12', 'admin', 'test', '2019-05-18 10:55:42');
INSERT INTO `grade` VALUES ('8', '测试报告1', '45', 'admin', 'test', '2019-05-18 19:18:09');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `sort` bigint(20) NOT NULL,
  `dept_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmvhj0rogastlctflsxf1d6k3i` (`dept_id`),
  CONSTRAINT `FKmvhj0rogastlctflsxf1d6k3i` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('11', '学生', '', '2019-03-31 13:39:30', '6', '7');
INSERT INTO `job` VALUES ('12', '超级管理员', '', '2019-03-31 13:39:43', '5', '1');
INSERT INTO `job` VALUES ('20', '老师', '', '2019-05-13 00:04:13', '999', '11');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `exception_detail` text,
  `log_type` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `params` text,
  `request_ip` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5825 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('5623', '2019-05-18 10:19:06', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '62', 'admin');
INSERT INTO `log` VALUES ('5624', '2019-05-18 10:19:06', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=job_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '122', 'admin');
INSERT INTO `log` VALUES ('5625', '2019-05-18 10:20:42', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '21', 'admin');
INSERT INTO `log` VALUES ('5626', '2019-05-18 10:20:42', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '22', 'admin');
INSERT INTO `log` VALUES ('5627', '2019-05-18 10:20:58', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '72', 'admin');
INSERT INTO `log` VALUES ('5628', '2019-05-18 10:21:15', '删除角色', 'me.zhengjie.exception.BadRequestException: could not execute statement; SQL [n/a]; constraint [null]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement\r\n	at me.zhengjie.aspect.DataScopeAspect.logAround(DataScopeAspect.java:51)\r\n	at sun.reflect.GeneratedMethodAccessor228.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.system.rest.RoleController$$EnhancerBySpringCGLIB$$d3ecbda1.delete(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doDelete(FrameworkServlet.java:923)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:666)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.JwtAuthorizationTokenFilter.doFilterInternal(JwtAuthorizationTokenFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.system.rest.RoleController.delete()', '{ id: 6 }', '127.0.0.1', '295', 'admin');
INSERT INTO `log` VALUES ('5629', '2019-05-18 10:21:24', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=job_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('5630', '2019-05-18 10:21:24', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '30', 'admin');
INSERT INTO `log` VALUES ('5631', '2019-05-18 10:21:32', '删除岗位', 'me.zhengjie.exception.BadRequestException: could not execute statement; SQL [n/a]; constraint [null]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement\r\n	at me.zhengjie.aspect.DataScopeAspect.logAround(DataScopeAspect.java:51)\r\n	at sun.reflect.GeneratedMethodAccessor228.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.system.rest.JobController$$EnhancerBySpringCGLIB$$eb4bd5fe.delete(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doDelete(FrameworkServlet.java:923)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:666)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.JwtAuthorizationTokenFilter.doFilterInternal(JwtAuthorizationTokenFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.system.rest.JobController.delete()', '{ id: 20 }', '127.0.0.1', '65', 'admin');
INSERT INTO `log` VALUES ('5632', '2019-05-18 10:21:43', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5633', '2019-05-18 10:21:44', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5634', '2019-05-18 10:21:44', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '203', 'admin');
INSERT INTO `log` VALUES ('5635', '2019-05-18 10:21:55', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=job_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5636', '2019-05-18 10:21:55', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '23', 'admin');
INSERT INTO `log` VALUES ('5637', '2019-05-18 10:22:35', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5638', '2019-05-18 10:22:42', '修改岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.update()', '{ resources: Job(id=12, name=老师, sort=5, enabled=true, dept=Dept(id=1, name=null, enabled=null, pid=null, createTime=null, roles=null), createTime=2019-03-31 13:39:43.0) }', '127.0.0.1', '35', 'admin');
INSERT INTO `log` VALUES ('5639', '2019-05-18 10:22:42', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5640', '2019-05-18 10:22:44', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('5641', '2019-05-18 10:22:50', '修改岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.update()', '{ resources: Job(id=11, name=学生, sort=6, enabled=true, dept=Dept(id=7, name=null, enabled=null, pid=null, createTime=null, roles=null), createTime=2019-03-31 13:39:30.0) }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5642', '2019-05-18 10:22:50', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '19', 'admin');
INSERT INTO `log` VALUES ('5643', '2019-05-18 10:23:01', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('5644', '2019-05-18 10:23:01', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5645', '2019-05-18 10:23:01', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '72', 'admin');
INSERT INTO `log` VALUES ('5646', '2019-05-18 10:23:11', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=job_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '2', 'admin');
INSERT INTO `log` VALUES ('5647', '2019-05-18 10:23:11', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('5648', '2019-05-18 10:23:17', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5649', '2019-05-18 10:23:24', '修改岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.update()', '{ resources: Job(id=20, name=老师, sort=999, enabled=true, dept=Dept(id=11, name=null, enabled=null, pid=null, createTime=null, roles=null), createTime=2019-05-13 00:04:13.0) }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5650', '2019-05-18 10:23:24', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5651', '2019-05-18 10:23:25', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('5652', '2019-05-18 10:23:34', '修改岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.update()', '{ resources: Job(id=12, name=超级管理员, sort=5, enabled=true, dept=Dept(id=1, name=null, enabled=null, pid=null, createTime=null, roles=null), createTime=2019-03-31 13:39:43.0) }', '127.0.0.1', '121', 'admin');
INSERT INTO `log` VALUES ('5653', '2019-05-18 10:23:34', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5654', '2019-05-18 10:23:37', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('5655', '2019-05-18 10:23:37', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5656', '2019-05-18 10:23:37', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '70', 'admin');
INSERT INTO `log` VALUES ('5657', '2019-05-18 10:23:44', '删除用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.delete()', '{ id: 5 }', '127.0.0.1', '80', 'admin');
INSERT INTO `log` VALUES ('5658', '2019-05-18 10:23:44', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '76', 'admin');
INSERT INTO `log` VALUES ('5659', '2019-05-18 10:23:49', '删除用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.delete()', '{ id: 6 }', '127.0.0.1', '53', 'admin');
INSERT INTO `log` VALUES ('5660', '2019-05-18 10:23:49', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '56', 'admin');
INSERT INTO `log` VALUES ('5661', '2019-05-18 10:23:50', '删除用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.delete()', '{ id: 7 }', '127.0.0.1', '21', 'admin');
INSERT INTO `log` VALUES ('5662', '2019-05-18 10:23:50', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '39', 'admin');
INSERT INTO `log` VALUES ('5663', '2019-05-18 10:24:01', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=job_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5664', '2019-05-18 10:24:01', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5665', '2019-05-18 10:24:07', '删除岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.delete()', '{ id: 19 }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5666', '2019-05-18 10:24:07', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5667', '2019-05-18 10:24:09', '删除岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.delete()', '{ id: 2 }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5668', '2019-05-18 10:24:09', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('5669', '2019-05-18 10:24:11', '删除岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.delete()', '{ id: 8 }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('5670', '2019-05-18 10:24:11', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5671', '2019-05-18 10:24:13', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('5672', '2019-05-18 10:24:16', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5673', '2019-05-18 10:24:16', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('5674', '2019-05-18 10:24:19', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5675', '2019-05-18 10:24:51', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '26', 'admin');
INSERT INTO `log` VALUES ('5676', '2019-05-18 10:24:52', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5677', '2019-05-18 10:24:55', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5678', '2019-05-18 10:24:55', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('5679', '2019-05-18 10:25:51', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5680', '2019-05-18 10:25:56', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5681', '2019-05-18 10:26:11', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@5dee1351 }', '127.0.0.1', '19', 'admin');
INSERT INTO `log` VALUES ('5682', '2019-05-18 10:26:11', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5683', '2019-05-18 10:26:17', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '91', 'admin');
INSERT INTO `log` VALUES ('5684', '2019-05-18 10:26:25', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5685', '2019-05-18 10:26:39', '修改角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.update()', '{ resources: Role{id=2, name=\'学生\', remark=\'\', createDateTime=null} }', '127.0.0.1', '45', 'admin');
INSERT INTO `log` VALUES ('5686', '2019-05-18 10:26:40', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '45', 'admin');
INSERT INTO `log` VALUES ('5687', '2019-05-18 10:26:47', '修改角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.update()', '{ resources: Role{id=2, name=\'学生\', remark=\'\', createDateTime=null} }', '127.0.0.1', '21', 'admin');
INSERT INTO `log` VALUES ('5688', '2019-05-18 10:26:47', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '42', 'admin');
INSERT INTO `log` VALUES ('5689', '2019-05-18 10:26:57', '修改角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.update()', '{ resources: Role{id=3, name=\'老师\', remark=\'\', createDateTime=null} }', '127.0.0.1', '38', 'admin');
INSERT INTO `log` VALUES ('5690', '2019-05-18 10:26:57', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '45', 'admin');
INSERT INTO `log` VALUES ('5691', '2019-05-18 10:27:00', '删除角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.delete()', '{ id: 4 }', '127.0.0.1', '52', 'admin');
INSERT INTO `log` VALUES ('5692', '2019-05-18 10:27:01', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '34', 'admin');
INSERT INTO `log` VALUES ('5693', '2019-05-18 10:27:02', '删除角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.delete()', '{ id: 5 }', '127.0.0.1', '25', 'admin');
INSERT INTO `log` VALUES ('5694', '2019-05-18 10:27:02', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '28', 'admin');
INSERT INTO `log` VALUES ('5695', '2019-05-18 10:27:05', '删除角色', 'me.zhengjie.exception.BadRequestException: could not execute statement; SQL [n/a]; constraint [null]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement\r\n	at me.zhengjie.aspect.DataScopeAspect.logAround(DataScopeAspect.java:51)\r\n	at sun.reflect.GeneratedMethodAccessor228.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.system.rest.RoleController$$EnhancerBySpringCGLIB$$d3ecbda1.delete(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doDelete(FrameworkServlet.java:923)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:666)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.JwtAuthorizationTokenFilter.doFilterInternal(JwtAuthorizationTokenFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.system.rest.RoleController.delete()', '{ id: 6 }', '127.0.0.1', '53', 'admin');
INSERT INTO `log` VALUES ('5696', '2019-05-18 10:27:13', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5697', '2019-05-18 10:27:13', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5698', '2019-05-18 10:27:13', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '42', 'admin');
INSERT INTO `log` VALUES ('5699', '2019-05-18 10:27:19', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('5700', '2019-05-18 10:28:00', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=2, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '44', 'admin');
INSERT INTO `log` VALUES ('5701', '2019-05-18 10:28:23', '修改角色权限', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updatePermission()', '{ resources: Role{id=2, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '24', 'admin');
INSERT INTO `log` VALUES ('5702', '2019-05-18 10:28:48', '修改角色权限', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updatePermission()', '{ resources: Role{id=3, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '54', 'admin');
INSERT INTO `log` VALUES ('5703', '2019-05-18 10:29:21', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=3, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '56', 'admin');
INSERT INTO `log` VALUES ('5704', '2019-05-18 10:29:30', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5705', '2019-05-18 10:29:36', '删除菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.delete()', '{ id: 36 }', '127.0.0.1', '33', 'admin');
INSERT INTO `log` VALUES ('5706', '2019-05-18 10:29:36', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5707', '2019-05-18 10:29:39', '删除菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.delete()', '{ id: 10 }', '127.0.0.1', '21', 'admin');
INSERT INTO `log` VALUES ('5708', '2019-05-18 10:29:39', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5709', '2019-05-18 10:29:43', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '30', 'admin');
INSERT INTO `log` VALUES ('5710', '2019-05-18 10:29:48', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5711', '2019-05-18 10:29:48', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5712', '2019-05-18 10:29:49', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '60', 'admin');
INSERT INTO `log` VALUES ('5713', '2019-05-18 10:29:59', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5714', '2019-05-18 10:29:59', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 2 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '19', 'admin');
INSERT INTO `log` VALUES ('5715', '2019-05-18 10:30:06', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 1 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5716', '2019-05-18 10:30:08', '修改用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.update()', '{ resources: User{id=1, username=\'admin\', avatar=\'null\', email=\'admin@eladmin.net\', enabled=true, password=\'null\', createTime=null, lastPasswordResetTime=null} }', '127.0.0.1', '39', 'admin');
INSERT INTO `log` VALUES ('5717', '2019-05-18 10:30:08', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '44', 'admin');
INSERT INTO `log` VALUES ('5718', '2019-05-18 10:30:10', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 2 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5719', '2019-05-18 10:30:10', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5720', '2019-05-18 10:30:20', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 1 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5721', '2019-05-18 10:30:23', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 7 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5722', '2019-05-18 10:30:26', '修改用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.update()', '{ resources: User{id=3, username=\'test\', avatar=\'null\', email=\'test@eladmin.net\', enabled=true, password=\'null\', createTime=null, lastPasswordResetTime=null} }', '127.0.0.1', '34', 'admin');
INSERT INTO `log` VALUES ('5723', '2019-05-18 10:30:26', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '45', 'admin');
INSERT INTO `log` VALUES ('5724', '2019-05-18 10:30:44', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=test, password= ******} }', '127.0.0.1', '11', 'test');
INSERT INTO `log` VALUES ('5725', '2019-05-18 10:30:46', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=test, password= ******} }', '127.0.0.1', '8', 'test');
INSERT INTO `log` VALUES ('5726', '2019-05-18 10:31:32', '查询Grade', null, 'INFO', 'me.zhengjie.modules.grade.rest.GradeController.getGrades()', '{ resources: GradeDTO(id=null, title=null, score=null, tea=null, cus=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '44', 'test');
INSERT INTO `log` VALUES ('5727', '2019-05-18 10:32:07', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '31', 'admin');
INSERT INTO `log` VALUES ('5728', '2019-05-18 10:32:31', '修改角色权限', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updatePermission()', '{ resources: Role{id=2, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('5729', '2019-05-18 10:32:40', '查询Grade', null, 'INFO', 'me.zhengjie.modules.grade.rest.GradeController.getGrades()', '{ resources: GradeDTO(id=null, title=null, score=null, tea=null, cus=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '2', 'test');
INSERT INTO `log` VALUES ('5730', '2019-05-18 10:33:36', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, send=admin, receive=admin, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '35', 'admin');
INSERT INTO `log` VALUES ('5731', '2019-05-18 10:37:29', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, send=admin, receive=admin, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('5732', '2019-05-18 10:37:39', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, send=admin, receive=admin, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('5733', '2019-05-18 10:37:56', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=test, password= ******} }', '127.0.0.1', '15', 'test');
INSERT INTO `log` VALUES ('5734', '2019-05-18 10:38:43', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=test, password= ******} }', '127.0.0.1', '8', 'test');
INSERT INTO `log` VALUES ('5735', '2019-05-18 10:39:00', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, send=test, receive=test, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'test');
INSERT INTO `log` VALUES ('5736', '2019-05-18 10:39:27', '新增Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.create()', '{ resources: Notice(id=11, title=12321412, send=test, receive=admin, content=1242131234123, createTime=null) }', '127.0.0.1', '10', 'test');
INSERT INTO `log` VALUES ('5737', '2019-05-18 10:39:27', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, send=test, receive=test, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', 'test');
INSERT INTO `log` VALUES ('5738', '2019-05-18 10:39:31', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, send=admin, receive=admin, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('5739', '2019-05-18 10:42:18', '查询Grade', null, 'INFO', 'me.zhengjie.modules.grade.rest.GradeController.getGrades()', '{ resources: GradeDTO(id=null, title=null, score=null, tea=null, cus=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '2', 'test');
INSERT INTO `log` VALUES ('5740', '2019-05-18 10:45:32', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, send=test, receive=test, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', 'test');
INSERT INTO `log` VALUES ('5741', '2019-05-18 10:45:55', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5742', '2019-05-18 10:46:37', '查询Grade', null, 'INFO', 'me.zhengjie.modules.grade.rest.GradeController.getGrades()', '{ resources: GradeDTO(id=null, title=null, score=null, tea=null, cus=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5743', '2019-05-18 10:46:41', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5744', '2019-05-18 10:49:02', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '50', 'admin');
INSERT INTO `log` VALUES ('5745', '2019-05-18 10:49:07', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=2, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('5746', '2019-05-18 10:49:12', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, send=test, receive=test, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '2', 'test');
INSERT INTO `log` VALUES ('5747', '2019-05-18 10:49:14', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '10', 'test');
INSERT INTO `log` VALUES ('5748', '2019-05-18 10:51:14', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '6', 'test');
INSERT INTO `log` VALUES ('5749', '2019-05-18 10:54:28', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '7', 'test');
INSERT INTO `log` VALUES ('5750', '2019-05-18 10:55:24', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5751', '2019-05-18 10:55:51', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5752', '2019-05-18 10:55:53', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5753', '2019-05-18 11:00:40', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '130', 'admin');
INSERT INTO `log` VALUES ('5754', '2019-05-18 11:01:18', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('5755', '2019-05-18 11:05:45', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '213964', 'admin');
INSERT INTO `log` VALUES ('5756', '2019-05-18 11:06:13', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3001', 'admin');
INSERT INTO `log` VALUES ('5757', '2019-05-18 11:06:26', '查询Grade', null, 'INFO', 'me.zhengjie.modules.grade.rest.GradeController.getGrades()', '{ resources: GradeDTO(id=null, title=null, score=null, tea=null, cus=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '20', 'admin');
INSERT INTO `log` VALUES ('5758', '2019-05-18 11:06:31', '删除Grade', null, 'INFO', 'me.zhengjie.modules.grade.rest.GradeController.delete()', '{ id: 6 }', '127.0.0.1', '88', 'admin');
INSERT INTO `log` VALUES ('5759', '2019-05-18 11:06:31', '查询Grade', null, 'INFO', 'me.zhengjie.modules.grade.rest.GradeController.getGrades()', '{ resources: GradeDTO(id=null, title=null, score=null, tea=null, cus=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5760', '2019-05-18 11:06:34', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, send=admin, receive=admin, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '45', 'admin');
INSERT INTO `log` VALUES ('5761', '2019-05-18 11:06:34', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5762', '2019-05-18 19:02:01', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '1375', 'admin');
INSERT INTO `log` VALUES ('5763', '2019-05-18 19:03:33', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '269', 'admin');
INSERT INTO `log` VALUES ('5764', '2019-05-18 19:03:42', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '72', 'admin');
INSERT INTO `log` VALUES ('5765', '2019-05-18 19:03:53', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '40', 'admin');
INSERT INTO `log` VALUES ('5766', '2019-05-18 19:04:20', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '36', 'admin');
INSERT INTO `log` VALUES ('5767', '2019-05-18 19:04:20', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '74', 'admin');
INSERT INTO `log` VALUES ('5768', '2019-05-18 19:04:20', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '86', 'admin');
INSERT INTO `log` VALUES ('5769', '2019-05-18 19:04:41', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5770', '2019-05-18 19:04:41', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '19', 'admin');
INSERT INTO `log` VALUES ('5771', '2019-05-18 19:04:54', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=job_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5772', '2019-05-18 19:04:54', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '40', 'admin');
INSERT INTO `log` VALUES ('5773', '2019-05-18 19:05:01', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '44', 'admin');
INSERT INTO `log` VALUES ('5774', '2019-05-18 19:05:20', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, send=admin, receive=admin, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '34', 'admin');
INSERT INTO `log` VALUES ('5775', '2019-05-18 19:06:20', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5776', '2019-05-18 19:07:31', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, send=admin, receive=admin, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5777', '2019-05-18 19:11:29', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, send=admin, receive=admin, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5778', '2019-05-18 19:11:40', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '129', 'admin');
INSERT INTO `log` VALUES ('5779', '2019-05-18 19:12:38', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, send=admin, receive=admin, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '2', 'admin');
INSERT INTO `log` VALUES ('5780', '2019-05-18 19:13:02', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5781', '2019-05-18 19:13:04', '查询Grade', null, 'INFO', 'me.zhengjie.modules.grade.rest.GradeController.getGrades()', '{ resources: GradeDTO(id=null, title=null, score=null, tea=null, cus=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('5782', '2019-05-18 19:13:24', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('5783', '2019-05-18 19:13:24', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5784', '2019-05-18 19:13:24', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '47', 'admin');
INSERT INTO `log` VALUES ('5785', '2019-05-18 19:13:27', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5786', '2019-05-18 19:13:42', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5787', '2019-05-18 19:13:42', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5788', '2019-05-18 19:13:42', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '33', 'admin');
INSERT INTO `log` VALUES ('5789', '2019-05-18 19:13:51', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=test, password= ******} }', '127.0.0.1', '10', 'test');
INSERT INTO `log` VALUES ('5790', '2019-05-18 19:14:11', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, send=test, receive=test, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'test');
INSERT INTO `log` VALUES ('5791', '2019-05-18 19:14:13', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', 'test');
INSERT INTO `log` VALUES ('5792', '2019-05-18 19:14:53', '上传图片', null, 'INFO', 'me.zhengjie.rest.PictureController.upload()', '{ file: org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@11ca2526 }', '127.0.0.1', '3699', 'test');
INSERT INTO `log` VALUES ('5793', '2019-05-18 19:15:37', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '6', 'test');
INSERT INTO `log` VALUES ('5794', '2019-05-18 19:15:59', '上传图片', null, 'INFO', 'me.zhengjie.rest.PictureController.upload()', '{ file: org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@3c3f7605 }', '127.0.0.1', '2025', 'test');
INSERT INTO `log` VALUES ('5795', '2019-05-18 19:16:36', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', 'test');
INSERT INTO `log` VALUES ('5796', '2019-05-18 19:17:23', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5797', '2019-05-18 19:17:53', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5798', '2019-05-18 19:18:12', '查询Grade', null, 'INFO', 'me.zhengjie.modules.grade.rest.GradeController.getGrades()', '{ resources: GradeDTO(id=null, title=null, score=null, tea=null, cus=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5799', '2019-05-18 19:18:28', '查询Grade', null, 'INFO', 'me.zhengjie.modules.grade.rest.GradeController.getGrades()', '{ resources: GradeDTO(id=null, title=null, score=null, tea=null, cus=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'test');
INSERT INTO `log` VALUES ('5800', '2019-05-18 19:18:42', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '6', 'test');
INSERT INTO `log` VALUES ('5801', '2019-05-18 19:18:44', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, send=test, receive=test, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', 'test');
INSERT INTO `log` VALUES ('5802', '2019-05-18 19:23:28', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5803', '2019-05-18 19:27:21', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '6', 'test');
INSERT INTO `log` VALUES ('5804', '2019-05-18 19:27:29', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5805', '2019-05-18 19:27:53', '删除Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.delete()', '{ id: 14 }', '127.0.0.1', '136', 'admin');
INSERT INTO `log` VALUES ('5806', '2019-05-18 19:27:53', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5807', '2019-05-18 19:28:41', '查询Article', null, 'INFO', 'me.zhengjie.modules.article.rest.ArticleController.getArticles()', '{ resources: ArticleDTO(id=null, title=null, content=null, cus=null, createTime=null, tea=null, state=null, read=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '14', 'test');
INSERT INTO `log` VALUES ('5808', '2019-05-18 19:28:54', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, send=test, receive=test, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '2', 'test');
INSERT INTO `log` VALUES ('5809', '2019-05-18 19:29:30', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '78', 'admin');
INSERT INTO `log` VALUES ('5810', '2019-05-18 19:30:29', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5811', '2019-05-18 19:31:08', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@11c784a4 }', '127.0.0.1', '86', 'admin');
INSERT INTO `log` VALUES ('5812', '2019-05-18 19:31:08', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5813', '2019-05-18 19:31:12', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '68', 'admin');
INSERT INTO `log` VALUES ('5814', '2019-05-18 19:31:21', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('5815', '2019-05-18 19:31:26', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '43', 'admin');
INSERT INTO `log` VALUES ('5816', '2019-05-18 19:31:30', '查询图片', null, 'INFO', 'me.zhengjie.rest.PictureController.getRoles()', '{ resources: Picture{filename=\'null\'} pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '66', 'admin');
INSERT INTO `log` VALUES ('5817', '2019-05-18 19:33:31', '上传图片', null, 'INFO', 'me.zhengjie.rest.PictureController.upload()', '{ file: org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@527d74e8 }', '127.0.0.1', '1005', 'admin');
INSERT INTO `log` VALUES ('5818', '2019-05-18 19:34:40', '查询图片', null, 'INFO', 'me.zhengjie.rest.PictureController.getRoles()', '{ resources: Picture{filename=\'null\'} pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5819', '2019-05-18 19:34:40', '查询图片', null, 'INFO', 'me.zhengjie.rest.PictureController.getRoles()', '{ resources: Picture{filename=\'null\'} pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('5820', '2019-05-18 21:30:47', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '429', 'admin');
INSERT INTO `log` VALUES ('5821', '2019-05-18 21:31:18', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '408', 'admin');
INSERT INTO `log` VALUES ('5822', '2019-05-18 21:32:40', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '1554', 'admin');
INSERT INTO `log` VALUES ('5823', '2019-05-18 21:33:01', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '263', 'admin');
INSERT INTO `log` VALUES ('5824', '2019-05-20 20:13:16', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '436', 'admin');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `i_frame` bit(1) DEFAULT NULL COMMENT '是否外链',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `component` varchar(255) DEFAULT NULL COMMENT '组件',
  `pid` bigint(20) NOT NULL COMMENT '上级菜单ID',
  `sort` bigint(20) NOT NULL COMMENT '排序',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `path` varchar(255) DEFAULT NULL COMMENT '链接地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '2018-12-18 15:11:29', '\0', '系统管理', null, '0', '1', 'system', 'system');
INSERT INTO `menu` VALUES ('2', '2018-12-18 15:14:44', '\0', '用户管理', 'system/user/index', '1', '2', 'peoples', 'user');
INSERT INTO `menu` VALUES ('3', '2018-12-18 15:16:07', '\0', '角色管理', 'system/role/index', '1', '3', 'role', 'role');
INSERT INTO `menu` VALUES ('4', '2018-12-18 15:16:45', '\0', '权限管理', 'system/permission/index', '1', '4', 'permission', 'permission');
INSERT INTO `menu` VALUES ('5', '2018-12-18 15:17:28', '\0', '菜单管理', 'system/menu/index', '1', '5', 'menu', 'menu');
INSERT INTO `menu` VALUES ('6', '2018-12-18 15:17:48', '\0', '报告', null, '0', '10', 'monitor', 'manage');
INSERT INTO `menu` VALUES ('7', '2018-12-18 15:18:26', '\0', '消息', 'manage/notice/index', '6', '11', 'log', 'notice');
INSERT INTO `menu` VALUES ('8', '2018-12-18 15:19:01', '\0', '实习报告', 'manage/article/index', '6', '13', 'redis', 'article');
INSERT INTO `menu` VALUES ('9', '2018-12-18 15:19:34', '\0', '成绩', 'manage/grade/index', '6', '14', 'sqlMonitor', 'grade');
INSERT INTO `menu` VALUES ('12', '2018-12-24 20:37:35', '\0', '物业公告', 'manage/pro_topic/index', '6', '16', 'codeConsole', 'pro_topic');
INSERT INTO `menu` VALUES ('14', '2018-12-27 10:13:09', '\0', '社区信息', 'manage/erea_info/index', '6', '24', 'email', 'erea_info');
INSERT INTO `menu` VALUES ('15', '2018-12-27 11:58:25', '\0', '上传报告', 'components/Editor', '6', '52', 'fwb', 'tinymce');
INSERT INTO `menu` VALUES ('24', '2019-01-04 16:24:48', '\0', '三级菜单1', 'nested/menu1/menu1-1', '22', '999', 'menu', 'menu1-1');
INSERT INTO `menu` VALUES ('27', '2019-01-07 17:27:32', '\0', '三级菜单2', 'nested/menu1/menu1-2', '22', '999', 'menu', 'menu1-2');
INSERT INTO `menu` VALUES ('30', '2019-01-11 15:45:55', '\0', '代码生成', 'generator/index', '1', '22', 'dev', 'generator');
INSERT INTO `menu` VALUES ('32', '2019-01-13 13:49:03', '\0', '政府公告', 'manage/topic/index', '6', '12', 'error', 'topic');
INSERT INTO `menu` VALUES ('35', '2019-03-25 09:46:00', '\0', '部门管理', 'system/dept/index', '1', '6', 'dept', 'dept');
INSERT INTO `menu` VALUES ('37', '2019-03-29 13:51:18', '\0', '岗位管理', 'system/job/index', '1', '7', 'Steve-Jobs', 'job');
INSERT INTO `menu` VALUES ('39', '2019-04-10 11:49:04', '\0', '字典管理', 'system/dict/index', '1', '8', 'dictionary', 'dict');
INSERT INTO `menu` VALUES ('40', '2019-05-12 20:46:25', '\0', '商品', 'manage/goods/index', '6', '999', 'icon', 'goods');
INSERT INTO `menu` VALUES ('41', '2019-05-18 19:31:08', '\0', '个人图库', 'tools/picture/index', '6', '999', 'anq', 'pictures');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `send` varchar(11) DEFAULT NULL COMMENT '发送人',
  `receive` varchar(11) DEFAULT NULL COMMENT '接受人',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='消息表';

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('10', '1234123', 'admin', '123', '1234', '2019-05-28 00:00:00');
INSERT INTO `notice` VALUES ('11', '12321412', 'test', 'admin', '1242131234123', '2019-05-18 10:39:27');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `alias` varchar(255) DEFAULT NULL COMMENT '别名',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `pid` int(11) NOT NULL COMMENT '上级权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '超级管理员', '2018-12-03 12:27:48', 'ADMIN', '0');
INSERT INTO `permission` VALUES ('2', '用户管理', '2018-12-03 12:28:19', 'USER_ALL', '0');
INSERT INTO `permission` VALUES ('3', '用户查询', '2018-12-03 12:31:35', 'USER_SELECT', '2');
INSERT INTO `permission` VALUES ('4', '用户创建', '2018-12-03 12:31:35', 'USER_CREATE', '2');
INSERT INTO `permission` VALUES ('5', '用户编辑', '2018-12-03 12:31:35', 'USER_EDIT', '2');
INSERT INTO `permission` VALUES ('6', '用户删除', '2018-12-03 12:31:35', 'USER_DELETE', '2');
INSERT INTO `permission` VALUES ('7', '角色管理', '2018-12-03 12:28:19', 'ROLES_ALL', '0');
INSERT INTO `permission` VALUES ('8', '角色查询', '2018-12-03 12:31:35', 'ROLES_SELECT', '7');
INSERT INTO `permission` VALUES ('10', '角色创建', '2018-12-09 20:10:16', 'ROLES_CREATE', '7');
INSERT INTO `permission` VALUES ('11', '角色编辑', '2018-12-09 20:10:42', 'ROLES_EDIT', '7');
INSERT INTO `permission` VALUES ('12', '角色删除', '2018-12-09 20:11:07', 'ROLES_DELETE', '7');
INSERT INTO `permission` VALUES ('13', '权限管理', '2018-12-09 20:11:37', 'PERMISSION_ALL', '0');
INSERT INTO `permission` VALUES ('14', '权限查询', '2018-12-09 20:11:55', 'PERMISSION_SELECT', '13');
INSERT INTO `permission` VALUES ('15', '权限创建', '2018-12-09 20:14:10', 'PERMISSION_CREATE', '13');
INSERT INTO `permission` VALUES ('16', '权限编辑', '2018-12-09 20:15:44', 'PERMISSION_EDIT', '13');
INSERT INTO `permission` VALUES ('17', '权限删除', '2018-12-09 20:15:59', 'PERMISSION_DELETE', '13');
INSERT INTO `permission` VALUES ('18', '商家管理', '2018-12-17 13:53:25', 'REDIS_ALL', '0');
INSERT INTO `permission` VALUES ('19', '新增', '2018-12-17 13:53:44', 'REDIS_CREATE', '18');
INSERT INTO `permission` VALUES ('20', '缓存查询', '2018-12-17 13:54:07', 'REDIS_SELECT', '18');
INSERT INTO `permission` VALUES ('21', '缓存编辑', '2018-12-17 13:54:26', 'REDIS_EDIT', '18');
INSERT INTO `permission` VALUES ('22', '缓存删除', '2018-12-17 13:55:04', 'REDIS_DELETE', '18');
INSERT INTO `permission` VALUES ('23', '物业管理', '2018-12-27 20:31:49', 'PICTURE_ALL', '0');
INSERT INTO `permission` VALUES ('24', '查询', '2018-12-27 20:32:04', 'PICTURE_SELECT', '23');
INSERT INTO `permission` VALUES ('25', '新增', '2018-12-27 20:32:24', 'PICTURE_UPLOAD', '23');
INSERT INTO `permission` VALUES ('26', '删除', '2018-12-27 20:32:45', 'PICTURE_DELETE', '23');
INSERT INTO `permission` VALUES ('29', '菜单管理', '2018-12-28 17:34:31', 'MENU_ALL', '0');
INSERT INTO `permission` VALUES ('30', '菜单查询', '2018-12-28 17:34:41', 'MENU_SELECT', '29');
INSERT INTO `permission` VALUES ('31', '菜单创建', '2018-12-28 17:34:52', 'MENU_CREATE', '29');
INSERT INTO `permission` VALUES ('32', '菜单编辑', '2018-12-28 17:35:20', 'MENU_EDIT', '29');
INSERT INTO `permission` VALUES ('33', '菜单删除', '2018-12-28 17:35:29', 'MENU_DELETE', '29');
INSERT INTO `permission` VALUES ('35', '物流管理', '2019-01-08 14:59:57', 'JOB_ALL', '0');
INSERT INTO `permission` VALUES ('36', '查询', '2019-01-08 15:00:09', 'JOB_SELECT', '35');
INSERT INTO `permission` VALUES ('37', '创建', '2019-01-08 15:00:20', 'JOB_CREATE', '35');
INSERT INTO `permission` VALUES ('38', '编辑', '2019-01-08 15:00:33', 'JOB_EDIT', '35');
INSERT INTO `permission` VALUES ('39', '删除', '2019-01-08 15:01:13', 'JOB_DELETE', '35');
INSERT INTO `permission` VALUES ('40', '社区管理', '2019-03-29 17:06:55', 'DEPT_ALL', '0');
INSERT INTO `permission` VALUES ('41', '社区查询', '2019-03-29 17:07:09', 'DEPT_SELECT', '40');
INSERT INTO `permission` VALUES ('42', '社区创建', '2019-03-29 17:07:29', 'DEPT_CREATE', '40');
INSERT INTO `permission` VALUES ('43', '社区编辑', '2019-03-29 17:07:52', 'DEPT_EDIT', '40');
INSERT INTO `permission` VALUES ('44', '社区删除', '2019-03-29 17:08:14', 'DEPT_DELETE', '40');
INSERT INTO `permission` VALUES ('45', '岗位管理', '2019-03-29 17:08:52', 'USERJOB_ALL', '0');
INSERT INTO `permission` VALUES ('46', '岗位查询', '2019-03-29 17:10:27', 'USERJOB_SELECT', '45');
INSERT INTO `permission` VALUES ('47', '岗位创建', '2019-03-29 17:10:55', 'USERJOB_CREATE', '45');
INSERT INTO `permission` VALUES ('48', '岗位编辑', '2019-03-29 17:11:08', 'USERJOB_EDIT', '45');
INSERT INTO `permission` VALUES ('49', '岗位删除', '2019-03-29 17:11:19', 'USERJOB_DELETE', '45');
INSERT INTO `permission` VALUES ('50', '商品管理', '2019-04-10 16:24:51', 'DICT_ALL', '0');
INSERT INTO `permission` VALUES ('51', '查询', '2019-04-10 16:25:16', 'DICT_SELECT', '50');
INSERT INTO `permission` VALUES ('52', '创建', '2019-04-10 16:25:29', 'DICT_CREATE', '50');
INSERT INTO `permission` VALUES ('53', '编辑', '2019-04-10 16:27:19', 'DICT_EDIT', '50');
INSERT INTO `permission` VALUES ('54', '删除', '2019-04-10 16:27:30', 'DICT_DELETE', '50');
INSERT INTO `permission` VALUES ('55', '修改', '2019-05-12 20:15:50', 'PICTURE_UPDATE', '23');
INSERT INTO `permission` VALUES ('56', '医疗管理', '2019-05-12 20:28:27', 'medical_all', '0');
INSERT INTO `permission` VALUES ('57', '创建', '2019-05-12 20:28:54', 'medical_create', '56');
INSERT INTO `permission` VALUES ('58', '修改', '2019-05-12 20:29:17', 'medical_edit', '56');
INSERT INTO `permission` VALUES ('59', '删除', '2019-05-12 20:29:54', 'medical_delete', '56');
INSERT INTO `permission` VALUES ('60', '查询', '2019-05-12 20:30:21', 'medical_select', '56');
INSERT INTO `permission` VALUES ('61', '通知', '2019-05-12 20:49:37', 'notice_all', '0');
INSERT INTO `permission` VALUES ('62', '查询', '2019-05-12 20:50:08', 'notice_select', '61');
INSERT INTO `permission` VALUES ('63', '创建', '2019-05-12 20:51:06', 'notice_create', '61');
INSERT INTO `permission` VALUES ('64', '编辑', '2019-05-12 20:51:45', 'notice_edit', '61');
INSERT INTO `permission` VALUES ('65', '删除', '2019-05-12 20:52:06', 'notice_delete', '61');

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime DEFAULT NULL COMMENT '上传日期',
  `delete_url` varchar(255) DEFAULT NULL COMMENT '删除的URL',
  `filename` varchar(255) DEFAULT NULL COMMENT '图片名称',
  `height` varchar(255) DEFAULT NULL COMMENT '图片高度',
  `size` varchar(255) DEFAULT NULL COMMENT '图片大小',
  `url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `width` varchar(255) DEFAULT NULL COMMENT '图片宽度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('1', '2019-05-18 19:14:53', 'https://sm.ms/delete/Y9hBuml5LgbAdkv', 'QQ浏览器截图_20180421012243_FDDE36E0CD834fe192FC5845C8EE17FF.jpg', '632', '36.09KB   ', 'https://i.loli.net/2019/05/18/5cdfe72bcd58911230.jpg', 'test', '1366');
INSERT INTO `picture` VALUES ('2', '2019-05-18 19:15:59', 'https://sm.ms/delete/Hgc3lvsf9ROkDJS', 'QQ浏览器截图_20180430103933_AA84C26E9A8246fe80A799E15FF640B1.jpg', '632', '138.05KB   ', 'https://i.loli.net/2019/05/18/5cdfe76e415d812089.jpg', 'test', '1366');
INSERT INTO `picture` VALUES ('3', '2019-05-18 19:33:31', 'https://sm.ms/delete/l2EgDBmwL4CKpzX', 'QQ浏览器截图_20180421012300_8695FC1429714ea0B6250CF1785C711F.jpg', '632', '68.06KB   ', 'https://i.loli.net/2019/05/18/5cdfeb895ca9d58141.jpg', 'admin', '1366');

-- ----------------------------
-- Table structure for qiniu_config
-- ----------------------------
DROP TABLE IF EXISTS `qiniu_config`;
CREATE TABLE `qiniu_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `access_key` text COMMENT 'accessKey',
  `bucket` varchar(255) DEFAULT NULL COMMENT 'Bucket 识别符',
  `host` varchar(255) NOT NULL COMMENT '外链域名',
  `secret_key` text COMMENT 'secretKey',
  `type` varchar(255) DEFAULT NULL COMMENT '空间类型',
  `zone` varchar(255) DEFAULT NULL COMMENT '机房',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qiniu_config
-- ----------------------------

-- ----------------------------
-- Table structure for qiniu_content
-- ----------------------------
DROP TABLE IF EXISTS `qiniu_content`;
CREATE TABLE `qiniu_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bucket` varchar(255) DEFAULT NULL COMMENT 'Bucket 识别符',
  `name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `size` varchar(255) DEFAULT NULL COMMENT '文件大小',
  `type` varchar(255) DEFAULT NULL COMMENT '文件类型：私有或公开',
  `update_time` datetime DEFAULT NULL COMMENT '上传或同步的时间',
  `url` varchar(255) DEFAULT NULL COMMENT '文件url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qiniu_content
-- ----------------------------

-- ----------------------------
-- Table structure for quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `quartz_job`;
CREATE TABLE `quartz_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) DEFAULT NULL COMMENT 'Spring Bean名称',
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron 表达式',
  `is_pause` bit(1) DEFAULT NULL COMMENT '状态：1暂停、0启用',
  `job_name` varchar(255) DEFAULT NULL COMMENT '任务名称',
  `method_name` varchar(255) DEFAULT NULL COMMENT '方法名称',
  `params` varchar(255) DEFAULT NULL COMMENT '参数',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `update_time` datetime DEFAULT NULL COMMENT '创建或更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quartz_job
-- ----------------------------
INSERT INTO `quartz_job` VALUES ('1', 'visitsTask', '0 0 0 * * ?', '\0', '更新访客记录', 'run', null, '每日0点创建新的访客记录', '2019-01-08 14:53:31');
INSERT INTO `quartz_job` VALUES ('2', 'testTask', '0/5 * * * * ?', '', '测试1', 'run1', 'test', '带参测试，多参使用json', '2019-01-13 14:20:50');
INSERT INTO `quartz_job` VALUES ('3', 'testTask', '0/5 * * * * ?', '', '测试', 'run', '', '不带参测试', '2019-04-09 16:16:44');

-- ----------------------------
-- Table structure for quartz_log
-- ----------------------------
DROP TABLE IF EXISTS `quartz_log`;
CREATE TABLE `quartz_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `baen_name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `cron_expression` varchar(255) DEFAULT NULL,
  `exception_detail` text,
  `is_success` bit(1) DEFAULT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `method_name` varchar(255) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quartz_log
-- ----------------------------
INSERT INTO `quartz_log` VALUES ('1', 'visitsTask', '2019-05-13 00:00:00', '0 0 0 * * ?', null, '', '更新访客记录', 'run', null, '135');
INSERT INTO `quartz_log` VALUES ('2', 'visitsTask', '2019-05-18 00:00:00', '0 0 0 * * ?', null, '', '更新访客记录', 'run', null, '67');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `data_scope` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '2018-11-23 11:04:37', '管理员', '系统所有权', '全部');
INSERT INTO `role` VALUES ('2', '2018-11-23 13:09:06', '学生', '', '本级');
INSERT INTO `role` VALUES ('3', '2019-05-12 20:20:31', '老师', '', '全部');
INSERT INTO `role` VALUES ('6', '2019-05-12 20:23:01', '医疗管理员', '', '全部');

-- ----------------------------
-- Table structure for roles_depts
-- ----------------------------
DROP TABLE IF EXISTS `roles_depts`;
CREATE TABLE `roles_depts` (
  `role_id` bigint(20) NOT NULL,
  `dept_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`dept_id`),
  KEY `FK7qg6itn5ajdoa9h9o78v9ksur` (`dept_id`),
  CONSTRAINT `FK7qg6itn5ajdoa9h9o78v9ksur` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`),
  CONSTRAINT `FKrg1ci4cxxfbja0sb0pddju7k` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles_depts
-- ----------------------------

-- ----------------------------
-- Table structure for roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `roles_menus`;
CREATE TABLE `roles_menus` (
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`menu_id`,`role_id`) USING BTREE,
  KEY `FKcngg2qadojhi3a651a5adkvbq` (`role_id`) USING BTREE,
  CONSTRAINT `FKo7wsmlrrxb2osfaoavp46rv2r` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
  CONSTRAINT `FKtag324maketmxffly3pdyh193` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles_menus
-- ----------------------------
INSERT INTO `roles_menus` VALUES ('1', '1');
INSERT INTO `roles_menus` VALUES ('2', '1');
INSERT INTO `roles_menus` VALUES ('3', '1');
INSERT INTO `roles_menus` VALUES ('4', '1');
INSERT INTO `roles_menus` VALUES ('5', '1');
INSERT INTO `roles_menus` VALUES ('6', '1');
INSERT INTO `roles_menus` VALUES ('7', '1');
INSERT INTO `roles_menus` VALUES ('8', '1');
INSERT INTO `roles_menus` VALUES ('9', '1');
INSERT INTO `roles_menus` VALUES ('30', '1');
INSERT INTO `roles_menus` VALUES ('35', '1');
INSERT INTO `roles_menus` VALUES ('37', '1');
INSERT INTO `roles_menus` VALUES ('41', '1');
INSERT INTO `roles_menus` VALUES ('6', '2');
INSERT INTO `roles_menus` VALUES ('7', '2');
INSERT INTO `roles_menus` VALUES ('8', '2');
INSERT INTO `roles_menus` VALUES ('9', '2');
INSERT INTO `roles_menus` VALUES ('15', '2');
INSERT INTO `roles_menus` VALUES ('1', '3');
INSERT INTO `roles_menus` VALUES ('2', '3');
INSERT INTO `roles_menus` VALUES ('6', '3');
INSERT INTO `roles_menus` VALUES ('7', '3');
INSERT INTO `roles_menus` VALUES ('8', '3');
INSERT INTO `roles_menus` VALUES ('9', '3');
INSERT INTO `roles_menus` VALUES ('6', '6');
INSERT INTO `roles_menus` VALUES ('8', '6');

-- ----------------------------
-- Table structure for roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE `roles_permissions` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `permission_id` bigint(20) NOT NULL COMMENT '权限ID',
  PRIMARY KEY (`role_id`,`permission_id`) USING BTREE,
  KEY `FKboeuhl31go7wer3bpy6so7exi` (`permission_id`) USING BTREE,
  CONSTRAINT `FK4hrolwj4ned5i7qe8kyiaak6m` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKboeuhl31go7wer3bpy6so7exi` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles_permissions
-- ----------------------------
INSERT INTO `roles_permissions` VALUES ('1', '1');
INSERT INTO `roles_permissions` VALUES ('2', '1');
INSERT INTO `roles_permissions` VALUES ('3', '1');
INSERT INTO `roles_permissions` VALUES ('2', '3');
INSERT INTO `roles_permissions` VALUES ('2', '8');
INSERT INTO `roles_permissions` VALUES ('2', '14');
INSERT INTO `roles_permissions` VALUES ('2', '18');
INSERT INTO `roles_permissions` VALUES ('3', '18');
INSERT INTO `roles_permissions` VALUES ('2', '19');
INSERT INTO `roles_permissions` VALUES ('3', '19');
INSERT INTO `roles_permissions` VALUES ('2', '20');
INSERT INTO `roles_permissions` VALUES ('3', '20');
INSERT INTO `roles_permissions` VALUES ('2', '21');
INSERT INTO `roles_permissions` VALUES ('3', '21');
INSERT INTO `roles_permissions` VALUES ('2', '22');
INSERT INTO `roles_permissions` VALUES ('3', '22');
INSERT INTO `roles_permissions` VALUES ('2', '24');
INSERT INTO `roles_permissions` VALUES ('2', '36');
INSERT INTO `roles_permissions` VALUES ('2', '41');
INSERT INTO `roles_permissions` VALUES ('3', '50');
INSERT INTO `roles_permissions` VALUES ('2', '51');
INSERT INTO `roles_permissions` VALUES ('3', '51');
INSERT INTO `roles_permissions` VALUES ('3', '52');
INSERT INTO `roles_permissions` VALUES ('3', '53');
INSERT INTO `roles_permissions` VALUES ('3', '54');
INSERT INTO `roles_permissions` VALUES ('6', '56');
INSERT INTO `roles_permissions` VALUES ('6', '57');
INSERT INTO `roles_permissions` VALUES ('6', '58');
INSERT INTO `roles_permissions` VALUES ('6', '59');
INSERT INTO `roles_permissions` VALUES ('2', '60');
INSERT INTO `roles_permissions` VALUES ('6', '60');
INSERT INTO `roles_permissions` VALUES ('2', '62');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `enabled` bigint(20) DEFAULT NULL COMMENT '状态：1启用、0禁用',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `last_password_reset_time` datetime DEFAULT NULL COMMENT '最后修改密码的日期',
  `dept_id` bigint(20) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_kpubos9gc2cvtkb0thktkbkes` (`email`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `FK5rwmryny6jthaaxkogownknqp` (`dept_id`),
  KEY `FKfftoc2abhot8f2wu6cl9a5iky` (`job_id`),
  CONSTRAINT `FK5rwmryny6jthaaxkogownknqp` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`),
  CONSTRAINT `FKfftoc2abhot8f2wu6cl9a5iky` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'https://i.loli.net/2019/04/04/5ca5b971e1548.jpeg', '2018-08-23 09:11:56', 'admin@eladmin.net', '1', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '2019-04-04 16:00:46', '1', '18888888888', '12');
INSERT INTO `user` VALUES ('3', 'https://aurora-1255840532.cos.ap-chengdu.myqcloud.com/8918a306ea314404835a9196585c4b75.jpeg', '2018-12-27 20:05:26', 'test@eladmin.net', '1', 'e10adc3949ba59abbe56e057f20f883e', 'test', '2019-04-01 09:15:24', '7', '17777777777', '11');
INSERT INTO `user` VALUES ('8', 'https://aurora-1255840532.cos.ap-chengdu.myqcloud.com/8918a306ea314404835a9196585c4b75.jpeg', '2019-05-13 00:03:40', '12367@qq.com', '1', 'e10adc3949ba59abbe56e057f20f883e', 'ceshi', null, '11', '15624154569', '20');

-- ----------------------------
-- Table structure for users_roles
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  KEY `FKq4eq273l04bpu4efj0jd0jb98` (`role_id`) USING BTREE,
  CONSTRAINT `users_roles_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `users_roles_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_roles
-- ----------------------------
INSERT INTO `users_roles` VALUES ('1', '1');
INSERT INTO `users_roles` VALUES ('3', '2');
INSERT INTO `users_roles` VALUES ('8', '2');

-- ----------------------------
-- Table structure for verification_code
-- ----------------------------
DROP TABLE IF EXISTS `verification_code`;
CREATE TABLE `verification_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `code` varchar(255) DEFAULT NULL COMMENT '验证码',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `status` bit(1) DEFAULT NULL COMMENT '状态：1有效、0过期',
  `type` varchar(255) DEFAULT NULL COMMENT '验证码类型：email或者短信',
  `value` varchar(255) DEFAULT NULL COMMENT '接收邮箱或者手机号码',
  `scenes` varchar(255) DEFAULT NULL COMMENT '业务名称：如重置邮箱、重置密码等',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of verification_code
-- ----------------------------

-- ----------------------------
-- Table structure for visits
-- ----------------------------
DROP TABLE IF EXISTS `visits`;
CREATE TABLE `visits` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `ip_counts` bigint(20) DEFAULT NULL,
  `pv_counts` bigint(20) DEFAULT NULL,
  `week_day` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_11aksgq87euk9bcyeesfs4vtp` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visits
-- ----------------------------
INSERT INTO `visits` VALUES ('20', '2019-05-12 12:58:39', '2019-05-12', '1', '28', 'Sun');
INSERT INTO `visits` VALUES ('21', '2019-05-13 00:00:00', '2019-05-13', '1', '6', 'Mon');
INSERT INTO `visits` VALUES ('22', '2019-05-15 19:46:21', '2019-05-15', '1', '7', 'Wed');
INSERT INTO `visits` VALUES ('23', '2019-05-17 23:16:31', '2019-05-17', '0', '2', 'Fri');
INSERT INTO `visits` VALUES ('24', '2019-05-18 00:00:00', '2019-05-18', '1', '10', 'Sat');
INSERT INTO `visits` VALUES ('25', '2019-05-20 20:12:36', '2019-05-20', '1', '3', 'Mon');
