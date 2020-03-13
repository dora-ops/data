/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : imooc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 18:59:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for alipay_config
-- ----------------------------
DROP TABLE IF EXISTS `alipay_config`;
CREATE TABLE `alipay_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) DEFAULT NULL,
  `charset` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `gateway_url` varchar(255) DEFAULT NULL,
  `notify_url` varchar(255) DEFAULT NULL,
  `private_key` text,
  `public_key` text,
  `return_url` varchar(255) DEFAULT NULL,
  `sign_type` varchar(255) DEFAULT NULL,
  `sys_service_provider_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alipay_config
-- ----------------------------

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `ans_real` varchar(255) NOT NULL COMMENT '用户答案',
  `cus_id` int(11) NOT NULL COMMENT '用户id',
  `exe_id` int(11) NOT NULL COMMENT '习题id',
  `gra_id` int(11) NOT NULL COMMENT '成绩id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('2', 'b', '22', '1', '4');

-- ----------------------------
-- Table structure for chapterlist
-- ----------------------------
DROP TABLE IF EXISTS `chapterlist`;
CREATE TABLE `chapterlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `classlist` varchar(255) DEFAULT NULL COMMENT '特定格式目录',
  `cla_id` varchar(255) NOT NULL COMMENT '详细信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='章节表';

-- ----------------------------
-- Records of chapterlist
-- ----------------------------
INSERT INTO `chapterlist` VALUES ('1', '第1章 生在决立', '[\"1-1 比极不行相应\", \"1-2 张次历结又金来精\", \"1-3 效布造点江火书制何单\", \"1-4 听花照\", \"1-5 第世界发克\", \"1-6 还照求思不\"]', '1');
INSERT INTO `chapterlist` VALUES ('2', '第2章 它前该分非市音则', '[\"2-1 只般总求第快\", \"2-2 温断清作\", \"2-3 强此千务书是理\", \"2-4 带为高程子\", \"2-5 整斯美近期备\", \"2-6 电生了县\", \"2-7 原是身应学只果接\", \"2-8 向毛做般\"]', '1');

-- ----------------------------
-- Table structure for classdata
-- ----------------------------
DROP TABLE IF EXISTS `classdata`;
CREATE TABLE `classdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) DEFAULT NULL COMMENT '详情展示图片',
  `title` varchar(255) DEFAULT NULL COMMENT '详情标题',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `money` int(11) DEFAULT NULL COMMENT '价格',
  `intro` int(11) DEFAULT NULL COMMENT '参数id',
  `teacher` int(11) DEFAULT NULL COMMENT '老师id',
  `rate` int(11) DEFAULT NULL COMMENT '评价id',
  `chapterlist` varchar(11) DEFAULT NULL COMMENT '章节id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='课程详情表';

-- ----------------------------
-- Records of classdata
-- ----------------------------
INSERT INTO `classdata` VALUES ('1', '1', '了何加立务本高本次火育算白步县需', '没命新干改子就史此京京线斗听马见自容种各战各音些验文面文图事', '281', '1', '1', '1', '\"[1,2]\"');

