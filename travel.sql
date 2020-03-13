/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : travel

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-13 19:07:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for gbook
-- ----------------------------
DROP TABLE IF EXISTS `gbook`;
CREATE TABLE `gbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL COMMENT '1用户/2商户',
  `intro` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `trader_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gbook
-- ----------------------------
INSERT INTO `gbook` VALUES ('1', '1', '我是用户', '2014-06-12 22:34:45', '1', null);
INSERT INTO `gbook` VALUES ('2', '2', '我是商家', '2014-06-12 22:34:45', null, '2');
INSERT INTO `gbook` VALUES ('3', '1', '1', '2014-06-12 22:34:45', '1', null);
INSERT INTO `gbook` VALUES ('4', '1', '2', '2014-06-12 22:34:45', '1', null);
INSERT INTO `gbook` VALUES ('5', '1', '3', '2014-06-12 22:34:45', '1', null);
INSERT INTO `gbook` VALUES ('6', '1', '4', '2014-06-12 22:34:45', '1', null);
INSERT INTO `gbook` VALUES ('7', '1', '5', '2014-06-12 22:34:45', '1', null);
INSERT INTO `gbook` VALUES ('8', '1', '6', '2014-06-12 22:34:45', '1', null);
INSERT INTO `gbook` VALUES ('9', '1', '7', '2014-06-12 22:34:45', '1', null);
INSERT INTO `gbook` VALUES ('10', '1', '8', '2014-06-12 22:34:45', '1', null);
INSERT INTO `gbook` VALUES ('11', '1', '9', '2014-06-12 22:34:45', '1', null);
INSERT INTO `gbook` VALUES ('12', '1', '123\r\n\r\n123hasjkdasaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2019-01-01 22:02:36', '1', '1');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `intro` varchar(1024) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `trader_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '法意瑞-德奥捷-比利时7国双飞', '1、航空公司：选乘海南航空，直飞欧洲无经停无转机，可配全国联运\r\n2、住宿酒店：全程三-四星级酒店住宿\r\n3、全程用餐：酒店西式早餐，午晚餐五菜一汤\r\n4、贴心安排的旅游体验：\r\n体验1、捷克布拉格—尽览西欧国家精华，增览东欧城市风采\r\n体验2、维也纳—音乐之都聆听城市的每一个音符\r\n体验3、在卢浮宫品鉴著名的“爱神维纳斯”、“胜利女神”和“蒙娜丽莎”，您将惊叹于人类的艺术智慧，登56层蒙帕纳斯大厦', 'photo/place/place-1.jpg', '2014-06-12 22:34:45', '1');
INSERT INTO `news` VALUES ('2', '莫斯科-谢尔盖耶夫镇-圣彼得堡双飞', '★机票：国际间往返机票，团队经济舱,含机场建设税（团队机票不准退、不准换、不准更改）；\r\n★签证：中方+俄方免签名单；\r\n★住宿：当地三星级酒店双人标间；\r\n★用餐：早餐：酒店自助式、夜火车抵达后中式早餐；午、晚餐：中式八菜一汤（8-12人一桌）+水果+茶、谢镇简式俄餐；\r\n★巴士：境外空调旅游车及外籍司机；（如遇突发情况，旅行社将进行调整，但保证每人一正座）；\r\n★导游：境外司导及领队服务费共计：人民币560元/人；\r\n★火车：圣彼得堡/莫斯科四人包厢软卧夜火车；\r\n★门票：冬宫、夏宫花园、三圣教堂；\r', 'photo/place/place-2.jpg', '2014-06-12 22:34:45', '2');
INSERT INTO `news` VALUES ('3', '至尊纯玩昆明大理丽江版纳四飞8日', '特别服务：专人专车接机服务、导游全程随团，贴心服务细致讲解，让您全方位解读云南；\r\n特别美景：世外桃源--双廊渔村；原始村落-金梭岛等景点；\r\n特别赠送：价值190元，3100米张艺谋导演大型实景演出【《印象•丽江》雪山篇】，让您感动到落泪；\r\n价值77元，云杉坪索道及雪山环线车，让您感受纳西族的绚情文化；\r\n价值80元，【白族歌舞、三道茶表演】，让您品味人生；\r\n价值32元观音峡滑道车、价值25元石林电瓶车、价值50元野象谷单程索道、价值40元原始森林公园电瓶车，小费用也无需掏钱；\r\n每人每天一瓶矿泉水', 'photo/place/place-3.jpg', '2014-06-12 22:34:45', '1');
INSERT INTO `news` VALUES ('4', '腾冲-瑞丽-芒市双飞双汽5日游', '★ 行程亮点：北京出港独立成团，为您贴心设计，服务更专注，更贴心。\r\n★ 特别照顾：全程一部车，省内各地专职国语导游服务，让您感受无微不至的关怀；  \r\n★ 特别景点：1、藏于山峦叠翠的亚热带雨林深处--莫里瀑布\r\n             2、华侨出国历史长、侨属多，而成为我省著名的侨乡——和顺侨乡\r\n             3、内容之丰富，色彩之艳丽，为世界之罕见的地质现象——火山公园、热海景区；\r\n             4、国家重点湿地之一，也是云南省唯一的国家湿地保护区——北海湿地；\r\n  ', 'photo/place/place-4.jpg', '2014-06-12 22:34:45', '2');
INSERT INTO `news` VALUES ('7', '1', null, null, '2014-06-12 22:34:45', '1');
INSERT INTO `news` VALUES ('8', '2', null, null, '2014-06-12 22:34:45', '1');
INSERT INTO `news` VALUES ('9', '3', null, null, '2014-06-12 22:34:45', '1');
INSERT INTO `news` VALUES ('10', '4', null, null, '2014-06-12 22:34:45', '1');
INSERT INTO `news` VALUES ('11', '5', null, null, '2014-06-12 22:34:45', '1');
INSERT INTO `news` VALUES ('12', '6', null, null, '2014-06-12 22:34:45', '1');
INSERT INTO `news` VALUES ('13', '7', null, null, '2014-06-12 22:34:45', '1');
INSERT INTO `news` VALUES ('14', '8', null, null, '2014-06-12 22:34:45', '1');
INSERT INTO `news` VALUES ('15', '9', null, null, '2014-06-12 22:34:45', '1');
INSERT INTO `news` VALUES ('16', '0', null, null, '2014-06-12 22:34:45', '1');

-- ----------------------------
-- Table structure for note
-- ----------------------------
DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `intro` varchar(1024) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note
-- ----------------------------
INSERT INTO `note` VALUES ('1', '青岛，一段不愿醒来的梦', '一眨眼，忙碌了又快一年了，一直说每年都要去看看海的，也没得空闲。自从兼职做了护肤品代购店以后\r\r\n，本就忙碌的生活变得更加忙碌了，看来，做人确实要狠一点，就狠下心给自己放个假吧，来完成这一段\r\r\n小小的梦，不然就真的只能去看冬季的海了，几经挑选，最后决定了青岛，这个目的地，因为它，不远不\r\r\n近，又拥有很多可游可看的“点”。之前来了几次都是工作，每次都很忙碌，未曾仔细看过海一眼，要真\r\r\n说来青岛旅行，已经是读小学时候的事情了。\r\n\r\n \r\n\r\n每次出去游玩旅行都会在网上找目的地，看看哪里更好玩的，经常网', 'photo/place/place-1.jpg', '2014-06-12 22:34:45', '1');
INSERT INTO `note` VALUES ('2', '大理，风花雪月。昆明，四季如春', '甲午年，我们出发吧！大理，昆明，我来了！\r\n\r\n2014年2月1日，我和老妈准备前往那个神圣的南诏国——大理。本来打算坐飞机去大理的，结果一查携程\r\r\n网的机票很贵。大约一个人一千元左右。不得不放弃这种出行方式。开车一是很累，二是油费也很贵，还\r\r\n有可能堵车啊~，没车位了啊。所以，还是坐火车去。总的来说，火车票我两人一起花了1150元，还是比较\r\r\n经济划算的哈。在百度旅游上看别人的行程是  成都-昆明-大理。但是我觉得这样走除非你要去丽江才行\r\r\n。查地图最后得知，成昆线上有一个叫广通的站。这个站是在', 'photo/place/place-2.jpg', '2014-06-12 22:34:45', '1');
INSERT INTO `note` VALUES ('3', '穿着裙子游湖北', '上大学后第一次和室友出省旅游，由于学校五一放假九天，老早就和室友商量去哪。湖南，贵州，湖北，\r\r\n在这三个地方纠结了好久，在认为这次的旅行会泡汤的时候就在网上看到成都到宜昌的特价机票，就马上\r\r\n决定去湖北了。\r\n\r\n第一次在网上订好机票，车票，住宿。本着穷游的心态，住宿的地方要交通方便，又要干净舒适和便宜。\r\r\n光是订酒店就耗费了大量的脑细胞。', 'photo/place/place-3.jpg', '2014-06-12 22:34:45', '1');
INSERT INTO `note` VALUES ('4', '江苏无锡清明赏樱行', '又是一年清明季，又到春游出行时！~“清明”这个节气在我眼里早已是“春游”的代名词！~\r\n\r\n小的时候跟随父亲随军，在一个小农村里上小学，农村没什么太多条件，学生也没太多的游乐项目！~每年清明学校就会安排去隔岸的大榭岛扫墓春游，每次扫墓都要步行好几个小时到陵园，然后搞一个仪式，再席地吃一些零食，就又要步行几个小时回去了！~高年级的时候又担任了整个仪式的主持工作，于是对扫墓又多了几分期许和小孩子的荣耀感！~如今想来，那委实没什么乐趣可言，想不真切那时具体的感受了，也许是为了可以少上一天课，也许是为了可以和小伙', 'photo/place/place-4.jpg', '2014-06-12 22:34:45', '1');
INSERT INTO `note` VALUES ('7', '2', null, null, '2014-06-12 22:34:45', '1');
INSERT INTO `note` VALUES ('8', '3', null, null, '2014-06-12 22:34:45', '1');
INSERT INTO `note` VALUES ('9', '4', null, null, '2014-06-12 22:34:45', '1');
INSERT INTO `note` VALUES ('10', '5', null, null, '2014-06-12 22:34:45', '1');
INSERT INTO `note` VALUES ('11', '6', null, null, '2014-06-12 22:34:45', '1');
INSERT INTO `note` VALUES ('12', '7', null, null, '2014-06-12 22:34:45', '1');
INSERT INTO `note` VALUES ('13', '8', null, null, '2014-06-12 22:34:45', '1');
INSERT INTO `note` VALUES ('14', '9', null, null, '2014-06-12 22:34:45', '1');
INSERT INTO `note` VALUES ('16', '123', '123', null, '2018-05-28 23:29:42', null);
INSERT INTO `note` VALUES ('17', '123', '123', null, '2018-05-28 23:41:27', null);
INSERT INTO `note` VALUES ('18', '123', '123', null, '2018-05-28 23:44:35', null);
INSERT INTO `note` VALUES ('19', '123', '123', null, '2018-05-28 23:49:47', null);
INSERT INTO `note` VALUES ('20', '123', '123', null, '2018-05-28 23:55:08', null);
INSERT INTO `note` VALUES ('21', '123', '123', null, '2018-05-28 23:56:08', null);
INSERT INTO `note` VALUES ('22', '123', '123', null, '2018-05-28 23:59:03', null);
INSERT INTO `note` VALUES ('23', '123', '123', null, '2018-05-28 23:59:44', null);
INSERT INTO `note` VALUES ('24', '123', '123', null, '2018-05-29 00:02:32', null);
INSERT INTO `note` VALUES ('25', '123', '123', null, '2018-05-29 00:03:43', null);
INSERT INTO `note` VALUES ('26', '123', '123', null, '2018-05-29 00:05:06', null);
INSERT INTO `note` VALUES ('27', '123', '123', null, '2018-05-29 00:06:24', null);
INSERT INTO `note` VALUES ('28', '123', '123', null, '2018-05-29 00:17:10', null);
INSERT INTO `note` VALUES ('29', '123', '123', null, '2018-05-29 00:18:19', null);
INSERT INTO `note` VALUES ('30', '123', '123', null, '2018-05-29 00:18:48', null);
INSERT INTO `note` VALUES ('31', '123', '123', null, '2018-05-29 00:20:25', null);
INSERT INTO `note` VALUES ('32', '123', '123', null, '2018-05-29 00:22:02', null);
INSERT INTO `note` VALUES ('33', '123', '123', null, '2018-05-29 00:22:38', null);

-- ----------------------------
-- Table structure for place
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `intro` varchar(1024) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place
-- ----------------------------
INSERT INTO `place` VALUES ('1', '大连 - 星海广场', '星海广场位于大连南部海滨风景区，原是星海湾的一个废弃盐场。星海湾改造工程启幕于1993年7月16日，市政府利用建筑垃圾填海造地114公顷，开发土地62公顷，形成了总占地面积176万平方米的亚洲最大城市公用广场，工程竣工于1997年6月30日。广场中央设有全国最大的汉白玉华表，高19.97米，直径1.997米，以此纪念香港回归祖国，华表底座和柱身共饰有9条巨龙，寓意九州华夏儿女都是龙的传人。', 'photo/place/place-1.jpg', '2014-06-12 22:34:45');
INSERT INTO `place` VALUES ('2', '桂林 - 泛舟漓江', '漓江，属珠江流域西江水系，为支流桂江上游河段的通称，位于广西壮族自治区东北部。传统意义上的漓江起点为桂江源头越城岭猫儿山，现代水文定义为兴安县溶江镇灵渠口，终点为平乐三江口。漓江上游河段为大溶江，下游河段为传统名称的桂江。灵渠河口为桂江大溶江段和漓江段的分界点，荔浦河、恭城河口为漓江段和桂江段的分界点。漓江段全长164公里。沿江河床多为水质卵石，泥沙量小，水质清澈，两岸多为岩溶地貌。旅游资源丰富，著名的桂林山水就在漓江上。', 'photo/place/place-2.jpg', '2014-06-12 22:34:45');
INSERT INTO `place` VALUES ('3', '青岛 - 海湾大桥', '青岛海湾大桥又称胶州湾跨海大桥，是我国自行设计、施工、建造的特大跨海大桥。它是国家高速公路网G22青兰高速公路的起点段，是山东省“五纵四横一环”公路网上框架的组成部分，是青岛市规划的胶州湾东西两岸跨海通道“一路、一桥、一隧”中的“一桥”。大桥起自青岛主城区海尔路，经红岛到黄岛，大桥全长36.48公里，投资额近100亿，历时4年完工。全长超过我国杭州湾跨海大桥和美国切萨皮克跨海大桥，是当今世界上最长的跨海大桥，也是世界第二长桥。大桥于2011年6月30日全线通车。2011年上榜吉尼斯世界纪录和美国“福布斯”杂志，荣膺“全球最棒桥梁”荣誉称号。', 'photo/place/place-3.jpg', '2014-06-12 22:34:45');
INSERT INTO `place` VALUES ('4', '伦敦 - 城市夜景', '伦敦是大不列颠及北爱尔兰联合王国的首都及欧洲第一大城和最大经济金融中心。两千多年前，罗马人建立了这座都市。伦敦近几百年来一直在世界上具有巨大的影响力。城市的核心地区伦敦市，仍保持着自中世纪起就划分的界限。然而，最晚自19世纪起，“伦敦”这个名称同时也代表围绕着伦敦市开发的周围地区。这些卫星城市构成了伦敦的都会区和大伦敦。', 'photo/place/place-4.jpg', '2014-06-12 22:34:45');
INSERT INTO `place` VALUES ('5', '1', null, null, '2014-06-12 22:34:45');
INSERT INTO `place` VALUES ('6', '2', null, null, '2014-06-12 22:34:45');
INSERT INTO `place` VALUES ('7', '3', null, null, '2014-06-12 22:34:45');
INSERT INTO `place` VALUES ('8', '4', null, null, '2014-06-12 22:34:45');
INSERT INTO `place` VALUES ('9', '5', null, null, '2014-06-12 22:34:45');
INSERT INTO `place` VALUES ('10', '6', null, null, '2014-06-12 22:34:45');
INSERT INTO `place` VALUES ('11', '7', null, null, '2014-06-12 22:34:45');
INSERT INTO `place` VALUES ('12', '8', null, null, '2014-06-12 22:34:45');
INSERT INTO `place` VALUES ('13', '9', null, null, '2014-06-12 22:34:45');
INSERT INTO `place` VALUES ('14', '0', null, null, '2014-06-12 22:34:45');

-- ----------------------------
-- Table structure for trader
-- ----------------------------
DROP TABLE IF EXISTS `trader`;
CREATE TABLE `trader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trader
-- ----------------------------
INSERT INTO `trader` VALUES ('1', '1', '1', '中国国旅', '12312341234', '0');
INSERT INTO `trader` VALUES ('2', '2', '2', '中国青旅', '12312341234', '0');
INSERT INTO `trader` VALUES ('3', '3', '3', null, null, '0');
INSERT INTO `trader` VALUES ('4', '4', '4', null, null, '0');
INSERT INTO `trader` VALUES ('5', '5', '5', null, null, '0');
INSERT INTO `trader` VALUES ('6', '6', '6', null, null, '0');
INSERT INTO `trader` VALUES ('7', '7', '7', null, null, '0');
INSERT INTO `trader` VALUES ('8', '8', '8', null, null, '0');
INSERT INTO `trader` VALUES ('9', '9', '9', null, null, '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '1', '11123', '112312341234', '0');
INSERT INTO `user` VALUES ('2', '2', '2', '22', null, '0');
INSERT INTO `user` VALUES ('3', '3', '3', '33', null, '0');
INSERT INTO `user` VALUES ('4', '4', '4', '44', null, '0');
INSERT INTO `user` VALUES ('5', '5', '5', '55', null, '0');
INSERT INTO `user` VALUES ('6', '6', '6', '66', null, '0');
INSERT INTO `user` VALUES ('7', '7', '7', '77', null, '0');
INSERT INTO `user` VALUES ('8', '8', '8', '88', null, '0');
INSERT INTO `user` VALUES ('9', '9', '9', '99', null, '0');
