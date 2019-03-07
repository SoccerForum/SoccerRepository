/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : soccerforum

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-02-26 16:14:01
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
  `GD` int(10) DEFAULT NULL,
  `score` int(10) DEFAULT NULL,
  `leagueId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_Leagues_Integrals` (`leagueId`) USING BTREE,
  CONSTRAINT `fk_Leagues_Integrals` FOREIGN KEY (`leagueId`) REFERENCES `leagues` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of integrals
-- ----------------------------
INSERT INTO `integrals` VALUES ('1', '曼联', '26', '15', '6', '5', '52', '35', '17', '51', '1');
INSERT INTO `integrals` VALUES ('2', '利物浦', '26', '20', '5', '1', '59', '15', '44', '65', '1');
INSERT INTO `integrals` VALUES ('3', '切尔西', '26', '15', '5', '6', '53', '37', '16', '50', '1');
INSERT INTO `integrals` VALUES ('4', '巴塞罗那', '24', '16', '6', '2', '61', '23', '38', '54', '3');
INSERT INTO `integrals` VALUES ('5', '皇家马德里', '24', '14', '3', '7', '41', '29', '12', '45', '3');
INSERT INTO `integrals` VALUES ('6', '尤文图斯', '24', '21', '3', '0', '52', '15', '37', '66', '2');
INSERT INTO `integrals` VALUES ('7', '国际米兰', '24', '14', '4', '6', '34', '17', '17', '46', '2');
INSERT INTO `integrals` VALUES ('8', '多特蒙德', '22', '15', '6', '1', '54', '23', '31', '51', '4');
INSERT INTO `integrals` VALUES ('9', '拜仁慕尼黑', '22', '15', '3', '4', '50', '26', '24', '48', '4');
INSERT INTO `integrals` VALUES ('10', '巴黎圣日耳曼', '24', '21', '2', '1', '74', '14', '60', '65', '5');
INSERT INTO `integrals` VALUES ('11', '河床', '19', '8', '6', '5', '28', '15', '13', '30', '6');
INSERT INTO `integrals` VALUES ('12', '帕尔梅拉斯', '38', '23', '11', '4', '64', '26', '38', '80', '7');
INSERT INTO `integrals` VALUES ('13', '广州恒大', '30', '20', '3', '7', '82', '36', '46', '63', '8');
INSERT INTO `integrals` VALUES ('14', '扎马雷克', '21', '16', '4', '1', '48', '18', '30', '52', '9');
INSERT INTO `integrals` VALUES ('15', '托卢卡', '7', '2', '1', '4', '6', '9', '-3', '7', '10');
INSERT INTO `integrals` VALUES ('16', '奥克兰城', '16', '15', '1', '0', '39', '15', '24', '46', '11');
INSERT INTO `integrals` VALUES ('17', '曼城', '27', '21', '2', '4', '74', '20', '54', '65', '1');
INSERT INTO `integrals` VALUES ('18', '托特纳姆热刺', '26', '20', '0', '6', '54', '25', '29', '60', '1');
INSERT INTO `integrals` VALUES ('19', '阿森纳', '26', '15', '5', '6', '53', '37', '16', '50', '1');
INSERT INTO `integrals` VALUES ('20', '沃尔夫汉普顿', '26', '11', '6', '9', '34', '33', '1', '39', '1');
INSERT INTO `integrals` VALUES ('21', '沃特福德', '26', '10', '7', '9', '34', '34', '0', '37', '1');
INSERT INTO `integrals` VALUES ('22', '埃弗顿', '27', '9', '6', '12', '36', '39', '-3', '33', '1');
INSERT INTO `integrals` VALUES ('23', '西汉姆联', '26', '9', '6', '11', '32', '39', '-7', '33', '1');
INSERT INTO `integrals` VALUES ('24', '伯恩茅斯', '26', '10', '3', '13', '37', '47', '-10', '33', '1');
INSERT INTO `integrals` VALUES ('25', '莱斯特城', '26', '9', '5', '12', '31', '34', '-3', '32', '1');
INSERT INTO `integrals` VALUES ('26', '水晶宫', '26', '7', '6', '13', '27', '34', '-7', '27', '1');
INSERT INTO `integrals` VALUES ('27', '布莱顿', '26', '7', '6', '13', '28', '39', '-11', '27', '1');
INSERT INTO `integrals` VALUES ('28', '伯恩利', '26', '7', '6', '13', '29', '47', '-18', '27', '1');
INSERT INTO `integrals` VALUES ('29', '纽卡斯尔联', '26', '6', '7', '13', '22', '34', '-12', '25', '1');
INSERT INTO `integrals` VALUES ('30', '卡迪夫城', '26', '7', '4', '15', '24', '47', '-23', '25', '1');
INSERT INTO `integrals` VALUES ('31', '南安普顿', '26', '5', '9', '12', '28', '44', '-16', '24', '1');
INSERT INTO `integrals` VALUES ('32', '富勒姆', '26', '4', '5', '17', '25', '58', '-33', '17', '1');
INSERT INTO `integrals` VALUES ('33', '哈德斯菲尔德', '26', '2', '5', '19', '14', '48', '-34', '11', '1');
INSERT INTO `integrals` VALUES ('34', '那不勒斯', '24', '16', '5', '3', '42', '18', '24', '53', '2');
INSERT INTO `integrals` VALUES ('35', 'AC米兰', '24', '11', '9', '4', '35', '22', '13', '42', '2');
INSERT INTO `integrals` VALUES ('36', '罗马', '24', '11', '5', '8', '51', '34', '17', '41', '2');
INSERT INTO `integrals` VALUES ('37', '亚特兰大', '24', '11', '5', '8', '51', '34', '17', '38', '2');
INSERT INTO `integrals` VALUES ('38', '拉齐奥', '24', '11', '5', '8', '33', '27', '6', '38', '2');
INSERT INTO `integrals` VALUES ('39', '佛罗伦萨', '24', '8', '11', '5', '37', '26', '11', '35', '2');
INSERT INTO `integrals` VALUES ('40', '都灵', '24', '8', '11', '5', '28', '22', '6', '35', '2');
INSERT INTO `integrals` VALUES ('41', '桑普多利亚', '24', '9', '6', '9', '42', '32', '10', '33', '2');
INSERT INTO `integrals` VALUES ('42', '萨索洛', '24', '7', '9', '8', '34', '39', '-5', '30', '2');
INSERT INTO `integrals` VALUES ('43', '帕尔马', '24', '8', '5', '11', '25', '33', '-8', '29', '2');
INSERT INTO `integrals` VALUES ('44', '热那亚', '24', '7', '7', '10', '32', '41', '-9', '28', '2');
INSERT INTO `integrals` VALUES ('45', '卡利亚里', '24', '5', '9', '10', '21', '35', '-14', '24', '2');
INSERT INTO `integrals` VALUES ('46', '乌迪内斯', '24', '5', '7', '12', '19', '31', '-12', '22', '2');
INSERT INTO `integrals` VALUES ('47', '斯帕', '24', '5', '7', '12', '21', '36', '-15', '22', '2');
INSERT INTO `integrals` VALUES ('48', '恩波利', '24', '5', '6', '13', '30', '45', '-15', '21', '2');
INSERT INTO `integrals` VALUES ('49', '博洛尼亚', '24', '3', '9', '12', '19', '37', '-18', '18', '2');
INSERT INTO `integrals` VALUES ('50', '弗洛辛诺内', '24', '3', '7', '14', '17', '46', '-29', '16', '2');
INSERT INTO `integrals` VALUES ('51', '切沃', '24', '1', '9', '14', '19', '48', '-29', '9', '2');
INSERT INTO `integrals` VALUES ('52', '马德里竞技', '24', '13', '8', '3', '34', '14', '20', '47', '3');
INSERT INTO `integrals` VALUES ('53', '塞维利亚', '24', '10', '7', '7', '38', '28', '10', '37', '3');
INSERT INTO `integrals` VALUES ('54', '赫塔费', '24', '9', '9', '6', '30', '21', '9', '36', '3');
INSERT INTO `integrals` VALUES ('55', '阿拉维斯', '24', '10', '6', '8', '25', '28', '-3', '36', '3');
INSERT INTO `integrals` VALUES ('56', '皇家社会', '24', '9', '7', '8', '30', '25', '5', '34', '3');
INSERT INTO `integrals` VALUES ('57', '皇家贝蒂斯', '24', '9', '6', '9', '27', '30', '-3', '33', '3');
INSERT INTO `integrals` VALUES ('58', '瓦伦西亚', '24', '6', '14', '4', '24', '20', '4', '32', '3');
INSERT INTO `integrals` VALUES ('59', '埃瓦尔', '24', '7', '10', '7', '33', '34', '-1', '31', '3');
INSERT INTO `integrals` VALUES ('60', '毕尔巴鄂竞技', '24', '6', '12', '6', '24', '28', '-4', '30', '3');
INSERT INTO `integrals` VALUES ('61', '莱万特', '24', '8', '6', '10', '36', '43', '-7', '30', '3');
INSERT INTO `integrals` VALUES ('62', '莱加内斯', '24', '7', '8', '9', '25', '30', '-5', '29', '3');
INSERT INTO `integrals` VALUES ('63', '西班牙人', '24', '8', '5', '11', '27', '37', '-10', '29', '3');
INSERT INTO `integrals` VALUES ('64', '赫罗纳', '24', '6', '9', '9', '25', '34', '-9', '27', '3');
INSERT INTO `integrals` VALUES ('65', '瓦拉多利德', '24', '6', '8', '10', '19', '29', '-10', '26', '3');
INSERT INTO `integrals` VALUES ('66', '塞尔塔', '24', '6', '6', '12', '36', '43', '-7', '24', '3');
INSERT INTO `integrals` VALUES ('67', '比利亚雷亚尔', '24', '4', '11', '9', '26', '31', '-5', '23', '3');
INSERT INTO `integrals` VALUES ('68', '巴列卡诺', '24', '6', '5', '13', '27', '41', '-14', '23', '3');
INSERT INTO `integrals` VALUES ('69', '韦斯卡', '24', '4', '6', '14', '23', '40', '-17', '18', '3');
INSERT INTO `integrals` VALUES ('70', '门兴格拉德巴赫', '22', '13', '4', '5', '42', '22', '20', '43', '4');
INSERT INTO `integrals` VALUES ('71', '莱比锡RB', '22', '12', '5', '5', '41', '19', '22', '41', '4');
INSERT INTO `integrals` VALUES ('72', '勒沃库森', '22', '11', '3', '8', '39', '32', '7', '36', '4');
INSERT INTO `integrals` VALUES ('73', '沃尔夫斯堡', '22', '10', '5', '7', '35', '30', '5', '35', '4');
INSERT INTO `integrals` VALUES ('74', '法兰克福', '22', '9', '7', '6', '41', '28', '13', '34', '4');
INSERT INTO `integrals` VALUES ('75', '霍芬海姆', '22', '8', '9', '5', '44', '32', '12', '33', '4');
INSERT INTO `integrals` VALUES ('76', '柏林赫塔', '22', '8', '8', '6', '35', '32', '3', '32', '4');
INSERT INTO `integrals` VALUES ('77', '不莱梅', '22', '8', '7', '7', '37', '33', '4', '31', '4');
INSERT INTO `integrals` VALUES ('78', '美因茨', '22', '7', '6', '9', '23', '36', '-13', '27', '4');
INSERT INTO `integrals` VALUES ('79', '杜塞尔多夫', '22', '7', '4', '11', '25', '41', '-16', '25', '4');
INSERT INTO `integrals` VALUES ('80', '弗莱堡', '22', '5', '9', '8', '29', '37', '-8', '24', '4');
INSERT INTO `integrals` VALUES ('81', '沙尔克04', '22', '6', '5', '11', '25', '32', '-7', '23', '4');
INSERT INTO `integrals` VALUES ('82', '奥格斯堡', '22', '4', '6', '12', '31', '40', '-9', '18', '4');
INSERT INTO `integrals` VALUES ('83', '斯图加特', '22', '4', '3', '15', '18', '50', '-32', '15', '4');
INSERT INTO `integrals` VALUES ('84', '汉诺威96', '22', '3', '5', '14', '20', '47', '-27', '14', '4');
INSERT INTO `integrals` VALUES ('85', '纽伦堡', '22', '2', '7', '13', '17', '46', '-29', '13', '4');
INSERT INTO `integrals` VALUES ('86', '里尔', '25', '15', '5', '5', '42', '22', '20', '50', '5');
INSERT INTO `integrals` VALUES ('87', '里昂', '25', '13', '7', '5', '40', '28', '12', '46', '5');
INSERT INTO `integrals` VALUES ('88', '马赛', '25', '12', '4', '9', '40', '34', '6', '40', '5');
INSERT INTO `integrals` VALUES ('89', '圣埃蒂安', '25', '11', '7', '7', '35', '31', '4', '40', '5');
INSERT INTO `integrals` VALUES ('90', '蒙彼利埃', '25', '9', '11', '5', '32', '24', '8', '38', '5');
INSERT INTO `integrals` VALUES ('91', '兰斯', '25', '9', '11', '5', '23', '22', '1', '38', '5');
INSERT INTO `integrals` VALUES ('92', '尼斯', '25', '10', '7', '8', '19', '26', '-7', '37', '5');
INSERT INTO `integrals` VALUES ('93', '斯特拉斯堡', '25', '9', '9', '7', '40', '29', '11', '36', '5');
INSERT INTO `integrals` VALUES ('94', '尼姆', '25', '10', '6', '9', '37', '35', '2', '36', '5');
INSERT INTO `integrals` VALUES ('95', '雷恩', '25', '10', '6', '9', '34', '33', '1', '36', '5');
INSERT INTO `integrals` VALUES ('96', '昂热', '25', '8', '9', '8', '29', '28', '1', '33', '5');
INSERT INTO `integrals` VALUES ('97', '波尔多', '25', '8', '8', '9', '25', '26', '-1', '32', '5');
INSERT INTO `integrals` VALUES ('98', '南特', '25', '7', '6', '12', '30', '34', '-4', '27', '5');
INSERT INTO `integrals` VALUES ('99', '图卢兹', '25', '6', '9', '10', '24', '36', '-12', '27', '5');
INSERT INTO `integrals` VALUES ('100', '摩纳哥', '25', '5', '7', '13', '24', '41', '-17', '22', '5');
INSERT INTO `integrals` VALUES ('101', '亚眠', '25', '6', '3', '16', '19', '40', '-21', '21', '5');
INSERT INTO `integrals` VALUES ('102', '第戎', '24', '5', '5', '14', '20', '38', '-18', '20', '5');
INSERT INTO `integrals` VALUES ('103', '卡昂', '25', '3', '10', '12', '20', '33', '-13', '19', '5');
INSERT INTO `integrals` VALUES ('104', '甘冈', '25', '3', '6', '16', '17', '50', '-33', '15', '5');
INSERT INTO `integrals` VALUES ('105', null, null, null, null, null, null, null, null, null, null);

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
  `engname` varchar(255) DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `nationality` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `height` double(10,2) DEFAULT NULL,
  `weight` double(10,2) DEFAULT NULL,
  `num` int(10) DEFAULT NULL,
  `teamId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_Teams_Members` (`teamId`) USING BTREE,
  CONSTRAINT `fk_Teams_Members` FOREIGN KEY (`teamId`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=451 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of members
-- ----------------------------
INSERT INTO `members` VALUES ('1', '德赫亚', 'David de Gea', '门将', '西班牙', '1990-11-07', '192.00', '76.00', '1', '1');
INSERT INTO `members` VALUES ('2', '罗梅罗', 'S.Romero', '门将', '阿根廷', '1987-02-22', '192.00', '87.00', '22', '1');
INSERT INTO `members` VALUES ('3', '菲尔琼斯', 'P.Jones', '后卫', '英格兰', '1992-02-21', '180.00', '71.00', '2', '1');
INSERT INTO `members` VALUES ('4', '罗霍', 'M.Rojo', '后卫', '阿根廷', '1990-03-20', '187.00', '80.00', '16', '1');
INSERT INTO `members` VALUES ('5', '阿什利·杨', 'A.Young', '后卫', '英格兰', '1985-07-09', '175.00', '65.00', '18', '1');
INSERT INTO `members` VALUES ('6', '瓦伦西亚', 'A.Valencia', '后卫', '厄瓜多尔', '1985-08-04', '180.00', '83.00', '25', '1');
INSERT INTO `members` VALUES ('7', '达米安', 'M.Darmian', '后卫', '意大利', '1989-12-02', '182.00', '70.00', '36', '1');
INSERT INTO `members` VALUES ('8', '博格巴', 'P.Pogba', '中场', '法国', '1993-03-15', '191.00', '84.00', '6', '1');
INSERT INTO `members` VALUES ('9', '赫雷拉', 'Ander Herrera', '中场', '西班牙', '1989-08-14', '182.00', '70.00', '21', '1');
INSERT INTO `members` VALUES ('10', '费莱尼', 'M.Fellaini', '中场', '比利时', '1987-11-22', '194.00', '85.00', '27', '1');
INSERT INTO `members` VALUES ('11', '马蒂奇', 'N.Matic', '中场', '塞尔维亚', '1988-08-01', '194.00', '85.00', '31', '1');
INSERT INTO `members` VALUES ('12', '桑切斯', 'A.Sanchez', '前锋', '智利', '0199-12-19', '169.00', '62.00', '7', '1');
INSERT INTO `members` VALUES ('13', '卢卡库', 'R.Lukaku', '前锋', '比利时', '1993-05-13', '190.00', '94.00', '9', '1');
INSERT INTO `members` VALUES ('14', '拉什福德', 'M.Rashford', '前锋', '英格兰', '1997-10-31', '180.00', '70.00', '10', '1');
INSERT INTO `members` VALUES ('15', '马夏尔', 'A.Martial', '前锋', '法国', '1995-12-05', '181.00', '76.00', '11', '1');
INSERT INTO `members` VALUES ('16', '埃里森', 'Alisson', '门将', '巴西', '1992-10-02', '193.00', '91.00', '13', '2');
INSERT INTO `members` VALUES ('17', '米尼奥莱', 'S.Mignolet', '门将', '比利时', '1988-03-06', '193.00', '87.00', '22', '2');
INSERT INTO `members` VALUES ('18', '范戴克', 'V.van Dijk', '后卫', '荷兰', '1997-07-08', '193.00', '92.00', '4', '2');
INSERT INTO `members` VALUES ('19', 'J·戈麦斯', 'J.Gomez', '后卫', '英格兰', '1997-05-23', '188.00', '77.00', '12', '2');
INSERT INTO `members` VALUES ('20', '莫雷诺', 'Alberto Moreno', '后卫', '西班牙', '1992-07-05', '171.00', '65.00', '18', '2');
INSERT INTO `members` VALUES ('21', '洛夫伦', 'D.Lovren', '后卫', '克罗地亚', '1989-07-05', '188.00', '84.00', '6', '2');
INSERT INTO `members` VALUES ('22', '法比尼奥', 'Fabinho', '中场', '巴西', '1993-10-23', '188.00', '78.00', '3', '2');
INSERT INTO `members` VALUES ('23', '维纳尔杜姆', 'G.Wijnaldum', '中场', '荷兰', '1990-11-11', '175.00', '69.00', '5', '2');
INSERT INTO `members` VALUES ('24', '米尔纳', 'J.Milner', '中场', '英格兰', '1986-01-04', '175.00', '70.00', '7', '2');
INSERT INTO `members` VALUES ('25', '亨德森', 'J.Henderson', '中场', '英格兰', '1990-06-17', '182.00', '67.00', '14', '2');
INSERT INTO `members` VALUES ('26', '拉拉纳', 'A.Lallana', '中场', '英格兰', '1988-05-10', '172.00', '73.00', '20', '2');
INSERT INTO `members` VALUES ('27', '菲尔米诺', 'Roberto', '前锋', '巴西', '1991-10-02', '181.00', '76.00', '9', '2');
INSERT INTO `members` VALUES ('28', '马内', 'S.Mane', '前锋', '塞内加尔', '1992-04-10', '175.00', '69.00', '10', '2');
INSERT INTO `members` VALUES ('29', '萨拉赫', 'Mohamed Salah', '前锋', '埃及', '1992-06-15', '175.00', '71.00', '11', '2');
INSERT INTO `members` VALUES ('30', '斯图里奇', 'D.Sturridge', '前锋', '英格兰', '1989-09-01', '188.00', '76.00', '15', '2');
INSERT INTO `members` VALUES ('31', '凯帕', 'Kepa', '门将', '西班牙', '1994-10-06', '187.00', '84.00', '1', '3');
INSERT INTO `members` VALUES ('32', '卡巴列罗', 'W.Caballero', '门将', '阿根廷', '1981-09-28', '186.00', '80.00', '13', '3');
INSERT INTO `members` VALUES ('33', '鲁迪格', 'A.Rudiger', '后卫', '德国', '1993-03-03', '190.00', '85.00', '2', '3');
INSERT INTO `members` VALUES ('34', 'M·阿隆索', 'Marcos Alonso', '后卫', '西班牙', '1990-12-28', '188.00', '84.00', '3', '3');
INSERT INTO `members` VALUES ('35', '萨帕科斯塔', 'D.Zappacosta', '后卫', '意大利', '1992-06-11', '185.00', '70.00', '21', '3');
INSERT INTO `members` VALUES ('36', '大卫·路易斯', 'David Luiz', '后卫', '巴西', '1987-04-22', '189.00', '84.00', '28', '3');
INSERT INTO `members` VALUES ('37', '埃摩森', 'Emerson', '后卫', '意大利', '1994-08-03', '176.00', '63.00', '33', '3');
INSERT INTO `members` VALUES ('38', '若日尼奥', 'Jorginho', '中场', '意大利', '1991-12-20', '180.00', '65.00', '5', '3');
INSERT INTO `members` VALUES ('39', '坎特', 'N.Kante', '中场', '法国', '1991-03-29', '168.00', '68.00', '7', '3');
INSERT INTO `members` VALUES ('40', '巴克利', 'R.Barkley', '中场', '英格兰', '1993-12-05', '189.00', '76.00', '8', '3');
INSERT INTO `members` VALUES ('41', '阿扎尔', 'E.Hazard', '前锋', '比利时', '1991-01-07', '173.00', '76.00', '10', '3');
INSERT INTO `members` VALUES ('42', '佩德罗', 'Pedro', '前锋', '西班牙', '1987-07-28', '169.00', '65.00', '11', '3');
INSERT INTO `members` VALUES ('43', '吉鲁', 'O.Giroud', '前锋', '法国', '1986-09-30', '192.00', '93.00', '18', '3');
INSERT INTO `members` VALUES ('44', '威廉', 'Willian', '前锋', '巴西', '1988-08-09', '175.00', '77.00', '22', '3');
INSERT INTO `members` VALUES ('45', '伊瓜因', 'G.Higuain', '前锋', '阿根廷', '1987-12-10', '186.00', '89.00', '29', '3');
INSERT INTO `members` VALUES ('46', '特尔施特根', 'M.ter Stegen', '门将', '德国', '1992-04-30', '187.00', '85.00', '1', '4');
INSERT INTO `members` VALUES ('47', '西莱森', 'J.Cillessen', '门将', '荷兰', '1989-04-22', '185.00', '83.00', '13', '4');
INSERT INTO `members` VALUES ('48', '皮克', 'Pique', '后卫', '西班牙', '1987-02-02', '194.00', '85.00', '3', '4');
INSERT INTO `members` VALUES ('49', '阿尔瓦', 'Jordi Alba', '后卫', '西班牙', '1989-03-21', '170.00', '68.00', '18', '4');
INSERT INTO `members` VALUES ('50', '塞尔吉罗贝托', 'Sergi Roberto', '后卫', '西班牙', '1992-02-07', '178.00', '68.00', '20', '4');
INSERT INTO `members` VALUES ('51', '乌姆蒂蒂', 'S.Umtiti', '后卫', '法国', '1993-11-14', '182.00', '75.00', '23', '4');
INSERT INTO `members` VALUES ('52', '维尔马伦', 'T.Vermaelen', '后卫', '比利时', '1985-11-14', '183.00', '80.00', '24', '4');
INSERT INTO `members` VALUES ('53', '拉基蒂奇', 'I.Rakitic', '中场', '克罗地亚', '1988-03-10', '184.00', '78.00', '4', '4');
INSERT INTO `members` VALUES ('54', '布斯克茨', 'Busquets', '中场', '西班牙', '1988-07-16', '189.00', '76.00', '5', '4');
INSERT INTO `members` VALUES ('55', '库蒂尼奥', 'Philippe Coutinho', '中场', '巴西', '1992-06-12', '172.00', '68.00', '7', '4');
INSERT INTO `members` VALUES ('56', '拉菲尼亚', 'Rafinha', '中场', '巴西', '1993-02-12', '174.00', '71.00', '12', '4');
INSERT INTO `members` VALUES ('57', '比达尔', 'A.Vidal', '中场', '智利', '1987-05-22', '180.00', '75.00', '22', '4');
INSERT INTO `members` VALUES ('58', '苏亚雷斯', 'L.Suarez', '前锋', '乌拉圭', '1987-01-24', '182.00', '86.00', '9', '4');
INSERT INTO `members` VALUES ('59', '梅西', 'L.Messi', '前锋', '阿根廷', '1987-06-24', '170.00', '72.00', '10', '4');
INSERT INTO `members` VALUES ('60', '登贝莱', 'O.Dembele', '前锋', '法国', '1997-05-15', '178.00', '67.00', '11', '4');
INSERT INTO `members` VALUES ('61', '纳瓦斯', 'K.Navas', '门将', '哥斯达黎加', '1986-12-15', '185.00', '79.00', '1', '5');
INSERT INTO `members` VALUES ('62', '库尔图瓦', 'T.Courtois', '门将', '比利时', '1992-05-11', '199.00', '96.00', '25', '5');
INSERT INTO `members` VALUES ('63', '卡瓦哈尔', 'Daniel Carvajal', '后卫', '西班牙', '1992-01-11', '173.00', '773.00', '2', '5');
INSERT INTO `members` VALUES ('64', '拉莫斯', 'Sergio Ramos', '后卫', '西班牙', '1986-03-30', '184.00', '82.00', '4', '5');
INSERT INTO `members` VALUES ('65', 'R·瓦拉内', 'R.Varane', '后卫', '法国', '1993-04-25', '191.00', '81.00', '5', '5');
INSERT INTO `members` VALUES ('66', '马塞洛', 'Marcelo', '后卫', '巴西', '1988-05-12', '174.00', '80.00', '12', '5');
INSERT INTO `members` VALUES ('67', '克罗斯', 'T.Kroos', '中场', '德国', '1990-01-04', '183.00', '76.00', '8', '5');
INSERT INTO `members` VALUES ('68', '莫德里奇', 'L.Modric', '中场', '克罗地亚', '1985-09-09', '172.00', '66.00', '10', '5');
INSERT INTO `members` VALUES ('69', '卡塞米罗', 'Casemiro', '中场', '巴西', '1992-02-23', '185.00', '84.00', '14', '5');
INSERT INTO `members` VALUES ('70', 'F·瓦弗代', 'F.Valverde', '中场', '乌拉圭', '1998-07-22', '181.00', '76.00', '15', '5');
INSERT INTO `members` VALUES ('71', '阿森西奥', 'Marco Asensio', '中场', '西班牙', '1996-01-21', '182.00', '76.00', '20', '5');
INSERT INTO `members` VALUES ('72', '伊斯科', 'Isco', '中场', '西班牙', '1992-04-21', '176.00', '79.00', '22', '5');
INSERT INTO `members` VALUES ('73', '本泽马', 'K.Benzama', '前锋', '法国', '1987-12-19', '185.00', '81.00', '9', '5');
INSERT INTO `members` VALUES ('74', '贝尔', 'G.Bale', '前锋', '威尔士', '1989-07-16', '185.00', '82.00', '11', '5');
INSERT INTO `members` VALUES ('75', '迪亚兹', 'Brahim Diaz', '前锋', '西班牙', '1999-08-03', '170.00', '68.00', '21', '5');
INSERT INTO `members` VALUES ('76', '什琴斯尼', 'W.Szczesny', '门将', '波兰', '1990-04-18', '195.00', '90.00', '1', '6');
INSERT INTO `members` VALUES ('77', '皮索里奥', 'C.Pinsoglio', '门将', '意大利', '1990-03-16', '194.00', '85.00', '21', '6');
INSERT INTO `members` VALUES ('78', '德西利奥', 'M.De Sciglio', '后卫', '意大利', '1992-10-20', '182.00', '78.00', '2', '6');
INSERT INTO `members` VALUES ('79', '基耶利尼', 'G.Chiellini', '后卫', '意大利', '1984-08-14', '187.00', '85.00', '3', '6');
INSERT INTO `members` VALUES ('80', '巴尔扎利', 'A.Barzagli', '后卫', '意大利', '1987-05-08', '187.00', '87.00', '15', '6');
INSERT INTO `members` VALUES ('81', '博努奇', 'L.Bonucci', '后卫', '意大利', '1987-05-01', '190.00', '85.00', '19', '6');
INSERT INTO `members` VALUES ('82', '鲁加尼', 'D.Rugani', '后卫', '意大利', '1994-07-29', '190.00', '84.00', '24', '6');
INSERT INTO `members` VALUES ('83', '赫迪拉', 'S.Khedira', '中场', '德国', '1987-04-04', '189.00', '90.00', '6', '6');
INSERT INTO `members` VALUES ('84', '道格拉斯·科斯塔', 'Douglas Costa', '中场', '巴西', '1990-09-14', '172.00', '70.00', '11', '6');
INSERT INTO `members` VALUES ('85', '马图伊迪', 'B.Matuidi', '中场', '法国', '1987-04-09', '180.00', '75.00', '14', '6');
INSERT INTO `members` VALUES ('86', '夸德拉多', 'J.Cuadrado', '中场', '哥伦比亚', '1988-05-26', '179.00', '72.00', '16', '6');
INSERT INTO `members` VALUES ('87', 'R·本坦库尔', 'R.Bentancur', '中场', '乌拉圭', '1997-06-25', '187.00', '72.00', '30', '6');
INSERT INTO `members` VALUES ('88', 'C·罗纳尔多', 'Cristiano Ronaldo', '前锋', '葡萄牙', '1985-02-05', '187.00', '83.00', '7', '6');
INSERT INTO `members` VALUES ('89', '迪巴拉', 'P.Dybala', '前锋', '阿根廷', '1993-11-15', '177.00', '75.00', '10', '6');
INSERT INTO `members` VALUES ('90', '曼朱基齐', 'M.Mandzukic', '前锋', '克罗地亚', '1986-05-21', '190.00', '85.00', '17', '6');
INSERT INTO `members` VALUES ('91', '汉达诺维奇', 'S.Handanovic', '门将', '斯洛文尼亚', '1984-07-14', '193.00', '92.00', '1', '7');
INSERT INTO `members` VALUES ('92', '帕代利', 'D.Padelli', '门将', '意大利', '1985-10-25', '191.00', '82.00', '27', '7');
INSERT INTO `members` VALUES ('93', '贝尔尼', 'T.Berni', '门将', '意大利', '1983-03-06', '185.00', '80.00', '40', '7');
INSERT INTO `members` VALUES ('94', '费尔萨利科', 'S.Vrsaljko', '后卫', '克罗地亚', '1992-01-10', '181.00', '76.00', '2', '7');
INSERT INTO `members` VALUES ('95', '米兰达', 'Joao Miranda', '后卫', '巴西', '1984-09-07', '186.00', '78.00', '23', '7');
INSERT INTO `members` VALUES ('96', 'D·亨里克', 'Dalbert Henrique', '后卫', '巴西', '1993-09-08', '181.00', '70.00', '29', '7');
INSERT INTO `members` VALUES ('97', '加利亚迪尼', 'R.Gagliardini', '中场', '意大利', '1994-04-07', '190.00', '77.00', '5', '7');
INSERT INTO `members` VALUES ('98', '纳英戈兰', 'R.Nainggolan', '中场', '比利时', '1988-05-04', '176.00', '65.00', '14', '7');
INSERT INTO `members` VALUES ('99', '若昂·马里奥', 'Joao', '中场', '葡萄牙', '1993-01-19', '179.00', '73.00', '15', '7');
INSERT INTO `members` VALUES ('100', '佩里西奇', 'I.Perisic', '中场', '克罗地亚', '1989-02-02', '187.00', '80.00', '44', '7');
INSERT INTO `members` VALUES ('101', '布罗佐维奇', 'M.Brozovic', '中场', '克罗地亚', '1992-11-16', '181.00', '68.00', '77', '7');
INSERT INTO `members` VALUES ('102', '伊卡尔迪', 'M.Icardi', '前锋', '阿根廷', '1993-02-19', '181.00', '75.00', '9', '7');
INSERT INTO `members` VALUES ('103', 'L·马丁内斯', 'Lautaro Martinez', '前锋', '阿根廷', '1997-08-22', '179.00', '72.00', '10', '7');
INSERT INTO `members` VALUES ('104', '巴尔德·凯塔', 'K.Balde', '前锋', '塞内加尔', '1995-03-08', '184.00', '80.00', '11', '7');
INSERT INTO `members` VALUES ('105', '波利塔诺', 'M.Politano', '前锋', '意大利', '1993-08-03', '171.00', '67.00', '16', '7');
INSERT INTO `members` VALUES ('106', '比尔基', 'R.Burki', '门将', '瑞士', '1990-11-14', '187.00', '85.00', '1', '8');
INSERT INTO `members` VALUES ('107', '希茨', 'M.Hitz', '门将', '瑞士', '1987-09-18', '194.00', '89.00', '35', '8');
INSERT INTO `members` VALUES ('108', '扎加杜', 'D.Zagadou', '后卫', '法国', '1999-06-03', '196.00', '90.00', '2', '8');
INSERT INTO `members` VALUES ('109', 'A·迪亚洛', 'A.Diallo', '后卫', '法国', '1996-05-04', '186.00', '79.00', '4', '8');
INSERT INTO `members` VALUES ('110', '阿什拉夫', 'A.Hakimi', '后卫', '摩洛哥', '1998-11-04', '179.00', '65.00', '5', '8');
INSERT INTO `members` VALUES ('111', '格雷罗', 'Raphael Guerreiro', '后卫', '葡萄牙', '1993-12-22', '170.00', '71.00', '13', '8');
INSERT INTO `members` VALUES ('112', '皮什切克', 'L.Piszczek', '后卫', '波兰', '1985-06-03', '184.00', '79.00', '26', '8');
INSERT INTO `members` VALUES ('113', 'T·德拉尼', 'T.Delaney', '中场', '丹麦', '1991-09-03', '182.00', '71.00', '6', '8');
INSERT INTO `members` VALUES ('114', '格策', 'M.Gotze', '中场', '德国', '1992-06-03', '176.00', '75.00', '10', '8');
INSERT INTO `members` VALUES ('115', '魏格尔', 'J.Weigl', '中场', '德国', '1995-09-08', '186.00', '72.00', '33', '8');
INSERT INTO `members` VALUES ('116', '维采尔', 'A.Witsel', '中场', '比利时', '1989-01-12', '186.00', '73.00', '28', '8');
INSERT INTO `members` VALUES ('117', '帕科', 'Paco Alcacer', '前锋', '西班牙', '1993-08-30', '175.00', '71.00', '9', '8');
INSERT INTO `members` VALUES ('118', '罗伊斯', 'M.Reus', '前锋', '德国', '1989-05-31', '180.00', '71.00', '11', '8');
INSERT INTO `members` VALUES ('119', '菲利普', 'M.Philipp', '前锋', '德国', '1994-03-01', '183.00', '79.00', '20', '8');
INSERT INTO `members` VALUES ('120', 'J·拉尔森', 'Jacob Bruun Larsen', '前锋', '丹麦', '1998-09-19', '183.00', '75.00', '34', '8');
INSERT INTO `members` VALUES ('121', '诺伊尔', 'M.Neuer', '门将', '德国', '1986-03-27', '193.00', '92.00', '1', '9');
INSERT INTO `members` VALUES ('122', '乌尔赖希', 'S.Ulreich', '门将', '德国', '1988-08-03', '192.00', '87.00', '26', '9');
INSERT INTO `members` VALUES ('123', '胡梅尔斯', 'M.Hummels', '后卫', '德国', '1988-12-16', '191.00', '92.00', '5', '9');
INSERT INTO `members` VALUES ('124', '拉菲尼亚', 'Rafinha', '后卫', '巴西', '1985-09-07', '172.00', '68.00', '13', '9');
INSERT INTO `members` VALUES ('125', '热罗姆·博阿滕', 'J.Boateng', '后卫', '德国', '1988-09-03', '192.00', '90.00', '17', '9');
INSERT INTO `members` VALUES ('126', '阿拉巴', 'D.Alaba', '后卫', '奥地利', '1992-06-24', '180.00', '78.00', '27', '9');
INSERT INTO `members` VALUES ('127', '基米希', 'J.Kimmich', '后卫', '德国', '1995-02-08', '176.00', '73.00', '32', '9');
INSERT INTO `members` VALUES ('128', '蒂亚戈', 'Thiago Alcantara', '中场', '西班牙', '1991-04-11', '174.00', '70.00', '6', '9');
INSERT INTO `members` VALUES ('129', '里贝里', 'F.Ribery', '中场', '法国', '1983-04-07', '170.00', '72.00', '7', '9');
INSERT INTO `members` VALUES ('130', '哈维·马丁内斯', 'Javi Martinez', '中场', '西班牙', '1988-09-02', '192.00', '86.00', '8', '9');
INSERT INTO `members` VALUES ('131', '罗本', 'A.Robben', '中场', '荷兰', '1984-01-23', '180.00', '80.00', '10', '9');
INSERT INTO `members` VALUES ('132', 'J·罗德里格斯', 'J.Rodriguez', '中场', '哥伦比亚', '1991-07-12', '181.00', '78.00', '11', '9');
INSERT INTO `members` VALUES ('133', '保罗·威尔', 'P.Will', '前锋', '德国', '1999-03-01', '183.00', '75.00', '28', '9');
INSERT INTO `members` VALUES ('134', '莱万多夫斯基', 'R.Lewandowski', '前锋', '波兰', '1988-08-21', '184.00', '80.00', '9', '9');
INSERT INTO `members` VALUES ('135', '托马斯·穆勒', 'T.Muller', '前锋', '德国', '1989-09-13', '186.00', '75.00', '25', '9');
INSERT INTO `members` VALUES ('136', '布冯', 'G.Buffon', '门将', '意大利', '1978-01-28', '192.00', '92.00', '1', '10');
INSERT INTO `members` VALUES ('137', 'A·阿雷奥拉', 'A.Areola', '门将', '法国', '1993-02-27', '195.00', '94.00', '16', '10');
INSERT INTO `members` VALUES ('138', '蒂亚戈席尔瓦', 'Thiago Silva', '后卫', '巴西', '1984-09-22', '183.00', '79.00', '2', '10');
INSERT INTO `members` VALUES ('139', '金彭贝', 'P.Kimpembe', '后卫', '法国', '1995-08-13', '183.00', '71.00', '3', '10');
INSERT INTO `members` VALUES ('140', '马基尼奥斯', 'Marquinhos', '后卫', '巴西', '1994-05-14', '183.00', '75.00', '5', '10');
INSERT INTO `members` VALUES ('141', '阿尔维斯', 'Dani Alves', '后卫', '巴西', '1983-05-06', '172.00', '70.00', '13', '10');
INSERT INTO `members` VALUES ('142', '库尔扎瓦', 'L.Kurzawa', '后卫', '法国', '1992-09-04', '182.00', '74.00', '20', '10');
INSERT INTO `members` VALUES ('143', '维拉蒂', 'M.Verratti', '中场', '意大利', '1992-11-05', '165.00', '60.00', '6', '10');
INSERT INTO `members` VALUES ('144', '迪玛利亚', 'A.Di Maria', '中场', '阿根廷', '1988-02-14', '180.00', '75.00', '11', '10');
INSERT INTO `members` VALUES ('145', '德拉克斯勒', 'J.Draxler', '中场', '德国', '1993-09-20', '187.00', '72.00', '23', '10');
INSERT INTO `members` VALUES ('146', '法比奥', 'A.Rabiot', '中场', '法国', '1995-04-03', '188.00', '71.00', '25', '10');
INSERT INTO `members` VALUES ('147', '姆巴佩', 'K.Mbappe', '前锋', '法国', '1998-12-20', '178.00', '73.00', '7', '10');
INSERT INTO `members` VALUES ('148', '卡瓦尼', 'E.cavani', '前锋', '乌拉圭', '1987-02-14', '184.00', '71.00', '9', '10');
INSERT INTO `members` VALUES ('149', '内马尔', 'Neymar', '前锋', '巴西', '1992-02-05', '175.00', '68.00', '10', '10');
INSERT INTO `members` VALUES ('150', '穆萨·迪亚比', 'M.Diaby', '前锋', '法国', '1999-07-07', '170.00', '65.00', '27', '10');
INSERT INTO `members` VALUES ('151', '阿尔马尼', 'F.Armani', '门将', '阿根廷', '1986-10-16', '189.00', '85.00', '1', '11');
INSERT INTO `members` VALUES ('152', 'G·卢克斯', 'G.Lux', '门将', '阿根廷', '1982-07-06', '186.00', '77.00', '12', '11');
INSERT INTO `members` VALUES ('153', 'K·西比耶', 'K.Sibille', '后卫', '阿根廷', '1998-09-15', '183.00', '71.00', '16', '11');
INSERT INTO `members` VALUES ('154', '洛略', 'L.Lollo', '后卫', '阿根廷', '1987-03-29', '183.00', '80.00', '6', '11');
INSERT INTO `members` VALUES ('155', '卡斯科', 'M.Casco', '后卫', '阿根廷', '1988-04-11', '169.00', '71.00', '20', '11');
INSERT INTO `members` VALUES ('156', '皮诺拉', 'J.Pinola', '后卫', '阿根廷', '1983-02-24', '179.00', '77.00', '22', '11');
INSERT INTO `members` VALUES ('157', 'H·马丁内斯', 'H.Martinez', '后卫', '阿根廷', '1998-01-21', '188.00', '64.00', '33', '11');
INSERT INTO `members` VALUES ('158', '祖库里尼', 'B.Zuculini', '中场', '阿根廷', '1993-04-02', '182.00', '74.00', '5', '11');
INSERT INTO `members` VALUES ('159', '金特罗', 'J.Quintero', '中场', '哥伦比亚', '1993-01-18', '169.00', '64.00', '8', '11');
INSERT INTO `members` VALUES ('160', '帕拉西奥斯', 'E.Palacios', '中场', '阿根廷', '1998-10-05', '170.00', '66.00', '15', '11');
INSERT INTO `members` VALUES ('161', 'L·彭齐奥', 'L.Ponzio', '中场', '阿根廷', '1982-01-29', '175.00', '75.00', '23', '11');
INSERT INTO `members` VALUES ('162', 'L·马丁内斯', 'L.Martinez', '中场', '阿根廷', '1996-05-10', '181.00', '75.00', '31', '11');
INSERT INTO `members` VALUES ('163', 'R·博雷', 'R.Borre', '前锋', '哥伦比亚', '1995-09-15', '174.00', '70.00', '19', '11');
INSERT INTO `members` VALUES ('164', 'L·普拉托', 'L.Pratto', '前锋', '阿根廷', '1988-06-04', '188.00', '85.00', '27', '11');
INSERT INTO `members` VALUES ('165', '纳乔·斯科科', 'I.Scocco', '前锋', '阿根廷', '1985-05-29', '175.00', '71.00', '32', '11');
INSERT INTO `members` VALUES ('166', '费尔南多普拉斯', 'Fernando Prass', '门将', '巴西', '1978-07-09', '191.00', '79.00', '1', '12');
INSERT INTO `members` VALUES ('167', '维瓦尔顿', 'Weverton', '门将', '巴西', '1987-12-13', '187.00', '65.00', '21', '12');
INSERT INTO `members` VALUES ('168', '贾尔森', 'Jailson', '门将', '巴西', '1981-07-20', '187.00', '84.00', '42', '12');
INSERT INTO `members` VALUES ('169', '埃杜', 'Edu Dracena', '后卫', '巴西', '1981-05-18', '187.00', '81.00', '3', '12');
INSERT INTO `members` VALUES ('170', '迪奥戈戈亚诺', 'Diogo Barbosa', '后卫', '巴西', '1992-08-17', '179.00', '70.00', '6', '12');
INSERT INTO `members` VALUES ('171', '梅克', 'Mayke', '后卫', '巴西', '1992-11-10', '178.00', null, '12', '12');
INSERT INTO `members` VALUES ('172', '卢安', 'Luan Garcia', '后卫', '巴西', '1993-05-10', null, null, '13', '12');
INSERT INTO `members` VALUES ('173', '戈麦斯', 'G.Gomez', '后卫', '巴拉圭', '1993-05-06', '185.00', '85.00', '15', '12');
INSERT INTO `members` VALUES ('174', '吉安', 'Jean', '中场', '巴西', '1986-06-24', '170.00', '70.00', '2', '12');
INSERT INTO `members` VALUES ('175', '拉斐尔·维嘉', 'Raogael Veiga', '中场', '巴西', '1995-06-19', '176.00', '73.00', '7', '12');
INSERT INTO `members` VALUES ('176', '莫伊塞斯', 'Moises', '中场', '巴西', '1988-03-01', '184.00', '76.00', '10', '12');
INSERT INTO `members` VALUES ('177', '吉斯塔沃斯卡尔帕', 'Gustavo Scarpa', '中场', '巴西', '1994-01-05', '177.00', '65.00', '14', '12');
INSERT INTO `members` VALUES ('178', '杜杜', 'Dudu', '前锋', '巴西', '1992-01-07', '181.00', '80.00', '7', '12');
INSERT INTO `members` VALUES ('179', '威廉', 'Willian', '前锋', '巴西', '1986-11-19', '171.00', '75.00', '29', '12');
INSERT INTO `members` VALUES ('180', '戴维森', 'Deyverson', '前锋', '巴西', '1991-05-08', '187.00', '81.00', '16', '12');
INSERT INTO `members` VALUES ('181', '曾诚', 'Zeng Cheng', '门将', '中国', '1987-01-08', '191.00', '83.00', '19', '13');
INSERT INTO `members` VALUES ('182', '刘世博', 'Liu Shibo', '门将', '中国', '1997-05-20', '189.00', '75.00', '40', '13');
INSERT INTO `members` VALUES ('183', '梅芳', 'Mei Fang', '后卫', '中国', '1989-11-14', '184.00', '74.00', '3', '13');
INSERT INTO `members` VALUES ('184', '张琳芃', 'Zhang Linpeng', '后卫', '中国', '1989-05-09', '186.00', '78.00', '5', '13');
INSERT INTO `members` VALUES ('185', '冯潇霆', 'Feng Xiaoting', '后卫', '中国', '1985-10-22', '187.00', '78.00', '6', '13');
INSERT INTO `members` VALUES ('186', '邓涵文', 'Deng Hanwen', '后卫', '中国', '1995-01-08', null, null, '23', '13');
INSERT INTO `members` VALUES ('187', '李学鹏', 'Li Xuepeng', '后卫', '中国', '1988-09-18', '185.00', '76.00', '35', '13');
INSERT INTO `members` VALUES ('188', '保利尼奥', 'Paulinho', '中场', '巴西', '1988-07-25', '181.00', '81.00', '9', '13');
INSERT INTO `members` VALUES ('189', '郑智', 'Zheng Zhi', '中场', '中国', '1980-08-20', '181.00', '75.00', '10', '13');
INSERT INTO `members` VALUES ('190', '黄博文', 'Huang Bowen', '中场', '中国', '1987-07-13', '177.00', '65.00', '16', '13');
INSERT INTO `members` VALUES ('191', '于汉超', 'Yu Hanchao', '中场', '中国', '1987-02-25', '178.00', '65.00', '20', '13');
INSERT INTO `members` VALUES ('192', '唐诗', 'Tang Shi', '中场', '中国', '1995-01-24', '183.00', '62.00', '22', '13');
INSERT INTO `members` VALUES ('193', '韦世豪', 'Wei Shihao', '前锋', '中国', '1995-04-08', '177.00', '75.00', '7', '13');
INSERT INTO `members` VALUES ('194', '杨立瑜', 'Yang Liyu', '前锋', '中国', '1997-02-13', '175.00', '65.00', '17', '13');
INSERT INTO `members` VALUES ('195', '郜林', 'Gao Lin', '前锋', '中国', '1986-02-14', '185.00', '75.00', '29', '13');
INSERT INTO `members` VALUES ('196', 'E·艾尔-塞尔德', 'Emad El Sayed', '门将', '埃及', '1986-04-06', '190.00', null, '16', '14');
INSERT INTO `members` VALUES ('197', '哈姆迪', 'Mahmoud Hamdi El Wensh', '后卫', '埃及', '1995-06-01', '181.00', '72.00', '28', '14');
INSERT INTO `members` VALUES ('198', 'H·埃马姆', 'Hazem Emam', '后卫', '埃及', '1988-07-09', '174.00', null, '7', '14');
INSERT INTO `members` VALUES ('199', 'H·纳古兹', 'H.Nagguez', '后卫', '突尼斯', '1992-10-28', '195.00', '75.00', '21', '14');
INSERT INTO `members` VALUES ('200', 'M·伊布拉西姆', 'Mohamed Ibrahim', '中场', '埃及', '1992-03-01', '175.00', null, '20', '14');
INSERT INTO `members` VALUES ('201', '卡拉巴', 'Kahraba', '中场', '埃及', '1994-04-13', '182.00', '76.00', '11', '14');
INSERT INTO `members` VALUES ('202', 'F·萨西', 'F.Sassi', '中场', '突尼斯', '1992-03-18', '186.00', '80.00', '50', '14');
INSERT INTO `members` VALUES ('203', '塔雷克', 'Tarek Hamed', '中场', '埃及', '1988-10-24', '165.00', '74.00', '3', '14');
INSERT INTO `members` VALUES ('204', '布塔伊卜', 'K.Boutaib', '前锋', '摩洛哥', '1987-04-24', '189.00', '82.00', '9', '14');
INSERT INTO `members` VALUES ('205', 'A·塔拉韦拉', 'A.Talavera', '门将', '墨西哥', '1982-09-18', '188.00', '82.00', '1', '15');
INSERT INTO `members` VALUES ('206', 'R·帕凯尔', 'R.Pasquel', '门将', '墨西哥', '1996-06-22', '180.00', '73.00', '12', '15');
INSERT INTO `members` VALUES ('207', '圣地亚哥·加西亚', 'S.Garcia', '后卫', '阿根廷', '1988-07-08', '191.00', '80.00', '3', '15');
INSERT INTO `members` VALUES ('208', 'O·冈萨雷斯', 'O.Gonzalez', '后卫', '智利', '1984-08-10', '182.00', null, '4', '15');
INSERT INTO `members` VALUES ('209', 'H·阿科斯塔', 'H.Acosta', '后卫', '墨西哥', '1991-11-24', '180.00', '73.00', '13', '15');
INSERT INTO `members` VALUES ('210', 'R·萨利纳斯', 'Rodrigo Salinas', '后卫', '墨西哥', '1988-05-09', '178.00', '70.00', '29', '15');
INSERT INTO `members` VALUES ('211', '威利安', 'William da Silva', '中场', '巴西', '1986-11-20', '173.00', '72.00', '8', '15');
INSERT INTO `members` VALUES ('212', 'A·里奥斯', 'A.Rios', '中场', '墨西哥', '1988-10-24', '172.00', '77.00', '15', '15');
INSERT INTO `members` VALUES ('213', 'R·鲁伊兹', 'R.Ruiz', '中场', '墨西哥', '1986-01-14', '175.00', '71.00', '17', '15');
INSERT INTO `members` VALUES ('214', '卡内罗', 'A.Canelo', '中场', '阿根廷', '1992-02-03', '182.00', '70.00', '25', '15');
INSERT INTO `members` VALUES ('215', 'A·梅迪纳', 'A.Medina', '中场', '墨西哥', '1997-08-19', null, null, '30', '15');
INSERT INTO `members` VALUES ('216', 'L·门多萨', 'L.Mendoza', '前锋', '墨西哥', '0199-02-03', '173.00', '72.00', '7', '15');
INSERT INTO `members` VALUES ('217', 'C·埃斯奎维尔', 'C.Esquivel', '前锋', '墨西哥', '1982-04-10', '172.00', '68.00', '11', '15');
INSERT INTO `members` VALUES ('218', 'E·特瑞里奥', 'E.Triverio', '前锋', '阿根廷', '1988-12-31', '184.00', '78.00', '21', '15');
INSERT INTO `members` VALUES ('219', '苏维卡赖', 'Zubikarai', '门将', '西班牙', '1984-02-26', '185.00', '83.00', '1', '16');
INSERT INTO `members` VALUES ('220', 'T·Iwata', 'T.Iwata', '后卫', '日本', '1983-04-22', '174.00', '70.00', '3', '16');
INSERT INTO `members` VALUES ('221', 'A·Rogers', 'A.Rogers', '后卫', '英格兰', '1995-06-02', '187.00', '75.00', '13', '16');
INSERT INTO `members` VALUES ('222', '里埃拉', 'Albert Riera', '中场', '西班牙', '1983-12-28', '173.00', '68.00', '8', '16');
INSERT INTO `members` VALUES ('223', 'D·摩根', 'D.Morgan', '中场', '新西兰', '1990-12-20', '182.00', '78.00', '15', '16');
INSERT INTO `members` VALUES ('224', 'J·Vale', 'J.Vale', '中场', '新西兰', '1994-04-15', null, null, '4', '16');
INSERT INTO `members` VALUES ('225', 'D·布朗尼', 'D.Browne', '前锋', '巴布亚新几内亚', '1995-12-27', '175.00', '65.00', '19', '16');
INSERT INTO `members` VALUES ('226', '贾维', 'Javi Camochu', '前锋', '西班牙', '1989-04-13', '184.00', '83.00', '0', '16');
INSERT INTO `members` VALUES ('227', '布拉沃', 'C.Bravo', '门将', '智利', '1983-04-13', '184.00', '80.00', '1', '17');
INSERT INTO `members` VALUES ('228', '埃德森', 'Ederson Moraes', '门将', '巴西', '1993-08-17', '188.00', '86.00', '31', '17');
INSERT INTO `members` VALUES ('229', '凯尔·沃克', 'K.Walker', '后卫', '英格兰', '1990-05-28', '178.00', '70.00', '2', '17');
INSERT INTO `members` VALUES ('230', '达尼洛', 'Danilo', '后卫', '巴西', '1991-07-15', '184.00', '78.00', '3', '17');
INSERT INTO `members` VALUES ('231', '孔帕尼', 'V.Kompany', '后卫', '比利时', '1986-04-10', '193.00', '85.00', '4', '17');
INSERT INTO `members` VALUES ('232', '斯通斯', 'J.Stones', '后卫', '英格兰', '1994-05-28', '188.00', '70.00', '5', '17');
INSERT INTO `members` VALUES ('233', '奥塔门迪', 'N.Otamendi', '后卫', '阿根廷', '1988-02-12', '183.00', '81.00', '30', '17');
INSERT INTO `members` VALUES ('234', '京多安', 'I.Gundogan', '中场', '德国', '1990-10-24', '180.00', '80.00', '8', '17');
INSERT INTO `members` VALUES ('235', '德布劳内', 'K.De Bruyne', '中场', '比利时', '1991-06-28', '181.00', '68.00', '17', '17');
INSERT INTO `members` VALUES ('236', '大卫·席尔瓦', 'David Silva', '中场', '西班牙', '1986-01-08', '173.00', '67.00', '21', '17');
INSERT INTO `members` VALUES ('237', '费尔南迪尼奥', 'Fernandinho', '中场', '巴西', '1985-05-04', '179.00', '67.00', '25', '17');
INSERT INTO `members` VALUES ('238', '斯特林', 'R.Sterling', '前锋', '英格兰', '1994-12-08', '170.00', '69.00', '7', '17');
INSERT INTO `members` VALUES ('239', '阿圭罗', 'S.Aguero', '前锋', '阿根廷', '1988-06-02', '173.00', '70.00', '10', '17');
INSERT INTO `members` VALUES ('240', '萨内', 'L.Sane', '前锋', '德国', '1996-10-11', '183.00', '75.00', '19', '17');
INSERT INTO `members` VALUES ('241', '热苏斯', 'Gabriel Jseus', '前锋', '巴西', '1997-04-03', '175.00', '73.00', '33', '17');
INSERT INTO `members` VALUES ('242', '洛里', 'H.Lloris', '门将', '法国', '1986-12-26', '188.00', '82.00', '1', '18');
INSERT INTO `members` VALUES ('243', '沃尔姆', 'M.Vorm', '门将', '荷兰', '1983-10-20', '183.00', '84.00', '13', '18');
INSERT INTO `members` VALUES ('244', '特里皮尔', 'K.Trippier', '后卫', '英格兰', '1990-09-19', '178.00', '71.00', '2', '18');
INSERT INTO `members` VALUES ('245', '罗斯', 'D.Rose', '后卫', '英格兰', '1990-07-02', '173.00', '72.00', '3', '18');
INSERT INTO `members` VALUES ('246', '费尔通亨', 'J.Vertonghen', '后卫', '比利时', '1987-04-24', '189.00', '86.00', '5', '18');
INSERT INTO `members` VALUES ('247', '奥利耶', 'S.Aurier', '后卫', '科特迪瓦', '1992-12-24', '176.00', '76.00', '24', '18');
INSERT INTO `members` VALUES ('248', '戴维斯', 'B.Davies', '后卫', '威尔士', '1993-04-24', '181.00', '76.00', '33', '18');
INSERT INTO `members` VALUES ('249', '哈里·温克斯', 'H.Winks', '中场', '英格兰', '1996-02-02', '178.00', '65.00', '8', '18');
INSERT INTO `members` VALUES ('250', '埃里克森', 'C.Eriksen', '中场', '丹麦', '1992-02-14', '175.00', '71.00', '23', '18');
INSERT INTO `members` VALUES ('251', '卢卡斯', 'Lucas Moura', '中场', '巴西', '1992-08-13', '172.00', '72.00', '27', '18');
INSERT INTO `members` VALUES ('252', '孙兴慜', 'Heung-Min Son', '前锋', '韩国', '1992-07-08', '183.00', '78.00', '7', '18');
INSERT INTO `members` VALUES ('253', '哈里凯恩', 'H.Kane', '前锋', '英格兰', '0193-07-28', '188.00', '86.00', '10', '18');
INSERT INTO `members` VALUES ('254', '略伦特', 'Llorente', '前锋', '西班牙', '1985-02-26', '193.00', '90.00', '18', '18');
INSERT INTO `members` VALUES ('255', '切赫', 'P.Cech', '门将', '捷克', '1982-05-20', '196.00', '90.00', '1', '19');
INSERT INTO `members` VALUES ('256', '莱诺', 'B.Leno', '门将', '德国', '1992-03-04', '190.00', '83.00', '19', '19');
INSERT INTO `members` VALUES ('257', '帕帕斯塔索普洛斯', 'S.Papastathopoulos', '后卫', '希腊', '1988-06-09', '186.00', '85.00', '5', '19');
INSERT INTO `members` VALUES ('258', '贝莱林', 'Bellerin', '后卫', '西班牙', '1995-03-19', '178.00', '74.00', '2', '19');
INSERT INTO `members` VALUES ('259', '科斯切尔尼', 'L.Koscielny', '后卫', '法国', '1985-09-10', '186.00', '75.00', '6', '19');
INSERT INTO `members` VALUES ('260', '利希施泰纳', 'S.Lichtsteiner', '后卫', '瑞士', '1984-01-16', '182.00', '76.00', '12', '19');
INSERT INTO `members` VALUES ('261', '蒙雷亚尔', 'Nacho Monreal', '后卫', '西班牙', '1986-02-26', '179.00', '72.00', '18', '19');
INSERT INTO `members` VALUES ('262', '姆希塔良', 'H.Mkhitaryan', '中场', '亚美尼亚', '1989-01-21', '177.00', '75.00', '7', '19');
INSERT INTO `members` VALUES ('263', '拉姆塞', 'A.Ramsey', '中场', '威尔士', '1990-12-26', '178.00', '76.00', '8', '19');
INSERT INTO `members` VALUES ('264', '厄齐尔', 'M.Ozil', '中场', '德国', '1988-10-15', '180.00', '76.00', '10', '19');
INSERT INTO `members` VALUES ('265', '卢卡斯·托雷拉', 'L.Torreira', '中场', '乌拉圭', '1996-02-11', '168.00', '64.00', '11', '19');
INSERT INTO `members` VALUES ('266', '扎卡', 'G.Xhaka', '中场', '瑞士', '1992-09-27', '185.00', '82.00', '34', '19');
INSERT INTO `members` VALUES ('267', '拉卡泽特', 'A.Lacazette', '前锋', '法国', '1991-05-28', '175.00', '73.00', '9', '19');
INSERT INTO `members` VALUES ('268', '奥巴梅扬', 'P.Aubameyang', '前锋', '加蓬', '1989-06-18', '187.00', '80.00', '14', '19');
INSERT INTO `members` VALUES ('269', '维尔贝克', 'D.Welbeck', '前锋', '英格兰', '1990-11-26', '185.00', '73.00', '23', '19');
INSERT INTO `members` VALUES ('270', '恩凯蒂亚', 'E.Nketiah', '前锋', '英格兰', '1990-05-30', '175.00', '72.00', '49', '19');
INSERT INTO `members` VALUES ('271', '帕特里西奥', 'Rui Patricio', '门将', '葡萄牙', '1988-02-15', '189.00', '85.00', '11', '20');
INSERT INTO `members` VALUES ('272', '鲁迪', 'J.Ruddy', '门将', '英格兰', '1986-10-24', '192.00', '96.00', '21', '20');
INSERT INTO `members` VALUES ('273', '本内特', 'R.Bennett', '后卫', '英格兰', '1990-03-06', '188.00', '77.00', '5', '20');
INSERT INTO `members` VALUES ('274', '考迪', 'C.Coady', '后卫', '英格兰', '1993-02-25', '185.00', '75.00', '16', '20');
INSERT INTO `members` VALUES ('275', '强尼卡斯特罗', 'Jonny Castro', '后卫', '西班牙', '1994-03-03', '175.00', '70.00', '19', '20');
INSERT INTO `members` VALUES ('276', '维纳格雷', 'Ruben Vinagre', '后卫', '葡萄牙', '1999-04-09', '174.00', '64.00', '29', '20');
INSERT INTO `members` VALUES ('277', '鲁本·内维斯', 'Ruben Neves', '中场', '葡萄牙', '1997-03-13', '180.00', '80.00', '8', '20');
INSERT INTO `members` VALUES ('278', '吉布斯·怀特', 'M.Gibbs-White', '中场', '英格兰', '2000-01-27', null, null, '17', '20');
INSERT INTO `members` VALUES ('279', '迪奥戈·若塔', 'Diogo Jota', '中场', '葡萄牙', '1996-12-04', '178.00', '68.00', '18', '20');
INSERT INTO `members` VALUES ('280', '穆蒂尼奥', 'Joao Moutinho', '中场', '葡萄牙', '1986-09-08', '170.00', '61.00', '28', '20');
INSERT INTO `members` VALUES ('281', '卡瓦雷罗', 'Ivan Cavaleiro', '前锋', '葡萄牙', '1993-10-18', '175.00', '72.00', '7', '20');
INSERT INTO `members` VALUES ('282', '劳尔·希门尼斯', 'R.Jimenez', '前锋', '墨西哥', '1991-05-05', '187.00', '76.00', '9', '20');
INSERT INTO `members` VALUES ('283', '赫尔德科斯塔', 'Helder Costa', '前锋', '葡萄牙', '1994-01-12', '178.00', '69.00', '10', '20');
INSERT INTO `members` VALUES ('284', '阿达马特劳雷', 'Adama Traore', '前锋', '西班牙', '1996-01-25', '178.00', '72.00', '37', '20');
INSERT INTO `members` VALUES ('285', '戈麦斯', 'Gomes', '门将', '巴西', '1981-02-15', '191.00', '91.00', '1', '21');
INSERT INTO `members` VALUES ('286', '福斯特', 'B.Foster', '门将', '英格兰', '1983-04-03', '193.00', '79.00', '26', '21');
INSERT INTO `members` VALUES ('287', '扬马特', 'D.Janmaat', '后卫', '荷兰', '1989-07-22', '185.00', '80.00', '2', '21');
INSERT INTO `members` VALUES ('288', '布里托斯', 'M.Britos', '后卫', '乌拉圭', '1985-07-17', '188.00', '82.00', '3', '21');
INSERT INTO `members` VALUES ('289', '卡思卡特', 'C.Cathcart', '后卫', '北爱尔兰', '1989-02-06', '188.00', '73.00', '15', '21');
INSERT INTO `members` VALUES ('290', '纳瓦罗', 'Marc Navarro', '后卫', '西班牙', '1995-07-02', '188.00', '79.00', '23', '21');
INSERT INTO `members` VALUES ('291', '霍莱瓦斯', 'J.Holebas', '后卫', '希腊', '1984-06-27', '184.00', '77.00', '25', '21');
INSERT INTO `members` VALUES ('292', '克莱维利', 'T.Cleverley', '中场', '英格兰', '1989-08-12', '175.00', '67.00', '8', '21');
INSERT INTO `members` VALUES ('293', '查洛巴', 'N.Chalobah', '中场', '英格兰', '1994-12-12', '187.00', '80.00', '14', '21');
INSERT INTO `members` VALUES ('294', '杜库雷', 'A.Doucoure', '中场', '法国', '1993-01-01', '184.00', '75.00', '16', '21');
INSERT INTO `members` VALUES ('295', '多明戈斯', 'Domingos Quina', '中场', '葡萄牙', '1999-11-18', '179.00', '72.00', '20', '21');
INSERT INTO `members` VALUES ('296', '佩雷拉', 'R.Pereyra', '中场', '阿根廷', '1991-01-07', '182.00', '77.00', '37', '21');
INSERT INTO `members` VALUES ('297', '德乌洛费乌', 'Deulofeu', '前锋', '西班牙', '1994-03-13', '177.00', '73.00', '7', '21');
INSERT INTO `members` VALUES ('298', '迪尼', 'T.Deeney', '前锋', '英格兰', '1988-06-29', '183.00', '90.00', '9', '21');
INSERT INTO `members` VALUES ('299', 'I·苏克塞斯', 'I.Success', '前锋', '尼日利亚', '1996-01-07', '186.00', '86.00', '10', '21');
INSERT INTO `members` VALUES ('300', 'A·格雷', 'A.Gray', '前锋', '英格兰', '1991-06-26', '178.00', '83.00', '18', '21');
INSERT INTO `members` VALUES ('301', '皮克福德', 'J.Pickford', '门将', '英格兰', '1994-03-07', '185.00', '77.00', '1', '22');
INSERT INTO `members` VALUES ('302', '斯特克伦博格', 'M.Stekelenburg', '门将', '荷兰', '1982-09-22', '197.00', '92.00', '22', '22');
INSERT INTO `members` VALUES ('303', '莱顿·巴恩斯', 'L.Baines', '后卫', '英格兰', '1984-12-11', '170.00', '74.00', '3', '22');
INSERT INTO `members` VALUES ('304', '祖马', 'K.Zouma', '后卫', '法国', '1994-10-27', '190.00', '96.00', '5', '22');
INSERT INTO `members` VALUES ('305', '贾吉尔卡', 'P.Jagielka', '后卫', '英格兰', '1982-08-17', '180.00', '87.00', '6', '22');
INSERT INTO `members` VALUES ('306', '科尔曼', 'S.Coleman', '后卫', '爱尔兰', '1988-10-11', '177.00', '67.00', '23', '22');
INSERT INTO `members` VALUES ('307', '肯尼', 'J.Kenny', '后卫', '英格兰', '1997-03-15', '176.00', '67.00', '43', '22');
INSERT INTO `members` VALUES ('308', '安德烈戈麦斯', 'Andre Gomes', '中场', '葡萄牙', '1993-07-30', '188.00', '84.00', '8', '22');
INSERT INTO `members` VALUES ('309', '西于尔兹松', 'G.Sigurosson', '中场', '冰岛', '1989-09-08', '186.00', '79.00', '10', '22');
INSERT INTO `members` VALUES ('310', '奎耶', 'I.Gueye', '中场', '塞内加尔', '1989-09-26', '174.00', '66.00', '17', '22');
INSERT INTO `members` VALUES ('311', '施内德林', 'M.Schneiderlin', '中场', '法国', '1989-11-08', '181.00', '75.00', '18', '22');
INSERT INTO `members` VALUES ('312', '伯纳德', 'Bernard', '中场', '巴西', '1992-09-08', '164.00', '60.00', '20', '22');
INSERT INTO `members` VALUES ('313', '沃尔科特', 'T.Walcott', '前锋', '英格兰', '1989-03-16', '176.00', '68.00', '11', '22');
INSERT INTO `members` VALUES ('314', 'C·托桑', 'C.Tosun', '前锋', '土耳其', '1991-06-07', '183.00', '78.00', '14', '22');
INSERT INTO `members` VALUES ('315', 'A·洛克曼', 'A.Lookman', '前锋', '英格兰', '1997-10-20', '174.00', '78.00', '31', '22');
INSERT INTO `members` VALUES ('316', '法比安斯基', 'L.Fabianski', '门将', '波兰', '1985-04-18', '190.00', '83.00', '1', '23');
INSERT INTO `members` VALUES ('317', '阿德里安', 'Adrian', '门将', '西班牙', '1987-01-03', '190.00', '80.00', '13', '23');
INSERT INTO `members` VALUES ('318', '克雷斯布尔', 'A.Cresswell', '后卫', '英格兰', '1989-12-15', '170.00', '66.00', '3', '23');
INSERT INTO `members` VALUES ('319', 'F·巴尔武埃纳', 'F.Balbuena', '后卫', '巴拉圭', '1991-08-23', '188.00', '82.00', '4', '23');
INSERT INTO `members` VALUES ('320', '萨巴莱塔', 'P.Zabaleta', '后卫', '阿根廷', '1985-01-16', '176.00', '74.00', '5', '23');
INSERT INTO `members` VALUES ('321', '奥邦纳', 'A.Ogbonna', '后卫', '意大利', '1988-05-23', '191.00', '86.00', '21', '23');
INSERT INTO `members` VALUES ('322', '费雷德里克斯', 'R.Fredericks', '后卫', '英格兰', '1992-10-10', '181.00', '74.00', '24', '23');
INSERT INTO `members` VALUES ('323', '费利佩·安德森', 'Felipe Anderson', '中场', '巴西', '1993-04-15', '175.00', '70.00', '8', '23');
INSERT INTO `members` VALUES ('324', '斯诺格拉斯', 'R.Snodgrass', '中场', '苏格兰', '1987-09-07', '182.00', '82.00', '11', '23');
INSERT INTO `members` VALUES ('325', '诺贝尔', 'M.Noble', '中场', '英格兰', '1987-05-08', '180.00', '70.00', '16', '23');
INSERT INTO `members` VALUES ('326', '威尔希尔', 'J.Wilshere', '中场', '英格兰', '1992-01-01', '172.00', '68.00', '19', '23');
INSERT INTO `members` VALUES ('327', '莱斯', 'D.Rice', '中场', '爱尔兰', '1999-01-14', '185.00', '76.00', '41', '23');
INSERT INTO `members` VALUES ('328', '阿诺托维奇', 'M.Arnautovic', '前锋', '奥地利', '1989-04-19', '192.00', '83.00', '7', '23');
INSERT INTO `members` VALUES ('329', '埃尔南德斯', 'Javier Hernandez', '前锋', '墨西哥', '1988-06-01', '175.00', '73.00', '17', '23');
INSERT INTO `members` VALUES ('330', '卢卡斯', 'Lucas Perez', '前锋', '西班牙', '1988-09-10', '180.00', '82.00', '27', '23');
INSERT INTO `members` VALUES ('331', '博鲁茨', 'A.Boruc', '门将', '波兰', '1980-02-20', '193.00', '87.00', '1', '24');
INSERT INTO `members` VALUES ('332', '贝戈维奇', 'A.Begovic', '门将', '波黑', '1987-06-20', '199.00', '101.00', '27', '24');
INSERT INTO `members` VALUES ('333', '弗朗西斯', 'S.Francis', '后卫', '英格兰', '1985-02-16', '183.00', '90.00', '2', '24');
INSERT INTO `members` VALUES ('334', '斯蒂夫·库克', 'S.Cook', '后卫', '英格兰', '1991-04-19', '185.00', '82.00', '3', '24');
INSERT INTO `members` VALUES ('335', '亚当史密斯', 'A.Smith', '后卫', '英格兰', '1991-04-29', '180.00', '78.00', '15', '24');
INSERT INTO `members` VALUES ('336', '迭戈里克', 'Diego Rico', '后卫', '西班牙', '1993-02-23', '183.00', '76.00', '21', '24');
INSERT INTO `members` VALUES ('337', '克利尼', 'N.Clyne', '后卫', '英格兰', '1991-04-06', '175.00', '67.00', '23', '24');
INSERT INTO `members` VALUES ('338', '苏尔曼', 'A.Surman', '中场', '英格兰', '1986-08-20', '178.00', '73.00', '6', '24');
INSERT INTO `members` VALUES ('339', '莱马', 'J.Lerma', '中场', '哥伦比亚', '1994-10-25', '179.00', '70.00', '8', '24');
INSERT INTO `members` VALUES ('340', '伊比', 'J.Ibe', '中场', '英格兰', '1995-12-08', '176.00', '81.00', '10', '24');
INSERT INTO `members` VALUES ('341', '斯塔尼斯拉斯', 'J.Stanislas', '中场', '英格兰', '1989-11-26', '183.00', '76.00', '19', '24');
INSERT INTO `members` VALUES ('342', '布鲁克斯', 'D.Brooks', '中场', '威尔士', '1997-07-08', '166.00', null, '20', '24');
INSERT INTO `members` VALUES ('343', 'L·穆塞', 'L.Mousset', '前锋', '法国', '1996-02-08', '184.00', '80.00', '9', '24');
INSERT INTO `members` VALUES ('344', '约书亚·金', 'J.King', '前锋', '挪威', '1992-01-15', '180.00', '74.00', '17', '24');
INSERT INTO `members` VALUES ('345', 'D·索兰克', 'D.Solanke', '前锋', '英格兰', '1997-09-14', '187.00', '80.00', '29', '24');
INSERT INTO `members` VALUES ('346', 'K·舒梅切尔', 'K.Schmeichel', '门将', '丹麦', '1986-11-05', '189.00', '89.00', '1', '25');
INSERT INTO `members` VALUES ('347', '沃德', 'D.Ward', '门将', '威尔士', '1993-06-22', '191.00', '88.00', '12', '25');
INSERT INTO `members` VALUES ('348', '丹尼辛普森', 'D.Simpson', '后卫', '英格兰', '1987-01-04', '176.00', '80.00', '2', '25');
INSERT INTO `members` VALUES ('349', '摩根', 'W.Morgan', '后卫', '牙买加', '1984-01-21', '186.00', '101.00', '5', '25');
INSERT INTO `members` VALUES ('350', '埃文斯', 'J.Evans', '后卫', '北爱尔兰', '1988-01-03', '188.00', '77.00', '6', '25');
INSERT INTO `members` VALUES ('351', '里卡多佩雷拉', 'Ricardo Pereira', '后卫', '葡萄牙', '1993-10-06', '175.00', '70.00', '14', '25');
INSERT INTO `members` VALUES ('352', 'H·马圭尔', 'H.Maguire', '后卫', '英格兰', '1993-03-05', '194.00', '100.00', '15', '25');
INSERT INTO `members` VALUES ('353', 'J·麦迪逊', 'J.Maddison', '中场', '英格兰', '1996-01-23', '179.00', '73.00', '10', '25');
INSERT INTO `members` VALUES ('354', '阿尔布莱顿', 'M.Albrighton', '中场', '英格兰', '1989-11-18', '175.00', '74.00', '11', '25');
INSERT INTO `members` VALUES ('355', 'H·巴内斯', 'H.Barnes', '中场', '英格兰', '1997-12-09', '174.00', '66.00', '19', '25');
INSERT INTO `members` VALUES ('356', '蒂耶勒曼', 'Y.Tielemans', '中场', '比利时', '1997-05-07', '176.00', '72.00', '21', '25');
INSERT INTO `members` VALUES ('357', '曼迪', 'N.Mendy', '中场', '法国', '1992-06-23', '167.00', '73.00', '24', '25');
INSERT INTO `members` VALUES ('358', '伊赫纳乔', 'K.Iheanacho', '前锋', '尼日利亚', '1996-10-03', '185.00', '82.00', '8', '25');
INSERT INTO `members` VALUES ('359', '瓦尔迪', 'J.Vardy', '前锋', '英格兰', '1987-01-11', '179.00', '74.00', '9', '25');
INSERT INTO `members` VALUES ('360', '冈崎慎司', 'S.Okazaki', '前锋', '日本', '1986-04-16', '173.00', '78.00', '20', '25');
INSERT INTO `members` VALUES ('361', '斯佩罗尼', 'J.Speroni', '门将', '阿根廷', '1979-05-18', '186.00', '87.00', '1', '26');
INSERT INTO `members` VALUES ('362', '亨尼塞', 'W.Hennessey', '门将', '威尔士', '1987-01-24', '198.00', '90.00', '13', '26');
INSERT INTO `members` VALUES ('363', '卢卡斯佩里', 'Lucas Perri', '门将', '巴西', '1997-12-10', '197.00', '98.00', '22', '26');
INSERT INTO `members` VALUES ('364', '瓦德', 'J.Ward', '后卫', '英格兰', '1989-10-29', '188.00', '83.00', '2', '26');
INSERT INTO `members` VALUES ('365', '范安霍尔特', 'P.van Aanholt', '后卫', '荷兰', '1990-08-29', '176.00', '74.00', '3', '26');
INSERT INTO `members` VALUES ('366', '汤姆金斯', 'J.Tomkins', '后卫', '英格兰', '1989-03-29', '192.00', '74.00', '5', '26');
INSERT INTO `members` VALUES ('367', '萨克', 'M.Sakho', '后卫', '法国', '1990-02-13', '187.00', '83.00', '12', '26');
INSERT INTO `members` VALUES ('368', '米利沃耶维奇', 'L.Milivojevic', '中场', '塞尔维亚', '1991-04-07', '186.00', '80.00', '4', '26');
INSERT INTO `members` VALUES ('369', '汤森德', 'A.Townsend', '中场', '英格兰', '1991-07-16', '181.00', '77.00', '10', '26');
INSERT INTO `members` VALUES ('370', '麦克阿瑟', 'J.McArthur', '中场', '苏格兰', '1987-10-07', '178.00', '75.00', '18', '26');
INSERT INTO `members` VALUES ('371', '列德瓦尔德', 'J.Riedwald', '中场', '荷兰', '1996-09-09', '182.00', '79.00', '44', '26');
INSERT INTO `members` VALUES ('372', '扎哈', 'W.Zaha', '前锋', '科特迪瓦', '1992-11-10', '180.00', '66.00', '11', '26');
INSERT INTO `members` VALUES ('373', '本特克', 'C.Benteke', '前锋', '比利时', '1990-12-03', '190.00', '83.00', '17', '26');
INSERT INTO `members` VALUES ('374', '维克汉姆', 'C.Wickham', '前锋', '英格兰', '1993-03-31', '191.00', '90.00', '21', '26');
INSERT INTO `members` VALUES ('375', '巴舒亚伊', 'M.Batshuayi', '前锋', '比利时', '1993-10-02', '184.00', '74.00', '23', '26');
INSERT INTO `members` VALUES ('376', '马修·瑞恩', 'M.Ryan', '门将', '澳大利亚', '1992-04-08', '184.00', '82.00', '1', '27');
INSERT INTO `members` VALUES ('377', 'J·斯蒂勒', 'J.Steele', '门将', '英格兰', '1990-08-18', '190.00', '79.00', '23', '27');
INSERT INTO `members` VALUES ('378', 'B.萨尔托', 'Bruno Saltor', '后卫', '西班牙', '1980-10-01', '181.00', '76.00', '2', '27');
INSERT INTO `members` VALUES ('379', '邦', 'G.Bong', '后卫', '喀麦隆', '1988-04-25', '187.00', '74.00', '3', '27');
INSERT INTO `members` VALUES ('380', '达菲', 'S.Duffy', '后卫', '爱尔兰', '1992-01-01', '193.00', '76.00', '4', '27');
INSERT INTO `members` VALUES ('381', '巴洛贡', 'L.Balogun', '后卫', '尼日利亚', '1988-06-28', '190.00', '88.00', '14', '27');
INSERT INTO `members` VALUES ('382', '蒙托亚', 'Martin Montoya', '后卫', '西班牙', '1991-04-14', '175.00', '73.00', '22', '27');
INSERT INTO `members` VALUES ('383', '伯纳多', 'Bernardo', '后卫', '巴西', '1995-05-14', '186.00', '76.00', '30', '27');
INSERT INTO `members` VALUES ('384', 'D·伯恩', 'D.Burn', '后卫', '英格兰', '1992-05-09', '198.00', '87.00', '33', '27');
INSERT INTO `members` VALUES ('385', 'D·史蒂芬斯', 'D.Stephens', '中场', '英格兰', '1989-06-12', '169.00', '71.00', '6', '27');
INSERT INTO `members` VALUES ('386', '卡亚尔', 'B.Kayal', '中场', '以色列', '1988-05-02', '178.00', '74.00', '7', '27');
INSERT INTO `members` VALUES ('387', 'A·克诺凯尔', 'A.Knockaert', '中场', '法国', '1991-11-20', '172.00', '69.00', '11', '27');
INSERT INTO `members` VALUES ('388', '格罗斯', 'P.Gros', '中场', '德国', '1991-06-15', '181.00', '78.00', '13', '27');
INSERT INTO `members` VALUES ('389', '洛卡迪亚', 'J.Locadia', '前锋', '荷兰', '1993-11-07', '185.00', '87.00', '9', '27');
INSERT INTO `members` VALUES ('390', '穆雷', 'G.Murray', '前锋', '英格兰', '1983-09-25', '183.00', '80.00', '17', '27');
INSERT INTO `members` VALUES ('391', 'T·希顿', 'T.Heaton', '门将', '英格兰', '1986-04-15', '188.00', '85.00', '1', '28');
INSERT INTO `members` VALUES ('392', '乔·哈特', 'J.Hart', '门将', '英格兰', '1987-04-19', '196.00', '91.00', '20', '28');
INSERT INTO `members` VALUES ('393', '洛顿', 'M.Lowton', '后卫', '英格兰', '1989-06-09', '180.00', '78.00', '2', '28');
INSERT INTO `members` VALUES ('394', 'C·泰勒', 'C.Taylor', '后卫', '英格兰', '1993-09-18', '176.00', '70.00', '3', '28');
INSERT INTO `members` VALUES ('395', 'B·吉布森', 'B.Gibson', '后卫', '英格兰', '1993-01-15', '185.00', '78.00', '14', '28');
INSERT INTO `members` VALUES ('396', '巴尔兹利', 'P.Bardsley', '后卫', '苏格兰', '1985-06-28', '180.00', '74.00', '26', '28');
INSERT INTO `members` VALUES ('397', '杰克科克', 'J.Cork', '中场', '英格兰', '1989-06-25', '183.00', '70.00', '4', '28');
INSERT INTO `members` VALUES ('398', '布拉迪', 'R.Braddy', '中场', '爱尔兰', '1992-01-14', '176.00', '71.00', '12', '28');
INSERT INTO `members` VALUES ('399', '德福尔', 'S.Defour', '中场', '比利时', '1988-04-15', '173.00', '65.00', '16', '28');
INSERT INTO `members` VALUES ('400', '韦斯特伍德', 'A.Westwood', '中场', '英格兰', '1990-04-01', '175.00', '80.00', '18', '28');
INSERT INTO `members` VALUES ('401', '列侬', 'A.Lennon', '中场', '英格兰', '1987-04-16', '165.00', '63.00', '25', '28');
INSERT INTO `members` VALUES ('402', 'A·巴尼斯', 'A.Barnes', '前锋', '奥地利', '1989-10-30', '186.00', '77.00', '10', '28');
INSERT INTO `members` VALUES ('403', '克劳奇', 'P.Crouch', '前锋', '英格兰', '1981-01-30', '201.00', '75.00', '15', '28');
INSERT INTO `members` VALUES ('404', 'C·伍德', 'C.Wood', '前锋', '新西兰', '1991-12-07', '191.00', '81.00', '11', '28');
INSERT INTO `members` VALUES ('405', '维德拉', 'M.Vydra', '前锋', '捷克', '1992-05-01', '180.00', '74.00', '27', '28');
INSERT INTO `members` VALUES ('406', '杜布拉夫卡', 'M.Dubravka', '门将', '斯洛伐克', '1989-01-15', '190.00', '80.00', '12', '29');
INSERT INTO `members` VALUES ('407', '达尔洛', 'K.Darlow', '门将', '英格兰', '1990-10-08', '190.00', '88.00', '26', '29');
INSERT INTO `members` VALUES ('408', '夏兰克拉克', 'C.Clark', '后卫', '爱尔兰', '1989-09-26', '185.00', '88.00', '2', '29');
INSERT INTO `members` VALUES ('409', '杜梅特', 'P.Dummettt', '后卫', '威尔士', '1991-09-26', '183.00', '82.00', '3', '29');
INSERT INTO `members` VALUES ('410', '舍尔', 'F.Schar', '后卫', '瑞士', '1991-12-20', '188.00', '84.00', '5', '29');
INSERT INTO `members` VALUES ('411', '曼基略', 'Javi Manquillo', '后卫', '西班牙', '1994-05-05', '178.00', '76.00', '19', '29');
INSERT INTO `members` VALUES ('412', '耶德林', 'D.Yedlin', '后卫', '美国', '1993-07-09', '172.00', '75.00', '22', '29');
INSERT INTO `members` VALUES ('413', '寄诚庸', 'Sung-Yeung Ki', '中场', '韩国', '1989-01-24', '187.00', '79.00', '4', '29');
INSERT INTO `members` VALUES ('414', '谢尔维', 'J.Shelvey', '中场', '英格兰', '1992-02-27', '184.00', '80.00', '8', '29');
INSERT INTO `members` VALUES ('415', '迪亚梅', 'M.Diame', '中场', '塞内加尔', '1987-06-14', '184.00', '86.00', '10', '29');
INSERT INTO `members` VALUES ('416', '海登', 'I.Hayden', '中场', '英格兰', '1995-03-22', '185.00', '79.00', '14', '29');
INSERT INTO `members` VALUES ('417', '阿特苏', 'C.Atsu', '中场', '加纳', '1992-01-10', '165.00', '65.00', '30', '29');
INSERT INTO `members` VALUES ('418', '隆东', 'S.Rondon', '前锋', '委内瑞拉', '1989-09-16', '186.00', '86.00', '9', '29');
INSERT INTO `members` VALUES ('419', '武藤嘉纪', 'Y.Muto', '前锋', '日本', '1992-07-15', '179.00', '72.00', '13', '29');
INSERT INTO `members` VALUES ('420', '阿约泽·佩雷斯', 'Ayoze Perez', '前锋', '西班牙', '1993-07-29', '178.00', '72.00', '17', '29');
INSERT INTO `members` VALUES ('421', '埃泽里奇', 'N.Etheridge', '门将', '菲律宾', '1990-02-07', '188.00', '90.00', '1', '30');
INSERT INTO `members` VALUES ('422', 'A·史密斯', 'A.Smithies', '门将', '英格兰', '1990-03-05', '191.00', '83.00', '12', '30');
INSERT INTO `members` VALUES ('423', 'B·墨菲', 'B.Murohy', '门将', '爱尔兰', '1983-05-07', '185.00', '83.00', '28', '30');
INSERT INTO `members` VALUES ('424', 'L·佩尔蒂尔', 'L.Peltier', '后卫', '英格兰', '1986-12-11', '178.00', '73.00', '2', '30');
INSERT INTO `members` VALUES ('425', 'J·本内特', 'J.Bennett', '后卫', '英格兰', '1990-03-28', '177.00', '74.00', '3', '30');
INSERT INTO `members` VALUES ('426', '曼加', 'B.Ecuele Manga', '后卫', '加蓬', '1988-07-16', '186.00', '76.00', '5', '30');
INSERT INTO `members` VALUES ('427', '康诺利', 'M.Connolly', '后卫', '英格兰', '1987-09-24', '188.00', '84.00', '16', '30');
INSERT INTO `members` VALUES ('428', '阿特', 'H.Arter', '中场', '爱尔兰', '1989-12-28', '176.00', '70.00', '7', '30');
INSERT INTO `members` VALUES ('429', '拉莱斯', 'J.Ralls', '中场', '英格拉', '1993-10-12', '178.00', '70.00', '8', '30');
INSERT INTO `members` VALUES ('430', '巴丘纳', 'L.Bacuna', '中场', '库拉索岛', '1991-08-21', '187.00', '77.00', '15', '30');
INSERT INTO `members` VALUES ('431', '贡纳尔松', 'A.Gunnarsson', '中场', '冰岛', '1989-04-22', '177.00', '95.00', '17', '30');
INSERT INTO `members` VALUES ('432', '卡马拉萨', 'Victor Camarasa', '中场', '西班牙', '1994-05-28', '183.00', '76.00', '21', '30');
INSERT INTO `members` VALUES ('433', '佐霍尔', 'K.Zohore', '前锋', '丹麦', '1994-01-31', '190.00', '98.00', '10', '30');
INSERT INTO `members` VALUES ('434', 'N·门德斯', 'N.Mendez-Laing', '前锋', '英格兰', '1992-04-15', '178.00', '75.00', '19', '30');
INSERT INTO `members` VALUES ('435', 'R·希利', 'R.Healey', '前锋', '英格兰', '1994-12-06', '180.00', '72.00', '32', '30');
INSERT INTO `members` VALUES ('436', '麦卡锡', 'A.McCarthy', '门将', '英格兰', '1989-12-03', '193.00', '79.00', '1', '31');
INSERT INTO `members` VALUES ('437', '吉田麻也', 'M.Yoshida', '后卫', '日本', '1988-08-24', '189.00', '78.00', '3', '31');
INSERT INTO `members` VALUES ('438', '韦斯特高', 'J.Vestergaard', '后卫', '丹麦', '1992-08-03', '199.00', '98.00', '4', '31');
INSERT INTO `members` VALUES ('439', '伯特兰德', 'R.Bertrand', '后卫', '英格兰', '1989-08-05', '179.00', '85.00', '21', '31');
INSERT INTO `members` VALUES ('440', '塔吉特', 'M.Targett', '后卫', '英格兰', '1995-09-18', '183.00', '70.00', '33', '31');
INSERT INTO `members` VALUES ('441', 'M·尤努西', 'M.Elyounoussi', '中场', '挪威', '1994-08-04', '178.00', '70.00', '11', '31');
INSERT INTO `members` VALUES ('442', '罗梅乌', 'Oriol Romeu', '中场', '西班牙', '1991-09-24', '183.00', '83.00', '14', '31');
INSERT INTO `members` VALUES ('443', '勒米纳', 'M.Lemina', '中场', '加蓬', '1993-09-01', '184.00', '85.00', '18', '31');
INSERT INTO `members` VALUES ('444', '雷德蒙德', 'N.Redmond', '中场', '英格兰', '1994-03-06', '173.00', '69.00', '22', '31');
INSERT INTO `members` VALUES ('445', '雷伊别尔', 'P.Hojbjerg', '中场', '丹麦', '1995-08-05', '185.00', '84.00', '23', '31');
INSERT INTO `members` VALUES ('446', 'J·西姆斯', 'J.Sims', '中场', '英格兰', '1997-03-28', '174.00', '67.00', '39', '31');
INSERT INTO `members` VALUES ('447', '肖恩·朗', 'S.Long', '前锋', '爱尔兰', '1987-01-22', '178.00', '81.00', '7', '31');
INSERT INTO `members` VALUES ('448', '因斯', 'D.Ings', '前锋', '英格兰', '1992-07-23', '178.00', '73.00', '9', '31');
INSERT INTO `members` VALUES ('449', 'C·奥斯丁', 'C.Austin', '前锋', '英格兰', '1989-07-05', '188.00', '84.00', '10', '31');
INSERT INTO `members` VALUES ('450', '加拉赫', 'S.Gallaghei', '前锋', '国梁', '1995-09-15', '194.00', '75.00', '15', '31');

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
INSERT INTO `posts` VALUES ('1', '1', '复盘曼联1-0热刺', '一场开放且足够经典的对决，曼联凭借着拉什福德的进球客场1-0取胜热刺实现了联赛复仇。从比赛的实际进程来看，这是一场“非典型”索尔斯克亚的比赛。上半场曼联通过对温克斯的限制并在中场高位构建了拦截线，让热刺的进攻效率以及速度同步下滑，然后用坚定的身后球冲击兑现了进球。下半场比赛，曼联的适度回收以及波切蒂诺数次有效的调整给曼联带来了足够的威胁，不过，当优秀的德赫亚上线之后，曼联保住了胜利。\r\n【出场阵容】\r\n热刺出场阵容：1-洛里；2-特里皮尔、4-阿尔德韦雷尔德、5-维尔通亨、33-戴维斯；8-温克斯（81分钟-略伦特）、17-西索科（43分钟-拉梅拉）；23-埃里克森、20-阿里、7-孙兴慜；10-凯恩\r\n替补未出场：22-加扎尼加、3-罗斯、6-达文森-桑切斯、21-弗伊斯、52-斯基普\r\n曼联出场阵容：1-德赫亚；18-阿什利扬、2-林德洛夫、4-琼斯、23-卢克肖； 31-马蒂奇、6-博格巴（90+3分钟-麦克托米奈）、21-埃雷拉；14-林加德（83分钟-达洛特）、11-马夏尔（73分钟-卢卡库）、10-拉什福德\r\n未出场：22-罗梅罗、15-佩雷拉、17-弗雷德、8-马塔\r\n【限制温克斯，热刺组织梳理陷入低效后埃里克森发威】\r\n自从此前赛季在欧冠对决皇马时被针对性的包夹限制之后，温克斯就不断展现出超强的组织梳理能力以及面对强硬限制时的不足。这种情况被对手摸透之后的不断限制，一度让他在热刺丢掉了主力位置。如今，热刺在四线冲击、伤病增加的情况下，温克斯有了M-西索科保护、埃里克森与阿里的交替回撤帮助后再度成为热刺组织轮转的关键一环。\r\n在这种情况下，曼联本场比赛在前场进行了幅度并不低的高位逼抢（尤其是上半场）。林加德不断对温克斯进行跟防限制的情况下，热刺的组织进攻一度呈现出很大的问题。西索科需要增加硬度（尤其是面对曼联二次冲击时的速度），埃里克森与阿里不断回撤接应，让热刺的组织阵型在很大程度上出现了脱节。频繁的长距离传递，一度成为他们的手段，效果自然不好。\r\n图片\r\n图1：热刺取胜切尔西一战中温克斯的组织作用以及林加德本场比赛对于他的限制\r\n充满变化的42222阵型，如今已是热刺的主流，在这种情况下，温克斯的拖后组织十分关键，他是后续四人在高位“大圈传递”之后联系前场中路攻击手的第一人（上图左侧）。在这种情况下，曼联本场比赛对于他的限制还是十分到位的，上半场比赛温克斯只有3次向前传递。而且，迫使埃里克森与阿里不断回撤接应，穆萨-西索科也未能像此前比赛那样大胆前提去冲击对手。\r\n这时候，热刺的进攻开始更多地从边路进行构建，希望能在空位联系到埃里克森，利用他的直塞给前场攻击手制造冲击机会。\r\n图片\r\n图2：埃里克森接球之后直接送出直塞，热刺差点利用这次快速出击兑现进球\r\n【坚定的身后球冲击，曼联兑现进球】\r\n之所以说本场比赛是“非典型”的索尔斯克亚式比赛，核心在于曼联在进攻端的刻意提速太过明显，而且，对于身后球的速度冲击要求近乎严苛。\r\n防线上的扬、肖，中场的埃雷拉、马蒂奇、博格巴都开始不断送出高位的过顶传递，让拉什福德、林加德等攻击手利用自己的速度去冲击热刺的防线。毕竟，维尔通亨与阿尔德韦雷尔德或是因为年龄增加或是大伤之后，在应对这种速度冲击时，会出现问题。\r\n图片\r\n图3：坚定的身后球冲击，以及此后博格巴主导下的空间轮转\r\n从上图可以看到，曼联在完成断球之后，肖直接送出过顶传递找到了林加德，这时候，博格巴已经前提到前场高位接球。热刺的防线回收十分迅速，博格巴直接转移找右侧前提的埃雷拉，然后分身后找扬进行传中，曼联在禁区内形成多人包抄的情况下，后点的林加德获得了射门机会。\r\n曼联这种快速的身后冲击以及博格巴在高位的组织转移战术，进行的比较彻底。后续曼联能进球，也是来自于这种思路。\r\n图片\r\n图4：曼联中场断球之后，博格巴长传助攻拉什福德得分\r\n穆萨-西索科受伤下场之后，热刺在特里皮尔这一侧出现了一定的问题。没有发过中场的跑动策应，特里皮尔在状态不好下出现失误。博格巴直接长距离传递找前插的拉什福德，后者像索尔斯克亚目标培养的那样在禁区内冷静射门得分。\r\n【波切蒂诺连番调整有效，德赫亚神勇化解一切险情】\r\n上半场比赛，热刺在曼联的限制下打出了几次快速冲击，之后进攻就陷入了一个生涩阶段，并没有射正。在下半场比赛中，曼联适度的回收以及热刺进攻端的投入，让比赛的天平开始发生倾斜。\r\n这种倾斜来自曼联对于温克斯限制力度的降低（热刺下半场开局不断打身后冲击曼联防线目的就是在此），以及凯恩、埃里克森回撤串联的增加，热刺进攻开始变得更加立体。\r\n图片\r\n图5+6：温克斯被放空之后的串联，以及热刺清晰地主导下埃里克森-凯恩-攻击线的传递策略模式\r\n在不断制造机会，不断被德赫亚与曼联防线化解之后，波切蒂诺又开始了另外的一个变招：略伦特登场。这时候，热刺在进攻端有了一个很强的支点，曼联防线上的考验程度更高。\r\n图片\r\n图7：略伦特支点作用的展现，以及凯恩本场比赛第4次威胁射门被德赫亚扑出\r\n【反手？！曼联的欲望以及索肖调整的分析】\r\n极度被动的下半场，曼联开始更多地依靠德赫亚以及全体队员在防守端的努力。不过，从热刺下半场比赛展开快速冲击以及进攻压迫的同时，曼联并没有一味的回收，而是有反手挥舞。\r\n博格巴第56分钟的连续射门，基准思路来自于此前所展现出的阵地进攻的双十号位态势，而第62分钟马夏尔给博格巴送出的横做，则是这种态势下强势配合的直塞与传跑。\r\n图片\r\n图8：寻求反手对抗阶段，曼联下半场比赛制造的两次威胁进攻，都来自此前框架\r\n因此，这种局势下，索尔斯克亚的思路是寻求控制，不再更多地去冲击对手的防线身后，寻求更加精细的组织。可以说，曼联的进攻与控制欲望，与此前相比有了很大的提升。\r\n不过，索尔斯克亚此后的调整展现出了他自己的思路，就我看来，他的这种坚持以及变化是值得肯定的。一方面，他换上达洛特变阵5后卫，限制对手下底传中；另一方面，换上卢卡库，希望增加一个前场的支点，尤其是放弃身后球冲击战术后，一个支点中锋就更加关键。至于卢卡库本场比赛的状态，暂且不说。\r\n【结语】\r\n对阵热刺，是索尔斯克亚的期中考，而拿下3分，索尔斯克亚用6连胜给自己以及曼联加上了种种的一颗砝码。他在焦点战中转变进攻思路，足以说明他对于自己以及对手态势的精准把控。核心球员的不断提升，刻意说让曼联看起来更有未来了。\r\n', '1', '1');
INSERT INTO `posts` VALUES ('2', '2', '反驳厄齐尔人蜜的说法', '厄齐尔就不该离开皇马，和伊斯科竞争，不该和阿森纳续约，免签去豪门，这是厄蜜最近的言论，听着真是笑掉大牙了\r\n厄齐尔为啥离开皇马，老佛爷说过，他爹贪得无厌，根本不值得和厄齐尔续约，安切洛蒂说要竞争，说白了就是不会给机会，如果现在爱美丽要求他竞争，能给他机会和龚多奇一样多，不可能，这话就是告诉你赶紧走人，这没机会，赖着不走的下场，就是去看饮水机。如同皇马的J罗，他总不会不如阿森西奥吧，不照样坐板凳。\r\n老球迷都记得，安切洛蒂就不喜欢厄齐尔这种功能单一的球员，本来1999年都谈好了奥特加去尤文，但是里皮下课了，安切洛蒂说没位置给毛驴，就没签。毛驴的个人能力比厄齐尔高了起码一档，都不如安胖的法眼，厄齐尔赖着不走，准备去当陪练？\r\n更别说皇马刚买贝尔，买人是必须的。\r\n而且厄齐尔敢和皇马耗，马上世界杯，他本来就是德国各路名宿眼里，不配出现在首发里，当时德国人才有格策和罗伊斯，厄齐尔要是看上一年饮水机，世界杯踢不来岂不是亏死。\r\n至于续约，拉姆塞现在已经爆出了一大把的豪门，去年有一个有意厄齐尔的？不和阿森纳续约，谁给他高薪？\r\n发布雷加斯，论实力，高他3档不委屈吧，多两个欧洲杯，多两个英超，多一次欧冠决赛.年龄就大一岁5个月，现在法布只能去摩纳哥了，厄齐尔那来的自信有豪门能看上一个又水又软又高薪的球员？\r\n多说一句，法布雷加斯和厄齐尔是标准的性格决定命运，法布雷加斯做事感性想一出是一出，所以规划总是莫名其妙。而厄齐尔是标准的利己主义者，他去皇马是为了更大的利益，去阿森纳也是为了更大的利益，续约还是为了更大的利益，他选择德国队是为了更大的利益，强调自己土耳其后裔身份也是为了更大的利益\r\n而有几个人蜜知道，厄齐尔其实是库尔德人，是奥斯曼的二等公民，却从没听过他替库尔德人说过一句话，为啥利益！在利益面前，他宁可装扮成一个标准的土耳其后裔，这种人阿森纳想清理，难啊难啊！\r\n', '1', '2');
INSERT INTO `posts` VALUES ('3', null, '米尔纳发文感谢耐克订制球鞋', '图片\r\n虎扑1月11日讯 在上个月同伯恩茅斯的比赛中，米尔纳完成了英超联赛500次出场，为此，他的球鞋赞助商耐克公司为他设计了一款订制球鞋。\r\n绰号“约克郡菲戈”的球场万金油詹姆斯-米尔纳出道于利兹联，2002年，在同西汉姆联的比赛中，年仅16岁的米尔纳上演了英超首秀，从此开启了一段属于自己的传奇生涯。\r\n此后，米尔纳又曾转战于纽卡斯尔联、阿斯顿维拉以及曼城，2015年，米尔纳以自由转会的方式加盟利物浦，并被任命为了利物浦的副队长。\r\n获得订制球鞋后，米尔纳在个人的ins上写道，“非常感谢耐克公司的这款订制球鞋，很荣幸可以穿着耐克球鞋代表很多伟大的俱乐部完成英超500场里程碑，我的征程未完待续。\r\n\r\n', '1', null);
INSERT INTO `posts` VALUES ('4', null, '三名三狮国门放一个走人？', '图片\r\n虎扑1月11日讯 伯恩利现在拥有三名曾为英格兰国家队征战过的守门员，球队教练戴彻没有让其中一人离开的计划。在哈特连续表现不佳后，希顿被重新使用，而据报道普雷斯顿队有意租借哈特，同时波普也被同转会联系起来。\r\n对此戴彻表示，“如果他们来找过我，说‘教练，我有这样那样的原因’，我都会听他们的，我相信他们所有人。他们都已经足够成熟，足够聪明了。”\r\n“波普要年轻一点，但他已经是个成熟的小伙子了，希顿和哈特自然要年龄大一些，也更睿智一点。他们会知道什么时候是来找我谈的时候。”\r\n', '1', null);
INSERT INTO `posts` VALUES ('5', null, '德尚：外界觉得博格巴奇怪自大', '图片\r\n虎扑1月11日讯 法国队主帅德尚在接受法媒采访时表示，自己一直相信，博格巴首先考虑的是团队。\r\n“外界对于博格巴一直都有一个错误的印象。人们觉得他很奇怪，很自我，但我可以肯定的是，他一直优先考虑的是团队的利益。”\r\n“从世界杯集训的第一天起，他的想法就是成为世界杯冠军。除此之外，他还具有领袖能力。”\r\n \r\n', '1', null);
INSERT INTO `posts` VALUES ('6', null, '内德维德：希克本有机会成为伊布那样的世界级前锋', '图片\r\n虎扑1月8日讯 根据足球网站Goal的报道，近日，尤文图斯副主席，捷克传奇内德维德在接受采访时表示，罗马买入希克的这笔交易真的非常差劲。\r\n希克曾经被称作是“捷克的伊布拉希莫维奇”，他以创罗马历史转会费最高纪录的4200万欧元从桑普加盟，但表现却让人失望。\r\n这位“4200万欧元先生”被认为会是萨拉赫的接班人，但他始终没有展示出在桑普1501分钟就打进11球的高效。\r\n卡萨诺曾经认为希克是比迪巴拉更有天赋的前锋，他高大，但速度快，技术也好。但是现在，罗马却考虑将表现不佳的希克租借出去。\r\n内德维德谈到这位当年没能加盟尤文的同胞时也难掩失望之情：“他本来有一个美好的未来，现在虽然他不是很强壮，但是你想想之后两三年呢？伊布刚来尤文时也不太强壮，但他后来增强了体格，成为了世界级的前锋。”\r\n“希克也是这样类型的前锋，他高大，又有速度和技术，如果身体升级的话，他也能成为世界级的前锋。”\r\n希克原本有希望加盟内德维德供职的尤文，桑普和尤文一番讨价还价后，决定以3000万欧元将其出售，但是在体检中他发现了轻微的心肌炎迹象。\r\n这让桑普主席费雷罗非常愤怒：“希克不过是感冒了而已！这完全是一出闹剧，他是一个很健康的人，可是他们却发现他不健康！桑普绝不会做出让步，如果尤文不要他，有四家俱乐部抢着签下他！”\r\n虽然尤文想要安排另外一次体检，但希克方面坚决拒绝，之后他加盟了罗马，而之后的故事大家都知道了，他至今仍在挣扎之中。\r\n', '2', null);
INSERT INTO `posts` VALUES ('7', null, '博洛尼亚租借比利亚雷亚尔双星桑索内和索里亚诺', '图片\r\n 虎扑1月4日讯 博洛尼亚俱乐部在官网上证实，以租借的形式签下比利亚雷亚尔的两名意大利球员——索里亚诺和桑索内。\r\n为了在本赛季下半程顺利保级，大因扎吉的球队在冬季转会窗口已经开始行动。今天博洛尼亚在官网上正式宣布，以租借的形式引进了索里亚诺和桑索内。\r\n27岁的中场索里亚诺本赛季上半程租借在都灵效力，在意甲出场11次，奉献2次助攻。现在，他将会转投博洛尼亚，后者可以选择在本赛季结束后支付1300万欧元买断其所有权。\r\n2016年夏天，边锋桑索内以1300万欧元从萨索洛加盟黄色潜水艇。但本赛季他在西甲仅仅出场3次，各项赛场至今只上阵7次，贡献1球2助攻。现在，桑索内也以租借的形式回到意甲赛场，效力博洛尼亚直至本赛季结束，合同中同样包含有买断条款。\r\n', '2', null);
INSERT INTO `posts` VALUES ('8', null, '意媒：多特蒙德有意亚特兰大后卫戈森斯', '图片\r\n 虎扑1月11日讯 据意大利天空体育的消息，多特蒙德有意在今年夏天签下意甲亚特兰大的左后卫戈森斯。\r\n多特蒙德希望在左后卫的位置有所补强，看中了戈森斯。24岁的戈森斯是德国人，之前曾效力在德国低级别球队雷德，他还参加过多特蒙德的试训，但是没有被看中。随后他前往荷兰踢球。\r\n之前戈森斯曾表示能够在德甲踢球是自己的梦想。\r\n', '2', null);
INSERT INTO `posts` VALUES ('9', null, '恩波利主席：国米向我们询问18岁小将特拉奥雷', '图片\r\n虎扑1月11日讯 恩波利主席科尔西接受采访时表示国米最近询问了科特迪瓦18岁中场特拉奥雷（Hamed Traore），同时也表示21岁阿尔及利亚中场贝纳赛1月将会留队。\r\n“最近有3支球队向我们询问了特拉奥雷，其中一支是国米，那不勒斯和罗马还没有联系我们。另一支是法国球队，一支经常踢欧冠的球队。”科尔西对Radio Radio电台说。\r\n“我们最好等到6月再去谈论贝纳赛，因为他是一名认真且职业的小伙子，现在没在考虑转会，即使加入到罗马这样伟大的球队中。他现在的首发位置会帮助他有朝一日为大球队踢球，如果现在加盟，他只能踢替补。”\r\n', '2', null);
INSERT INTO `posts` VALUES ('10', null, '晚旗报：担心机会有限，巴雷拉不太想1月加盟切尔西', '图片\r\n虎扑1月10日讯 根据《伦敦晚旗报》的报道，切尔西的目标、卡利亚里中场巴雷拉不太愿意在1月加盟切尔西。据悉切尔西方面希望能签下一位中场，这样就能放法布雷加斯转会摩纳哥。\r\n《晚旗报》透露，切尔西助教佐拉和巴雷拉的关系非常好，但由于担心出场时间有限，巴雷拉不确定是否应该在1月转会切尔西。\r\n另据意甲转会专家佩杜拉报道，切尔西目前在加紧追逐帕雷德斯，而非巴雷拉。\r\n', '2', null);
INSERT INTO `posts` VALUES ('11', null, '特拉普等法兰克福球星与凯尔特人泰斯交换球衣', '图片\r\n虎扑1月14日讯 在美国冬歇备战德甲下半程的法兰克福日前造访了NBA赛场，以特拉普、科斯蒂奇、雷比奇和阿莱为代表的法兰克福球员与凯尔特人的德国内线泰斯碰面并交换了球衣\r\n图片\r\n法兰克福目前已经启程回德，球队主帅许特尔表示：“在美国的训练课很棒，训练条件很出色，球队进展也很好，我可以对这次冬训营给予一个非常积极的总结。”本周六法兰克福将在下半程揭幕战中迎战弗赖堡。', '3', null);
INSERT INTO `posts` VALUES ('12', null, '减肥有成效！主帅：克鲁泽的身体状况更好了', '图片\r\n虎扑1月14日讯 之前不莱梅队长克鲁泽的身体有些发福，不过经过冬歇期之后，克鲁泽的身体情况有了显著的提升。\r\n不莱梅主帅科菲尔特表示：“这并不是克鲁泽的最佳上半程。现在他回到了另外的身体状态下，因此他能够在比赛中拿出另外一个级别的表现，他队球门更加有威胁，更加深入对方禁区。”在南非冬训营时的友谊赛中，克鲁泽梅开二度。\r\n“比赛中他不仅帮助队友变得更好，他对球门的威胁也对我们非常有帮助。”', '3', null);
INSERT INTO `posts` VALUES ('13', null, '德尚：帕瓦尔去拜仁是好事，不过对他的要求也会更高', '图片\r\n虎扑1月13日讯 去年夏天，帕瓦尔在德尚领军的法国队中坐稳了首发右后卫的位置，并随队赢得了世界杯冠军。而德甲霸主拜仁慕尼黑也在近日官方宣布了帕瓦尔将在夏季加盟球队的消息。\r\n法国国家队主帅德尚在接受telefoot采访表示，这是一件好事。“拜仁慕尼黑是欧洲最顶级的俱乐部之一，这对于他的成长，以及他的整个职业生涯都是一件非常好的事情。不过在拜仁踢球，对帕瓦尔的要求也会比以前更高。”', '3', null);
INSERT INTO `posts` VALUES ('14', null, '现役德甲执教时间最长教练，弗赖堡愿和施特赖希续约', '图片\r\n虎扑1月13日讯 弗赖堡主帅施特赖希已经在球队执教超过7年，他也是目前德甲执教同一支球队时间最长的主教练。施特赖希与球队的合同将在赛季末到期，据德国媒体《图片报》的消息，弗赖堡愿意和施特赖希续约。\r\n报道称施特赖希已经接近与弗赖堡续约，目前仅剩一些细节需要澄清。不过之前施特赖希也曾表示，自己在做了24年教练之后，也想休息一下。', '3', null);
INSERT INTO `posts` VALUES ('15', null, '踢球者德国海外球员评级', '图片\r\n虎扑1月13日讯 《踢球者》杂志公布了18-19赛季上半程的德国海外球员评级，在这次评级中依然没有球员被评为世界级。特尔施特根和萨内位列洲际级。在整个18-19赛季上半程的评级中，德甲各个位置以及德国海外球员没有人被评为世界级。\r\n此次评级分为两个级别的联赛，包括顶级联赛（英超、西甲、意甲和法甲）以及中级别联赛（其他第一级联赛以及英冠、西乙、意乙、法乙）。\r\n《踢球者》18-19赛季上半程海外球员评级：\r\n世界级：\r\n空缺\r\n洲际级：\r\n特尔施特根（巴塞罗那），萨内（曼城）\r\n国脚级：\r\n莱诺（阿森纳），吕迪格（切尔西），科雷尔（巴黎），穆斯塔菲（阿森纳），克罗斯（皇家马德里），京多安（曼城），许尔勒（富勒姆）\r\n值得关注级：\r\n戈森斯（亚特兰大），德拉克斯勒（巴黎），格罗斯（布莱顿），厄齐尔（阿森纳）\r\n另外在中级别联赛中卡里乌斯（贝西克塔斯）、赫韦德斯（莫斯科火车头）、施魏因斯泰格（芝加哥火焰）、马林（贝尔格莱德红星）、齐默曼（诺维奇）以及波多尔斯基（神户胜利船）等球员都被评为值得关注级。', '3', null);
INSERT INTO `posts` VALUES ('16', null, '巴尔特拉：我让维尼修斯站起来，他就问候我的母亲', '图片\r\n虎扑1月14日讯 在赛后接受采访时，贝蒂斯后卫巴尔特拉透露称，维尼修斯屡屡用西班牙国骂招呼他。\r\n“比起两只脚站着，我感觉维尼修斯更多时候是在地上躺着，我让他站起来，他就朝我喊XXX养的，怎么说呢，意思就是他问候了我的母亲三次。我觉得维尼修斯还有很多需要学习的，我不认为这是作为皇马球员的正确方式。“\r\n值得一题的是，加盟皇马半年多以来，维尼修斯在接受采访时还一直是使用的葡萄牙语。', '4', null);
INSERT INTO `posts` VALUES ('17', null, '库库雷亚：巴萨的青训球员天赋很高', '图片\r\n虎扑1月14日讯 埃瓦尔后卫库库雷亚在与巴萨赛后接受了TV3的采访，对于能够回到诺坎普库库雷亚也很开心。\r\n“能够回家很开心，我的家人也来到了诺坎普，我尽可能让每一个我身边的人都来看球。这场比赛我永远不会忘记，今天我们很享受，也很努力给巴萨制造麻烦，但是运气不是很好。”\r\n而对于自己在巴萨梯队的队友，最近由于在莱万特的比赛中被批评的米兰达和楚米，库库雷亚表示：\r\n“当你踢得不好，别人就会批评你，而当你踢得好，别人又会来赞扬你。但是在巴萨的青训之中的天赋我觉得这一点不用质疑，因此我们需要相信这些年轻人。”', '4', null);
INSERT INTO `posts` VALUES ('18', null, '索拉里：马塞洛和伊斯科替补没有个人恩怨的因素', '图片\r\n虎扑1月14日讯 皇马主帅索拉里出席了与贝蒂斯的赛后新闻发布会，对于伊斯科和马塞洛两人全场比赛都没有出场的问题，索拉里表示这里面都是战术安排，没有私人恩怨，同时提醒大家，重视完成这场胜利的年轻人们。\r\n关于三后卫：\r\n三后卫是必要之下的无奈之举尤其是我们的进攻端，伤员太多了，现在本泽马也伤了。\r\n两个半场的表现：\r\n我们在进攻端缺乏纵深，上半场本泽马在的时候我们本来可以利用他的支点作用在前场立足，上半场我们本来也有机会进球，但是下半场我们遇到了本泽马的伤病，不过还是遏制住了对手的进攻，并且最终拿下了胜利。\r\n马塞洛替补，雷吉隆首发：\r\n这些都是在特点时间的特定决定。\r\n伊斯科没有机会出场，你们两个人之间没有沟通？\r\n皇马队内有很多的来自卡斯蒂亚的球员，这些球员能够扮演很重要的角色，尤其是在目前这样的局势下，我觉得这个问题不能问我。\r\n关于维尼修斯的进步成长：\r\n我觉得这个问题不只是关于维尼修斯，还有每一个年轻人。\r\n关于胜利：\r\n我们拿下了3分，继续缩小和前面的球队的差距，并且回到欧冠区，布拉欣，巴尔韦德，克里希托还有巴尔韦德，以及不断进步的维尼修斯，这些球员在球队的关键和危难时刻展现出来的价值是值得我们重视的，这样的消息对于皇马来说很重要，而三后卫则是特殊时刻的应变策略。\r\n关于本泽马的伤病：\r\n是小拇指的骨折吧，很幸运的是，只是一只手的问题，因此我相信很快他就能够回归比赛和训练，而且我相信本泽马的脚也能够很灵活的(笑)。\r\n为什么马塞洛和伊斯科没有出场？\r\n皇马就是皇马，今天的比赛我们以非常严肃的态度，并且拿下了今天的胜利，这是我们所有人，无论是出场还是没有出场的球员做到的。这里面没有任何的私人的因素在里面，我希望大家能够重视这一点。\r\n我很遗憾，但是我还是要重复一遍：皇马就是皇马，这支球队存在有它的意义，是每一个的努力让一切变成可能，我们有三项赛事，任何的球员都可能出场。因为每一个球员都是球队的一分子。\r\n关于塞瓦略斯面对旧主打进绝杀：\r\n塞瓦略斯的心中贝蒂斯永远是他的一部分，回到自己的家乡总是百感交集，我也曾经有过这种经历，但是有的时候，足球就是这样的神奇，因为上帝会安排你来给你的旧主送上致命一击，幸好，这一次轮到我们来完成最后一击。', '4', null);
INSERT INTO `posts` VALUES ('19', null, '降级警告！比利亚雷亚尔西甲半程17分创队史最差纪录', '图片\r\n虎扑1月13日讯 在今天凌晨的一场西甲联赛中，比利亚雷亚尔队最后时刻罚失点球，主场1-2负于赫塔菲，半程过后仅积17分，位列西甲倒数第二。自西甲第13轮击败贝蒂斯之后，黄潜在近6轮联赛中仅仅录得3平3负，一胜难求。由于战绩糟糕，球队解雇了前任主帅卡雷哈，不过在前人和主帅路易斯接手球队之后，他也仅仅带队在4轮西甲联赛中取得3平1负。\r\n值得一提的是，半程17分创造了比利亚雷亚尔队史的半程最低积分纪录。在11/12赛季球队上一次降级时，他们的半程积分也达到了19分。自球队回到西甲之后，他们前5个赛季拿到1次第4、两次第5和两次第6，每次都能拿到欧战资格。', '4', null);
INSERT INTO `posts` VALUES ('20', null, '皇马外租门将卢宁机会寥寥，西甲副班长有意接盘', '图片\r\n虎扑1月12日讯 根据《马卡报》消息，西甲副班长韦斯卡提出租借皇马门将卢宁。\r\n本赛季租借在莱加内斯德乌克兰门将卢宁境遇不佳，联赛出场2次，1次首发，国王杯出场2次都是首发， 并且帮助球队淘汰了巴列卡诺。\r\n《马卡报》表示，韦斯卡愿意租借卢宁，目前韦斯卡的三位门将分享了出场时间，其中三人表现都不够有说服力，其中租借自马竞的维尔纳尔可能会在冬季离开，这样也就创造了卢宁租借的可能性。\r\n而皇马方面，目前他们希望下个赛季卢宁能够回归担任球队的第二门将(如果纳瓦斯离开)，但是目前卢宁的状态实在无法令人放心。换一个地方消息，对于卢宁来说看起来非常必要。', '4', null);
INSERT INTO `posts` VALUES ('21', null, '帕耶特谈离队传闻：那些都是噪音', '图片\r\n虎扑1月14日讯 马赛队长帕耶特近日表示，关于自己离队的传闻都是噪音。\r\n今年31岁的帕耶特此前被多家法媒曝出将在冬窗离队，而他的下家很可能是中超某家俱乐部，转会费在3000万欧左右。帕耶特近日在谈及这些传闻时表示，自己不会对这些理会这些噪音。\r\n“关于我会离队的传闻都是些噪音，我没时间去理睬这些蠢事。“', '5', null);
INSERT INTO `posts` VALUES ('22', null, '洛里：曼联之前经历过低谷', '图片\r\n虎扑1月14日讯 热刺门将洛里在接受RMC采访时表示，\r\n“曼联依然是很强的球队，他们是世界上最大的俱乐部之一。在强强对话中，他们总是有上佳表现。在一个赛季里，一支球队总会有高峰和低潮，他们之前经历过低谷，但他们现在回来了，甚至比以前更强。”\r\n“曼联在最近几场比赛里发挥得很棒，但巴黎也是一支非常、非常强的球队，他们有很多优秀的球员。曼联和巴黎的欧冠淘汰赛将是一场开放的比赛。”', '5', null);
INSERT INTO `posts` VALUES ('23', null, '吉鲁：法布雷加斯是我合作过的最好的球员之一', '图片\r\n虎扑1月13日讯 切尔西球星吉鲁近日表示，刚刚离队转会摩纳哥的法布雷加斯是自己合作过的最好的球员之一。\r\n“塞斯克是一名伟大的球员，他实力非常强，视野出众，他是我合作过的最好的球员之一。他能去摩纳哥，对摩纳哥来说是一个很好的机会。”\r\n法布雷加斯在近日也提到了目前的这支摩纳哥，他说：“这支球队有很多有潜力的球员，我希望帮助他们继续成长。如果能和他们一起获得一些荣誉，那就再好不过了。”', '5', null);
INSERT INTO `posts` VALUES ('24', null, '法媒：雅尔迪姆将执教大连一方', '图片\r\n虎扑1月13日讯 据法媒Téléfoot的消息，前摩纳哥主帅雅尔迪姆接近执教大连一方，他希望摩纳哥前锋法尔考也和他一起前往中超发展。\r\n据悉，雅尔迪姆很有可能即将成为大连一方的主教练，而他也希望能带前部下法尔考一起前往中国。法尔考此前并不排斥去中国踢球，但他的父亲在年初去世，目前他并没有决定自己的未来。', '5', null);
INSERT INTO `posts` VALUES ('25', null, '古尔库夫：一个真正的十号', '1986年，克里斯蒂安迎来他另一个儿子——古尔库夫。老古尔库夫原本就计划着自己的孩子们子承父业，在足球的天地里大干一番，可惜哥哥埃尔文从来没有对这个圆滚滚的东西感冒过，所以，古尔库夫就承载了父亲的全部希望。\r\n父亲在足球场视野开阔，脚法细腻，母亲玛丽娜则在篮球场合田径场都有所斩获，身体协调性一流，对于集合了各项体育细胞混血为一身的古尔库夫来说，与生俱来的运动天赋是无与伦比的，骨子里那种不安分的活跃因子总不断挑逗着他去追逐那奔跑的皮球。克里斯蒂安一看有戏，跟老友记般拉着小古尔库夫守在电视机旁看球，边看边说，把自己追求的艺术足球的理念复制，然后再在儿子的脑袋去黏贴，小时候的烙印使得古尔库夫踢得足球呈现一出一股优雅之美。\r\n那时候是AC米兰荷兰三剑客的时代，那种大开大合，气贯长虹的踢法瞬间抓住了古尔库夫的心，就像玩具对孩子来说总存在无穷的魅力一样，对于一心追求艺术足球的库尔库夫来说，红黑军团同样是无法抗拒的。那几乎是孩提时代古尔库夫所有的梦想，所以当他年少成名后，AC米兰抛来个橄榄枝，梦想与现实终于融为一体的时候，他毫不犹豫地点头了，就连他冷静的老爸连眼睛都没眨下就同意了。\r\n那个在父亲训练完后胆怯地踏上绿茵场去试着踢几次点球的孩子，如今有了累伟岸的身材和比之当年父亲更胜一筹的脚法和视野时，他成为了雷恩队的核心，他在雷恩青训营所向披靡，在法甲已经摸爬滚打了2年，这时候，他还只有19岁，包括阿森纳，AC米兰等一干豪门的邀请函纷雪踏来，雷恩实在无法阻止古尔库夫的光芒，被迫放人。随后，就是古尔库夫与AC米兰上对花轿嫁错郎的故事了。\r\n并不是所有的女孩都会遇到自己的白马王子，哪怕古尔库夫和红黑军团这般的情投意合，爱意浓浓也挡不住豪门的生活的水生火热。豪门深似海。多少英雄豪杰去了豪门后成为了路人甲乙丙丁，很不幸，古尔库夫无法幸免。\r\nAC米兰在当时已经出现了老迈的痕迹，进攻和防守端的节奏比起那支欧冠冠军来说已经慢了不是一点，就像一辆轻踩刹车的车子，随时可能就在路边停下了。安切洛蒂的用人也越发谨慎，粮食不多只能紧巴着过，安胖使惯了旧臣老子，无心改变，自然对新贵们置之不理，即使米兰处子战即进球，古尔库夫也无法打动安切洛蒂的心。法国人在安切洛蒂的眼里俨然是一瓶万精油，最好能拿来随时使唤，他上场往往替下的不是对位的卡卡，而是作为缺漏补缺之用。古尔库夫想要挥斥方遒，拿着宝剑指点江山，而安胖想要的，只是他能在后方打杂，把后勤安顿好就可，一个拿着勺子的伙夫而已，蛟龙困微湖，古尔库夫自然别扭的很。\r\n从出道开始，古尔库夫在球场上就是春风得意的代名词，每到一处总被捧为核心，他可以任意挥洒他的想象力，有绝对的话语权。而在这里，他的的每次出球都得看老大哥们的眼色，做着为西多夫，皮尔洛们保驾护航的工作，AC米兰稳定而严谨着，既然已经有卡卡的妙笔生花，那么古尔库夫的穿花绕蝶就显得多余，他们更喜欢勤勤恳恳的清道夫。虽然08年被米兰官网宣布“我们会更加信任古尔库夫的”，但埃莫森的到来，和安切洛蒂的类似最后通牒的话语“古尔库夫开了个好头，但我们更需要他的发挥更加稳定”，其实已经为其新赛季定了位，保持效率，摒弃艺术，否则法国人的出场时间会更加少，古尔库夫仍旧挥洒青春，只不过那个赛季，他只出场了20场比赛。\r\n07-08赛季后，古尔库夫的这段初恋嘎然而止，原本的甜蜜已经荡然无存，透着的只有丝丝苦涩。当然，年轻的法国人并不是没有收获，在皮尔洛，卡卡身旁偷师学艺，使他的视野，远射，传球更近一步，可以说虽然他上场不多，但在技术上却不退反进，而在米兰实验室里，古尔库夫往施瓦辛格的方向在锻炼着自己的身体，冬练三尺，夏练三伏。可以说，08年去波尔多的古尔库夫其实是一只储满TNT的炸药桶，只要有引线其威力能吓坏整个欧洲。\r\n而这根引线无疑是布兰科了。这个被弗格森认为“他的足球思维永远快别人一拍”的法国教练，一眼便相中了自己的同胞。退去了天才少年光芒的古尔库夫和白手起家的布兰科果然绝代双骄，被里昂压着喘不过气的波尔图本输无可输，但却赢得了所有。\r\n布兰科认定古尔库夫为中场核心，熟悉的感觉让法国人渐渐找回自己，上一次有过这样的温暖还是他19岁的时候。布兰科还为他寻找了一干得力的帮手，虽然都不是大牌，但却是最适合小古的。查马克能够很好地消化古尔库夫那醇厚留香的传球，而费尔南多和迪亚拉则是波尔多8号的左右护法，让其能更好发挥，左右逢源。在这样的阵容中，古尔库夫这条蛟龙终于冲天，没了枷锁的束缚，这里任由古尔库夫去驰骋，单赛季就交出了15进球12助攻的成绩单，而后来的里昂王朝的轰然倒塌和波尔多三冠王则是水到渠成的事了。\r\n如果他还在留在雷恩，那么他可以继续享受一览众山小的快感，在小俱乐部过着养尊处优的少爷生活，不用在以后的2年中摸爬滚打讨生计了，更可能，古尔库夫早就穿上了国家队服了。但就像小时候那些活跃因子一样，骨子里不服输的性格和追求艺术足球的理念让其饱经风霜，却得到了更加完整的性格，没有因为挫折而倒下的人，往往会有个更进一步的未来，古尔库夫算是一个。\r\n但法甲太小，在五大联赛中排行老幺，即使是“法甲之王”的名号，也不可能比肩梅西，C罗这样在西甲和英超的打得风生水起的奇葩，在能力方面，或许古尔库夫已经被雕琢得完美无瑕，但终究无法吸引更多人的眼球。法国人无所谓，因为能踢上自己想要的足球比什么都强，就像他拒绝了AC米兰的回头草一样，或许他回去的话能够名利双收，但那里没有他想的足球，波尔多庙小，可香火对胃口，就是这样。\r\n法国足球在齐达内后始终在寻寻觅觅一个真正的十号，一个能肩负起法国足球的希望的接班人，在海选过后，24岁的古尔库夫无论是评委还是短信人气，让对手望尘莫及，普拉蒂尼，齐达内等的赞口不绝，无不宣布着法国未来的十年是他的。他的组织让原本沉闷的中前场焕发青春，他的远射让法国的进攻多种多样，总之古尔库夫的出现让2006年被齐祖顶飞的大力神杯又有夺回来的希望了。在这里，查马克能做的，亨利能做得更好，还有里贝里和他一山容二虎的局面使得他们一高一矮，一壮一快，相得益彰，二龙戏珠般操纵者法国中场线，2010年的世界杯将是双核展示自己的绝佳舞台。\r\n回想当初的天才，到现在才有了属于自己施展的世界级平台，甚为可惜，还好，他才24岁而已，不算晚。\r\n齐达内：“他是一个真正的十号！”。虽然穿着8号，但他却做着10号的活，而且古尔库夫现在正向一个伟大的十号在狂奔着。\r\n一个画外音：\r\n古尔库夫与名模玛丽-德-维尔潘相恋了（当然，她的父亲多梅内克出名的多），不知道是不是上帝的安排，让他有了插足娱乐圈的机会，就相貌和球技上来说，他确实具备了一切取代贝克汉姆成为下一个全民偶像的条件。\r\n图片', '5', null);
INSERT INTO `posts` VALUES ('26', null, '他15岁就进甲级联赛，和梅西并称阿根廷双子星的男人怎么会差？', '今天我们说的这个人可不简单，他曾年少出名，被寄予厚望，又在巅峰期步入低谷，甚至被国家队弃用。如今提起现在的阿根廷国家队，人们除了梅西就会想到阿圭罗，要知道，两人在年少时曾被誉为“阿根廷双子星”。\r\n图片\r\n在2006年5月，西甲强队马德里竞技宣布以创队内记录的2170万欧元将纳入门下。自此他开启了一段在西甲舞台上的精彩表演。\r\n在马竞时期，阿圭罗表现的极其稳定，他与乌拉圭前锋迭戈·弗兰的组合更是马竞最锋利的利刃。马竞也自此有一支强队变成了不可争议的西甲巨头，09-10赛季拿下了欧联杯。在马竞效力期间，阿圭罗拿出了234场102球37助攻的数据。\r\n得益于西甲战场和欧战中的精彩表现，阿奎罗被曼城队看上，并以4500万欧元队内标王的身价转会曼城，在曼城的首秀，阿奎罗就梅开二度帮助球队取得大胜，多年来阿根廷人的稳定输出帮助球队取得多个冠军，成为了曼城历史射手王。在鲁尼离开埃弗顿后，阿圭罗成为了英超现役射手王，如今更是里程碑式的解锁了英超联赛第150球。\r\n图片\r\n英超历史射手第一阿兰·希勒在英国顶级联赛进球数不过260球，如果阿圭罗每个赛季稳定输出20+进球，在35岁打破记录加冕历史射手王的地位，虽然十分苦难，但也不是不可能。\r\n14年世界杯状态不佳，16年车祸骨折，什么也挡不住他的腾飞。曼城传奇，蓝白的骄傲，因为你爱上了英超。\r\n', '6', null);
INSERT INTO `posts` VALUES ('27', null, '惊艳！阿根廷劲旅推出限量版球衣：乌鸦毛皮', '北京时间 12 月 18 日，耐克发售阿根廷圣洛伦索俱乐部的第三客场限量球衣，名称为 Piel de Cuervo（乌鸦皮），\" 乌鸦 \" 是这家俱乐部的昵称之一。\r\n球衣最大的特点是在黑色的底料上印制有黑灰色羽翅纹路，像极了乌鸦。球队队徽和赞助商标志为白色。目前，球衣已经开始在俱乐部官方渠道中销售。\r\n图片\r\n圣洛伦索将身穿这款新球衣在明天对阵普拉塔大学生队中亮相。为了推出这件新球衣，俱乐部邀请了模特兼歌手的蒂内莉担任球衣模特，她恰好是俱乐部副总裁马塞洛 - 蒂内莉的女儿。 \r\n圣洛伦索竞技足球俱乐部是一家位于阿根廷首都布宜诺斯艾利斯的足球队，现正参加阿根廷足球甲级联赛，它和博卡青年、河床、独立竞技俱乐部、阿根廷竞技四支球队，一起被列入了阿根廷足球联赛的传统五强。\r\n', '6', null);
INSERT INTO `posts` VALUES ('28', null, '特维斯回阿根廷后陷入低谷！4轮不进球队内评分倒数', '随着欧美大陆联赛拉开帷幕，不少老球员也开启了他们新的征程，比如说曾抛弃中超与申花的特维斯，这位中国球迷都比较讨厌的阿根廷球星，看上去回到阿根廷也没有真正找到最后的自己。\r\n图片x3\r\n特维斯在中超的表现已经不能用糟糕来形容了，简直就是刷新了球迷的三观。这样不职业的巨星，很多球迷还是头一次看到。为了能够回到博卡青年，特维斯做足了功夫，而博卡也是非常欢迎他们的头号大牌球星。不过欢迎归欢迎，特维斯如今还能否玩转阿根廷甲级联赛，需要打上一个问号。\r\n博卡青年目前在4轮比赛后，拿到了2胜1平1负的成绩，起步还算平稳。不过特维斯的表现不尽如人意。在4轮比赛中，特维斯只出场2次，贡献有限。虽然在上轮3-0击败萨斯菲尔德，特维斯重归首发阵容并担任场上队长，而且这场比赛做足了功夫，谢洛托拿到纪念执教100场的博卡球衣，特维斯与对方主帅也是阿根廷传奇球星海因策长长拥抱，但是34岁的特维斯很难HOLD全场了，比赛中他创造了一粒点球，此外并未其他表现。\r\n目前根据whoscored的评分来看，特维斯在博卡青年的位置比较尴尬，他在前四轮的平均得分是6.55分，位列队内倒数第三。可以看到，特维斯并未在离开中超后就找到最好的自己，本赛季的起步比较糟糕。\r\n当然，目前特维斯已经不再是足坛第一年薪的先生了，博卡青年拥有众多的青年才俊，也不需要依靠特维斯。如今特维斯可以在家乡好好享受自己的足球赛季了。\r\n', '6', null);
INSERT INTO `posts` VALUES ('29', null, '阿根廷两大绯闻新帅曝光 球迷最爱的西蒙尼没戏', '桑保利很有可能被解雇，阿根廷足协已经开始为他寻找备胎了。据《阿斯报》报道称，河床主帅加拉多和秘鲁主帅加雷卡，是阿根廷帅位的两大热门候选。阿根廷球迷热切期盼的救世主西蒙尼，并不在考虑范围之内。\r\n图片\r\n44岁的加拉多，曾经为阿根廷队效力过9年，他在44场比赛中打进13球，他的绰号是洋娃娃。11/12赛季中，加拉多在处子赛季里率领乌拉圭国民队赢得了联赛冠军。在2014年，加拉多成为河床主帅，并率队赢得了南美俱乐部杯。在2015年，河床赢得了解放者杯和南美优胜者杯。2016年，河床赢得了南美优胜者杯和阿根廷杯。2017年，河床卫冕了阿根廷杯。在阿根廷国内，加拉多是最被看好的少帅。\r\n60岁的加雷卡，目前是秘鲁队主帅，他率队在32年后重返世界杯舞台。加雷卡在南美有着非常丰富的执教经验，他曾在2009-2013年执教萨斯菲尔德，并率队在2009年、2011年和2012年三夺阿根廷甲级联赛冠军。\r\n无论最终谁成为阿根廷新帅，他都将成为阿根廷14年来第9位主教练。上一位在阿根廷长期执教的主帅是贝尔萨，他在1998-2004年间执教了6年。在贝尔萨离开之后，佩克尔曼、巴西莱、马拉多纳、巴蒂斯塔、萨维利亚、马尔蒂诺、巴乌萨和桑保利等8名主帅都执教过阿根廷队。萨维利亚执教3年时其中最久的，巴蒂斯塔、巴乌萨甚至都只执教了一年。\r\n', '6', null);
INSERT INTO `posts` VALUES ('30', null, '阿根廷独立竞技足球俱乐部组建电竞战队，将参加英雄联盟世界赛', '阿根廷足球甲级联赛俱乐部独立竞技（Atl é tico Independiente）日前组建了一支官方电竞战队。该战队将参加电竞项目 FIFA 和 e-Superliga Argentina。\r\n如果一切顺利，该俱乐部未来还将参加《英雄联盟》世界赛以及《堡垒之夜》竞标赛等多项世界范围内的知名电竞联赛。\r\n独立竞技的球队装备赞助商彪马也将成为该电竞战队的赞助商，彪马的 logo 将出现在电竞战队队服胸前。目前，该战队已经招募了阿根廷最好的两位电竞选手 Diego Gonz á lez 和 Yago Fawaz。\r\n独立竞技是最近一支投资电竞的传统体育俱乐部。目前，英超联赛中的所有球队正在四处招募电竞选手，以组建战队参加于 2019 年 1 月开赛的英超电竞锦标赛（ePremier League）。\r\n根据咨询公司 Newzoo 的数据，目前，全球约有 1300 万职业电竞玩家，整个电竞行业的年营收达到 6.65 亿美元，这一数字将在 2022 年增长至 30 亿美元左右。', '6', null);
INSERT INTO `posts` VALUES ('31', null, '巴西足球豪门火灾致10人死亡，足球热土上青年球员生存环境恶劣', '当地时间2月8日早晨，位于巴西里约热内卢市的弗拉门戈足球俱乐部训练中心的球员宿舍中发生一起火灾，造成至少10人死亡、3人受伤。俱乐部主席称此事件是俱乐部123年历史上最大的悲剧。\r\n当地消防员称在早晨5：17接到火警通知。据当地媒体报道，共有26名青年球员住在宿舍中。火灾发生时大多数人仍在睡觉。除了已经确认的遇难者外，还有三名球员受伤，其中一人伤势严重被送到医院救治。另外13人得以及时逃出火场，并未受伤。\r\n隶属巴西足球甲级联赛的弗拉门戈俱乐部是巴西当地最知名的足球俱乐部之一，也因为持续向全世界输送优质青年球员而驰名。罗马里奥、罗纳尔迪尼奥和济科都曾经在为弗拉门戈效力。\r\n位于里约热内卢的西部俱乐部的训练中心“秃鹫巢（Ninho do Urubu）”最近刚被翻修过。里约官方人员向《纽约时报》证实，火灾发生的宿舍楼所在地本原本是停车场用地，不具备修盖建筑的资格。俱乐部原计划在下个月球员搬到新宿舍之后就拆除发生火灾的宿舍。\r\n目前，里约当地检察机构已经组织了专项人员调查火灾发生原因。\r\n图片\r\n此前两周，巴西遭遇了一系列天灾人祸。1月25日，巴西发生了史上最严重的溃坝事故，造成50人死亡，200-300人失踪；火灾发生两天前，里约遭遇了一场大暴雨引发的洪水和泥石流，6人丧失。\r\n一连串的灾难让公众开始担忧国家脆弱的基础设施和不成熟的应急反应。\r\n巴西的总检察官Raquel Dodge在火灾发生后表示：“我们一再经历可避免、可组织的灾难，现在必须重视这些问题了，负责控制、实施和惩罚的部门都要真正运行起来。”\r\n此次惨剧还让外界注意到了巴西青年球员艰苦的生活环境。\r\n据当地体育专栏作家Juca Kfouri向《纽约时报》表示，许多巴西贫困地区的年轻人改变命运的方式只有两种——进入娱乐行业或者踢足球，不然他们将一生与犯罪相伴。\r\n大多数青年球员从经济不发达地区的家乡来到大城市加盟足球俱乐部，之后都居住在俱乐部提供的集体宿舍中。\r\nKfouri表示足球俱乐部的宿舍普遍很简陋，采光、卫生、基础设施都不够到位。\r\n作为巴西足球豪门，弗拉门戈的经济实力高出其他俱乐部一等。2018年，弗拉门戈的青训中心翻新完成，共花费600万美元。新场地内包括5个训练场、1个游泳池、健身房、36个单人间和6个双人间，能容纳48名球员住宿。弗拉门戈还聘请了比利时咨询公司Double Pass来进行青训体系优化。俱乐部的一位副总裁Alexandre Wrobel曾向巴西媒体表示过新落成的青训中心是世界前五的水平。\r\n巴西的足球不仅是国家的一张名片，也是重要的经济产业。这个南美足球强国每年以别国难以企及速度培训和对外输出青年球员。2018年，据FIFA官方数据，就有832名巴西球员流向世界各地的绿茵场。\r\n但是，不知此次火灾会不会让一些想要通过足球改变命运的年轻人犹豫。\r\n', '7', null);
INSERT INTO `posts` VALUES ('32', null, '盘点巴西身价最高的十位球员：英超多达四人，前两位身价均过亿！', '毫无疑问，巴西在世界足坛上占有极其重要的作用，尽管如今他们的战绩并不如巅峰时期那么的辉煌，但如今的桑巴军团依旧是世界足坛最受关注的国家队之一。现在小编就来带大家盘点一下当今巴西国家队的身价排行TOP10（以下数据均取自权威网站德国转会市场）。\r\n图片\r\n第十名:阿兰（那不勒斯）\r\n阿兰出生于1991年1月8日，他来自于巴西，拥有巴西以及葡萄牙的双重国籍，目前效力于意甲联赛的那不勒斯足球俱乐部，在场上司职中场，目前他在德国转会市场上的身价为5000万欧元，在巴西国家队阵中排名第十位。\r\n第九名:桑德罗（尤文图斯）\r\n桑德罗出生于1991年1月26日，他目前效力于意大利足球甲级联赛的尤文图斯足球俱乐部，在场上司职左边后卫，目前他在德国转会市场上的身价为5000万欧元。\r\n图片x2\r\n在尤文图斯的左边进攻中，桑德罗已经逐渐成为了十分重要的一位关键人物，在克里斯蒂亚诺罗纳尔多来到球队之后这位巴西国脚也要更加多的和这位足坛超级巨星打成一片，这也对于他的能力提升有了极大的帮助。\r\n第八名:马尔基尼奥斯（巴黎圣日耳曼）\r\n马尔基尼奥斯出生于1994年5月14日，目前他效力于法甲霸主巴黎圣日耳曼足球俱乐部，在场上司职中后卫，同时也可以胜任中场。马基尼奥斯在场上能够司职后防线上的多个位置，他的体力十分的充沛，无论是在比赛的第一分钟，还是最后一分钟他都可以不知疲倦疯狂奔跑。\r\n图片x2\r\n目前在德国转会市场上，这位巴西国脚的身价已经达到了6000万欧元，他也是当今巴西足坛身价排名第八位的球员。在刚刚结束的欧冠1/8决赛首回合中，大巴黎来到了客场挑战红魔曼联，在内马尔以及卡瓦尼这两大球队进攻核心均因伤缺阵的情况下大巴黎最终依旧艰难的取得了胜利，这其中和马尔基尼奥斯在场上优秀的表现有很大的关系。\r\n第七名:埃德森（曼城）\r\n埃德森出生于1993年8月17日，目前他效力于英超联赛的曼城足球俱乐部，在场上司职门将，他也是巴西国家队的二号门将。当初曼城花了大价钱从巴塞罗那引进了智利国门布拉沃，不过布拉沃在曼城的表现并不是非常的优秀，他也被冠以摄政王的尴尬名号，最终瓜迪奥拉决定弃用这位智利国门，随后他们便引入了巴西门将埃德森。\r\n图片x2\r\n埃德森直到现在依旧是曼联的铁打主力，他的门线技术及其优秀，并且还有不错的出击意识。同时作为一名巴西球员，他自然不会忘记南美足球那脚下细腻的战术风格，有的时候他在场上也会积极的前插帮助球队进行倒脚。这位门将在上个赛季作为曼城的主力门将，帮助曼城最后拿到联赛冠军。目前他在德国转会市场上的身价也高达6000万欧元。\r\n第六名:阿利森（利物浦）\r\n阿利森来自于巴西，目前他效力于英超的利物浦足球俱乐部，这位球员在场上司职门将，他也是巴西国家队的一号门将，目前阿利森在德国转会市场上的身价为6500万欧元，他也是这份榜单中排名第六位的球员。\r\n图片x2\r\n阿利森在来到利物浦之前一直效力于意甲的罗马足球俱乐部，在罗马的最后一个赛季他成功拿到了意甲联赛的最佳门将奖项，随后在欧冠决赛中因为门将的失利而遭到毁灭性打击的利物浦也花了大价钱引入了这位罗马门将。阿利森的到来让利物浦后防线最后一块拼图彻底完成，他也在接下来的赛季用自己出色的表现帮助利物浦在联赛中获得了巨大的成功，截至到目前，利物浦依旧位列当今英超联赛的第一位，如果他们能够保证目前的积分形势，他们也将获得自己俱乐部历史上的首个英超冠军。\r\n第五名:马塞洛（皇家马德里）\r\n马塞洛来自于巴西，他出生于1988年5月12日，在场上司职左边后卫，目前效力于西甲的银河巨舰皇家马德里足球俱乐部。马塞洛早在17岁的时候便在巴西足球甲级联赛成功亮相，那时候的他便成为了巴甲联赛历史上亮相最年轻的球员之一，不久后他便加入了皇家马德里足球俱乐部，她也成功凭借着自己优秀的表现慢慢坐稳了皇马的主力左边后卫位置。\r\n图片x2\r\n在很长的一段时间中，马塞洛都被公认为当今世界足坛的第一左边后卫，作为一名左边后卫球员，他在进攻上面的能力甚至超过了许许多多的边锋球员，不过马赛洛也经常被诟病攻过于强而守过于弱，因为他在比赛中经常会因为参与进攻过于靠前而导致自己的位置完全落空。不过随着年龄的增长，他已经慢慢的将自己的这种缺点完全克服，如今的他正成为世界足坛左边后卫的完美代表，目前他在德国转会市场上的身价为7000万欧元，排名这份榜单的第五位。\r\n第四名:热苏斯（曼城）\r\n热苏斯来自于巴西，他出生于1997年4月3日，在场上司职中锋，目前效力于英超的曼城足球俱乐部。作为巴西国家队参加2018年俄罗斯世界杯的主力中锋球员，热苏斯的能力想必已经不需要我们过多的去介绍了，尽管在俄罗斯世界杯他的表现并不能让球迷们满意，但在曼城俱乐部他还是进攻线上值得依赖的一名重要球员。\r\n图片x2\r\n从技术特点来看，热苏斯是当今世界足坛最让人感到兴奋的年轻球员之一，他的踢球方式让人感到无比的惊讶，这位巴西国脚似乎可以再进去的任何位置提脚射门，他的射门感觉极其的优秀。目前他在德国转会市场上面的身价高达7000万欧元。\r\n第三名:菲尔米诺（利物浦）\r\n菲尔米诺出生于1991年10月2日，目前他在场上司职中锋，现在效力于英超联赛的利物浦足球俱乐部。菲尔米诺出道于本土联赛的乙级球队，他在自己职业生涯的初期表现的并不是十分的亮眼，主教练也并没有特意的去培养这位年轻的球员。不过随着时间的推移，主教练慢慢发现他作为中锋的位置表现的十分的优秀，这位巴西球员不仅可以在禁区内进行支点作用，有的时候也可以回撤到中场帮助球队进行组织。\r\n图片x2\r\n2015年6月份，菲尔米洛正式加盟了英超的利物浦足球俱乐部。目前他在德国转会市场上面的身价已经达到了8000万欧元，他也是当今巴西足坛最高身价的中锋球员。尽管从进球以及助攻的数据来看，这位巴西国脚并不是十分的亮眼，但相信只要看了他比赛的球迷都会对他十分的满意，就如利物浦的主教练克洛普所说:“菲尔米诺进球数虽然不多，但没有任何一个人会质疑他的能力，我见到的每一个人都对他大加赞赏。”\r\n第二名:库蒂尼奥（巴塞罗那）\r\n库蒂尼奥出生于1992年6月12日，他在场上司职前腰，也可以胜任边锋的位置，目前这位巴西国脚效力于西甲联赛的巴塞罗那足球俱乐部，他目前在德国转会市场上面的身价高达1.4亿欧元，即便在世界身价排行榜的前十位他都能占据一席之地。\r\n图片x2\r\n库蒂尼奥毫无疑问是当今巴西新生代球员中的领头人物，他的技术特点十分鲜明，无论是瞬间的加速能力还是在中场的盘带过人都是他的拿手好戏。早在效力利物浦时期，他便向世界足坛展现了自己优秀的个人能力，不过来到巴塞罗那后，他似乎陷入了一段时间的低谷，如今的库蒂尼奥在巴塞罗那过得可能并不顺利，这位巴西国脚已经在很长一段时间都没有为巴萨进球了，而且他在场上的串联也远远达不到他的巅峰时期，这和他瘦弱的身体对抗能力也有很大的关系。\r\n第一名:内马尔（巴黎圣日耳曼）\r\n内马尔目前效力于法甲联赛的巴黎圣日耳曼足球俱乐部，他在场上司职左边锋，同时他也是当今巴西国家队的队长。这位巴西国脚目前在德国转会市场上的身价为1.8亿欧元，在巴西国家队中排名第一，而在世界各个球员的身价排行榜中排名第二位，仅次于他在俱乐部中的队友姆巴佩。\r\n图片x2\r\n内马尔在出道之时便被誉为贝利的接班人，他的技术风格十分的出色，并且如今他也被球迷们誉为当今世界足坛掌握盘带过人技巧最多的球员。尽管梅西是当今世界足坛公认的过能成功率最高的球员，但如果论过人的观赏性他是绝对比不过内马尔的，内马尔不会依靠简单的变向加速就过人，他的过人更倾向于使用各种眼花缭乱的脚下技巧，所以观看他的比赛也被公认为一种享受。', '7', null);
INSERT INTO `posts` VALUES ('33', null, '帕尔梅拉斯队获巴西足坛最高赞助费合同', '新华社里约热内卢1月21日电（记者陈威华 赵焱）2018年巴西足球甲级联赛冠军帕尔梅拉斯队内部人士21日证实，他们已与私人借贷公司CREFISA以及美洲大学完成续约谈判。新协议将持续到2021年年底，总金额达到4亿雷亚尔（1美元约合3.75雷亚尔），这将是巴西乃至南美足坛有史以来最高金额的赞助合同。\r\n　　根据协议草案，赞助方除了支付球衣胸前广告费之外，还将为包括卢卡斯·利马和波尔雅在内的若干球员支付部分薪水，并为球队提供参加美洲杯和巴西国内比赛的赢球奖金等。\r\n　　俱乐部内部人士表示，帕尔梅拉斯队去年赞助费为7800万雷亚尔，赢球奖金为1000万雷亚尔，今年之所以能够以超高金额成功与两家合作伙伴续约，俱乐部主席加利奥特与莱拉·佩雷拉之间的友谊十分关键。佩雷拉是帕尔梅拉斯队的忠实球迷，也是CREFISA和美洲大学的董事和实际拥有人。\r\n　　帕尔梅拉斯队目前的主教练是前巴西国足主帅斯科拉里。去年，帕尔梅拉斯队在联赛中表现神勇，提前一轮夺得冠军，成为巴甲历史上首个十冠王。\r\n', '7', null);
INSERT INTO `posts` VALUES ('34', null, '激烈程度不输英超！巴西甲级联赛冠军之争再出悬念！', '9月18日早晨的一场巴甲比赛结束后，保级队沙佩科恩斯以2:1战胜了排名榜首的巴西国际队，如愿拿到了3分，在保级之路上再次冲锋了一把。不过巴西国际队也不用沮丧，因为就在此前一天，他的两个争冠对手圣保罗和帕尔梅拉斯都没赢球！\r\n先说圣保罗，客场0:0战平死敌桑托斯已经算是占了便宜了，毕竟俩队抬头不见低头见，一见就是死磕的格局下，没丢分也能够体现出双方的差距，与以往“杀红了眼”的效果有点差距；\r\n再说最近比较生猛的帕尔梅拉斯，中国球迷对这个球队可谓不陌生，因为在这支球队的主帅，正是昔日广州恒大队主帅斯科拉里。乐投（let97 com）统计近期战绩生猛的帕尔梅拉斯先是在杯赛中被对手击败，随后联赛里面对下游球队巴伊亚逼平，一周双赛的苦果就此诞生，大菲尔也没辙，毕竟还是手中无人，单线作战尚可，想要夺冠还得看老天爷的赏面儿。\r\n图片x3\r\n这回轮到了巴西国际队，他们的对手是保级队沙佩科恩斯。沙佩科恩斯队国内球迷们可谓很熟悉了（因为一场空难），这是一支可歌可泣的球队，经历了重大变故的他们至今还没缓过来，球员还都是各支球队“支援”过去的，在巴甲可谓“有人出人、有分送分”，巴西国际队如今就是“有分送分”，同样是连续作战（周中有杯赛），巴西国际送给对手分数可谓正常操作，但是干脆地给了他们3分，这个礼物简直太厚了。\r\n目前沙佩科恩斯队距离上岸仅有2分差距，按照赛季末段的“生猛”和一些特殊原因，沙佩科恩斯队依然有保级的能力。\r\n图片x3\r\n目前巴甲争冠的三支球队分别是圣保罗50分、巴西国际49分、帕尔梅拉斯47分，分数咬得相当紧，比英超的榜首之争还要激烈，此时谁也不能主动犯错，否则就直接掉队。\r\n离开广州恒大之后，“冠军教头”斯科拉里的关注度依然不小，假如他能够带领球队逆袭最终夺得巴甲冠军，那可真是能让恒大悔死。\r\n', '7', null);
INSERT INTO `posts` VALUES ('35', null, '魔威巴西甲级联赛竞彩分析 富明尼斯VS国际体育会', '上周末小编比较忙，也什么时候时间看球，错过了英超几场挺不错的赛事，不过周六晚上小编倒是有发了篇文章带走地，差不多带了30分钟推荐了4场走地都红了，相信有跟着买的球友也收了不少米。最近小编看到经常有球友在问去哪里看比赛视频直播啊、小编的推荐临场发生变化不知道该不该买诸如此类的问题，因此小编搞了个群，届时临场变化会在群内通知。如有需要请【点击关注，发送私信】\r\n巴西甲 富明尼斯VS国际体育会\r\n首先我们还是看一下双方的近期战绩，富明尼斯目前战绩为6胜4平7负，排在联赛第9名，这个胜率还算可以。再来看下作为主场的富明尼斯主场战绩为4胜2平2负，光看纸面上这个战绩是相当不错了。但是要知道，巴甲这个联赛球队基本都是主场龙客场虫，富明尼斯的主场胜率只能排在联赛第14名，还是较低的。并且富明尼斯近3场比赛只取得了一场胜利。\r\n图片\r\n我们再来看下客队国际体育会的近期战绩，国际体育会本赛季战绩为9胜5平3负，排在联赛第四名，这个战绩是相当可以的。同时国际体育会的客场战绩为3胜3平3负，也是排在联赛第四名。最近势头也挺猛，球队刚拿下两连胜。两队光从过往战绩上看，客队国际体育会是占优的\r\n图片\r\n我们再来看下两队的历史战绩，从2013年开始，双方交战主队富明尼斯6年来都没有取胜过，总共10场战绩为5平5负，国际体育会有着压倒性的优势。\r\n好看到这里大家一定都把筹码偏向客队国际体育会了吧，小编也不例外，这么诱人的战绩说实话谁都会相信国际体育会能取胜。但是小编说过，分析比赛不能光看一个指标，我们再来看下赔付方面。\r\n图片\r\n几乎所有的公司都是一样初盘开出主队平手盘高水，即使盘变为主队平手盘低水。要知道主队富明尼斯这场比赛结束之后就要马上飞往乌拉圭准备南球杯了，在种种不利因素的情况下主队是吸收不到什么筹码的，客队完全有实力开出让平半甚至于让半球的盘面。然而主队的赔付却一路下跌，因此小编觉得这场比赛咱们不妨跟着博彩公司的思路走，看好主队不败。\r\n参考推荐：主队富明尼斯平手盘\r\n竞彩推荐：胜平\r\n', '7', null);
INSERT INTO `posts` VALUES ('36', null, '四川雄起！四川九牛将于今日举办新闻发布会', '四川雄起！四川九牛将于今日举办新闻发布会 \r\n四川九牛足球俱乐部将于今日14:00在成都举办新闻发布会，虎扑体育将与你一起见证四川足球新征程，一起见证中国新足球产业启航！更多详细信息将于稍后带来。\r\n本次新闻\r\n', '8', null);
INSERT INTO `posts` VALUES ('37', null, '复盘鲁能4-1河内：问题不少，但能炸出逆转还是值得肯定', '新赛季的鲁能，与上赛季相比的变化并不会太大，因此，本场比赛球队的战术重心依然是佩莱，只是增加了中路支点策应下的边路前插力度。但是，缘何会在上半场比赛中段后场面失控？这展现出了鲁能目前几乎不可逆的短板。在找到节奏以及李霄鹏数次针对性的变招之后，鲁能的高空轰炸成功带走了比赛。\r\n【出场阵容】\r\n鲁能出场阵容：14-王大雷；6-王彤、4-吉尔、35-戴琳、13-张弛；17-吴兴涵（46’3-刘军帅）、7-崔鹏（60’21-刘彬彬）、22-蒿俊闵；33-金敬道、23-罗杰-格德斯（85’18-周海滨）、9-佩莱\r\n替补：5-郑铮、20-韩镕泽、24-齐天羽、36-段刘愚\r\n河内FC首发：5-段文厚、10-阮文决、13-陈文坚 、15-范德辉、16-阮成钟、19-阮光海、20-奥马尔-法耶、28-杜维孟、30-阮文公、88-杜维勇（74’29-言文大）、90-奥塞尼\r\n替补：4-阮文勇、6-窦文全、7-麦玉河、36-裴进勇、74-张文泰贵、98-胡明迤\r\n【固定套路的坚持，没有塔尔德利后增加边路的前插】\r\n塔尔德利离开，对于鲁能的影响还是较大，毕竟，格德斯与塔尔德利相比，他更加喜欢且善于快速做球与队友进行配合，少了塔尔德利的那种突击效果。固定的442阵型以及佩莱支点作用的延续，是鲁能如今战术的重点。\r\n只是，在这种局面下，鲁能本场比赛与上赛季相比，边后卫的前提幅度较大，希望能完成边中结合。\r\n体现出了鲁能战术层面的延续与微调。佩莱作为支点争顶第一点之后，组织核心蒿俊闵以及出球能力并不弱的崔鹏在高位与佩莱进行配合，然后，崔鹏直接分边找前插的王彤。这时候，边前卫金敬道瞄准的是肋部冲击，王彤可以塞身后也可以传中。\r\n后续佩莱得球之后，左侧的张弛也上来，但是遭遇对手低位限制后，高位的蒿俊闵就成为进攻方向转移的第一点。他直接大范围转移右侧，鲁能再度进行传中。\r\n【节奏与细腻程度不足，鲁能丢掉控制权】\r\n河内这支球队整体的技术能力并不弱，而且，三中卫阵型下他们的传控以及对于肋部的作业特点较为明显。从上轮亚冠资格赛来看，他们冲击对手肋部以及在高位具备传控、突分能力的情况下，向前传递还是有着很强的执行力。\r\n在这种情况下，他们通过边翼卫的前提拉开了宽度，鲁能双前锋与四中场形成了较为空旷的体系，让球队的向前传递总有空挡。这时候，鲁能前锋只能逼抢中路，对手通过边路形成过渡绕开崔鹏与蒿俊闵，不断在前场获得空位或是制造边路的传跑机会。\r\n这时候，鲁能的后腰疲于奔跑，边路球员被严重压回半场，让对手获得了高位足够的空间。鲁能在遭遇对手传跑冲击的同时，不断利用长距离传递找锋线，就形成了一点能够拿球但是二点缺乏控制的局面。而且，对手适度增加的高压逼抢，在他们较强的机动能力加成下，鲁能防守问题就不断出现。\r\n上图只是鲁能本场问题的一个缩影，长久以来面对人球结合好或是冲击力强的后卫存在的短板展现出来，鲁能遭遇到对手压上断球之后，在速率与小技术上的弱势让对手获得了前场的灵巧拿球与传中打击后点。\r\n其实，只要对手前锋球员射术更好或是在具备冲击性的同时拥有更好一点的技术，鲁能很可能不会只丢一个球。\r\n【两次调整两种思路，但强行高空炸才是根本】\r\n下半场比赛，李霄鹏进行了2次调整：减重之后的刘军帅登场出任后腰，把蒿俊闵放到了边路，在增加硬度的同时让边路有了一个更准确的传中点（鲁能连续获得机会并射中门框）；将对手阵型压回去之后，让刘彬彬、格德斯作为机动点，蒿俊闵与金敬道在高位组织调度或是进行传中，是寻求控制与深层次的打击。\r\n这俩战术的变化，核心寻求点还是高空轰炸。\r\n这种战术体系得到延续之后，鲁能就回到了熟悉的比赛节奏之中，也最终走出了上半场比赛跟着对手节奏走的尴尬。然后，就是依靠自己的高空球优势，使劲炸。\r\n【问题会一直延续下去？】\r\n即便是逐渐找到自己节奏的下半场，鲁能还是留给了对手较多的打击机会。这个问题的关键，依然是如今球队442体系。只要对手在高位绕开高位拦截或是通过鲁能阵型的拉开完成直塞，鲁能防线紧密度上的问题就会直接呈现出来。\r\n然后，面临对手的灵巧作业鲁能的问题就很大。从上图可以看到，鲁能站位空有阵型，但是球员在机动性以及防守的积极性上都存在问题，这或许是球队新赛季第一场正是比赛且对手速率节奏较快带来的问题，但是，连续出现这种站着看的防守态势，还是让人担心。\r\n后续或许会通过比赛的进行逐渐完成节奏的适应，但是，对手不断绕开鲁能双前锋在边路打击中场线与后卫线空当的这个问题，上赛季就呈现很多，本赛季，还会延续下去？\r\n【结语】\r\n主场拿下对手晋级正赛是基本任务，鲁能也在率先丢球的情况下完成了逆转，是一个及格的表现。不过，对手通过自身特点的发挥逐渐压制的鲁能无法发挥出优势，敲响了警钟。李霄鹏临场的调整足够出色，鲁能利用自己最强的战术手段完成了逆转，只是，这种局面还是让人无比担心。希望，鲁能通过新赛季不断的比赛适应以及战术的微调，能规避本场比赛呈现的问题。\r\n', '8', null);
INSERT INTO `posts` VALUES ('38', null, '是时候讨论冯潇霆的历史地位了', '随着冯潇霆下放预备队（听说又提回一队了），这位34岁的老将国家队生涯基本走到了尽头，俱乐部生涯也将近暮年（也有人说他有可能再踢40强世预赛），作为目前中超最优秀的本土中后卫，他的实力和名气应该在中国足球史上有一席位。\r\n从俱乐部经历来说，冯潇霆无疑是金字履历，能把他比下去的只有范志毅、孙继海，17岁就成功在甲A凭实力（不是政策）踢上了主力，18岁的时候成为当时甲A最年轻的进球者和最年轻的队长，这些都值得现在这批90后球员学习和一生追赶的。在韩国K联赛踢了两年，实力得到韩国人的认可。回到恒大之后，作为后防核心夺得两次亚冠冠军和多次中超冠军，入选亚冠最佳阵容。个人荣誉来说，获得中超金球奖。\r\n国家队经历稍逊，但还是这批后卫里的佼佼者。18岁入选国家队，成为第一个国家、国奥、国青三栖球员，所以别说什么黄紫昌被练坏，若真的想以亚洲一流球员为目标，这种入选是正常的。20岁参加世青赛，以队长身份带队杀进16强，现在我们连踢亚青赛都够呛，赛后被评为十大新星。代表男足参加了奥运会，也是当年东亚杯3比0灭韩的功臣之一。后来成为国家队队长，代表国足参加多次大赛，是继李玮锋之后，国足真正的后防核心（我觉得杜威差点意思，后来者张琳芃、石柯担不起核心这个称号）。\r\n冯潇霆并不是传统意义的中后卫，进攻时更多选择积极插上参与进攻，与队友寻求配合，防守时不够硬朗，更多通过防守技术与对方纠缠，遇到那种身高体壮猛冲猛打的前锋办法不多。但综合能力，在中国足球历史上至少能排在中后卫前五，后卫前十的水准。\r\n', '8', null);
INSERT INTO `posts` VALUES ('39', null, '2019中超冬季转会窗转会汇总（实时更新）', '2019中国足球冬季转会窗从2019年1月1日开启，2月28日关闭。本帖提供冬窗转会汇总，实时更新，敬请关注！\r\n上海上港：\r\n教练：佩雷拉（留任）\r\n加入：高志杰（南通支云租借回归）\r\n转出：武磊（转会，加盟西班牙西班牙人）\r\n\r\n广州恒大：\r\n教练：卡纳瓦罗（留任）\r\n加入：荣昊（上海绿地申花租借回归）、罗伯托-萧初（转会，转自秘鲁体育大学）、韦世豪（转会，转自北京中赫国安）、高准翼（转会，转自河北华夏幸福）、刘奕鸣（转会，转自天津天海）、张修维（转会，转自天津天海）、何超（转会，转自长春亚泰）、吴少聪（转会，转自日本清水心跳）、王靖斌（上海申鑫租借回归）、王上源（河南建业租借回归）\r\n转出：高拉特（租借，加盟巴西帕尔梅拉斯）、金英权（转会，加盟日本大阪钢巴）、廖力生（租借，加盟天津天海）、张成林（租借，加盟天津天海）、阿兰（租借，加盟天津天海）、温 家 宝（租借，加盟天津天海）\r\n\r\n山东鲁能泰山：\r\n教练：李霄鹏（留任）\r\n加入：陈科睿（梅州客家租借回归）、柏天赐（梅县铁汉生态租借回归）、费莱尼（转会，转自英格兰曼彻斯特联）\r\n转出：塔尔德利（合约到期，加盟巴西格雷米奥）、崔巍（租借后转正，加盟梅州客家）、姚均晟（租借，加盟天津天海）\r\n\r\n北京中赫国安：\r\n教练：施密特（留任）\r\n加入：金玟哉（转会，转自韩国全北现代）、邹德海（转会，转自浙江绿城）、侯永永（外籍归化，转自挪威斯塔贝克）、李可（又名延纳里斯，外籍归化，转自英格兰布伦特福德）\r\n转出：索里亚诺（合约到期，加盟沙特利雅得新月）、韦世豪（转会，加盟广州恒大）、杜明洋（转会，加盟梅州客家）\r\n\r\n江苏苏宁：\r\n教练：奥拉罗尤（留任）\r\n加入：穆坎乔（北京人和租借回归）、冯伯元（转会，转自辽宁沈阳宏运）、罗竞（自由转会，转自浙江绿城）\r\n转出：洪正好（续租韩国全北现代）、戈伟（自由转会，加盟泰州远大）、张晓彬（租借，加盟天津天海）\r\n\r\n河北华夏幸福：\r\n教练：科尔曼（留任）\r\n加入：\r\n转出：埃尔纳内斯（转会，加盟巴西圣保罗）、桂宏（转会，加盟广州富力）、高准翼（转会，加盟广州恒大）、赵明剑（转会，加盟大连一方）\r\n\r\n上海绿地申花：\r\n教练：弗洛雷斯（新任）\r\n加入：吴毅臻（转会，转自上海申鑫）、伊哈洛（转会，转自长春亚泰）、邓彪（新疆雪豹纳欢租借回归）\r\n转出：登巴巴（协商解约，加盟土耳其伊斯坦布尔）、荣昊（租借到期，返回广州恒大）、王林（合约到期）、邱盛炯（合约到期）、秦升（租借后转正，加盟大连一方）、李建滨（转会，加盟大连一方）、马丁斯（合约到期）、王寿挺（合约到期）、陶金（合约到期）\r\n\r\n北京人和：\r\n教练：斯塔诺（新任）\r\n加入：杨一虎（黑龙江FC租借回归）\r\n转出：韩鹏（合约到期）、汪强（合约到期）、刘洋（离队）、穆坎乔（租借到期，返回江苏苏宁）、王楚（租借到期，返回葡萄牙科瓦彼达迪）\r\n\r\n天津权健（更名天津天海）：\r\n教练：沈祥福（新任）\r\n加入：张源（贵州恒丰租借回归）、晏紫豪（盐城大丰租借回归）、方镜淇（租借，转自广东华南虎）、阿兰（租借，转自广州恒大）、张成林（租借，转自广州恒大）、廖力生（租借，转自广州恒大）、温 家 宝（租借，转自广州恒大）、姚均晟（租借，转自山东鲁能）、张晓彬（租借，转自江苏苏宁）\r\n转出：刘奕鸣（转会，加盟广州恒大）、张修维（转会，加盟广州恒大）、杨善平（租借后转正，加盟大连一方）、赵旭日（转会，加盟大连一方）\r\n\r\n广州富力：\r\n教练：斯托伊科维奇（留任）\r\n加入：穆萨-登贝莱（转会，转自英格兰托特纳姆热刺）、迪亚-萨巴（转会，转自以色列贝尔谢巴工人）、叶楚贵（深圳FC租借回归）、范云龙（转会，转自贵州恒丰）、桂宏（转会，转自河北华夏幸福）、金波（转会，转自延边富德）\r\n转出：乌索（转会，加盟巴西科林蒂安）\r\n\r\n大连一方：\r\n教练：崔康熙（新任）\r\n加入：哈姆西克（转会，转自意大利那不勒斯）、秦升（租借转正，转自上海绿地申花）、杨善平（租借转正，转自天津权健）、赵旭日（转会，转自天津天海）、赵明剑（转会，转自河北华夏幸福）、李建滨（转会，转自上海绿地申花）\r\n转出：王万鹏（转会，加盟宁夏火凤凰）、董洪麟（转会，加盟重庆斯威）、金强（转会，加盟深圳FC）\r\n\r\n河南建业：\r\n教练：王宝山（留任）\r\n加入：张文涛（转会，转自上海申鑫）\r\n转出：多奇卡尔（协商解约，加盟捷克布拉格斯巴达）、王上源（租借到期，返回广州恒大）\r\n\r\n重庆斯威：\r\n教练：小克鲁伊夫（留任）\r\n加入：董洪麟（转会，转自大连一方）、杨帅（转会，转自辽宁沈阳宏运）、蒋哲（转会，转自长春亚泰）、梅泽耶夫斯基（转会，转自长春亚泰）\r\n转出：刘宇（解约）、隋东陆（合约到期）、塞巴（租借到期，返回希腊奥林匹亚科斯后转会沙特利雅得青年人）\r\n\r\n天津泰达：\r\n教练：施蒂利克（留任）\r\n加入：桑德罗-瓦格纳（转会，转自德国拜仁慕尼黑）、雷永驰（辽宁沈阳宏运租借回归）\r\n转出：米克尔（协商解约，加盟英格兰米德尔斯堡）、埃武纳（转会，加盟葡萄牙圣克拉拉）、郭毅（租借后转正，加盟梅州客家）\r\n\r\n武汉卓尔：\r\n教练：李铁（留任）\r\n加入：刘毅（转会，转自北京北控燕京）、董春雨（转会，转自北京北控燕京）、韩鹏飞（转会，转自贵州恒丰）、巴普蒂斯唐（转会，转自西班牙西班牙人）、姆比亚（自由转会，与法国图卢兹解约后加盟）\r\n转出：张耀坤（退役）、佩德罗-儒尼奥尔（租借到期，返回日本鹿岛鹿角后转会巴西福塔莱萨）、莫雷洛（自由转会，加盟石家庄永昌）\r\n\r\n深圳FC：\r\n教练：卡罗（留任）\r\n加入：塞尔纳斯（转会，转自法国圣埃蒂安）、姆本格（转会，转自法国圣埃蒂安）、王鹏（转会，转自石家庄永昌）、金强（转会，转自大连一方）\r\n转出：奥汗德扎（合约到期）、罗西（租借，加盟巴西瓦斯科达伽马）\r\n', '8', null);
INSERT INTO `posts` VALUES ('40', null, '里皮的中国计划可能是什么内容？', '五星体育的采访里有这么一段:\r\n您未来的安排是什么？\r\n里皮：要么就是中国计划的实现，要么就是好好度一整个夏天的假，这是目前我最想做的事情，你知道我有多渴望了。然后就再等着看吧，从今年9月开始我就会做一些事情，我倾向执教一个距离意大利不算太远的国家队，我不想再长途旅行了。我只愿意接受国家队工作，而不是俱乐部的工作。有很多俱乐部找到我，有一些还是非常大的俱乐部，但是我不想再接手了。\r\nJrs们能不能说说自己的分析？\r\n', '8', null);
INSERT INTO `posts` VALUES ('41', null, '近日，埃及足球超级联赛阿赫利队连续三年夺得联赛冠军！', '新华社5月20日2017-2018赛季埃及足球超级联赛末轮最后一场比赛，来自首都开罗的阿赫利队在中立球场亚历山大阿拉伯堡体育场2：0击败塞得港球队埃及人队，连续三年夺得联赛冠军。\r\n阿赫利队早已提前六轮确定夺冠，埃及人队也已在赛前锁定第三名，无欲无求的两支球队在比赛中派出以替补球员为主的阵容。阿赫利队上半场由34号艾哈迈德·哈姆迪先入一球。下半场埃及人队大举压上，反被阿赫利抓住反击机会由37号萨拉赫·穆赫辛锁定胜局。\r\n阿赫利队本赛季取得过一波22场不败，其中包括16轮连胜，在第18轮后坐稳第一的宝座直至赛季结束。球队34轮联赛拿到88分，领先第二名20分。这已是阿赫利队连续第三次夺得联赛桂冠，其联赛总冠军数也达到40个。\r\n伊斯梅利队和埃及人队分列第二、三名。阿赫利队的主要竞争对手开罗扎马利克队本赛季发挥不佳，仅获得联赛第四。\r\n图片\r\n阿赫利队和伊斯梅利队携手晋级2019年非洲冠军联赛，埃及人队和扎马利克队则进入2019年非洲联盟杯。效力于阿赫利队的摩洛哥球员瓦利德·阿扎罗以18个进球捧得金靴。\r\n埃及足球超级联赛目前拥有18支参赛队伍，其中以阿赫利和扎马利克间的开罗德比最为著名。这两支球队在历史上共赢得52次联赛冠军，其他球队一共仅赢得过7次冠军。\r\n', '9', null);
INSERT INTO `posts` VALUES ('42', null, '心碎时刻！ 埃及足球评论员看到被绝杀后突发心脏病去世', '腾讯体育6月26日讯 据英国媒体《太阳报》的报道称，埃及的一位名叫阿卜杜勒-拉希姆-默罕默德的足球评论员，在沙特绝杀击败埃及之后，因突发心脏病去世。\r\n世界杯小组赛第三轮，沙特2-1击败埃及，这场比赛埃及头号球员萨拉赫破门首开纪录，随后沙特点球扳平比分，在下半场补时阶段，沙特球员道萨里破门完成绝杀。据报道称，拉希姆-默罕默德在沙特球员打进绝杀球之后，身体突然感到不适，随后被送往医院，不幸猝死。\r\n拉希姆-默罕默德是埃及联赛球队扎马莱克的前任教练，本来他要为埃及的一家媒体对这场比赛提供评论和分析，但是拉希姆-默罕默德却不幸去世。当地医院负责人发表声明称，拉希姆-默罕默德是被送到医院之后去世的。埃及当地媒体援引埃及前门将阿赫梅德-法兹的话说，在埃及被绝杀之后，拉希姆-默罕默德受到比赛的影响，看起来非常疲倦。\r\n', '9', null);
INSERT INTO `posts` VALUES ('43', null, '沙特体育局长买个埃及球队改叫金字塔!如今又追伊布', '有钱，有时候真的可以任性。卡塔尔的国家资本，直接让原本没落的巴黎圣日耳曼成为了足坛一流豪门。这一幕，如今又有可能在埃及重演。沙特体育总局局长Turki al-Sheikh买下了一支埃及球队，如今又向伊布送去了邀请函！\r\n图片\r\n今年夏天，Turki al-Sheikh买下了埃及球队阿拉希乌蒂体育队，该队在上赛季埃及超级联赛中排名第9。在上任之后，Turki al-Sheikh很快将球队更名为“金字塔队”。身为亿万富翁的Turki al-Sheikh，想在埃及复刻金元足球的成功。在Turki al-Sheikh的资金注入之后，金字塔队本赛季5轮联赛后3胜2平保持不败，目前与老牌劲旅阿尔阿赫利并列榜首。\r\nTurki al-Sheikh的引援目标，是如今36岁的伊布。《每日体育报》指出，伊布在美国大联盟的日子很可能已经要倒数计时了。在本赛季结束后，伊布有可能离开大联盟，并且去金字塔队体验一下非洲足球。\r\n在美国，伊布保持着出色的个人状态。伊布参加了21场比赛，他首发18次，神塔打进了16球。但洛杉矶银河只排名中游，在联赛还剩8轮的情况下，银河队打进季后赛的希望已经不大了。银河队本赛季最后一轮常规赛将在10月底进行，伊布有可能会在常规赛结束后直飞埃及。\r\n', '9', null);
INSERT INTO `posts` VALUES ('44', null, '足球：埃及迈向复兴的助燃剂', '【场外世界杯】\r\n光明日报驻开罗记者 肖天祎\r\n俄罗斯世界杯，6月15日埃及队首场对战乌拉圭队。这一天恰好也是穆斯林的传统节日开斋节，埃及的穆斯林在结束了炎炎夏日中长达一个月的封斋后，终于可以尽情饮水和进食。比赛当天，尽管烈日高照，首都开罗的普通民众们还是早早走上街头，来到露天咖啡馆占好座位，喝着咖啡，抽着水烟，高谈阔论，等待一睹埃及队，尤其是球星萨拉赫的英姿。\r\n如果说普通民众因为付不起高昂的卫星电视直播费而只能露天“蹭看”比赛的话，那么中等收入者则来到尼罗河畔的高级咖啡厅，边看球边享受着空调和河边美景。埃及信仰基督教的科普特人和外国游客当天也放开了禁忌，点上一杯冰镇啤酒，围坐在电视机前谈天论地。\r\n不论身份、族群、信仰如何，埃及人在这一天找到了一个共同的话题——世界杯，对足球的爱好拉近了埃及人相互间的距离，凝聚了埃及人的国民认同。\r\n虽然万众瞩目的球星萨拉赫未能上场，最后时刻埃及队以01负于乌拉圭队，但是，埃及民众却认为，国家队打出了“非洲法老”的气势。\r\n一名埃及足球迷自信满满地对记者说，萨拉赫没有上场是在保存实力，埃及能否小组出线关键在下两场球赛，届时萨拉赫上场，埃及队必会如虎添翼，连下两城。\r\n萨拉赫现效力利物浦队，被誉为“埃及梅西”，以技术细腻、富有进攻性著称。上一赛季，他以32个进球成为英超当季最佳射手，超越C罗、希勒以及苏亚雷斯三人共同创造的单赛季31球进球纪录，成为英超史上单赛季进球最多的球员。\r\n在埃及，萨拉赫是名副其实的全民偶像，小到普通民众，大到总统塞西，无人不是萨拉赫的粉丝。开罗街头随处可见萨拉赫代言的巨幅广告。萨拉赫上月在欧冠决赛中受伤，《埃及人报》头条评论文章感慨：“昨夜埃及人哭了。”埃及总统塞西在推特上祝萨拉赫早日康复，称他是“埃及的民族骄傲”。\r\n埃及进入本届世界杯绝非偶然。历史上，埃及就是一个对足球情有独钟的国家，被球迷赞誉为“非洲法老”。埃及在1882年就曾组织球队与英国职业队进行比赛。1912年埃及足球协会成立，并于同年设立了埃及足球节，1923年被国际足联授予成员国资格。\r\n埃及足球的实力更不容小觑，埃及队是非洲足坛的一支传统劲旅，曾7夺非洲杯冠军。1943年埃及第一次闯入世界杯，1990年再次杀入。埃及拥有自己的足球联赛，甲级联赛共有18支队伍，其中最负盛名的扎马雷克体育俱乐部是埃及、阿拉伯地区乃至非洲的一支足球强队，总共获得过5次非洲联赛冠军、3次非洲超级杯冠军，这一纪录傲视其他任何非洲俱乐部。\r\n记者观察到，足球是埃及名副其实的第一大运动，体育场、俱乐部、学校等机构的足球场总是有很多人踢球，学生们最喜欢的游戏是足球游戏。广泛的群众基础、完备的基础设施、成熟的俱乐部培训体系，造就了埃及足球的不俗实力。\r\n在埃及这个族群众多、局势变幻、渴望发展的国家，足球激发了埃及人的自豪感和自信心，为冲突的各教派找到了共同语言，成为埃及迈向复兴的助燃剂。\r\n（光明日报开罗6月16日电 ）\r\n', '9', null);
INSERT INTO `posts` VALUES ('45', null, '萨拉赫 到底怎么样', '近日《天空体育》消息称，刚刚官宣签订下英超联赛顶级中场球星拉姆塞的尤文图斯俱乐部，又看上了利物浦巨星萨拉赫，在征得了俱乐部头号巨星C罗的同意后计划以2亿欧元的价格进行收购，看来老妇人今夏势必在转会市场上掀起一阵腥风血雨了。\r\n萨拉赫1992年出生于埃及，现效力于英超豪门利物浦队，被外界誉为“埃及梅西”，是目前欧洲最为顶级的边锋球员，也被许多球迷誉为世界第三人，在08年金球奖排名第6位。\r\n2010年出道于埃及本土联赛莫考伦俱乐部，由于在12年的骚乱事件造成的埃及超级联赛停赛，萨拉赫转会至瑞士足球俱乐部巴塞尔，效力球队两个赛季各项赛事出场79次，打进20球。\r\n出色的表现和过人的天赋引起了英超豪门切尔西的注意，于14年初正式加盟蓝军身批15号球衣，但是鉴于蓝军实力派球员太多，萨拉赫出场时间不多也更没有机会展现自己的足球才华，15年被俱乐部租借至意甲佛罗伦萨队直到赛季结束。\r\n图片x3\r\n效力佛罗伦萨的半年时间里，各项赛事出场26次，打进9球4次助攻，表现出了良好的竞技状态，遂于15年正式转会至罗马俱乐部。代表罗马出场41次，打进19球15次助攻，勇夺意甲联赛亚军。\r\n可以说以上辗转反侧的经历造就了萨拉赫独立坚强的性格以及对各种新环境的迅速适应能力，为接下来的真正爆发打下了坚实的基础。\r\n2017年3月，利物浦队宣布正式引进萨拉赫，双方签订一份5年期的工作合同，这是对他能力的肯定。从此，在渣叔克洛普的悉心调教下萨拉赫终于找到了归属，迎来了自己的黄金时段，17/18赛季出场36次打进32球，这一数据的提升远远超过了过去在意甲联赛一个赛季15球左右的成绩，很快就得到了广泛的关注，2018年9月萨拉赫在世界足球先生评选中获得第三名，同时，萨拉赫凭借过去一个赛季对阵埃弗顿的比赛打入的精彩进球，获得普斯卡什奖项。\r\n从精神意志力层面来看萨拉赫已经超越了巴西的内马尔成为世界第三人，技战术方面和内马尔则不相上下，然而其实相信只要能够保持每赛季30+的进球数据以及减少伤病，保持住这种势头，萨拉赫成为真正的巨星级别球员的机会空间就肯定非常大，毕竟内马尔的场外因素太多已经严重影响到了他在球场上表现，加上不断反复的伤病困扰已经让内马尔心力交瘁。\r\n相比起转会尤文联手C罗，个人更加倾向于萨拉赫继续留在英超利物浦。渣叔调教年轻球员的能力有目共睹，尤其是萨拉赫这样的天才球员，想当年在大黄峰时期的德国天才格策，要不是各种转会以及脱离了伯乐渣叔，恐怕早已经成为巨星级别球员了，因此在最好的时候萨拉赫遇到了自己的伯乐，本赛季利物浦一路高歌猛进，萨拉赫的核心地位更加凸显，假以时日拿下联手和欧冠冠军等重要奖项，正式跃居世界第一档次球员也不是完全没有可能的。\r\n', '9', null);
INSERT INTO `posts` VALUES ('46', null, '带你了解神秘的墨西哥足球联赛', '墨西哥合众国（西班牙语：Los Estados Unidos Mexicanos），简称墨西哥，是北美洲的一个联邦共和制国家，包括三十二个州；北部同美国接壤，南侧和西侧滨临太平洋，东南濒临加勒比海，与伯利兹、危地马拉接壤，东部则为墨西哥湾。其面积达近二百万平方公里（超过760,000平方英里），为美洲面积第五大和世界面积第十四大的国家。其总人口超过1.2亿，为世界第十一人口大国，西班牙语世界第一人口大国及拉丁美洲第二人口大国。\r\n图片x2\r\n带你了解神秘的墨西哥足球联赛，下次买球别只看赔率\r\n墨西哥足球超级联赛是墨西哥足球联赛系统的最高级别，由墨西哥足球协会管理，有18支足球俱乐部参加联赛。墨超联赛每个年度均分为秋季联赛与春季联赛。每季联赛分为常规赛与季后赛。联赛冠军由季后赛获得。墨西哥足球联赛是个培养妖星的地方，所以他们的赛制也要有妖的地方。18支球队被分为3个组别，每组前2名及剩余球队中积分最高的两队进入秋季联赛附加赛。在季后赛中采取的是主客场的淘汰赛制。直到决出最后的冠军归属。每个短赛季结束，都会产生一支降级球队。(春季联赛+秋季联赛)平均得分最低的球队将降入乙级。两阶段排名前8的球队，将进入附加赛。\r\n北美冠军杯名额：4个，分别是春秋季联赛的总冠军、亚军，如果有重复，则由总成绩较好的球队递补。（北美冠军杯是跨年度的：当年秋季总冠军、亚军，次年春季总冠军、亚军）\r\n解放者杯名额：3个，是当年的春季联赛常规赛前3名，其中冠亚军直接进入32强比赛，第3名参加资格赛。\r\n2017-2018秋季联赛常规赛排名来介绍球队\r\n图片x5\r\n1、托卢卡（联赛11胜3平3负，积36分；进24球，失13球；主场5胜2平0负，进12球，失4球；客场6胜1平3负，进12球，失9球）\r\n托卢卡上赛季获得墨超球季联赛第一名，但季后赛中两回合以2：3不敌桑托斯拉古纳而失落最终的冠军，球队新赛季将继续为冲击冠军之位而战。不过在联赛休战期，托卢卡并没有进行正式的友谊赛热身，球员在2个月时间内远离战场恐无法到达最佳状态。托卢卡的主场成绩上佳，球队在上赛季的7个主场保持不败并以4个失球成为主场防守力最强的队伍，另外球队已经累积各项赛事13个主场保持不败并持续获得进球，拥有强大的主场气势。托卢卡引入了阿美利加的中场威廉费兰度和阿根廷竞赛的中锋查云里奥，以及巴西帕尔梅拉斯的杜比奥，乌利比与保天利尼已经离队，李察雷斯以租借形式加盟。\r\n2、墨西哥美洲（联赛7胜8平2负，积29分；进24球，失14球；主场6胜3平1负，进18球，失7球；客场1胜5平1负，进6球，失7球）\r\n墨西哥美洲上赛季获得墨超秋季联赛第二名，同时以14个失球成为联赛防守力第二强的队伍，不过在进入季后赛表现不稳，最终仅能止步于4强，新赛季将要为全力冲击冠军而战。新赛季前的最后一战，墨西哥美洲对阵了英超劲旅曼联，球队打出积极的进攻配合而在场面上不落下风，比赛中还一度领先，虽然最终以1:1战平收场，但球员依然充分展现了良好的竞技状态。墨西哥美洲可算是墨超赛前热身最充分的队伍，球队从6月底开始进入集训，先后和斯洛伐克、英格兰以及本国的6之球队进行友谊赛，球队得到良好的阵容磨合，而且6战仅有1负的战绩令球员的士气和信心均处于高昂值。而且墨西哥美洲过去5次作客拿加沙保持不败并持续斩获进球，良好的对阵成绩令球员占据坐和望赢的心理优势。墨西哥美洲从西甲比利亚雷亚尔签下前苏宁前锋R-马丁内斯，球队签下了罗马攻击手伊图尔韦，蓝十字攻击手马丁-罗德里格斯，还有拿加沙的表现右后卫拉莫斯、阿特拿斯的左后卫路易斯-雷耶斯，桑切斯、威廉费兰度和马田辛尼已经离队，此役文尼斯也因膝伤不能上阵。\r\n3、蒙特雷（联赛8胜5平4负，积29分；进30球，失21球；主场4胜3平1负，进18球，失9球；客场4胜2平3负，进12球，失12球）\r\n蒙特瑞上赛季获得墨超秋季联赛第三名，虽然在墨超的春秋两季均无法得到冠军，但在总成绩上是得分最高的队伍，符合墨超传统强者的地位。上一场赛事，蒙特瑞在墨超杯上对阵拿加沙，球队虽然在场面上占据较多的进攻机会，但在缺乏足够的控球时间支持下效率不高，全场16次射门仅有1次威胁对方门将，上半场中段的失球令球员陷入急躁的情绪，最终无力破门而以0:1落败。墨超杯失利令蒙特瑞终结了之前友谊赛三连胜的走势，同时为新赛季夺冠蒙上阴影，球队的士气和信心难免受到打击而有些低沉。不过蒙特瑞的客场战绩还是值得信赖，球队过去连续6个客战保持不败，其中有5战能斩获进球，而且球队近年来连续6次对阵帕丘卡未尝一败，球员可借此占据坐和望赢的心理优势。蒙特雷上赛季以30个进球成为联赛攻击力最强的队伍，新赛季加入了皮萨罗、斯加纳多、美洲狮攻击手加利亚多等进攻好手之后更如虎添翼，新帅阿隆索也是崇尚进攻的主教练，球队致力打造更具观赏性的进攻足球。蒙特瑞新帅迭戈阿隆索上任就丢失了一个冠军而遭遇不少的外界批评，其中放走了主力前锋卡洛斯桑切斯是主要的败笔，门将巴洛华路、中场皮萨罗以及前锋新星马达加尔三名新援的竞技状态还有待提升。\r\n4、桑托斯拉古纳（联赛9胜2平6负，积28分；进29球，失20球；主场6胜1平1负，进19球，失10球；客场3胜1平5负，进10球，失13球）\r\n桑托斯拉古纳上赛季获得墨超秋季联赛第四名，但季后赛持续出色的表现，最终以一波5战不败的战绩成功加冕秋季联赛冠军之位，是墨超上赛季的最大黑马。不过在赛季前的热身赛中，桑托斯拉古纳的表现不佳，连续4场友谊赛全部落败，并且每场至少有2个失球，呈现较为低迷的竞技状态。上周，桑托斯拉古纳出席了墨冠杯的决赛，球队对阵泰格雷斯在场面上全线被动，全场控球率不足4成并遭遇16次进攻冲击，最终以0:4惨败收场，球队的士气和信心的进一步受到严重打击，球员能否在短时间内及时调整好心态将成为此役胜负的关键。相比之下，桑托斯拉古纳的主场成绩值得信赖，球队过去7个主场豪取6胜并且持续每场至少有1个进球。桑托斯拉古纳在夏窗有3名核心球员离队，墨西哥国脚阿劳霍转会塞尔塔，队长伊斯基耶多斯转会，另外加上球队的首席射手德扬尼尼（20球，4助攻）离队加盟了吉达国民，流浪者前锋爱德华多-埃雷拉(E.Herrera）租借回到球队。\r\n5、老虎大学（联赛7胜7平3负，积28分；进23球，失16球；主场6胜3平0负，进19球，失7球；客场1胜4平3负，进4球，失6球）\r\n老虎大学（泰格雷斯）是墨超上赛季的春季联赛冠军，在秋季联赛中排名第5位，拥有强大的整体实力，是新赛季夺冠的热门球队之一。泰格雷斯在上周进行了墨冠杯上对阵桑托斯拉古纳，球队以实力压制对手，场面上无论控球率和射门机会上远超对手，并且有极好的把握能力，最终以4:0大胜秋季联赛冠军。成功卫冕墨冠杯之后，泰格雷斯在新赛季前的比赛豪取3连胜，而且持续每场均斩获2个或以上进球，呈现火热的竞技状态，球员的士气和信心达到巅峰值。而且泰格雷斯的主场成绩向来稳定，目前各项赛事已经累积连续21个主场保持不败并豪取16胜，场均进球数超过2球，展现其拥有强大的主场气势。泰格雷斯近日回签了阿根廷中场皮萨罗，但这名老将未必能获得稳定的首发位置，后卫儒尼尼奥和前锋巴伦西亚的伤势已经恢复，但竞技状态成疑恐无法出战。中场卡里奥卡、后卫迪斯萨克是球队另外两名新援，艾斯派古达已经转会普埃布拉，柏路斯也转投祖亚雷斯。\r\n图片x5\r\n6、蒂华纳（联赛6胜7平4负，积25分；进18球，失12球；主场6胜2平1负，进17球，失7球；客场0胜5平3负，进1球，失5球）\r\n蒂华纳是墨超传统劲旅，上赛季获得墨超秋季联赛第六名，但成功闯入了季后赛，并一度晋身到4强之内，拥有较强的整体实力。蒂华纳在上赛季虽然进攻端的表现一般，但以12个失球成为秋季联赛防守力最强的队伍，呈现出较为均衡的攻守体系，新赛季恐将继续沿用稳守反击的战术策略。不过蒂华纳在休战期并没有进行公开的友谊赛，球员在近2个月的时间内缺乏足够的比赛磨炼恐存在状态成疑的问题。较为有利的一点是，蒂华纳向来在主场成绩稳定，上赛季末各项赛事连续6个主场保持不败并持续斩获进球，拥有较强的主场气势。蒂华纳签下休斯敦迪纳摩前锋埃里克-托雷斯、蓝十字后卫贝拉斯克斯，正式买断了去年从巴甲借用的保兰诺斯，另外卡斯迪路从厄瓜甲转会而至，离队球员方面暂时仅有梅斯图。\r\n7、美洲狮（联赛6胜6平5负，积24分；进24球，失24球；主场3胜4平2负，进13球，失9球；客场3胜2平3负，进11球，失15球）\r\n美洲狮（普马斯）上赛季在墨超虽然进入了季后赛在第一圈就遭遇淘汰，但球队也逆转了春季联赛积分垫底的局面，球员的士气和信心均得到较大的提升，新赛季应该是以进入季后赛为目标。美洲狮在7月初开始集训，球队分别作客挑战了两支墨乙的队伍来进行热身，首战对阵圣路易斯竞技明显准备不足，场面上优势不显反而防守失误较多，最终以0:2落败收场。不过第二战作客FC美利达时，美洲狮的专注度明显提升，球队打出积极的进攻节奏，场面上虽然控球不多，但进攻的锐利度十足，最终以4:1大胜对手，为新赛季首战注入激励的元素。美洲狮上赛季在联赛有不俗的客场成绩，8个客战不败率超过6成，虽然失球较多，但场均接近1.5球的进攻力也位居前列，具有较强的抗衡力。美洲狮签入伊度比和法布罗，以及收购了蓝十字前锋莫拉、哥达和洛迪古斯三名球员，不过伊度比因膝部有伤恐无法上阵。球队离开的也有三名球员，分别是中场卡斯迪路、后卫加拿度和前锋卡斯蒂略。\r\n8、莫雷利亚（联赛7胜3平7负，积24分；进22球，失24球；主场5胜1平3负，进12球，失9球；客场2胜2平4负，进10球，失15球）\r\n莫雷利亚上赛季在墨超秋季联赛排名第8位，但在季后赛的首轮就遭遇托卢卡而止步，本赛季首战就遇到复仇的对象，球队的战意十足。在联赛休战期，莫雷利亚进行了积极的备战，球队先后对阵了墨西哥美洲和泰格雷斯两支劲旅，虽然最终落败，但也让球员得到足够的比赛磨炼。莫雷利亚上一场赛事在友谊赛作客雷诺CF，球队反客为主占据场面上超过6成的控球率，比赛中持续领先并把握比赛节奏，最终以4:2击败对手，为此役联赛注入激励的元素，球员的士气和信心得到较大的提升。莫雷利亚从巴拉圭的奥林比亚会签下了费拉拿，卢斯波、蓝十字前锋费耶罗，菲亚路自由加盟，然而秘鲁前锋鲁伊迪亚斯离队加盟了西雅图海湾人。\r\n9、帕丘卡（联赛6胜5平6负，积23分；进29球，失27球；主场4胜1平3负，进15球，失11球；客场2胜4平3负，进14球，失16球）\r\n帕丘卡上赛季虽然在墨超秋季联赛排名第9位，但以29个进球成为联赛进攻力第二强的队伍，拥有不俗的整体实力，新赛季的最基本目标是进入季后赛。帕丘卡上一场赛事在友谊赛对阵莱昂，球队坐镇主场以进攻开局，场面上虽然控球时间不占上风，但进攻组织创造了更多的射门机会，而且前锋线的把握力更强，最终以3:1击败对手。在赛前热身赛中，帕丘卡连续4场都是在主场进行，其中3战斩获了2个进球，充分展现了球队积极进攻的欲望，同时也是为新赛季首战对阵劲敌蒙特瑞作最充足的准备。帕丘卡近年来主场迎战蒙特瑞保持良好的战绩，其中持续18次主场有17战斩获进球，最近5次有4场保持不败并能在半场前零封对手，球队借助主场之利具备足够的实力抗衡蒙特瑞。帕丘卡目前由新帅阿耶斯塔恩领军，球队引入了中锋佩雷斯，又从智利甲引来了射手洛迪古斯，借将中卫巴列诺从阿特拿斯离队后加盟，整体实力上有所提升。帕丘卡的日本国脚本田圭佑已经确定离队，中场冈萨利斯借用走于莱昂，干沙利斯和维纳彭度则分别转投阿特拿斯和尼卡沙。\r\n10、普埃布拉（联赛7胜2平8负，积23分；进23球，失24球；主场5胜1平2负，进14球，失10球；客场2胜1平6负，进9球，失14球）\r\n普埃布拉上赛季在墨超秋季联赛排名第10位，虽然没有进入季后赛，但相比春季联赛有一定的提升，球队在新赛季的目标是冲击季后赛队列。普埃布拉在休战期基本是内部训练，球队并没有进行正式的比赛来磨合阵容，球员的竞技状态成疑。不过在上赛季末的最后两轮联赛，普埃布拉都展现了积极的进攻态势，分别击败了墨西哥美洲和罗伯士而斩获两连胜，球员的士气和信心均保持在高昂值。前锋卡华连尼在上赛季以租借身份帮助普埃布拉攻入了13球，本赛季球队将其正式买断，有望成为攻击线的核心人物。普埃布拉在新赛季有较多的人员变动，新引援帕洛从泰格雷斯转会而来、另外从阿特拿斯签入了森莫亚、高托利斯、阿里奥拿和卢保4名球员，再加上从基亚帕斯美洲虎的阿奎拿和来自乌拉甲的卡华连尼以及中锋拉斯奥斯，洛查斯和高托利斯转会离队。\r\n图片x8\r\n11、内卡萨（联赛4胜10平3负，积22分；进21球，失15球；主场1胜5平2负，进8球，失8球；客场3胜5平1负，进13球，失7球）\r\n内卡萨（拿加沙）上赛季在墨超秋季联赛表现不佳而排名第11位无缘进入季后赛，不过球队在墨西哥杯上一路闯关成功，最终击败了对手而加盟冠军，新赛季的最低目标是冲击季后赛。拿加沙上一场赛事在墨超杯对阵蒙特瑞，球队虽然在赛前进行了较大幅度的人员变动，但整体的战术打法较为成熟，比赛中虽然场面不占优势，但能保持稳固的防守和持续的反击力度，最终以1:0击败对手。爆冷击败墨超总冠军后，拿加沙各项赛事已经连续13场保持不败并持续斩获进球，球队均衡的攻守体系保证了成绩的稳定，球员的士气和信心均处于高昂值。拿加沙的主场成绩上佳，各项赛事连续10个主场保持获得进球，其中最近7场保持不败并且持续能在下半场得分的战绩，球队借助强大的主场气势往往能打出后发制敌的优秀特点。内卡萨更换了新帅，目前由瑞安奴顶替阿巴斯领军，球员方面从阿根廷的签下了法根度卡斯度，还有来自帕丘卡的维拿彭度，以及苏超格拉斯哥流浪中场佩尼亚。后卫利希诺夫斯基转会蓝十字。\r\n12、蓝十字（联赛5胜7平5负，积22分；进22球，失18球；主场3胜4平2负，进10球，失5球；客场2胜3平3负，进12球，失13球）\r\n蓝十字（阿苏尔）上赛季在墨超秋季联赛获得第12名，成绩虽然相比春季有些下降，但球队保持住较好的攻守均衡体系，外界认为蓝十字具备成为新赛季黑马的属性。在休战期中，蓝十字和同属墨超的蒙特瑞进行了一场友谊赛，虽然球队最终以0:1落败，部分球员得到了适当的比赛磨炼，为新赛季首战作好了较为充分的准备。蓝十字在主场的成绩尚可，上赛季最后阶段连续4轮联赛主场保持不败并持续获得进球，而且能连续4战都能在半场前零封对手，展现出较强的主场气势。蓝十字虽然名气和人员配置方面均高于普埃布拉，但自从2014年之后就没有在主场击败过对手，球队目前积极的备战就是希望能在首战打破近年来的宿命，球员应该具备十足的战意。蓝十字从1997年之后就没有尝试到联赛冠军滋味，球迷希望球队至少能进入季后赛的队列，不过近年来进攻乏力一直是球队的重要问题，新晋加盟的前锋卡拉基奥被寄予厚望能带来改善。蓝十字的新援包括从阿特拿斯来投的卡拉基奥、从莱昂加盟的埃尔南德斯，蒂华纳队长阿吉拉尔、拉努斯中场马尔科内以及从哥伦比亚回归墨超的云泰利亚，内卡萨后卫利希诺夫斯基，中场球员席尔瓦转会阿根廷独立、前锋莫拉转会美洲狮、墨西哥前锋费耶罗离队加盟了莫雷利亚。\r\n13、莱昂（联赛6胜4平7负，积22分；进24球，失33球；主场3胜3平2负，进14球，失13球；客场3胜1平5负，进10球，失20球）\r\n莱昂是上赛季墨超秋季联赛第13名，同时以33个失球成为联赛防守力最弱的队伍，新赛季是否保持以攻代守的战术打法将成为最大的疑问，球队在新赛季的目标还是以冲击季后赛而主。在联赛休战期，莱昂进行了两场友谊赛来热身，分别对阵了同属墨超的的帕丘卡和瓜达拉哈拉，但球队两战未尝一胜而呈现较为低迷的竞技状态，此役作客泰格雷斯恐依然属于下风一方。不过莱昂在双方最近5次交锋中，有4战保持不败并持续每场均能斩获进球，较好的对阵成绩可令球员占据一定的心理优势。莱昂上赛季无缘季后赛，其中客场表现尤为差劣，9场输掉5战并且场均失球超过2个，是上赛季墨超防守最差的队伍之一，本赛季从哥伦比亚引入中卫威廉迪施路就是希望能加强防守端的厚度。莱昂从哥伦比亚的圣达菲独立引入了中坚威廉迪施路，还有来自帕丘卡的门将鲁多科哥达，中场赫达马斯高路、米基尔华拿基思亦双双从萨卡特卡斯加盟。\r\n14、克雷塔罗（联赛4胜6平7负，积18分；进13球，失18球；主场1胜4平3负，进5球，失8球；客场3胜2平4负，进8球，失10球）\r\n克雷塔罗上赛季在墨超以第14名身份结束秋季联赛，相比阿特拿斯仅仅是净胜球较好的优势，侧面反映出球队的整体实力和阿特拿斯没有太大的优势。而且参考上赛季的数据，克雷塔罗是墨超联赛进攻力第二差的队伍，不过攻守体系较为均衡，善用防守反击战术。克雷塔罗在7月份进入联赛备战，球队先后迎战了来自哥斯达黎加两支队伍并保持不败之身，呈现出良好的竞技状态，对于球员进入新赛季增添了信心。不过值得忧虑的一点是，克雷塔罗两场热身赛均在主场进行，球员没有经过客场作战的磨炼，而且球队上赛季末连续6场各项赛事的客战均未尝一胜，反映出较为疲弱的异地作战能力。克雷塔罗目前由新帅佩尼迪领军，球队阵容有前锋韦拿华和中卫洛华拉迪加盟，马天尼斯、简迪路和云泰利亚则离队。\r\n15、阿特拉斯（联赛5胜3平9负，积18分；进17球，失26球；主场5胜1平3负，进11球，失10球；客场0胜2平6负，进6球，失16球）\r\n阿特拿斯上赛季在墨超秋季联赛以第15位排名收官而无法进入季后赛，而且球队以26个失球成为联赛防守第4弱的队伍，新赛季的目标将是改善防线和夺冠进入季后赛的资格。虽然上赛季的成绩不佳，但阿特拿斯在最后阶段呈现出极强的竞争力，球队连续5轮保持不败并持续4战斩获进球，攻击线上有不俗的改善，新赛季开启是否能延续积极进攻的战术风格值得期待。不过阿特拿斯在休赛期并没有进行任何的热身赛来磨合阵容，球员在接近3个月的时间内缺乏比赛锻炼恐难以保持较高的竞技水准。较为有利的一点是，阿特拿斯近年来连续5次对阵克雷塔罗均能保持不败并斩获4胜，而且每场持续获得进球，另外球队最近的4个主场同样保持全胜，球员可借此占据较好的心理优势。阿特拿斯新赛季签入了冈萨利斯、利瓦洛、安达迪、戴亚斯、艾华利斯等多名实力球员，老将马天尼斯已经选择退役，而前锋卡拉基奥则转会离开。\r\n16、韦拉克鲁斯（联赛5胜3平9负，积18分；进12球，失25球；主场2胜2平5负，进8球，失12球；客场3胜1平4负，进4球，失13球）\r\n韦拉克鲁斯（华拉古斯）上赛季在墨超的成绩不佳，春秋两赛季均是倒数三名之内，在总体系数上属于降班的热门，球队需要在新赛季中夺取较好的成绩才能摆脱明年的降班威胁。从上赛季的秋季联赛中看到，华拉古斯攻守两端均没有太大的改善，场均进球数不足1个以及场均失球超过1.5球的数据表现来看，球队依然是进攻乏力并防守不稳的情况。但是华拉古斯在赛季前还是没有进行任何的友谊赛来磨合阵容，球员在接近3个月的时间无比赛的情况下能否保持足够的竞技状态将成为疑问。华拉古斯由克雷塔罗签入中场球员洛利加，另外租借了右后卫佩雷斯，同时由智利奥达斯罗致了翼锋卡拉斯高，阵容仅有左后卫洛迪古斯离队。\r\n17、瓜达拉哈拉（联赛3胜6平8负，积18分；进14球，失24球；主场0胜3平5负，进4球，失12球；客场3胜3平3负，进10球，失12球）\r\n瓜达拉哈拉是墨超中下游实力的队伍，上赛季在美冠杯和墨超的双线作战下以排名倒数第二名结束秋季联赛，而美冠杯也夭折于决赛，球队受到双重打击，新赛季将会为争取较好的联赛排名为目标。在休战期间，瓜达拉哈拉仅仅在7月初进行了两场友谊赛锻炼，分别对阵莱昂和拿加沙均未尝胜果，球队的状态未如理想。参考上个秋季联赛的情况，瓜达拉哈拉虽然防守端维持相对稳定，但进攻端则呈现乏力的问题，赛季场均进球数不足1个而成为墨超进攻力倒数第三弱的队伍。瓜达拉哈拉换上新主帅卡度素，今年夏天从莫雷利亚签下了施佩维达，又向普马斯借用了云兰坚，波尔图年轻门将古迪尼奥回归球队。但另一方面，中卫沙歇度转战欧洲联赛、阿拉尼斯转会赫塔菲，中场大将皮萨罗则改投蒙特雷，施斯路斯因伤也无法出战。\r\n18、普埃布拉大学（联赛2胜3平12负，积18分；进18球，失33球；主场2胜2平5负，进10球，失9球；客场0胜1平7负，进8球，失24球）\r\n普埃布拉大学（罗伯士）上赛季在墨超球季联赛积分排名垫底，同时以33个失球成为联赛防守力最差的队伍，新赛季以争夺较好的排名而避免降级的威胁。罗伯士上一场赛事在友谊赛中对阵瓦哈卡，球队坐镇主场迎战乙级的对手依然难以占据场面优势，虽然控球率和射门机会较多，但防守端的失漏严重，比赛结束前的注意力也不太集中，最终以2:3落败收场。在新联赛开始之前唯一的一场友谊赛失利后，瓦哈卡各项赛事遭遇6连败，连续不胜的战绩延续到10场，球队的士气和信心均遭遇较大打击而处于低潮期。而且瓦哈卡的客场成绩同样差劣，球队各项赛事已经连续12个客场不胜并输掉10战，场均失球数超过2个，最近的一场客胜要追溯到去年11月，球队似乎已经习惯在异地输球，球员恐缺乏足够的信心和斗志，形势上无疑属于下风一方。罗伯士目前有新帅柏兰西亚领军，新援有来自土耳其前锋卡森李察士，还有迪祖亚拿的米高奥路斯高、普埃布拉的洛查斯。\r\n', '10', null);
INSERT INTO `posts` VALUES ('47', null, '墨西哥足球联赛——又一个在球场硬件上碾压中超的联赛', '墨西哥超级联赛是墨西哥足球联赛系统的最高级别。墨西哥超级联赛有18支球队，每年的赛季分为秋季（即首阶段: 2017年下半年）联赛和春季（即次阶段: 2018年上半年），各有独立冠军。\r\n常规赛的前八名进入季后赛，通过季后赛，决定降级名额和参加北美冠军杯的名额。\r\n说完了赛制说球场，墨西哥球队历史可能不如欧洲，但很多都有50-70年历史，短的也有30年，因为历史较长，虽然经济中等，但球场硬件应该算中上，碾压中超是没问题。\r\n美洲狮（Pumas UNAM Mexiko）\r\n球场：Estadio Olímpico Universitario\r\n容量：63186\r\n图片\r\n阿特拉斯（Club Atlas de Guadalajara）\r\n球场：Estadio Jalisco\r\n容量：56713\r\n图片\r\n蒙特雷（Club de Fútbol Monterrey）\r\n球场：Estadio BBVA Bancomer\r\n容量：53500\r\n图片\r\n普埃布拉（Puebla F.C.）\r\n球场：Estadio Cuauhtémoc\r\n容量：51726\r\n图片\r\n瓜达拉哈拉（Club Deportivo Guadalajara ）\r\n球场：Estadio Akron\r\n容量：49850\r\n图片\r\n墨西哥老虎（Tigres UANL）\r\n球场：Estadio Universitario\r\n容量：39997\r\n图片\r\n莫雷利亚\r\n（Club Atlético Monarcas Morelia）\r\n球场：Estadio Morelos\r\n容量：38869\r\n图片\r\n蓝十字\r\n（Cruz Azul de Mexico）\r\n球场：Estadio Azul\r\n容量：35161\r\n图片\r\n克雷塔罗（Querétaro F.C.）\r\n球场：Estadio Corregidora\r\n容量：34130\r\n图片\r\n莱昂（Club León）\r\n球场：Estadio León\r\n容量：31297\r\n图片\r\n托卢卡竞技（TolucaCD）\r\n球场：Estadio Nemesio Díez\r\n容量：30000\r\n图片\r\n桑托斯拉古纳（Club Santos Laguna）\r\n球场：Estadio Territorio Santos Modelo Corona\r\n容量：30000\r\n图片\r\n蒂华纳（Club Tijuana）\r\n球场：Estadio Caliente\r\n容量：27333\r\n图片\r\n维拉克鲁斯（Tiburones Veracruz）\r\n球场：Estadio Luís de la Fuente\r\n容量：26318\r\n图片\r\n内卡萨（Club Necaxa）\r\n球场：Estadio Victoria\r\n容量：25494\r\n图片\r\n帕丘卡（Pachuca CF）\r\n球场：Estadio Miguel Hidalgo\r\n容量：25000\r\n图片\r\n墨西哥美洲（Club de Futbol América）\r\n球场：Estadio Azteca\r\n容量：87000\r\n这就是2015年世俱杯恒大绝杀淘汰的那支球队，这球场比恒大主场霸气多了\r\n图片\r\n', '10', null);
INSERT INTO `posts` VALUES ('48', null, '墨西哥球队获梅西INS关注！向对手炫耀：你们无法取得的成就', '近日，巴萨巨星梅西不知道出于何故，突然在个人INS关注列表中，新增了一个陌生的俱乐部，来自的墨西哥足球联赛的阿特拉斯，于是，这一举动突然在墨西哥成为了大新闻。\r\n图片\r\n这支墨西哥联赛球队，自1951年以来，从来没有染指过联赛冠军，这让他们的球迷们长期饱受煎熬，而球队的成绩一直都保留在联赛中游水平，很难引起他国球迷关注。然而，就是这样一直不温不火的俱乐部，却莫名收到当今足坛巨星梅西特别关注，俱乐部上下实在有点受宠若惊，阿特拉斯本周四宣称：“他们取得了其他墨西哥俱乐部无法取得的成就：梅西在INS上面关注了他们。”\r\n值得一提的是，梅西INS目前关注的账户只有219个，其中俱乐部官方账号更是少之又少，包括巴萨、曼城、切尔西这样的豪门，当然还有梅西的母队老男孩，而阿特拉斯的“乱入”确实有点摸不着头脑。\r\n不过需要指出的是，阿特拉斯目前的体育总监拉斐尔-马克斯，是墨西哥足球的传奇人物，当年也在巴萨效力多个赛季，与梅西也有队友之谊，或许是出于他的面子，梅西关注了这家俱乐部。此外，阿特拉斯的主教练奥约斯，他是梅西在巴塞罗那B队时的教练。\r\n此外，阿特拉斯还借机“大肆炒作”，在其INS主页上打出了“欢迎梅西加入红黑家庭”的标题，随后解释道，梅西并没有加盟这家处于困境的俱乐部，只是在INS上面关注了他们。\r\n', '10', null);
INSERT INTO `posts` VALUES ('49', null, '墨西哥联赛发生惨案：暴徒冲进球场连开百枪 1球员丧生', '腾讯体育8月15日讯 根据《太阳报》的最新消息，在墨西哥一场业余联赛的比赛中发生了一起悲剧，比赛进行时，有20多名暴徒冲进球场实施抢劫，除了洗劫球迷的财物之外，他们还冲入球场连开100枪，球员也因此而遭殃，一名球员直接被开枪打死。\r\n墨西哥业余联赛发生惨剧\r\n据了解，这群暴徒手持步枪冲入球场，他们抢劫了球迷的手机、钱包，还绑架了一位人质。此外，他们还搜寻一名9号球员，并当场射杀了他。这名受害者还不到30岁，脸朝下倒在血泊中，当场死亡。随后，大约有40名警察赶到现场，在控制住局面之后在现场发现了近百个子弹壳。\r\n此后，警方发现了被绑架的人质，后者也足够幸运。让人哭笑不得的是，这群暴徒是因为绑架绑错了人，才最终将其释放的。当地警方的一位发言人也在随后接受了媒体的采访，他表示这起谋杀和一天前在一个加油站的冲突有关。\r\n值得一提的是，在墨西哥的业余联赛中，这已经不是第一次发生类似事件。去年10月29日，一伙暴徒在墨西哥格雷罗州奇尔潘辛戈市的一场业余足球比赛中杀害至少2人。消息称，一伙武装人员直接在足球场上向球员开枪，造成3人受伤，其中2人死亡。\r\n另一方面，在2016年，在墨西哥一场业余足球联赛中，裁判竟然被球员当场打死了，而这场悲剧的起因竟然源于一张红牌。当时，当地俱乐部罗霍戈麦斯球队的一名球员因不满主裁判的红牌判罚，一拳将裁判打晕在地，裁判当即失去知觉，最终抢救无效死亡。\r\n很显然的是，这样的暴乱事件频发，这也让墨西哥业余联赛的安全问题让人感到担忧，在这样一个球迷和球员的生命安全都无法得到保证的联赛中，他们如何才能将最好的自己展示在赛场上呢？\r\n（加加布鲁根）\r\n', '10', null);
INSERT INTO `posts` VALUES ('50', null, '马拉多纳再度出山 执教墨西哥球队', '图片\r\n北京时间9月7日早，墨西哥球队多拉多斯官方宣布马拉多纳上任，阿根廷球王将担任该俱乐部的教练。据悉，多拉多斯可能只是球王的证明自己的跳板，执教过程中如果球队成绩不错，球王可能直接升级出任墨西哥超级联赛球队蒂华纳的主帅。\r\n马拉多纳执教生涯就是个笑话\r\n作为球员，马拉多纳是当之无愧的球王，贝肯鲍尔、齐达内、克林斯曼等人都对其顶礼膜拜，百度百科上也称其为二十世纪最伟大的足球运动员。但作为教练，老马的成绩并不尽如人意，外媒甚至一致认为，教练马拉多纳执教水平不及格。当然这绝对不是媒体刻意的贬低，因为作为教练，老马取得的成绩用“惨烈”二字形容，一点都不过分。\r\n1994年10月，没有教练员资格证书的马拉多纳开启了他的教练生涯，在老马离开的时候，只留下了1胜6平5负的成绩，也是从这个赛季开始，这个名叫曼迪尤的球队一蹶不振，从阿根廷甲级联赛降到了乙级联赛。\r\n然而在绿茵场上一项要强的老马怎么会就此罢休？1995年2月，依旧没有教练资格的老马执教竞技队，打算一雪前耻的他用了仅仅不到三个月的时间，就被俱乐部罢免，而这期间，老马共带领球队打了11场比赛，仅仅取得了2胜6平3负的战绩。\r\n可能之前的执教成绩太过深入人心，直到2001年，老马才获得了阿根廷足协颁发的足球教练员执教资格证书。并于2008年11月被聘为阿根廷国家队主教练。\r\n然而，足球踢得好的马拉多纳是一个好教练吗？回想2010年南非世界杯，那一届的阿根廷队有多逆天。中后场意甲罗马的布尔迪索和国米的萨穆埃尔（当年国米刚拿了三冠王）还有马斯切拉若这样的中场铁闸（当时的小马哥是世界排名前三的防守型中场）连替补席都是帕斯托雷和贝隆这样响当当的狠角色。\r\n进攻阵容呢？更是群星闪耀，巴萨当家前锋小跳蚤梅西梅球王，曼城当家主力前锋阿奎罗，皇马主力前锋小烟枪伊瓜因，野兽“特维斯”，还有天使迪玛利亚。不是巨星就是一流球星，而且都在职业生涯的巅峰期！这逆天阵容，闭着眼也能把大力神杯拿回去。结果，阿根廷足球“上帝”马拉多纳当主教练，对阵德国0比4被血洗，阿根廷几乎是被德国碾压式地摧毁。\r\n马球王能否拯救即将降级的球队？\r\n国家队失意的马拉多纳于2011年，成为了阿联酋球队阿尔瓦斯的主教练，但是没等到两年的合约到期，老马又一次失业了，因为在他的带领下，球队在联赛中仅拿到第八名，在海湾杯决赛中点球失利，在总统杯和酋长杯中都止步4强。\r\n去年5月，马拉多纳在阿联酋第二级别联赛阿尔富贾伊拉走马上任，但联赛最后一轮比赛，俱乐部在取胜就能升级的情况下与对手战平，痛失直接升级的资格。赛后，老马也因此下课。\r\n如今，时隔132天的马拉多纳重拾教鞭，这次他执教的球队多拉多斯曾是瓜迪奥拉球员时代最后效力的一家俱乐部。显然，如今征战于墨西哥第二级别联赛的多拉多斯早已风光不再，联赛排名第13名，本赛季还没有赢过球，距离降级区仅差两分。\r\n今夏率领皇马夺得欧冠三连霸的齐达内曾经评价马拉多纳是历史第一球员，不知这样一个集最好的球员与最差的教练于一身的老马能否拯救即将降级的多拉多斯球队，打破往日的执教“魔咒”？\r\n本报综合', '10', null);
INSERT INTO `posts` VALUES ('51', null, '澳超联赛将在未来两个赛季连续“扩军”，每赛季各增加一支队', '新华社堪培拉12月13日电（记者岳东兴）澳大利亚足协13日宣布，澳超（澳男足顶级职业联赛）在未来两个赛季将连续“扩军”，每赛季各增加一支球队。\r\n图片x2\r\n澳足协13日通过电子邮件告知媒体：从2019-2020赛季开始，西墨尔本集团俱乐部将获得准入执照，加入澳超；从2020-2021赛季开始，麦克阿瑟西南悉尼俱乐部将加入澳超。这样，澳超联赛在目前10支球队的参赛规模上，按计划将逐步增加至12支。\r\n尼库还特别提出，澳首都堪培拉的球队虽然此次未能获得执照，但澳足协还会将这一地区的球队看作未来“扩军”的备选之一，因为该地区有很大的足球发展潜力。\r\n澳足协首席执行官大卫·盖洛普表示，西墨尔本集团此次在竞争中胜出的一个原因是，他们将要建设全澳第一个足球运动专属的专业球场，这将有助于推动足球产业发展。而麦克阿瑟西南悉尼俱乐部的优势是，该俱乐部辐射的周边范围里大概有50支草根球队，足球人口众多。\r\n澳超联赛创立于2004年，目前有10支球队参赛，其中9支来自澳大利亚，1支来自新西兰。与主流足球联赛不同，澳超联赛没有升降级制度，是一个封闭的联赛，每一个赛季分为常规赛和总决赛进行。\r\n', '11', null);
INSERT INTO `posts` VALUES ('52', null, '澳超颇具特色即将开幕 吸引本田圭佑+博尔特的联赛有何魔力？', '本周末，2018-19赛季澳大利亚足球超级联赛将会拉开新赛季的帷幕，对于很多中国球迷来说，澳超算是一个既熟悉又陌生的联赛，不少中国球员和国际球星曾在澳超征战，亚冠层面亦频频上演中澳球队对决。为了提升球迷们的观球体验，K球APP将在新赛季独家视频直播澳超联赛，并在未来几天从各种角度介绍、解析、盘点澳超联赛。\r\n图片x3\r\n早在上世纪70年代，澳大利亚即创办了全国足球联赛（NSL），但由于运营不善，NSL始终处于不温不火的状态。2004年，澳超联赛正式成立，组织运营方式跟美职联相似，由超级联盟负责运营，设定工资帽制度，没有升降级。这也直接为他们带来了可持续发展的模式，球队之间互不攀比，缩小了各队之间的差距，增强了比赛竞争力，也就直接促进了赞助商和转播商的关注和投资。\r\n澳超成立之初只有8支球队，如今扩军为10队，其中9支来自澳大利亚，1支来自新西兰。澳超联赛跟美职联赛制也有一些类似，分为常规赛和季后赛，常规赛10支球队进行3循环比赛，每支球队常规赛要踢27场比赛。最终排名靠前的6支球队进入季后赛，前2名直接进入半决赛。常规赛和总决赛的冠军都能获得直接参加亚冠的资格。而在2008年，阿德莱德联曾拿到亚冠亚军，2014年西悉尼流浪者更是问鼎亚冠冠军。\r\n无论阿德莱德联还是西悉尼流浪者，冲击亚冠的资金代价都不算大，这是得益于澳超有着严格的工资帽制度。上赛季，每支澳超球队的工资总额上限为292.8万美元，最低工资限额为61287美元。这笔工资总额限于注册20-23名球员。换而言之，澳超球员的平均年薪很低，跟中超相比肯定有着云泥之别。不过，既然运营一支澳超球队一年大概费用只有700万—1000万美元左右，这笔钱甚至不够引进一位中国国脚，那么不少球队就肯定可以实现盈余，毕竟除去澳大利亚足协每年支付的联赛分成以外，俱乐部还有广告、球票、俱乐部周边产品，以及赞助费收入。\r\n设定工资帽的初衷是确保财政健康+减负，但凡事也都有两面性，这也直接导致高水准球员不断流失，毕竟在绝大多数职业球员看来，踢的好与赚大钱之间理应存在等号，澳超给不了的待遇，中超完全能够满足，很多澳大利亚国脚近年来加盟中超就是这个原因。当然，工资帽也并非是一条死规定，补充条款中已经注明，每队可以签下两名不受工资帽约束的高薪大牌，前提是该球员有着极高的国际影响力，今年与墨尔本胜利签约的日本球星本田圭佑就属于这种情况，年薪是290万澳元（约合185万欧元），比球队其他球员年薪的总和还要多出了80万澳元。\r\n澳超球队均无本队专属的训练基地，基本上都是租用大学或体育场外场进行训练，青训投入也基本上为零，通过支付培养费用从一些专门的青训机构引入年轻球员。这进一步减轻了财政负担。不过，无需高投入的澳超各队，每年光是门票收入就会非常可观，成立元年的上座率就达到了场均超过1万人，而且一直稳定在这一水准。拥有超高上座率的前提当然是球场体量够大，事实上也的确如此，墨尔本胜利的奇迹体育场（56347），悉尼FC的板球体育场（48000），西悉尼流浪者的澳新银行球场（84000），布里斯班狮吼的森科普体育场（52500）支撑超高票房完全没有压力。\r\n', '11', null);
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
