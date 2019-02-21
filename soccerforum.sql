/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : soccerforum

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-02-21 11:33:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for collectors
-- ----------------------------
DROP TABLE IF EXISTS `collectors`;
CREATE TABLE `collectors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `userId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_Users_Collectors` (`userId`) USING BTREE,
  CONSTRAINT `fk_Users_Collectors` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of collectors
-- ----------------------------

-- ----------------------------
-- Table structure for focususers
-- ----------------------------
DROP TABLE IF EXISTS `focususers`;
CREATE TABLE `focususers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `userId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_Users_FocusUsers` (`userId`) USING BTREE,
  CONSTRAINT `fk_Users_FocusUsers` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of focususers
-- ----------------------------
INSERT INTO `focususers` VALUES ('1', 'zluo', '2');

-- ----------------------------
-- Table structure for integrals
-- ----------------------------
DROP TABLE IF EXISTS `integrals`;
CREATE TABLE `integrals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `session` int(10) DEFAULT NULL,
  `win` int(10) DEFAULT NULL,
  `equal` int(10) DEFAULT NULL,
  `lose` int(10) DEFAULT NULL,
  `goal` int(10) DEFAULT NULL,
  `fumble` int(10) DEFAULT NULL,
  `score` int(10) DEFAULT NULL,
  `leagueId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_Leagues_Integrals` (`leagueId`) USING BTREE,
  CONSTRAINT `fk_Leagues_Integrals` FOREIGN KEY (`leagueId`) REFERENCES `leagues` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of integrals
-- ----------------------------
INSERT INTO `integrals` VALUES ('1', '曼联', '26', '15', '6', '5', '52', '35', '51', '1');
INSERT INTO `integrals` VALUES ('2', '利物浦', '26', '20', '5', '1', '59', '15', '65', '1');
INSERT INTO `integrals` VALUES ('3', '切尔西', '26', '15', '5', '6', '53', '37', '50', '1');
INSERT INTO `integrals` VALUES ('4', '巴塞罗那', '24', '16', '6', '2', '61', '23', '54', '3');
INSERT INTO `integrals` VALUES ('5', '皇家马德里', '24', '14', '3', '7', '41', '29', '45', '3');
INSERT INTO `integrals` VALUES ('6', '尤文图斯', '24', '21', '3', '0', '52', '15', '66', '2');
INSERT INTO `integrals` VALUES ('7', '国际米兰', '24', '14', '4', '6', '34', '17', '46', '2');
INSERT INTO `integrals` VALUES ('8', '多特蒙德', '22', '15', '6', '1', '54', '23', '51', '4');
INSERT INTO `integrals` VALUES ('9', '拜仁慕尼黑', '22', '15', '3', '4', '50', '26', '48', '4');
INSERT INTO `integrals` VALUES ('10', '巴黎圣日耳曼', '24', '21', '2', '1', '74', '14', '65', '5');
INSERT INTO `integrals` VALUES ('11', '河床', '19', '8', '6', '5', '28', '15', '30', '6');
INSERT INTO `integrals` VALUES ('12', '帕尔梅拉斯', '38', '23', '11', '4', '64', '26', '80', '7');
INSERT INTO `integrals` VALUES ('13', '广州恒大', '30', '20', '3', '7', '82', '36', '63', '8');
INSERT INTO `integrals` VALUES ('14', '扎马雷克', '21', '16', '4', '1', '48', '18', '52', '9');
INSERT INTO `integrals` VALUES ('15', '托卢卡', '7', '2', '1', '4', '6', '9', '7', '10');
INSERT INTO `integrals` VALUES ('16', '奥克兰城', '16', '15', '1', '0', '39', '15', '46', '11');
INSERT INTO `integrals` VALUES ('17', '曼城', '27', '21', '2', '4', '74', '20', '65', '1');
INSERT INTO `integrals` VALUES ('18', '托特纳姆热刺', '26', '20', '0', '6', '54', '25', '60', '1');
INSERT INTO `integrals` VALUES ('19', '阿森纳', '26', '15', '5', '6', '53', '37', '50', '1');
INSERT INTO `integrals` VALUES ('20', '沃尔夫汉普顿', '26', '11', '6', '9', '34', '33', '39', '1');
INSERT INTO `integrals` VALUES ('21', '沃特福德', '26', '10', '7', '9', '34', '34', '37', '1');
INSERT INTO `integrals` VALUES ('22', '埃弗顿', '27', '9', '6', '12', '36', '39', '33', '1');
INSERT INTO `integrals` VALUES ('23', '西汉姆联', '26', '9', '6', '11', '32', '39', '33', '1');
INSERT INTO `integrals` VALUES ('24', '伯恩茅斯', '26', '10', '3', '13', '37', '47', '33', '1');
INSERT INTO `integrals` VALUES ('25', '莱斯特城', '26', '9', '5', '12', '31', '34', '32', '1');
INSERT INTO `integrals` VALUES ('26', '水晶宫', '26', '7', '6', '13', '27', '34', '27', '1');
INSERT INTO `integrals` VALUES ('27', '布莱顿', '26', '7', '6', '13', '28', '39', '27', '1');
INSERT INTO `integrals` VALUES ('28', '伯恩利', '26', '7', '6', '13', '29', '47', '27', '1');
INSERT INTO `integrals` VALUES ('29', '纽卡斯尔联', '26', '6', '7', '13', '22', '34', '25', '1');
INSERT INTO `integrals` VALUES ('30', '卡迪夫城', '26', '7', '4', '15', '24', '47', '25', '1');
INSERT INTO `integrals` VALUES ('31', '南安普顿', '26', '5', '9', '12', '28', '44', '24', '1');
INSERT INTO `integrals` VALUES ('32', '富勒姆', '26', '4', '5', '17', '25', '58', '17', '1');
INSERT INTO `integrals` VALUES ('33', '哈德斯菲尔德', '26', '2', '5', '19', '14', '48', '11', '1');
INSERT INTO `integrals` VALUES ('34', '那不勒斯', '24', '16', '5', '3', '42', '18', '53', '2');
INSERT INTO `integrals` VALUES ('35', 'AC米兰', '24', '11', '9', '4', '35', '22', '42', '2');
INSERT INTO `integrals` VALUES ('36', '罗马', '24', '11', '5', '8', '51', '34', '41', '2');
INSERT INTO `integrals` VALUES ('37', '亚特兰大', '24', '11', '5', '8', '51', '34', '38', '2');
INSERT INTO `integrals` VALUES ('38', '拉齐奥', '24', '11', '5', '8', '33', '27', '38', '2');
INSERT INTO `integrals` VALUES ('39', '佛罗伦萨', '24', '8', '11', '5', '37', '26', '35', '2');
INSERT INTO `integrals` VALUES ('40', '都灵', '24', '8', '11', '5', '28', '22', '35', '2');
INSERT INTO `integrals` VALUES ('41', '桑普多利亚', '24', '9', '6', '9', '42', '32', '33', '2');
INSERT INTO `integrals` VALUES ('42', '萨索洛', '24', '7', '9', '8', '34', '39', '30', '2');
INSERT INTO `integrals` VALUES ('43', '帕尔马', '24', '8', '5', '11', '25', '33', '29', '2');
INSERT INTO `integrals` VALUES ('44', '热那亚', '24', '7', '7', '10', '32', '41', '28', '2');
INSERT INTO `integrals` VALUES ('45', '卡利亚里', '24', '5', '9', '10', '21', '35', '24', '2');
INSERT INTO `integrals` VALUES ('46', '乌迪内斯', '24', '5', '7', '12', '19', '31', '22', '2');
INSERT INTO `integrals` VALUES ('47', '斯帕', '24', '5', '7', '12', '21', '36', '22', '2');
INSERT INTO `integrals` VALUES ('48', '恩波利', '24', '5', '6', '13', '30', '45', '21', '2');
INSERT INTO `integrals` VALUES ('49', '博洛尼亚', '24', '3', '9', '12', '19', '37', '18', '2');
INSERT INTO `integrals` VALUES ('50', '弗洛辛诺内', '24', '3', '7', '14', '17', '46', '16', '2');
INSERT INTO `integrals` VALUES ('51', '切沃', '24', '1', '9', '14', '19', '48', '9', '2');
INSERT INTO `integrals` VALUES ('52', '马德里竞技', '24', '13', '8', '3', '34', '14', '47', '3');
INSERT INTO `integrals` VALUES ('53', '塞维利亚', '24', '10', '7', '7', '38', '28', '37', '3');
INSERT INTO `integrals` VALUES ('54', '赫塔费', '24', '9', '9', '6', '30', '21', '36', '3');
INSERT INTO `integrals` VALUES ('55', '阿拉维斯', '24', '10', '6', '8', '25', '28', '36', '3');
INSERT INTO `integrals` VALUES ('56', '皇家社会', '24', '9', '7', '8', '30', '25', '34', '3');
INSERT INTO `integrals` VALUES ('57', '皇家贝蒂斯', '24', '9', '6', '9', '27', '30', '33', '3');
INSERT INTO `integrals` VALUES ('58', '瓦伦西亚', '24', '6', '14', '4', '24', '20', '32', '3');
INSERT INTO `integrals` VALUES ('59', '埃瓦尔', '24', '7', '10', '7', '33', '34', '31', '3');
INSERT INTO `integrals` VALUES ('60', '毕尔巴鄂竞技', '24', '6', '12', '6', '24', '28', '30', '3');
INSERT INTO `integrals` VALUES ('61', '莱万特', '24', '8', '6', '10', '36', '43', '30', '3');
INSERT INTO `integrals` VALUES ('62', '莱加内斯', '24', '7', '8', '9', '25', '30', '29', '3');
INSERT INTO `integrals` VALUES ('63', '西班牙人', '24', '8', '5', '11', '27', '37', '29', '3');
INSERT INTO `integrals` VALUES ('64', '赫罗纳', '24', '6', '9', '9', '25', '34', '27', '3');
INSERT INTO `integrals` VALUES ('65', '瓦拉多利德', '24', '6', '8', '10', '19', '29', '26', '3');
INSERT INTO `integrals` VALUES ('66', '塞尔塔', '24', '6', '6', '12', '36', '43', '24', '3');
INSERT INTO `integrals` VALUES ('67', '比利亚雷亚尔', '24', '4', '11', '9', '26', '31', '23', '3');
INSERT INTO `integrals` VALUES ('68', '巴列卡诺', '24', '6', '5', '13', '27', '41', '23', '3');
INSERT INTO `integrals` VALUES ('69', '韦斯卡', '24', '4', '6', '14', '23', '40', '18', '3');
INSERT INTO `integrals` VALUES ('70', '门兴格拉德巴赫', '22', '13', '4', '5', '42', '22', '43', '4');
INSERT INTO `integrals` VALUES ('71', '莱比锡RB', '22', '12', '5', '5', '41', '19', '41', '4');
INSERT INTO `integrals` VALUES ('72', '勒沃库森', '22', '11', '3', '8', '39', '32', '36', '4');
INSERT INTO `integrals` VALUES ('73', '沃尔夫斯堡', '22', '10', '5', '7', '35', '30', '35', '4');
INSERT INTO `integrals` VALUES ('74', '法兰克福', '22', '9', '7', '6', '41', '28', '34', '4');
INSERT INTO `integrals` VALUES ('75', '霍芬海姆', '22', '8', '9', '5', '44', '32', '33', '4');
INSERT INTO `integrals` VALUES ('76', '柏林赫塔', '22', '8', '8', '6', '35', '32', '32', '4');
INSERT INTO `integrals` VALUES ('77', '不莱梅', '22', '8', '7', '7', '37', '33', '31', '4');
INSERT INTO `integrals` VALUES ('78', '美因茨', '22', '7', '6', '9', '23', '36', '27', '4');
INSERT INTO `integrals` VALUES ('79', '杜塞尔多夫', '22', '7', '4', '11', '25', '41', '25', '4');
INSERT INTO `integrals` VALUES ('80', '弗莱堡', '22', '5', '9', '8', '29', '37', '24', '4');
INSERT INTO `integrals` VALUES ('81', '沙尔克04', '22', '6', '5', '11', '25', '32', '23', '4');
INSERT INTO `integrals` VALUES ('82', '奥格斯堡', '22', '4', '6', '12', '31', '40', '18', '4');
INSERT INTO `integrals` VALUES ('83', '斯图加特', '22', '4', '3', '15', '18', '50', '15', '4');
INSERT INTO `integrals` VALUES ('84', '汉诺威96', '22', '3', '5', '14', '20', '47', '14', '4');
INSERT INTO `integrals` VALUES ('85', '纽伦堡', '22', '2', '7', '13', '17', '46', '13', '4');
INSERT INTO `integrals` VALUES ('86', '里尔', '25', '15', '5', '5', '42', '22', '50', '5');
INSERT INTO `integrals` VALUES ('87', '里昂', '25', '13', '7', '5', '40', '28', '46', '5');
INSERT INTO `integrals` VALUES ('88', '马赛', '25', '12', '4', '9', '40', '34', '40', '5');
INSERT INTO `integrals` VALUES ('89', '圣埃蒂安', '25', '11', '7', '7', '35', '31', '40', '5');
INSERT INTO `integrals` VALUES ('90', '蒙彼利埃', '25', '9', '11', '5', '32', '24', '38', '5');
INSERT INTO `integrals` VALUES ('91', '兰斯', '25', '9', '11', '5', '23', '22', '38', '5');
INSERT INTO `integrals` VALUES ('92', '尼斯', '25', '10', '7', '8', '19', '26', '37', '5');
INSERT INTO `integrals` VALUES ('93', '斯特拉斯堡', '25', '9', '9', '7', '40', '29', '36', '5');
INSERT INTO `integrals` VALUES ('94', '尼姆', '25', '10', '6', '9', '37', '35', '36', '5');
INSERT INTO `integrals` VALUES ('95', '雷恩', '25', '10', '6', '9', '34', '33', '36', '5');
INSERT INTO `integrals` VALUES ('96', '昂热', '25', '8', '9', '8', '29', '28', '33', '5');
INSERT INTO `integrals` VALUES ('97', '波尔多', '25', '8', '8', '9', '25', '26', '32', '5');
INSERT INTO `integrals` VALUES ('98', '南特', '25', '7', '6', '12', '30', '34', '27', '5');
INSERT INTO `integrals` VALUES ('99', '图卢兹', '25', '6', '9', '10', '24', '36', '27', '5');
INSERT INTO `integrals` VALUES ('100', '摩纳哥', '25', '5', '7', '13', '24', '41', '22', '5');
INSERT INTO `integrals` VALUES ('101', '亚眠', '25', '6', '3', '16', '19', '40', '21', '5');
INSERT INTO `integrals` VALUES ('102', '第戎', '24', '5', '5', '14', '20', '38', '20', '5');
INSERT INTO `integrals` VALUES ('103', '卡昂', '25', '3', '10', '12', '20', '33', '19', '5');
INSERT INTO `integrals` VALUES ('104', '甘冈', '25', '3', '6', '16', '17', '50', '15', '5');
INSERT INTO `integrals` VALUES ('105', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for leagues
-- ----------------------------
DROP TABLE IF EXISTS `leagues`;
CREATE TABLE `leagues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of leagues
-- ----------------------------
INSERT INTO `leagues` VALUES ('1', '英超');
INSERT INTO `leagues` VALUES ('2', '意甲');
INSERT INTO `leagues` VALUES ('3', '西甲');
INSERT INTO `leagues` VALUES ('4', '德甲');
INSERT INTO `leagues` VALUES ('5', '法甲');
INSERT INTO `leagues` VALUES ('6', '阿甲');
INSERT INTO `leagues` VALUES ('7', '巴西甲');
INSERT INTO `leagues` VALUES ('8', '中超');
INSERT INTO `leagues` VALUES ('9', '埃及超');
INSERT INTO `leagues` VALUES ('10', '墨西哥超');
INSERT INTO `leagues` VALUES ('11', '新西兰');

