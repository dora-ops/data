/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : findlover

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 18:57:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '1' COMMENT '0：超级管理员、1：普通管理员',
  `create_time` datetime NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1001', 'admin', 'a66abb5684c45962d887564f08346e8d', '0', '2017-10-31 16:11:44', '2019-04-27 17:29:04');
INSERT INTO `admin` VALUES ('1002', 'gss', '89e8b73cc665717104ef06dfb1358ce4', '1', '2017-11-03 09:49:58', '2017-11-04 19:34:16');
INSERT INTO `admin` VALUES ('1003', 'yyf', '556fe1677f75a91b471d89874aafc1d2', '1', '2017-11-03 09:53:11', '2017-11-04 19:45:26');
INSERT INTO `admin` VALUES ('1004', 'hgh', '0e66d509dda9d280731d22f22ece4374', '1', '2017-11-03 09:53:54', '1970-01-01 00:00:00');
INSERT INTO `admin` VALUES ('1005', 'wm', 'e2def63a42038c8c9e7a9d99ee377766', '1', '2017-11-03 09:54:26', '2017-11-04 22:44:31');
INSERT INTO `admin` VALUES ('1007', 'ceshi1', '5675179cc4a9abcff789eb06bed0a868', '1', '2017-11-04 15:08:29', '1970-01-01 00:00:00');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `admin_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `FK_fk_araid` (`admin_id`),
  KEY `FK_fk_arrid` (`role_id`),
  CONSTRAINT `FK_fk_araid` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_fk_arrid` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES ('1004', '3');
INSERT INTO `admin_role` VALUES ('1005', '4');
INSERT INTO `admin_role` VALUES ('1005', '5');
INSERT INTO `admin_role` VALUES ('1001', '1');
INSERT INTO `admin_role` VALUES ('1001', '2');
INSERT INTO `admin_role` VALUES ('1001', '3');
INSERT INTO `admin_role` VALUES ('1001', '4');
INSERT INTO `admin_role` VALUES ('1001', '5');
INSERT INTO `admin_role` VALUES ('1001', '6');
INSERT INTO `admin_role` VALUES ('1001', '7');
INSERT INTO `admin_role` VALUES ('1002', '1');
INSERT INTO `admin_role` VALUES ('1002', '2');
INSERT INTO `admin_role` VALUES ('1002', '3');
INSERT INTO `admin_role` VALUES ('1007', '1');
INSERT INTO `admin_role` VALUES ('1007', '3');
INSERT INTO `admin_role` VALUES ('1003', '1');
INSERT INTO `admin_role` VALUES ('1003', '2');
INSERT INTO `admin_role` VALUES ('1004', '1');
INSERT INTO `admin_role` VALUES ('1005', '1');

-- ----------------------------
-- Table structure for complain
-- ----------------------------
DROP TABLE IF EXISTS `complain`;
CREATE TABLE `complain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `com_obj` int(11) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `com_time` datetime NOT NULL,
  `status` int(11) DEFAULT '0' COMMENT '0：待处理、1：忽略、2：警告、3：封号',
  `admin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fk_comadminid` (`admin_id`),
  KEY `FK_fk_comobjid` (`com_obj`),
  KEY `FK_fk_comuserid` (`user_id`),
  CONSTRAINT `FK_fk_comadminid` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `FK_fk_comobjid` FOREIGN KEY (`com_obj`) REFERENCES `user_basic` (`id`),
  CONSTRAINT `FK_fk_comuserid` FOREIGN KEY (`user_id`) REFERENCES `user_basic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of complain
-- ----------------------------
INSERT INTO `complain` VALUES ('1', '100002', '100012', '违法信息', '由于您操作过于频繁 请稍后返回首页重新操作', '2017-10-26 20:47:26', '1', null);
INSERT INTO `complain` VALUES ('2', '100002', '100012', '有害信息', '由于您操作过于频繁 请稍后返回首页重新操作', '2017-10-26 21:17:41', '3', null);
INSERT INTO `complain` VALUES ('3', '100003', '100004', '有害信息', '由于您操作过于频繁 请稍后返回首页重新操作', '2017-10-26 21:17:41', '0', null);
INSERT INTO `complain` VALUES ('4', '100042', '100033', '违法信息', '由于您操作过于频繁 请稍后返回首页重新操作', '2017-10-26 20:47:26', '2', null);
INSERT INTO `complain` VALUES ('5', '100045', '100042', '违法信息', '\n;,.,', '2017-11-05 09:05:50', '0', null);

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES ('1', 'education', '高中及以下');
INSERT INTO `dict` VALUES ('2', 'education', '中专');
INSERT INTO `dict` VALUES ('3', 'education', '大专');
INSERT INTO `dict` VALUES ('4', 'education', '大学本科');
INSERT INTO `dict` VALUES ('5', 'education', '硕士');
INSERT INTO `dict` VALUES ('6', 'education', '博士');
INSERT INTO `dict` VALUES ('12', 'marry_status', '未婚');
INSERT INTO `dict` VALUES ('13', 'marry_status', '离异');
INSERT INTO `dict` VALUES ('14', 'marry_status', '丧偶');
INSERT INTO `dict` VALUES ('15', 'job', '销售');
INSERT INTO `dict` VALUES ('16', 'job', '客户服务');
INSERT INTO `dict` VALUES ('17', 'job', '计算机/互联网');
INSERT INTO `dict` VALUES ('18', 'job', '通信/电子');
INSERT INTO `dict` VALUES ('19', 'job', '生产/制造');
INSERT INTO `dict` VALUES ('20', 'job', '物流/仓储');
INSERT INTO `dict` VALUES ('21', 'job', '商贸/采购');
INSERT INTO `dict` VALUES ('22', 'job', '人事/行政');
INSERT INTO `dict` VALUES ('23', 'job', '高级管理');
INSERT INTO `dict` VALUES ('24', 'job', '广告/市场');
INSERT INTO `dict` VALUES ('25', 'job', '传媒/艺术');
INSERT INTO `dict` VALUES ('26', 'job', '生物/制药');
INSERT INTO `dict` VALUES ('27', 'job', '医疗/护理');
INSERT INTO `dict` VALUES ('28', 'job', '金融/保险');
INSERT INTO `dict` VALUES ('29', 'job', '建筑/房地产');
INSERT INTO `dict` VALUES ('30', 'job', '咨询/顾问');
INSERT INTO `dict` VALUES ('31', 'job', '法律');
INSERT INTO `dict` VALUES ('32', 'job', '财会/审计');
INSERT INTO `dict` VALUES ('33', 'job', '教育/科研');
INSERT INTO `dict` VALUES ('34', 'job', '服务业');
INSERT INTO `dict` VALUES ('35', 'job', '交通运输');
INSERT INTO `dict` VALUES ('36', 'job', '政府机构');
INSERT INTO `dict` VALUES ('37', 'job', '军人/警察');
INSERT INTO `dict` VALUES ('38', 'job', '农林牧渔');
INSERT INTO `dict` VALUES ('39', 'job', '自由职业');
INSERT INTO `dict` VALUES ('40', 'job', '在校学生');
INSERT INTO `dict` VALUES ('41', 'job', '待业');
INSERT INTO `dict` VALUES ('42', 'job', '其他行业');
INSERT INTO `dict` VALUES ('43', 'animal', '鼠');
INSERT INTO `dict` VALUES ('44', 'animal', '牛');
INSERT INTO `dict` VALUES ('45', 'animal', '虎');
INSERT INTO `dict` VALUES ('46', 'animal', '兔');
INSERT INTO `dict` VALUES ('47', 'animal', '龙');
INSERT INTO `dict` VALUES ('48', 'animal', '蛇');
INSERT INTO `dict` VALUES ('49', 'animal', '马');
INSERT INTO `dict` VALUES ('50', 'animal', '羊');
INSERT INTO `dict` VALUES ('51', 'animal', '猴');
INSERT INTO `dict` VALUES ('52', 'animal', '鸡');
INSERT INTO `dict` VALUES ('53', 'animal', '狗');
INSERT INTO `dict` VALUES ('54', 'animal', '猪');
INSERT INTO `dict` VALUES ('55', 'zodiac', '白羊座');
INSERT INTO `dict` VALUES ('56', 'zodiac', '金牛座');
INSERT INTO `dict` VALUES ('57', 'zodiac', '双子座');
INSERT INTO `dict` VALUES ('58', 'zodiac', '巨蟹座');
INSERT INTO `dict` VALUES ('59', 'zodiac', '狮子座');
INSERT INTO `dict` VALUES ('60', 'zodiac', '处女座');
INSERT INTO `dict` VALUES ('61', 'zodiac', '天秤座');
INSERT INTO `dict` VALUES ('62', 'zodiac', '天蝎座');
INSERT INTO `dict` VALUES ('63', 'zodiac', '射手座');
INSERT INTO `dict` VALUES ('64', 'zodiac', '摩羯座');
INSERT INTO `dict` VALUES ('65', 'zodiac', '水平座');
INSERT INTO `dict` VALUES ('66', 'zodiac', '双鱼座');
INSERT INTO `dict` VALUES ('67', 'religion', '不信教');
INSERT INTO `dict` VALUES ('68', 'religion', '佛教');
INSERT INTO `dict` VALUES ('69', 'religion', '道教');
INSERT INTO `dict` VALUES ('70', 'religion', '伊斯兰教');
INSERT INTO `dict` VALUES ('71', 'religion', '基督教');
INSERT INTO `dict` VALUES ('72', 'religion', '天主教');
INSERT INTO `dict` VALUES ('73', 'religion', '儒家门徒');
INSERT INTO `dict` VALUES ('74', 'religion', '不可知论者');
INSERT INTO `dict` VALUES ('75', 'religion', '其他宗教');
INSERT INTO `dict` VALUES ('76', 'job_time', '有双休');
INSERT INTO `dict` VALUES ('77', 'job_time', '工作忙碌');
INSERT INTO `dict` VALUES ('78', 'job_time', '工作清闲');
INSERT INTO `dict` VALUES ('79', 'job_time', '自由工作出差');
INSERT INTO `dict` VALUES ('80', 'job_time', '经常出差');
INSERT INTO `dict` VALUES ('81', 'love_history', '初恋还在');
INSERT INTO `dict` VALUES ('82', 'love_history', '谈过3次以内恋爱');
INSERT INTO `dict` VALUES ('83', 'love_history', '情场高手');
INSERT INTO `dict` VALUES ('84', 'marry_time', '认同闪婚');
INSERT INTO `dict` VALUES ('85', 'marry_time', '一年内');
INSERT INTO `dict` VALUES ('86', 'marry_time', '两年内');
INSERT INTO `dict` VALUES ('87', 'marry_time', '三年内');
INSERT INTO `dict` VALUES ('88', 'marry_time', '时机成熟就结婚');
INSERT INTO `dict` VALUES ('89', 'parent_status', '父母均健在');
INSERT INTO `dict` VALUES ('90', 'parent_status', '只有母亲健在');
INSERT INTO `dict` VALUES ('91', 'parent_status', '只有父亲健在');
INSERT INTO `dict` VALUES ('92', 'parent_status', '父母均已离世');
INSERT INTO `dict` VALUES ('93', 'bro_and_sis', '独生子女');
INSERT INTO `dict` VALUES ('94', 'bro_and_sis', '2');
INSERT INTO `dict` VALUES ('95', 'bro_and_sis', '3');
INSERT INTO `dict` VALUES ('96', 'bro_and_sis', '4');
INSERT INTO `dict` VALUES ('97', 'bro_and_sis', '更多');
INSERT INTO `dict` VALUES ('98', 'com_reason', '违法信息');
INSERT INTO `dict` VALUES ('99', 'com_reason', '有害信息');
INSERT INTO `dict` VALUES ('100', 'com_reason', '人身攻击我');
INSERT INTO `dict` VALUES ('101', 'live_condition', '和家人同住');
INSERT INTO `dict` VALUES ('102', 'live_condition', '已购房');
INSERT INTO `dict` VALUES ('103', 'live_condition', '租房');
INSERT INTO `dict` VALUES ('104', 'live_condition', '打算婚后购房');
INSERT INTO `dict` VALUES ('105', 'live_condition', '单位宿舍');

-- ----------------------------
-- Table structure for essay
-- ----------------------------
DROP TABLE IF EXISTS `essay`;
CREATE TABLE `essay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `writer_id` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `pub_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0：下架，1：审核通过，2：待审核',
  `admin_id` int(11) DEFAULT NULL,
  `like_count` int(11) DEFAULT '0',
  `visit_count` int(11) DEFAULT '0',
  `photo` varchar(255) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fk_essayadminid` (`admin_id`),
  KEY `FK_fk_wewid` (`writer_id`),
  CONSTRAINT `FK_fk_essayadminid` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `FK_fk_wewid` FOREIGN KEY (`writer_id`) REFERENCES `writer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of essay
-- ----------------------------
INSERT INTO `essay` VALUES ('1', '1', '老实男人就适合当男友？', 'group1/M00/00/01/rBEuvln33yCACowVAAAWYIcHBjc622.txt', '2017-11-01 10:16:44', '1', null, '1', '4', 'group1/M00/00/01/rBEuvln5RU2AcyRHAAD_33uoJkU256.jpg', '第一次见她说实话没有什么特别的感觉，大概是我很慢热，不会有太热烈的情感，毕竟这世界没那么多的一见钟情，只是觉得不讨厌，可以接触下，至少做朋友是可以的。');
INSERT INTO `essay` VALUES ('2', '2', '男友该有哪些品质？', 'group1/M00/00/01/rBEuvln33yCACowVAAAWYIcHBjc622.txt', '2017-10-31 09:16:06', '1', null, '1', '12', 'group1/M00/00/01/rBEuvln5osCAeR-NAADpJ8VFujg864.jpg', '会慢慢的觉得跟她相处在一起很轻松，可以放松工作中崩得紧紧的神经，和她一起不被打扰的讨论各自的爱好，印象深刻的电影，单曲循环的歌，爱吃的食物，想去的地方，对未来的构想。\r\n\r\n　　我对于地域其实是有一些介怀的，不是很想找离武汉太远的，而她老家在广西');
INSERT INTO `essay` VALUES ('3', '4', '如何正确正视对方?', 'group1/M00/00/01/rBEuvln33yCACowVAAAWYIcHBjc622.txt', '2017-11-01 16:50:00', '1', null, '3', '4', 'group1/M00/00/01/rBEuvln5pKGAdFWrAAEEkn7INaI596.jpg', '跟喜欢的人在一起，有说不完的话，她爱运动爱旅行，平时在一起永远充满活力，活泼可爱又善解人意，三观合得来，对同一件事往往有相似的看法。对于这段感情，我能很明显的感觉到她也有很在意，心里暖洋洋的。爱情本来就是两个人的事情，只有一个人的');
INSERT INTO `essay` VALUES ('5', '1', '我们的两年牵手路', 'group1/M00/00/01/rBEuvln5RU2ACLDKAAALUM263pE448.txt', '2017-11-01 16:50:15', '1', null, '17', '28', 'group1/M00/00/01/rBEuvln5RU2AcyRHAAD_33uoJkU256.jpg', '　　我们住的近，每周休息的时候都有约会，有个人在身边，感情上有依托，心里才会踏实，希望我们以后能够在人生路上永远相伴。同时也希望感谢珍爱网提供了让我们彼此相识相知的机会，祝福还在珍爱网寻寻觅觅的单身会员们能尽快找到属于自己的人生伴侣。');
INSERT INTO `essay` VALUES ('6', '3', '如何走入爱情的婚姻？', 'group1/M00/00/01/rBEuvln5osCAF1j2AAALSgZgnFI523.txt', '2017-11-01 18:40:46', '1', null, '1', '9', 'group1/M00/00/01/rBEuvln5osCAeR-NAADpJ8VFujg864.jpg', '        爱情是人类永恒的话题，电影里总会有一条感情线贯穿始末，歌曲里有人在感悟爱情轻轻吟唱，文章里有对爱情入木三分的描绘。年轻男女们都会有对爱情的美好想象，我自然也不能免俗，会在看到街上情侣手');
INSERT INTO `essay` VALUES ('7', '4', '爱情是如何修炼成功的？', 'group1/M00/00/01/rBEuvln5pKGAIhySAAANDsMbr1Y455.txt', '2017-11-01 18:41:04', '0', null, '4', '4', 'group1/M00/00/01/rBEuvln5pKGAdFWrAAEEkn7INaI596.jpg', '        找不到对象是都市男女共同面对的困境，白天愁工作，晚上愁对象。泱泱大国人口密度这样大，...');
INSERT INTO `essay` VALUES ('9', '1', '直播网', 'group1/M00/00/02/wKgrmln6mimAeTm1AAAAyHmZzC8643.txt', '2017-11-02 12:08:46', '1', null, '3', '9', 'group1/M00/00/02/wKgrmln6mimAE6BsAAEz9IJnsb8837.jpg', '阿三...');
INSERT INTO `essay` VALUES ('10', '1', '我们在一起两年了', 'group1/M00/00/02/rBEuvln7BS6AJ8dmAAAOhKghaQo085.txt', null, '2', null, '0', '0', 'group1/M00/00/02/rBEuvln7BS6AWc-YAACw-I3KgNQ893.jpg', '某一个午夜梦回，窗外整夜亮着的霓虹灯透过窗帘缝隙照进灯光到卧室里，看着斑驳光影里空荡荡的半边床，听着...');
INSERT INTO `essay` VALUES ('11', '13', '男人为什么更偏爱“狐狸精”的女人？', 'group1/M00/00/02/rBEuvln8NHGAKg_TAAAyNleNVt0371.txt', '2017-11-03 17:22:14', '1', '1001', '2', '5', 'group1/M00/00/02/rBEuvln8NHGAa4liAAOiP0nRVtw888.jpg', '事实上，男人面对那样的女人根本不会有兴趣和她聊看法。他们渴望的永远是和漂亮女生谈恋爱。明白这个亘古不...');

