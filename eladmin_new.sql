/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : eladmin_new

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 18:46:06
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', 'eladmin', '0', '2019-03-25 09:14:05', '');
INSERT INTO `dept` VALUES ('2', '研发部', '7', '2019-03-25 09:15:32', '');
INSERT INTO `dept` VALUES ('5', '运维部', '7', '2019-03-25 09:20:44', '');
INSERT INTO `dept` VALUES ('6', '测试部', '8', '2019-03-25 09:52:18', '');
INSERT INTO `dept` VALUES ('7', '华南分部', '1', '2019-03-25 11:04:50', '');
INSERT INTO `dept` VALUES ('8', '华北分部', '1', '2019-03-25 11:04:53', '');
INSERT INTO `dept` VALUES ('9', '财务部', '7', '2019-03-25 11:05:34', '');
INSERT INTO `dept` VALUES ('10', '行政部', '8', '2019-03-25 11:05:58', '');
INSERT INTO `dept` VALUES ('11', '人事部', '8', '2019-03-25 11:07:58', '');
INSERT INTO `dept` VALUES ('12', '市场部', '7', '2019-03-25 11:10:24', '\0');

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
INSERT INTO `gen_config` VALUES ('1', 'jie', '\0', 'eladmin-system', 'me.zhengjie.modules.system', 'E:\\workspace\\me\\eladmin-qt\\src\\views\\system\\dictDetail', 'E:\\workspace\\me\\eladmin-qt\\src\\api');