-- ----------------------------
-- Table structure for classlist
-- ----------------------------
DROP TABLE IF EXISTS `classlist`;
CREATE TABLE `classlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `step` varchar(255) DEFAULT NULL,
  `classnum` varchar(255) DEFAULT NULL,
  `people` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classlist
-- ----------------------------
INSERT INTO `classlist` VALUES ('1', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', '记般他点压革质状用查', '5', '14', '2944', '297');

-- ----------------------------
-- Table structure for commentlist
-- ----------------------------
DROP TABLE IF EXISTS `commentlist`;
CREATE TABLE `commentlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `rate` double(255,0) DEFAULT NULL COMMENT '评分',
  `comment` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `rate_id` int(11) DEFAULT NULL COMMENT '评分id',
  `cus_id` int(11) DEFAULT NULL COMMENT '用户id',
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `cd_id` int(11) DEFAULT NULL COMMENT '详情id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of commentlist
-- ----------------------------
INSERT INTO `commentlist` VALUES ('1', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', '余丽', '8', '利况度际放其知且党总山将管满体导目眼学间格提速象民作出必八再然图她千使么权育明最明交近再以其容比等区果果第什研给段难们价', '1', null, null, '1');
INSERT INTO `commentlist` VALUES ('2', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', '谢艳', '6', '应解群社党样可济元织值角取却发思计设着亲团务并论次根要该等历式况劳速体据决知清设众干义千整但快进确习革子国社铁无术装结', '1', null, null, '1');
INSERT INTO `commentlist` VALUES ('19', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', 'test', '12', '123', '1', '22', '8', '1');
INSERT INTO `commentlist` VALUES ('20', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', 'test', '47', '萨顶顶群翁', null, '22', '9', '1');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `type_id` varchar(255) DEFAULT NULL,
  `new_list_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------

-- ----------------------------
-- Table structure for courselist
-- ----------------------------
DROP TABLE IF EXISTS `courselist`;
CREATE TABLE `courselist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `level` varchar(255) DEFAULT NULL COMMENT '难度',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `people` int(11) DEFAULT NULL COMMENT '人数',
  `cc_id` int(11) NOT NULL COMMENT '课程纲目id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='课程列表';

-- ----------------------------
-- Records of courselist
-- ----------------------------
INSERT INTO `courselist` VALUES ('1', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', 'Lzgolz Pgel Syrj Ljrcv Sfhikxuv Slc Vdfeksoh Evhbx Vfkvcw', '中级', '免费课程', '3623', '1');
INSERT INTO `courselist` VALUES ('2', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', 'Iserqjef Mmxx Yjisjuz Tksvfmo Nqafmmybv Ilxglcmq Rgskbrgjdq Imhj Gljxbct', '中级', '免费课程', '2623', '2');
INSERT INTO `courselist` VALUES ('19', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', 'Iserqjef Mmxx Yjisjuz Tksvfmo Nqafmmybv Ilxglcmq Rgskbrgjdq Imhj Gljxbct', '中级', '免费课程', '2623', '2');
INSERT INTO `courselist` VALUES ('20', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', 'Iserqjef Mmxx Yjisjuz Tksvfmo Nqafmmybv Ilxglcmq Rgskbrgjdq Imhj Gljxbct', '中级', '免费课程1', '2623', '2');
INSERT INTO `courselist` VALUES ('21', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', 'Iserqjef Mmxx Yjisjuz Tksvfmo Nqafmmybv Ilxglcmq Rgskbrgjdq Imhj Gljxbct', '中级', '免费课程2', '2623', '2');
INSERT INTO `courselist` VALUES ('22', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', 'Iserqjef Mmxx Yjisjuz Tksvfmo Nqafmmybv Ilxglcmq Rgskbrgjdq Imhj Gljxbct', '中级', '免费课程3', '2623', '2');
INSERT INTO `courselist` VALUES ('23', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', 'Iserqjef Mmxx Yjisjuz Tksvfmo Nqafmmybv Ilxglcmq Rgskbrgjdq Imhj Gljxbct', '中级', '免费课程3', '2623', '3');
INSERT INTO `courselist` VALUES ('24', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', 'Iserqjef Mmxx Yjisjuz Tksvfmo Nqafmmybv Ilxglcmq Rgskbrgjdq Imhj Gljxbct', '中级', '免费课程2', '2623', '3');
INSERT INTO `courselist` VALUES ('25', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', 'Iserqjef Mmxx Yjisjuz Tksvfmo Nqafmmybv Ilxglcmq Rgskbrgjdq Imhj Gljxbct', '中级', '免费课程1', '2623', '3');

-- ----------------------------
-- Table structure for course_class
-- ----------------------------
DROP TABLE IF EXISTS `course_class`;
CREATE TABLE `course_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '类别名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='课程纲目';

-- ----------------------------
-- Records of course_class
-- ----------------------------
INSERT INTO `course_class` VALUES ('1', '前沿技术');
INSERT INTO `course_class` VALUES ('2', '前端开发');
INSERT INTO `course_class` VALUES ('3', '计算机等级考试');

-- ----------------------------
-- Table structure for course_detail
-- ----------------------------
DROP TABLE IF EXISTS `course_detail`;
CREATE TABLE `course_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `know` varchar(255) DEFAULT NULL,
  `intro_id` int(11) DEFAULT NULL,
  `cl_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_detail
-- ----------------------------
INSERT INTO `course_detail` VALUES ('1', '进化教书是南光导细走东说建选自出', '1', '技保史结经还力回手率目层化根点西史律系引教格米如听育系入设增产什离事育农查须得于有程等风见验省此总酸入亲面亲八除前运住效眼感至取劳志京型形当压头题场商革按收给支专能与济儿利军叫动改者此安第全这情步海社认专话例些题阶根文意起了已样例新走论样名各进商料规这信里地或质变志包因片果太影京员眼制声目系这风被论现应布习律指民满克该理制圆易而片着际体量标平重经果把文易装集间华西百重行', '1', '1');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '昵称',
  `tel` varchar(11) DEFAULT NULL COMMENT '手机号',
  `ifBuy` varchar(255) DEFAULT NULL COMMENT '是否已购买',
  `courses` varchar(255) DEFAULT NULL COMMENT '购买课程',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `classes` varchar(255) DEFAULT NULL COMMENT '班级',
  `if_buy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('22', 'test', '13426451384', null, null, null, null, '123123', null, null, null);

-- ----------------------------
-- Table structure for email_config
-- ----------------------------
DROP TABLE IF EXISTS `email_config`;
CREATE TABLE `email_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_user` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of email_config
-- ----------------------------

-- ----------------------------
-- Table structure for errorlist
-- ----------------------------
DROP TABLE IF EXISTS `errorlist`;
CREATE TABLE `errorlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '错误记录',
  `content` varchar(255) DEFAULT NULL COMMENT '错误记录内容',
  `cus_id` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of errorlist
-- ----------------------------
INSERT INTO `errorlist` VALUES ('2', '123', '123124213', '22');

-- ----------------------------
-- Table structure for exercise
-- ----------------------------
DROP TABLE IF EXISTS `exercise`;
CREATE TABLE `exercise` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL COMMENT '习题题目',
  `ans_a` varchar(255) NOT NULL COMMENT '答案a',
  `ans_b` varchar(255) NOT NULL COMMENT '答案b',
  `ans_c` varchar(255) NOT NULL COMMENT '答案c',
  `ans_d` varchar(255) NOT NULL COMMENT '答案d',
  `ans` varchar(255) NOT NULL COMMENT '正确答案',
  `cha_id` varchar(255) NOT NULL COMMENT '所属章节',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='习题表';

-- ----------------------------
-- Records of exercise
-- ----------------------------
INSERT INTO `exercise` VALUES ('1', '题目一', '选择一描述', '选择二描述', '选择三描述', '选择四描述', 'a', '1');
INSERT INTO `exercise` VALUES ('2', '题目二', '啥都好看', '123', '阿萨德', '87bas', 'a', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of gen_config
-- ----------------------------
INSERT INTO `gen_config` VALUES ('1', 'jie', '', 'eladmin-system', 'me.zhengjie.modules.errorlist', 'E:\\node相关\\自动化办公\\eladmin-qd\\src\\views\\study\\errorlist', 'E:\\node相关\\自动化办公\\eladmin-qd\\src\\api');

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `grade` varchar(255) NOT NULL COMMENT '用户回答情况',
  `cus_id` int(11) NOT NULL COMMENT '用户id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户成绩表';

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('4', '0/1', '22', '2019-04-28 21:07:28');

-- ----------------------------
-- Table structure for intro
-- ----------------------------
DROP TABLE IF EXISTS `intro`;
CREATE TABLE `intro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(255) DEFAULT NULL COMMENT '难度级别',
  `disccount` int(11) DEFAULT NULL COMMENT '价格',
  `rate` double(11,0) DEFAULT NULL COMMENT '评分',
  `people` int(11) DEFAULT NULL COMMENT '人数',
  `cla_id` varchar(255) NOT NULL COMMENT '详情id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intro
-- ----------------------------
INSERT INTO `intro` VALUES ('1', '35小时', '131', '8', '2840', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=721 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('417', '2019-04-24 19:26:40', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '1309', 'admin');
INSERT INTO `log` VALUES ('418', '2019-04-24 19:35:03', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '207', 'admin');
INSERT INTO `log` VALUES ('419', '2019-04-24 19:35:12', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('420', '2019-04-24 19:35:24', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('421', '2019-04-24 19:35:56', '删除菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.delete()', '{ id: 13 }', '127.0.0.1', '437', 'admin');
INSERT INTO `log` VALUES ('422', '2019-04-24 19:35:56', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('423', '2019-04-24 19:36:04', '删除菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.delete()', '{ id: 10 }', '127.0.0.1', '28', 'admin');
INSERT INTO `log` VALUES ('424', '2019-04-24 19:36:05', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('425', '2019-04-24 19:36:13', '删除菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.delete()', '{ id: 6 }', '127.0.0.1', '98', 'admin');
INSERT INTO `log` VALUES ('426', '2019-04-24 19:36:14', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('427', '2019-04-24 19:36:43', '删除菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.delete()', '{ id: 28 }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('428', '2019-04-24 19:36:43', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('429', '2019-04-24 19:37:03', '修改菜单', 'me.zhengjie.exception.BadRequestException: Menu 已存在 {name=用户管理}\r\n	at me.zhengjie.aspect.LogAspect.logAround(LogAspect.java:51)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.system.rest.MenuController$$EnhancerBySpringCGLIB$$73933f32.update(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPut(FrameworkServlet.java:912)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:663)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.JwtAuthorizationTokenFilter.doFilterInternal(JwtAuthorizationTokenFilter.java:70)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@7240ecda }', '127.0.0.1', '46', 'admin');
INSERT INTO `log` VALUES ('430', '2019-04-24 19:37:51', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@313df47f }', '127.0.0.1', '46', 'admin');
INSERT INTO `log` VALUES ('431', '2019-04-24 19:37:51', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('432', '2019-04-24 19:37:57', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('433', '2019-04-24 20:03:50', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '49', 'admin');
INSERT INTO `log` VALUES ('434', '2019-04-24 20:06:05', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@7021d03d }', '127.0.0.1', '35', 'admin');
INSERT INTO `log` VALUES ('435', '2019-04-24 20:06:05', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('436', '2019-04-24 20:08:17', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@75206af2 }', '127.0.0.1', '61', 'admin');
INSERT INTO `log` VALUES ('437', '2019-04-24 20:08:17', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('438', '2019-04-24 20:10:54', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@5edf9b9 }', '127.0.0.1', '56', 'admin');
INSERT INTO `log` VALUES ('439', '2019-04-24 20:10:54', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('440', '2019-04-24 20:11:55', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@3ef16050 }', '127.0.0.1', '27', 'admin');
INSERT INTO `log` VALUES ('441', '2019-04-24 20:11:55', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('442', '2019-04-24 20:12:59', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@29cf7eb6 }', '127.0.0.1', '97', 'admin');
INSERT INTO `log` VALUES ('443', '2019-04-24 20:12:59', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('444', '2019-04-24 20:14:58', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@2eea9f0f }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('445', '2019-04-24 20:14:58', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('446', '2019-04-24 20:15:22', '查询权限', null, 'INFO', 'me.zhengjie.modules.system.rest.PermissionController.getPermissions()', '{ name: null }', '127.0.0.1', '18', 'admin');
INSERT INTO `log` VALUES ('447', '2019-04-24 20:15:23', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '127', 'admin');
INSERT INTO `log` VALUES ('448', '2019-04-24 20:15:33', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '96', 'admin');
INSERT INTO `log` VALUES ('449', '2019-04-24 20:15:39', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '32', 'admin');
INSERT INTO `log` VALUES ('450', '2019-04-24 20:15:55', '查询Classdata', null, 'INFO', 'me.zhengjie.modules.classdata.rest.ClassdataController.getClassdatas()', '{ resources: ClassdataDTO(id=null, icon=null, title=null, content=null, money=null, intro=null, teacher=null, rate=null, chapterlist=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('451', '2019-04-24 20:15:58', '查询Classdata', null, 'INFO', 'me.zhengjie.modules.classdata.rest.ClassdataController.getClassdatas()', '{ resources: ClassdataDTO(id=null, icon=null, title=null, content=null, money=null, intro=null, teacher=null, rate=null, chapterlist=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('452', '2019-04-24 20:16:04', '查询Classdata', null, 'INFO', 'me.zhengjie.modules.classdata.rest.ClassdataController.getClassdatas()', '{ resources: ClassdataDTO(id=null, icon=null, title=null, content=null, money=null, intro=null, teacher=null, rate=null, chapterlist=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('453', '2019-04-24 20:16:19', '查询Classdata', null, 'INFO', 'me.zhengjie.modules.classdata.rest.ClassdataController.getClassdatas()', '{ resources: ClassdataDTO(id=null, icon=null, title=null, content=null, money=null, intro=null, teacher=null, rate=null, chapterlist=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('454', '2019-04-24 20:16:21', '查询Classdata', null, 'INFO', 'me.zhengjie.modules.classdata.rest.ClassdataController.getClassdatas()', '{ resources: ClassdataDTO(id=null, icon=null, title=null, content=null, money=null, intro=null, teacher=null, rate=null, chapterlist=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('455', '2019-04-24 20:16:45', '查询Classdata', null, 'INFO', 'me.zhengjie.modules.classdata.rest.ClassdataController.getClassdatas()', '{ resources: ClassdataDTO(id=null, icon=null, title=null, content=null, money=null, intro=null, teacher=null, rate=null, chapterlist=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '2', 'admin');
INSERT INTO `log` VALUES ('456', '2019-04-24 20:16:53', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '21', 'admin');
INSERT INTO `log` VALUES ('457', '2019-04-24 20:16:59', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('458', '2019-04-24 20:18:53', '查询Classdata', null, 'INFO', 'me.zhengjie.modules.classdata.rest.ClassdataController.getClassdatas()', '{ resources: ClassdataDTO(id=null, icon=null, title=null, content=null, money=null, intro=null, teacher=null, rate=null, chapterlist=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('459', '2019-04-24 20:18:58', '查询Classdata', null, 'INFO', 'me.zhengjie.modules.classdata.rest.ClassdataController.getClassdatas()', '{ resources: ClassdataDTO(id=null, icon=null, title=null, content=null, money=null, intro=null, teacher=null, rate=null, chapterlist=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('460', '2019-04-24 20:19:15', '查询Classdata', null, 'INFO', 'me.zhengjie.modules.classdata.rest.ClassdataController.getClassdatas()', '{ resources: ClassdataDTO(id=null, icon=null, title=null, content=null, money=null, intro=null, teacher=null, rate=null, chapterlist=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('461', '2019-04-24 20:19:42', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('462', '2019-04-24 20:20:42', '查询Classdata', null, 'INFO', 'me.zhengjie.modules.classdata.rest.ClassdataController.getClassdatas()', '{ resources: ClassdataDTO(id=null, icon=null, title=null, content=null, money=null, intro=null, teacher=null, rate=null, chapterlist=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '2', 'admin');
INSERT INTO `log` VALUES ('463', '2019-04-24 20:20:50', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('464', '2019-04-24 20:21:56', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@5866ffde }', '127.0.0.1', '18', 'admin');
INSERT INTO `log` VALUES ('465', '2019-04-24 20:21:56', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('466', '2019-04-24 20:22:19', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@1398fb9 }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('467', '2019-04-24 20:22:19', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('468', '2019-04-24 20:22:34', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('469', '2019-04-24 20:22:40', '查询Intro', null, 'INFO', 'me.zhengjie.modules.intro.rest.IntroController.getIntros()', '{ resources: IntroDTO(id=null, level=null, disccount=null, rate=null, people=null, claId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '29', 'admin');
INSERT INTO `log` VALUES ('470', '2019-04-24 20:22:44', '查询Rate', null, 'INFO', 'me.zhengjie.modules.rate.rest.RateController.getRates()', '{ resources: RateDTO(id=null, rate=null, commentlist=null, claId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('471', '2019-04-24 20:30:09', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('472', '2019-04-24 20:30:50', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@25b327b5 }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('473', '2019-04-24 20:30:50', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('474', '2019-04-24 20:30:58', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('475', '2019-04-24 20:31:05', '查询Classdata', null, 'INFO', 'me.zhengjie.modules.classdata.rest.ClassdataController.getClassdatas()', '{ resources: ClassdataDTO(id=null, icon=null, title=null, content=null, money=null, intro=null, teacher=null, rate=null, chapterlist=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('476', '2019-04-24 20:32:02', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('477', '2019-04-24 20:32:39', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@aa6626f }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('478', '2019-04-24 20:32:39', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('479', '2019-04-24 20:33:04', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@6a62e874 }', '127.0.0.1', '33', 'admin');
INSERT INTO `log` VALUES ('480', '2019-04-24 20:33:04', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('481', '2019-04-24 20:33:52', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@69e539ae }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('482', '2019-04-24 20:33:52', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('483', '2019-04-24 20:34:00', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('484', '2019-04-24 20:34:27', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('485', '2019-04-24 20:34:50', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@358c05ee }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('486', '2019-04-24 20:34:50', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('487', '2019-04-24 20:34:55', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('488', '2019-04-24 20:35:07', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('489', '2019-04-24 20:38:44', '查询Reclist', null, 'INFO', 'me.zhengjie.modules.reclist.rest.ReclistController.getReclists()', '{ resources: ReclistDTO(id=null, title=null, level=null, icon=null, money=null, people=null, istop=null, claId=null, intro=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('490', '2019-04-24 20:39:23', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('491', '2019-04-24 20:40:27', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('492', '2019-04-24 20:40:44', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('493', '2019-04-24 20:41:30', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('494', '2019-04-24 20:41:59', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('495', '2019-04-24 20:42:34', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@6792345d }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('496', '2019-04-24 20:42:34', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('497', '2019-04-24 20:47:06', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@5f2b871f }', '127.0.0.1', '52', 'admin');
INSERT INTO `log` VALUES ('498', '2019-04-24 20:47:06', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('499', '2019-04-24 20:47:24', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@1464b26b }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('500', '2019-04-24 20:47:24', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('501', '2019-04-24 20:47:56', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@292b83b }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('502', '2019-04-24 20:47:56', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('503', '2019-04-24 20:48:01', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@65b048aa }', '127.0.0.1', '49', 'admin');
INSERT INTO `log` VALUES ('504', '2019-04-24 20:48:02', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('505', '2019-04-24 20:48:16', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@4a9f46ea }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('506', '2019-04-24 20:48:16', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('507', '2019-04-24 20:52:12', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('508', '2019-04-24 20:52:31', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@12caacc3 }', '127.0.0.1', '87', 'admin');
INSERT INTO `log` VALUES ('509', '2019-04-24 20:52:31', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('510', '2019-04-24 20:52:39', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@3c8a3839 }', '127.0.0.1', '21', 'admin');
INSERT INTO `log` VALUES ('511', '2019-04-24 20:52:39', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('512', '2019-04-24 20:52:46', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('513', '2019-04-24 20:54:03', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('514', '2019-04-24 20:56:02', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('515', '2019-04-24 20:56:21', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@1825590a }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('516', '2019-04-24 20:56:21', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('517', '2019-04-24 20:56:26', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@57c7a76d }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('518', '2019-04-24 20:56:26', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('519', '2019-04-24 20:57:03', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@4b6239a0 }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('520', '2019-04-24 20:57:03', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '66', 'admin');
INSERT INTO `log` VALUES ('521', '2019-04-24 20:57:11', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('522', '2019-04-24 20:57:17', '查询Rate', null, 'INFO', 'me.zhengjie.modules.rate.rest.RateController.getRates()', '{ resources: RateDTO(id=null, rate=null, commentlist=null, claId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('523', '2019-04-24 20:57:23', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('524', '2019-04-24 20:58:42', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('525', '2019-04-24 20:59:40', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@4518c783 }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('526', '2019-04-24 20:59:40', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('527', '2019-04-24 20:59:58', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@1a482f5c }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('528', '2019-04-24 20:59:58', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('529', '2019-04-24 21:03:55', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@ae73f1a }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('530', '2019-04-24 21:03:55', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('531', '2019-04-24 21:04:44', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@b5fd551 }', '127.0.0.1', '18', 'admin');
INSERT INTO `log` VALUES ('532', '2019-04-24 21:04:44', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('533', '2019-04-24 21:05:09', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@34d62622 }', '127.0.0.1', '28', 'admin');
INSERT INTO `log` VALUES ('534', '2019-04-24 21:05:09', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('535', '2019-04-24 21:08:04', '查询Intro', null, 'INFO', 'me.zhengjie.modules.intro.rest.IntroController.getIntros()', '{ resources: IntroDTO(id=null, level=null, disccount=null, rate=null, people=null, claId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('536', '2019-04-24 21:11:44', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '64', 'admin');
INSERT INTO `log` VALUES ('537', '2019-04-24 21:11:57', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '89', 'admin');
INSERT INTO `log` VALUES ('538', '2019-04-24 21:13:32', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('539', '2019-04-24 21:14:05', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@47473aa7 }', '127.0.0.1', '48', 'admin');
INSERT INTO `log` VALUES ('540', '2019-04-24 21:14:05', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('541', '2019-04-24 21:14:26', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@2bb9b9f8 }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('542', '2019-04-24 21:14:26', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '49', 'admin');
INSERT INTO `log` VALUES ('543', '2019-04-24 21:16:03', '查询Reclist', null, 'INFO', 'me.zhengjie.modules.reclist.rest.ReclistController.getReclists()', '{ resources: ReclistDTO(id=null, title=null, level=null, icon=null, money=null, people=null, istop=null, claId=null, intro=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('544', '2019-04-24 21:16:27', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('545', '2019-04-24 21:16:38', '删除菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.delete()', '{ id: 45 }', '127.0.0.1', '1051', 'admin');
INSERT INTO `log` VALUES ('546', '2019-04-24 21:16:38', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('547', '2019-04-24 21:16:42', '删除菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.delete()', '{ id: 44 }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('548', '2019-04-24 21:16:42', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('549', '2019-04-24 21:18:16', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '47', 'admin');
INSERT INTO `log` VALUES ('550', '2019-04-24 21:18:23', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '74', 'admin');
INSERT INTO `log` VALUES ('551', '2019-04-24 21:18:27', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '231', 'admin');
INSERT INTO `log` VALUES ('552', '2019-04-24 21:18:34', '查询Classdata', null, 'INFO', 'me.zhengjie.modules.classdata.rest.ClassdataController.getClassdatas()', '{ resources: ClassdataDTO(id=null, icon=null, title=null, content=null, money=null, intro=null, teacher=null, rate=null, chapterlist=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('553', '2019-04-24 21:18:46', '查询Reclist', null, 'INFO', 'me.zhengjie.modules.reclist.rest.ReclistController.getReclists()', '{ resources: ReclistDTO(id=null, title=null, level=null, icon=null, money=null, people=null, istop=null, claId=null, intro=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '2', 'admin');
INSERT INTO `log` VALUES ('554', '2019-04-24 21:20:21', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '30', 'admin');
INSERT INTO `log` VALUES ('555', '2019-04-24 21:20:32', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '48', 'admin');
INSERT INTO `log` VALUES ('556', '2019-04-24 21:21:09', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@df8fcf7 }', '127.0.0.1', '18', 'admin');
INSERT INTO `log` VALUES ('557', '2019-04-24 21:21:09', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '144', 'admin');
INSERT INTO `log` VALUES ('558', '2019-04-24 21:21:39', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '960', 'admin');
INSERT INTO `log` VALUES ('559', '2019-04-24 21:21:40', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '41', 'admin');
INSERT INTO `log` VALUES ('560', '2019-04-24 21:22:16', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@19d5550b }', '127.0.0.1', '114', 'admin');
INSERT INTO `log` VALUES ('561', '2019-04-24 21:22:17', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '157', 'admin');
INSERT INTO `log` VALUES ('562', '2019-04-24 21:23:55', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@7d277f83 }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('563', '2019-04-24 21:23:55', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('564', '2019-04-24 21:24:01', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '21', 'admin');
INSERT INTO `log` VALUES ('565', '2019-04-24 21:24:13', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '25', 'admin');
INSERT INTO `log` VALUES ('566', '2019-04-24 21:24:18', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '240', 'admin');
INSERT INTO `log` VALUES ('567', '2019-04-24 21:28:01', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '312', 'admin');
INSERT INTO `log` VALUES ('568', '2019-04-24 21:28:02', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('569', '2019-04-24 21:29:41', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('570', '2019-04-24 21:30:25', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('571', '2019-04-24 21:30:33', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@3c0b2fc9 }', '127.0.0.1', '27', 'admin');
INSERT INTO `log` VALUES ('572', '2019-04-24 21:30:33', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('573', '2019-04-24 21:31:25', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@34172a2e }', '127.0.0.1', '32', 'admin');
INSERT INTO `log` VALUES ('574', '2019-04-24 21:31:25', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('575', '2019-04-24 21:32:14', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@665f22e }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('576', '2019-04-24 21:32:14', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('577', '2019-04-24 21:33:21', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@455fa0fe }', '127.0.0.1', '50', 'admin');
INSERT INTO `log` VALUES ('578', '2019-04-24 21:33:21', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('579', '2019-04-24 21:33:32', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@57deb742 }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('580', '2019-04-24 21:33:32', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('581', '2019-04-24 21:35:31', '查询Reclist', null, 'INFO', 'me.zhengjie.modules.reclist.rest.ReclistController.getReclists()', '{ resources: ReclistDTO(id=null, title=null, level=null, icon=null, money=null, people=null, istop=null, claId=null, intro=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '2', 'admin');
INSERT INTO `log` VALUES ('582', '2019-04-24 21:51:47', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('583', '2019-04-24 21:56:06', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@405f0e41 }', '127.0.0.1', '101', 'admin');
INSERT INTO `log` VALUES ('584', '2019-04-24 21:56:07', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('585', '2019-04-24 21:56:27', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@79ed4cfe }', '127.0.0.1', '49', 'admin');
INSERT INTO `log` VALUES ('586', '2019-04-24 21:56:28', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '107', 'admin');
INSERT INTO `log` VALUES ('587', '2019-04-24 22:17:04', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@681255cb }', '127.0.0.1', '59', 'admin');
INSERT INTO `log` VALUES ('588', '2019-04-24 22:17:04', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('589', '2019-04-24 22:18:44', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@43a29da5 }', '127.0.0.1', '102', 'admin');
INSERT INTO `log` VALUES ('590', '2019-04-24 22:18:44', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('591', '2019-04-24 22:19:57', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('592', '2019-04-24 22:27:44', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '3', 'admin');
INSERT INTO `log` VALUES ('593', '2019-04-24 22:34:40', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('594', '2019-04-24 22:40:53', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '33', 'admin');
INSERT INTO `log` VALUES ('595', '2019-04-24 22:41:15', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '107', 'admin');
INSERT INTO `log` VALUES ('596', '2019-04-24 22:41:20', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '596', 'admin');
INSERT INTO `log` VALUES ('597', '2019-04-24 22:41:54', '查询Reclist', null, 'INFO', 'me.zhengjie.modules.reclist.rest.ReclistController.getReclists()', '{ resources: ReclistDTO(id=null, title=null, level=null, icon=null, money=null, people=null, istop=null, claId=null, intro=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('598', '2019-04-24 22:42:55', '新增Reclist', null, 'INFO', 'me.zhengjie.modules.reclist.rest.ReclistController.create()', '{ resources: Reclist(id=2, title=实战课程测试, level=初级, icon=8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg, money=16, people=12, istop=0, claId=1, intro=1) }', '127.0.0.1', '1197', 'admin');
INSERT INTO `log` VALUES ('599', '2019-04-24 22:42:55', '查询Reclist', null, 'INFO', 'me.zhengjie.modules.reclist.rest.ReclistController.getReclists()', '{ resources: ReclistDTO(id=null, title=null, level=null, icon=null, money=null, people=null, istop=null, claId=null, intro=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '48', 'admin');
INSERT INTO `log` VALUES ('600', '2019-04-24 22:47:16', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '278', 'admin');
INSERT INTO `log` VALUES ('601', '2019-04-24 22:49:12', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@900b8cc }', '127.0.0.1', '85', 'admin');
INSERT INTO `log` VALUES ('602', '2019-04-24 22:49:13', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '532', 'admin');
INSERT INTO `log` VALUES ('603', '2019-04-24 22:49:24', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '374', 'admin');
INSERT INTO `log` VALUES ('604', '2019-04-24 22:50:38', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '465', 'admin');
INSERT INTO `log` VALUES ('605', '2019-04-24 22:52:02', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@5b69164a }', '127.0.0.1', '285', 'admin');
INSERT INTO `log` VALUES ('606', '2019-04-24 22:52:02', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '310', 'admin');
INSERT INTO `log` VALUES ('607', '2019-04-24 22:56:28', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('608', '2019-04-24 22:57:11', '新增菜单', 'me.zhengjie.exception.BadRequestException: Menu 已存在 {name=用户管理}\r\n	at me.zhengjie.aspect.LogAspect.logAround(LogAspect.java:51)\r\n	at sun.reflect.GeneratedMethodAccessor201.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.system.rest.MenuController$$EnhancerBySpringCGLIB$$52de4dee.create(<generated>)\r\n	at sun.reflect.GeneratedMethodAccessor277.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.JwtAuthorizationTokenFilter.doFilterInternal(JwtAuthorizationTokenFilter.java:70)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@409f97da }', '127.0.0.1', '1009', 'admin');
INSERT INTO `log` VALUES ('609', '2019-04-24 22:57:23', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@18aa21f0 }', '127.0.0.1', '72', 'admin');
INSERT INTO `log` VALUES ('610', '2019-04-24 22:57:24', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '170', 'admin');
INSERT INTO `log` VALUES ('611', '2019-04-24 22:58:02', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@32caf123 }', '127.0.0.1', '63', 'admin');
INSERT INTO `log` VALUES ('612', '2019-04-24 22:58:02', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('613', '2019-04-24 22:58:13', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@643755a8 }', '127.0.0.1', '61', 'admin');
INSERT INTO `log` VALUES ('614', '2019-04-24 22:58:13', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '234', 'admin');
INSERT INTO `log` VALUES ('615', '2019-04-24 22:58:22', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@1d2b8ae2 }', '127.0.0.1', '35', 'admin');
INSERT INTO `log` VALUES ('616', '2019-04-24 22:58:23', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '279', 'admin');
INSERT INTO `log` VALUES ('617', '2019-04-24 22:58:44', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@16402748 }', '127.0.0.1', '144', 'admin');
INSERT INTO `log` VALUES ('618', '2019-04-24 22:58:45', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '288', 'admin');
INSERT INTO `log` VALUES ('619', '2019-04-24 23:00:23', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '188', 'admin');
INSERT INTO `log` VALUES ('620', '2019-04-24 23:00:36', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '35', 'admin');
INSERT INTO `log` VALUES ('621', '2019-04-24 23:00:42', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '37', 'admin');
INSERT INTO `log` VALUES ('622', '2019-04-25 09:29:32', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '964', 'admin');
INSERT INTO `log` VALUES ('623', '2019-04-25 09:29:40', '查询Customers', null, 'INFO', 'me.zhengjie.modules.customers.rest.CustomersController.getCustomerss()', '{ resources: CustomersDTO(id=null, name=null, tel=null, ifbuy=null, courses=null, sex=null, remark=null, password=null, photo=null, classes=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '105', 'admin');
INSERT INTO `log` VALUES ('624', '2019-04-25 09:30:01', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '28', 'admin');
INSERT INTO `log` VALUES ('625', '2019-04-25 09:30:25', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '29', 'admin');
INSERT INTO `log` VALUES ('626', '2019-04-25 09:30:57', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@4f586214 }', '127.0.0.1', '18', 'admin');
INSERT INTO `log` VALUES ('627', '2019-04-25 09:30:57', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('628', '2019-04-25 09:31:18', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@3da15f39 }', '127.0.0.1', '29', 'admin');
INSERT INTO `log` VALUES ('629', '2019-04-25 09:31:18', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('630', '2019-04-25 09:40:19', '查询CourseClass', null, 'INFO', 'me.zhengjie.modules.course_class.rest.CourseClassController.getCourseClasss()', '{ resources: CourseClassDTO(id=null, title=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('631', '2019-04-25 09:40:25', '查询Courselist', null, 'INFO', 'me.zhengjie.modules.courselist.rest.CourselistController.getCourselists()', '{ resources: CourselistDTO(id=null, icon=null, title=null, level=null, type=null, people=null, ccId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('632', '2019-04-25 09:40:29', '查询Typelist', null, 'INFO', 'me.zhengjie.modules.typelist.rest.TypelistController.getTypelists()', '{ resources: TypelistDTO(id=null, icon=null, text=null, ccId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '17', 'admin');
INSERT INTO `log` VALUES ('633', '2019-04-25 09:40:44', '查询Commentlist', null, 'INFO', 'me.zhengjie.modules.commentlist.rest.CommentlistController.getCommentlists()', '{ resources: CommentlistDTO(id=null, avatar=null, name=null, rate=null, comment=null, rateId=null, cusId=null, orderId=null, cdId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('634', '2019-04-25 19:11:05', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '19', 'admin');
INSERT INTO `log` VALUES ('635', '2019-04-28 19:36:34', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '559', 'admin');
INSERT INTO `log` VALUES ('636', '2019-04-28 19:37:12', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '18', 'admin');
INSERT INTO `log` VALUES ('637', '2019-04-28 19:38:13', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '29', 'admin');
INSERT INTO `log` VALUES ('638', '2019-04-28 19:39:00', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@35bcbd52 }', '127.0.0.1', '55', 'admin');
INSERT INTO `log` VALUES ('639', '2019-04-28 19:39:00', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('640', '2019-04-28 19:39:10', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('641', '2019-04-28 19:39:42', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@21e54b47 }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('642', '2019-04-28 19:39:42', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('643', '2019-04-28 19:39:52', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('644', '2019-04-28 19:40:06', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('645', '2019-04-28 19:40:33', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@40f4f855 }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('646', '2019-04-28 19:40:33', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('647', '2019-04-28 19:40:44', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@4bcdac81 }', '127.0.0.1', '31', 'admin');
INSERT INTO `log` VALUES ('648', '2019-04-28 19:40:44', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('649', '2019-04-28 19:41:25', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@20f8b36b }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('650', '2019-04-28 19:41:25', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '7', 'admin');
INSERT INTO `log` VALUES ('651', '2019-04-28 19:44:30', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('652', '2019-04-28 19:44:36', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '76', 'admin');
INSERT INTO `log` VALUES ('653', '2019-04-28 19:44:52', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '92', 'admin');
INSERT INTO `log` VALUES ('654', '2019-04-28 19:45:00', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '29', 'admin');
INSERT INTO `log` VALUES ('655', '2019-04-28 20:24:13', '查询Exercise', null, 'INFO', 'me.zhengjie.modules.exercise.rest.ExerciseController.getExercises()', '{ resources: ExerciseDTO(id=null, desc=null, ansA=null, ansB=null, ansC=null, ansD=null, ans=null, chaId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '49', 'admin');
INSERT INTO `log` VALUES ('656', '2019-04-28 20:24:49', '新增Exercise', 'me.zhengjie.exception.BadRequestException: could not execute statement; SQL [n/a]; nested exception is org.hibernate.exception.SQLGrammarException: could not execute statement\r\n	at me.zhengjie.aspect.LogAspect.logAround(LogAspect.java:51)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at me.zhengjie.modules.exercise.rest.ExerciseController$$EnhancerBySpringCGLIB$$dd0192f3.create(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:215)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:142)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:998)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:901)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:875)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:101)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.zhengjie.modules.security.security.JwtAuthorizationTokenFilter.doFilterInternal(JwtAuthorizationTokenFilter.java:70)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:770)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n', 'ERROR', 'me.zhengjie.modules.exercise.rest.ExerciseController.create()', '{ resources: Exercise(id=null, desc=题目二, ansA=123, ansB=4213, ansC=123, ansD=4123, ans=b, chaId=1) }', '127.0.0.1', '124', 'admin');
INSERT INTO `log` VALUES ('657', '2019-04-28 20:43:47', '查询Grade', null, 'INFO', 'me.zhengjie.modules.grade.rest.GradeController.getGrades()', '{ resources: GradeDTO(id=null, grade=null, cusId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '40', 'admin');
INSERT INTO `log` VALUES ('658', '2019-04-28 20:44:58', '查询Grade', null, 'INFO', 'me.zhengjie.modules.grade.rest.GradeController.getGrades()', '{ resources: GradeDTO(id=null, grade=null, cusId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('659', '2019-04-28 21:06:45', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '191', 'admin');
INSERT INTO `log` VALUES ('660', '2019-04-28 21:07:00', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '108', 'admin');
INSERT INTO `log` VALUES ('661', '2019-04-28 21:07:05', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '50', 'admin');
INSERT INTO `log` VALUES ('662', '2019-04-28 21:07:09', '查询Commentlist', null, 'INFO', 'me.zhengjie.modules.commentlist.rest.CommentlistController.getCommentlists()', '{ resources: CommentlistDTO(id=null, avatar=null, name=null, rate=null, comment=null, rateId=null, cusId=null, orderId=null, cdId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '16', 'admin');
INSERT INTO `log` VALUES ('663', '2019-04-28 21:07:17', '查询Exercise', null, 'INFO', 'me.zhengjie.modules.exercise.rest.ExerciseController.getExercises()', '{ resources: ExerciseDTO(id=null, description=null, ansA=null, ansB=null, ansC=null, ansD=null, ans=null, chaId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('664', '2019-04-28 21:07:19', '查询Answer', null, 'INFO', 'me.zhengjie.modules.answer.rest.AnswerController.getAnswers()', '{ resources: AnswerDTO(id=null, ansReal=null, cusId=null, exeId=null, graId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('665', '2019-04-28 21:07:22', '查询Grade', null, 'INFO', 'me.zhengjie.modules.grade.rest.GradeController.getGrades()', '{ resources: GradeDTO(id=null, grade=null, cusId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('666', '2019-04-28 21:07:36', '查询Answer', null, 'INFO', 'me.zhengjie.modules.answer.rest.AnswerController.getAnswers()', '{ resources: AnswerDTO(id=null, ansReal=null, cusId=null, exeId=null, graId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('667', '2019-04-28 21:07:39', '查询Grade', null, 'INFO', 'me.zhengjie.modules.grade.rest.GradeController.getGrades()', '{ resources: GradeDTO(id=null, grade=null, cusId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '8', 'admin');
INSERT INTO `log` VALUES ('668', '2019-04-28 21:07:43', '查询Answer', null, 'INFO', 'me.zhengjie.modules.answer.rest.AnswerController.getAnswers()', '{ resources: AnswerDTO(id=null, ansReal=null, cusId=null, exeId=null, graId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('669', '2019-04-28 21:07:45', '查询Exercise', null, 'INFO', 'me.zhengjie.modules.exercise.rest.ExerciseController.getExercises()', '{ resources: ExerciseDTO(id=null, description=null, ansA=null, ansB=null, ansC=null, ansD=null, ans=null, chaId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('670', '2019-04-28 21:09:54', '新增Exercise', null, 'INFO', 'me.zhengjie.modules.exercise.rest.ExerciseController.create()', '{ resources: Exercise(id=2, description=题目二, ansA=啥都好看, ansB=123, ansC=阿萨德, ansD=87bas, ans=a, chaId=1) }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('671', '2019-04-28 21:09:54', '查询Exercise', null, 'INFO', 'me.zhengjie.modules.exercise.rest.ExerciseController.getExercises()', '{ resources: ExerciseDTO(id=null, description=null, ansA=null, ansB=null, ansC=null, ansD=null, ans=null, chaId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('672', '2019-04-28 21:14:11', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '44', 'admin');
INSERT INTO `log` VALUES ('673', '2019-04-28 21:14:17', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '50', 'admin');
INSERT INTO `log` VALUES ('674', '2019-04-28 21:18:50', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '18', 'admin');
INSERT INTO `log` VALUES ('675', '2019-04-28 21:19:16', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@38e3fd60 }', '127.0.0.1', '34', 'admin');
INSERT INTO `log` VALUES ('676', '2019-04-28 21:19:17', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('677', '2019-04-28 21:20:16', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@2528cc1d }', '127.0.0.1', '29', 'admin');
INSERT INTO `log` VALUES ('678', '2019-04-28 21:20:17', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('679', '2019-04-28 21:21:09', '新增菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{ resources: me.zhengjie.modules.system.domain.Menu@1661a7ae }', '127.0.0.1', '31', 'admin');
INSERT INTO `log` VALUES ('680', '2019-04-28 21:21:09', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '11', 'admin');
INSERT INTO `log` VALUES ('681', '2019-04-28 21:21:22', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@1ad62666 }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('682', '2019-04-28 21:21:22', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('683', '2019-04-28 21:21:31', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@456f40ce }', '127.0.0.1', '53', 'admin');
INSERT INTO `log` VALUES ('684', '2019-04-28 21:21:31', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('685', '2019-04-28 21:21:57', '修改菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{ resources: me.zhengjie.modules.system.domain.Menu@1e56967d }', '127.0.0.1', '12', 'admin');
INSERT INTO `log` VALUES ('686', '2019-04-28 21:21:57', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('687', '2019-04-28 21:22:41', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '81', 'admin');
INSERT INTO `log` VALUES ('688', '2019-04-28 21:23:46', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '25', 'admin');
INSERT INTO `log` VALUES ('689', '2019-04-28 21:23:55', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '34', 'admin');
INSERT INTO `log` VALUES ('690', '2019-04-28 21:24:10', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '26', 'admin');
INSERT INTO `log` VALUES ('691', '2019-04-28 21:24:14', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '37', 'admin');
INSERT INTO `log` VALUES ('692', '2019-04-28 21:24:36', '查询菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getMenus()', '{ name: null }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('693', '2019-04-28 21:25:31', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '34', 'admin');
INSERT INTO `log` VALUES ('694', '2019-04-28 21:28:51', '查询Studylist', null, 'INFO', 'me.zhengjie.modules.studylist.rest.StudylistController.getStudylists()', '{ resources: StudylistDTO(id=null, title=null, content=null, cusId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '43', 'admin');
INSERT INTO `log` VALUES ('695', '2019-04-28 21:28:53', '查询Testlist', null, 'INFO', 'me.zhengjie.modules.testlist.rest.TestlistController.getTestlists()', '{ resources: TestlistDTO(id=null, title=null, content=null, cusId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('696', '2019-04-28 21:28:56', '查询Errorlist', null, 'INFO', 'me.zhengjie.modules.errorlist.rest.ErrorlistController.getErrorlists()', '{ resources: ErrorlistDTO(id=null, title=null, content=null, cusId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '76', 'admin');
INSERT INTO `log` VALUES ('697', '2019-04-28 21:29:03', '查询角色', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.getRoles()', '{ name: null pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '132', 'admin');
INSERT INTO `log` VALUES ('698', '2019-04-28 21:29:09', '修改角色菜单', null, 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{ resources: Role{id=1, name=\'null\', remark=\'null\', createDateTime=null} }', '127.0.0.1', '109', 'admin');
INSERT INTO `log` VALUES ('699', '2019-04-28 21:29:25', '查询Customers', null, 'INFO', 'me.zhengjie.modules.customers.rest.CustomersController.getCustomerss()', '{ resources: CustomersDTO(id=null, name=null, tel=null, ifbuy=null, courses=null, sex=null, remark=null, password=null, photo=null, classes=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '102', 'admin');
INSERT INTO `log` VALUES ('700', '2019-04-28 21:29:28', '查询VOrder', null, 'INFO', 'me.zhengjie.modules.v_order.rest.VOrderController.getVOrders()', '{ resources: VOrderDTO(id=null, num=null, cdListId=null, cusId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '44', 'admin');
INSERT INTO `log` VALUES ('701', '2019-04-28 21:29:35', '查询Commentlist', null, 'INFO', 'me.zhengjie.modules.commentlist.rest.CommentlistController.getCommentlists()', '{ resources: CommentlistDTO(id=null, avatar=null, name=null, rate=null, comment=null, rateId=null, cusId=null, orderId=null, cdId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '15', 'admin');
INSERT INTO `log` VALUES ('702', '2019-04-28 21:29:39', '查询CourseClass', null, 'INFO', 'me.zhengjie.modules.course_class.rest.CourseClassController.getCourseClasss()', '{ resources: CourseClassDTO(id=null, title=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '24', 'admin');
INSERT INTO `log` VALUES ('703', '2019-04-28 21:29:44', '查询Typelist', null, 'INFO', 'me.zhengjie.modules.typelist.rest.TypelistController.getTypelists()', '{ resources: TypelistDTO(id=null, icon=null, text=null, ccId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '95', 'admin');
INSERT INTO `log` VALUES ('704', '2019-04-28 21:29:47', '查询Courselist', null, 'INFO', 'me.zhengjie.modules.courselist.rest.CourselistController.getCourselists()', '{ resources: CourselistDTO(id=null, icon=null, title=null, level=null, type=null, people=null, ccId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '14', 'admin');
INSERT INTO `log` VALUES ('705', '2019-04-28 21:46:41', '用户登录', null, 'INFO', 'me.zhengjie.modules.security.rest.AuthenticationController.login()', '{ authorizationUser: {username=admin, password= ******} }', '127.0.0.1', '29', 'admin');
INSERT INTO `log` VALUES ('706', '2019-04-28 21:46:42', '查询Courselist', null, 'INFO', 'me.zhengjie.modules.courselist.rest.CourselistController.getCourselists()', '{ resources: CourselistDTO(id=null, icon=null, title=null, level=null, type=null, people=null, ccId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '9', 'admin');
INSERT INTO `log` VALUES ('707', '2019-04-28 21:48:01', '查询Exercise', null, 'INFO', 'me.zhengjie.modules.exercise.rest.ExerciseController.getExercises()', '{ resources: ExerciseDTO(id=null, description=null, ansA=null, ansB=null, ansC=null, ansD=null, ans=null, chaId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '13', 'admin');
INSERT INTO `log` VALUES ('708', '2019-04-28 21:48:03', '查询Answer', null, 'INFO', 'me.zhengjie.modules.answer.rest.AnswerController.getAnswers()', '{ resources: AnswerDTO(id=null, ansReal=null, cusId=null, exeId=null, graId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '19', 'admin');
INSERT INTO `log` VALUES ('709', '2019-04-28 21:48:05', '查询Grade', null, 'INFO', 'me.zhengjie.modules.grade.rest.GradeController.getGrades()', '{ resources: GradeDTO(id=null, grade=null, cusId=null, createTime=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '43', 'admin');
INSERT INTO `log` VALUES ('710', '2019-04-28 21:48:27', '查询Classdata', null, 'INFO', 'me.zhengjie.modules.classdata.rest.ClassdataController.getClassdatas()', '{ resources: ClassdataDTO(id=null, icon=null, title=null, content=null, money=null, intro=null, teacher=null, rate=null, chapterlist=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '28', 'admin');
INSERT INTO `log` VALUES ('711', '2019-04-28 21:49:37', '查询CourseClass', null, 'INFO', 'me.zhengjie.modules.course_class.rest.CourseClassController.getCourseClasss()', '{ resources: CourseClassDTO(id=null, title=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '6', 'admin');
INSERT INTO `log` VALUES ('712', '2019-04-28 21:49:43', '查询Teacher', null, 'INFO', 'me.zhengjie.modules.teacher.rest.TeacherController.getTeachers()', '{ resources: TeacherDTO(id=null, avatar=null, name=null, type=null, claId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '27', 'admin');
INSERT INTO `log` VALUES ('713', '2019-04-28 21:49:44', '查询Intro', null, 'INFO', 'me.zhengjie.modules.intro.rest.IntroController.getIntros()', '{ resources: IntroDTO(id=null, level=null, disccount=null, rate=null, people=null, claId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '18', 'admin');
INSERT INTO `log` VALUES ('714', '2019-04-28 21:49:46', '查询Rate', null, 'INFO', 'me.zhengjie.modules.rate.rest.RateController.getRates()', '{ resources: RateDTO(id=null, rate=null, commentlist=null, claId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '38', 'admin');
INSERT INTO `log` VALUES ('715', '2019-04-28 21:49:47', '查询Chapterlist', null, 'INFO', 'me.zhengjie.modules.chapterlist.rest.ChapterlistController.getChapterlists()', '{ resources: ChapterlistDTO(id=null, title=null, classlist=null, claId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '79', 'admin');
INSERT INTO `log` VALUES ('716', '2019-04-28 21:50:07', '查询Classdata', null, 'INFO', 'me.zhengjie.modules.classdata.rest.ClassdataController.getClassdatas()', '{ resources: ClassdataDTO(id=null, icon=null, title=null, content=null, money=null, intro=null, teacher=null, rate=null, chapterlist=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '5', 'admin');
INSERT INTO `log` VALUES ('717', '2019-04-28 21:50:29', '查询Teacher', null, 'INFO', 'me.zhengjie.modules.teacher.rest.TeacherController.getTeachers()', '{ resources: TeacherDTO(id=null, avatar=null, name=null, type=null, claId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '4', 'admin');
INSERT INTO `log` VALUES ('718', '2019-04-28 21:50:37', '查询Intro', null, 'INFO', 'me.zhengjie.modules.intro.rest.IntroController.getIntros()', '{ resources: IntroDTO(id=null, level=null, disccount=null, rate=null, people=null, claId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '10', 'admin');
INSERT INTO `log` VALUES ('719', '2019-04-28 21:50:40', '查询Reclist', null, 'INFO', 'me.zhengjie.modules.reclist.rest.ReclistController.getReclists()', '{ resources: ReclistDTO(id=null, title=null, level=null, icon=null, money=null, people=null, istop=null, claId=null, intro=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '27', 'admin');
INSERT INTO `log` VALUES ('720', '2019-04-28 21:51:09', '查询Chapterlist', null, 'INFO', 'me.zhengjie.modules.chapterlist.rest.ChapterlistController.getChapterlists()', '{ resources: ChapterlistDTO(id=null, title=null, classlist=null, claId=null) pageable: Page request [number: 0, size 10, sort: id: DESC] }', '127.0.0.1', '7', 'admin');

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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '2018-12-18 15:11:29', '\0', '后台用户管理', null, '0', '1', 'system', 'system');
INSERT INTO `menu` VALUES ('2', '2018-12-18 15:14:44', '\0', '用户管理', 'system/user/index', '1', '2', 'peoples', 'user');
INSERT INTO `menu` VALUES ('3', '2018-12-18 15:16:07', '\0', '角色管理', 'system/role/index', '1', '3', 'role', 'role');
INSERT INTO `menu` VALUES ('4', '2018-12-18 15:16:45', '\0', '权限管理', 'system/permission/index', '1', '4', 'permission', 'permission');
INSERT INTO `menu` VALUES ('5', '2018-12-18 15:17:28', '\0', '菜单管理', 'system/menu/index', '1', '5', 'menu', 'menu');
INSERT INTO `menu` VALUES ('30', '2019-01-11 15:45:55', '\0', '代码生成', 'generator/index', '1', '8', 'dev', 'generator');
INSERT INTO `menu` VALUES ('42', '2019-04-12 21:10:13', '\0', '文件管理', '', '0', '999', 'add', 'work');
INSERT INTO `menu` VALUES ('43', '2019-04-12 21:12:14', '\0', '文件发送', 'tools/work', '42', '999', 'alipay', 'work');
INSERT INTO `menu` VALUES ('46', '2019-04-24 20:06:05', '\0', '课程管理', '', '0', '999', 'icon', 'course');
INSERT INTO `menu` VALUES ('47', '2019-04-24 20:08:17', '\0', '题库管理', '', '0', '999', 'fwb', 'question');
INSERT INTO `menu` VALUES ('48', '2019-04-24 20:10:54', '\0', '热门课程', 'course/reclist/index', '46', '999', 'icon', 'reclist');
INSERT INTO `menu` VALUES ('49', '2019-04-24 20:11:55', '\0', '课程详情管理', 'course/cdmanage', '46', '999', 'icon', 'cdmanage');
INSERT INTO `menu` VALUES ('50', '2019-04-24 20:12:58', '\0', '课程参数', 'course/cdmanage/intro', '49', '999', 'icon', 'intro');
INSERT INTO `menu` VALUES ('51', '2019-04-24 20:14:58', '\0', '评分', 'course/cdmanage/rate', '49', '999', 'icon', 'rate');
INSERT INTO `menu` VALUES ('52', '2019-04-24 20:59:40', '\0', '章节', 'course/cdmanage/chapterlist', '49', '999', 'icon', 'chapterlist');
INSERT INTO `menu` VALUES ('53', '2019-04-24 21:04:44', '\0', '讲师', 'course/cdmanage/teacher', '49', '999', 'icon', 'teacher');
INSERT INTO `menu` VALUES ('54', '2019-04-24 21:14:05', '\0', '课程详情', 'course/classdata/index', '46', '999', 'icon', 'classdata');
INSERT INTO `menu` VALUES ('55', '2019-04-24 21:21:09', '\0', '评论管理', 'commentlist/index', '0', '999', 'icon', 'commentlist');
INSERT INTO `menu` VALUES ('56', '2019-04-24 21:22:16', '\0', '课程纲目管理', '', '0', '999', 'icon', 'cc');
INSERT INTO `menu` VALUES ('57', '2019-04-24 21:23:55', '\0', '课程学习管理', '', '0', '999', 'icon', 'study');
INSERT INTO `menu` VALUES ('58', '2019-04-24 21:31:25', '\0', '课程纲目', 'cc/course_class/index', '56', '999', 'icon', 'course_class');
INSERT INTO `menu` VALUES ('59', '2019-04-24 21:33:21', '\0', '纲目管理', 'cc/ccm', '56', '999', 'icon', 'ccm');
INSERT INTO `menu` VALUES ('60', '2019-04-24 21:56:06', '\0', '类别管理', 'cc/ccm/typelist', '59', '999', 'icon', 'typelist');
INSERT INTO `menu` VALUES ('61', '2019-04-24 22:17:04', '\0', '课程列表', 'cc/ccm/courselist', '59', '999', 'icon', 'courselist');
INSERT INTO `menu` VALUES ('62', '2019-04-24 22:52:02', '\0', '前台用户管理', '', '0', '999', 'icon', 'cus');
INSERT INTO `menu` VALUES ('63', '2019-04-24 22:57:23', '\0', 'front用户管理', 'cus/customers/index', '62', '999', 'icon', 'customers');
INSERT INTO `menu` VALUES ('64', '2019-04-25 09:30:57', '\0', '用户订单', 'cus/v_order/index', '62', '999', 'icon', 'v_order');
INSERT INTO `menu` VALUES ('65', '2019-04-28 19:39:00', '\0', '习题', 'question/exercise/index', '47', '999', 'icon', 'exercise');
INSERT INTO `menu` VALUES ('66', '2019-04-28 19:40:33', '\0', '答案', 'question/answer/index', '47', '999', 'icon', 'answer');
INSERT INTO `menu` VALUES ('67', '2019-04-28 19:41:25', '\0', '成绩', 'question/grade/index', '47', '999', 'icon', 'grade');
INSERT INTO `menu` VALUES ('68', '2019-04-28 21:19:16', '\0', '学习笔记', 'study/studylist/index', '57', '999', 'icon', 'studylist');
INSERT INTO `menu` VALUES ('69', '2019-04-28 21:20:16', '\0', '测试记录', 'study/testlist/index', '57', '999', 'icon', 'testlist');
INSERT INTO `menu` VALUES ('70', '2019-04-28 21:21:09', '\0', '错误记录', 'study/errorlist/index', '57', '999', 'icon', 'errorlist');

-- ----------------------------
-- Table structure for newlist
-- ----------------------------
DROP TABLE IF EXISTS `newlist`;
CREATE TABLE `newlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `people` int(11) DEFAULT NULL,
  `cla_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newlist
-- ----------------------------
INSERT INTO `newlist` VALUES ('1', '好课程', '入门', '8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', '1', '1', '1');

-- ----------------------------
-- Table structure for notify
-- ----------------------------
DROP TABLE IF EXISTS `notify`;
CREATE TABLE `notify` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notify
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

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
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('57', '2019-03-14 01:16:30', 'https://sm.ms/delete/vcitjy5fAKuFpRT', 'QQ浏览器截图_20180607005150_4CB0CB413D674447952A2B38E2058152jpg', '448', '32.11KB   ', 'https://i.loli.net/2019/03/14/5c893922e41b4.jpg', 'admin', '606', 'huandengpian');
INSERT INTO `picture` VALUES ('58', '2019-03-14 01:17:16', 'https://sm.ms/delete/gqjF6b9zuGdNfUw', 'TB2dKaufdHO8KJjSZFLXXaTqVXa_!!718423783jpg', '800', '460.32KB   ', 'https://i.loli.net/2019/03/14/5c8939515a304.jpg', 'admin', '800', 'huandengpian');
INSERT INTO `picture` VALUES ('59', '2019-03-14 23:28:33', 'https://sm.ms/delete/ZfO48BNk2ryLRHj', '首图jpg', '800', '217.81KB   ', 'https://i.loli.net/2019/03/14/5c8a715a60d59.jpg', 'admin', '800', 'huandengpian');
INSERT INTO `picture` VALUES ('60', '2019-03-14 23:30:37', 'https://sm.ms/delete/ifqEsDRugj2nN5C', '5c3ed609e6f99jpg', '220', '3.73KB   ', 'https://i.loli.net/2019/03/14/5c8a71d582085.jpg', 'admin', '229', 'huandengpian');
INSERT INTO `picture` VALUES ('61', '2019-03-14 23:45:46', 'https://sm.ms/delete/cfYnB9qLxZuO82r', 'QQ浏览器截图_20180421012224_E4D1588961FC4fa9863E6D865ADCECE5jpg', '632', '42.26KB   ', 'https://i.loli.net/2019/03/14/5c8a7562a00d4.jpg', 'admin', '1366', 'login');
INSERT INTO `picture` VALUES ('62', '2019-03-14 23:46:05', 'https://sm.ms/delete/dNBCDcM2vou9nwJ', 'QQ浏览器截图_20180421012224_E4D1588961FC4fa9863E6D865ADCECE5jpg', '632', '42.26KB   ', 'https://i.loli.net/2019/03/14/5c8a75761aa7f.jpg', 'admin', '1366', 'login');
INSERT INTO `picture` VALUES ('63', '2019-03-14 23:48:47', 'https://sm.ms/delete/XidvtT21afAUJOV', 'QQ浏览器截图_20180421012224_E4D1588961FC4fa9863E6D865ADCECE5jpg', '632', '42.26KB   ', 'https://i.loli.net/2019/03/14/5c8a7618968fd.jpg', 'admin', '1366', 'login');

-- ----------------------------
-- Table structure for qiniu_config
-- ----------------------------
DROP TABLE IF EXISTS `qiniu_config`;
CREATE TABLE `qiniu_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_key` text,
  `bucket` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `secret_key` text,
  `type` varchar(255) DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qiniu_config
-- ----------------------------

-- ----------------------------
-- Table structure for qiniu_content
-- ----------------------------
DROP TABLE IF EXISTS `qiniu_content`;
CREATE TABLE `qiniu_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bucket` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of quartz_job
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of quartz_log
-- ----------------------------

-- ----------------------------
-- Table structure for rate
-- ----------------------------
DROP TABLE IF EXISTS `rate`;
CREATE TABLE `rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` varchar(255) DEFAULT NULL COMMENT '评分',
  `commentlist` varchar(255) DEFAULT NULL COMMENT '评论id集合',
  `cla_id` int(11) NOT NULL COMMENT '详细id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='评分表';

-- ----------------------------
-- Records of rate
-- ----------------------------
INSERT INTO `rate` VALUES ('1', '[5.976869140422, 7.6158, 8.3, 9.4812]', '[1,2]', '1');

-- ----------------------------
-- Table structure for reclist
-- ----------------------------
DROP TABLE IF EXISTS `reclist`;
CREATE TABLE `reclist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '课程名',
  `level` varchar(255) DEFAULT NULL COMMENT '难度',
  `icon` varchar(255) DEFAULT NULL COMMENT '图片展示',
  `money` int(11) DEFAULT NULL COMMENT '价格',
  `people` int(11) DEFAULT NULL COMMENT '报名人数',
  `istop` varchar(1) DEFAULT NULL COMMENT '是否停止',
  `cla_id` int(11) NOT NULL COMMENT '关联的详情id',
  `intro` varchar(255) DEFAULT NULL COMMENT '参数id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='实战课程';

-- ----------------------------
-- Records of reclist
-- ----------------------------
INSERT INTO `reclist` VALUES ('1', '实战课题', '中级', '8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', '1', '12', '0', '1', null);
INSERT INTO `reclist` VALUES ('2', '实战课程测试', '初级', '8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', '16', '12', '0', '1', '1');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '首页轮播图',
  `filePath` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `cla_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('36', 'E:\\node相关\\node后台服务\\server\\public\\8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', '40071610-681c-11e9-a5a7-8f3b4914626a.jpg', '1dfbf610-5b94-11e9-a9cb-a70754482d5d.jpg', '1');
INSERT INTO `resource` VALUES ('37', 'E:\\node相关\\node后台服务\\server\\public\\8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', '8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', '1dfbf610-5b94-11e9-a9cb-a70754482d5d.jpg', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '2018-11-23 11:04:37', '管理员', '系统所有权');
INSERT INTO `role` VALUES ('2', '2018-11-23 13:09:06', '普通用户', '用于测试菜单与权限');
INSERT INTO `role` VALUES ('4', '2019-03-11 23:58:51', '测试角色', '测试');

-- ----------------------------
-- Table structure for roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `roles_menus`;
CREATE TABLE `roles_menus` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`menu_id`,`role_id`) USING BTREE,
  KEY `FKcngg2qadojhi3a651a5adkvbq` (`role_id`) USING BTREE,
  CONSTRAINT `FKcngg2qadojhi3a651a5adkvbq` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKq1knxf8ykt26we8k331naabjx` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of roles_menus
-- ----------------------------
INSERT INTO `roles_menus` VALUES ('1', '1');
INSERT INTO `roles_menus` VALUES ('1', '2');
INSERT INTO `roles_menus` VALUES ('1', '3');
INSERT INTO `roles_menus` VALUES ('1', '4');
INSERT INTO `roles_menus` VALUES ('1', '5');
INSERT INTO `roles_menus` VALUES ('1', '46');
INSERT INTO `roles_menus` VALUES ('1', '47');
INSERT INTO `roles_menus` VALUES ('1', '48');
INSERT INTO `roles_menus` VALUES ('1', '49');
INSERT INTO `roles_menus` VALUES ('1', '50');
INSERT INTO `roles_menus` VALUES ('1', '51');
INSERT INTO `roles_menus` VALUES ('1', '52');
INSERT INTO `roles_menus` VALUES ('1', '53');
INSERT INTO `roles_menus` VALUES ('1', '54');
INSERT INTO `roles_menus` VALUES ('1', '55');
INSERT INTO `roles_menus` VALUES ('1', '56');
INSERT INTO `roles_menus` VALUES ('1', '57');
INSERT INTO `roles_menus` VALUES ('1', '58');
INSERT INTO `roles_menus` VALUES ('1', '59');
INSERT INTO `roles_menus` VALUES ('1', '60');
INSERT INTO `roles_menus` VALUES ('1', '61');
INSERT INTO `roles_menus` VALUES ('1', '62');
INSERT INTO `roles_menus` VALUES ('1', '63');
INSERT INTO `roles_menus` VALUES ('1', '64');
INSERT INTO `roles_menus` VALUES ('1', '65');
INSERT INTO `roles_menus` VALUES ('1', '66');
INSERT INTO `roles_menus` VALUES ('1', '67');
INSERT INTO `roles_menus` VALUES ('1', '68');
INSERT INTO `roles_menus` VALUES ('1', '69');
INSERT INTO `roles_menus` VALUES ('1', '70');
INSERT INTO `roles_menus` VALUES ('2', '1');
INSERT INTO `roles_menus` VALUES ('2', '2');
INSERT INTO `roles_menus` VALUES ('2', '42');
INSERT INTO `roles_menus` VALUES ('2', '43');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of roles_permissions
-- ----------------------------
INSERT INTO `roles_permissions` VALUES ('1', '1');
INSERT INTO `roles_permissions` VALUES ('2', '2');
INSERT INTO `roles_permissions` VALUES ('2', '3');
INSERT INTO `roles_permissions` VALUES ('2', '4');
INSERT INTO `roles_permissions` VALUES ('2', '5');
INSERT INTO `roles_permissions` VALUES ('2', '6');
INSERT INTO `roles_permissions` VALUES ('2', '23');
INSERT INTO `roles_permissions` VALUES ('2', '24');
INSERT INTO `roles_permissions` VALUES ('2', '25');
INSERT INTO `roles_permissions` VALUES ('2', '26');

-- ----------------------------
-- Table structure for studylist
-- ----------------------------
DROP TABLE IF EXISTS `studylist`;
CREATE TABLE `studylist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '笔记标题',
  `content` varchar(255) DEFAULT NULL COMMENT '笔记内容',
  `cus_id` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studylist
-- ----------------------------
INSERT INTO `studylist` VALUES ('2', '123', '124213', '22');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `name` varchar(255) DEFAULT NULL COMMENT '名字',
  `type` varchar(255) DEFAULT NULL COMMENT '方向类别',
  `cla_id` int(11) NOT NULL COMMENT '详情id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='老师';

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', '蒋娜', 'Web全栈工程师', '1');

-- ----------------------------
-- Table structure for testlist
-- ----------------------------
DROP TABLE IF EXISTS `testlist`;
CREATE TABLE `testlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '测试标题',
  `content` varchar(255) DEFAULT NULL COMMENT '测试内容',
  `cus_id` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testlist
-- ----------------------------
INSERT INTO `testlist` VALUES ('1', '测试笔记一', '1234', '22');
INSERT INTO `testlist` VALUES ('2', '123', '1234213', '22');
INSERT INTO `testlist` VALUES ('3', '123学习一', 'asdhk12 312 d as123', '22');
INSERT INTO `testlist` VALUES ('4', '笔记一二三', '按时打卡23', '22');
INSERT INTO `testlist` VALUES ('5', '123', '123412', '22');

-- ----------------------------
-- Table structure for typelist
-- ----------------------------
DROP TABLE IF EXISTS `typelist`;
CREATE TABLE `typelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) DEFAULT NULL COMMENT '图片',
  `text` varchar(255) DEFAULT NULL COMMENT '类别内容',
  `cc_id` int(11) NOT NULL COMMENT '课程纲目id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of typelist
-- ----------------------------
INSERT INTO `typelist` VALUES ('1', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', 'jwemjgn', '1');
INSERT INTO `typelist` VALUES ('2', 'http://localhost:3000/8cbc5340-5d2b-11e9-9938-49f3f468ae29.jpg', 'wvcpsch', '2');

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
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_kpubos9gc2cvtkb0thktkbkes` (`email`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'https://i.loli.net/2019/01/16/5c3ed609e6f99.jpg', '2018-08-23 09:11:56', 'zhengjie@tom.com', '1', '14e1b600b1fd579f47433b88e8d85291', 'admin', '2019-01-17 09:53:21');
INSERT INTO `user` VALUES ('3', 'https://i.loli.net/2018/12/30/5c2871d6aa101.jpg', '2018-12-27 20:05:26', 'test@qq.com', '1', '14e1b600b1fd579f47433b88e8d85291', 'test', null);
INSERT INTO `user` VALUES ('4', 'https://i.loli.net/2018/12/06/5c08894d8de21.jpg', '2019-03-12 00:09:43', '12@qq.com', '1', '14e1b600b1fd579f47433b88e8d85291', 'yzl', null);
INSERT INTO `user` VALUES ('5', 'https://i.loli.net/2018/12/06/5c08894d8de21.jpg', '2019-03-15 01:01:08', '123@qq.com', '1', '202cb962ac59075b964b07152d234b70', '123', null);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users_roles
-- ----------------------------
INSERT INTO `users_roles` VALUES ('1', '1');
INSERT INTO `users_roles` VALUES ('3', '2');
INSERT INTO `users_roles` VALUES ('4', '4');
INSERT INTO `users_roles` VALUES ('5', '4');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visits
-- ----------------------------
INSERT INTO `visits` VALUES ('1', '2019-03-10 01:24:30', '2019-03-10', '1', '2', 'Sun');
INSERT INTO `visits` VALUES ('2', '2019-03-11 23:51:12', '2019-03-11', '1', '2', 'Mon');
INSERT INTO `visits` VALUES ('3', '2019-03-12 00:00:00', '2019-03-12', '1', '9', 'Tue');
INSERT INTO `visits` VALUES ('4', '2019-03-13 00:00:00', '2019-03-13', '1', '1', 'Wed');
INSERT INTO `visits` VALUES ('5', '2019-03-14 00:00:00', '2019-03-14', '1', '1', 'Thu');
INSERT INTO `visits` VALUES ('6', '2019-03-15 00:00:00', '2019-03-15', '1', '1', 'Fri');
INSERT INTO `visits` VALUES ('7', '2019-04-24 19:15:05', '2019-04-24', '1', '4', 'Wed');
INSERT INTO `visits` VALUES ('8', '2019-04-25 09:29:01', '2019-04-25', '1', '2', 'Thu');
INSERT INTO `visits` VALUES ('9', '2019-04-28 19:21:45', '2019-04-28', '1', '3', 'Sun');

-- ----------------------------
-- Table structure for v_order
-- ----------------------------
DROP TABLE IF EXISTS `v_order`;
CREATE TABLE `v_order` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `num` double(10,0) DEFAULT NULL COMMENT '订单总价',
  `cd_list_id` varchar(255) DEFAULT NULL COMMENT '详情集合id',
  `cus_id` int(255) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_order
-- ----------------------------
INSERT INTO `v_order` VALUES ('8', '562', '[\"1\",\"1\"]', '22');
INSERT INTO `v_order` VALUES ('9', '281', '[1]', '22');
INSERT INTO `v_order` VALUES ('10', '562', '[\"1\",\"1\"]', '22');

-- ----------------------------
-- Table structure for wendalist
-- ----------------------------
DROP TABLE IF EXISTS `wendalist`;
CREATE TABLE `wendalist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wendalist
-- ----------------------------
INSERT INTO `wendalist` VALUES ('1', '123', '12');