-- ----------------------------
-- Table structure for essay_photo
-- ----------------------------
DROP TABLE IF EXISTS `essay_photo`;
CREATE TABLE `essay_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `essay_id` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `essay_id` (`essay_id`),
  CONSTRAINT `essay_photo_ibfk_1` FOREIGN KEY (`essay_id`) REFERENCES `essay` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of essay_photo
-- ----------------------------
INSERT INTO `essay_photo` VALUES ('1', '5', 'group1/M00/00/01/rBEuvln5RSWAXy6SAACw-I3KgNQ129.jpg');
INSERT INTO `essay_photo` VALUES ('2', null, 'group1/M00/00/01/rBEuvln5ogKAJFQOAADpJ8VFujg520.jpg');
INSERT INTO `essay_photo` VALUES ('3', null, 'group1/M00/00/01/rBEuvln5pHSAf4JsAAB1e4fljfE579.jpg');
INSERT INTO `essay_photo` VALUES ('4', null, 'group1/M00/00/01/rBEuvln6dPuADIABAACE4ckXuu0378.jpg');
INSERT INTO `essay_photo` VALUES ('5', null, 'group1/M00/00/01/rBEuvln6dYeAarloAACE4ckXuu0515.jpg');
INSERT INTO `essay_photo` VALUES ('6', null, 'group1/M00/00/01/rBEuvln6eyCASiVuAACE4ckXuu0536.jpg');
INSERT INTO `essay_photo` VALUES ('7', null, 'group1/M00/00/01/rBEuvln6e0qACu9wAACIponWObk609.jpg');
INSERT INTO `essay_photo` VALUES ('8', null, 'group1/M00/00/02/wKgrmln6mhWACJGfAAJTuPblSyc197.jpg');
INSERT INTO `essay_photo` VALUES ('9', null, 'group1/M00/00/02/rBEuvln7AV2ACYU4AAD_33uoJkU291.jpg');
INSERT INTO `essay_photo` VALUES ('10', null, 'group1/M00/00/02/rBEuvln7AvKAWwTGAATZuFJoABM239.jpg');
INSERT INTO `essay_photo` VALUES ('11', null, 'group1/M00/00/02/rBEuvln7Av6ALUScAAD_33uoJkU265.jpg');
INSERT INTO `essay_photo` VALUES ('12', null, 'group1/M00/00/02/rBEuvln7A1iAW6A6AACw-I3KgNQ892.jpg');
INSERT INTO `essay_photo` VALUES ('13', null, 'group1/M00/00/02/rBEuvln8NGSAAS6uAAC-OBHF7gs837.jpg');
INSERT INTO `essay_photo` VALUES ('14', null, 'group1/M00/00/02/rBEuvln9s9KAGTK8AA9EGjNKta4467.gif');
INSERT INTO `essay_photo` VALUES ('15', null, 'group1/M00/00/02/rBEuvln9wXiAbc3QAAAdn14Dea0265.jpg');

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `follow_id` int(11) DEFAULT NULL,
  `follow_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fk_uffollowid` (`follow_id`),
  KEY `FK_fk_ufuserid` (`user_id`),
  CONSTRAINT `FK_fk_uffollowid` FOREIGN KEY (`follow_id`) REFERENCES `user_basic` (`id`),
  CONSTRAINT `FK_fk_ufuserid` FOREIGN KEY (`user_id`) REFERENCES `user_basic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of follow
-- ----------------------------
INSERT INTO `follow` VALUES ('3', '100002', '100012', '2017-10-27 16:19:38');
INSERT INTO `follow` VALUES ('20', '100045', '100003', '2017-10-30 16:39:35');
INSERT INTO `follow` VALUES ('26', '100045', '100024', '2017-10-30 19:45:49');
INSERT INTO `follow` VALUES ('27', '100045', '100034', '2017-10-30 19:46:02');
INSERT INTO `follow` VALUES ('28', '100045', '100004', '2017-10-30 20:16:00');
INSERT INTO `follow` VALUES ('29', '100003', '100045', '2017-10-30 20:47:10');
INSERT INTO `follow` VALUES ('30', '100006', '100045', '2017-10-30 20:47:13');
INSERT INTO `follow` VALUES ('31', '100023', '100045', '2017-10-30 20:47:15');
INSERT INTO `follow` VALUES ('32', '100025', '100045', '2017-10-30 20:47:17');
INSERT INTO `follow` VALUES ('33', '100045', '100044', '2017-10-30 21:01:26');
INSERT INTO `follow` VALUES ('36', '100045', '100006', '2017-10-31 10:53:51');
INSERT INTO `follow` VALUES ('37', '100045', '100023', '2017-10-31 11:40:07');
INSERT INTO `follow` VALUES ('38', '100006', '100028', '2017-10-31 14:03:57');
INSERT INTO `follow` VALUES ('39', '100006', '100026', '2017-10-31 14:04:19');
INSERT INTO `follow` VALUES ('40', '100006', '100029', '2017-10-31 14:04:29');
INSERT INTO `follow` VALUES ('41', '100002', '100006', '2017-10-31 16:12:25');
INSERT INTO `follow` VALUES ('42', '100002', '100017', '2017-11-01 17:12:25');
INSERT INTO `follow` VALUES ('43', '100005', '100002', '2017-11-01 18:25:58');
INSERT INTO `follow` VALUES ('44', '100045', '100033', '2017-11-01 22:30:51');
INSERT INTO `follow` VALUES ('45', '100002', '100005', '2017-11-03 10:40:30');
INSERT INTO `follow` VALUES ('46', '100024', '100005', '2017-11-03 10:40:38');
INSERT INTO `follow` VALUES ('48', '100045', '100032', '2017-11-04 21:05:04');
INSERT INTO `follow` VALUES ('49', '100045', '100042', '2017-11-05 09:05:22');
INSERT INTO `follow` VALUES ('53', '100045', '100030', '2017-11-05 13:57:44');

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `meaning` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of label
-- ----------------------------
INSERT INTO `label` VALUES ('1', '高收入', 'high_salary');
INSERT INTO `label` VALUES ('2', '高学历', 'high_education');
INSERT INTO `label` VALUES ('3', '有车一族', 'have_car');
INSERT INTO `label` VALUES ('4', '有房一族', 'have_house');
INSERT INTO `label` VALUES ('5', '公务员', 'civil_servant');
INSERT INTO `label` VALUES ('6', '程序员', 'programmer');

-- ----------------------------
-- Table structure for letter
-- ----------------------------
DROP TABLE IF EXISTS `letter`;
CREATE TABLE `letter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_id` int(11) DEFAULT NULL,
  `recieve_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fk_letterrecieveid` (`recieve_id`),
  KEY `FK_fk_lettersendid` (`send_id`),
  CONSTRAINT `FK_fk_letterrecieveid` FOREIGN KEY (`recieve_id`) REFERENCES `user_basic` (`id`),
  CONSTRAINT `FK_fk_lettersendid` FOREIGN KEY (`send_id`) REFERENCES `user_basic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of letter
-- ----------------------------
INSERT INTO `letter` VALUES ('100001', '100001', '100005', 'hello', '2017-10-21 17:35:56', '1');
INSERT INTO `letter` VALUES ('100002', '100005', '100001', 'hello', '2017-10-21 17:36:19', '0');
INSERT INTO `letter` VALUES ('100003', '100005', '100001', 'hello', '2017-10-21 17:36:37', '0');
INSERT INTO `letter` VALUES ('100004', '100001', '100005', 'hello', '2017-10-21 17:37:01', '1');
INSERT INTO `letter` VALUES ('100005', '100005', '100001', 'hello', '2017-10-21 17:37:26', '0');
INSERT INTO `letter` VALUES ('100006', '100002', '100005', 'hello', '2017-10-23 10:18:50', '1');
INSERT INTO `letter` VALUES ('100007', '100003', '100002', 'hello', '2017-10-23 10:19:11', '0');
INSERT INTO `letter` VALUES ('100008', '100002', '100003', '123456678', '2017-10-23 10:19:43', '0');
INSERT INTO `letter` VALUES ('100009', '100005', '100003', 'hahahahaha', '2017-10-23 10:19:53', '0');
INSERT INTO `letter` VALUES ('100010', '100003', '100005', 'nihao', '2017-10-23 10:20:28', '1');
INSERT INTO `letter` VALUES ('100011', '100005', '100003', 'hahahahaha', '2017-10-23 10:20:41', '0');
INSERT INTO `letter` VALUES ('100012', '100005', '100007', 'hahahahaha', '2017-10-23 10:20:54', '0');
INSERT INTO `letter` VALUES ('100013', '100007', '100005', 'nihao', '2017-10-23 10:21:14', '1');
INSERT INTO `letter` VALUES ('100014', '100007', '100005', 'hahahahaha', '2017-10-23 10:21:36', '1');
INSERT INTO `letter` VALUES ('100015', '100005', '100006', 'hello', '2017-10-23 10:22:22', '0');
INSERT INTO `letter` VALUES ('100016', '100006', '100005', 'hahahahaha', '2017-10-23 10:22:39', '1');
INSERT INTO `letter` VALUES ('100017', '100005', '100006', 'nihao', '2017-10-23 10:22:59', '0');
INSERT INTO `letter` VALUES ('100018', '100002', '100003', 'hahahahaha', '2017-10-24 15:59:08', '0');
INSERT INTO `letter` VALUES ('100019', '100002', '100003', 'nihao', '2017-10-24 15:59:22', '0');
INSERT INTO `letter` VALUES ('100020', '100003', '100002', 'nihao', '2017-10-24 15:59:45', '0');
INSERT INTO `letter` VALUES ('100021', '100002', '100003', 'hahahahaha', '2017-10-24 16:00:02', '0');
INSERT INTO `letter` VALUES ('100022', '100005', '100001', 'hahahahaha', '2017-10-24 19:48:46', '0');
INSERT INTO `letter` VALUES ('100023', '100001', '100005', 'nihao', '2017-10-24 19:48:48', '1');
INSERT INTO `letter` VALUES ('100024', '100005', '100001', 'hahahahaha', '2017-10-24 19:48:49', '0');
INSERT INTO `letter` VALUES ('100025', '100002', '100005', 'hahahahaha', '2017-10-24 19:48:51', '1');
INSERT INTO `letter` VALUES ('100026', '100003', '100002', 'nihao', '2017-10-24 19:48:53', '0');
INSERT INTO `letter` VALUES ('100027', '100002', '100003', 'hahahahaha', '2017-10-24 19:48:54', '0');
INSERT INTO `letter` VALUES ('100028', '100005', '100003', 'hello', '2017-10-24 19:48:55', '0');
INSERT INTO `letter` VALUES ('100029', '100003', '100005', 'hahahahaha', '2017-10-24 19:48:56', '1');
INSERT INTO `letter` VALUES ('100030', '100005', '100003', 'nihao', '2017-10-24 19:48:57', '0');
INSERT INTO `letter` VALUES ('100031', '100005', '100007', 'hahahahaha', '2017-10-24 19:48:57', '0');
INSERT INTO `letter` VALUES ('100032', '100007', '100005', 'hello', '2017-10-24 19:48:58', '1');
INSERT INTO `letter` VALUES ('100033', '100007', '100005', 'hello', '2017-10-24 19:48:59', '1');
INSERT INTO `letter` VALUES ('100034', '100005', '100006', 'hello', '2017-10-24 19:49:05', '0');
INSERT INTO `letter` VALUES ('100035', '100002', '100003', 'nihao', '2017-10-24 19:50:17', '0');
INSERT INTO `letter` VALUES ('100036', '100003', '100002', 'nihao', '2017-10-24 19:50:24', '0');
INSERT INTO `letter` VALUES ('100037', '100003', '100002', '你现在在干什么呢？', '2017-10-26 08:46:46', '0');
INSERT INTO `letter` VALUES ('100038', '100003', '100002', '你现在在干什么呢？', '2017-10-26 08:46:49', '0');
INSERT INTO `letter` VALUES ('100039', '100003', '100002', '你现在在干什么呢？', '2017-10-26 08:46:50', '1');
INSERT INTO `letter` VALUES ('100040', '100003', '100002', '你现在在干什么呢？', '2017-10-26 08:46:50', '1');
INSERT INTO `letter` VALUES ('100041', '100003', '100002', '你是谁', '2017-10-26 08:47:24', '0');
INSERT INTO `letter` VALUES ('100042', '100003', '100002', 'how are you？', '2017-10-26 08:47:36', '0');
INSERT INTO `letter` VALUES ('100043', '100003', '100002', '你叫啥？', '2017-10-26 09:02:42', '0');
INSERT INTO `letter` VALUES ('100044', '100003', '100002', '你叫啥？', '2017-10-26 09:03:54', '0');
INSERT INTO `letter` VALUES ('100045', '100005', '100006', '你叫啥？', '2017-10-26 09:09:27', '0');
INSERT INTO `letter` VALUES ('100046', '100005', '100006', 'sad', '2017-10-26 14:56:33', '0');
INSERT INTO `letter` VALUES ('100047', '100005', '100006', 'asd', '2017-10-26 14:56:38', '0');
INSERT INTO `letter` VALUES ('100048', '100005', '100006', 'asd', '2017-10-26 14:56:43', '0');
INSERT INTO `letter` VALUES ('100049', '100005', '100006', 'sdsad', '2017-10-26 14:57:01', '0');
INSERT INTO `letter` VALUES ('100050', '100005', '100006', '啊实打实的', '2017-10-26 14:57:04', '0');
INSERT INTO `letter` VALUES ('100051', '100005', '100006', '撒大声地', '2017-10-26 14:57:07', '0');
INSERT INTO `letter` VALUES ('100052', '100005', '100006', '撒大声地', '2017-10-26 14:57:14', '0');
INSERT INTO `letter` VALUES ('100053', '100005', '100006', '啊实打实打算', '2017-10-26 14:57:17', '0');
INSERT INTO `letter` VALUES ('100054', '100005', '100006', '规范丰富的广泛的', '2017-10-26 14:57:19', '0');
INSERT INTO `letter` VALUES ('100055', '100005', '100006', '大师傅似的', '2017-10-26 14:57:24', '0');
INSERT INTO `letter` VALUES ('100056', '100005', '100006', 'a', '2017-10-26 16:45:23', '0');
INSERT INTO `letter` VALUES ('100057', '100005', '100006', 's', '2017-10-26 16:45:25', '0');
INSERT INTO `letter` VALUES ('100058', '100005', '100006', 's', '2017-10-26 16:45:26', '0');
INSERT INTO `letter` VALUES ('100059', '100005', '100006', 'a', '2017-10-26 16:46:44', '0');
INSERT INTO `letter` VALUES ('100060', '100005', '100006', 'a', '2017-10-26 16:46:47', '0');
INSERT INTO `letter` VALUES ('100061', '100005', '100006', 'a', '2017-10-26 16:46:53', '0');
INSERT INTO `letter` VALUES ('100062', '100005', '100006', 'a', '2017-10-26 16:59:26', '0');
INSERT INTO `letter` VALUES ('100063', '100005', '100006', 'a', '2017-10-26 16:59:29', '0');
INSERT INTO `letter` VALUES ('100064', '100005', '100006', 'a', '2017-10-26 16:59:30', '0');
INSERT INTO `letter` VALUES ('100065', '100005', '100006', '1', '2017-10-26 17:19:29', '0');
INSERT INTO `letter` VALUES ('100066', '100005', '100006', '1', '2017-10-26 17:19:32', '0');
INSERT INTO `letter` VALUES ('100067', '100005', '100006', '1', '2017-10-26 17:21:30', '0');
INSERT INTO `letter` VALUES ('100068', '100005', '100006', 'q', '2017-10-26 17:22:38', '0');
INSERT INTO `letter` VALUES ('100069', '100003', '100002', 'gaoshaoshuai ', '2017-10-26 20:33:11', '0');
INSERT INTO `letter` VALUES ('100070', '100005', '100001', 'hello', '2017-10-27 10:04:08', '0');
INSERT INTO `letter` VALUES ('100071', '100005', '100010', 'qw', '2017-10-27 10:22:41', '0');
INSERT INTO `letter` VALUES ('100072', '100005', '100039', '123', '2017-10-27 10:31:43', '0');
INSERT INTO `letter` VALUES ('100073', '100005', '100015', 'asd', '2017-10-27 10:34:12', '0');
INSERT INTO `letter` VALUES ('100074', '100012', '100001', '你好\n', '2017-10-27 16:58:28', '0');
INSERT INTO `letter` VALUES ('100075', '100012', '100005', '你好', '2017-10-27 16:58:42', '1');
INSERT INTO `letter` VALUES ('100076', '100045', '100003', '有钱', '2017-10-27 17:22:51', '0');
INSERT INTO `letter` VALUES ('100077', '100045', '100015', 'yi \n', '2017-10-27 17:24:39', '0');
INSERT INTO `letter` VALUES ('100078', '100045', '100015', 'yi ', '2017-10-27 17:28:08', '0');
INSERT INTO `letter` VALUES ('100079', '100005', '100034', 'lisi9\n', '2017-10-30 09:53:39', '0');
INSERT INTO `letter` VALUES ('100080', '100005', '100001', 'aa\n\n', '2017-10-30 10:10:07', '0');
INSERT INTO `letter` VALUES ('100081', '100001', '100001', 'nihao \n', '2017-10-30 19:34:11', '0');
INSERT INTO `letter` VALUES ('100082', '100001', '100001', 'hello', '2017-10-30 19:34:15', '0');
INSERT INTO `letter` VALUES ('100083', '100001', '100001', 'my name is david', '2017-10-30 19:34:28', '0');
INSERT INTO `letter` VALUES ('100084', '100001', '100002', '1', '2017-10-30 19:35:46', '1');
INSERT INTO `letter` VALUES ('100085', '100001', '100003', 'qw', '2017-10-30 19:44:16', '0');
INSERT INTO `letter` VALUES ('100086', '100001', '100005', '1', '2017-10-30 19:46:54', '1');
INSERT INTO `letter` VALUES ('100087', '100012', '100005', 'nh', '2017-10-31 11:23:54', '1');
INSERT INTO `letter` VALUES ('100088', '100012', '100005', 'nihao ', '2017-10-31 11:23:59', '1');
INSERT INTO `letter` VALUES ('100089', '100012', '100005', 'sad', '2017-10-31 11:25:50', '1');
INSERT INTO `letter` VALUES ('100090', '100012', '100005', 'asd', '2017-10-31 11:26:07', '1');
INSERT INTO `letter` VALUES ('100091', '100012', '100009', '123', '2017-10-31 11:57:06', '0');
INSERT INTO `letter` VALUES ('100092', '100002', '100045', '你好啊', '2017-10-31 15:28:35', '0');
INSERT INTO `letter` VALUES ('100093', '100002', '100045', '你好奔跑的小猪', '2017-10-31 16:33:05', '1');
INSERT INTO `letter` VALUES ('100094', '100002', '100045', '好好啊', '2017-10-31 16:34:45', '0');
INSERT INTO `letter` VALUES ('100095', '100012', '100009', '123123', '2017-10-31 19:30:08', '0');
INSERT INTO `letter` VALUES ('100096', '100009', '100001', '123', '2017-10-31 19:30:30', '0');
INSERT INTO `letter` VALUES ('100097', '100002', '100017', '你好啊', '2017-11-01 17:12:33', '0');
INSERT INTO `letter` VALUES ('100098', '100005', '100002', 'hello', '2017-11-01 18:24:54', '1');
INSERT INTO `letter` VALUES ('100099', '100005', '100009', 'nihao a ', '2017-11-01 20:25:07', '0');
INSERT INTO `letter` VALUES ('100100', '100005', '100009', 'hello啊', '2017-11-01 20:25:13', '0');
INSERT INTO `letter` VALUES ('100101', '100045', '100033', '哈哈哈', '2017-11-01 22:31:52', '0');
INSERT INTO `letter` VALUES ('100102', '100045', '100033', '...', '2017-11-01 22:44:40', '0');
INSERT INTO `letter` VALUES ('100103', '100045', '100032', '123', '2017-11-01 22:57:34', '0');
INSERT INTO `letter` VALUES ('100104', '100005', '100002', 'nihao', '2017-11-02 09:33:13', '1');
INSERT INTO `letter` VALUES ('100105', '100005', '100028', 'nihao，麦粒', '2017-11-02 10:40:08', '0');
INSERT INTO `letter` VALUES ('100106', '100005', '100028', 'nihao', '2017-11-02 12:11:55', '0');
INSERT INTO `letter` VALUES ('100107', '100005', '100003', 'nihao', '2017-11-02 12:12:52', '0');
INSERT INTO `letter` VALUES ('100108', '100002', '100024', 'haha ', '2017-11-02 14:28:08', '0');
INSERT INTO `letter` VALUES ('100109', '100045', '100009', 'df', '2017-11-05 13:57:12', '0');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `pub_time` datetime DEFAULT NULL,
  `like_count` int(11) DEFAULT '0',
  `reply_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_fk_msguserid` (`user_id`),
  CONSTRAINT `FK_fk_msguserid` FOREIGN KEY (`user_id`) REFERENCES `user_basic` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '100005', 'gooby my almost lover goobye my hopeless dream', '2017-10-30 14:01:25', '0', '0');
INSERT INTO `message` VALUES ('5', '100002', '可以发动太吗', '2017-10-26 09:09:52', '2', '1');
INSERT INTO `message` VALUES ('7', '100002', '开始将东方航空是否是打开发货时间付费u复合肥可视电话防守打法开始将上岛咖啡看司法解释快递费', '2017-10-26 15:48:38', '2', '3');
INSERT INTO `message` VALUES ('10', '100026', '至少今天你欠缺的明天见，人间的圆总是不够远', '2017-10-31 14:46:37', '2', '1');
INSERT INTO `message` VALUES ('11', '100028', 'its shame to no one to blame, mother sweep,chidren sleep', '2017-10-31 14:48:27', '1', '0');
INSERT INTO `message` VALUES ('12', '100029', 'u will love me  i will lover if u will just take me it might just complete me', '2017-10-31 14:49:36', '2', '2');
INSERT INTO `message` VALUES ('13', '100045', '夏天的氛围，打开电台，我要踢走这些忧郁，脚踩着浪花。在树荫下畅饮', '2017-10-31 14:50:45', '3', '2');
INSERT INTO `message` VALUES ('16', '100006', 'baby i feel crazy all night all night and every day.give me something but you say nothing. i just wanna keep calling your name util you come back home', '2017-10-31 15:55:42', '2', '4');
INSERT INTO `message` VALUES ('17', '100002', '走了一趟那绚烂华丽背后的虚假，想那些愉悦，的哪些忧伤', '2017-10-31 16:13:34', '2', '1');
INSERT INTO `message` VALUES ('18', '100005', '还没好好恋一次爱，十二生肖就轮了两遍了～我已长发及腰，但是，没有但是了，头发该剪了～都说本命年犯太岁，今年好像也没有很不顺，但求15年转运～你好！再见！', '2017-11-01 18:55:13', '3', '3');
INSERT INTO `message` VALUES ('21', '100045', 'hehe', '2017-11-05 14:17:06', '1', '0');

-- ----------------------------
-- Table structure for message_like
-- ----------------------------
DROP TABLE IF EXISTS `message_like`;
CREATE TABLE `message_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `like_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fk_msgrlikemid` (`message_id`),
  KEY `FK_fk_msgruid` (`user_id`),
  CONSTRAINT `FK_fk_msgrlikemid` FOREIGN KEY (`message_id`) REFERENCES `message` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_fk_msgruid` FOREIGN KEY (`user_id`) REFERENCES `user_basic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message_like