-- ----------------------------
-- Table structure for hash
-- ----------------------------
DROP TABLE IF EXISTS `hash`;
CREATE TABLE `hash` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `hash` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hash
-- ----------------------------
INSERT INTO `hash` VALUES ('3', '1', '2', '49');
INSERT INTO `hash` VALUES ('4', '1', '2', '49');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('2', '董事长秘书', '', '2019-03-29 14:01:30', '2', '1');
INSERT INTO `job` VALUES ('8', '人事专员', '', '2019-03-29 14:52:28', '3', '11');
INSERT INTO `job` VALUES ('10', '产品经理', '\0', '2019-03-29 14:55:51', '4', '2');
INSERT INTO `job` VALUES ('11', '全栈开发', '', '2019-03-31 13:39:30', '6', '2');
INSERT INTO `job` VALUES ('12', '软件测试', '', '2019-03-31 13:39:43', '5', '2');
INSERT INTO `job` VALUES ('19', '董事长', '', '2019-03-31 14:58:15', '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=5015 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('4954', '2019-05-03 18:00:02', '用户登录', 'me.zhengjie.exception.BadRequestException: Cannot get Jedis connection; nested exception is redis.clients.jedis.exceptions.JedisConnectionException: Could not get a resource from the pool\r\n	at me.zhengjie.aspect.DataScopeAspect.logAround(DataScopeAspect.java:51)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.security.rest.AuthenticationController$$EnhancerBySpringCGLIB$$87a68400.login(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.JwtAuthorizationTokenFilter.doFilterInternal(JwtAuthorizationTokenFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '1083', 'admin');
INSERT INTO `log` VALUES ('4955', '2019-05-03 18:00:20', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '1171', 'admin');
INSERT INTO `log` VALUES ('4956', '2019-05-03 18:00:38', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '118', 'admin');
INSERT INTO `log` VALUES ('4957', '2019-05-03 18:00:38', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '154', 'admin');
INSERT INTO `log` VALUES ('4958', '2019-05-03 18:00:45', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '51', 'admin');
INSERT INTO `log` VALUES ('4959', '2019-05-03 18:00:45', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '21', 'admin');
INSERT INTO `log` VALUES ('4960', '2019-05-03 18:00:45', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '128', 'admin');
INSERT INTO `log` VALUES ('4961', '2019-05-03 18:00:47', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=2) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '104', 'admin');
INSERT INTO `log` VALUES ('4962', '2019-05-03 18:00:48', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=5) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '24', 'admin');
INSERT INTO `log` VALUES ('4963', '2019-05-03 18:00:49', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=9) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('4964', '2019-05-03 18:00:50', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=8) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '60', 'admin');
INSERT INTO `log` VALUES ('4965', '2019-05-03 18:00:50', '查询用户', null, 'INFO', 'me.zhengjie.modules.system.rest.UserController.getUsers()', '{ userDTO: UserDTO(id=null, username=null, avatar=null, email=null, phone=null, enabled=null, password=null, createTime=null, lastPasswordResetTime=null, roles=null, job=null, dept=null, deptId=6) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('4966', '2019-05-03 18:00:52', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '24', 'admin');
INSERT INTO `log` VALUES ('4967', '2019-05-03 18:00:56', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 1 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '43', 'admin');
INSERT INTO `log` VALUES ('4968', '2019-05-03 18:01:01', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: 2 enabled: null pageable: Page request [number: 0, size 2000, sort: UNSORTED] }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('4969', '2019-05-03 18:18:21', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '20', 'admin');
INSERT INTO `log` VALUES ('4970', '2019-05-03 18:18:38', '删除菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.delete()', '{ id: 21 }', '127.0.0.1', '850', 'admin');
INSERT INTO `log` VALUES ('4971', '2019-05-03 18:18:38', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('4972', '2019-05-03 18:18:42', '删除菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.delete()', '{ id: 17 }', '127.0.0.1', '101', 'admin');
INSERT INTO `log` VALUES ('4973', '2019-05-03 18:18:42', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('4974', '2019-05-03 18:18:58', '删除菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.delete()', '{ id: 10 }', '127.0.0.1', '655', 'admin');
INSERT INTO `log` VALUES ('4975', '2019-05-03 18:18:58', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('4976', '2019-05-03 18:20:37', '查询Redis缓存', null, 'INFO', 'me.zhengjie.modules.monitor.rest.RedisController.getRedis()', '{ key: * pageable: Page request [number: 0, size 10, sort: UNSORTED] }', '127.0.0.1', '170', 'admin');
INSERT INTO `log` VALUES ('4977', '2019-05-03 18:20:57', '查询定时任务', null, 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.getJobs()', '{ resources: QuartzJob(id=null, jobName=null, beanName=null, methodName=null, params=null, cronExpression=null, isPause=false, remark=null, updateTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('4978', '2019-05-03 18:22:51', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('4979', '2019-05-03 18:23:24', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '2', 'admin');
INSERT INTO `log` VALUES ('4980', '2019-05-03 18:23:38', '修改菜单', 'me.zhengjie.exception.BadRequestException: 外链必须以http://或者https://开头\r\n	at me.zhengjie.aspect.DataScopeAspect.logAround(DataScopeAspect.java:51)\r\n	at sun.reflect.GeneratedMethodAccessor261.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.system.rest.MenuController$$EnhancerBySpringCGLIB$$36b2d2dd.update(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPut(FrameworkServlet.java:912)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:663)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.JwtAuthorizationTokenFilter.doFilterInternal(JwtAuthorizationTokenFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@59487e9e }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('4981', '2019-05-03 18:24:00', '删除菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.delete()', '{ id: 36 }', '127.0.0.1', '732', 'admin');
INSERT INTO `log` VALUES ('4982', '2019-05-03 18:24:00', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '20', 'admin');
INSERT INTO `log` VALUES ('4983', '2019-05-03 18:24:23', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@3b4e33c }', '127.0.0.1', '34', 'admin');
INSERT INTO `log` VALUES ('4984', '2019-05-03 18:24:24', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('4985', '2019-05-03 18:24:34', '查询字典', null, 'INFO', 'me.zhengjie.modules.system.rest.DictController.getDicts()', '{ resources: DictDTO(id=null, name=null, remark=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '32', 'admin');
INSERT INTO `log` VALUES ('4986', '2019-05-03 18:24:44', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=job_status) pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('4987', '2019-05-03 18:24:49', '查询字典', null, 'INFO', 'me.zhengjie.modules.system.rest.DictController.getDicts()', '{ resources: DictDTO(id=null, name=null, remark=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('4988', '2019-05-03 18:24:53', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=job_status) pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('4989', '2019-05-03 18:25:10', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('4990', '2019-05-03 18:25:11', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=user_status) pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('4991', '2019-05-03 18:25:20', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=job_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('4992', '2019-05-03 18:25:20', '查询岗位', null, 'INFO', 'me.zhengjie.modules.system.rest.JobController.getJobs()', '{ name: null deptId: null enabled: null pageable: Page request [number: 0, size 10, sort: sort: ASC] }', '127.0.0.1', '69', 'admin');
INSERT INTO `log` VALUES ('4993', '2019-05-03 18:25:22', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=true, pid=null, children=null, createTime=null) }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('4994', '2019-05-03 18:25:27', '查询字典详情', null, 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.getDictDetails()', '{ resources: DictDetailDTO(id=null, label=null, value=null, sort=null, dictName=dept_status) pageable: Page request [number: 0, size 2000, sort: sort: ASC] }', '127.0.0.1', '1', 'admin');
INSERT INTO `log` VALUES ('4995', '2019-05-03 18:25:27', '查询部门', null, 'INFO', 'me.zhengjie.modules.system.rest.DeptController.getDepts()', '{ resources: DeptDTO(id=null, name=null, enabled=null, pid=null, children=null, createTime=null) }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('4996', '2019-05-03 18:25:31', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '1', 'admin');
INSERT INTO `log` VALUES ('4997', '2019-05-03 18:26:26', '查询定时任务', null, 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.getJobs()', '{ resources: QuartzJob(id=null, jobName=null, beanName=null, methodName=null, params=null, cronExpression=null, isPause=false, remark=null, updateTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('4998', '2019-05-03 18:26:39', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '1', 'admin');
INSERT INTO `log` VALUES ('4999', '2019-05-03 18:26:59', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '1', 'admin');
INSERT INTO `log` VALUES ('5000', '2019-05-03 18:27:09', '查询Redis缓存', null, 'INFO', 'me.zhengjie.modules.monitor.rest.RedisController.getRedis()', '{ key: * pageable: Page request [number: 0, size 10, sort: UNSORTED] }', '127.0.0.1', '18', 'admin');
INSERT INTO `log` VALUES ('5001', '2019-05-03 18:27:47', '查询Redis缓存', null, 'INFO', 'me.zhengjie.modules.monitor.rest.RedisController.getRedis()', '{ key: * pageable: Page request [number: 0, size 10, sort: UNSORTED] }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5002', '2019-05-03 18:29:00', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '1', 'admin');
INSERT INTO `log` VALUES ('5003', '2019-05-03 18:29:13', '查询Redis缓存', null, 'INFO', 'me.zhengjie.modules.monitor.rest.RedisController.getRedis()', '{ key: * pageable: Page request [number: 0, size 10, sort: UNSORTED] }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('5004', '2019-05-03 18:29:17', '清空Redis缓存', null, 'INFO', 'me.zhengjie.modules.monitor.rest.RedisController.deleteAll()', '{ }', '127.0.0.1', '86', 'admin');
INSERT INTO `log` VALUES ('5005', '2019-05-03 18:29:17', '查询Redis缓存', null, 'INFO', 'me.zhengjie.modules.monitor.rest.RedisController.getRedis()', '{ key: * pageable: Page request [number: 0, size 10, sort: UNSORTED] }', '127.0.0.1', '0', 'admin');
INSERT INTO `log` VALUES ('5006', '2019-05-03 18:29:19', '清空Redis缓存', null, 'INFO', 'me.zhengjie.modules.monitor.rest.RedisController.deleteAll()', '{ }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5007', '2019-05-03 18:29:19', '查询Redis缓存', null, 'INFO', 'me.zhengjie.modules.monitor.rest.RedisController.getRedis()', '{ key: * pageable: Page request [number: 0, size 10, sort: UNSORTED] }', '127.0.0.1', '0', 'admin');
INSERT INTO `log` VALUES ('5008', '2019-05-03 18:30:01', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('5009', '2019-05-03 18:30:40', '查询Redis缓存', null, 'INFO', 'me.zhengjie.modules.monitor.rest.RedisController.getRedis()', '{ key: * pageable: Page request [number: 0, size 10, sort: UNSORTED] }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('5010', '2019-05-03 18:46:33', '查询Redis缓存', null, 'INFO', 'me.zhengjie.modules.monitor.rest.RedisController.getRedis()', '{ key: * pageable: Page request [number: 0, size 10, sort: UNSORTED] }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('5011', '2019-05-03 19:59:41', '查询Redis缓存', null, 'INFO', 'me.zhengjie.modules.monitor.rest.RedisController.getRedis()', '{ key: * pageable: Page request [number: 0, size 10, sort: UNSORTED] }', '127.0.0.1', '68', 'admin');
INSERT INTO `log` VALUES ('5012', '2019-05-03 20:01:54', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '208', 'admin');
INSERT INTO `log` VALUES ('5013', '2019-05-03 20:13:27', '查询Redis缓存', null, 'INFO', 'me.zhengjie.modules.monitor.rest.RedisController.getRedis()', '{ key: * pageable: Page request [number: 0, size 10, sort: UNSORTED] }', '127.0.0.1', '55', 'admin');
INSERT INTO `log` VALUES ('5014', '2019-05-03 20:14:37', '查询Redis缓存', null, 'INFO', 'me.zhengjie.modules.monitor.rest.RedisController.getRedis()', '{ key: * pageable: Page request [number: 0, size 10, sort: UNSORTED] }', '127.0.0.1', '12', 'admin');

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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '2018-12-18 15:11:29', '\0', '员工管理', null, '0', '1', 'system', 'system');
INSERT INTO `menu` VALUES ('2', '2018-12-18 15:14:44', '\0', '用户管理', 'system/user/index', '1', '2', 'peoples', 'user');
INSERT INTO `menu` VALUES ('3', '2018-12-18 15:16:07', '\0', '角色管理', 'system/role/index', '1', '3', 'role', 'role');
INSERT INTO `menu` VALUES ('4', '2018-12-18 15:16:45', '\0', '权限管理', 'system/permission/index', '1', '4', 'permission', 'permission');
INSERT INTO `menu` VALUES ('5', '2018-12-18 15:17:28', '\0', '菜单管理', 'system/menu/index', '1', '5', 'menu', 'menu');
INSERT INTO `menu` VALUES ('6', '2018-12-18 15:17:48', '\0', '系统监控', null, '0', '10', 'monitor', 'monitor');
INSERT INTO `menu` VALUES ('7', '2018-12-18 15:18:26', '\0', '操作日志', 'monitor/log/index', '6', '11', 'log', 'logs');
INSERT INTO `menu` VALUES ('8', '2018-12-18 15:19:01', '\0', '系统缓存', 'monitor/redis/index', '6', '13', 'redis', 'redis');
INSERT INTO `menu` VALUES ('9', '2018-12-18 15:19:34', '\0', 'SQL监控', 'monitor/sql/index', '6', '14', 'sqlMonitor', 'druid');
INSERT INTO `menu` VALUES ('12', '2018-12-24 20:37:35', '\0', '实时控制台', 'monitor/log/msg', '6', '16', 'codeConsole', 'msg');
INSERT INTO `menu` VALUES ('24', '2019-01-04 16:24:48', '\0', '三级菜单1', 'nested/menu1/menu1-1', '22', '999', 'menu', 'menu1-1');
INSERT INTO `menu` VALUES ('27', '2019-01-07 17:27:32', '\0', '三级菜单2', 'nested/menu1/menu1-2', '22', '999', 'menu', 'menu1-2');
INSERT INTO `menu` VALUES ('32', '2019-01-13 13:49:03', '\0', '异常日志', 'monitor/log/errorLog', '6', '12', 'error', 'errorLog');
INSERT INTO `menu` VALUES ('35', '2019-03-25 09:46:00', '\0', '部门管理', 'system/dept/index', '1', '6', 'dept', 'dept');
INSERT INTO `menu` VALUES ('37', '2019-03-29 13:51:18', '\0', '岗位管理', 'system/job/index', '1', '7', 'Steve-Jobs', 'job');
INSERT INTO `menu` VALUES ('39', '2019-04-10 11:49:04', '\0', '字典管理', 'system/dict/index', '1', '8', 'dictionary', 'dict');

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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

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
INSERT INTO `permission` VALUES ('18', '缓存管理', '2018-12-17 13:53:25', 'REDIS_ALL', '0');
INSERT INTO `permission` VALUES ('19', '新增缓存', '2018-12-17 13:53:44', 'REDIS_CREATE', '18');
INSERT INTO `permission` VALUES ('20', '缓存查询', '2018-12-17 13:54:07', 'REDIS_SELECT', '18');
INSERT INTO `permission` VALUES ('21', '缓存编辑', '2018-12-17 13:54:26', 'REDIS_EDIT', '18');
INSERT INTO `permission` VALUES ('22', '缓存删除', '2018-12-17 13:55:04', 'REDIS_DELETE', '18');
INSERT INTO `permission` VALUES ('23', '图床管理', '2018-12-27 20:31:49', 'PICTURE_ALL', '0');
INSERT INTO `permission` VALUES ('24', '查询图片', '2018-12-27 20:32:04', 'PICTURE_SELECT', '23');
INSERT INTO `permission` VALUES ('25', '上传图片', '2018-12-27 20:32:24', 'PICTURE_UPLOAD', '23');
INSERT INTO `permission` VALUES ('26', '删除图片', '2018-12-27 20:32:45', 'PICTURE_DELETE', '23');
INSERT INTO `permission` VALUES ('29', '菜单管理', '2018-12-28 17:34:31', 'MENU_ALL', '0');
INSERT INTO `permission` VALUES ('30', '菜单查询', '2018-12-28 17:34:41', 'MENU_SELECT', '29');
INSERT INTO `permission` VALUES ('31', '菜单创建', '2018-12-28 17:34:52', 'MENU_CREATE', '29');
INSERT INTO `permission` VALUES ('32', '菜单编辑', '2018-12-28 17:35:20', 'MENU_EDIT', '29');
INSERT INTO `permission` VALUES ('33', '菜单删除', '2018-12-28 17:35:29', 'MENU_DELETE', '29');
INSERT INTO `permission` VALUES ('35', '定时任务管理', '2019-01-08 14:59:57', 'JOB_ALL', '0');
INSERT INTO `permission` VALUES ('36', '任务查询', '2019-01-08 15:00:09', 'JOB_SELECT', '35');
INSERT INTO `permission` VALUES ('37', '任务创建', '2019-01-08 15:00:20', 'JOB_CREATE', '35');
INSERT INTO `permission` VALUES ('38', '任务编辑', '2019-01-08 15:00:33', 'JOB_EDIT', '35');
INSERT INTO `permission` VALUES ('39', '任务删除', '2019-01-08 15:01:13', 'JOB_DELETE', '35');
INSERT INTO `permission` VALUES ('40', '部门管理', '2019-03-29 17:06:55', 'DEPT_ALL', '0');
INSERT INTO `permission` VALUES ('41', '部门查询', '2019-03-29 17:07:09', 'DEPT_SELECT', '40');
INSERT INTO `permission` VALUES ('42', '部门创建', '2019-03-29 17:07:29', 'DEPT_CREATE', '40');
INSERT INTO `permission` VALUES ('43', '部门编辑', '2019-03-29 17:07:52', 'DEPT_EDIT', '40');
INSERT INTO `permission` VALUES ('44', '部门删除', '2019-03-29 17:08:14', 'DEPT_DELETE', '40');
INSERT INTO `permission` VALUES ('45', '岗位管理', '2019-03-29 17:08:52', 'USERJOB_ALL', '0');
INSERT INTO `permission` VALUES ('46', '岗位查询', '2019-03-29 17:10:27', 'USERJOB_SELECT', '45');
INSERT INTO `permission` VALUES ('47', '岗位创建', '2019-03-29 17:10:55', 'USERJOB_CREATE', '45');
INSERT INTO `permission` VALUES ('48', '岗位编辑', '2019-03-29 17:11:08', 'USERJOB_EDIT', '45');
INSERT INTO `permission` VALUES ('49', '岗位删除', '2019-03-29 17:11:19', 'USERJOB_DELETE', '45');
INSERT INTO `permission` VALUES ('50', '字典管理', '2019-04-10 16:24:51', 'DICT_ALL', '0');
INSERT INTO `permission` VALUES ('51', '字典查询', '2019-04-10 16:25:16', 'DICT_SELECT', '50');
INSERT INTO `permission` VALUES ('52', '字典创建', '2019-04-10 16:25:29', 'DICT_CREATE', '50');
INSERT INTO `permission` VALUES ('53', '字典编辑', '2019-04-10 16:27:19', 'DICT_EDIT', '50');
INSERT INTO `permission` VALUES ('54', '字典删除', '2019-04-10 16:27:30', 'DICT_DELETE', '50');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quartz_log
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '2018-11-23 11:04:37', '管理员', '系统所有权', '全部');
INSERT INTO `role` VALUES ('2', '2018-11-23 13:09:06', '普通用户', '用于测试菜单与权限', '自定义');

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
  CONSTRAINT `FKcngg2qadojhi3a651a5adkvbq` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKq1knxf8ykt26we8k331naabjx` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`)
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
INSERT INTO `roles_menus` VALUES ('24', '1');
INSERT INTO `roles_menus` VALUES ('27', '1');
INSERT INTO `roles_menus` VALUES ('32', '1');
INSERT INTO `roles_menus` VALUES ('35', '1');
INSERT INTO `roles_menus` VALUES ('37', '1');
INSERT INTO `roles_menus` VALUES ('39', '1');
INSERT INTO `roles_menus` VALUES ('1', '2');
INSERT INTO `roles_menus` VALUES ('2', '2');
INSERT INTO `roles_menus` VALUES ('3', '2');
INSERT INTO `roles_menus` VALUES ('4', '2');
INSERT INTO `roles_menus` VALUES ('5', '2');
INSERT INTO `roles_menus` VALUES ('6', '2');
INSERT INTO `roles_menus` VALUES ('12', '2');
INSERT INTO `roles_menus` VALUES ('24', '2');
INSERT INTO `roles_menus` VALUES ('27', '2');
INSERT INTO `roles_menus` VALUES ('35', '2');
INSERT INTO `roles_menus` VALUES ('37', '2');

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
INSERT INTO `roles_permissions` VALUES ('2', '4');
INSERT INTO `roles_permissions` VALUES ('2', '8');
INSERT INTO `roles_permissions` VALUES ('2', '14');
INSERT INTO `roles_permissions` VALUES ('2', '23');
INSERT INTO `roles_permissions` VALUES ('2', '24');
INSERT INTO `roles_permissions` VALUES ('2', '25');
INSERT INTO `roles_permissions` VALUES ('2', '26');
INSERT INTO `roles_permissions` VALUES ('2', '30');
INSERT INTO `roles_permissions` VALUES ('2', '41');
INSERT INTO `roles_permissions` VALUES ('2', '46');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'https://i.loli.net/2019/04/04/5ca5b971e1548.jpeg', '2018-08-23 09:11:56', 'admin@eladmin.net', '1', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '2019-04-04 16:00:46', '2', '18888888888', '11');
INSERT INTO `user` VALUES ('3', 'https://aurora-1255840532.cos.ap-chengdu.myqcloud.com/8918a306ea314404835a9196585c4b75.jpeg', '2018-12-27 20:05:26', 'test@eladmin.net', '1', 'e10adc3949ba59abbe56e057f20f883e', 'test', '2019-04-01 09:15:24', '2', '17777777777', '12');
INSERT INTO `user` VALUES ('5', 'https://aurora-1255840532.cos.ap-chengdu.myqcloud.com/8918a306ea314404835a9196585c4b75.jpeg', '2019-04-02 10:07:12', 'hr@eladmin.net', '1', 'e10adc3949ba59abbe56e057f20f883e', 'hr', null, '11', '15555555555', '8');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bio` varchar(255) DEFAULT NULL,
  `followers` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_63cf888pmqtt5tipcne79xsbm` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------

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
INSERT INTO `users_roles` VALUES ('5', '2');

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
INSERT INTO `visits` VALUES ('20', '2019-05-03 17:59:32', '2019-05-03', '1', '3', 'Fri');
INSERT INTO `visits` VALUES ('21', '2019-05-15 23:33:07', '2019-05-15', '1', '1', 'Wed');
INSERT INTO `visits` VALUES ('22', '2019-05-18 18:15:22', '2019-05-18', '1', '1', 'Sat');
