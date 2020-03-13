/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : smart_c

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 18:52:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------

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
-- Table structure for commentlist
-- ----------------------------
DROP TABLE IF EXISTS `commentlist`;
CREATE TABLE `commentlist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `cook_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commentlist
-- ----------------------------

-- ----------------------------
-- Table structure for cook
-- ----------------------------
DROP TABLE IF EXISTS `cook`;
CREATE TABLE `cook` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `adress` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dish_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cook
-- ----------------------------

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------

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
INSERT INTO `dept` VALUES ('1', '智慧社区', '0', '2019-03-25 09:14:05', '');
INSERT INTO `dept` VALUES ('2', '1号楼', '7', '2019-03-25 09:15:32', '');
INSERT INTO `dept` VALUES ('5', '2号楼', '7', '2019-03-25 09:20:44', '');
INSERT INTO `dept` VALUES ('7', '1号小区', '1', '2019-03-25 11:04:50', '');
INSERT INTO `dept` VALUES ('8', '春波小区', '1', '2019-03-25 11:04:53', '');
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
-- Table structure for dish
-- ----------------------------
DROP TABLE IF EXISTS `dish`;
CREATE TABLE `dish` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dish
-- ----------------------------

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
-- Table structure for erea_info
-- ----------------------------
DROP TABLE IF EXISTS `erea_info`;
CREATE TABLE `erea_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tel` varchar(255) DEFAULT NULL COMMENT '服务电话',
  `img` varchar(255) DEFAULT NULL COMMENT '首页展示的img',
  `adress` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of erea_info
-- ----------------------------
INSERT INTO `erea_info` VALUES ('5', '123', '2019-05-12 16:14:40', '16246128659', 'https://i.loli.net/2019/04/04/5ca5b971e1548.jpeg', '1231');

-- ----------------------------
-- Table structure for express
-- ----------------------------
DROP TABLE IF EXISTS `express`;
CREATE TABLE `express` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `send` int(11) DEFAULT NULL COMMENT '发货人id',
  `receive` int(11) DEFAULT NULL COMMENT '收货人id',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='快递';