-- ----------------------------
INSERT INTO `message_like` VALUES ('1', '7', '100002', '2017-10-26 18:37:08');
INSERT INTO `message_like` VALUES ('3', '5', '100002', '2017-10-26 19:39:21');
INSERT INTO `message_like` VALUES ('5', '13', '100006', '2017-10-31 15:13:24');
INSERT INTO `message_like` VALUES ('6', '12', '100006', '2017-10-31 15:33:51');
INSERT INTO `message_like` VALUES ('7', '11', '100006', '2017-10-31 15:36:20');
INSERT INTO `message_like` VALUES ('8', '10', '100006', '2017-10-31 15:41:08');
INSERT INTO `message_like` VALUES ('9', '17', '100002', '2017-10-31 16:13:55');
INSERT INTO `message_like` VALUES ('10', '16', '100002', '2017-10-31 16:14:12');
INSERT INTO `message_like` VALUES ('13', '13', '100002', '2017-11-01 15:54:14');
INSERT INTO `message_like` VALUES ('14', '10', '100002', '2017-11-01 15:55:41');
INSERT INTO `message_like` VALUES ('15', '17', '100005', '2017-11-01 18:52:34');
INSERT INTO `message_like` VALUES ('16', '16', '100005', '2017-11-01 18:52:35');
INSERT INTO `message_like` VALUES ('19', '13', '100005', '2017-11-01 18:52:44');
INSERT INTO `message_like` VALUES ('20', '12', '100005', '2017-11-01 18:52:45');
INSERT INTO `message_like` VALUES ('21', '7', '100005', '2017-11-01 18:53:00');
INSERT INTO `message_like` VALUES ('22', '5', '100005', '2017-11-01 18:53:02');
INSERT INTO `message_like` VALUES ('23', '18', '100005', '2017-11-01 18:55:22');
INSERT INTO `message_like` VALUES ('24', '18', '100002', '2017-11-02 09:30:45');
INSERT INTO `message_like` VALUES ('29', '18', '100045', '2017-11-05 09:15:14');
INSERT INTO `message_like` VALUES ('30', '21', '100045', '2017-11-05 14:17:14');

-- ----------------------------
-- Table structure for message_reply
-- ----------------------------
DROP TABLE IF EXISTS `message_reply`;
CREATE TABLE `message_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `reply_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fk_mrmsgid` (`message_id`),
  KEY `FK_fk_msgruserid` (`user_id`),
  CONSTRAINT `FK_fk_mrmsgid` FOREIGN KEY (`message_id`) REFERENCES `message` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_fk_msgruserid` FOREIGN KEY (`user_id`) REFERENCES `user_basic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message_reply
-- ----------------------------
INSERT INTO `message_reply` VALUES ('1', '7', '100002', '是防守打法', '2017-10-26 19:38:45');
INSERT INTO `message_reply` VALUES ('6', '7', '100002', 'your finger tuch aross my skin ', '2017-10-27 14:16:24');
INSERT INTO `message_reply` VALUES ('8', '7', '100002', 'i nerver want to see you unhappy ', '2017-10-27 14:17:24');
INSERT INTO `message_reply` VALUES ('12', '13', '100006', '说的真好！', '2017-10-31 15:43:06');
INSERT INTO `message_reply` VALUES ('13', '13', '100006', '美女可以留个联系方式吗', '2017-10-31 15:43:53');
INSERT INTO `message_reply` VALUES ('14', '12', '100006', 'i will lover you util  you take me away', '2017-10-31 15:45:21');
INSERT INTO `message_reply` VALUES ('15', '5', '100006', '可以的哟，哈哈，我都不知道怎么成功的', '2017-10-31 15:45:57');
INSERT INTO `message_reply` VALUES ('16', '12', '100006', 'so ,if want go ,baby lets go .if want role ,now ready to role.', '2017-10-31 15:53:42');
INSERT INTO `message_reply` VALUES ('17', '16', '100002', '我要怎么说我不爱你，我要怎么做才能死心，我们一再一再的证明。。。。', '2017-10-31 16:16:06');
INSERT INTO `message_reply` VALUES ('18', '16', '100002', 'i miss you so much tonight give me a hug in loney night', '2017-10-31 16:16:57');
INSERT INTO `message_reply` VALUES ('19', '16', '100002', 'i feel so bad tonight much i drink so much coffee i can not sleep day and night ', '2017-10-31 16:17:42');
INSERT INTO `message_reply` VALUES ('21', '10', '100002', 'when i say all i needs id a little love in dark', '2017-10-31 16:20:46');
INSERT INTO `message_reply` VALUES ('22', '16', '100005', 'i just a little girl lost in a moment i am so scary but i don\'t know it i can\'t figur it out', '2017-11-01 09:31:09');
INSERT INTO `message_reply` VALUES ('23', '18', '100005', '\"你知道深爱是什么感觉吗?\" \"就像房间突然黑了，我不是去找灯而是去找他。\"', '2017-11-01 18:55:44');
INSERT INTO `message_reply` VALUES ('24', '17', '100005', '一个小时前我想吃玉米，但是因为冷不想出去就吃了包薯片。半个小时前我又想吃玉米于是我吃了一个橙子。我到现在还想吃玉米，所以我又吃了饼干和酸奶，但是我还想吃玉米。这种就像我真的喜欢你，半路喜欢别人也没有用，最后还是喜欢你。', '2017-11-01 18:56:10');
INSERT INTO `message_reply` VALUES ('25', '18', '100002', '好的呢', '2017-11-02 09:30:55');
INSERT INTO `message_reply` VALUES ('28', '18', '100045', null, '2017-11-05 09:15:30');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `pub_time` datetime DEFAULT NULL,
  `pub_obj` int(11) DEFAULT NULL COMMENT '0:所有用户，1:vip，2:星级用户，Id:用户id',
  PRIMARY KEY (`id`),
  KEY `FK_fk_noticeaaid` (`admin_id`),
  CONSTRAINT `FK_fk_noticeaaid` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '1002', '会员通知', '尊敬的用户您好，恭喜您成为我们的VIP会员', '2017-11-02 19:13:48', '100002');
INSERT INTO `notice` VALUES ('2', '1004', '欢迎加入寻爱大家庭', '欢迎加入寻爱大家庭，希望在这里能找到您的另一半', '2017-11-02 20:33:53', '0');
INSERT INTO `notice` VALUES ('3', '1005', '专门给VIP用户发的通知', '专门给VIP用户发的通知', '2017-11-02 20:40:43', '1');
INSERT INTO `notice` VALUES ('4', '1003', '专门给星级用户发的通知', '专门给用户用户发的通知', '2017-11-02 20:41:03', '2');
INSERT INTO `notice` VALUES ('6', '1001', '真爱会员俱乐部', '敬爱的会员您好，为了方便用户进行交流，我们成立了线下交流俱乐部，欢迎报名加入，详情联系QQ:76558337', '2017-11-03 11:35:59', '0');
INSERT INTO `notice` VALUES ('8', '1001', '你最近行为不当，被其他用户举报！', '你最近行为不当，被其他用户举报！', '2017-11-03 16:00:18', '100033');
INSERT INTO `notice` VALUES ('9', null, '成功故事审核', '尊敬的用户，您的爱人发布了一条成功故事等待您审核呢，快来看看吧', '2017-11-04 20:34:59', '100005');
INSERT INTO `notice` VALUES ('10', null, '成功故事审核', '尊敬的用户，您的爱人发布了一条成功故事等待您审核呢，快来看看吧<a href =http://localhost/success_story/confirmSuccessStory/22>http://localhost/success_story/confirmSuccessStory/22</a>', '2017-11-04 21:33:00', '100045');
INSERT INTO `notice` VALUES ('11', null, '成功故事审核', '尊敬的用户，您的爱人发布了一条成功故事等待您审核呢，快来看看吧<a href =http://localhost/success_story/confirmSuccessStory/25>http://localhost/success_story/confirmSuccessStory/25</a>', '2017-11-05 13:10:54', '100045');
INSERT INTO `notice` VALUES ('13', null, '成功故事审核', '尊敬的用户，您的爱人发布了一条成功故事等待您审核呢，快来看看吧<a href=\"http://localhost/success_story/confirmSuccessStory/27?left=100012\">http://localhost/success_story/confirmSuccessStory/27?left=100012</a>', '2017-11-05 13:39:54', '100045');
INSERT INTO `notice` VALUES ('14', null, '成功故事审核', '尊敬的用户，您的爱人发布了一条成功故事等待您审核呢，快来看看吧<a href=\"http://localhost/success_story/confirmSuccessStory/28?left=100012\">http://localhost/success_story/confirmSuccessStory/28?left=100012</a>', '2017-11-05 13:53:11', '100045');

-- ----------------------------
-- Table structure for notice_user
-- ----------------------------
DROP TABLE IF EXISTS `notice_user`;
CREATE TABLE `notice_user` (
  `notice_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `read_time` datetime NOT NULL,
  PRIMARY KEY (`notice_id`),
  KEY `FK_fk_unuid` (`user_id`),
  CONSTRAINT `FK_fk_unnid` FOREIGN KEY (`notice_id`) REFERENCES `notice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_fk_unuid` FOREIGN KEY (`user_id`) REFERENCES `user_basic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice_user
-- ----------------------------
INSERT INTO `notice_user` VALUES ('1', '100002', '2017-11-03 11:12:10');
INSERT INTO `notice_user` VALUES ('2', '100002', '2017-11-03 11:12:06');
INSERT INTO `notice_user` VALUES ('3', '100002', '2017-11-03 15:15:53');
INSERT INTO `notice_user` VALUES ('4', '100002', '2017-11-03 11:02:31');
INSERT INTO `notice_user` VALUES ('6', '100002', '2017-11-03 15:15:46');
INSERT INTO `notice_user` VALUES ('10', '100045', '2017-11-04 21:35:35');
INSERT INTO `notice_user` VALUES ('11', '100045', '2017-11-05 13:11:55');
INSERT INTO `notice_user` VALUES ('13', '100045', '2017-11-05 13:40:07');
INSERT INTO `notice_user` VALUES ('14', '100045', '2017-11-05 13:53:56');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `value` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '用户信息查询', 'user:select');
INSERT INTO `permission` VALUES ('2', '用户状态修改', 'user:update');
INSERT INTO `permission` VALUES ('3', '标签信息查询', 'label:select');
INSERT INTO `permission` VALUES ('4', '增加新标签', 'label:insert');
INSERT INTO `permission` VALUES ('5', '删除标签', 'label:delete');
INSERT INTO `permission` VALUES ('6', '修改标签', 'label:update');
INSERT INTO `permission` VALUES ('7', '作家信息查询', 'writer:select');
INSERT INTO `permission` VALUES ('8', '新增作家', 'writer:insert');
INSERT INTO `permission` VALUES ('9', '修改作家账户', 'writer:update');
INSERT INTO `permission` VALUES ('10', '文章信息查询', 'essay:select');
INSERT INTO `permission` VALUES ('11', '文章状态修改', 'essay:update');
INSERT INTO `permission` VALUES ('12', '文章删除', 'essay:delete');
INSERT INTO `permission` VALUES ('13', '文章审核', 'essay:authenticate');
INSERT INTO `permission` VALUES ('14', '用户动态信息查询', 'message:select');
INSERT INTO `permission` VALUES ('15', '删除用户动态', 'message:select');
INSERT INTO `permission` VALUES ('16', '成功故事信息查询', 'successStory:select');
INSERT INTO `permission` VALUES ('17', '成功故事审核', 'successStory:authenticate');
INSERT INTO `permission` VALUES ('18', '成功故事状态修改', 'successStory:update');
INSERT INTO `permission` VALUES ('19', '通知列表查看', 'notice:select');
INSERT INTO `permission` VALUES ('20', '发布新通知', 'notice:insert');
INSERT INTO `permission` VALUES ('21', '投诉信息查询', 'complain:select');
INSERT INTO `permission` VALUES ('24', '投诉审核', 'complain:authenticate');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `value` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '用户管理', 'user');
INSERT INTO `role` VALUES ('2', '寻爱驿站管理', 'stage');
INSERT INTO `role` VALUES ('3', '成功故事管理', 'successStory');
INSERT INTO `role` VALUES ('4', '通知管理', 'notice');
INSERT INTO `role` VALUES ('5', '投诉管理', 'complain');
INSERT INTO `role` VALUES ('6', '管理员管理', 'admin');
INSERT INTO `role` VALUES ('7', '权限管理', 'permission');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  KEY `FK_fk_rmrid` (`role_id`),
  KEY `FK_fk_rmmid` (`permission_id`),
  CONSTRAINT `FK_fk_rmmid` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_fk_rmrid` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('2', '7');
INSERT INTO `role_permission` VALUES ('2', '8');
INSERT INTO `role_permission` VALUES ('2', '9');
INSERT INTO `role_permission` VALUES ('2', '10');
INSERT INTO `role_permission` VALUES ('2', '11');
INSERT INTO `role_permission` VALUES ('2', '12');
INSERT INTO `role_permission` VALUES ('2', '13');
INSERT INTO `role_permission` VALUES ('2', '14');
INSERT INTO `role_permission` VALUES ('2', '15');
INSERT INTO `role_permission` VALUES ('3', '16');
INSERT INTO `role_permission` VALUES ('3', '17');
INSERT INTO `role_permission` VALUES ('3', '18');
INSERT INTO `role_permission` VALUES ('4', '19');
INSERT INTO `role_permission` VALUES ('4', '20');
INSERT INTO `role_permission` VALUES ('5', '21');
INSERT INTO `role_permission` VALUES ('1', '1');
INSERT INTO `role_permission` VALUES ('1', '2');
INSERT INTO `role_permission` VALUES ('1', '3');
INSERT INTO `role_permission` VALUES ('1', '4');
INSERT INTO `role_permission` VALUES ('1', '5');
INSERT INTO `role_permission` VALUES ('1', '6');
INSERT INTO `role_permission` VALUES ('1', '21');
INSERT INTO `role_permission` VALUES ('5', '24');
INSERT INTO `role_permission` VALUES ('1', '24');

