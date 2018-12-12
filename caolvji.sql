/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : caolvji

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-11-30 16:05:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `photo`
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `longitude` double(20,10) DEFAULT NULL,
  `latitude` double(20,10) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `praiseNum` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `visible` int(11) DEFAULT NULL,
  `photoTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_user`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_user`;
CREATE TABLE `wechat_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(255) DEFAULT NULL,
  `sessionId` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `avatarUrl` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of wechat_user
-- ----------------------------
