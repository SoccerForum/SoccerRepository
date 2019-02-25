/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : soccerforum

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-02-25 16:28:33
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
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

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