-- ----------------------------
-- Table structure for success_story
-- ----------------------------
DROP TABLE IF EXISTS `success_story`;
CREATE TABLE `success_story` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `left_user` int(11) DEFAULT NULL,
  `right_user` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `success_time` datetime DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `reply_count` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0：下架，1：审核通过，2：待右手审核，3：待管理员审核',
  `admin_id` int(11) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fk_ssadminid` (`admin_id`),
  KEY `FK_fk_ucleftid` (`left_user`),
  KEY `FK_fk_ucrightid` (`right_user`),
  CONSTRAINT `FK_fk_ssadminid` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `FK_fk_ucleftid` FOREIGN KEY (`left_user`) REFERENCES `user_basic` (`id`),
  CONSTRAINT `FK_fk_ucrightid` FOREIGN KEY (`right_user`) REFERENCES `user_basic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of success_story
-- ----------------------------
INSERT INTO `success_story` VALUES ('7', '100001', '100005', '我们终于在一起了', 'group1/M00/00/01/rBEuvln36smAQxWyAAANYOe_ySM506.txt', '2017-10-31 11:15:22', '0', '0', '1', '1001', '因为身边有朋友在珍爱网服务过，有成功找到对象的，也有没找到的，不过这种个人因素占很大比重的事情，苛求百分百的成功率...', 'group1/M00/00/01/rBEuvln5h9KAHkxjAADpJ8VFujg415.jpg');
INSERT INTO `success_story` VALUES ('8', '100007', '100004', '我们的恋爱经历', 'group1/M00/00/01/rBEuvln363eAYpFfAAAMbxaryWM862.txt', '2017-10-31 11:18:15', '0', '1', '1', null, '大城市工作的女生格外难找对象，据说深圳的男女比例是三比七，大多女生都是单身，不知不觉我也快...', 'group1/M00/00/01/rBEuvln6dQCAAC3AAACE4ckXuu0413.jpg');
INSERT INTO `success_story` VALUES ('9', '100012', '100041', '我们在一起了~~', 'group1/M00/00/01/rBEuvln36-uAUFIgAAAM8ORZRds336.txt', '2017-10-31 11:20:12', '0', '0', '2', null, '我是个爽朗的东北姑娘，176的高高个子，爱运动爱生活，对一切都充满了积极的态度。生活也没什么不顺心，除了爱...', 'group1/M00/00/02/rBEuvln6vX6ABRmFAACw-I3KgNQ900.jpg');
INSERT INTO `success_story` VALUES ('10', '100002', '100005', '我们在一起两年了', 'group1/M00/00/01/rBEuvln5h9KAWTp8AAAK8mk0WfU591.txt', '2017-11-01 16:37:38', '0', '0', '2', null, '爱情是人类永恒的话题，电影里总会有一条感情线贯穿始末，歌曲里有人在感悟爱情轻轻吟唱，文章里有对爱情入木三分的描绘。年轻男女们都会有对爱情的美好想象，我自然也不能免俗，会在看到街上情侣手牵手散步的时候想...', 'group1/M00/00/02/rBEuvln7AxOAYtxbAAC-OBHF7gs459.jpg');
INSERT INTO `success_story` VALUES ('13', '100009', '100007', '牵手最好的你', 'group1/M00/00/02/rBEuvln7AxOAC4dSAAAL1RlhH6Q222.txt', '2017-11-02 19:35:45', '0', '0', '3', null, '在我身上投射着很多理工科男生的缩影，完成学业参加工作后，生活圈子里很少再有合适的女生出现...', 'group1/M00/00/02/rBEuvln7AxOAYtxbAAC-OBHF7gs459.jpg');
INSERT INTO `success_story` VALUES ('14', '100011', '100016', '和你一起，把生活写成诗', 'group1/M00/00/02/rBEuvln7A3KAcfTaAAAPXqtkdB0109.txt', '2017-11-02 19:37:20', '0', '2', '1', null, '某一个午夜梦回，窗外整夜亮着的霓虹灯透过窗帘缝隙照进灯光到卧室里，看着斑驳光影里空荡荡的半边床...', 'group1/M00/00/02/rBEuvln7A3KAW9n1AAB1e4fljfE551.jpg');
INSERT INTO `success_story` VALUES ('15', '100012', '100015', '爱情甜蜜蜜', 'group1/M00/00/02/rBEuvln7A62AeVrLAAAOhKghaQo626.txt', '2017-10-28 19:38:19', '1', '1', '1', null, '某一个午夜梦回，窗外整夜亮着的霓虹灯透过窗帘缝隙照进灯光到卧室里，看着斑驳光影里空荡荡的半边床...', 'group1/M00/00/02/rBEuvln7A62AXic8AAEEkn7INaI758.jpg');
INSERT INTO `success_story` VALUES ('16', '100035', '100023', '我们的恋爱经历', 'group1/M00/00/01/rBEuvln363eAYpFfAAAMbxaryWM862.txt', '2017-11-02 19:41:03', '0', '0', '2', null, '因为身边有朋友在珍爱网服务过，有成功找到对象的，也有没找到的，不过这种个人因素占很大比重的事情，苛求百分百的成功率...', 'group1/M00/00/01/rBEuvln5h9KAHkxjAADpJ8VFujg415.jpg');
INSERT INTO `success_story` VALUES ('17', '100036', '100024', '我们在一起了~~', 'group1/M00/00/01/rBEuvln36-uAUFIgAAAM8ORZRds336.txt', '2017-11-02 19:41:04', '0', '0', '2', null, '大城市工作的女生格外难找对象，据说深圳的男女比例是三比七，大多女生都是单身，不知不觉我也快...', 'group1/M00/00/01/rBEuvln6dQCAAC3AAACE4ckXuu0413.jpg');
INSERT INTO `success_story` VALUES ('18', '100037', '100025', '我们在一起两年了', 'group1/M00/00/01/rBEuvln5h9KAWTp8AAAK8mk0WfU591.txt', '2017-11-02 19:41:05', '21', '19', '1', null, '我是个爽朗的东北姑娘，176的高高个子，爱运动爱生活，对一切都充满了积极的态度。生活也没什么不顺心，除了爱...', 'group1/M00/00/02/rBEuvln6vX6ABRmFAACw-I3KgNQ900.jpg');
INSERT INTO `success_story` VALUES ('19', '100038', '100026', '测试文章1', 'group1/M00/00/01/rBEuvln6dQCAHyGMAAAAhqdKHqA200.txt', '2017-11-02 19:41:06', '0', '3', '1', null, '爱情是人类永恒的话题，电影里总会有一条感情线贯穿始末，歌曲里有人在感悟爱情轻轻吟唱，文章里有对爱情入木三分的描绘。年轻男女们都会有对爱情的美好想象，我自然也不能免俗，会在看到街上情侣手牵手散步的时候想...', 'group1/M00/00/02/rBEuvln7AxOAYtxbAAC-OBHF7gs459.jpg');
INSERT INTO `success_story` VALUES ('22', '100041', '100029', '和你一起，把生活写成诗', 'group1/M00/00/02/rBEuvln7A3KAcfTaAAAPXqtkdB0109.txt', '2017-11-02 19:41:09', '0', '0', '1', null, '在我身上投射着很多理工科男生的缩影，完成学业参加工作后，生活圈子里很少再有合适的女生出现...', 'group1/M00/00/02/rBEuvln7AxOAYtxbAAC-OBHF7gs459.jpg');
INSERT INTO `success_story` VALUES ('25', '100012', '100045', '桂豪啊好', 'group1/M00/00/02/rBEuvln-nV6ATfE5AAAAFln4wyA316.txt', '2017-11-05 13:10:54', '0', '0', '2', null, '测试文章111...', 'group1/M00/00/02/rBEuvln-nV6AcSUmAADpJ8VFujg444.jpg');
INSERT INTO `success_story` VALUES ('27', '100012', '100045', '桂豪啊好11111222', 'group1/M00/00/02/rBEuvln-pCqALC8DAAAACwOwYUA666.txt', '2017-11-05 13:39:54', '0', '0', '3', null, '2222...', 'group1/M00/00/02/rBEuvln-pCqAQ1EMAAB1e4fljfE938.jpg');
INSERT INTO `success_story` VALUES ('28', '100012', '100045', '3333333333', 'group1/M00/00/02/rBEuvln-p0aAQ-nzAAAAFZb6mE8673.txt', '2017-11-05 13:53:11', '0', '0', '1', null, '33333333333333...', 'group1/M00/00/02/rBEuvln-p0aAP8ugAAB1e4fljfE700.jpg');

-- ----------------------------
-- Table structure for success_story_like
-- ----------------------------
DROP TABLE IF EXISTS `success_story_like`;
CREATE TABLE `success_story_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `success_story_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `like_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fk_sslikesid` (`success_story_id`),
  KEY `FK_fk_sslikeuid` (`user_id`),
  CONSTRAINT `FK_fk_sslikesid` FOREIGN KEY (`success_story_id`) REFERENCES `success_story` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_fk_sslikeuid` FOREIGN KEY (`user_id`) REFERENCES `user_basic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of success_story_like
-- ----------------------------
INSERT INTO `success_story_like` VALUES ('21', '18', '100005', '2017-11-04 17:58:08');
INSERT INTO `success_story_like` VALUES ('22', '15', '100045', '2017-11-05 09:14:01');

-- ----------------------------
-- Table structure for success_story_reply
-- ----------------------------
DROP TABLE IF EXISTS `success_story_reply`;
CREATE TABLE `success_story_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ss_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `reply_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fk_ssrssid` (`ss_id`),
  KEY `FK_fk_ssruserid` (`user_id`),
  CONSTRAINT `FK_fk_ssrssid` FOREIGN KEY (`ss_id`) REFERENCES `success_story` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_fk_ssruserid` FOREIGN KEY (`user_id`) REFERENCES `user_basic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of success_story_reply
-- ----------------------------
INSERT INTO `success_story_reply` VALUES ('1', '14', '100005', '恭喜恭喜', '2017-11-04 17:06:46');
INSERT INTO `success_story_reply` VALUES ('2', '18', '100005', '真好', '2017-11-04 17:33:28');
INSERT INTO `success_story_reply` VALUES ('3', '18', '100005', '棒棒哒！', '2017-11-04 17:34:00');
INSERT INTO `success_story_reply` VALUES ('4', '18', '100005', '123', '2017-11-04 20:10:42');
INSERT INTO `success_story_reply` VALUES ('5', '18', '100005', '123', '2017-11-04 20:10:45');
INSERT INTO `success_story_reply` VALUES ('6', '18', '100005', '123', '2017-11-04 20:10:47');
INSERT INTO `success_story_reply` VALUES ('7', '18', '100005', '123', '2017-11-04 20:10:50');
INSERT INTO `success_story_reply` VALUES ('8', '18', '100005', '123', '2017-11-04 20:10:53');
INSERT INTO `success_story_reply` VALUES ('9', '18', '100005', '真好', '2017-11-04 20:11:16');
INSERT INTO `success_story_reply` VALUES ('10', '18', '100005', '棒棒哒！', '2017-11-04 20:11:17');
INSERT INTO `success_story_reply` VALUES ('11', '18', '100005', '123', '2017-11-04 20:11:18');
INSERT INTO `success_story_reply` VALUES ('12', '18', '100005', '123', '2017-11-04 20:11:19');
INSERT INTO `success_story_reply` VALUES ('13', '18', '100005', '123', '2017-11-04 20:11:20');
INSERT INTO `success_story_reply` VALUES ('14', '18', '100005', '123', '2017-11-04 20:11:21');
INSERT INTO `success_story_reply` VALUES ('15', '18', '100005', '123', '2017-11-04 20:11:23');
INSERT INTO `success_story_reply` VALUES ('16', '18', '100005', '真好', '2017-11-04 20:11:21');
INSERT INTO `success_story_reply` VALUES ('17', '18', '100005', '棒棒哒！', '2017-11-04 20:11:24');
INSERT INTO `success_story_reply` VALUES ('18', '18', '100005', '123', '2017-11-04 20:11:25');
INSERT INTO `success_story_reply` VALUES ('19', '18', '100005', '123', '2017-11-04 20:11:26');
INSERT INTO `success_story_reply` VALUES ('20', '18', '100005', '123', '2017-11-04 20:11:26');
INSERT INTO `success_story_reply` VALUES ('21', '19', '100005', '咦', '2017-11-04 20:26:19');
INSERT INTO `success_story_reply` VALUES ('22', '19', '100005', '不错哦', '2017-11-04 20:26:34');
INSERT INTO `success_story_reply` VALUES ('23', '19', '100005', '小伙子', '2017-11-04 20:26:50');
INSERT INTO `success_story_reply` VALUES ('24', '14', '100005', 'qwe', '2017-11-04 20:33:42');
INSERT INTO `success_story_reply` VALUES ('25', '15', '100045', 'nnk', '2017-11-05 09:13:55');
INSERT INTO `success_story_reply` VALUES ('26', '8', '100045', 'ddd', '2017-11-05 14:22:24');

-- ----------------------------
-- Table structure for taocan
-- ----------------------------
DROP TABLE IF EXISTS `taocan`;
CREATE TABLE `taocan` (
  `taocan_id` varchar(10) DEFAULT NULL,
  `search_display_image` varchar(10) DEFAULT NULL,
  `display_image_id` varchar(10) DEFAULT NULL,
  `title` varchar(10) DEFAULT NULL,
  `introduce` varchar(10) DEFAULT NULL,
  `low_price` varchar(10) DEFAULT NULL,
  `high_price` varchar(10) DEFAULT NULL,
  `activity_form` varchar(10) DEFAULT NULL,
  `activity_place` varchar(10) DEFAULT NULL,
  `enable_area` varchar(10) DEFAULT NULL,
  `taocan_type_a` varchar(10) DEFAULT NULL,
  `taocan_type_a_price` varchar(10) DEFAULT NULL,
  `taocan_type_b` varchar(10) DEFAULT NULL,
  `taocan_type_b_price` varchar(10) DEFAULT NULL,
  `taocan_type_c` varchar(10) DEFAULT NULL,
  `taocan_type_c_price` varchar(10) DEFAULT NULL,
  `introduce_image_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of taocan
-- ----------------------------
INSERT INTO `taocan` VALUES ('3', 'logo.png', '1', '浪漫爱情岛', '浪漫爱情岛', '999', '9999', '雅典', '雅典', '雅典', '欧洲', '555', '旅游', '888', '中介', '333', '111');
INSERT INTO `taocan` VALUES ('3', 'logo.png', '1', '浪漫爱情岛', '浪漫爱情岛', '999', '9999', '雅典', '雅典', '雅典', '欧洲', '555', '旅游', '888', '中介', '333', '111');
INSERT INTO `taocan` VALUES ('3', 'logo.png', '1', '浪漫爱情岛', '浪漫爱情岛', '999', '9999', '雅典', '雅典', '雅典', '欧洲', '555', '旅游', '888', '中介', '333', '111');
INSERT INTO `taocan` VALUES ('3', 'logo.png', '1', '浪漫爱情岛', '浪漫爱情岛', '999', '9999', '雅典', '雅典', '雅典', '欧洲', '555', '旅游', '888', '中介', '333', '111');
INSERT INTO `taocan` VALUES ('3', 'logo.png', '1', '浪漫爱情岛', '浪漫爱情岛', '999', '9999', '雅典', '雅典', '雅典', '欧洲', '555', '旅游', '888', '中介', '333', '111');
INSERT INTO `taocan` VALUES ('3', 'logo.png', '1', '浪漫爱情岛', '浪漫爱情岛', '999', '9999', '雅典', '雅典', '雅典', '欧洲', '555', '旅游', '888', '中介', '333', '111');
INSERT INTO `taocan` VALUES ('3', 'logo.png', '1', '浪漫爱情岛', '浪漫爱情岛', '999', '9999', '雅典', '雅典', '雅典', '欧洲', '555', '旅游', '888', '中介', '333', '111');
INSERT INTO `taocan` VALUES ('2', 'logo.png', '1', '浪漫爱情岛', '浪漫爱情岛', '999', '9999', '雅典', '雅典', '雅典', '欧洲', '555', '旅游', '888', '中介', '333', '111');