-- ----------------------------
-- Table structure for members
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `num` int(10) DEFAULT NULL,
  `teamId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_Teams_Members` (`teamId`) USING BTREE,
  CONSTRAINT `fk_Teams_Members` FOREIGN KEY (`teamId`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of members
-- ----------------------------
INSERT INTO `members` VALUES ('1', '德赫亚', '门将', '1', '1');
INSERT INTO `members` VALUES ('2', '罗梅罗', '门将', '22', '1');
INSERT INTO `members` VALUES ('3', '菲尔琼斯', '后卫', '2', '1');
INSERT INTO `members` VALUES ('4', '罗霍', '后卫', '16', '1');
INSERT INTO `members` VALUES ('5', '阿什利·杨', '后卫', '18', '1');
INSERT INTO `members` VALUES ('6', '瓦伦西亚', '后卫', '25', '1');
INSERT INTO `members` VALUES ('7', '达米安', '后卫', '36', '1');
INSERT INTO `members` VALUES ('8', '博格巴', '中场', '6', '1');
INSERT INTO `members` VALUES ('9', '赫雷拉', '中场', '21', '1');
INSERT INTO `members` VALUES ('10', '费莱尼', '中场', '27', '1');
INSERT INTO `members` VALUES ('11', '马蒂奇', '中场', '31', '1');
INSERT INTO `members` VALUES ('12', '桑切斯', '前锋', '7', '1');
INSERT INTO `members` VALUES ('13', '卢卡库', '前锋', '9', '1');
INSERT INTO `members` VALUES ('14', '拉什福德', '前锋', '10', '1');
INSERT INTO `members` VALUES ('15', '马夏尔', '前锋', '11', '1');
INSERT INTO `members` VALUES ('16', '埃里森', '门将', '13', '2');
INSERT INTO `members` VALUES ('17', '米尼奥莱', '门将', '22', '2');
INSERT INTO `members` VALUES ('18', '范戴克', '后卫', '4', '2');
INSERT INTO `members` VALUES ('19', 'J·戈麦斯', '后卫', '12', '2');
INSERT INTO `members` VALUES ('20', '莫雷诺', '后卫', '18', '2');
INSERT INTO `members` VALUES ('21', '洛夫伦', '后卫', '6', '2');
INSERT INTO `members` VALUES ('22', '法比尼奥', '中场', '3', '2');
INSERT INTO `members` VALUES ('23', '维纳尔杜姆', '中场', '5', '2');
INSERT INTO `members` VALUES ('24', '米尔纳', '中场', '7', '2');
INSERT INTO `members` VALUES ('25', '亨德森', '中场', '14', '2');
INSERT INTO `members` VALUES ('26', '拉拉纳', '中场', '20', '2');
INSERT INTO `members` VALUES ('27', '菲尔米塔', '前锋', '9', '2');
INSERT INTO `members` VALUES ('28', '马内', '前锋', '10', '2');
INSERT INTO `members` VALUES ('29', '萨拉赫', '前锋', '11', '2');
INSERT INTO `members` VALUES ('30', '斯图里奇', '前锋', '15', '2');
INSERT INTO `members` VALUES ('31', '凯帕', '门将', '1', '3');
INSERT INTO `members` VALUES ('32', '卡巴列罗', '门将', '13', '3');
INSERT INTO `members` VALUES ('33', '鲁迪格', '后卫', '2', '3');
INSERT INTO `members` VALUES ('34', 'M·阿隆索', '后卫', '3', '3');
INSERT INTO `members` VALUES ('35', '萨帕科斯塔', '后卫', '21', '3');
INSERT INTO `members` VALUES ('36', '大卫·路易斯', '后卫', '28', '3');
INSERT INTO `members` VALUES ('37', '埃摩森', '后卫', '33', '3');
INSERT INTO `members` VALUES ('38', '若日尼奥', '中场', '5', '3');
INSERT INTO `members` VALUES ('39', '坎特', '中场', '7', '3');
INSERT INTO `members` VALUES ('40', '巴克利', '中场', '8', '3');
INSERT INTO `members` VALUES ('41', '阿扎尔', '前锋', '10', '3');
INSERT INTO `members` VALUES ('42', '佩德罗', '前锋', '11', '3');
INSERT INTO `members` VALUES ('43', '吉鲁', '前锋', '18', '3');
INSERT INTO `members` VALUES ('44', '威廉', '前锋', '22', '3');
INSERT INTO `members` VALUES ('45', '莫拉塔', '前锋', '29', '3');
INSERT INTO `members` VALUES ('46', '特尔施特根', '门将', '1', '4');
INSERT INTO `members` VALUES ('47', '西莱森', '门将', '13', '4');
INSERT INTO `members` VALUES ('48', '皮克', '后卫', '3', '4');
INSERT INTO `members` VALUES ('49', '阿尔瓦', '后卫', '18', '4');
INSERT INTO `members` VALUES ('50', '塞尔吉罗贝托', '后卫', '20', '4');
INSERT INTO `members` VALUES ('51', '乌姆蒂蒂', '后卫', '23', '4');
INSERT INTO `members` VALUES ('52', '维尔马伦', '后卫', '24', '4');
INSERT INTO `members` VALUES ('53', '拉基蒂奇', '中场', '4', '4');
INSERT INTO `members` VALUES ('54', '布斯克茨', '中场', '5', '4');
INSERT INTO `members` VALUES ('55', '库蒂尼奥', '中场', '7', '4');
INSERT INTO `members` VALUES ('56', '拉菲尼亚', '中场', '12', '4');
INSERT INTO `members` VALUES ('57', '比达尔', '中场', '22', '4');
INSERT INTO `members` VALUES ('58', '苏亚雷斯', '前锋', '9', '4');
INSERT INTO `members` VALUES ('59', '梅西', '前锋', '10', '4');
INSERT INTO `members` VALUES ('60', '登贝莱', '前锋', '11', '4');
INSERT INTO `members` VALUES ('61', '纳瓦斯', '门将', '1', '5');
INSERT INTO `members` VALUES ('62', '库尔图瓦', '门将', '25', '5');
INSERT INTO `members` VALUES ('63', '卡瓦哈尔', '后卫', '2', '5');
INSERT INTO `members` VALUES ('64', '拉莫斯', '后卫', '4', '5');
INSERT INTO `members` VALUES ('65', 'R·瓦拉内', '后卫', '5', '5');
INSERT INTO `members` VALUES ('66', '马塞洛', '后卫', '12', '5');
INSERT INTO `members` VALUES ('67', '克罗斯', '中场', '8', '5');
INSERT INTO `members` VALUES ('68', '莫德里奇', '中场', '10', '5');
INSERT INTO `members` VALUES ('69', '卡塞米罗', '中场', '14', '5');
INSERT INTO `members` VALUES ('70', '巴尔维尔德', '中场', '15', '5');
INSERT INTO `members` VALUES ('71', '阿森西奥', '中场', '20', '5');
INSERT INTO `members` VALUES ('72', '伊斯科', '中场', '22', '5');
INSERT INTO `members` VALUES ('73', '本泽马', '前锋', '9', '5');
INSERT INTO `members` VALUES ('74', '贝儿', '前锋', '11', '5');
INSERT INTO `members` VALUES ('75', '迪亚兹', '前锋', '21', '5');
INSERT INTO `members` VALUES ('76', '什琴斯尼', '门将', '1', '6');
INSERT INTO `members` VALUES ('77', '皮索里奥', '门将', '21', '6');
INSERT INTO `members` VALUES ('78', '德西利奥', '后卫', '2', '6');
INSERT INTO `members` VALUES ('79', '基耶利尼', '后卫', '3', '6');
INSERT INTO `members` VALUES ('80', '巴尔扎利', '后卫', '15', '6');
INSERT INTO `members` VALUES ('81', '博努奇', '后卫', '19', '6');
INSERT INTO `members` VALUES ('82', '鲁加尼', '后卫', '24', '6');
INSERT INTO `members` VALUES ('83', '赫迪拉', '中场', '6', '6');
INSERT INTO `members` VALUES ('84', '道格拉斯·科斯塔', '中场', '11', '6');
INSERT INTO `members` VALUES ('85', '马图伊迪', '中场', '14', '6');
INSERT INTO `members` VALUES ('86', '夸德拉多', '中场', '16', '6');
INSERT INTO `members` VALUES ('87', 'R·本坦库尔', '中场', '30', '6');
INSERT INTO `members` VALUES ('88', 'C·罗纳尔多', '前锋', '7', '6');
INSERT INTO `members` VALUES ('89', '迪巴拉', '前锋', '10', '6');
INSERT INTO `members` VALUES ('90', '曼朱基齐', '前锋', '17', '6');
INSERT INTO `members` VALUES ('91', '汉达诺维奇', '门将', '1', '7');
INSERT INTO `members` VALUES ('92', '帕代利', '门将', '27', '7');
INSERT INTO `members` VALUES ('93', '贝尔尼', '门将', '40', '7');
INSERT INTO `members` VALUES ('94', '费尔萨利科', '后卫', '2', '7');
INSERT INTO `members` VALUES ('95', '米兰达', '后卫', '23', '7');
INSERT INTO `members` VALUES ('96', 'D·亨里克', '后卫', '29', '7');
INSERT INTO `members` VALUES ('97', '加利亚迪尼', '中场', '5', '7');
INSERT INTO `members` VALUES ('98', '纳英戈兰', '中场', '14', '7');
INSERT INTO `members` VALUES ('99', '若昂·马里奥', '中场', '15', '7');
INSERT INTO `members` VALUES ('100', '佩里西奇', '中场', '44', '7');
INSERT INTO `members` VALUES ('101', '布罗佐维奇', '中场', '77', '7');
INSERT INTO `members` VALUES ('102', '伊卡尔迪', '前锋', '9', '7');
INSERT INTO `members` VALUES ('103', 'L·马丁内斯', '前锋', '10', '7');
INSERT INTO `members` VALUES ('104', '巴尔德·凯塔', '前锋', '11', '7');
INSERT INTO `members` VALUES ('105', '波利塔诺', '前锋', '16', '7');
INSERT INTO `members` VALUES ('106', '比尔基', '门将', '1', '8');
INSERT INTO `members` VALUES ('107', '希茨', '门将', '35', '8');
INSERT INTO `members` VALUES ('108', '扎加杜', '后卫', '2', '8');
INSERT INTO `members` VALUES ('109', 'A·迪亚洛', '后卫', '4', '8');
INSERT INTO `members` VALUES ('110', '阿什拉夫', '后卫', '5', '8');
INSERT INTO `members` VALUES ('111', '格雷罗', '后卫', '13', '8');
INSERT INTO `members` VALUES ('112', '皮什切克', '后卫', '26', '8');
INSERT INTO `members` VALUES ('113', 'T·德拉尼', '中场', '6', '8');
INSERT INTO `members` VALUES ('114', '格策', '中场', '10', '8');
INSERT INTO `members` VALUES ('115', '香川真司', '中场', '23', '8');
INSERT INTO `members` VALUES ('116', '维采尔', '中场', '28', '8');
INSERT INTO `members` VALUES ('117', '帕科', '前锋', '9', '8');
INSERT INTO `members` VALUES ('118', '罗伊斯', '前锋', '11', '8');
INSERT INTO `members` VALUES ('119', '菲利普', '前锋', '20', '8');
INSERT INTO `members` VALUES ('120', 'J·拉尔森', '前锋', '34', '8');
INSERT INTO `members` VALUES ('121', '诺伊尔', '门将', '1', '9');
INSERT INTO `members` VALUES ('122', '乌尔赖希', '门将', '26', '9');
INSERT INTO `members` VALUES ('123', '胡梅尔斯', '后卫', '5', '9');
INSERT INTO `members` VALUES ('124', '拉菲尼亚', '后卫', '13', '9');
INSERT INTO `members` VALUES ('125', '热罗姆·博阿滕', '后卫', '17', '9');
INSERT INTO `members` VALUES ('126', '阿拉巴', '后卫', '27', '9');
INSERT INTO `members` VALUES ('127', '基米希', '后卫', '32', '9');
INSERT INTO `members` VALUES ('128', '蒂亚戈', '中场', '6', '9');
INSERT INTO `members` VALUES ('129', '里贝里', '中场', '7', '9');
INSERT INTO `members` VALUES ('130', '哈维·马丁内斯', '中场', '8', '9');
INSERT INTO `members` VALUES ('131', '罗本', '中场', '10', '9');
INSERT INTO `members` VALUES ('132', 'J·罗德里格斯', '中场', '11', '9');
INSERT INTO `members` VALUES ('133', '瓦格纳', '前锋', '2', '9');
INSERT INTO `members` VALUES ('134', '莱万多夫斯基', '前锋', '9', '9');
INSERT INTO `members` VALUES ('135', '托马斯·穆勒', '前锋', '25', '9');
INSERT INTO `members` VALUES ('136', '布冯', '门将', '1', '10');
INSERT INTO `members` VALUES ('137', 'A·阿雷奥拉', '门将', '16', '10');
INSERT INTO `members` VALUES ('138', '蒂亚戈席尔瓦', '后卫', '2', '10');
INSERT INTO `members` VALUES ('139', '金彭贝', '后卫', '3', '10');
INSERT INTO `members` VALUES ('140', '马尔尼奥斯', '后卫', '5', '10');
INSERT INTO `members` VALUES ('141', '阿尔维斯', '后卫', '13', '10');
INSERT INTO `members` VALUES ('142', '库尔扎瓦', '后卫', '20', '10');
INSERT INTO `members` VALUES ('143', '维拉蒂', '中场', '6', '10');
INSERT INTO `members` VALUES ('144', '迪玛利亚', '中场', '11', '10');
INSERT INTO `members` VALUES ('145', 'L·迪亚拉', '中场', '19', '10');
INSERT INTO `members` VALUES ('146', '法比奥', '中场', '25', '10');
INSERT INTO `members` VALUES ('147', '姆巴佩', '前锋', '7', '10');
INSERT INTO `members` VALUES ('148', '卡瓦尼', '前锋', '9', '10');
INSERT INTO `members` VALUES ('149', '内马尔', '前锋', '10', '10');
INSERT INTO `members` VALUES ('150', '穆萨·迪亚比', '前锋', '27', '10');
INSERT INTO `members` VALUES ('151', '阿尔马尼', '门将', '1', '11');
INSERT INTO `members` VALUES ('152', 'G·卢克斯', '门将', '12', '11');
INSERT INTO `members` VALUES ('153', 'J·迈达纳', '后卫', '2', '11');
INSERT INTO `members` VALUES ('154', 'J·莫雷拉', '后卫', '4', '11');
INSERT INTO `members` VALUES ('155', 'K·西比耶', '后卫', '16', '11');
INSERT INTO `members` VALUES ('156', '皮诺拉', '后卫', '22', '11');
INSERT INTO `members` VALUES ('157', 'H·马丁内斯', '后卫', '33', '11');
INSERT INTO `members` VALUES ('158', '祖库里尼', '中场', '5', '11');
INSERT INTO `members` VALUES ('159', '金特罗', '中场', '8', '11');
INSERT INTO `members` VALUES ('160', '帕拉西奥斯', '中场', '15', '11');
INSERT INTO `members` VALUES ('161', '马迪亚斯·莫亚', '中场', '30', '11');
INSERT INTO `members` VALUES ('162', 'S·Vera', '中场', '31', '11');
INSERT INTO `members` VALUES ('163', 'R·博雷', '前锋', '19', '11');
INSERT INTO `members` VALUES ('164', 'L·普拉托', '前锋', '27', '11');
INSERT INTO `members` VALUES ('165', '纳乔·斯科科', '前锋', '32', '11');
INSERT INTO `members` VALUES ('166', '费尔南多普拉斯', '门将', '1', '12');
INSERT INTO `members` VALUES ('167', '维瓦尔顿', '门将', '21', '12');
INSERT INTO `members` VALUES ('168', '贾尔森', '门将', '42', '12');
INSERT INTO `members` VALUES ('169', '埃杜', '后卫', '3', '12');
INSERT INTO `members` VALUES ('170', '迪奥戈戈亚诺', '后卫', '6', '12');
INSERT INTO `members` VALUES ('171', '梅克', '后卫', '12', '12');
INSERT INTO `members` VALUES ('172', '卢安', '后卫', '13', '12');
INSERT INTO `members` VALUES ('173', '戈麦斯', '后卫', '15', '12');
INSERT INTO `members` VALUES ('174', '吉安', '中场', '2', '12');
INSERT INTO `members` VALUES ('175', '拉斐尔·维嘉', '中场', '7', '12');
INSERT INTO `members` VALUES ('176', '莫伊塞斯', '中场', '10', '12');
INSERT INTO `members` VALUES ('177', '吉斯塔沃斯卡尔帕', '中场', '14', '12');
INSERT INTO `members` VALUES ('178', '杜杜', '前锋', '7', '12');
INSERT INTO `members` VALUES ('179', '威廉', '前锋', '29', '12');
INSERT INTO `members` VALUES ('180', '戴维森', '前锋', '16', '12');
INSERT INTO `members` VALUES ('181', '曾诚', '门将', '19', '13');
INSERT INTO `members` VALUES ('182', '刘世博', '门将', '40', '13');
INSERT INTO `members` VALUES ('183', '梅芳', '后卫', '3', '13');
INSERT INTO `members` VALUES ('184', '张琳芃', '后卫', '5', '13');
INSERT INTO `members` VALUES ('185', '冯潇霆', '后卫', '6', '13');
INSERT INTO `members` VALUES ('186', '邓涵文', '后卫', '23', '13');
INSERT INTO `members` VALUES ('187', '李学鹏', '后卫', '35', '13');
INSERT INTO `members` VALUES ('188', '保利尼奥', '中场', '9', '13');
INSERT INTO `members` VALUES ('189', '郑智', '中场', '10', '13');
INSERT INTO `members` VALUES ('190', '黄博文', '中场', '16', '13');
INSERT INTO `members` VALUES ('191', '于汉超', '中场', '20', '13');
INSERT INTO `members` VALUES ('192', '唐诗', '中场', '22', '13');
INSERT INTO `members` VALUES ('193', '阿兰', '前锋', '7', '13');
INSERT INTO `members` VALUES ('194', '杨立瑜', '前锋', '17', '13');
INSERT INTO `members` VALUES ('195', '郜林', '前锋', '29', '13');
INSERT INTO `members` VALUES ('196', 'E·艾尔-塞尔德', '门将', '16', '14');
INSERT INTO `members` VALUES ('197', '哈姆迪', '后卫', '28', '14');
INSERT INTO `members` VALUES ('198', 'H·埃马姆', '后卫', '7', '14');
INSERT INTO `members` VALUES ('199', 'H·纳古兹', '后卫', '21', '14');
INSERT INTO `members` VALUES ('200', 'M·伊布拉西姆', '中场', '20', '14');
INSERT INTO `members` VALUES ('201', '卡拉巴', '中场', '11', '14');
INSERT INTO `members` VALUES ('202', 'F·萨西', '中场', '50', '14');
INSERT INTO `members` VALUES ('203', '塔雷克', '中场', '3', '14');
INSERT INTO `members` VALUES ('204', '布塔伊卜', '前锋', '9', '14');
INSERT INTO `members` VALUES ('205', 'A·塔拉韦拉', '门将', '1', '15');
INSERT INTO `members` VALUES ('206', 'R·帕凯尔', '门将', '12', '15');
INSERT INTO `members` VALUES ('207', '圣地亚哥·加西亚', '后卫', '3', '15');
INSERT INTO `members` VALUES ('208', 'O·冈萨雷斯', '后卫', '4', '15');
INSERT INTO `members` VALUES ('209', 'H·阿科斯塔', '后卫', '13', '15');
INSERT INTO `members` VALUES ('210', 'R·萨利纳斯', '后卫', '29', '15');
INSERT INTO `members` VALUES ('211', '威利安', '中场', '8', '15');
INSERT INTO `members` VALUES ('212', 'A·里奥斯', '中场', '15', '15');
INSERT INTO `members` VALUES ('213', 'R·鲁伊兹', '中场', '17', '15');
INSERT INTO `members` VALUES ('214', '卡内罗', '中场', '25', '15');
INSERT INTO `members` VALUES ('215', 'A·梅迪纳', '中场', '30', '15');
INSERT INTO `members` VALUES ('216', 'L·门多萨', '前锋', '7', '15');
INSERT INTO `members` VALUES ('217', 'C·埃斯奎维尔', '前锋', '11', '15');
INSERT INTO `members` VALUES ('218', 'E·特瑞里奥', '前锋', '21', '15');
INSERT INTO `members` VALUES ('219', '苏维卡赖', '门将', '1', '16');
INSERT INTO `members` VALUES ('220', 'T·Iwata', '后卫', '3', '16');
INSERT INTO `members` VALUES ('221', 'A·Rogers', '后卫', '13', '16');
INSERT INTO `members` VALUES ('222', '里埃拉', '中场', '8', '16');
INSERT INTO `members` VALUES ('223', 'D·摩根', '中场', '15', '16');
INSERT INTO `members` VALUES ('224', 'J·Vale', '中场', '4', '16');
INSERT INTO `members` VALUES ('225', 'D·布朗尼', '前锋', '19', '16');
INSERT INTO `members` VALUES ('226', '贾维', '前锋', '0', '16');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `context` text CHARACTER SET utf8,
  `leagueId` int(10) unsigned DEFAULT NULL,
  `visitId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_Posts_Visits` (`visitId`) USING BTREE,
  KEY `fk_Leagues_Posts` (`leagueId`) USING BTREE,
  KEY `fk_Users_Posts` (`userId`) USING BTREE,
  CONSTRAINT `fk_Leagues_Posts` FOREIGN KEY (`leagueId`) REFERENCES `leagues` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Posts_Visits` FOREIGN KEY (`visitId`) REFERENCES `visits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Users_Posts` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', '1', '复盘曼联1-0热刺', null, '1', '1');
INSERT INTO `posts` VALUES ('2', '2', '反驳厄齐尔人蜜的说法', null, '1', '2');
INSERT INTO `posts` VALUES ('3', null, '米尔纳发文感谢耐克订制球鞋', null, '1', null);
INSERT INTO `posts` VALUES ('4', null, '三名三狮国门放一个走人？', null, '1', null);
INSERT INTO `posts` VALUES ('5', null, '德尚：外界觉得博格巴奇怪自大', null, '1', null);
INSERT INTO `posts` VALUES ('6', null, '内德维德：希克本有机会成为伊布那样的世界级前锋', null, '2', null);
INSERT INTO `posts` VALUES ('7', null, '博洛尼亚租借比利亚雷亚尔双星桑索内和索里亚诺', null, '2', null);
INSERT INTO `posts` VALUES ('8', null, '意媒：多特蒙德有意亚特兰大后卫戈森斯', null, '2', null);
INSERT INTO `posts` VALUES ('9', null, '恩波利主席：国米向我们询问18岁小将特拉奥雷', null, '2', null);
INSERT INTO `posts` VALUES ('10', null, '晚旗报：担心机会有限，巴雷拉不太想1月加盟切尔西', null, '2', null);
INSERT INTO `posts` VALUES ('11', null, '特拉普等法兰克福球星与凯尔特人泰斯交换球衣', null, '3', null);
INSERT INTO `posts` VALUES ('12', null, '减肥有成效！主帅：克鲁泽的身体状况更好了', null, '3', null);
INSERT INTO `posts` VALUES ('13', null, '德尚：帕瓦尔去拜仁是好事，不过对他的要求也会更高', null, '3', null);
INSERT INTO `posts` VALUES ('14', null, '现役德甲执教时间最长教练，弗赖堡愿和施特赖希续约', null, '3', null);
INSERT INTO `posts` VALUES ('15', null, '踢球者德国海外球员评级', null, '3', null);
INSERT INTO `posts` VALUES ('16', null, '巴尔特拉：我让维尼修斯站起来，他就问候我的母亲', null, '4', null);
INSERT INTO `posts` VALUES ('17', null, '库库雷亚：巴萨的青训球员天赋很高', null, '4', null);
INSERT INTO `posts` VALUES ('18', null, '索拉里：马塞洛和伊斯科替补没有个人恩怨的因素', null, '4', null);
INSERT INTO `posts` VALUES ('19', null, '降级警告！比利亚雷亚尔西甲半程17分创队史最差纪录', null, '4', null);
INSERT INTO `posts` VALUES ('20', null, '皇马外租门将卢宁机会寥寥，西甲副班长有意接盘', null, '4', null);
INSERT INTO `posts` VALUES ('21', null, '帕耶特谈离队传闻：那些都是噪音', null, '5', null);
INSERT INTO `posts` VALUES ('22', null, '洛里：曼联之前经历过低谷', null, '5', null);
INSERT INTO `posts` VALUES ('23', null, '吉鲁：法布雷加斯是我合作过的最好的球员之一', null, '5', null);
INSERT INTO `posts` VALUES ('24', null, '法媒：雅尔迪姆将执教大连一方', null, '5', null);
INSERT INTO `posts` VALUES ('25', null, '古尔库夫：一个真正的十号', null, '5', null);
INSERT INTO `posts` VALUES ('26', null, '他15岁就进甲级联赛，和梅西并称阿根廷双子星的男人怎么会差？', null, '6', null);
INSERT INTO `posts` VALUES ('27', null, '惊艳！阿根廷劲旅推出限量版球衣：乌鸦毛皮', null, '6', null);
INSERT INTO `posts` VALUES ('28', null, '特维斯回阿根廷后陷入低谷！4轮不进球队内评分倒数', null, '6', null);
INSERT INTO `posts` VALUES ('29', null, '阿根廷两大绯闻新帅曝光 球迷最爱的西蒙尼没戏', null, '6', null);
INSERT INTO `posts` VALUES ('30', null, '阿根廷独立竞技足球俱乐部组建电竞战队，将参加英雄联盟世界赛', null, '6', null);
INSERT INTO `posts` VALUES ('31', null, '巴西足球豪门火灾致10人死亡，足球热土上青年球员生存环境恶劣', null, '7', null);
INSERT INTO `posts` VALUES ('32', null, '盘点巴西身价最高的十位球员：英超多达四人，前两位身价均过亿！', null, '7', null);
INSERT INTO `posts` VALUES ('33', null, '帕尔梅拉斯队获巴西足坛最高赞助费合同', null, '7', null);
INSERT INTO `posts` VALUES ('34', null, '激烈程度不输英超！巴西甲级联赛冠军之争再出悬念！', null, '7', null);
INSERT INTO `posts` VALUES ('35', null, '魔威巴西甲级联赛竞彩分析 富明尼斯VS国际体育会', null, '7', null);
INSERT INTO `posts` VALUES ('36', null, '四川雄起！四川九牛将于今日举办新闻发布会', null, '8', null);
INSERT INTO `posts` VALUES ('37', null, '复盘鲁能4-1河内：问题不少，但能炸出逆转还是值得肯定', null, '8', null);
INSERT INTO `posts` VALUES ('38', null, '是时候讨论冯潇霆的历史地位了', null, '8', null);
INSERT INTO `posts` VALUES ('39', null, '2019中超冬季转会窗转会汇总（实时更新）', null, '8', null);
INSERT INTO `posts` VALUES ('40', null, '里皮的中国计划可能是什么内容？', null, '8', null);
INSERT INTO `posts` VALUES ('41', null, '近日，埃及足球超级联赛阿赫利队连续三年夺得联赛冠军！', null, '9', null);
INSERT INTO `posts` VALUES ('42', null, '心碎时刻！ 埃及足球评论员看到被绝杀后突发心脏病去世', null, '9', null);
INSERT INTO `posts` VALUES ('43', null, '沙特体育局长买个埃及球队改叫金字塔!如今又追伊布', null, '9', null);
INSERT INTO `posts` VALUES ('44', null, '足球：埃及迈向复兴的助燃剂', null, '9', null);
INSERT INTO `posts` VALUES ('45', null, '萨拉赫 到底怎么样', null, '9', null);
INSERT INTO `posts` VALUES ('46', null, '带你了解神秘的墨西哥足球联赛', null, '10', null);
INSERT INTO `posts` VALUES ('47', null, '墨西哥足球联赛——又一个在球场硬件上碾压中超的联赛', null, '10', null);
INSERT INTO `posts` VALUES ('48', null, '墨西哥球队获梅西INS关注！向对手炫耀：你们无法取得的成就', null, '10', null);
INSERT INTO `posts` VALUES ('49', null, '墨西哥联赛发生惨案：暴徒冲进球场连开百枪 1球员丧生', null, '10', null);
INSERT INTO `posts` VALUES ('50', null, '马拉多纳再度出山 执教墨西哥球队', null, '10', null);
INSERT INTO `posts` VALUES ('51', null, '澳超联赛将在未来两个赛季连续“扩军”，每赛季各增加一支队', null, '11', null);
INSERT INTO `posts` VALUES ('52', null, '澳超颇具特色即将开幕 吸引本田圭佑+博尔特的联赛有何魔力？', null, '11', null);
INSERT INTO `posts` VALUES ('53', null, null, null, null, null);

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `leagueId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_Leagues_Teams` (`leagueId`) USING BTREE,
  CONSTRAINT `fk_Leagues_Teams` FOREIGN KEY (`leagueId`) REFERENCES `leagues` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of teams
-- ----------------------------
INSERT INTO `teams` VALUES ('1', '曼联', '1');
INSERT INTO `teams` VALUES ('2', '利物浦', '1');
INSERT INTO `teams` VALUES ('3', '切尔西', '1');
INSERT INTO `teams` VALUES ('4', '巴塞罗那', '3');
INSERT INTO `teams` VALUES ('5', '皇家马德里', '3');
INSERT INTO `teams` VALUES ('6', '尤文图斯', '2');
INSERT INTO `teams` VALUES ('7', '国际米兰', '2');
INSERT INTO `teams` VALUES ('8', '多特蒙德', '4');
INSERT INTO `teams` VALUES ('9', '拜仁慕尼黑', '4');
INSERT INTO `teams` VALUES ('10', '巴黎圣日耳曼', '5');
INSERT INTO `teams` VALUES ('11', '河床', '6');
INSERT INTO `teams` VALUES ('12', '帕尔梅拉斯', '7');
INSERT INTO `teams` VALUES ('13', '广州恒大', '8');
INSERT INTO `teams` VALUES ('14', '扎马雷克', '9');
INSERT INTO `teams` VALUES ('15', '托卢卡', '10');
INSERT INTO `teams` VALUES ('16', '奥克兰城', '11');
INSERT INTO `teams` VALUES ('17', '曼城', '1');
INSERT INTO `teams` VALUES ('18', '托特纳姆热刺', '1');
INSERT INTO `teams` VALUES ('19', '阿森纳', '1');
INSERT INTO `teams` VALUES ('20', '沃尔夫汉普顿', '1');
INSERT INTO `teams` VALUES ('21', '沃特福德', '1');
INSERT INTO `teams` VALUES ('22', '埃弗顿', '1');
INSERT INTO `teams` VALUES ('23', '西汉姆联', '1');
INSERT INTO `teams` VALUES ('24', '伯恩茅斯', '1');
INSERT INTO `teams` VALUES ('25', '莱斯特城', '1');
INSERT INTO `teams` VALUES ('26', '水晶宫', '1');
INSERT INTO `teams` VALUES ('27', '布莱顿', '1');
INSERT INTO `teams` VALUES ('28', '伯恩利', '1');
INSERT INTO `teams` VALUES ('29', '纽卡斯尔联', '1');
INSERT INTO `teams` VALUES ('30', '卡迪夫城', '1');
INSERT INTO `teams` VALUES ('31', '南安普顿', '1');
INSERT INTO `teams` VALUES ('32', '富勒姆', '1');
INSERT INTO `teams` VALUES ('33', '哈德斯菲尔德', '1');
INSERT INTO `teams` VALUES ('34', '那不勒斯', '2');
INSERT INTO `teams` VALUES ('35', 'AC米兰', '2');
INSERT INTO `teams` VALUES ('36', '罗马', '2');
INSERT INTO `teams` VALUES ('37', '亚特兰大', '2');
INSERT INTO `teams` VALUES ('38', '拉齐奥', '2');
INSERT INTO `teams` VALUES ('39', '佛罗伦萨', '2');
INSERT INTO `teams` VALUES ('40', '都灵', '2');
INSERT INTO `teams` VALUES ('41', '桑普多利亚', '2');
INSERT INTO `teams` VALUES ('42', '萨索洛', '2');
INSERT INTO `teams` VALUES ('43', '帕尔马', '2');
INSERT INTO `teams` VALUES ('44', '热那亚', '2');
INSERT INTO `teams` VALUES ('45', '卡利亚斯', '2');
INSERT INTO `teams` VALUES ('46', '乌迪内斯', '2');
INSERT INTO `teams` VALUES ('47', '斯帕', '2');
INSERT INTO `teams` VALUES ('48', '恩波利', '2');
INSERT INTO `teams` VALUES ('49', '博洛尼亚', '2');
INSERT INTO `teams` VALUES ('50', '弗洛辛诺内', '2');
INSERT INTO `teams` VALUES ('51', '切沃', '2');
INSERT INTO `teams` VALUES ('52', '马德里竞技', '3');
INSERT INTO `teams` VALUES ('53', '塞维利亚', '3');
INSERT INTO `teams` VALUES ('54', '赫塔费', '3');
INSERT INTO `teams` VALUES ('55', '阿拉维斯', '3');
INSERT INTO `teams` VALUES ('56', '皇家社会', '3');
INSERT INTO `teams` VALUES ('57', '皇家贝蒂斯', '3');
INSERT INTO `teams` VALUES ('58', '瓦伦西亚', '3');
INSERT INTO `teams` VALUES ('59', '埃瓦尔', '3');
INSERT INTO `teams` VALUES ('60', '毕尔巴鄂竞技', '3');
INSERT INTO `teams` VALUES ('61', '莱万特', '3');
INSERT INTO `teams` VALUES ('62', '莱内加斯', '3');
INSERT INTO `teams` VALUES ('63', '西班牙人', '3');
INSERT INTO `teams` VALUES ('64', '赫罗纳', '3');
INSERT INTO `teams` VALUES ('65', '瓦拉多利德', '3');
INSERT INTO `teams` VALUES ('66', '塞尔塔', '3');
INSERT INTO `teams` VALUES ('67', '比利亚雷亚尔', '3');
INSERT INTO `teams` VALUES ('68', '巴列卡诺', '3');
INSERT INTO `teams` VALUES ('69', '韦斯卡', '3');
INSERT INTO `teams` VALUES ('70', '门兴格拉德巴赫', '4');
INSERT INTO `teams` VALUES ('71', '莱比锡RB', '4');
INSERT INTO `teams` VALUES ('72', '勒沃库森', '4');
INSERT INTO `teams` VALUES ('73', '沃尔夫斯堡', '4');
INSERT INTO `teams` VALUES ('74', '法兰克福', '4');
INSERT INTO `teams` VALUES ('75', '霍芬海姆', '4');
INSERT INTO `teams` VALUES ('76', '柏林赫塔', '4');
INSERT INTO `teams` VALUES ('77', '不莱梅', '4');
INSERT INTO `teams` VALUES ('78', '美因茨', '4');
INSERT INTO `teams` VALUES ('79', '杜塞尔多夫', '4');
INSERT INTO `teams` VALUES ('80', '弗莱堡', '4');
INSERT INTO `teams` VALUES ('81', '沙尔克04', '4');
INSERT INTO `teams` VALUES ('82', '奥格斯堡', '4');
INSERT INTO `teams` VALUES ('83', '斯图加特', '4');
INSERT INTO `teams` VALUES ('84', '汉诺威96', '4');
INSERT INTO `teams` VALUES ('85', '纽伦堡', '4');
INSERT INTO `teams` VALUES ('86', '里尔', '5');
INSERT INTO `teams` VALUES ('87', '里昂', '5');
INSERT INTO `teams` VALUES ('88', '马赛', '5');
INSERT INTO `teams` VALUES ('89', '圣埃蒂安', '5');
INSERT INTO `teams` VALUES ('90', '蒙彼利埃', '5');
INSERT INTO `teams` VALUES ('91', '兰斯', '5');
INSERT INTO `teams` VALUES ('92', '尼斯', '5');
INSERT INTO `teams` VALUES ('93', '斯特拉斯堡', '5');
INSERT INTO `teams` VALUES ('94', '尼姆', '5');
INSERT INTO `teams` VALUES ('95', '雷恩', '5');
INSERT INTO `teams` VALUES ('96', '昂热', '5');
INSERT INTO `teams` VALUES ('97', '波尔多', '5');
INSERT INTO `teams` VALUES ('98', '南特', '5');
INSERT INTO `teams` VALUES ('99', '图卢兹', '5');
INSERT INTO `teams` VALUES ('100', '摩纳哥', '5');
INSERT INTO `teams` VALUES ('101', '亚眠', '5');
INSERT INTO `teams` VALUES ('102', '第戎', '5');
INSERT INTO `teams` VALUES ('103', '卡昂', '5');
INSERT INTO `teams` VALUES ('104', '甘冈', '5');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `money` int(10) DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bio` text,
  `sightml` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pv` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'zluo', 'zluo', null, null, null, null, '', null);
INSERT INTO `users` VALUES ('2', 'messi', 'messi', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for visits
-- ----------------------------
DROP TABLE IF EXISTS `visits`;
CREATE TABLE `visits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pv` int(10) DEFAULT NULL,
  `comment` int(10) DEFAULT NULL,
  `like` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of visits
-- ----------------------------
INSERT INTO `visits` VALUES ('1', '100', '80', '30');
INSERT INTO `visits` VALUES ('2', '90', '10', '5');
