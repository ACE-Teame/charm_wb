/*
Navicat MySQL Data Transfer

Source Server         : udm167856696.my3w.com
Source Server Version : 50148
Source Host           : udm167856696.my3w.com:3306
Source Database       : udm167856696_db

Target Server Type    : MYSQL
Target Server Version : 50148
File Encoding         : 65001

Date: 2017-09-16 00:31:22
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

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

INSERT INTO `common` VALUES ('10', '6', '中国邮政银行', 'bank');
INSERT INTO `common` VALUES ('11', '7', '中国银行', 'bank');
INSERT INTO `common` VALUES ('12', '8', '平安银行', 'bank');
INSERT INTO `common` VALUES ('13', '9', '光大银行', 'bank');
INSERT INTO `common` VALUES ('14', '10', '浦发银行', 'bank');
INSERT INTO `common` VALUES ('15', '11', '中兴银行', 'bank');
INSERT INTO `common` VALUES ('16', '12', '华夏银行', 'bank');
INSERT INTO `common` VALUES ('17', '13', '中国兴业银行', 'bank');
INSERT INTO `common` VALUES ('18', '14', '中国招商银行', 'bank');
INSERT INTO `common` VALUES ('8', '15', '15万', 'quato');
INSERT INTO `common` VALUES ('9', '20', '20万', 'quato');
INSERT INTO `common` VALUES ('19', '25', '25万', 'quato');
INSERT INTO `common` VALUES ('20', '30', '30万', 'quato');
INSERT INTO `common` VALUES ('21', '35', '35万', 'quato');
INSERT INTO `common` VALUES ('22', '40', '40万', 'quato');
INSERT INTO `common` VALUES ('23', '45', '45万', 'quato');
INSERT INTO `common` VALUES ('24', '50', '50万', 'quato');
INSERT INTO `common` VALUES ('25', '100', '100万', 'quato');