-- ----------------------------
-- Table structure for user_asset
-- ----------------------------
DROP TABLE IF EXISTS `user_asset`;
CREATE TABLE `user_asset` (
  `id` int(11) NOT NULL,
  `vip_deadline` datetime DEFAULT '1970-01-01 11:11:11',
  `star_deadline` datetime DEFAULT '1970-01-01 11:11:11',
  `asset` int(11) DEFAULT '0',
  `cost` double DEFAULT '0',
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_fk_uaid` FOREIGN KEY (`id`) REFERENCES `user_basic` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_asset
-- ----------------------------
INSERT INTO `user_asset` VALUES ('100000', '2017-12-10 16:55:21', '2017-12-29 16:56:16', '100', '0');
INSERT INTO `user_asset` VALUES ('100001', '2016-11-23 19:06:29', '2015-10-23 21:19:37', '0', '52.1');
INSERT INTO `user_asset` VALUES ('100002', '2017-12-03 14:43:28', '2017-11-17 16:55:30', '80', '0');
INSERT INTO `user_asset` VALUES ('100003', '2018-10-20 16:56:00', '2017-12-09 20:21:23', '10', '0');
INSERT INTO `user_asset` VALUES ('100005', '2022-06-29 16:55:21', '2018-01-05 16:56:35', '948', '3751.3399999999997');
INSERT INTO `user_asset` VALUES ('100008', '2018-10-23 18:19:21', '2017-11-02 18:19:14', '0', '521');
INSERT INTO `user_asset` VALUES ('100009', '2018-10-23 21:09:51', '2017-11-04 21:09:07', '0', '625.2');
INSERT INTO `user_asset` VALUES ('100011', '2018-10-23 21:31:46', '2017-11-09 21:31:43', '0', '885.7');
INSERT INTO `user_asset` VALUES ('100012', '2017-11-24 14:00:52', '2017-11-20 14:00:48', '0', '1406.7');
INSERT INTO `user_asset` VALUES ('100024', '2017-12-31 09:12:26', '2017-12-31 09:12:31', '200', '200');
INSERT INTO `user_asset` VALUES ('100045', '1970-01-01 11:11:11', '1970-01-01 11:11:11', '460', '0');

-- ----------------------------
-- Table structure for user_basic
-- ----------------------------
DROP TABLE IF EXISTS `user_basic`;
CREATE TABLE `user_basic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `sex` char(2) NOT NULL,
  `birthday` date DEFAULT '1999-09-08',
  `photo` varchar(255) NOT NULL,
  `marry_status` varchar(50) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `sexual` char(2) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `workplace` varchar(50) DEFAULT NULL,
  `salary` double(9,2) DEFAULT NULL,
  `live_condition` varchar(50) DEFAULT NULL,
  `authority` int(11) DEFAULT '1' COMMENT '个人资料可见性（0：所有用户不可见，1：所有用户可见，2：仅我关注的人可见）',
  `status` int(11) DEFAULT NULL COMMENT '账户状态（0：锁定，1：激活，2：未激活）',
  `code` varchar(255) DEFAULT NULL COMMENT '用户激活码',
  `reg_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100060 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_basic
-- ----------------------------
INSERT INTO `user_basic` VALUES ('100000', 'gss@qq.com', 'cf026a42cced1e54786c2d8bad456494', 'gsssss', '123', '男', '1997-07-19', 'group1/M00/00/01/rBEuvln31OuAYLz5AAHz6vOfkNI626.jpg', '未婚', '175', '男', '大学本科', '山东-济南', '8000.00', '单位宿舍', '1', '1', null, '2017-10-17 21:02:53');
INSERT INTO `user_basic` VALUES ('100001', 'a@a.com', '03b170c9e8bd799dd1d2b1d42982e63b', 'Tom', '13222131223', '男', '1997-10-16', 'group1/M00/00/01/rBEuvln4PHmAeDgRAABlhpZ40Sc478.jpg', '未婚', '173', '女', '博士', '山东-济宁', '20000.00', '已购房', '1', '0', null, '2017-10-17 15:12:13');
INSERT INTO `user_basic` VALUES ('100002', 'sinna@163.com', 'cf026a42cced1e54786c2d8bad456494', 'sinna', '18764543221', '女', '1996-08-01', 'group1/M00/00/02/rBEuvln8EH-AYVHAAARNI2VWixQ257.jpg', '未婚', '168', '男', '大学本科', '北京-朝阳区', '5000.00', '已购房', '0', '1', null, '2017-10-17 15:12:09');
INSERT INTO `user_basic` VALUES ('100003', 'sinnamm@163.com', '84491cb4390e00a116f076ad8065dd46', 'sinnamm', '123', '女', '1996-08-01', 'group1/M00/00/01/rBEuvln4UmeAfrCnAAZWoBDWdNg742.jpg', '未婚', '168', '女', '大学本科', '北京-海淀区', '7000.00', '打算婚后购房', '1', '1', null, '2017-10-17 15:12:09');
INSERT INTO `user_basic` VALUES ('100004', '1472610316@qq.com', '5744d2d77c7cff43a3fce0d71bf3a662', 'aaa', '17865166639', '男', '1987-10-06', 'group1/M00/00/01/rBEuvln4PHmAXhCvAAClgAwZey8111.jpg', '未婚', '161', '男', '大专', '山东-淄博', '11111.00', '已购房', '2', '1', '50005637-14b3-4599-8416-b1a86639dca8', '2017-10-18 11:48:14');
INSERT INTO `user_basic` VALUES ('100005', 'b@a.com', '0121fdf450aaa71df8fd0ffb1a8c9f51', '我是程序袁', '13222222222', '男', '1994-10-06', 'group1/M00/00/01/rBEuvln4VECAaBatAAKl7lmtFgI263.jpg', '未婚', '178', '女', '高中及以下', '山东-济宁', '3000.00', '和家人同住', '2', '1', 'b96086a9-f706-41f0-9a3a-33fc167fb7d8', '2017-10-17 18:05:29');
INSERT INTO `user_basic` VALUES ('100006', 'gss@gss.com', 'ecc0bd875ef81563677dedfb129f3b50', 'Gss', '132', '男', '1991-10-16', 'group1/M00/00/01/rBEuvln32SSAa5OEAAMjDSnPUy0059.jpg', '未婚', '173', '女', '大学本科', '山东-菏泽', '5000.00', '单位宿舍', '1', '1', null, '2017-10-17 15:12:13');
INSERT INTO `user_basic` VALUES ('100007', 'zhangsan@163.com', '8a82d3b22a4794dfea23a5b8a7c35388', 'zhangsan', '16527783355', '男', '1992-12-01', 'group1/M00/00/01/rBEuvln4PHmAAXEvAAAg_1uOQ-4292.jpg', '未婚', '177', '女', '硕士', '山东-青岛', '8000.00', '和家人同住', '0', '1', 'a82b2b1f-ee86-43d3-a5d4-67327b91a063', '2017-10-21 15:29:56');
INSERT INTO `user_basic` VALUES ('100008', 'caocao1@163.com', '8d495b11d50bbe42ad521f9f13e5276e', '沧海笑', '13888888888', '男', '1999-05-15', 'group1/M00/00/00/rBEuvlnxiMeAWcahAAAN-VQSomQ746.jpg', '离异', '207', '男', '大学本科', '北京-崇文区', '8000.00', '单位宿舍', '1', '1', 'e3e85ec7-01e8-4370-885f-42f8b7b7d684', '2017-10-23 18:00:30');
INSERT INTO `user_basic` VALUES ('100009', 'caocao2@163.com', '72ac55336cb2fe10dfc44c5f89927534', '林含冰', '13888888888', '女', '1991-07-10', 'group1/M00/00/01/rBEuvln4Ol-AS5T3AAAjtFqrcKo807.jpg', '未婚', '164', '女', '大专', '山东-东营', '15000.00', '打算婚后购房', '1', '1', '5be6c299-90fc-40b9-8ed1-e14cfc9c3e3b', '2017-10-23 20:51:54');
INSERT INTO `user_basic` VALUES ('100010', 'caocao3@163.com', '1ec2dad09d0e3c9847a3482864fc4377', '沧浪', '13888888888', '男', '1994-02-10', 'group1/M00/00/01/rBEuvln4PFmANiCcAAAVWq-6lpk097.jpg', '未婚', '205', '男', '大学本科', '重庆-渝北区', '20000.00', '单位宿舍', '1', '1', '12d8e7c4-6b2a-4e16-b3fe-aca4bb9d53dc', '2017-10-23 21:15:38');
INSERT INTO `user_basic` VALUES ('100011', 'caocao4@163.com', 'e85236cbdda923b42ba5a987e29dad0f', '苗明恩', '13888888888', '男', '1994-01-11', 'group1/M00/00/02/rBEuvln7G9yACKu-AAE2QbD14KQ833.jpg', '未婚', '210', '女', '高中及以下', '山东-济南', '12000.00', '已购房', '1', '1', 'eb472615-475e-4236-8d5e-926287b17703', '2017-10-23 21:31:21');
INSERT INTO `user_basic` VALUES ('100012', 'caocao5@163.com', 'be17b4b6eb1a275a2b31f5d9de619d18', '皇埔铁牛', '13454534533', '男', '1991-02-22', 'group1/M00/00/02/rBEuvln8NM6AY7S0AAMacMscvFw930.jpg', '未婚', '172', '女', '大学本科', '山东-菏泽', '8000.00', '和家人同住', '1', '1', '9d8a5a04-68db-46cb-aa27-40ba5e760982', '2017-10-24 11:13:32');
INSERT INTO `user_basic` VALUES ('100015', 'zhangsan0@qq.com', '9a179e9d7c58717ddbe3779e0056c7c3', '铲屎官王发财', '123214421421', '男', '1996-01-01', 'group1/M00/00/01/rBEuvln33bGACnLLAAL-uegAHfI044.jpg', '未婚', '175', '女', '大学本科', '山东-济南', '6000.00', null, '1', '0', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100016', 'zhangsan1@qq.com', 'b4ed8d5ad2a839ff2739d3d3c1f342ab', '阿达姆松', '123214421421', '男', '1997-01-01', 'group1/M00/00/01/rBEuvln33bGACFO4AAM63g6yu_A708.jpg', '未婚', '160', '女', '大学本科', '山东-菏泽', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100017', 'zhangsan2@qq.com', 'c2b4d03be7dd35ac14dee1b085ff95fe', '逸舟', '123214421421', '男', '1998-01-01', 'group1/M00/00/01/rBEuvln33bKAAvWcABwegpvJpN8074.jpg', '未婚', '161', '女', '大学本科', '山东-济南', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100018', 'zhangsan3@qq.com', '5d7c7725cedeff34faa2818165f84bdf', '旁观者说', '123214421421', '男', '1994-01-01', 'group1/M00/00/01/rBEuvln33bKAS4lpADrA8fBeNvU007.jpg', '未婚', '162', '女', '大学本科', '山东-济南', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100019', 'zhangsan4@qq.com', 'b6c11e38db5148149ccd238f369efeb9', '米小喵', '123214421421', '女', '1993-01-01', 'group1/M00/00/00/rBEuvln3A0aAN0qbAAGS95Xwec0528.jpg', '未婚', '163', '女', '大学本科', '山东-济南', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100020', 'zhangsan5@qq.com', '030ec30b2626c63d4eb5306f1b15c1f7', '赊月洞庭', '123214421421', '男', '1998-01-01', 'group1/M00/00/01/rBEuvln33bOAe2HAAATZuFJoABM522.jpg', '未婚', '164', '女', '大学本科', '山东-菏泽', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100021', 'zhangsan6@qq.com', '8846ff06faf81dd8a127abc11070320d', '钟二', '123214421421', '男', '1991-01-01', 'group1/M00/00/01/rBEuvln33bOAbgZwAAMTuXu5aK0724.jpg', '未婚', '165', '女', '大学本科', '山东-济南', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100022', 'zhangsan7@qq.com', 'd8be96421eb33285d01c3f136346c887', '王二胖不算胖', '123214421421', '男', '1996-01-01', 'group1/M00/00/01/rBEuvln33bOAba4bAAHz6vOfkNI775.jpg', '未婚', '166', '女', '大学本科', '山东-菏泽', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100023', 'zhangsan8@qq.com', '07444045b9fb49d1d1ceb6f5462c026a', '任燚', '123214421421', '男', '1996-01-01', 'group1/M00/00/01/rBEuvln4PHmAZgT0AABxOMAoiuk539.jpg', '未婚', '167', '女', '大学本科', '山东-济南', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100024', 'zhangsan9@qq.com', 'ea3921d273e74bf6b1e06fa537f3d0ef', '孙鹏昊', '123214421421', '男', '1993-01-01', 'group1/M00/00/01/rBEuvln4PHmAJQcZAABXnMIXfJ8496.jpg', '未婚', '168', '女', '大学本科', '山东-济南', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100025', 'lisi0@qq.com', '64deb71a1d0d72e39ce7487821df3efb', '欧阳翠花', '123214421421', '女', '1991-01-01', 'group1/M00/00/00/rBEuvln3AvOAacRiAAUGygZ1rUM185.jpg', '未婚', '169', '男', '大学本科', '山东-济南', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100026', 'lisi1@qq.com', 'e9933ee16377dba9d795064827858039', '嵘嵘嵘', '123214421421', '女', '1996-01-01', 'group1/M00/00/00/rBEuvln3AvSAbppOAATG3jvAb_M235.jpg', '未婚', '170', '男', '大学本科', '山东-菏泽', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100027', 'lisi2@qq.com', 'c0c51d1b74dfd2f6d47013ef268ccbe0', 'Safinch', '123214421421', '女', '1996-01-01', 'group1/M00/00/00/rBEuvln3AvSAdHByAAB7l0E9v1o364.jpg', '未婚', '171', '男', '大学本科', '山东-济南', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100028', 'lisi3@qq.com', 'a9d49e6c2ff27d7372c897c22d75fff4', '硕麦粒', '123214421421', '女', '1996-01-01', 'group1/M00/00/00/rBEuvln3AvSAb9s7AAMs5VYsCU0325.jpg', '未婚', '172', '男', '大学本科', '山东-菏泽', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100029', 'lisi4@qq.com', '1f7e1b0368e3df566d5c741248a6bb77', '戚梦', '123214421421', '女', '1996-01-01', 'group1/M00/00/01/rBEuvln4OmCAU8t7AABrqyUCULE216.jpg', '未婚', '173', '男', '大学本科', '山东-济宁', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100030', 'lisi5@qq.com', 'cce6d0bdc45c6799ebf399e717412543', '白原儿', '123214421421', '女', '1992-01-01', 'group1/M00/00/01/rBEuvln4OmCAX4RpAABMecZOeg8570.jpg', '未婚', '174', '男', '大学本科', '山东-济南', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100031', 'lisi6@qq.com', 'b535d00b823e485f44f690d069daf752', '小玩闹', '123214421421', '女', '1993-01-01', 'group1/M00/00/00/rBEuvln3AvSAerlGAAJfix-bpxk051.jpg', '未婚', '175', '男', '大学本科', '山东-菏泽', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100032', 'lisi7@qq.com', 'c016d5a73d0ab429f24333d82e4d7af4', '安之若素', '123214421421', '女', '1994-01-01', 'group1/M00/00/01/rBEuvln4Ol-AV-VwAACB5M4dT7s652.jpg', '未婚', '176', '男', '大学本科', '山东-济南', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100033', 'lisi8@qq.com', '0b6d4ab4722741f92cb214e8d0172863', '郭襄', '123214421421', '女', '1995-01-01', 'group1/M00/00/00/rBEuvln3A0aADWblAAFJLQ_Qins788.jpg', '未婚', '177', '男', '大学本科', '山东-济宁', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100034', 'lisi9@qq.com', 'b5629f42411088aec54e9c358d828d79', 'OnaiveO', '123214421421', '女', '1996-01-01', 'group1/M00/00/01/rBEuvln3A0eAAhYIAAJfix-bpxk607.jpg', '未婚', '178', '男', '大学本科', '山东-济南', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100035', 'ruhua0@qq.com', 'a4cf631e4d869435f3cd80c375ec1122', '香蕉君', '123214421421', '女', '1997-01-01', 'group1/M00/00/01/rBEuvln3A0eABcu5AASxDdSyJc8006.jpg', '未婚', '179', '男', '大学本科', '山东-菏泽', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100036', 'ruhua1@qq.com', '34bfba1caaacf7e2ba0d4f16ab12f8e6', '泰榕', '123214421421', '女', '1998-01-01', 'group1/M00/00/01/rBEuvln3A0eAVknAAAF-bZ17g_I678.jpg', '未婚', '180', '男', '大学本科', '山东-济南', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100037', 'ruhua2@qq.com', 'd29dc6684883a5aeb0e30becda723a25', '陈一发儿', '123214421421', '女', '1996-01-01', 'group1/M00/00/01/rBEuvln3A0eAciXsAAZWoBDWdNg380.jpg', '未婚', '175', '男', '大学本科', '山东-济宁', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100038', 'ruhua3@qq.com', '6189925f68c779f86d7dc542ca5e49ed', '脸红的我', '123214421421', '女', '1996-01-01', 'group1/M00/00/01/rBEuvln3A0eAFEhOAAFT8vv_8iQ263.jpg', '未婚', '175', '男', '大学本科', '山东-菏泽', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100039', 'ruhua4@qq.com', '30873f1ec3010137a1f171b73d54a87d', '性感的猪', '123214421421', '女', '1999-01-01', 'group1/M00/00/01/rBEuvln3A0eAfu_PAAKpIFBDk6o741.jpg', '未婚', '172', '男', '大学本科', '山东-济南', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100040', 'ruhua5@qq.com', 'cf33a58b3aa4f615b8ede34b36086dc6', '伊丽莎白', '123214421421', '女', '1994-01-01', 'group1/M00/00/01/rBEuvln33nSAH4D6AAH1H76Ud1A061.jpg', '未婚', '173', '男', '大学本科', '山东-济宁', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100041', 'ruhua6@qq.com', 'db0593eae0b8df6dee5c2f4b3b15ee29', 'Lemon', '123214421421', '女', '1996-01-01', 'group1/M00/00/01/rBEuvln4Ol-AFXOeAACjM3JDtdI054.jpg', '未婚', '174', '男', '大学本科', '山东-济南', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100042', 'ruhua7@qq.com', 'b3caec93fea1a56998b8eeca66ce841b', '肉肉', '123214421421', '女', '1996-01-01', 'group1/M00/00/01/rBEuvln33nSAH4D6AAH1H76Ud1A061.jpg', '未婚', '175', '男', '大学本科', '山东-菏泽', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100043', 'ruhua8@qq.com', 'e0e9a5a7f8d636bf18358e528377fbb8', '少女婉', '123214421421', '女', '1997-01-01', 'group1/M00/00/02/rBEuvln8GmqAZ1ifAARNI2VWixQ039.jpg', '未婚', '176', '男', '大学本科', '山东-济南', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100044', 'ruhua9@qq.com', '75c2c2b09190eb4c2f0a63c549e747ba', '破颜君的小屋', '123214421421', '男', '1993-01-01', 'group1/M00/00/01/rBEuvln4PHmASg-NAAA5C0Az2sI073.jpg', '未婚', '175', '男', '大学本科', '山东-菏泽', '6000.00', null, '1', '1', null, '2017-01-10 00:24:00');
INSERT INTO `user_basic` VALUES ('100045', 'g@g.com', '6e07efd1e578395807cfba790c75e82d', '奔跑的小猪', '15555555555', '男', '1991-01-01', 'group1/M00/00/02/rBEuvln-ZwCAWd3JAACIponWObk841.jpg', '未婚', '179', '女', '中专', '山东-济南', '5000.00', '和家人同住', '1', '1', '95a4d443-cb80-4636-bf90-afbcb2fed269', '2017-10-24 22:32:29');
INSERT INTO `user_basic` VALUES ('100046', 'gnjsmmz@163.com', 'fb1de8e1ac9146d87ca93aaae5cb4b35', '孤城雪', '13888888888', '男', '1993-07-07', 'group1/M00/00/00/rBEuvlnx3xCANxP0AAAv6Fn0wow084.jpg', '未婚', '185', '女', '博士', '山东-枣庄', '20000.00', null, '1', '1', '78153453-ef79-47f4-ac83-d0837a6139b9', '2017-10-26 19:56:40');
INSERT INTO `user_basic` VALUES ('100047', 'g@gss.com', 'edb09d1edff41f64c9b4ac3974114ecf', '_听弦断', '15555555555', '男', '1994-07-07', 'group1/M00/00/02/rBEuvln6j4SABA0aAATZuFJoABM877.jpg', '未婚', '194', '女', '大专', '山东-菏泽', '12000.00', null, '1', '1', '62d19d20-ef43-45f3-91b8-bb5c9d9ec112', '2017-11-02 10:58:09');
INSERT INTO `user_basic` VALUES ('100048', 'adfs@163.com', '681801802b6aa919af523f27b09ad414', '阿道夫撒', '13222131223', '男', '1991-11-13', 'group1/M00/00/00/rBEuvlnxjMuAQiedAABzD4s1V58372.png', '未婚', '201', '女', '大学本科', '山东-枣庄', '8000.00', null, '1', '1', 'd0c421c5-1311-433a-98be-97c7191f14aa', '2017-11-04 16:42:48');
INSERT INTO `user_basic` VALUES ('100051', '123@qq.com', '8f3be003174ddd68babf0e1a043ab533', 'gyb', '13771818888', '男', null, 'group1/M00/00/00/rBEuvlnxjMuAQiedAABzD4s1V58372.png', null, null, '女', '中专', '北京-东城区', null, null, '1', '1', 'cf8c895c-b5c3-4bd5-a0c5-9f7df725ec38', '2019-04-19 18:41:07');
INSERT INTO `user_basic` VALUES ('100052', '123123@qq.com', '8e51c662b24e6565464ccc3a3f876e3c', '123', '13771818888', '男', null, 'group1/M00/00/00/rBEuvlnxjMuAQiedAABzD4s1V58372.png', null, null, '女', '硕士', '北京-东城区', null, null, '1', '1', '3caffea7-60c7-4c11-a936-fdd423968ea6', '2019-04-19 20:21:38');
INSERT INTO `user_basic` VALUES ('100053', '123456@qq.com', 'a07048c2da8dbd236847d29f39c7b6d7', '123', '13771818888', '女', null, 'group1/M00/00/00/rBEuvlnxjQqAIjfAAAB54pr6RHc334.png', null, null, '男', '高中及以下', '北京-东城区', null, null, '1', '1', '3fd516d0-2c95-40a8-9045-ee97560f9b88', '2019-04-19 20:24:46');
INSERT INTO `user_basic` VALUES ('100054', '1134133509@qq.com', '3c7c4ddb363a4790f85c98566dce600f', '1234', '18157146715', '男', null, 'group1/M00/00/00/rBEuvlnxjMuAQiedAABzD4s1V58372.png', null, null, '女', '高中及以下', '广东-广州', null, null, '1', '1', 'ae6fab21-6999-4638-a5c8-2aa4a116b83e', '2019-04-27 16:45:41');
INSERT INTO `user_basic` VALUES ('100055', '1134133508@qq.com', '8298471db364f509fb92605b4a0b5b92', '1234', '18157146715', '男', null, 'group1/M00/00/00/rBEuvlnxjMuAQiedAABzD4s1V58372.png', null, null, '女', '高中及以下', '北京-崇文区', null, null, '1', '1', 'a0e1698d-346c-4652-bf6c-4b04a56cea11', '2019-04-27 16:47:39');
INSERT INTO `user_basic` VALUES ('100056', '1134133507@qq.com', '960c6b8a0f63d4aeb1849f033a2e41ff', '12341234', '18157146715', '男', null, 'group1/M00/00/00/rBEuvlnxjMuAQiedAABzD4s1V58372.png', null, null, '女', '中专', '安徽-池州', null, null, '1', '1', '5557d2f2-a919-46c4-b900-49cee45eca30', '2019-04-27 16:53:53');
INSERT INTO `user_basic` VALUES ('100057', '1134133506@qq.com', '89e3ef125e4d9ede680556320a4c53e7', '12341234', '18157146715', '男', null, 'group1/M00/00/00/rBEuvlnxjMuAQiedAABzD4s1V58372.png', null, null, '女', '中专', '安徽-亳州', null, null, '1', '1', '97b4b00f-024b-46b5-ad66-bcbe2512f49d', '2019-04-27 16:59:48');
INSERT INTO `user_basic` VALUES ('100058', '1134133505@qq.com', '20659a95ed584b3a4e83e79c79da5a9c', '12341234', '18157146715', '男', null, 'group1/M00/00/00/rBEuvlnxjMuAQiedAABzD4s1V58372.png', null, null, '女', '大专', '广东-珠海', null, null, '1', '1', '991882b3-234e-4abd-870b-4969d55f7497', '2019-04-27 17:17:05');
INSERT INTO `user_basic` VALUES ('100059', '1134133504@qq.com', '991c4b33427e231fd601c807fb1d1462', '12341234', '18157146715', '男', null, 'group1/M00/00/00/rBEuvlnxjMuAQiedAABzD4s1V58372.png', null, null, '女', '大专', '山东-滨州', null, null, '1', '1', '38e99331-d7b1-4133-8075-8047df115255', '2019-04-27 17:27:06');

-- ----------------------------
-- Table structure for user_detail
-- ----------------------------
DROP TABLE IF EXISTS `user_detail`;
CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `cardnumber` varchar(50) DEFAULT NULL,
  `birthplace` varchar(50) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `animal` char(2) DEFAULT NULL,
  `zodiac` char(6) DEFAULT NULL,
  `nation` varchar(20) DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `graduation` varchar(50) DEFAULT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_fk_udid` FOREIGN KEY (`id`) REFERENCES `user_basic` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_detail
-- ----------------------------
INSERT INTO `user_detail` VALUES ('100000', 'lisi', '452127199903142713', '山东-菏泽', null, null, null, null, null, '北京-北京交通大学', '李四李四李四李四', '李四李四李四李四');
INSERT INTO `user_detail` VALUES ('100001', '帅帅', '452127199903142713', '山东-济宁', '67', '虎', '天蝎座', '汉族', '佛教', '北京-北京交通大学', '爱睡觉，爱打撸啊撸，爱跑步', '生命诚可贵，爱情价更高');
INSERT INTO `user_detail` VALUES ('100002', 'gggg', '452127199903142713', '山东-青岛', '12', null, null, null, null, '山东-青岛科技大学', null, '我不知道该说些什么，反正项目好难写啊啊啊');
INSERT INTO `user_detail` VALUES ('100003', '王五', '452127199903142713', '山东-济宁', null, null, null, null, null, '山东', null, '王五王五王五那我 昂科威蝴蝶卡');
INSERT INTO `user_detail` VALUES ('100004', '赵六', '452127199903142713', '山东-济宁', null, null, null, null, null, '山东-青岛科技大学', null, '胜多负少看到回复规划书快递费 ');
INSERT INTO `user_detail` VALUES ('100005', '张三', '452127199903142713', '安徽-亳州', '66', '虎', '双子座', '蒙古族', '佛教', '山东', '张三张三张三', '张三张三张三张三');
INSERT INTO `user_detail` VALUES ('100007', '张三', '452127199903142713', '安徽-亳州', '66', '虎', '双子座', '蒙古族', '佛教', '广东-广州大学', '张三张三张三', '张三张三张三张三');
INSERT INTO `user_detail` VALUES ('100008', null, '452127199903142713', '山东-菏泽', null, null, null, null, null, '广东-广州大学', null, '不忘初心，牢记使命，高举中国特色社会主义伟大旗帜');
INSERT INTO `user_detail` VALUES ('100009', null, '452127199903142713', '山东-临沂', null, null, null, null, null, '山东-青岛科技大学', null, '万众瞩目的十九大已于今天拉开帷幕，今天上午习大大长达 3 个小时\r\n\r\n');
INSERT INTO `user_detail` VALUES ('100011', null, '452127199903142713', '山东-淄博', null, null, null, null, null, '山东', null, '4.思想文化建设取得重大进展。国家文化软实力和中华文化影响力大幅提升');
INSERT INTO `user_detail` VALUES ('100012', null, null, '山东-临沂', null, null, null, null, null, null, null, '3.意味着中国特色社会主义道路、理论、制度、文化不断发展');
INSERT INTO `user_detail` VALUES ('100015', null, '452127199903142713', '山东-菏泽', null, null, null, null, null, '广东-广州大学', null, '张三张三张三张三');
INSERT INTO `user_detail` VALUES ('100016', null, '452127199903142713', '山东-济宁', null, null, null, null, null, '山东-青岛科技大学', null, '不忘初心，牢记使命，高举中国特色社会主义伟大旗帜');
INSERT INTO `user_detail` VALUES ('100017', null, '452127199903142713', '山东-青岛', null, null, null, null, null, '山东', null, '万众瞩目的十九大已于今天拉开帷幕，今天上午习大大长达 3 个小时\r\n\r\n');
INSERT INTO `user_detail` VALUES ('100018', null, '452127199903142713', '山东-济宁', null, null, null, null, null, '山东-青岛科技大学', null, '4.思想文化建设取得重大进展。国家文化软实力和中华文化影响力大幅提升');
INSERT INTO `user_detail` VALUES ('100019', null, '452127199903142713', '山东-济宁', null, null, null, null, null, '山东', null, '3.意味着中国特色社会主义道路、理论、制度、文化不断发展');
INSERT INTO `user_detail` VALUES ('100020', null, '452127199903142713', '安徽-亳州', null, null, null, null, null, '广东-广州大学', null, '不忘初心，牢记使命，高举中国特色社会主义伟大旗帜');
INSERT INTO `user_detail` VALUES ('100021', null, '452127199903142713', '安徽-亳州', null, null, null, null, null, '广东-广州大学', null, '万众瞩目的十九大已于今天拉开帷幕，今天上午习大大长达 3 个小时\r\n\r\n');
INSERT INTO `user_detail` VALUES ('100022', null, '452127199903142713', '山东-菏泽', null, null, null, null, null, '山东-青岛科技大学', null, '4.思想文化建设取得重大进展。国家文化软实力和中华文化影响力大幅提升');
INSERT INTO `user_detail` VALUES ('100023', null, '452127199903142713', '山东-临沂', null, null, null, null, null, '山东', null, '3.意味着中国特色社会主义道路、理论、制度、文化不断发展');
INSERT INTO `user_detail` VALUES ('100024', null, '452127199903142713', '山东-淄博', null, null, null, null, null, '山东-青岛科技大学', null, '张三张三张三张三');
INSERT INTO `user_detail` VALUES ('100025', null, '452127199903142713', '山东-临沂', null, null, null, null, null, '山东', null, '不忘初心，牢记使命，高举中国特色社会主义伟大旗帜');
INSERT INTO `user_detail` VALUES ('100026', null, '452127199903142713', '山东-菏泽', null, null, null, null, null, '广东-广州大学', null, '万众瞩目的十九大已于今天拉开帷幕，今天上午习大大长达 3 个小时\r\n\r\n');
INSERT INTO `user_detail` VALUES ('100027', null, '452127199903142713', '山东-济宁', null, null, null, null, null, '广东-广州大学', null, '4.思想文化建设取得重大进展。国家文化软实力和中华文化影响力大幅提升');
INSERT INTO `user_detail` VALUES ('100028', null, '452127199903142713', '山东-青岛', null, null, null, null, null, '山东-青岛科技大学', null, '3.意味着中国特色社会主义道路、理论、制度、文化不断发展');
INSERT INTO `user_detail` VALUES ('100029', null, '452127199903142713', '山东-济宁', null, null, null, null, null, '山东', null, '不忘初心，牢记使命，高举中国特色社会主义伟大旗帜');
INSERT INTO `user_detail` VALUES ('100030', null, '452127199903142713', '山东-菏泽', null, null, null, null, null, '广东-广州大学', null, '万众瞩目的十九大已于今天拉开帷幕，今天上午习大大长达 3 个小时\r\n\r\n');
INSERT INTO `user_detail` VALUES ('100031', null, '452127199903142713', '山东-济宁', null, null, null, null, null, '广东-广州大学', null, '4.思想文化建设取得重大进展。国家文化软实力和中华文化影响力大幅提升');
INSERT INTO `user_detail` VALUES ('100032', null, '452127199903142713', '山东-青岛', null, null, null, null, null, '山东-青岛科技大学', null, '3.意味着中国特色社会主义道路、理论、制度、文化不断发展');
INSERT INTO `user_detail` VALUES ('100033', null, '452127199903142713', '山东-济宁', null, null, null, null, null, '山东', null, '张三张三张三张三');
INSERT INTO `user_detail` VALUES ('100034', null, '452127199903142713', '山东-济宁', null, null, null, null, null, '山东-青岛科技大学', null, '不忘初心，牢记使命，高举中国特色社会主义伟大旗帜');
INSERT INTO `user_detail` VALUES ('100035', null, '452127199903142713', '安徽-亳州', null, null, null, null, null, '山东', null, '万众瞩目的十九大已于今天拉开帷幕，今天上午习大大长达 3 个小时\r\n\r\n');
INSERT INTO `user_detail` VALUES ('100036', null, '452127199903142713', '安徽-亳州', null, null, null, null, null, '广东-广州大学', null, '4.思想文化建设取得重大进展。国家文化软实力和中华文化影响力大幅提升');
INSERT INTO `user_detail` VALUES ('100037', null, '452127199903142713', '山东-菏泽', null, null, null, null, null, '北京-北京交通大学', null, '3.意味着中国特色社会主义道路、理论、制度、文化不断发展');
INSERT INTO `user_detail` VALUES ('100038', null, '452127199903142713', '山东-临沂', null, null, null, null, null, '山东-青岛科技大学', null, '不忘初心，牢记使命，高举中国特色社会主义伟大旗帜');
INSERT INTO `user_detail` VALUES ('100039', null, '452127199903142713', '山东-淄博', null, null, null, null, null, '山东', null, '万众瞩目的十九大已于今天拉开帷幕，今天上午习大大长达 3 个小时\r\n\r\n');
INSERT INTO `user_detail` VALUES ('100040', null, '452127199903142713', '山东-临沂', null, null, null, null, null, '山东-青岛科技大学', null, '4.思想文化建设取得重大进展。国家文化软实力和中华文化影响力大幅提升');
INSERT INTO `user_detail` VALUES ('100041', null, '452127199903142713', '山东-菏泽', null, null, null, null, null, '山东', null, '3.意味着中国特色社会主义道路、理论、制度、文化不断发展');
INSERT INTO `user_detail` VALUES ('100042', null, '452127199903142713', '山东-济宁', null, null, null, null, null, '广东-广州大学', null, '张三张三张三张三');
INSERT INTO `user_detail` VALUES ('100043', null, '452127199903142713', '山东-青岛', null, null, null, null, null, '广东-广州大学', null, '不忘初心，牢记使命，高举中国特色社会主义伟大旗帜');
INSERT INTO `user_detail` VALUES ('100044', null, '452127199903142713', '山东-济宁', null, null, null, null, null, '山东-青岛科技大学', null, '万众瞩目的十九大已于今天拉开帷幕，今天上午习大大长达 3 个小时\r\n\r\n');
INSERT INTO `user_detail` VALUES ('100045', null, '452127199903142713', '山东-济宁', null, null, null, null, null, '山东', null, '4.思想文化建设取得重大进展。国家文化软实力和中华文化影响力大幅提升');
INSERT INTO `user_detail` VALUES ('100046', null, '452127199903142713', '安徽-亳州', null, null, null, null, null, '广东-广州大学', null, '3.意味着中国特色社会主义道路、理论、制度、文化不断发展');

-- ----------------------------
-- Table structure for user_label
-- ----------------------------
DROP TABLE IF EXISTS `user_label`;
CREATE TABLE `user_label` (
  `user_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  KEY `FK_fk_ullabelid` (`label_id`),
  KEY `FK_fk_uluserid` (`user_id`),
  CONSTRAINT `FK_fk_ullabelid` FOREIGN KEY (`label_id`) REFERENCES `label` (`id`),
  CONSTRAINT `FK_fk_uluserid` FOREIGN KEY (`user_id`) REFERENCES `user_basic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_label
-- ----------------------------
INSERT INTO `user_label` VALUES ('100000', '1');
INSERT INTO `user_label` VALUES ('100004', '1');
INSERT INTO `user_label` VALUES ('100007', '1');
INSERT INTO `user_label` VALUES ('100001', '1');
INSERT INTO `user_label` VALUES ('100001', '2');
INSERT INTO `user_label` VALUES ('100008', '1');
INSERT INTO `user_label` VALUES ('100008', '2');
INSERT INTO `user_label` VALUES ('100008', '3');
INSERT INTO `user_label` VALUES ('100008', '5');
INSERT INTO `user_label` VALUES ('100008', '4');
INSERT INTO `user_label` VALUES ('100011', '5');
INSERT INTO `user_label` VALUES ('100012', '3');
INSERT INTO `user_label` VALUES ('100012', '5');
INSERT INTO `user_label` VALUES ('100046', '1');
INSERT INTO `user_label` VALUES ('100046', '2');
INSERT INTO `user_label` VALUES ('100025', '2');
INSERT INTO `user_label` VALUES ('100026', '3');
INSERT INTO `user_label` VALUES ('100027', '5');
INSERT INTO `user_label` VALUES ('100028', '4');
INSERT INTO `user_label` VALUES ('100029', '5');
INSERT INTO `user_label` VALUES ('100030', '3');
INSERT INTO `user_label` VALUES ('100031', '2');
INSERT INTO `user_label` VALUES ('100032', '2');
INSERT INTO `user_label` VALUES ('100033', '4');
INSERT INTO `user_label` VALUES ('100034', '1');
INSERT INTO `user_label` VALUES ('100035', '2');
INSERT INTO `user_label` VALUES ('100036', '2');
INSERT INTO `user_label` VALUES ('100037', '3');
INSERT INTO `user_label` VALUES ('100033', '5');
INSERT INTO `user_label` VALUES ('100034', '4');
INSERT INTO `user_label` VALUES ('100035', '5');
INSERT INTO `user_label` VALUES ('100025', '1');
INSERT INTO `user_label` VALUES ('100026', '1');
INSERT INTO `user_label` VALUES ('100027', '1');
INSERT INTO `user_label` VALUES ('100028', '1');
INSERT INTO `user_label` VALUES ('100029', '1');
INSERT INTO `user_label` VALUES ('100030', '1');
INSERT INTO `user_label` VALUES ('100031', '1');
INSERT INTO `user_label` VALUES ('100032', '1');
INSERT INTO `user_label` VALUES ('100033', '1');
INSERT INTO `user_label` VALUES ('100034', '2');
INSERT INTO `user_label` VALUES ('100035', '1');
INSERT INTO `user_label` VALUES ('100036', '1');
INSERT INTO `user_label` VALUES ('100037', '1');
INSERT INTO `user_label` VALUES ('100025', '6');
INSERT INTO `user_label` VALUES ('100026', '6');
INSERT INTO `user_label` VALUES ('100027', '6');
INSERT INTO `user_label` VALUES ('100028', '6');
INSERT INTO `user_label` VALUES ('100029', '6');
INSERT INTO `user_label` VALUES ('100030', '6');
INSERT INTO `user_label` VALUES ('100031', '6');
INSERT INTO `user_label` VALUES ('100032', '6');
INSERT INTO `user_label` VALUES ('100033', '6');
INSERT INTO `user_label` VALUES ('100034', '6');
INSERT INTO `user_label` VALUES ('100035', '6');
INSERT INTO `user_label` VALUES ('100036', '6');
INSERT INTO `user_label` VALUES ('100037', '6');
INSERT INTO `user_label` VALUES ('100038', '6');
INSERT INTO `user_label` VALUES ('100008', '6');
INSERT INTO `user_label` VALUES ('100009', '6');
INSERT INTO `user_label` VALUES ('100010', '6');
INSERT INTO `user_label` VALUES ('100011', '6');
INSERT INTO `user_label` VALUES ('100012', '6');
INSERT INTO `user_label` VALUES ('100015', '6');
INSERT INTO `user_label` VALUES ('100016', '6');
INSERT INTO `user_label` VALUES ('100017', '6');
INSERT INTO `user_label` VALUES ('100018', '6');
INSERT INTO `user_label` VALUES ('100019', '6');
INSERT INTO `user_label` VALUES ('100020', '6');
INSERT INTO `user_label` VALUES ('100047', '1');
INSERT INTO `user_label` VALUES ('100005', '3');
INSERT INTO `user_label` VALUES ('100005', '5');
INSERT INTO `user_label` VALUES ('100012', '1');
INSERT INTO `user_label` VALUES ('100012', '2');
INSERT INTO `user_label` VALUES ('100048', '1');
INSERT INTO `user_label` VALUES ('100048', '2');
INSERT INTO `user_label` VALUES ('100052', '2');

-- ----------------------------
-- Table structure for user_life
-- ----------------------------
DROP TABLE IF EXISTS `user_life`;
CREATE TABLE `user_life` (
  `id` int(11) NOT NULL,
  `smoke` int(11) DEFAULT NULL,
  `drink` int(11) DEFAULT NULL,
  `car` int(11) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `job_time` varchar(50) DEFAULT NULL,
  `character` varchar(255) DEFAULT NULL,
  `job_brief` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_fk_ulid` FOREIGN KEY (`id`) REFERENCES `user_basic` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_life
-- ----------------------------
INSERT INTO `user_life` VALUES ('100000', null, null, null, '通信/电子', null, null, null);
INSERT INTO `user_life` VALUES ('100001', '0', '1', '0', '服务业', '工作忙碌', '阳光开朗', '轻松愉快');
INSERT INTO `user_life` VALUES ('100003', null, null, null, '通信/电子', null, null, null);
INSERT INTO `user_life` VALUES ('100004', null, null, null, '通信/电子', null, null, null);
INSERT INTO `user_life` VALUES ('100005', null, null, '1', '政府机构', null, null, null);
INSERT INTO `user_life` VALUES ('100007', '0', '1', '1', '物流/仓储', '工作清闲', '张三张三张三张三张三', '张三张三张三张三张三张三');
INSERT INTO `user_life` VALUES ('100008', null, null, '1', '政府机构', null, null, null);
INSERT INTO `user_life` VALUES ('100011', null, null, '0', '政府机构', null, null, null);
INSERT INTO `user_life` VALUES ('100012', null, null, '1', '政府机构', null, null, null);
INSERT INTO `user_life` VALUES ('100045', '1', '1', '0', '教育/科研', null, null, null);

-- ----------------------------
-- Table structure for user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `user_login_log`;
CREATE TABLE `user_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `login_ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fk_uluuid` (`user_id`),
  CONSTRAINT `FK_fk_uluuid` FOREIGN KEY (`user_id`) REFERENCES `user_basic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for user_photo
-- ----------------------------
DROP TABLE IF EXISTS `user_photo`;
CREATE TABLE `user_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fk_ufid` (`user_id`),
  CONSTRAINT `FK_fk_ufid` FOREIGN KEY (`user_id`) REFERENCES `user_basic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_photo
-- ----------------------------
INSERT INTO `user_photo` VALUES ('12', '100012', 'group1/M00/00/00/rBEuvlnxQ9eAP_v7AAAv6Fn0wow118.jpg');
INSERT INTO `user_photo` VALUES ('15', '100012', 'group1/M00/00/00/rBEuvlnxiMeAWcahAAAN-VQSomQ746.jpg');
INSERT INTO `user_photo` VALUES ('48', '100009', 'group1/M00/00/00/rBEuvln3Af6AJpLlAAOiP0nRVtw860.jpg');
INSERT INTO `user_photo` VALUES ('49', '100009', 'group1/M00/00/00/rBEuvln3Af-AHJzBAAUPAhhY1zs356.jpg');
INSERT INTO `user_photo` VALUES ('50', '100009', 'group1/M00/00/00/rBEuvln3Af-AZC42AARNI2VWixQ502.jpg');
INSERT INTO `user_photo` VALUES ('51', '100009', 'group1/M00/00/00/rBEuvln3Af-AJVNEAALlRlZ9zAc935.jpg');
INSERT INTO `user_photo` VALUES ('54', '100025', 'group1/M00/00/00/rBEuvln3AvOAacRiAAUGygZ1rUM185.jpg');
INSERT INTO `user_photo` VALUES ('55', '100025', 'group1/M00/00/00/rBEuvln3AvSAbppOAATG3jvAb_M235.jpg');
INSERT INTO `user_photo` VALUES ('56', '100025', 'group1/M00/00/00/rBEuvln3AvSAdHByAAB7l0E9v1o364.jpg');
INSERT INTO `user_photo` VALUES ('57', '100025', 'group1/M00/00/00/rBEuvln3AvSAb9s7AAMs5VYsCU0325.jpg');
INSERT INTO `user_photo` VALUES ('58', '100025', 'group1/M00/00/00/rBEuvln3AvSACO_gAAGS95Xwec0272.jpg');
INSERT INTO `user_photo` VALUES ('59', '100025', 'group1/M00/00/00/rBEuvln3AvSAK9avAAFJLQ_Qins304.jpg');
INSERT INTO `user_photo` VALUES ('60', '100025', 'group1/M00/00/00/rBEuvln3AvSAerlGAAJfix-bpxk051.jpg');
INSERT INTO `user_photo` VALUES ('61', '100019', 'group1/M00/00/00/rBEuvln3A0aAN0qbAAGS95Xwec0528.jpg');
INSERT INTO `user_photo` VALUES ('62', '100019', 'group1/M00/00/00/rBEuvln3A0aADWblAAFJLQ_Qins788.jpg');
INSERT INTO `user_photo` VALUES ('63', '100019', 'group1/M00/00/01/rBEuvln3A0eAAhYIAAJfix-bpxk607.jpg');
INSERT INTO `user_photo` VALUES ('64', '100019', 'group1/M00/00/01/rBEuvln3A0eABcu5AASxDdSyJc8006.jpg');
INSERT INTO `user_photo` VALUES ('65', '100019', 'group1/M00/00/01/rBEuvln3A0eAVknAAAF-bZ17g_I678.jpg');
INSERT INTO `user_photo` VALUES ('66', '100019', 'group1/M00/00/01/rBEuvln3A0eAciXsAAZWoBDWdNg380.jpg');
INSERT INTO `user_photo` VALUES ('67', '100019', 'group1/M00/00/01/rBEuvln3A0eAFEhOAAFT8vv_8iQ263.jpg');
INSERT INTO `user_photo` VALUES ('68', '100019', 'group1/M00/00/01/rBEuvln3A0eAfu_PAAKpIFBDk6o741.jpg');
INSERT INTO `user_photo` VALUES ('69', '100006', 'group1/M00/00/01/rBEuvln33bGAFA8BAE0ctAqSN4Y449.jpg');
INSERT INTO `user_photo` VALUES ('70', '100006', 'group1/M00/00/01/rBEuvln33bGACnLLAAL-uegAHfI044.jpg');
INSERT INTO `user_photo` VALUES ('71', '100006', 'group1/M00/00/01/rBEuvln33bGACFO4AAM63g6yu_A708.jpg');
INSERT INTO `user_photo` VALUES ('72', '100006', 'group1/M00/00/01/rBEuvln33bKAAvWcABwegpvJpN8074.jpg');
INSERT INTO `user_photo` VALUES ('73', '100006', 'group1/M00/00/01/rBEuvln33bKAS4lpADrA8fBeNvU007.jpg');
INSERT INTO `user_photo` VALUES ('74', '100006', 'group1/M00/00/01/rBEuvln33bOAe2HAAATZuFJoABM522.jpg');
INSERT INTO `user_photo` VALUES ('75', '100006', 'group1/M00/00/01/rBEuvln33bOAbgZwAAMTuXu5aK0724.jpg');
INSERT INTO `user_photo` VALUES ('76', '100006', 'group1/M00/00/01/rBEuvln33bOAba4bAAHz6vOfkNI775.jpg');
INSERT INTO `user_photo` VALUES ('77', '100002', 'group1/M00/00/01/rBEuvln33nSAH4D6AAH1H76Ud1A061.jpg');
INSERT INTO `user_photo` VALUES ('79', '100002', 'group1/M00/00/01/rBEuvln4Ol-AV-VwAACB5M4dT7s652.jpg');
INSERT INTO `user_photo` VALUES ('80', '100002', 'group1/M00/00/01/rBEuvln4Ol-AS5T3AAAjtFqrcKo807.jpg');
INSERT INTO `user_photo` VALUES ('82', '100002', 'group1/M00/00/01/rBEuvln4Ol-AFXOeAACjM3JDtdI054.jpg');
INSERT INTO `user_photo` VALUES ('83', '100002', 'group1/M00/00/01/rBEuvln4OmCAU8t7AABrqyUCULE216.jpg');
INSERT INTO `user_photo` VALUES ('84', '100002', 'group1/M00/00/01/rBEuvln4OmCAX4RpAABMecZOeg8570.jpg');
INSERT INTO `user_photo` VALUES ('85', '100010', 'group1/M00/00/01/rBEuvln4PHmASX1YAABX1Y466xQ908.jpg');
INSERT INTO `user_photo` VALUES ('86', '100010', 'group1/M00/00/01/rBEuvln4PHmAE9mqAAAif9AeYUc042.jpg');
INSERT INTO `user_photo` VALUES ('87', '100010', 'group1/M00/00/01/rBEuvln4PHmAXhCvAAClgAwZey8111.jpg');
INSERT INTO `user_photo` VALUES ('88', '100010', 'group1/M00/00/01/rBEuvln4PHmAAXEvAAAg_1uOQ-4292.jpg');
INSERT INTO `user_photo` VALUES ('89', '100010', 'group1/M00/00/01/rBEuvln4PHmAeDgRAABlhpZ40Sc478.jpg');
INSERT INTO `user_photo` VALUES ('90', '100010', 'group1/M00/00/01/rBEuvln4PHmAZgT0AABxOMAoiuk539.jpg');
INSERT INTO `user_photo` VALUES ('91', '100010', 'group1/M00/00/01/rBEuvln4PHmAJQcZAABXnMIXfJ8496.jpg');
INSERT INTO `user_photo` VALUES ('92', '100010', 'group1/M00/00/01/rBEuvln4PHmASg-NAAA5C0Az2sI073.jpg');
INSERT INTO `user_photo` VALUES ('93', '100045', 'group1/M00/00/01/rBEuvln4PmOAVTLNAAA5C0Az2sI812.jpg');
INSERT INTO `user_photo` VALUES ('94', '100045', 'group1/M00/00/01/rBEuvln4PmSAFNoAAAAkSipah3s996.jpg');
INSERT INTO `user_photo` VALUES ('95', '100045', 'group1/M00/00/01/rBEuvln4PmSAMzp6AAA0EyGLdyM664.jpg');
INSERT INTO `user_photo` VALUES ('96', '100003', 'group1/M00/00/01/rBEuvln4UnuAHFTdAAJfix-bpxk616.jpg');
INSERT INTO `user_photo` VALUES ('97', '100003', 'group1/M00/00/01/rBEuvln4UnyAO3qNAASxDdSyJc8307.jpg');
INSERT INTO `user_photo` VALUES ('98', '100003', 'group1/M00/00/01/rBEuvln4UnyAa63aAAF-bZ17g_I501.jpg');
INSERT INTO `user_photo` VALUES ('99', '100003', 'group1/M00/00/01/rBEuvln4UnyAIwQrAAZWoBDWdNg240.jpg');
INSERT INTO `user_photo` VALUES ('100', '100003', 'group1/M00/00/01/rBEuvln4UnyAScR-AAFT8vv_8iQ185.jpg');
INSERT INTO `user_photo` VALUES ('101', '100003', 'group1/M00/00/01/rBEuvln4UnyAOB-3AAKpIFBDk6o297.jpg');
INSERT INTO `user_photo` VALUES ('102', '100005', 'group1/M00/00/01/rBEuvln4VECAfYK5AAE2QbD14KQ632.jpg');
INSERT INTO `user_photo` VALUES ('103', '100005', 'group1/M00/00/01/rBEuvln4VECAaSYoAAHNjJivitM335.jpg');
INSERT INTO `user_photo` VALUES ('104', '100005', 'group1/M00/00/01/rBEuvln4VECATvDXAABUxEm3DhE185.jpg');
INSERT INTO `user_photo` VALUES ('105', '100005', 'group1/M00/00/01/rBEuvln4VD-ALL6mAACIponWObk520.jpg');
INSERT INTO `user_photo` VALUES ('107', '100005', 'group1/M00/00/01/rBEuvln4VECAMHA8AAHoUju9-IM087.jpg');
INSERT INTO `user_photo` VALUES ('108', '100005', 'group1/M00/00/01/rBEuvln4VECAHNnKAAOf24MMGEw289.jpg');
INSERT INTO `user_photo` VALUES ('109', '100005', 'group1/M00/00/01/rBEuvln4VECAMn38AAF5Py-hGkc582.jpg');
INSERT INTO `user_photo` VALUES ('111', '100047', 'group1/M00/00/02/rBEuvln6j4SACDVGAAF5Py-hGkc734.jpg');
INSERT INTO `user_photo` VALUES ('112', '100047', 'group1/M00/00/02/rBEuvln6j9iAWp7hAAOf24MMGEw621.jpg');
INSERT INTO `user_photo` VALUES ('113', '100005', 'group1/M00/00/02/wKgrmln6mcOAFMkQAAEz9IJnsb8916.jpg');
INSERT INTO `user_photo` VALUES ('114', '100002', 'group1/M00/00/02/rBEuvln6u0yAR-hDAAFNx621zmE979.jpg');
INSERT INTO `user_photo` VALUES ('116', '100002', 'group1/M00/00/02/rBEuvln8D-KAAJ-GAASxDdSyJc8800.jpg');
INSERT INTO `user_photo` VALUES ('117', '100012', 'group1/M00/00/00/rBEuvlnxi_WAcQWFAAAmcIPIr9E661.jpg');

-- ----------------------------
-- Table structure for user_pick
-- ----------------------------
DROP TABLE IF EXISTS `user_pick`;
CREATE TABLE `user_pick` (
  `id` int(11) NOT NULL,
  `sex` char(2) NOT NULL COMMENT '根据性取向生成，用户不可修改',
  `age_low` int(11) DEFAULT NULL,
  `age_high` int(11) DEFAULT NULL,
  `workplace` varchar(50) DEFAULT NULL,
  `birthplace` varchar(50) DEFAULT NULL,
  `marry_status` varchar(50) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `salary_low` double DEFAULT NULL,
  `salary_high` double DEFAULT NULL,
  `height_low` int(11) DEFAULT NULL,
  `height_high` int(11) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `drink` int(11) DEFAULT NULL,
  `smoke` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_fk_upid` FOREIGN KEY (`id`) REFERENCES `user_basic` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_pick
-- ----------------------------
INSERT INTO `user_pick` VALUES ('100000', '男', '18', '30', '山东-济宁', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100001', '女', '18', '33', '山东-青岛', '山东-菏泽', '未婚', '硕士', '3000', '5000', '185', '195', '客户服务', '0', '0');
INSERT INTO `user_pick` VALUES ('100002', '男', '20', '25', '山东-济南', null, '未婚', '大学本科', '3000', '20000', null, null, null, null, null);
INSERT INTO `user_pick` VALUES ('100003', '女', '20', '30', '山东-济南', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_pick` VALUES ('100004', '男', '20', '30', '山东-济南', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_pick` VALUES ('100005', '女', null, null, null, null, '未婚', null, null, null, null, null, null, '1', '1');
INSERT INTO `user_pick` VALUES ('100006', '女', '18', '30', '山东-菏泽', null, '未婚', null, null, null, '162', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100007', '女', '18', '33', '河南-许昌', '山东-菏泽', '离异', '大专', '3000', '8000', '167', '187', '通信/电子', '0', null);
INSERT INTO `user_pick` VALUES ('100008', '男', '18', '33', '山东', '山东-菏泽', '未婚', '大学本科', '8000', '15000', '197', '188', '政府机构', '0', '1');
INSERT INTO `user_pick` VALUES ('100009', '女', '23', '29', '山东-青岛', null, '未婚', null, '12000', '20000', '154', '174', '计算机/互联网', '1', '1');
INSERT INTO `user_pick` VALUES ('100010', '男', '20', '26', '重庆-渝北区', null, '未婚', null, null, null, '195', '215', null, null, null);
INSERT INTO `user_pick` VALUES ('100011', '女', '20', '26', '山东', null, '未婚', '大专', '5000', '15000', '200', '210', null, null, null);
INSERT INTO `user_pick` VALUES ('100012', '女', '23', '29', null, null, '未婚', null, null, null, '162', '182', null, null, null);
INSERT INTO `user_pick` VALUES ('100015', '女', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100016', '女', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100017', '女', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100018', '女', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100019', '女', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100020', '女', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100021', '女', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100022', '女', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100023', '女', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100024', '女', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100025', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100026', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100027', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100028', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100029', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100030', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100031', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100032', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100033', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100034', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100035', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100036', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100037', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100038', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100039', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100040', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100041', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100042', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100043', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100044', '男', '18', '30', '山东-济南', null, '未婚', null, null, null, '160', '180', null, null, null);
INSERT INTO `user_pick` VALUES ('100045', '女', '23', '29', '山东-济南', null, '未婚', null, null, null, '169', '189', null, null, null);
INSERT INTO `user_pick` VALUES ('100046', '女', '18', '2', '山东-济南', null, '未婚', null, null, null, '167', '187', null, null, null);
INSERT INTO `user_pick` VALUES ('100047', '女', '20', '26', '山东-菏泽', null, '未婚', null, null, null, '184', '204', null, null, null);
INSERT INTO `user_pick` VALUES ('100048', '女', '22', '28', '山东-枣庄', null, '未婚', null, null, null, '191', '210', null, null, null);
INSERT INTO `user_pick` VALUES ('100051', '女', '18', '66', '北京-东城区', null, '未婚', null, null, null, '150', '200', null, null, null);
INSERT INTO `user_pick` VALUES ('100052', '女', '18', '66', '北京-东城区', null, '未婚', null, null, null, '150', '200', null, null, null);
INSERT INTO `user_pick` VALUES ('100053', '男', '18', '66', '北京-东城区', null, '未婚', null, null, null, '150', '200', null, null, null);

-- ----------------------------
-- Table structure for user_status
-- ----------------------------
DROP TABLE IF EXISTS `user_status`;
CREATE TABLE `user_status` (
  `id` int(11) NOT NULL,
  `love_history` varchar(50) DEFAULT NULL,
  `marry_time` varchar(50) DEFAULT NULL,
  `ldr` int(11) DEFAULT NULL,
  `parent_status` varchar(50) DEFAULT NULL,
  `bro_and_sis` varchar(50) DEFAULT NULL,
  `family_brief` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_fk_usid` FOREIGN KEY (`id`) REFERENCES `user_basic` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_status
-- ----------------------------
INSERT INTO `user_status` VALUES ('100001', '情场高手', '三年内', '0', '父母均健在', '2', '家庭美满幸福');
INSERT INTO `user_status` VALUES ('100005', null, '认同闪婚', null, null, null, null);
INSERT INTO `user_status` VALUES ('100007', '初恋还在', '一年内', '0', '只有母亲健在', '4', '张三张三张三张三张三张三张三');

-- ----------------------------
-- Table structure for visit_trace
-- ----------------------------
DROP TABLE IF EXISTS `visit_trace`;
CREATE TABLE `visit_trace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `interviewee_id` int(11) NOT NULL,
  `visit_time` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_fk_uvuserid` (`user_id`),
  KEY `FK_fk_uvvid` (`interviewee_id`),
  CONSTRAINT `FK_fk_uvuserid` FOREIGN KEY (`user_id`) REFERENCES `user_basic` (`id`),
  CONSTRAINT `FK_fk_uvvid` FOREIGN KEY (`interviewee_id`) REFERENCES `user_basic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visit_trace
-- ----------------------------
INSERT INTO `visit_trace` VALUES ('1', '100002', '100002', '2017-11-01 10:51:43', '1');
INSERT INTO `visit_trace` VALUES ('2', '100002', '100005', '2017-11-01 10:52:01', '1');
INSERT INTO `visit_trace` VALUES ('3', '100012', '100005', '2017-11-01 10:52:15', '1');
INSERT INTO `visit_trace` VALUES ('4', '100002', '100026', '2017-11-01 10:52:25', '0');
INSERT INTO `visit_trace` VALUES ('5', '100005', '100000', '2017-11-01 10:52:47', '0');
INSERT INTO `visit_trace` VALUES ('6', '100012', '100005', '2017-11-01 10:52:59', '0');
INSERT INTO `visit_trace` VALUES ('7', '100005', '100045', '2017-11-01 10:53:22', '1');
INSERT INTO `visit_trace` VALUES ('8', '100005', '100006', '2017-11-01 10:54:22', '0');
INSERT INTO `visit_trace` VALUES ('9', '100045', '100002', '2017-11-01 10:54:26', '1');
INSERT INTO `visit_trace` VALUES ('10', '100012', '100024', '2017-11-01 10:54:32', '0');
INSERT INTO `visit_trace` VALUES ('14', '100005', '100002', '2017-11-01 14:54:47', '1');
INSERT INTO `visit_trace` VALUES ('15', '100005', '100023', '2017-11-01 16:36:26', '0');
INSERT INTO `visit_trace` VALUES ('17', '100002', '100045', '2017-11-01 16:37:50', '1');
INSERT INTO `visit_trace` VALUES ('18', '100045', '100024', '2017-11-01 16:37:56', '0');
INSERT INTO `visit_trace` VALUES ('19', '100045', '100002', '2017-11-01 16:37:59', '1');
INSERT INTO `visit_trace` VALUES ('20', '100045', '100017', '2017-11-01 16:38:21', '0');
INSERT INTO `visit_trace` VALUES ('21', '100045', '100018', '2017-11-01 16:38:35', '0');
INSERT INTO `visit_trace` VALUES ('22', '100045', '100002', '2017-11-01 16:38:45', '1');
INSERT INTO `visit_trace` VALUES ('23', '100005', '100002', '2017-11-01 17:12:23', '1');
INSERT INTO `visit_trace` VALUES ('26', '100002', '100005', '2017-11-01 18:52:22', '0');
INSERT INTO `visit_trace` VALUES ('28', '100005', '100040', '2017-11-01 19:16:47', '0');
INSERT INTO `visit_trace` VALUES ('29', '100005', '100031', '2017-11-01 19:34:13', '0');
INSERT INTO `visit_trace` VALUES ('30', '100012', '100002', '2017-11-01 19:34:16', '1');
INSERT INTO `visit_trace` VALUES ('31', '100002', '100005', '2017-11-01 20:24:54', '1');
INSERT INTO `visit_trace` VALUES ('33', '100005', '100005', '2017-11-01 20:27:37', '1');
INSERT INTO `visit_trace` VALUES ('34', '100045', '100033', '2017-11-01 22:30:30', '0');
INSERT INTO `visit_trace` VALUES ('35', '100045', '100033', '2017-11-02 01:14:33', '0');
INSERT INTO `visit_trace` VALUES ('36', '100005', '100006', '2017-11-02 08:31:27', '0');
INSERT INTO `visit_trace` VALUES ('37', '100005', '100012', '2017-11-02 08:44:23', '0');
INSERT INTO `visit_trace` VALUES ('38', '100002', '100021', '2017-11-02 09:24:22', '0');
INSERT INTO `visit_trace` VALUES ('39', '100005', '100045', '2017-11-02 09:27:41', '1');
INSERT INTO `visit_trace` VALUES ('41', '100005', '100046', '2017-11-01 16:37:43', '0');
INSERT INTO `visit_trace` VALUES ('42', '100005', '100005', '2017-11-02 09:43:28', '0');
INSERT INTO `visit_trace` VALUES ('43', '100005', '100023', '2017-11-02 09:43:49', '0');
INSERT INTO `visit_trace` VALUES ('44', '100005', '100028', '2017-11-02 10:39:51', '0');
INSERT INTO `visit_trace` VALUES ('45', '100002', '100047', '2017-11-02 11:25:28', '1');
INSERT INTO `visit_trace` VALUES ('46', '100047', '100036', '2017-11-02 11:51:13', '0');
INSERT INTO `visit_trace` VALUES ('47', '100005', '100026', '2017-11-02 12:02:57', '0');
INSERT INTO `visit_trace` VALUES ('48', '100012', '100005', '2017-11-02 12:12:43', '1');
INSERT INTO `visit_trace` VALUES ('49', '100012', '100024', '2017-11-02 14:27:53', '0');
INSERT INTO `visit_trace` VALUES ('50', '100002', '100007', '2017-11-02 14:28:18', '1');
INSERT INTO `visit_trace` VALUES ('52', '100002', '100008', '2017-11-02 17:05:05', '1');
INSERT INTO `visit_trace` VALUES ('53', '100005', '100005', '2017-11-02 19:53:03', '1');
INSERT INTO `visit_trace` VALUES ('54', '100005', '100040', '2017-11-02 19:53:28', '0');
INSERT INTO `visit_trace` VALUES ('55', '100005', '100040', '2017-11-02 20:01:16', '0');
INSERT INTO `visit_trace` VALUES ('56', '100005', '100042', '2017-11-02 20:01:39', '0');
INSERT INTO `visit_trace` VALUES ('57', '100005', '100042', '2017-11-02 20:01:56', '0');
INSERT INTO `visit_trace` VALUES ('58', '100005', '100011', '2017-11-02 20:02:29', '0');
INSERT INTO `visit_trace` VALUES ('59', '100012', '100038', '2017-11-02 20:38:29', '0');
INSERT INTO `visit_trace` VALUES ('60', '100012', '100009', '2017-11-02 20:38:36', '0');
INSERT INTO `visit_trace` VALUES ('61', '100002', '100012', '2017-11-02 20:44:44', '1');
INSERT INTO `visit_trace` VALUES ('62', '100012', '100009', '2017-11-02 20:44:44', '0');
INSERT INTO `visit_trace` VALUES ('63', '100012', '100009', '2017-11-02 20:44:57', '0');
INSERT INTO `visit_trace` VALUES ('64', '100012', '100011', '2017-11-02 20:45:00', '0');
INSERT INTO `visit_trace` VALUES ('65', '100012', '100011', '2017-11-02 20:45:01', '0');
INSERT INTO `visit_trace` VALUES ('66', '100012', '100002', '2017-11-02 21:19:24', '1');
INSERT INTO `visit_trace` VALUES ('67', '100011', '100026', '2017-11-02 21:23:36', '0');
INSERT INTO `visit_trace` VALUES ('68', '100045', '100000', '2017-11-03 14:58:13', '0');
INSERT INTO `visit_trace` VALUES ('69', '100002', '100000', '2017-11-03 14:58:26', '0');
INSERT INTO `visit_trace` VALUES ('70', '100012', '100005', '2017-11-03 14:59:57', '1');
INSERT INTO `visit_trace` VALUES ('71', '100002', '100011', '2017-11-03 15:03:53', '0');
INSERT INTO `visit_trace` VALUES ('72', '100002', '100011', '2017-11-03 15:04:01', '0');
INSERT INTO `visit_trace` VALUES ('73', '100005', '100043', '2017-11-03 15:26:23', '0');
INSERT INTO `visit_trace` VALUES ('74', '100002', '100047', '2017-11-03 15:44:45', '0');
INSERT INTO `visit_trace` VALUES ('75', '100002', '100005', '2017-11-04 16:43:07', '0');
INSERT INTO `visit_trace` VALUES ('76', '100002', '100012', '2017-11-04 16:44:31', '0');
INSERT INTO `visit_trace` VALUES ('77', '100005', '100003', '2017-11-04 18:02:57', '0');
INSERT INTO `visit_trace` VALUES ('78', '100045', '100032', '2017-11-04 20:46:14', '0');
INSERT INTO `visit_trace` VALUES ('79', '100045', '100032', '2017-11-04 20:52:21', '0');
INSERT INTO `visit_trace` VALUES ('80', '100045', '100032', '2017-11-04 21:04:20', '0');
INSERT INTO `visit_trace` VALUES ('81', '100005', '100046', '2017-11-01 10:54:51', '0');
INSERT INTO `visit_trace` VALUES ('82', '100005', '100002', '2017-11-02 15:40:38', '1');
INSERT INTO `visit_trace` VALUES ('83', '100005', '100024', '2017-11-04 21:24:07', '0');
INSERT INTO `visit_trace` VALUES ('84', '100005', '100002', '2017-11-04 21:24:10', '0');
INSERT INTO `visit_trace` VALUES ('85', '100005', '100002', '2017-11-04 21:24:14', '0');
INSERT INTO `visit_trace` VALUES ('86', '100005', '100002', '2017-11-04 21:24:18', '0');
INSERT INTO `visit_trace` VALUES ('87', '100005', '100002', '2017-11-04 21:25:10', '0');
INSERT INTO `visit_trace` VALUES ('88', '100005', '100002', '2017-11-04 21:36:14', '0');
INSERT INTO `visit_trace` VALUES ('89', '100005', '100002', '2017-11-04 21:36:47', '0');
INSERT INTO `visit_trace` VALUES ('90', '100045', '100032', '2017-11-04 22:21:06', '0');
INSERT INTO `visit_trace` VALUES ('91', '100045', '100025', '2017-11-04 22:21:10', '0');
INSERT INTO `visit_trace` VALUES ('92', '100045', '100011', '2017-11-04 23:33:22', '0');
INSERT INTO `visit_trace` VALUES ('93', '100045', '100012', '2017-11-04 23:40:55', '0');
INSERT INTO `visit_trace` VALUES ('94', '100045', '100030', '2017-11-04 23:41:14', '0');
INSERT INTO `visit_trace` VALUES ('95', '100045', '100042', '2017-11-05 09:05:01', '0');
INSERT INTO `visit_trace` VALUES ('96', '100045', '100025', '2017-11-05 09:10:30', '0');
INSERT INTO `visit_trace` VALUES ('97', '100045', '100025', '2017-11-05 09:10:56', '0');
INSERT INTO `visit_trace` VALUES ('98', '100045', '100025', '2017-11-05 09:11:09', '0');
INSERT INTO `visit_trace` VALUES ('99', '100045', '100025', '2017-11-05 09:11:11', '0');
INSERT INTO `visit_trace` VALUES ('100', '100045', '100025', '2017-11-05 09:11:48', '0');
INSERT INTO `visit_trace` VALUES ('101', '100045', '100023', '2017-11-05 09:12:08', '0');
INSERT INTO `visit_trace` VALUES ('102', '100045', '100009', '2017-11-05 09:16:18', '0');
INSERT INTO `visit_trace` VALUES ('103', '100045', '100028', '2017-11-05 09:30:21', '0');
INSERT INTO `visit_trace` VALUES ('104', '100045', '100011', '2017-11-05 12:53:28', '0');
INSERT INTO `visit_trace` VALUES ('105', '100045', '100004', '2017-11-05 13:56:00', '0');
INSERT INTO `visit_trace` VALUES ('106', '100045', '100004', '2017-11-05 13:57:02', '0');
INSERT INTO `visit_trace` VALUES ('107', '100045', '100030', '2017-11-05 13:57:43', '0');
INSERT INTO `visit_trace` VALUES ('108', '100045', '100002', '2017-11-05 14:22:12', '0');

-- ----------------------------
-- Table structure for writer
-- ----------------------------
DROP TABLE IF EXISTS `writer`;
CREATE TABLE `writer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudonym` varchar(50) DEFAULT NULL,
  `reg_time` datetime DEFAULT NULL,
  `essay_count` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of writer
-- ----------------------------
INSERT INTO `writer` VALUES ('1', '莫言', '2017-10-27 14:35:36', '4', 'moyan', 'b714e56faeedf82621e280ee9e85f136', '1');
INSERT INTO `writer` VALUES ('2', '没有草原却爱上野马', '2017-10-30 20:17:11', '1', 'mycyqasym', '11cbaa2aaddac9f568eb3f985ddf7cd3', '0');
INSERT INTO `writer` VALUES ('3', '爱吃火锅的小辣椒', '2017-10-31 10:22:32', '1', 'moyan1', '1660e254ed6928e3c93df8beb3a6de88', '1');
INSERT INTO `writer` VALUES ('4', '奔跑的哈士奇', '2017-10-31 10:25:35', '2', 'moyan2', '84d6d590865933c8608706f2860d76c8', '1');
INSERT INTO `writer` VALUES ('11', 'adfads', '2017-11-03 15:11:32', '0', 'adfas', '348da5e157fcb9a3d3b455108e2f91dd', '1');
INSERT INTO `writer` VALUES ('12', '莫言3', '2017-11-03 16:29:03', '0', 'moyan3', 'b0640964b92d38541e1f51ba2c15ef0e', '1');
INSERT INTO `writer` VALUES ('13', '莫言4', '2017-11-03 16:30:53', '1', 'moyan4', 'ac6f5cb04b4be4cf3668c4de7a37872d', '1');

-- ----------------------------
-- Table structure for writer_essay_like
-- ----------------------------
DROP TABLE IF EXISTS `writer_essay_like`;
CREATE TABLE `writer_essay_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `essay_id` int(11) DEFAULT NULL,
  `like_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fk_essay_like_userid` (`user_id`),
  KEY `FK_fk_welikeeid` (`essay_id`),
  CONSTRAINT `FK_fk_essay_like_userid` FOREIGN KEY (`user_id`) REFERENCES `user_basic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_fk_welikeeid` FOREIGN KEY (`essay_id`) REFERENCES `essay` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of writer_essay_like
-- ----------------------------
INSERT INTO `writer_essay_like` VALUES ('1', '100012', '9', '2017-11-02 15:42:59');
INSERT INTO `writer_essay_like` VALUES ('2', '100012', '6', '2017-11-02 15:44:36');
INSERT INTO `writer_essay_like` VALUES ('3', '100002', '9', '2017-11-03 17:21:46');
INSERT INTO `writer_essay_like` VALUES ('4', '100012', '11', '2017-11-03 17:23:17');
INSERT INTO `writer_essay_like` VALUES ('5', '100005', '11', '2017-11-04 17:15:21');
INSERT INTO `writer_essay_like` VALUES ('6', '100045', '5', '2017-11-05 09:14:39');
INSERT INTO `writer_essay_like` VALUES ('7', '100045', '9', '2017-11-05 09:16:07');
DROP TRIGGER IF EXISTS `Trigger_writer_essay`;
DELIMITER ;;
CREATE TRIGGER `Trigger_writer_essay` AFTER INSERT ON `essay` FOR EACH ROW update writer set essay_count=essay_count+1 where id=new.writer_id ;
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Trigger_writer_essay_del`;
DELIMITER ;;
CREATE TRIGGER `Trigger_writer_essay_del` AFTER DELETE ON `essay` FOR EACH ROW UPDATE writer set essay_count=essay_count-1 WHERE id=old.writer_id ;
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Trigger_msgreplylike`;
DELIMITER ;;
CREATE TRIGGER `Trigger_msgreplylike` AFTER INSERT ON `message_like` FOR EACH ROW update message set like_count=like_count+1 where id=new.message_id ;
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Trigger_msg_reply`;
DELIMITER ;;
CREATE TRIGGER `Trigger_msg_reply` AFTER INSERT ON `message_reply` FOR EACH ROW update message set reply_count=reply_count+1 where id=new.message_id ;
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `trigger_sslike`;
DELIMITER ;;
CREATE TRIGGER `trigger_sslike` AFTER INSERT ON `success_story_like` FOR EACH ROW update success_story set like_count=like_count+1 where id=new.success_story_id ;
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `trigger_ssreply`;
DELIMITER ;;
CREATE TRIGGER `trigger_ssreply` AFTER INSERT ON `success_story_reply` FOR EACH ROW update success_story set reply_count=reply_count+1 where id=new.ss_id ;
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `trigger_seletterxual`;
DELIMITER ;;
CREATE TRIGGER `trigger_seletterxual` AFTER UPDATE ON `user_basic` FOR EACH ROW update user_pick set sex=new.sexual where id=new.id ;
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Trigger_essay_like`;
DELIMITER ;;
CREATE TRIGGER `Trigger_essay_like` AFTER INSERT ON `writer_essay_like` FOR EACH ROW update essay set like_count=like_count+1 where id=new.essay_id ;
;;
DELIMITER ;
