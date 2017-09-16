/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : charm_wb

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-09-16 13:43:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `common`
-- ----------------------------
DROP TABLE IF EXISTS `common`;
CREATE TABLE `common` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` int(3) NOT NULL,
  `val` varchar(36) NOT NULL,
  `type` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common
-- ----------------------------
INSERT INTO `common` VALUES ('1', '1', '中国建设银行', 'bank');
INSERT INTO `common` VALUES ('2', '2', '中国农业银行', 'bank');
INSERT INTO `common` VALUES ('3', '3', '中国银行', 'bank');
INSERT INTO `common` VALUES ('4', '4', '中国工商银行', 'bank');
INSERT INTO `common` VALUES ('5', '5', '中国交通银行', 'bank');
INSERT INTO `common` VALUES ('6', '5', '5万', 'quato');
INSERT INTO `common` VALUES ('7', '10', '10万', 'quato');
INSERT INTO `common` VALUES ('8', '15', '15万', 'quato');
INSERT INTO `common` VALUES ('9', '20', '20万', 'quato');
INSERT INTO `common` VALUES ('10', '6', '中国邮政银行', 'bank');
INSERT INTO `common` VALUES ('11', '7', '中国银行', 'bank');
INSERT INTO `common` VALUES ('12', '8', '平安银行', 'bank');
INSERT INTO `common` VALUES ('13', '9', '光大银行', 'bank');
INSERT INTO `common` VALUES ('14', '10', '浦发银行', 'bank');
INSERT INTO `common` VALUES ('15', '11', '中兴银行', 'bank');
INSERT INTO `common` VALUES ('16', '12', '华夏银行', 'bank');
INSERT INTO `common` VALUES ('17', '13', '中国兴业银行', 'bank');
INSERT INTO `common` VALUES ('18', '14', '中国招商银行', 'bank');
INSERT INTO `common` VALUES ('19', '25', '25万', 'quato');
INSERT INTO `common` VALUES ('20', '30', '30万', 'quato');
INSERT INTO `common` VALUES ('21', '35', '35万', 'quato');
INSERT INTO `common` VALUES ('22', '40', '40万', 'quato');
INSERT INTO `common` VALUES ('23', '45', '45万', 'quato');
INSERT INTO `common` VALUES ('24', '50', '50万', 'quato');
INSERT INTO `common` VALUES ('25', '100', '100万', 'quato');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `cardid` varchar(36) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `bank` tinyint(1) NOT NULL,
  `quato` tinyint(1) NOT NULL,
  `time` int(10) NOT NULL,
  `ip` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('3', '陈先生', '123232323', '13123123123', '广东', '3', '50', '1505481909', '127.0.0.1');
INSERT INTO `order` VALUES ('4', '王先生', '1232323', '333334444444', '广东', '2', '50', '1505486619', '127.0.0.1');
INSERT INTO `order` VALUES ('5', '1', '2147483647', '1', '1', '1', '5', '1505492145', '127.0.0.1');
INSERT INTO `order` VALUES ('6', '陈晨', '2147483647', '410183199208283817', '广东', '14', '5', '1505493840', '127.0.0.1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(128) NOT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) DEFAULT NULL,
  `login_time` int(10) DEFAULT NULL,
  `ip` varchar(48) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '$2y$10$BMX/JDTSpXLSHZ/kjUjSmu3JyepTKS4UrTQIGD8NG0Qur.MaZQakC', '1500190776', '1505488344', '1505537895', '127.0.0.1', '1');
