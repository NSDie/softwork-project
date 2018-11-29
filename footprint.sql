/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : footprint

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-11-16 19:14:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `photo`
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `praiseNum` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `visible` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES ('1', '1', null, null, 'http://foot.yyf-blog.com/48766d8108244e8bb4ed4a4e8062d7c3', '1542198417989', '0', '测试', null, '0');

-- ----------------------------
-- Table structure for `wechat_user`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_user`;
CREATE TABLE `wechat_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(255) DEFAULT NULL,
  `nickName` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `avatarUrl` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of wechat_user
-- ----------------------------
INSERT INTO `wechat_user` VALUES ('1', 'oi4T64i99AgPnFrPl4SEz9oaOKFo', 'Hlx', '1', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKPt3hefZ5CMYbCiag7icR4vUKffpian3Pbtovm54TE5hO2FfY7RTLCDcrSr8EU60hfibnw05LHEXICeA/132', 'China', 'Fujian', 'Xiamen', 'zh_CN', '1538474959');