-- ----------------------------
-- Records of express
-- ----------------------------
INSERT INTO `express` VALUES ('5', '123', '2', '3', '123214', '2019-05-12 23:54:55');

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
INSERT INTO `gen_config` VALUES ('1', 'jie', '', 'eladmin-system', 'me.zhengjie.modules.goods', 'E:\\study\\eladmin-qd\\src\\views\\manage\\goods', 'E:\\study\\eladmin-qd\\src\\api');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `desciption` varchar(255) NOT NULL COMMENT '描述',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('5', '123', '123', '12', '2019-05-13 00:00:51');

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
INSERT INTO `job` VALUES ('2', '物业管理', '', '2019-03-29 14:01:30', '2', '1');
INSERT INTO `job` VALUES ('8', '物流管理', '', '2019-03-29 14:52:28', '3', '1');
INSERT INTO `job` VALUES ('11', '住户', '', '2019-03-31 13:39:30', '6', '7');
INSERT INTO `job` VALUES ('12', '医疗管理', '', '2019-03-31 13:39:43', '5', '1');
INSERT INTO `job` VALUES ('19', '商家', '', '2019-03-31 14:58:15', '1', '1');
INSERT INTO `job` VALUES ('20', '住户', '', '2019-05-13 00:04:13', '999', '11');

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
) ENGINE=InnoDB AUTO_INCREMENT=5536 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('4954', '2019-05-12 13:02:24', '用户登录', 'me.zhengjie.exception.BadRequestException: Cannot get Jedis connection; nested exception is redis.clients.jedis.exceptions.JedisConnectionException: Could not get a resource from the pool\r\n	at me.zhengjie.aspect.DataScopeAspect.logAround(DataScopeAspect.java:51)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.security.rest.AuthenticationController$$EnhancerBySpringCGLIB$$d6d892e0.login(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.JwtAuthorizationTokenFilter.doFilterInternal(JwtAuthorizationTokenFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '1075', 'admin');
INSERT INTO `log` VALUES ('4955', '2019-05-12 13:44:08', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '701', 'admin');
INSERT INTO `log` VALUES ('4956', '2019-05-12 13:46:22', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '75', 'admin');
INSERT INTO `log` VALUES ('4957', '2019-05-12 13:46:48', '删除菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.delete()', '{ id: 21 }', '127.0.0.1', '678', 'admin');
INSERT INTO `log` VALUES ('4958', '2019-05-12 13:46:48', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('4959', '2019-05-12 13:46:49', '删除菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.delete()', '{ id: 36 }', '127.0.0.1', '464', 'admin');
INSERT INTO `log` VALUES ('4960', '2019-05-12 13:46:49', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('4961', '2019-05-12 13:49:18', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('4962', '2019-05-12 13:51:10', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('4963', '2019-05-12 13:51:20', '删除菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.delete()', '{ id: 21 }', '127.0.0.1', '29', 'admin');
INSERT INTO `log` VALUES ('4964', '2019-05-12 13:51:21', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('4965', '2019-05-12 13:51:25', '删除菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.delete()', '{ id: 17 }', '127.0.0.1', '113', 'admin');
INSERT INTO `log` VALUES ('4966', '2019-05-12 13:51:26', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('4967', '2019-05-12 13:51:43', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('4968', '2019-05-12 13:51:47', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('4969', '2019-05-12 13:51:47', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '82', 'admin');
INSERT INTO `log` VALUES ('4970', '2019-05-12 13:51:52', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=job_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('4971', '2019-05-12 13:51:52', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '59', 'admin');
INSERT INTO `log` VALUES ('4972', '2019-05-12 13:52:10', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('4973', '2019-05-12 13:52:10', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('4974', '2019-05-12 13:53:07', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '21', 'admin');
INSERT INTO `log` VALUES ('4975', '2019-05-12 13:53:28', '修改部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.update()', '{ resources: Dept(id=7, name=1号小区, enabled=true, pid=1, createTime=2019-03-25 11:04:50.0, roles=null) }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('4976', '2019-05-12 13:53:28', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('4977', '2019-05-12 13:53:30', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('4978', '2019-05-12 13:54:07', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('4979', '2019-05-12 13:54:55', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('4980', '2019-05-12 13:54:55', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('4981', '2019-05-12 13:54:59', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('4982', '2019-05-12 13:55:12', '修改部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.update()', '{ resources: Dept(id=2, name=1号楼, enabled=true, pid=7, createTime=2019-03-25 09:15:32.0, roles=null) }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('4983', '2019-05-12 13:55:12', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '21', 'admin');
INSERT INTO `log` VALUES ('4984', '2019-05-12 13:55:16', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('4985', '2019-05-12 13:55:22', '修改部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.update()', '{ resources: Dept(id=5, name=2号楼, enabled=true, pid=7, createTime=2019-03-25 09:20:44.0, roles=null) }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('4986', '2019-05-12 13:55:23', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '29', 'admin');
INSERT INTO `log` VALUES ('4987', '2019-05-12 13:55:26', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('4988', '2019-05-12 13:55:31', '修改部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.update()', '{ resources: Dept(id=9, name=3号楼, enabled=true, pid=7, createTime=2019-03-25 11:05:34.0, roles=null) }', '127.0.0.1', '24', 'admin');
INSERT INTO `log` VALUES ('4989', '2019-05-12 13:55:31', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('4990', '2019-05-12 13:55:35', '删除部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.delete()', '{ id: 12 }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('4991', '2019-05-12 13:55:35', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('4992', '2019-05-12 13:55:40', '删除部门', 'me.zhengjie.exception.BadRequestException: could not execute statement; SQL [n/a]; constraint [null]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement\r\n	at me.zhengjie.aspect.DataScopeAspect.logAround(DataScopeAspect.java:51)\r\n	at sun.reflect.GeneratedMethodAccessor215.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.system.rest.DeptController$$EnhancerBySpringCGLIB$$695e82ff.delete(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doDelete(FrameworkServlet.java:923)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:666)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.JwtAuthorizationTokenFilter.doFilterInternal(JwtAuthorizationTokenFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.system.rest.DeptController.delete()', '{ id: 11 }', '127.0.0.1', '80', 'admin');
INSERT INTO `log` VALUES ('4993', '2019-05-12 13:55:46', '删除部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.delete()', '{ id: 10 }', '127.0.0.1', '76', 'admin');
INSERT INTO `log` VALUES ('4994', '2019-05-12 13:55:46', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('4995', '2019-05-12 13:55:49', '删除部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.delete()', '{ id: 6 }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('4996', '2019-05-12 13:55:49', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('4997', '2019-05-12 13:55:51', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('4998', '2019-05-12 13:55:59', '修改部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.update()', '{ resources: Dept(id=11, name=1号楼, enabled=true, pid=8, createTime=2019-03-25 11:07:58.0, roles=null) }', '127.0.0.1', '54', 'admin');
INSERT INTO `log` VALUES ('4999', '2019-05-12 13:55:59', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('5000', '2019-05-12 13:56:03', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=job_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '1', 'admin');
INSERT INTO `log` VALUES ('5001', '2019-05-12 13:56:03', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '32', 'admin');
INSERT INTO `log` VALUES ('5002', '2019-05-12 13:56:25', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5003', '2019-05-12 13:57:05', '修改岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.update()', '{ resources: Job(id=19, name=商家, sort=1, enabled=true, dept=Dept(id=1, name=null, enabled=null, pid=null, createTime=null, roles=null), createTime=2019-03-31 14:58:15.0) }', '127.0.0.1', '40', 'admin');
INSERT INTO `log` VALUES ('5004', '2019-05-12 13:57:05', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '19', 'admin');
INSERT INTO `log` VALUES ('5005', '2019-05-12 13:57:08', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('5006', '2019-05-12 13:57:15', '修改岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.update()', '{ resources: Job(id=2, name=物业管理, sort=2, enabled=true, dept=Dept(id=1, name=null, enabled=null, pid=null, createTime=null, roles=null), createTime=2019-03-29 14:01:30.0) }', '127.0.0.1', '24', 'admin');
INSERT INTO `log` VALUES ('5007', '2019-05-12 13:57:15', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('5008', '2019-05-12 13:57:33', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5009', '2019-05-12 13:57:39', '修改岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.update()', '{ resources: Job(id=8, name=物流管理, sort=3, enabled=true, dept=Dept(id=11, name=null, enabled=null, pid=null, createTime=null, roles=null), createTime=2019-03-29 14:52:28.0) }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5010', '2019-05-12 13:57:39', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '28', 'admin');
INSERT INTO `log` VALUES ('5011', '2019-05-12 13:57:45', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5012', '2019-05-12 13:57:52', '修改岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.update()', '{ resources: Job(id=10, name=医疗管理, sort=4, enabled=false, dept=Dept(id=2, name=null, enabled=null, pid=null, createTime=null, roles=null), createTime=2019-03-29 14:55:51.0) }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5013', '2019-05-12 13:57:52', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('5014', '2019-05-12 13:58:04', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('5015', '2019-05-12 13:58:08', '修改岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.update()', '{ resources: Job(id=12, name=医疗管理, sort=5, enabled=true, dept=Dept(id=2, name=null, enabled=null, pid=null, createTime=null, roles=null), createTime=2019-03-31 13:39:43.0) }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5016', '2019-05-12 13:58:08', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('5017', '2019-05-12 13:58:14', '删除岗位', 'me.zhengjie.exception.BadRequestException: could not execute statement; SQL [n/a]; constraint [null]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement\r\n	at me.zhengjie.aspect.DataScopeAspect.logAround(DataScopeAspect.java:51)\r\n	at sun.reflect.GeneratedMethodAccessor215.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.system.rest.JobController$$EnhancerBySpringCGLIB$$f082e4cf.delete(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doDelete(FrameworkServlet.java:923)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:666)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.JwtAuthorizationTokenFilter.doFilterInternal(JwtAuthorizationTokenFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.system.rest.JobController.delete()', '{ id: 11 }', '127.0.0.1', '26', 'admin');
INSERT INTO `log` VALUES ('5018', '2019-05-12 13:58:22', '删除岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.delete()', '{ id: 10 }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5019', '2019-05-12 13:58:22', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('5020', '2019-05-12 13:58:34', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5021', '2019-05-12 13:58:40', '修改岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.update()', '{ resources: Job(id=11, name=住户, sort=6, enabled=true, dept=Dept(id=2, name=null, enabled=null, pid=null, createTime=null, roles=null), createTime=2019-03-31 13:39:30.0) }', '127.0.0.1', '47', 'admin');
INSERT INTO `log` VALUES ('5022', '2019-05-12 13:58:40', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('5023', '2019-05-12 13:58:50', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5024', '2019-05-12 13:58:52', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '24', 'admin');
INSERT INTO `log` VALUES ('5025', '2019-05-12 13:59:18', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '0', 'admin');
INSERT INTO `log` VALUES ('5026', '2019-05-12 13:59:18', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5027', '2019-05-12 13:59:24', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5028', '2019-05-12 13:59:44', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@7109c749 }', '127.0.0.1', '24', 'admin');
INSERT INTO `log` VALUES ('5029', '2019-05-12 13:59:44', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5030', '2019-05-12 13:59:48', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '2', 'admin');
INSERT INTO `log` VALUES ('5031', '2019-05-12 13:59:48', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5032', '2019-05-12 13:59:55', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=job_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5033', '2019-05-12 13:59:55', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '21', 'admin');
INSERT INTO `log` VALUES ('5034', '2019-05-12 14:00:00', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5035', '2019-05-12 14:00:02', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5036', '2019-05-12 14:00:31', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=40, name=\'DEPT_ALL\', pid=0, alias=\'社区管理\', createTime=null} }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('5037', '2019-05-12 14:00:31', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5038', '2019-05-12 14:00:42', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=41, name=\'DEPT_SELECT\', pid=40, alias=\'社区查询\', createTime=null} }', '127.0.0.1', '32', 'admin');
INSERT INTO `log` VALUES ('5039', '2019-05-12 14:00:43', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5040', '2019-05-12 14:00:52', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=42, name=\'DEPT_CREATE\', pid=40, alias=\'社区创建\', createTime=null} }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5041', '2019-05-12 14:00:52', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('5042', '2019-05-12 14:01:01', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=43, name=\'DEPT_EDIT\', pid=40, alias=\'社区编辑\', createTime=null} }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5043', '2019-05-12 14:01:01', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5044', '2019-05-12 14:01:06', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=44, name=\'DEPT_DELETE\', pid=40, alias=\'社区删除\', createTime=null} }', '127.0.0.1', '48', 'admin');
INSERT INTO `log` VALUES ('5045', '2019-05-12 14:01:06', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5046', '2019-05-12 14:01:12', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('5047', '2019-05-12 14:01:12', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5048', '2019-05-12 14:01:12', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '124', 'admin');
INSERT INTO `log` VALUES ('5049', '2019-05-12 14:01:41', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5050', '2019-05-12 14:01:41', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('5051', '2019-05-12 14:01:41', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '40', 'admin');
INSERT INTO `log` VALUES ('5052', '2019-05-12 14:01:44', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5053', '2019-05-12 14:01:49', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5054', '2019-05-12 14:01:49', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5055', '2019-05-12 14:01:52', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5056', '2019-05-12 14:02:11', '修改部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.update()', '{ resources: Dept(id=8, name=春波小区, enabled=true, pid=1, createTime=2019-03-25 11:04:53.0, roles=null) }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5057', '2019-05-12 14:02:11', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5058', '2019-05-12 14:03:31', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5059', '2019-05-12 14:03:40', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5060', '2019-05-12 14:03:40', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('5061', '2019-05-12 14:03:43', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5062', '2019-05-12 14:03:54', '修改菜单', 'me.zhengjie.exception.BadRequestException: Menu 已存在 {name=社区管理}\r\n	at me.zhengjie.aspect.DataScopeAspect.logAround(DataScopeAspect.java:51)\r\n	at sun.reflect.GeneratedMethodAccessor215.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.system.rest.MenuController$$EnhancerBySpringCGLIB$$fd35ef0d.update(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPut(FrameworkServlet.java:912)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:663)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.JwtAuthorizationTokenFilter.doFilterInternal(JwtAuthorizationTokenFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@20aa44de }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('5063', '2019-05-12 14:04:07', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@12300f9b }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('5064', '2019-05-12 14:04:07', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5065', '2019-05-12 14:04:18', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@6956a7ff }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5066', '2019-05-12 14:04:18', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5067', '2019-05-12 14:05:54', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '43', 'admin');
INSERT INTO `log` VALUES ('5068', '2019-05-12 14:06:27', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5069', '2019-05-12 14:06:50', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@d6d9158 }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('5070', '2019-05-12 14:06:51', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5071', '2019-05-12 14:06:56', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5072', '2019-05-12 14:07:11', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '32', 'admin');
INSERT INTO `log` VALUES ('5073', '2019-05-12 14:07:18', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '25', 'admin');
INSERT INTO `log` VALUES ('5074', '2019-05-12 14:07:25', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '19', 'admin');
INSERT INTO `log` VALUES ('5075', '2019-05-12 14:38:14', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5076', '2019-05-12 14:38:49', '修改菜单', 'me.zhengjie.exception.BadRequestException: Menu 已存在 {name=社区管理}\r\n	at me.zhengjie.aspect.DataScopeAspect.logAround(DataScopeAspect.java:51)\r\n	at sun.reflect.GeneratedMethodAccessor215.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.system.rest.MenuController$$EnhancerBySpringCGLIB$$fd35ef0d.update(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPut(FrameworkServlet.java:912)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:663)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.JwtAuthorizationTokenFilter.doFilterInternal(JwtAuthorizationTokenFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@368f0927 }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5077', '2019-05-12 14:39:09', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@67e53875 }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('5078', '2019-05-12 14:39:09', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5079', '2019-05-12 14:40:45', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@64e43c8f }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('5080', '2019-05-12 14:40:45', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5081', '2019-05-12 14:41:18', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@4e86af03 }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5082', '2019-05-12 14:41:18', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5083', '2019-05-12 14:41:47', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@6c29f940 }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5084', '2019-05-12 14:41:47', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5085', '2019-05-12 14:42:23', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@53226d4f }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('5086', '2019-05-12 14:42:23', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5087', '2019-05-12 14:43:06', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@155d2370 }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5088', '2019-05-12 14:43:06', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5089', '2019-05-12 14:43:21', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@1d2847bc }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5090', '2019-05-12 14:43:21', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5091', '2019-05-12 14:44:02', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@4df97e04 }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5092', '2019-05-12 14:44:02', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5093', '2019-05-12 14:44:13', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5094', '2019-05-12 14:44:31', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5095', '2019-05-12 14:44:51', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@2c1a4d1a }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5096', '2019-05-12 14:44:51', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5097', '2019-05-12 14:44:59', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@18649cee }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5098', '2019-05-12 14:44:59', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5099', '2019-05-12 14:45:21', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5100', '2019-05-12 15:59:37', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '364', 'admin');
INSERT INTO `log` VALUES ('5101', '2019-05-12 16:02:34', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '413', 'admin');
INSERT INTO `log` VALUES ('5102', '2019-05-12 16:02:47', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '30', 'admin');
INSERT INTO `log` VALUES ('5103', '2019-05-12 16:02:52', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '49', 'admin');
INSERT INTO `log` VALUES ('5104', '2019-05-12 16:03:04', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5105', '2019-05-12 16:03:20', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5106', '2019-05-12 16:03:51', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '41', 'admin');
INSERT INTO `log` VALUES ('5107', '2019-05-12 16:04:00', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '66', 'admin');
INSERT INTO `log` VALUES ('5108', '2019-05-12 16:04:05', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '93', 'admin');
INSERT INTO `log` VALUES ('5109', '2019-05-12 16:06:05', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '38', 'admin');
INSERT INTO `log` VALUES ('5110', '2019-05-12 16:07:22', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('5111', '2019-05-12 16:07:28', '查询Express', null, 'INFO', 'me.zhengjie.modules.express.rest.ExpressController.getExpresss()', '{ resources: ExpressDTO(id=null, title=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('5112', '2019-05-12 16:13:24', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5113', '2019-05-12 16:14:40', '新增EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.create()', '{ resources: EreaInfo(id=5, name=123, createTime=null, tel=16246128659, img=https://i.loli.net/2019/04/04/5ca5b971e1548.jpeg, adress=1231) }', '127.0.0.1', '20', 'admin');
INSERT INTO `log` VALUES ('5114', '2019-05-12 16:14:40', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '20', 'admin');
INSERT INTO `log` VALUES ('5115', '2019-05-12 16:29:43', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '19', 'admin');
INSERT INTO `log` VALUES ('5116', '2019-05-12 16:32:14', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '23', 'admin');
INSERT INTO `log` VALUES ('5117', '2019-05-12 16:41:17', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '387', 'admin');
INSERT INTO `log` VALUES ('5118', '2019-05-12 16:43:29', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '87', 'admin');
INSERT INTO `log` VALUES ('5119', '2019-05-12 16:45:17', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '2556', 'admin');
INSERT INTO `log` VALUES ('5120', '2019-05-12 16:45:22', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '626', 'admin');
INSERT INTO `log` VALUES ('5121', '2019-05-12 16:45:26', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '760', 'admin');
INSERT INTO `log` VALUES ('5122', '2019-05-12 16:46:17', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '145', 'admin');
INSERT INTO `log` VALUES ('5123', '2019-05-12 19:15:36', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '484', 'admin');
INSERT INTO `log` VALUES ('5124', '2019-05-12 19:16:45', '查询Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.getTopics()', '{ resources: TopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '96', 'admin');
INSERT INTO `log` VALUES ('5125', '2019-05-12 19:16:49', '查询Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.getTopics()', '{ resources: TopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('5126', '2019-05-12 19:18:50', '新增Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.create()', '{ resources: Topic(id=5, title=123, isTop=1, count=12, content=213, createTime=null) }', '127.0.0.1', '72', 'admin');
INSERT INTO `log` VALUES ('5127', '2019-05-12 19:18:50', '查询Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.getTopics()', '{ resources: TopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5128', '2019-05-12 19:22:04', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('5129', '2019-05-12 19:22:04', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '86', 'admin');
INSERT INTO `log` VALUES ('5130', '2019-05-12 19:26:21', '查询Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.getTopics()', '{ resources: TopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5131', '2019-05-12 19:26:25', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '58', 'admin');
INSERT INTO `log` VALUES ('5132', '2019-05-12 19:26:38', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@2cfa6472 }', '127.0.0.1', '84', 'admin');
INSERT INTO `log` VALUES ('5133', '2019-05-12 19:26:38', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('5134', '2019-05-12 19:26:45', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '25', 'admin');
INSERT INTO `log` VALUES ('5135', '2019-05-12 19:26:53', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('5136', '2019-05-12 19:26:53', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5137', '2019-05-12 19:27:16', '查询Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.getTopics()', '{ resources: TopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('5138', '2019-05-12 19:27:16', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5139', '2019-05-12 19:29:38', '查询Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.getTopics()', '{ resources: TopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5140', '2019-05-12 19:29:38', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5141', '2019-05-12 19:49:13', '查询Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.getTopics()', '{ resources: TopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5142', '2019-05-12 19:49:13', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5143', '2019-05-12 19:49:17', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('5144', '2019-05-12 19:49:17', '查询Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.getTopics()', '{ resources: TopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '35', 'admin');
INSERT INTO `log` VALUES ('5145', '2019-05-12 19:49:58', '查询Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.getTopics()', '{ resources: TopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5146', '2019-05-12 19:49:58', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5147', '2019-05-12 19:58:50', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5148', '2019-05-12 19:58:50', '查询Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.getTopics()', '{ resources: TopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5149', '2019-05-12 19:58:54', '查询Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.getTopics()', '{ resources: TopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5150', '2019-05-12 19:58:54', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '18', 'admin');
INSERT INTO `log` VALUES ('5151', '2019-05-12 20:02:59', '查询Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.getTopics()', '{ resources: TopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5152', '2019-05-12 20:02:59', '查询Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.getTopics()', '{ resources: TopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '2', 'admin');
INSERT INTO `log` VALUES ('5153', '2019-05-12 20:02:59', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5154', '2019-05-12 20:02:59', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '22', 'admin');
INSERT INTO `log` VALUES ('5155', '2019-05-12 20:06:40', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '128', 'admin');
INSERT INTO `log` VALUES ('5156', '2019-05-12 20:06:40', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '612', 'admin');
INSERT INTO `log` VALUES ('5157', '2019-05-12 20:06:44', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '311', 'admin');
INSERT INTO `log` VALUES ('5158', '2019-05-12 20:07:00', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5159', '2019-05-12 20:07:00', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5160', '2019-05-12 20:07:00', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '253', 'admin');
INSERT INTO `log` VALUES ('5161', '2019-05-12 20:07:14', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5162', '2019-05-12 20:07:18', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 1 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '133', 'admin');
INSERT INTO `log` VALUES ('5163', '2019-05-12 20:07:28', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 7 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5164', '2019-05-12 20:07:31', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 8 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5165', '2019-05-12 20:07:33', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 11 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5166', '2019-05-12 20:07:35', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 1 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('5167', '2019-05-12 20:08:17', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('5168', '2019-05-12 20:08:22', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5169', '2019-05-12 20:08:33', '新增用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.create()', '{ resources: User{id=6, username=\'商家\', avatar=\'https://aurora-1255840532.cos.ap-chengdu.myqcloud.com/8918a306ea314404835a9196585c4b75.jpeg\', email=\'21123123@qq.com\', enabled=false, password=\'e10adc3949ba59abbe56e057f20f883e\', createTime=2019-05-12 20:08:33.318, lastPasswordResetTime=null} }', '127.0.0.1', '117', 'admin');
INSERT INTO `log` VALUES ('5170', '2019-05-12 20:08:33', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '71', 'admin');
INSERT INTO `log` VALUES ('5171', '2019-05-12 20:08:39', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '20', 'admin');
INSERT INTO `log` VALUES ('5172', '2019-05-12 20:08:39', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 1 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5173', '2019-05-12 20:08:42', '修改用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.update()', '{ resources: User{id=6, username=\'商家\', avatar=\'null\', email=\'21123123@qq.com\', enabled=true, password=\'null\', createTime=null, lastPasswordResetTime=null} }', '127.0.0.1', '66', 'admin');
INSERT INTO `log` VALUES ('5174', '2019-05-12 20:08:42', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '60', 'admin');
INSERT INTO `log` VALUES ('5175', '2019-05-12 20:08:47', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '32', 'admin');
INSERT INTO `log` VALUES ('5176', '2019-05-12 20:09:57', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=18, name=\'REDIS_ALL\', pid=0, alias=\'商家管理\', createTime=null} }', '127.0.0.1', '55', 'admin');
INSERT INTO `log` VALUES ('5177', '2019-05-12 20:09:57', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '26', 'admin');
INSERT INTO `log` VALUES ('5178', '2019-05-12 20:10:38', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=19, name=\'REDIS_CREATE\', pid=18, alias=\'新增\', createTime=null} }', '127.0.0.1', '30', 'admin');
INSERT INTO `log` VALUES ('5179', '2019-05-12 20:10:38', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5180', '2019-05-12 20:11:39', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=23, name=\'PICTURE_ALL\', pid=0, alias=\'物业管理\', createTime=null} }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5181', '2019-05-12 20:11:39', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5182', '2019-05-12 20:11:54', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=24, name=\'PICTURE_SELECT\', pid=23, alias=\'查询\', createTime=null} }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5183', '2019-05-12 20:11:54', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5184', '2019-05-12 20:12:02', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=25, name=\'PICTURE_UPLOAD\', pid=23, alias=\'新增\', createTime=null} }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5185', '2019-05-12 20:12:02', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5186', '2019-05-12 20:12:09', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=26, name=\'PICTURE_DELETE\', pid=23, alias=\'删除\', createTime=null} }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5187', '2019-05-12 20:12:09', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5188', '2019-05-12 20:13:03', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5189', '2019-05-12 20:14:09', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5190', '2019-05-12 20:15:50', '新增权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.create()', '{ resources: Permission{id=55, name=\'修改\', pid=23, alias=\'PICTURE_UPDATE\', createTime=2019-05-12 20:15:50.557} }', '127.0.0.1', '79', 'admin');
INSERT INTO `log` VALUES ('5191', '2019-05-12 20:15:50', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5192', '2019-05-12 20:16:08', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=55, name=\'PICTURE_UPDATE\', pid=23, alias=\'修改\', createTime=null} }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5193', '2019-05-12 20:16:08', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5194', '2019-05-12 20:17:57', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=35, name=\'JOB_ALL\', pid=0, alias=\'物流管理\', createTime=null} }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5195', '2019-05-12 20:17:57', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5196', '2019-05-12 20:18:04', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=36, name=\'JOB_SELECT\', pid=35, alias=\'查询\', createTime=null} }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5197', '2019-05-12 20:18:04', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5198', '2019-05-12 20:18:08', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=37, name=\'JOB_CREATE\', pid=35, alias=\'创建\', createTime=null} }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5199', '2019-05-12 20:18:09', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5200', '2019-05-12 20:18:14', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=38, name=\'JOB_EDIT\', pid=35, alias=\'编辑\', createTime=null} }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5201', '2019-05-12 20:18:14', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5202', '2019-05-12 20:18:21', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=39, name=\'JOB_DELETE\', pid=35, alias=\'删除\', createTime=null} }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5203', '2019-05-12 20:18:21', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5204', '2019-05-12 20:19:58', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '76', 'admin');
INSERT INTO `log` VALUES ('5205', '2019-05-12 20:20:31', '新增角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.create()', '{ resources: Role{id=3, name=\'商家\', remark=\'\', createDateTime=2019-05-12 20:20:31.961} }', '127.0.0.1', '140', 'admin');
INSERT INTO `log` VALUES ('5206', '2019-05-12 20:20:32', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '88', 'admin');
INSERT INTO `log` VALUES ('5207', '2019-05-12 20:20:50', '修改角色权限', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updatePermission()', '{ resources: Role{id=3, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '101', 'admin');
INSERT INTO `log` VALUES ('5208', '2019-05-12 20:21:17', '新增角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.create()', '{ resources: Role{id=4, name=\'物业管理员\', remark=\'\', createDateTime=2019-05-12 20:21:17.741} }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5209', '2019-05-12 20:21:17', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '35', 'admin');
INSERT INTO `log` VALUES ('5210', '2019-05-12 20:21:38', '修改角色权限', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updatePermission()', '{ resources: Role{id=4, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '86', 'admin');
INSERT INTO `log` VALUES ('5211', '2019-05-12 20:21:39', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=4, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '43', 'admin');
INSERT INTO `log` VALUES ('5212', '2019-05-12 20:22:15', '新增角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.create()', '{ resources: Role{id=5, name=\'物流管理员\', remark=\'\', createDateTime=2019-05-12 20:22:15.641} }', '127.0.0.1', '48', 'admin');
INSERT INTO `log` VALUES ('5213', '2019-05-12 20:22:15', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '46', 'admin');
INSERT INTO `log` VALUES ('5214', '2019-05-12 20:22:27', '修改角色权限', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updatePermission()', '{ resources: Role{id=5, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '48', 'admin');
INSERT INTO `log` VALUES ('5215', '2019-05-12 20:22:28', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=5, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '33', 'admin');
INSERT INTO `log` VALUES ('5216', '2019-05-12 20:23:01', '新增角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.create()', '{ resources: Role{id=6, name=\'医疗管理员\', remark=\'\', createDateTime=2019-05-12 20:23:01.379} }', '127.0.0.1', '22', 'admin');
INSERT INTO `log` VALUES ('5217', '2019-05-12 20:23:01', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '102', 'admin');
INSERT INTO `log` VALUES ('5218', '2019-05-12 20:23:21', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('5219', '2019-05-12 20:23:50', '修改角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.update()', '{ resources: Role{id=2, name=\'住户\', remark=\'\', createDateTime=null} }', '127.0.0.1', '75', 'admin');
INSERT INTO `log` VALUES ('5220', '2019-05-12 20:23:50', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '52', 'admin');
INSERT INTO `log` VALUES ('5221', '2019-05-12 20:24:08', '修改角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.update()', '{ resources: Role{id=3, name=\'商家\', remark=\'\', createDateTime=null} }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5222', '2019-05-12 20:24:08', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '46', 'admin');
INSERT INTO `log` VALUES ('5223', '2019-05-12 20:26:19', '修改角色权限', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updatePermission()', '{ resources: Role{id=2, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '223', 'admin');
INSERT INTO `log` VALUES ('5224', '2019-05-12 20:26:20', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=2, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '76', 'admin');
INSERT INTO `log` VALUES ('5225', '2019-05-12 20:26:55', '修改角色权限', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updatePermission()', '{ resources: Role{id=2, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '20', 'admin');
INSERT INTO `log` VALUES ('5226', '2019-05-12 20:27:16', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5227', '2019-05-12 20:28:27', '新增权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.create()', '{ resources: Permission{id=56, name=\'medical_all\', pid=0, alias=\'医疗管理\', createTime=2019-05-12 20:28:27.036} }', '127.0.0.1', '51', 'admin');
INSERT INTO `log` VALUES ('5228', '2019-05-12 20:28:27', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '327', 'admin');
INSERT INTO `log` VALUES ('5229', '2019-05-12 20:28:54', '新增权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.create()', '{ resources: Permission{id=57, name=\'medical_create\', pid=56, alias=\'创建\', createTime=2019-05-12 20:28:54.245} }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5230', '2019-05-12 20:28:54', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5231', '2019-05-12 20:29:17', '新增权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.create()', '{ resources: Permission{id=58, name=\'medical_edit\', pid=56, alias=\'修改\', createTime=2019-05-12 20:29:17.825} }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5232', '2019-05-12 20:29:17', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5233', '2019-05-12 20:29:54', '新增权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.create()', '{ resources: Permission{id=59, name=\'medical_delete\', pid=56, alias=\'删除\', createTime=2019-05-12 20:29:54.809} }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5234', '2019-05-12 20:29:54', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '38', 'admin');
INSERT INTO `log` VALUES ('5235', '2019-05-12 20:30:21', '新增权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.create()', '{ resources: Permission{id=60, name=\'medical_select\', pid=56, alias=\'查询\', createTime=2019-05-12 20:30:21.826} }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5236', '2019-05-12 20:30:21', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5237', '2019-05-12 20:34:11', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=50, name=\'DICT_ALL\', pid=0, alias=\'商品管理\', createTime=null} }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5238', '2019-05-12 20:34:11', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5239', '2019-05-12 20:34:24', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=51, name=\'DICT_SELECT\', pid=50, alias=\'查询\', createTime=null} }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5240', '2019-05-12 20:34:24', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5241', '2019-05-12 20:34:30', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=52, name=\'DICT_CREATE\', pid=50, alias=\'创建\', createTime=null} }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5242', '2019-05-12 20:34:30', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '34', 'admin');
INSERT INTO `log` VALUES ('5243', '2019-05-12 20:34:33', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=53, name=\'DICT_EDIT\', pid=50, alias=\'编辑\', createTime=null} }', '127.0.0.1', '20', 'admin');
INSERT INTO `log` VALUES ('5244', '2019-05-12 20:34:34', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5245', '2019-05-12 20:34:38', '修改权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.update()', '{ resources: Permission{id=54, name=\'DICT_DELETE\', pid=50, alias=\'删除\', createTime=null} }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5246', '2019-05-12 20:34:38', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5247', '2019-05-12 20:34:56', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '70', 'admin');
INSERT INTO `log` VALUES ('5248', '2019-05-12 20:35:22', '修改角色权限', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updatePermission()', '{ resources: Role{id=6, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '51', 'admin');
INSERT INTO `log` VALUES ('5249', '2019-05-12 20:35:23', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=6, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('5250', '2019-05-12 20:35:50', '修改角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.update()', '{ resources: Role{id=6, name=\'医疗管理员\', remark=\'\', createDateTime=null} }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5251', '2019-05-12 20:35:50', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '49', 'admin');
INSERT INTO `log` VALUES ('5252', '2019-05-12 20:35:54', '修改角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.update()', '{ resources: Role{id=5, name=\'物流管理员\', remark=\'\', createDateTime=null} }', '127.0.0.1', '30', 'admin');
INSERT INTO `log` VALUES ('5253', '2019-05-12 20:35:54', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '67', 'admin');
INSERT INTO `log` VALUES ('5254', '2019-05-12 20:35:58', '修改角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.update()', '{ resources: Role{id=4, name=\'物业管理员\', remark=\'\', createDateTime=null} }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5255', '2019-05-12 20:35:58', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '43', 'admin');
INSERT INTO `log` VALUES ('5256', '2019-05-12 20:36:04', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '1', 'admin');
INSERT INTO `log` VALUES ('5257', '2019-05-12 20:36:04', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '74', 'admin');
INSERT INTO `log` VALUES ('5258', '2019-05-12 20:36:04', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '93', 'admin');
INSERT INTO `log` VALUES ('5259', '2019-05-12 20:36:11', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('5260', '2019-05-12 20:36:11', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 1 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '59', 'admin');
INSERT INTO `log` VALUES ('5261', '2019-05-12 20:36:18', '修改用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.update()', '{ resources: User{id=6, username=\'商家\', avatar=\'null\', email=\'21123123@qq.com\', enabled=true, password=\'null\', createTime=null, lastPasswordResetTime=null} }', '127.0.0.1', '32', 'admin');
INSERT INTO `log` VALUES ('5262', '2019-05-12 20:36:18', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '56', 'admin');
INSERT INTO `log` VALUES ('5263', '2019-05-12 20:36:27', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '1', 'admin');
INSERT INTO `log` VALUES ('5264', '2019-05-12 20:36:27', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 11 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5265', '2019-05-12 20:36:34', '修改用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.update()', '{ resources: User{id=5, username=\'hr\', avatar=\'null\', email=\'hr@eladmin.net\', enabled=true, password=\'null\', createTime=null, lastPasswordResetTime=null} }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('5266', '2019-05-12 20:36:35', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '87', 'admin');
INSERT INTO `log` VALUES ('5267', '2019-05-12 20:36:38', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5268', '2019-05-12 20:36:38', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 2 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5269', '2019-05-12 20:36:47', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5270', '2019-05-12 20:36:47', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 2 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5271', '2019-05-12 20:36:57', '修改用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.update()', '{ resources: User{id=3, username=\'test\', avatar=\'null\', email=\'test@eladmin.net\', enabled=true, password=\'null\', createTime=null, lastPasswordResetTime=null} }', '127.0.0.1', '19', 'admin');
INSERT INTO `log` VALUES ('5272', '2019-05-12 20:36:57', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '52', 'admin');
INSERT INTO `log` VALUES ('5273', '2019-05-12 20:37:10', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('5274', '2019-05-12 20:37:40', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 1 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5275', '2019-05-12 20:37:57', '新增用户', 'me.zhengjie.exception.BadRequestException: User 已存在 {username=test}\r\n	at me.zhengjie.aspect.DataScopeAspect.logAround(DataScopeAspect.java:51)\r\n	at sun.reflect.GeneratedMethodAccessor224.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.system.rest.UserController$$EnhancerBySpringCGLIB$$4d1e38e3.create(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.JwtAuthorizationTokenFilter.doFilterInternal(JwtAuthorizationTokenFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.system.rest.UserController.create()', '{ resources: User{id=null, username=\'test\', avatar=\'null\', email=\'1784145123@qq.com\', enabled=true, password=\'null\', createTime=null, lastPasswordResetTime=null} }', '127.0.0.1', '327', 'admin');
INSERT INTO `log` VALUES ('5276', '2019-05-12 20:38:07', '新增用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.create()', '{ resources: User{id=7, username=\'12345\', avatar=\'https://aurora-1255840532.cos.ap-chengdu.myqcloud.com/8918a306ea314404835a9196585c4b75.jpeg\', email=\'1784145123@qq.com\', enabled=true, password=\'e10adc3949ba59abbe56e057f20f883e\', createTime=2019-05-12 20:38:07.957, lastPasswordResetTime=null} }', '127.0.0.1', '19', 'admin');
INSERT INTO `log` VALUES ('5277', '2019-05-12 20:38:08', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '52', 'admin');
INSERT INTO `log` VALUES ('5278', '2019-05-12 20:38:18', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5279', '2019-05-12 20:38:18', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 11 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5280', '2019-05-12 20:38:27', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=job_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '45', 'admin');
INSERT INTO `log` VALUES ('5281', '2019-05-12 20:38:27', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '60', 'admin');
INSERT INTO `log` VALUES ('5282', '2019-05-12 20:38:34', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5283', '2019-05-12 20:38:37', '修改岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.update()', '{ resources: Job(id=8, name=物流管理, sort=3, enabled=true, dept=Dept(id=1, name=null, enabled=null, pid=null, createTime=null, roles=null), createTime=2019-03-29 14:52:28.0) }', '127.0.0.1', '77', 'admin');
INSERT INTO `log` VALUES ('5284', '2019-05-12 20:38:37', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5285', '2019-05-12 20:38:39', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('5286', '2019-05-12 20:38:41', '修改岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.update()', '{ resources: Job(id=12, name=医疗管理, sort=5, enabled=true, dept=Dept(id=1, name=null, enabled=null, pid=null, createTime=null, roles=null), createTime=2019-03-31 13:39:43.0) }', '127.0.0.1', '38', 'admin');
INSERT INTO `log` VALUES ('5287', '2019-05-12 20:38:41', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('5288', '2019-05-12 20:38:43', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5289', '2019-05-12 20:38:45', '修改岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.update()', '{ resources: Job(id=11, name=住户, sort=6, enabled=true, dept=Dept(id=1, name=null, enabled=null, pid=null, createTime=null, roles=null), createTime=2019-03-31 13:39:30.0) }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5290', '2019-05-12 20:38:46', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('5291', '2019-05-12 20:38:48', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5292', '2019-05-12 20:38:53', '修改岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.update()', '{ resources: Job(id=11, name=住户, sort=6, enabled=true, dept=Dept(id=7, name=null, enabled=null, pid=null, createTime=null, roles=null), createTime=2019-03-31 13:39:30.0) }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('5293', '2019-05-12 20:38:53', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5294', '2019-05-12 20:45:23', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '49', 'admin');
INSERT INTO `log` VALUES ('5295', '2019-05-12 20:46:25', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@7b5ecf75 }', '127.0.0.1', '74', 'admin');
INSERT INTO `log` VALUES ('5296', '2019-05-12 20:46:25', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5297', '2019-05-12 20:47:13', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '199', 'admin');
INSERT INTO `log` VALUES ('5298', '2019-05-12 20:47:28', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '95', 'admin');
INSERT INTO `log` VALUES ('5299', '2019-05-12 20:49:05', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5300', '2019-05-12 20:49:37', '新增权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.create()', '{ resources: Permission{id=61, name=\'notice_all\', pid=0, alias=\'通知\', createTime=2019-05-12 20:49:37.839} }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5301', '2019-05-12 20:49:37', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('5302', '2019-05-12 20:50:08', '新增权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.create()', '{ resources: Permission{id=62, name=\'notice_select\', pid=61, alias=\'查询\', createTime=2019-05-12 20:50:08.275} }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5303', '2019-05-12 20:50:08', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5304', '2019-05-12 20:51:06', '新增权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.create()', '{ resources: Permission{id=63, name=\'notice_create\', pid=61, alias=\'创建\', createTime=2019-05-12 20:51:06.826} }', '127.0.0.1', '51', 'admin');
INSERT INTO `log` VALUES ('5305', '2019-05-12 20:51:06', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('5306', '2019-05-12 20:51:45', '新增权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.create()', '{ resources: Permission{id=64, name=\'notice_edit\', pid=61, alias=\'编辑\', createTime=2019-05-12 20:51:45.855} }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5307', '2019-05-12 20:51:45', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '52', 'admin');
INSERT INTO `log` VALUES ('5308', '2019-05-12 20:52:06', '新增权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.create()', '{ resources: Permission{id=65, name=\'notice_delete\', pid=61, alias=\'删除\', createTime=2019-05-12 20:52:06.568} }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('5309', '2019-05-12 20:52:06', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5310', '2019-05-12 20:53:07', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '61', 'admin');
INSERT INTO `log` VALUES ('5311', '2019-05-12 20:53:46', '修改角色权限', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updatePermission()', '{ resources: Role{id=4, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '19', 'admin');
INSERT INTO `log` VALUES ('5312', '2019-05-12 20:53:53', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('5313', '2019-05-12 20:53:57', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '2', 'admin');
INSERT INTO `log` VALUES ('5314', '2019-05-12 20:56:38', '新增Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.create()', '{ resources: Notice(id=5, title=123, type=1, send=3, receive=5, content=12234, createTime=null) }', '127.0.0.1', '132', 'admin');
INSERT INTO `log` VALUES ('5315', '2019-05-12 20:56:38', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5316', '2019-05-12 20:58:52', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('5317', '2019-05-12 21:01:06', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('5318', '2019-05-12 21:10:57', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5319', '2019-05-12 21:15:05', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('5320', '2019-05-12 21:16:20', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '1361', 'admin');
INSERT INTO `log` VALUES ('5321', '2019-05-12 21:16:20', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('5322', '2019-05-12 22:13:29', '新增Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.create()', '{ resources: Notice(id=6, title=213, type=admin, send=1, receive=2, content=1234, createTime=null) }', '127.0.0.1', '77', 'admin');
INSERT INTO `log` VALUES ('5323', '2019-05-12 22:13:50', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5324', '2019-05-12 22:14:04', '新增Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.create()', '{ resources: Notice(id=7, title=12312, type=admin, send=1, receive=3, content=1234, createTime=null) }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5325', '2019-05-12 22:14:04', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '2', 'admin');
INSERT INTO `log` VALUES ('5326', '2019-05-12 22:14:50', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '855', 'admin');
INSERT INTO `log` VALUES ('5327', '2019-05-12 22:14:57', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '185', 'admin');
INSERT INTO `log` VALUES ('5328', '2019-05-12 22:14:57', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '561', 'admin');
INSERT INTO `log` VALUES ('5329', '2019-05-12 22:14:58', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '1462', 'admin');
INSERT INTO `log` VALUES ('5330', '2019-05-12 22:15:15', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=12345, password= ******} }', '127.0.0.1', '159', '12345');
INSERT INTO `log` VALUES ('5331', '2019-05-12 22:19:03', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '584', 'admin');
INSERT INTO `log` VALUES ('5332', '2019-05-12 22:19:06', '查询Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.getTopics()', '{ resources: TopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '407', 'admin');
INSERT INTO `log` VALUES ('5333', '2019-05-12 22:19:07', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '238', 'admin');
INSERT INTO `log` VALUES ('5334', '2019-05-12 22:19:14', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '79', 'admin');
INSERT INTO `log` VALUES ('5335', '2019-05-12 23:02:00', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '92', 'admin');
INSERT INTO `log` VALUES ('5336', '2019-05-12 23:02:00', '查询Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.getTopics()', '{ resources: TopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '188', 'admin');
INSERT INTO `log` VALUES ('5337', '2019-05-12 23:02:09', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '101', 'admin');
INSERT INTO `log` VALUES ('5338', '2019-05-12 23:02:09', '查询Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.getTopics()', '{ resources: TopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '99', 'admin');
INSERT INTO `log` VALUES ('5339', '2019-05-12 23:02:12', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '203', 'admin');
INSERT INTO `log` VALUES ('5340', '2019-05-12 23:14:48', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '171', 'admin');
INSERT INTO `log` VALUES ('5341', '2019-05-12 23:14:56', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '90', 'admin');
INSERT INTO `log` VALUES ('5342', '2019-05-12 23:14:56', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '199', 'admin');
INSERT INTO `log` VALUES ('5343', '2019-05-12 23:14:56', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '503', 'admin');
INSERT INTO `log` VALUES ('5344', '2019-05-12 23:16:08', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=12345, password= ******} }', '127.0.0.1', '62', '12345');
INSERT INTO `log` VALUES ('5345', '2019-05-12 23:16:25', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '462', 'admin');
INSERT INTO `log` VALUES ('5346', '2019-05-12 23:19:18', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '69', 'admin');
INSERT INTO `log` VALUES ('5347', '2019-05-12 23:20:18', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '90', 'admin');
INSERT INTO `log` VALUES ('5348', '2019-05-12 23:20:42', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '49', 'admin');
INSERT INTO `log` VALUES ('5349', '2019-05-12 23:21:07', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('5350', '2019-05-12 23:21:07', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5351', '2019-05-12 23:21:07', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '101', 'admin');
INSERT INTO `log` VALUES ('5352', '2019-05-12 23:21:08', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '85', 'admin');
INSERT INTO `log` VALUES ('5353', '2019-05-12 23:21:17', '修改角色权限', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updatePermission()', '{ resources: Role{id=4, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '453', 'admin');
INSERT INTO `log` VALUES ('5354', '2019-05-12 23:21:22', '查询EreaInfo', null, 'INFO', 'me.zhengjie.modules.erea_info.rest.EreaInfoController.getEreaInfos()', '{ resources: EreaInfoDTO(id=null, name=null, createTime=null, tel=null, img=null, adress=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '34', '12345');
INSERT INTO `log` VALUES ('5355', '2019-05-12 23:21:22', '查询Topic', null, 'INFO', 'me.zhengjie.modules.topic.rest.TopicController.getTopics()', '{ resources: TopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 20, sort: UNSORTED] }', '127.0.0.1', '179', '12345');
INSERT INTO `log` VALUES ('5356', '2019-05-12 23:21:33', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', '12345');
INSERT INTO `log` VALUES ('5357', '2019-05-12 23:21:40', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '14', '12345');
INSERT INTO `log` VALUES ('5358', '2019-05-12 23:26:41', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '6', '12345');
INSERT INTO `log` VALUES ('5359', '2019-05-12 23:27:03', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('5360', '2019-05-12 23:27:12', '修改角色权限', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updatePermission()', '{ resources: Role{id=4, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '59', 'admin');
INSERT INTO `log` VALUES ('5361', '2019-05-12 23:27:20', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', '12345');
INSERT INTO `log` VALUES ('5362', '2019-05-12 23:27:42', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '6', '12345');
INSERT INTO `log` VALUES ('5363', '2019-05-12 23:27:59', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=4, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '76', 'admin');
INSERT INTO `log` VALUES ('5364', '2019-05-12 23:28:04', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '9', '12345');
INSERT INTO `log` VALUES ('5365', '2019-05-12 23:28:07', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '103', '12345');
INSERT INTO `log` VALUES ('5366', '2019-05-12 23:29:12', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '19', 'admin');
INSERT INTO `log` VALUES ('5367', '2019-05-12 23:29:36', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', '12345');
INSERT INTO `log` VALUES ('5368', '2019-05-12 23:29:50', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', '12345');
INSERT INTO `log` VALUES ('5369', '2019-05-12 23:37:48', '新增ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.create()', '{ resources: ProTopic(id=5, title=123, isTop=1, count=null, content=123213, createTime=null) }', '127.0.0.1', '79', '12345');
INSERT INTO `log` VALUES ('5370', '2019-05-12 23:37:49', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '6', '12345');
INSERT INTO `log` VALUES ('5371', '2019-05-12 23:38:09', '修改ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.update()', '{ resources: ProTopic(id=5, title=123, isTop=0, count=null, content=123213, createTime=2019-05-12 23:37:48.0) }', '127.0.0.1', '61', '12345');
INSERT INTO `log` VALUES ('5372', '2019-05-12 23:38:09', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', '12345');
INSERT INTO `log` VALUES ('5373', '2019-05-12 23:38:35', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', '12345');
INSERT INTO `log` VALUES ('5374', '2019-05-12 23:38:36', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', '12345');
INSERT INTO `log` VALUES ('5375', '2019-05-12 23:38:36', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '2', '12345');
INSERT INTO `log` VALUES ('5376', '2019-05-12 23:39:09', '新增ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.create()', '{ resources: ProTopic(id=6, title=1234, isTop=1, count=null, content=12213, createTime=null) }', '127.0.0.1', '22', '12345');
INSERT INTO `log` VALUES ('5377', '2019-05-12 23:39:09', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', '12345');
INSERT INTO `log` VALUES ('5378', '2019-05-12 23:39:38', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', '12345');
INSERT INTO `log` VALUES ('5379', '2019-05-12 23:39:45', '新增ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.create()', '{ resources: ProTopic(id=7, title=12341, isTop=1, count=null, content=124213, createTime=null) }', '127.0.0.1', '21', '12345');
INSERT INTO `log` VALUES ('5380', '2019-05-12 23:39:45', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', '12345');
INSERT INTO `log` VALUES ('5381', '2019-05-12 23:40:15', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', '12345');
INSERT INTO `log` VALUES ('5382', '2019-05-12 23:40:17', '删除ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.delete()', '{ id: 7 }', '127.0.0.1', '57', '12345');
INSERT INTO `log` VALUES ('5383', '2019-05-12 23:40:17', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', '12345');
INSERT INTO `log` VALUES ('5384', '2019-05-12 23:40:44', '新增ProTopic', 'me.zhengjie.exception.BadRequestException: could not execute statement; SQL [n/a]; constraint [null]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement\r\n	at me.zhengjie.aspect.DataScopeAspect.logAround(DataScopeAspect.java:51)\r\n	at sun.reflect.GeneratedMethodAccessor244.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.pro_topic.rest.ProTopicController$$EnhancerBySpringCGLIB$$607f8543.create(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.JwtAuthorizationTokenFilter.doFilterInternal(JwtAuthorizationTokenFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.create()', '{ resources: ProTopic(id=null, title=123214, isTop=1, count=null, content=12214213, createTime=null) }', '127.0.0.1', '314', '12345');
INSERT INTO `log` VALUES ('5385', '2019-05-12 23:42:17', '新增ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.create()', '{ resources: ProTopic(id=7, title=123214, isTop=1, count=null, content=12214213, createTime=null) }', '127.0.0.1', '6', '12345');
INSERT INTO `log` VALUES ('5386', '2019-05-12 23:42:17', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '9', '12345');
INSERT INTO `log` VALUES ('5387', '2019-05-12 23:43:08', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', '12345');
INSERT INTO `log` VALUES ('5388', '2019-05-12 23:43:45', '新增ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.create()', '{ resources: ProTopic(id=5, title=1234, isTop=1, count=null, content=1234123, createTime=null) }', '127.0.0.1', '7', '12345');
INSERT INTO `log` VALUES ('5389', '2019-05-12 23:43:45', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', '12345');
INSERT INTO `log` VALUES ('5390', '2019-05-12 23:44:04', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', '12345');
INSERT INTO `log` VALUES ('5391', '2019-05-12 23:46:07', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '8', '12345');
INSERT INTO `log` VALUES ('5392', '2019-05-12 23:46:16', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', '12345');
INSERT INTO `log` VALUES ('5393', '2019-05-12 23:48:23', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=pro_topic, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '11', '12345');
INSERT INTO `log` VALUES ('5394', '2019-05-12 23:49:10', '新增Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.create()', '{ resources: Notice(id=8, title=12341, type=pro_topic, send=7, receive=2, content=1234, createTime=null) }', '127.0.0.1', '47', '12345');
INSERT INTO `log` VALUES ('5395', '2019-05-12 23:49:10', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=pro_topic, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '18', '12345');
INSERT INTO `log` VALUES ('5396', '2019-05-12 23:50:00', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=pro_topic, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '13', '12345');
INSERT INTO `log` VALUES ('5397', '2019-05-12 23:50:07', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', '12345');
INSERT INTO `log` VALUES ('5398', '2019-05-12 23:51:20', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5399', '2019-05-12 23:51:37', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '23', 'admin');
INSERT INTO `log` VALUES ('5400', '2019-05-12 23:51:37', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '34', 'admin');
INSERT INTO `log` VALUES ('5401', '2019-05-12 23:51:37', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '626', 'admin');
INSERT INTO `log` VALUES ('5402', '2019-05-12 23:51:57', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=hr, password= ******} }', '127.0.0.1', '45', 'hr');
INSERT INTO `log` VALUES ('5403', '2019-05-12 23:52:04', '查询Express', null, 'INFO', 'me.zhengjie.modules.express.rest.ExpressController.getExpresss()', '{ resources: ExpressDTO(id=null, title=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '69', 'hr');
INSERT INTO `log` VALUES ('5404', '2019-05-12 23:52:27', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('5405', '2019-05-12 23:53:38', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '102', 'admin');
INSERT INTO `log` VALUES ('5406', '2019-05-12 23:53:51', '修改角色权限', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updatePermission()', '{ resources: Role{id=5, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '58', 'admin');
INSERT INTO `log` VALUES ('5407', '2019-05-12 23:53:56', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=5, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '58', 'admin');
INSERT INTO `log` VALUES ('5408', '2019-05-12 23:54:04', '查询Express', null, 'INFO', 'me.zhengjie.modules.express.rest.ExpressController.getExpresss()', '{ resources: ExpressDTO(id=null, title=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '7', 'hr');
INSERT INTO `log` VALUES ('5409', '2019-05-12 23:54:06', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=express, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '9', 'hr');
INSERT INTO `log` VALUES ('5410', '2019-05-12 23:54:08', '查询Express', null, 'INFO', 'me.zhengjie.modules.express.rest.ExpressController.getExpresss()', '{ resources: ExpressDTO(id=null, title=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '7', 'hr');
INSERT INTO `log` VALUES ('5411', '2019-05-12 23:54:55', '新增Express', null, 'INFO', 'me.zhengjie.modules.express.rest.ExpressController.create()', '{ resources: Express(id=5, title=123, send=2, receive=3, content=123214, createTime=null) }', '127.0.0.1', '47', 'hr');
INSERT INTO `log` VALUES ('5412', '2019-05-12 23:54:55', '查询Express', null, 'INFO', 'me.zhengjie.modules.express.rest.ExpressController.getExpresss()', '{ resources: ExpressDTO(id=null, title=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '7', 'hr');
INSERT INTO `log` VALUES ('5413', '2019-05-12 23:55:02', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=express, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', 'hr');
INSERT INTO `log` VALUES ('5414', '2019-05-12 23:55:14', '新增Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.create()', '{ resources: Notice(id=9, title=123, type=express, send=2, receive=3, content=124231, createTime=null) }', '127.0.0.1', '4', 'hr');
INSERT INTO `log` VALUES ('5415', '2019-05-12 23:55:14', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=express, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '28', 'hr');
INSERT INTO `log` VALUES ('5416', '2019-05-12 23:55:43', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '68', 'admin');
INSERT INTO `log` VALUES ('5417', '2019-05-12 23:57:49', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5418', '2019-05-12 23:57:49', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '251', 'admin');
INSERT INTO `log` VALUES ('5419', '2019-05-12 23:57:49', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '315', 'admin');
INSERT INTO `log` VALUES ('5420', '2019-05-12 23:58:13', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=商家, password= ******} }', '127.0.0.1', '79', '商家');
INSERT INTO `log` VALUES ('5421', '2019-05-12 23:58:33', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '2690', 'admin');
INSERT INTO `log` VALUES ('5422', '2019-05-12 23:58:50', '修改角色权限', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updatePermission()', '{ resources: Role{id=3, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '73', 'admin');
INSERT INTO `log` VALUES ('5423', '2019-05-12 23:58:51', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=3, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '29', 'admin');
INSERT INTO `log` VALUES ('5424', '2019-05-12 23:59:09', '查询Goods', null, 'INFO', 'me.zhengjie.modules.goods.rest.GoodsController.getGoodss()', '{ resources: GoodsDTO(id=null, name=null, desciption=null, price=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '213', '商家');
INSERT INTO `log` VALUES ('5425', '2019-05-12 23:59:47', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '88', 'admin');
INSERT INTO `log` VALUES ('5426', '2019-05-12 23:59:50', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('5427', '2019-05-13 00:00:29', '修改角色权限', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updatePermission()', '{ resources: Role{id=3, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '235', 'admin');
INSERT INTO `log` VALUES ('5428', '2019-05-13 00:00:33', '查询Goods', null, 'INFO', 'me.zhengjie.modules.goods.rest.GoodsController.getGoodss()', '{ resources: GoodsDTO(id=null, name=null, desciption=null, price=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '9', '商家');
INSERT INTO `log` VALUES ('5429', '2019-05-13 00:00:37', '查询Goods', null, 'INFO', 'me.zhengjie.modules.goods.rest.GoodsController.getGoodss()', '{ resources: GoodsDTO(id=null, name=null, desciption=null, price=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '9', '商家');
INSERT INTO `log` VALUES ('5430', '2019-05-13 00:00:51', '新增Goods', null, 'INFO', 'me.zhengjie.modules.goods.rest.GoodsController.create()', '{ resources: Goods(id=5, name=123, desciption=123, price=12, createTime=null) }', '127.0.0.1', '22', '商家');
INSERT INTO `log` VALUES ('5431', '2019-05-13 00:00:51', '查询Goods', null, 'INFO', 'me.zhengjie.modules.goods.rest.GoodsController.getGoodss()', '{ resources: GoodsDTO(id=null, name=null, desciption=null, price=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', '商家');
INSERT INTO `log` VALUES ('5432', '2019-05-13 00:01:22', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '105', 'admin');
INSERT INTO `log` VALUES ('5433', '2019-05-13 00:01:32', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '0', 'admin');
INSERT INTO `log` VALUES ('5434', '2019-05-13 00:01:32', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5435', '2019-05-13 00:01:33', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '133', 'admin');
INSERT INTO `log` VALUES ('5436', '2019-05-13 00:01:47', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=test, password= ******} }', '127.0.0.1', '21', 'test');
INSERT INTO `log` VALUES ('5437', '2019-05-13 00:01:53', '查询Medical', null, 'INFO', 'me.zhengjie.modules.medical.rest.MedicalController.getMedicals()', '{ resources: MedicalDTO(id=null, title=null, name=null, age=null, sex=null, identity=null, record=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '96', 'test');
INSERT INTO `log` VALUES ('5438', '2019-05-13 00:02:29', '新增Medical', null, 'INFO', 'me.zhengjie.modules.medical.rest.MedicalController.create()', '{ resources: Medical(id=5, title=123, name=123, age=12, sex=1, identity=213412, record=1234123, createTime=null) }', '127.0.0.1', '108', 'test');
INSERT INTO `log` VALUES ('5439', '2019-05-13 00:02:29', '查询Medical', null, 'INFO', 'me.zhengjie.modules.medical.rest.MedicalController.getMedicals()', '{ resources: MedicalDTO(id=null, title=null, name=null, age=null, sex=null, identity=null, record=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '14', 'test');
INSERT INTO `log` VALUES ('5440', '2019-05-13 00:02:54', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '36', 'admin');
INSERT INTO `log` VALUES ('5441', '2019-05-13 00:03:22', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 1 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '329', 'admin');
INSERT INTO `log` VALUES ('5442', '2019-05-13 00:03:40', '新增用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.create()', '{ resources: User{id=8, username=\'ceshi\', avatar=\'https://aurora-1255840532.cos.ap-chengdu.myqcloud.com/8918a306ea314404835a9196585c4b75.jpeg\', email=\'12367@qq.com\', enabled=false, password=\'e10adc3949ba59abbe56e057f20f883e\', createTime=2019-05-13 00:03:40.104, lastPasswordResetTime=null} }', '127.0.0.1', '370', 'admin');
INSERT INTO `log` VALUES ('5443', '2019-05-13 00:03:40', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '97', 'admin');
INSERT INTO `log` VALUES ('5444', '2019-05-13 00:03:48', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 1 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5445', '2019-05-13 00:03:48', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '26', 'admin');
INSERT INTO `log` VALUES ('5446', '2019-05-13 00:03:55', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=job_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '2', 'admin');
INSERT INTO `log` VALUES ('5447', '2019-05-13 00:03:55', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '42', 'admin');
INSERT INTO `log` VALUES ('5448', '2019-05-13 00:03:56', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('5449', '2019-05-13 00:04:13', '新增岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.create()', '{ resources: Job(id=20, name=住户, sort=999, enabled=true, dept=Dept(id=11, name=null, enabled=null, pid=null, createTime=null, roles=null), createTime=2019-05-13 00:04:13.691) }', '127.0.0.1', '18', 'admin');
INSERT INTO `log` VALUES ('5450', '2019-05-13 00:04:13', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '118', 'admin');
INSERT INTO `log` VALUES ('5451', '2019-05-13 00:04:20', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('5452', '2019-05-13 00:04:20', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5453', '2019-05-13 00:04:20', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '154', 'admin');
INSERT INTO `log` VALUES ('5454', '2019-05-13 00:04:23', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '81', 'admin');
INSERT INTO `log` VALUES ('5455', '2019-05-13 00:04:23', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 1 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '132', 'admin');
INSERT INTO `log` VALUES ('5456', '2019-05-13 00:04:31', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 1 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5457', '2019-05-13 00:04:31', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '25', 'admin');
INSERT INTO `log` VALUES ('5458', '2019-05-13 00:04:39', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('5459', '2019-05-13 00:04:39', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('5460', '2019-05-13 00:04:39', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '128', 'admin');
INSERT INTO `log` VALUES ('5461', '2019-05-13 00:04:41', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5462', '2019-05-13 00:04:41', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 1 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '23', 'admin');
INSERT INTO `log` VALUES ('5463', '2019-05-13 00:04:49', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 11 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('5464', '2019-05-13 00:04:52', '修改用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.update()', '{ resources: User{id=8, username=\'ceshi\', avatar=\'null\', email=\'12367@qq.com\', enabled=false, password=\'null\', createTime=null, lastPasswordResetTime=null} }', '127.0.0.1', '42', 'admin');
INSERT INTO `log` VALUES ('5465', '2019-05-13 00:04:52', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '131', 'admin');
INSERT INTO `log` VALUES ('5466', '2019-05-13 00:04:54', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 11 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '20', 'admin');
INSERT INTO `log` VALUES ('5467', '2019-05-13 00:04:54', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('5468', '2019-05-13 00:04:57', '修改用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.update()', '{ resources: User{id=8, username=\'ceshi\', avatar=\'null\', email=\'12367@qq.com\', enabled=true, password=\'null\', createTime=null, lastPasswordResetTime=null} }', '127.0.0.1', '26', 'admin');
INSERT INTO `log` VALUES ('5469', '2019-05-13 00:04:57', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '195', 'admin');
INSERT INTO `log` VALUES ('5470', '2019-05-13 00:05:17', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '60', 'admin');
INSERT INTO `log` VALUES ('5471', '2019-05-13 00:05:17', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 11 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '79', 'admin');
INSERT INTO `log` VALUES ('5472', '2019-05-13 00:05:31', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=ceshi, password= ******} }', '127.0.0.1', '38', 'ceshi');
INSERT INTO `log` VALUES ('5473', '2019-05-13 00:05:37', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '8', 'ceshi');
INSERT INTO `log` VALUES ('5474', '2019-05-13 00:05:38', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '331', 'ceshi');
INSERT INTO `log` VALUES ('5475', '2019-05-13 00:05:38', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '354', 'ceshi');
INSERT INTO `log` VALUES ('5476', '2019-05-13 00:05:43', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '588', 'ceshi');
INSERT INTO `log` VALUES ('5477', '2019-05-13 00:05:48', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '43', 'ceshi');
INSERT INTO `log` VALUES ('5478', '2019-05-13 00:05:48', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '91', 'ceshi');
INSERT INTO `log` VALUES ('5479', '2019-05-13 00:05:48', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '214', 'ceshi');
INSERT INTO `log` VALUES ('5480', '2019-05-13 00:06:07', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '136', 'ceshi');
INSERT INTO `log` VALUES ('5481', '2019-05-13 00:06:16', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '11', 'ceshi');
INSERT INTO `log` VALUES ('5482', '2019-05-13 00:06:21', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', 'ceshi');
INSERT INTO `log` VALUES ('5483', '2019-05-13 00:06:55', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=2, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '53', 'admin');
INSERT INTO `log` VALUES ('5484', '2019-05-13 00:07:00', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '10', 'ceshi');
INSERT INTO `log` VALUES ('5485', '2019-05-13 00:07:15', '查询Express', null, 'INFO', 'me.zhengjie.modules.express.rest.ExpressController.getExpresss()', '{ resources: ExpressDTO(id=null, title=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'ceshi');
INSERT INTO `log` VALUES ('5486', '2019-05-13 00:07:56', '修改角色权限', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updatePermission()', '{ resources: Role{id=2, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '43', 'admin');
INSERT INTO `log` VALUES ('5487', '2019-05-13 00:08:01', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '8', 'ceshi');
INSERT INTO `log` VALUES ('5488', '2019-05-13 00:08:22', '查询Medical', null, 'INFO', 'me.zhengjie.modules.medical.rest.MedicalController.getMedicals()', '{ resources: MedicalDTO(id=null, title=null, name=null, age=null, sex=null, identity=null, record=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '7', 'ceshi');
INSERT INTO `log` VALUES ('5489', '2019-05-13 00:08:24', '查询Express', null, 'INFO', 'me.zhengjie.modules.express.rest.ExpressController.getExpresss()', '{ resources: ExpressDTO(id=null, title=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'ceshi');
INSERT INTO `log` VALUES ('5490', '2019-05-13 00:08:25', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '6', 'ceshi');
INSERT INTO `log` VALUES ('5491', '2019-05-13 00:08:36', '查询Goods', null, 'INFO', 'me.zhengjie.modules.goods.rest.GoodsController.getGoodss()', '{ resources: GoodsDTO(id=null, name=null, desciption=null, price=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '2', 'ceshi');
INSERT INTO `log` VALUES ('5492', '2019-05-13 00:09:06', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=2, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '29', 'admin');
INSERT INTO `log` VALUES ('5493', '2019-05-13 00:10:21', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '9', 'ceshi');
INSERT INTO `log` VALUES ('5494', '2019-05-13 00:10:23', '查询Medical', null, 'INFO', 'me.zhengjie.modules.medical.rest.MedicalController.getMedicals()', '{ resources: MedicalDTO(id=null, title=null, name=null, age=null, sex=null, identity=null, record=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', 'ceshi');
INSERT INTO `log` VALUES ('5495', '2019-05-13 00:10:24', '查询Express', null, 'INFO', 'me.zhengjie.modules.express.rest.ExpressController.getExpresss()', '{ resources: ExpressDTO(id=null, title=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '27', 'ceshi');
INSERT INTO `log` VALUES ('5496', '2019-05-13 00:10:27', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '7', 'ceshi');
INSERT INTO `log` VALUES ('5497', '2019-05-13 00:10:29', '查询Goods', null, 'INFO', 'me.zhengjie.modules.goods.rest.GoodsController.getGoodss()', '{ resources: GoodsDTO(id=null, name=null, desciption=null, price=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '32', 'ceshi');
INSERT INTO `log` VALUES ('5498', '2019-05-13 00:10:33', '查询Medical', null, 'INFO', 'me.zhengjie.modules.medical.rest.MedicalController.getMedicals()', '{ resources: MedicalDTO(id=null, title=null, name=null, age=null, sex=null, identity=null, record=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '44', 'ceshi');
INSERT INTO `log` VALUES ('5499', '2019-05-15 19:52:54', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '197', 'admin');
INSERT INTO `log` VALUES ('5500', '2019-05-15 19:53:05', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '251', 'admin');
INSERT INTO `log` VALUES ('5501', '2019-05-15 19:53:21', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '68', 'admin');
INSERT INTO `log` VALUES ('5502', '2019-05-15 19:53:26', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '81', 'admin');
INSERT INTO `log` VALUES ('5503', '2019-05-15 19:54:26', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '24', 'admin');
INSERT INTO `log` VALUES ('5504', '2019-05-15 19:54:26', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '101', 'admin');
INSERT INTO `log` VALUES ('5505', '2019-05-15 19:54:42', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '58', 'admin');
INSERT INTO `log` VALUES ('5506', '2019-05-15 19:54:46', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5507', '2019-05-15 19:54:46', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '19', 'admin');
INSERT INTO `log` VALUES ('5508', '2019-05-15 19:54:46', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '179', 'admin');
INSERT INTO `log` VALUES ('5509', '2019-05-15 19:54:48', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '18', 'admin');
INSERT INTO `log` VALUES ('5510', '2019-05-15 19:56:44', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=12345, password= ******} }', '127.0.0.1', '14', '12345');
INSERT INTO `log` VALUES ('5511', '2019-05-15 19:58:16', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=pro_topic, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '19', '12345');
INSERT INTO `log` VALUES ('5512', '2019-05-15 19:59:06', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '12', '12345');
INSERT INTO `log` VALUES ('5513', '2019-05-15 19:59:49', '新增ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.create()', '{ resources: ProTopic(id=6, title=1234213, isTop=1, count=null, content=1234213123, createTime=null) }', '127.0.0.1', '17', '12345');
INSERT INTO `log` VALUES ('5514', '2019-05-15 19:59:49', '查询ProTopic', null, 'INFO', 'me.zhengjie.modules.pro_topic.rest.ProTopicController.getProTopics()', '{ resources: ProTopicDTO(id=null, title=null, isTop=null, count=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', '12345');
INSERT INTO `log` VALUES ('5515', '2019-05-15 20:00:25', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=hr, password= ******} }', '127.0.0.1', '11', 'hr');
INSERT INTO `log` VALUES ('5516', '2019-05-15 20:00:44', '查询Express', null, 'INFO', 'me.zhengjie.modules.express.rest.ExpressController.getExpresss()', '{ resources: ExpressDTO(id=null, title=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '36', 'hr');
INSERT INTO `log` VALUES ('5517', '2019-05-15 20:00:49', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=express, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '15', 'hr');
INSERT INTO `log` VALUES ('5518', '2019-05-15 20:01:20', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=test, password= ******} }', '127.0.0.1', '8', 'test');
INSERT INTO `log` VALUES ('5519', '2019-05-15 20:01:26', '查询Medical', null, 'INFO', 'me.zhengjie.modules.medical.rest.MedicalController.getMedicals()', '{ resources: MedicalDTO(id=null, title=null, name=null, age=null, sex=null, identity=null, record=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '46', 'test');
INSERT INTO `log` VALUES ('5520', '2019-05-15 20:02:05', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=ceshi, password= ******} }', '127.0.0.1', '11', 'ceshi');
INSERT INTO `log` VALUES ('5521', '2019-05-15 20:02:05', '查询Medical', null, 'INFO', 'me.zhengjie.modules.medical.rest.MedicalController.getMedicals()', '{ resources: MedicalDTO(id=null, title=null, name=null, age=null, sex=null, identity=null, record=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', 'ceshi');
INSERT INTO `log` VALUES ('5522', '2019-05-15 20:02:09', '查询Notice', null, 'INFO', 'me.zhengjie.modules.notice.rest.NoticeController.getNotices()', '{ resources: NoticeDTO(id=null, title=null, type=null, send=null, receive=null, content=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '7', 'ceshi');
INSERT INTO `log` VALUES ('5523', '2019-05-15 20:02:17', '查询Medical', null, 'INFO', 'me.zhengjie.modules.medical.rest.MedicalController.getMedicals()', '{ resources: MedicalDTO(id=null, title=null, name=null, age=null, sex=null, identity=null, record=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'ceshi');
INSERT INTO `log` VALUES ('5524', '2019-05-15 20:02:43', '查询Goods', null, 'INFO', 'me.zhengjie.modules.goods.rest.GoodsController.getGoodss()', '{ resources: GoodsDTO(id=null, name=null, desciption=null, price=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '27', 'ceshi');
INSERT INTO `log` VALUES ('5525', '2019-05-15 20:02:51', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '42', 'admin');
INSERT INTO `log` VALUES ('5526', '2019-05-15 20:03:01', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '98', 'admin');
INSERT INTO `log` VALUES ('5527', '2019-05-15 20:03:06', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '68', 'admin');
INSERT INTO `log` VALUES ('5528', '2019-05-15 20:03:09', '查询Goods', null, 'INFO', 'me.zhengjie.modules.goods.rest.GoodsController.getGoodss()', '{ resources: GoodsDTO(id=null, name=null, desciption=null, price=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('5529', '2019-05-15 20:03:30', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '54', 'admin');
INSERT INTO `log` VALUES ('5530', '2019-05-15 20:03:39', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('5531', '2019-05-15 20:03:39', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5532', '2019-05-15 20:03:40', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '73', 'admin');
INSERT INTO `log` VALUES ('5533', '2019-05-15 20:03:49', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=商家, password= ******} }', '127.0.0.1', '8', '商家');
INSERT INTO `log` VALUES ('5534', '2019-05-15 20:03:49', '查询Goods', null, 'INFO', 'me.zhengjie.modules.goods.rest.GoodsController.getGoodss()', '{ resources: GoodsDTO(id=null, name=null, desciption=null, price=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', '商家');
INSERT INTO `log` VALUES ('5535', '2019-05-15 20:04:06', '查询Goods', null, 'INFO', 'me.zhengjie.modules.goods.rest.GoodsController.getGoodss()', '{ resources: GoodsDTO(id=null, name=null, desciption=null, price=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', '商家');

-- ----------------------------
-- Table structure for medical
-- ----------------------------
DROP TABLE IF EXISTS `medical`;
CREATE TABLE `medical` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `name` varchar(255) NOT NULL COMMENT '姓名',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `identity` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `record` varchar(255) DEFAULT NULL COMMENT '医疗记录',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='医疗档案';

-- ----------------------------
-- Records of medical
-- ----------------------------
INSERT INTO `medical` VALUES ('5', '123', '123', '12', '1', '213412', '1234123', '2019-05-13 00:02:29');

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '2018-12-18 15:11:29', '\0', '系统管理', null, '0', '1', 'system', 'system');
INSERT INTO `menu` VALUES ('2', '2018-12-18 15:14:44', '\0', '用户管理', 'system/user/index', '1', '2', 'peoples', 'user');
INSERT INTO `menu` VALUES ('3', '2018-12-18 15:16:07', '\0', '角色管理', 'system/role/index', '1', '3', 'role', 'role');
INSERT INTO `menu` VALUES ('4', '2018-12-18 15:16:45', '\0', '权限管理', 'system/permission/index', '1', '4', 'permission', 'permission');
INSERT INTO `menu` VALUES ('5', '2018-12-18 15:17:28', '\0', '菜单管理', 'system/menu/index', '1', '5', 'menu', 'menu');
INSERT INTO `menu` VALUES ('6', '2018-12-18 15:17:48', '\0', '社区项', null, '0', '10', 'monitor', 'manage');
INSERT INTO `menu` VALUES ('7', '2018-12-18 15:18:26', '\0', '消息', 'manage/notice/index', '6', '11', 'log', 'notice');
INSERT INTO `menu` VALUES ('8', '2018-12-18 15:19:01', '\0', '医疗档案', 'manage/medical/index', '6', '13', 'redis', 'medical');
INSERT INTO `menu` VALUES ('9', '2018-12-18 15:19:34', '\0', '快递', 'manage/express/index', '6', '14', 'sqlMonitor', 'express');
INSERT INTO `menu` VALUES ('10', '2018-12-19 13:38:16', '\0', '组件管理', null, '0', '50', 'zujian', 'components');
INSERT INTO `menu` VALUES ('11', '2018-12-19 13:38:49', '\0', '图标库', 'components/IconSelect', '10', '51', 'icon', 'icon');
INSERT INTO `menu` VALUES ('12', '2018-12-24 20:37:35', '\0', '物业公告', 'manage/pro_topic/index', '6', '16', 'codeConsole', 'pro_topic');
INSERT INTO `menu` VALUES ('14', '2018-12-27 10:13:09', '\0', '社区信息', 'manage/erea_info/index', '6', '24', 'email', 'erea_info');
INSERT INTO `menu` VALUES ('15', '2018-12-27 11:58:25', '\0', '富文本', 'components/Editor', '10', '52', 'fwb', 'tinymce');
INSERT INTO `menu` VALUES ('16', '2018-12-28 09:36:53', '\0', '图床管理', 'tools/picture/index', '36', '25', 'image', 'pictures');
INSERT INTO `menu` VALUES ('18', '2018-12-31 11:12:15', '\0', '七牛云存储', 'tools/qiniu/index', '36', '26', 'qiniu', 'qiniu');
INSERT INTO `menu` VALUES ('19', '2018-12-31 14:52:38', '\0', '支付宝工具', 'tools/aliPay/index', '36', '27', 'alipay', 'aliPay');
INSERT INTO `menu` VALUES ('24', '2019-01-04 16:24:48', '\0', '三级菜单1', 'nested/menu1/menu1-1', '22', '999', 'menu', 'menu1-1');
INSERT INTO `menu` VALUES ('27', '2019-01-07 17:27:32', '\0', '三级菜单2', 'nested/menu1/menu1-2', '22', '999', 'menu', 'menu1-2');
INSERT INTO `menu` VALUES ('28', '2019-01-07 20:34:40', '\0', '定时任务', 'system/timing/index', '36', '21', 'timing', 'timing');
INSERT INTO `menu` VALUES ('30', '2019-01-11 15:45:55', '\0', '代码生成', 'generator/index', '1', '22', 'dev', 'generator');
INSERT INTO `menu` VALUES ('32', '2019-01-13 13:49:03', '\0', '政府公告', 'manage/topic/index', '6', '12', 'error', 'topic');
INSERT INTO `menu` VALUES ('33', '2019-03-08 13:46:44', '\0', 'Markdown', 'components/MarkDown', '10', '53', 'markdown', 'markdown');
INSERT INTO `menu` VALUES ('34', '2019-03-08 15:49:40', '\0', 'Yaml编辑器', 'components/YamlEdit', '10', '54', 'dev', 'yaml');
INSERT INTO `menu` VALUES ('35', '2019-03-25 09:46:00', '\0', '社区管理', 'system/dept/index', '1', '6', 'dept', 'dept');
INSERT INTO `menu` VALUES ('36', '2019-03-29 10:57:35', '\0', '系统工具', '', '0', '20', 'sys-tools', 'sys-tools');
INSERT INTO `menu` VALUES ('37', '2019-03-29 13:51:18', '\0', '岗位管理', 'system/job/index', '1', '7', 'Steve-Jobs', 'job');
INSERT INTO `menu` VALUES ('38', '2019-03-29 19:57:53', '\0', '接口文档', 'tools/swagger/index', '36', '23', 'swagger', 'swagger2');
INSERT INTO `menu` VALUES ('39', '2019-04-10 11:49:04', '\0', '字典管理', 'system/dict/index', '1', '8', 'dictionary', 'dict');
INSERT INTO `menu` VALUES ('40', '2019-05-12 20:46:25', '\0', '商品', 'manage/goods/index', '6', '999', 'icon', 'goods');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `type` varchar(255) NOT NULL COMMENT '类型',
  `send` int(11) DEFAULT NULL COMMENT '发送人id',
  `receive` int(11) DEFAULT NULL COMMENT '接受人id',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='消息表';

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('5', '123', '1', '3', '5', '12234', '2019-05-12 20:56:38');
INSERT INTO `notice` VALUES ('6', '213', 'admin', '1', '2', '1234', '2019-05-12 22:13:29');
INSERT INTO `notice` VALUES ('7', '12312', 'admin', '1', '3', '1234', '2019-05-12 22:14:04');
INSERT INTO `notice` VALUES ('8', '12341', 'pro_topic', '7', '2', '1234', '2019-05-12 23:49:10');
INSERT INTO `notice` VALUES ('9', '123', 'express', '2', '3', '124231', '2019-05-12 23:55:14');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------

-- ----------------------------
-- Table structure for pro_topic
-- ----------------------------
DROP TABLE IF EXISTS `pro_topic`;
CREATE TABLE `pro_topic` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `is_top` int(11) DEFAULT NULL COMMENT '是否置顶',
  `count` int(11) DEFAULT '0' COMMENT '阅读次数',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='物业公告';

-- ----------------------------
-- Records of pro_topic
-- ----------------------------
INSERT INTO `pro_topic` VALUES ('5', '1234', '1', null, '1234123', '2019-05-12 23:43:45');
INSERT INTO `pro_topic` VALUES ('6', '1234213', '1', null, '1234213123', '2019-05-15 19:59:49');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quartz_log
-- ----------------------------
INSERT INTO `quartz_log` VALUES ('1', 'visitsTask', '2019-05-13 00:00:00', '0 0 0 * * ?', null, '', '更新访客记录', 'run', null, '135');

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
INSERT INTO `role` VALUES ('2', '2018-11-23 13:09:06', '住户', '', '自定义');
INSERT INTO `role` VALUES ('3', '2019-05-12 20:20:31', '商家', '', '全部');
INSERT INTO `role` VALUES ('4', '2019-05-12 20:21:17', '物业管理员', '', '全部');
INSERT INTO `role` VALUES ('5', '2019-05-12 20:22:15', '物流管理员', '', '全部');
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
INSERT INTO `roles_depts` VALUES ('2', '7');

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
INSERT INTO `roles_menus` VALUES ('12', '1');
INSERT INTO `roles_menus` VALUES ('14', '1');
INSERT INTO `roles_menus` VALUES ('32', '1');
INSERT INTO `roles_menus` VALUES ('35', '1');
INSERT INTO `roles_menus` VALUES ('37', '1');
INSERT INTO `roles_menus` VALUES ('40', '1');
INSERT INTO `roles_menus` VALUES ('1', '2');
INSERT INTO `roles_menus` VALUES ('2', '2');
INSERT INTO `roles_menus` VALUES ('3', '2');
INSERT INTO `roles_menus` VALUES ('4', '2');
INSERT INTO `roles_menus` VALUES ('6', '2');
INSERT INTO `roles_menus` VALUES ('7', '2');
INSERT INTO `roles_menus` VALUES ('8', '2');
INSERT INTO `roles_menus` VALUES ('9', '2');
INSERT INTO `roles_menus` VALUES ('12', '2');
INSERT INTO `roles_menus` VALUES ('40', '2');
INSERT INTO `roles_menus` VALUES ('6', '3');
INSERT INTO `roles_menus` VALUES ('40', '3');
INSERT INTO `roles_menus` VALUES ('6', '4');
INSERT INTO `roles_menus` VALUES ('7', '4');
INSERT INTO `roles_menus` VALUES ('12', '4');
INSERT INTO `roles_menus` VALUES ('6', '5');
INSERT INTO `roles_menus` VALUES ('7', '5');
INSERT INTO `roles_menus` VALUES ('9', '5');
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
INSERT INTO `roles_permissions` VALUES ('2', '3');
INSERT INTO `roles_permissions` VALUES ('2', '8');
INSERT INTO `roles_permissions` VALUES ('2', '14');
INSERT INTO `roles_permissions` VALUES ('3', '18');
INSERT INTO `roles_permissions` VALUES ('3', '19');
INSERT INTO `roles_permissions` VALUES ('2', '20');
INSERT INTO `roles_permissions` VALUES ('3', '20');
INSERT INTO `roles_permissions` VALUES ('3', '21');
INSERT INTO `roles_permissions` VALUES ('3', '22');
INSERT INTO `roles_permissions` VALUES ('4', '23');
INSERT INTO `roles_permissions` VALUES ('2', '24');
INSERT INTO `roles_permissions` VALUES ('4', '24');
INSERT INTO `roles_permissions` VALUES ('4', '25');
INSERT INTO `roles_permissions` VALUES ('4', '26');
INSERT INTO `roles_permissions` VALUES ('5', '35');
INSERT INTO `roles_permissions` VALUES ('2', '36');
INSERT INTO `roles_permissions` VALUES ('5', '36');
INSERT INTO `roles_permissions` VALUES ('5', '37');
INSERT INTO `roles_permissions` VALUES ('5', '38');
INSERT INTO `roles_permissions` VALUES ('5', '39');
INSERT INTO `roles_permissions` VALUES ('2', '41');
INSERT INTO `roles_permissions` VALUES ('3', '50');
INSERT INTO `roles_permissions` VALUES ('2', '51');
INSERT INTO `roles_permissions` VALUES ('3', '51');
INSERT INTO `roles_permissions` VALUES ('3', '52');
INSERT INTO `roles_permissions` VALUES ('3', '53');
INSERT INTO `roles_permissions` VALUES ('3', '54');
INSERT INTO `roles_permissions` VALUES ('4', '55');
INSERT INTO `roles_permissions` VALUES ('6', '56');
INSERT INTO `roles_permissions` VALUES ('6', '57');
INSERT INTO `roles_permissions` VALUES ('6', '58');
INSERT INTO `roles_permissions` VALUES ('6', '59');
INSERT INTO `roles_permissions` VALUES ('2', '60');
INSERT INTO `roles_permissions` VALUES ('6', '60');
INSERT INTO `roles_permissions` VALUES ('2', '62');
INSERT INTO `roles_permissions` VALUES ('4', '62');
INSERT INTO `roles_permissions` VALUES ('5', '62');
INSERT INTO `roles_permissions` VALUES ('4', '63');
INSERT INTO `roles_permissions` VALUES ('5', '63');
INSERT INTO `roles_permissions` VALUES ('4', '64');
INSERT INTO `roles_permissions` VALUES ('5', '64');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `is_top` int(11) DEFAULT NULL COMMENT '是否置顶',
  `count` int(11) DEFAULT NULL COMMENT '阅读次数',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('5', '123', '1', '15', '213', '2019-05-12 19:18:50');

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
INSERT INTO `user` VALUES ('1', 'https://i.loli.net/2019/04/04/5ca5b971e1548.jpeg', '2018-08-23 09:11:56', 'admin@eladmin.net', '1', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '2019-04-04 16:00:46', '2', '18888888888', '11');
INSERT INTO `user` VALUES ('3', 'https://aurora-1255840532.cos.ap-chengdu.myqcloud.com/8918a306ea314404835a9196585c4b75.jpeg', '2018-12-27 20:05:26', 'test@eladmin.net', '1', 'e10adc3949ba59abbe56e057f20f883e', 'test', '2019-04-01 09:15:24', '2', '17777777777', '12');
INSERT INTO `user` VALUES ('5', 'https://aurora-1255840532.cos.ap-chengdu.myqcloud.com/8918a306ea314404835a9196585c4b75.jpeg', '2019-04-02 10:07:12', 'hr@eladmin.net', '1', 'e10adc3949ba59abbe56e057f20f883e', 'hr', null, '11', '15555555555', '8');
INSERT INTO `user` VALUES ('6', 'https://aurora-1255840532.cos.ap-chengdu.myqcloud.com/8918a306ea314404835a9196585c4b75.jpeg', '2019-05-12 20:08:33', '21123123@qq.com', '1', 'e10adc3949ba59abbe56e057f20f883e', '商家', null, '1', '15164241564', '19');
INSERT INTO `user` VALUES ('7', 'https://aurora-1255840532.cos.ap-chengdu.myqcloud.com/8918a306ea314404835a9196585c4b75.jpeg', '2019-05-12 20:38:07', '1784145123@qq.com', '1', 'e10adc3949ba59abbe56e057f20f883e', '12345', null, '1', '15624162346', '2');
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
INSERT INTO `users_roles` VALUES ('8', '2');
INSERT INTO `users_roles` VALUES ('6', '3');
INSERT INTO `users_roles` VALUES ('7', '4');
INSERT INTO `users_roles` VALUES ('5', '5');
INSERT INTO `users_roles` VALUES ('3', '6');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visits
-- ----------------------------
INSERT INTO `visits` VALUES ('20', '2019-05-12 12:58:39', '2019-05-12', '1', '28', 'Sun');
INSERT INTO `visits` VALUES ('21', '2019-05-13 00:00:00', '2019-05-13', '1', '6', 'Mon');
INSERT INTO `visits` VALUES ('22', '2019-05-15 19:46:21', '2019-05-15', '1', '7', 'Wed');

-- ----------------------------
-- Table structure for v_order
-- ----------------------------
DROP TABLE IF EXISTS `v_order`;
CREATE TABLE `v_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cook_id` varchar(255) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `cus_id` varchar(255) DEFAULT NULL,
  `end_time` datetime NOT NULL,
  `start_time` datetime NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_order
-- ----------------------------
