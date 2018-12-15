/*
Navicat MySQL Data Transfer

Source Server         : tencent
Source Server Version : 50557
Source Host           : 123.207.26.208:3306
Source Database       : caolvji

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2018-12-15 22:12:47
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
) ENGINE=InnoDB AUTO_INCREMENT=412 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES ('11', '6', '119.1923769722', '26.0638530000', 'http://foot.yyf-blog.com/f8f3c169a34b4fec9f0f5610d82398c7', '1543569441159', '0', '福州大学', '福建省', '福州市', null, '0', null);
INSERT INTO `photo` VALUES ('12', '6', '119.1923769722', '26.0638530000', 'http://foot.yyf-blog.com/94acb0203bc945dbb478088df09d6851', '1543569490310', '0', '福州大学', '福建省', '福州市', null, '0', null);
INSERT INTO `photo` VALUES ('13', '6', '121.3123649722', '30.7292880000', 'http://foot.yyf-blog.com/2c9e50e5104f4ef1b913906def67c24b', '1543569526182', '0', '福州大学', '上海市', '上海市', null, '0', null);
INSERT INTO `photo` VALUES ('14', '9', '119.1876180000', '26.0563010000', 'http://foot.yyf-blog.com/a7333e5fd97347adaea94c731244c93b', '1543569652254', '0', '福州大学', '福建省', '福州市', null, '0', null);
INSERT INTO `photo` VALUES ('15', '5', '119.1876180000', '26.0563010000', 'http://foot.yyf-blog.com/1dd341f01d8c418da9f2bd6954d9f9d6', '1543569782574', '0', '福州大学', '福建省', '福州市', null, '0', null);
INSERT INTO `photo` VALUES ('16', '8', '119.1960916667', '26.0652083333', 'http://foot.yyf-blog.com/4b8fd15916bf437eb452ca1d442c50b2', '1543570149660', '0', '福州大学', '福建省', '福州市', null, '0', null);
INSERT INTO `photo` VALUES ('17', '7', null, null, 'http://foot.yyf-blog.com/528d954e001041a5b61981a90c1d7cfe', '1543573901194', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('18', '7', '119.1924039722', '26.0640450000', 'http://foot.yyf-blog.com/b09b2d7af9634f6fb6908cccca806e89', '1543573929225', '0', '福州大学', '福建省', '福州市', null, '0', null);
INSERT INTO `photo` VALUES ('19', '6', null, null, 'http://foot.yyf-blog.com/f33f24aa6ded472db7e51e5e76b1f622', '1543590320881', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('20', '6', null, null, 'http://foot.yyf-blog.com/e0d9ee85e3a34f6f920efe262310f1fa', '1543590350635', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('21', '6', null, null, 'http://foot.yyf-blog.com/4b9d294430e3441c865c489cd1530d2e', '1543590405393', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('22', '6', '120.4899368056', '30.0473937778', 'http://foot.yyf-blog.com/ee09db5053124fb3a2df04e0a2da4d8d', '1543590441878', '0', '福州大学', '浙江省', '绍兴市', null, '0', null);
INSERT INTO `photo` VALUES ('23', '6', null, null, 'http://foot.yyf-blog.com/f9cc7b9a7f08407b825b8deddf8df3c8', '1543590529975', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('24', '6', null, null, 'http://foot.yyf-blog.com/6166593fe2744af0a7e236ee93f0baf7', '1543590631947', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('25', '9', '120.5863659722', '27.6940290000', 'http://foot.yyf-blog.com/510f78dfcad04cba90c90b201dcd923e', '1543590732684', '0', '福州大学', '浙江省', '温州市', null, '0', null);
INSERT INTO `photo` VALUES ('26', '6', null, null, 'http://foot.yyf-blog.com/6fd132ab0587469e9c62ff4d494d7e05', '1543590738035', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('27', '9', '119.7819760000', '25.4675830000', 'http://foot.yyf-blog.com/8f551e5fa1f64fee9edce6c2d4560f6b', '1543590784122', '0', '福州大学', '福建省', '福州市', null, '0', null);
INSERT INTO `photo` VALUES ('28', '9', '119.3119259722', '26.0968429722', 'http://foot.yyf-blog.com/d01c52b889714feaaac41171aaca1650', '1543590815407', '0', '福州大学', '福建省', '福州市', null, '0', null);
INSERT INTO `photo` VALUES ('29', '6', null, null, 'http://foot.yyf-blog.com/2b24ffeb006949dc918bfa0861b120c0', '1543590835726', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('30', '6', null, null, 'http://foot.yyf-blog.com/9da027552afe4b12a9c1a8bdb972acfd', '1543590850340', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('31', '6', null, null, 'http://foot.yyf-blog.com/a8e0064afc7e40d783bdc9941511bcbe', '1543590885023', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('32', '6', null, null, 'http://foot.yyf-blog.com/896494f26aac4fce8956ab97cd8f0fb7', '1543590921558', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('33', '6', '121.3237929722', '30.7901200000', 'http://foot.yyf-blog.com/c4505e55086f40c9a546a99519f1b105', '1543591177782', '0', '福州大学', '上海市', '上海市', null, '0', null);
INSERT INTO `photo` VALUES ('34', '8', '119.1885083333', '26.0535833333', 'http://foot.yyf-blog.com/2e4d9d3c624d43dc8cffc99b94ee5903', '1543593027259', '0', '福州大学', '福建省', '福州市', '福建省福州市闽侯县源江路', '0', null);
INSERT INTO `photo` VALUES ('35', '5', null, null, 'http://foot.yyf-blog.com/6696086d4e884d97a8524ca43b5e8683', '1543593098899', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('36', '5', null, null, 'http://foot.yyf-blog.com/f7f46d50731b4b21929d957ac0daa6e5', '1543593185188', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('37', '5', null, null, 'http://foot.yyf-blog.com/6aaaba63d1b44ca9adb7ea2b599104d9', '1543593295912', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('38', '5', null, null, 'http://foot.yyf-blog.com/f75bc7ab752e4030a956fc0f1abafda8', '1543594823988', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('39', '5', null, null, 'http://foot.yyf-blog.com/b3bc8858e7c047d9942fe59e4f697fdf', '1543594865067', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('40', '5', null, null, 'http://foot.yyf-blog.com/fb6ba33963cc4c68b6875b89da1dc1c0', '1543594876418', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('41', '5', null, null, 'http://foot.yyf-blog.com/aa49c43a4793442ca261d633a171462b', '1543594998564', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('42', '5', null, null, 'http://foot.yyf-blog.com/fa6f574e19ee4c67a25bfa8f5e5b1a96', '1543594999319', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('43', '5', null, null, 'http://foot.yyf-blog.com/9d6eb5cc540c4a35a70b1cf8cdae7522', '1543595000036', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('44', '5', null, null, 'http://foot.yyf-blog.com/2f82bdaabd9a4e3a9f81c9eb15b7459c', '1543595000817', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('45', '5', null, null, 'http://foot.yyf-blog.com/8774a6a47c464c5f9f0393e59fc52e18', '1543595001525', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('46', '5', null, null, 'http://foot.yyf-blog.com/e1096ae6ed3d4805b3bacf1d0916474b', '1543595002173', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('47', '5', null, null, 'http://foot.yyf-blog.com/ab307f36ba3947248c4b55358e8d6db8', '1543595002832', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('48', '5', null, null, 'http://foot.yyf-blog.com/33a4c417e1474a6ca4e8b927670ffa16', '1543595003392', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('49', '5', null, null, 'http://foot.yyf-blog.com/0eb2fc9803b64e10aa3f94a21da98396', '1543595004078', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('50', '5', null, null, 'http://foot.yyf-blog.com/6176337a1eb8456bb4bbe929d9011d85', '1543595090018', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('51', '5', null, null, 'http://foot.yyf-blog.com/b4a180a1ccef44759d4dbfc0504d208e', '1543595102319', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('52', '5', null, null, 'http://foot.yyf-blog.com/e22d50c62eb94f509c1c2a4ea30e5336', '1543595208681', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('53', '5', null, null, 'http://foot.yyf-blog.com/43f550b4102e4fdeabb298198b60d23f', '1543595221387', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('54', '5', '119.1876180000', '26.0563010000', 'http://foot.yyf-blog.com/4172316932ea46e4847d1e0223161d86', '1543595463526', '0', '福州大学', '福建省', '福州市', '福建省福州市闽侯县源江路', '0', null);
INSERT INTO `photo` VALUES ('55', '5', null, null, 'http://foot.yyf-blog.com/faca239a175145ca828aa25973f9f714', '1543596019643', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('56', '5', null, null, 'http://foot.yyf-blog.com/adfb265555374a52af21168f08a3639b', '1543596030376', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('57', '5', null, null, 'http://foot.yyf-blog.com/e1bb7c952ec24d5f82869f4e73f41908', '1543596459071', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('58', '5', null, null, 'http://foot.yyf-blog.com/953c16ec8c9943f1919c69769d0f5d4f', '1543596621610', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('59', '5', null, null, 'http://foot.yyf-blog.com/1c31e833575c4c35a7f454d38483c24e', '1543596633290', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('60', '5', null, null, 'http://foot.yyf-blog.com/94457078cbe64021bd8dd2ed8dc6bed1', '1543596646544', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('61', '5', null, null, 'http://foot.yyf-blog.com/bf2ef10f595b49c2ad46266648aafd90', '1543596646683', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('62', '5', null, null, 'http://foot.yyf-blog.com/5414c02780d047a4a3580b7896287a78', '1543596679279', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('63', '5', null, null, 'http://foot.yyf-blog.com/a0cb16afe4da4813be3f082555f4a0e7', '1543596703499', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('64', '5', null, null, 'http://foot.yyf-blog.com/8130d4329cc44b2598a8e37e4b5c6e2f', '1543596713395', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('65', '5', null, null, 'http://foot.yyf-blog.com/b9761edce23b4a118a6cd7f23f8087ad', '1543596805366', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('66', '5', null, null, 'http://foot.yyf-blog.com/08ef6f62a06949fda9450085e81ea6c2', '1543596852154', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('67', '5', null, null, 'http://foot.yyf-blog.com/894d532d3a1b44f8a0ce5485fe19897d', '1543596860867', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('68', '5', null, null, 'http://foot.yyf-blog.com/922279cf5c954bf1b821bfc8a73958e5', '1543596905877', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('69', '7', null, null, 'http://foot.yyf-blog.com/6d755c9009a94ce7b584653ed8bb5d64', '1543626894977', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('70', '7', '119.1926919722', '26.0640159722', 'http://foot.yyf-blog.com/2c1cd44dc59a44b6a002ecc9425c3e16', '1543626940232', '0', '福州大学', '福建省', '福州市', '福建省福州市闽侯县溪源宫路2号', '0', null);
INSERT INTO `photo` VALUES ('71', '9', null, null, 'http://foot.yyf-blog.com/00e2f89f89b64162b938ac7f3c8338b3', '1543629110628', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('72', '3', '119.1874629722', '26.0539270000', 'http://foot.yyf-blog.com/9c754aa58aff438bb6d004fb0752d352', '1543887001351', '0', '福州大学', '福建省', '福州市', '福建省福州市闽侯县源江路', '0', null);
INSERT INTO `photo` VALUES ('73', '3', '119.1927079722', '26.0637380000', 'http://foot.yyf-blog.com/93296fe84211491b97d1e6effc2bd885', '1543887033645', '0', '福州大学', '福建省', '福州市', '福建省福州市闽侯县溪源宫路2号', '0', null);
INSERT INTO `photo` VALUES ('74', '3', null, null, 'http://foot.yyf-blog.com/93168ff531b243e5993b94b6e657f25e', '1543887067724', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('75', '10', null, null, 'http://foot.yyf-blog.com/4abe7b46571945b1b8c287c210ecc98a', '1544539866938', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('76', '10', null, null, 'http://foot.yyf-blog.com/9b024569cfa64204bde6e712fb310550', '1544539867174', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('77', '10', null, null, 'http://foot.yyf-blog.com/d0e6818308b14cb4bb3b27cd1464819d', '1544539867313', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('78', '10', null, null, 'http://foot.yyf-blog.com/c786677c45e04d8c931bdf36a684ce9b', '1544539867433', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('79', '10', null, null, 'http://foot.yyf-blog.com/43c41ec0db8e4ce19c37645300fb80f8', '1544539867559', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('80', '10', null, null, 'http://foot.yyf-blog.com/75b5e252a4024d8c99fa559eff4d64f1', '1544539867698', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('81', '10', null, null, 'http://foot.yyf-blog.com/182f5d2481de4baab7b5a36c5fc0dba5', '1544539867833', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('82', '10', null, null, 'http://foot.yyf-blog.com/f141573d1cd842af9fbdb36fca589cab', '1544539867953', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('83', '10', null, null, 'http://foot.yyf-blog.com/cd92156c7e77488dae932f8507b5b8a2', '1544539868079', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('84', '10', null, null, 'http://foot.yyf-blog.com/3fe6af83d80646159dd18b6fc888e96e', '1544539868193', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('85', '10', null, null, 'http://foot.yyf-blog.com/620d9be0c35a4c57a5e4f41fe0a008db', '1544539868313', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('86', '10', null, null, 'http://foot.yyf-blog.com/08191080f48a4a33ab4d3bee80c4d13a', '1544539868480', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('87', '10', null, null, 'http://foot.yyf-blog.com/1474e7dcc3af408580bec1a5fd936b85', '1544539868593', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('88', '10', null, null, 'http://foot.yyf-blog.com/8c961a0cce6744f1b42fa922ac073e05', '1544539868713', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('89', '10', null, null, 'http://foot.yyf-blog.com/59b6ad93de4a4160be74359e0ffb6460', '1544539868853', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('90', '10', null, null, 'http://foot.yyf-blog.com/9444c3cdebe546f097bc09d2cb895a3e', '1544539868996', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('91', '10', null, null, 'http://foot.yyf-blog.com/4e39f3797c194168af59c8525ca25117', '1544539869128', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('92', '10', null, null, 'http://foot.yyf-blog.com/26335b55f814401098fdff2f7bb205ee', '1544539869273', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('93', '10', null, null, 'http://foot.yyf-blog.com/bd70837eafb64553915030f294c55d6f', '1544539869433', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('94', '10', null, null, 'http://foot.yyf-blog.com/3cec21bf61474225afe8e83d134f6187', '1544539869573', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('95', '10', null, null, 'http://foot.yyf-blog.com/21663390845141c69ea7f05b61f91fae', '1544539869713', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('96', '10', null, null, 'http://foot.yyf-blog.com/b780a82fc16f4df99bbb2656094c3737', '1544539869838', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('97', '10', null, null, 'http://foot.yyf-blog.com/081289c2bb024b37a73d31d53a4df3f3', '1544539869953', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('98', '10', null, null, 'http://foot.yyf-blog.com/a46e05b0ad3f4319a2ad9ad1dd1aa69f', '1544539870113', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('99', '10', null, null, 'http://foot.yyf-blog.com/e26a3bbbb71044a9b8a0ad66462c0132', '1544539870273', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('100', '10', null, null, 'http://foot.yyf-blog.com/1d748a84e5b749b9bb36ec2c6d434d04', '1544539870393', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('101', '10', null, null, 'http://foot.yyf-blog.com/f07c03151d5f42cdb0b44748abab9b1c', '1544539870533', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('102', '10', null, null, 'http://foot.yyf-blog.com/9be8dfca60c74cbb9312e875e1eea3e3', '1544539870673', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('103', '10', null, null, 'http://foot.yyf-blog.com/da4212b44a33426f96ce86f2a1d064af', '1544539870810', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('104', '10', null, null, 'http://foot.yyf-blog.com/b0695493607d417f8a97c8ea64d2a26d', '1544539870918', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('105', '10', null, null, 'http://foot.yyf-blog.com/89c8e7cdae174cb98d567d7ff01ff0b3', '1544539871033', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('106', '10', null, null, 'http://foot.yyf-blog.com/848eddf9929c42769a5d1f7de9dc8f31', '1544539871153', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('107', '10', null, null, 'http://foot.yyf-blog.com/0aeea18204944d48b3dc6230c1dafc70', '1544539871274', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('108', '10', null, null, 'http://foot.yyf-blog.com/84bcd80eed02437dbc4419b0036dd96e', '1544539871394', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('109', '10', null, null, 'http://foot.yyf-blog.com/01b3048274b349a8862541289957f5e7', '1544539871529', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('110', '10', null, null, 'http://foot.yyf-blog.com/7e2a48447c9745a69d8c28ad6fd3b881', '1544539871673', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('111', '10', null, null, 'http://foot.yyf-blog.com/c431caaad43c409e9e631bcaac00e2c9', '1544539871793', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('112', '10', null, null, 'http://foot.yyf-blog.com/9bea92a7cf6e4c12a89d9b734af60a47', '1544539871913', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('113', '10', null, null, 'http://foot.yyf-blog.com/936a9ce067aa4578a15b625b4370f0e0', '1544539872033', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('114', '10', null, null, 'http://foot.yyf-blog.com/706674c2ccbe4010bbb55af6dd9492e6', '1544539872153', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('115', '10', null, null, 'http://foot.yyf-blog.com/30b7c2ccbc704cd59091528e59779211', '1544539872273', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('116', '10', null, null, 'http://foot.yyf-blog.com/6ca25e58b1354025b2427b40ef33e136', '1544539872408', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('117', '10', null, null, 'http://foot.yyf-blog.com/4bdae7b288b1431596dfc4991ee0caab', '1544539872554', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('118', '10', null, null, 'http://foot.yyf-blog.com/872ce41acb094576868d333c1557686f', '1544539872703', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('119', '10', null, null, 'http://foot.yyf-blog.com/0a89b6ab230344c59a334a0cf10167b7', '1544539872863', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('120', '10', null, null, 'http://foot.yyf-blog.com/0da8c31de39f463da770e53ce1ce5539', '1544539872993', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('121', '10', null, null, 'http://foot.yyf-blog.com/65a3a6a3721c4a42af001fff2cfe7f78', '1544539873113', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('122', '10', null, null, 'http://foot.yyf-blog.com/787ad095d40e4a34a13fc79a57191ff0', '1544539873233', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('123', '10', null, null, 'http://foot.yyf-blog.com/cfef780bbebc4a139797fb8567927721', '1544539873353', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('124', '10', null, null, 'http://foot.yyf-blog.com/dc8764746ae5472288c3d29bee62fd0a', '1544539873473', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('125', '10', null, null, 'http://foot.yyf-blog.com/29d315ea604b424496c158231c87854d', '1544539873593', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('126', '10', null, null, 'http://foot.yyf-blog.com/487dec172a334a7f9442117ccab822b2', '1544539873713', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('127', '10', null, null, 'http://foot.yyf-blog.com/517fc65beb6a40dd8c71521b41c9c1c3', '1544539873853', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('128', '10', null, null, 'http://foot.yyf-blog.com/405d970bd55248d590f2786e1417ffdd', '1544539874003', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('129', '10', null, null, 'http://foot.yyf-blog.com/439fa4de05f343e5a002be77477d9e96', '1544539874154', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('130', '10', null, null, 'http://foot.yyf-blog.com/18c28ac92cb946558eeb56922c396758', '1544539874273', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('131', '10', null, null, 'http://foot.yyf-blog.com/98268a92ce1b471a9df10f7c69329bd9', '1544539874393', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('132', '10', null, null, 'http://foot.yyf-blog.com/a44641aed11b423e887365f2b2cf07fa', '1544539874538', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('133', '10', null, null, 'http://foot.yyf-blog.com/5321ae5abf04441bbb4fb5412112f7db', '1544539874693', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('134', '10', null, null, 'http://foot.yyf-blog.com/3eb3165ee9564343962170972857260b', '1544539874808', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('135', '10', null, null, 'http://foot.yyf-blog.com/b7fa6891784e4ef1b82689145507367e', '1544539874953', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('136', '10', null, null, 'http://foot.yyf-blog.com/71bf239dc8a2488ea5c150e52e89eabe', '1544539875073', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('137', '10', null, null, 'http://foot.yyf-blog.com/014273f4e60743899b7d96bc8005a0f3', '1544539875194', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('138', '10', null, null, 'http://foot.yyf-blog.com/41c11998493e4c6b91afd81377adf0ce', '1544539875372', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('139', '10', null, null, 'http://foot.yyf-blog.com/7b102cd14f60485b83f50051a8ebf285', '1544539875633', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('140', '10', null, null, 'http://foot.yyf-blog.com/f86f1d3633404d9b936e647e9f39ce04', '1544539875760', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('141', '10', null, null, 'http://foot.yyf-blog.com/91dffc1480b646ecbeada6502ce1d48e', '1544539875913', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('142', '10', null, null, 'http://foot.yyf-blog.com/58b798aa767d4dd2b6aca24c3397ede2', '1544539876053', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('143', '10', null, null, 'http://foot.yyf-blog.com/c59443b505464259a866798144434f92', '1544539876205', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('144', '10', null, null, 'http://foot.yyf-blog.com/bdc7dbbdf8c64323ba0b47fd71f7a486', '1544539876458', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('145', '10', null, null, 'http://foot.yyf-blog.com/92c5bae7d46b4dd6a15ecf581c58fdcb', '1544539876628', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('146', '10', null, null, 'http://foot.yyf-blog.com/e3f1cb6af934436ab3f081428adc59b5', '1544539876758', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('147', '10', null, null, 'http://foot.yyf-blog.com/728950605aab4f598db5320b83a2b106', '1544539876873', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('148', '10', null, null, 'http://foot.yyf-blog.com/c6f40de81b7a422fbdc9a88a8859dbff', '1544539876993', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('149', '10', null, null, 'http://foot.yyf-blog.com/02d8f00926d44e2890a555e4d7592dfc', '1544539877153', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('150', '10', null, null, 'http://foot.yyf-blog.com/991f315e6af8400eb13fb708934c2789', '1544539877283', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('151', '10', null, null, 'http://foot.yyf-blog.com/2a491320efe74912b249b26c9909a755', '1544539877433', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('152', '10', null, null, 'http://foot.yyf-blog.com/0ec081331a5f4451a3b12b1888a517c9', '1544539877584', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('153', '10', null, null, 'http://foot.yyf-blog.com/6e6dc21839e44a2b983e3ec5bea99453', '1544539877713', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('154', '10', null, null, 'http://foot.yyf-blog.com/61e83dc7404a434292ff9a2546469c91', '1544539877853', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('155', '10', null, null, 'http://foot.yyf-blog.com/d26206065f10415ba135fe93836274c8', '1544539877973', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('156', '10', null, null, 'http://foot.yyf-blog.com/5818edeb90b647a4a615ad44b3a3ec41', '1544539878113', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('157', '10', null, null, 'http://foot.yyf-blog.com/570c0fa81efe494282b59711e4c95917', '1544539878237', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('158', '10', null, null, 'http://foot.yyf-blog.com/d49f8991f3d548578d7c8cc06afc7a11', '1544539878353', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('159', '10', null, null, 'http://foot.yyf-blog.com/6585d52d204b4119aceb64d460fff8de', '1544539878473', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('160', '10', null, null, 'http://foot.yyf-blog.com/7e23a54976604cc49eec93136de09dee', '1544539878613', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('161', '10', null, null, 'http://foot.yyf-blog.com/38c819db8fdb4388ba515cdd879ef2cf', '1544539878753', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('162', '10', null, null, 'http://foot.yyf-blog.com/dd828335b81e4ab9ade49f26d031ea41', '1544539878873', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('163', '10', null, null, 'http://foot.yyf-blog.com/0a641a9c7adf486c84b32019220b643f', '1544539878993', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('164', '10', null, null, 'http://foot.yyf-blog.com/fafc02878bfe48db8a5f50292af49beb', '1544539879153', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('165', '10', null, null, 'http://foot.yyf-blog.com/f7dd4ab4e47e422784683d54daba5ed0', '1544539879273', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('166', '10', null, null, 'http://foot.yyf-blog.com/f30b9f6925d24fbbaef9e4b4c5f02b82', '1544539879393', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('167', '10', null, null, 'http://foot.yyf-blog.com/78d271db1321413db7cf080726399bd6', '1544539879513', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('168', '10', null, null, 'http://foot.yyf-blog.com/779491b407cb4377bcfb6516a91328f2', '1544539879633', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('169', '10', null, null, 'http://foot.yyf-blog.com/5eddc207a807400b8f82851459bd8b62', '1544539879769', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('170', '10', null, null, 'http://foot.yyf-blog.com/3fef6e6f810f4a0781194eb5704e0f2b', '1544539879913', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('171', '10', null, null, 'http://foot.yyf-blog.com/f76c6d1fbcb54f3b88ab912218dd415c', '1544539880068', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('172', '10', null, null, 'http://foot.yyf-blog.com/55f4a390420f42e0b5df61c55094a3bb', '1544539880193', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('173', '10', null, null, 'http://foot.yyf-blog.com/bfc2216c6d9b4ea58c687d4b5b383516', '1544539880338', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('174', '10', null, null, 'http://foot.yyf-blog.com/61ce4c94808343fb9d361cf22e9ac929', '1544539880483', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('175', '10', null, null, 'http://foot.yyf-blog.com/859149ad2c16412288e7e6ee48750b3a', '1544539880773', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('176', '10', null, null, 'http://foot.yyf-blog.com/54a302284a3747338915791472e4c3f1', '1544539880888', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('177', '10', null, null, 'http://foot.yyf-blog.com/e5b93468ef2a4681b82c9cf14679b045', '1544539881033', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('178', '10', null, null, 'http://foot.yyf-blog.com/ea3cd7235eec4362a5974b666913f623', '1544539881153', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('179', '10', null, null, 'http://foot.yyf-blog.com/27d377065a034e87b7222791164d5bcf', '1544539881273', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('180', '10', null, null, 'http://foot.yyf-blog.com/00993d5162c74312ad3159067084b40e', '1544539881393', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('181', '10', null, null, 'http://foot.yyf-blog.com/0400fcc06fa74b6395a29f5a555d1f3f', '1544539881513', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('182', '10', null, null, 'http://foot.yyf-blog.com/bc5fc928b6d24f40967958f99d7b0765', '1544539881633', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('183', '10', null, null, 'http://foot.yyf-blog.com/849937b7082e4f0d90513fedded2e2b7', '1544539881763', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('184', '10', null, null, 'http://foot.yyf-blog.com/c27651bc5ddb461ba9bb5b0481bc52ef', '1544539881908', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('185', '10', null, null, 'http://foot.yyf-blog.com/2bdd884233db45ec89a189f3865e4aab', '1544539882033', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('186', '10', null, null, 'http://foot.yyf-blog.com/8e72fc30133d421285588a54235ee2b9', '1544539882173', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('187', '10', null, null, 'http://foot.yyf-blog.com/00f9ded7d74147f5a777b9835239f484', '1544539882318', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('188', '10', null, null, 'http://foot.yyf-blog.com/5555b40906ba493d8684aafecd37a553', '1544539882475', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('189', '10', null, null, 'http://foot.yyf-blog.com/94b32decb68340ab95cc34854480fa52', '1544539882648', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('190', '10', null, null, 'http://foot.yyf-blog.com/4343a438d9344c6283834069732af7bb', '1544539882757', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('191', '10', null, null, 'http://foot.yyf-blog.com/583ac27044be4d9cb0c5fcc45fc5f241', '1544539882994', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('192', '10', null, null, 'http://foot.yyf-blog.com/2cbe2db76cce49f09da8542693dd3088', '1544539883158', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('193', '10', null, null, 'http://foot.yyf-blog.com/628f95595ccb42d981d387d98f6f3ce6', '1544539883274', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('194', '10', null, null, 'http://foot.yyf-blog.com/5869ec064f8945a4b657da4e45503f4b', '1544539883474', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('195', '10', null, null, 'http://foot.yyf-blog.com/9f42ab346b7d4318b4137efd2a5c8b53', '1544539883593', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('196', '10', null, null, 'http://foot.yyf-blog.com/5be31e49962a4bf98fe01801fc3dd5cf', '1544539883976', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('197', '10', null, null, 'http://foot.yyf-blog.com/d544dd32586e47a286d3c819b422cbcf', '1544539884113', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('198', '10', null, null, 'http://foot.yyf-blog.com/44718943a0a6436d812738fe87de3e59', '1544539884243', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('199', '10', null, null, 'http://foot.yyf-blog.com/9e6f268f857a4e04a55d4ed45e742d0c', '1544539884353', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('200', '10', null, null, 'http://foot.yyf-blog.com/34ab515540ea4cdca509cffa0dbacc60', '1544539884478', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('201', '10', null, null, 'http://foot.yyf-blog.com/634d8f40cf4c4d13a9fba20d5d1d818d', '1544539884618', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('202', '10', null, null, 'http://foot.yyf-blog.com/aa5448cc297f4e10adf9aae19bfbd834', '1544539884803', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('203', '10', null, null, 'http://foot.yyf-blog.com/e8e3012c424f4f4ebc7780f5af0806e7', '1544539884913', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('204', '10', null, null, 'http://foot.yyf-blog.com/273358fa2216429eb4e02f67d5bbd2ad', '1544539885073', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('205', '10', null, null, 'http://foot.yyf-blog.com/b9e2561c039445d08b1f036b6cc80d1f', '1544539885193', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('206', '10', null, null, 'http://foot.yyf-blog.com/d6d8c805b7a7453b8d88a0f94dac6e25', '1544539885368', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('207', '10', null, null, 'http://foot.yyf-blog.com/3f31ae05edd9498f829368c095c0299b', '1544539885513', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('208', '10', null, null, 'http://foot.yyf-blog.com/f7f32930cfc34b4783b0da0ae2124cba', '1544539885623', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('209', '10', null, null, 'http://foot.yyf-blog.com/2b952250971e42809d33535556be13b9', '1544539885748', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('210', '10', null, null, 'http://foot.yyf-blog.com/fd4b2b5f8ba242e49d0a8cc9a856f0ec', '1544539885873', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('211', '10', null, null, 'http://foot.yyf-blog.com/3a4d743d499741d1b7462795ad203c40', '1544539885993', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('212', '10', null, null, 'http://foot.yyf-blog.com/80b3514736e841968318fb9d0010a022', '1544539886113', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('213', '10', null, null, 'http://foot.yyf-blog.com/057b3385185e4ac4932fb2cdf7e324bb', '1544539886233', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('214', '10', null, null, 'http://foot.yyf-blog.com/1361c0adb0f64d6091f25d5ab762907a', '1544539886353', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('215', '10', null, null, 'http://foot.yyf-blog.com/ed5ff585066b4ca9918b51b5539bc5da', '1544539886473', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('216', '10', null, null, 'http://foot.yyf-blog.com/2b0403bce6e64578a6b9a64bae134e3c', '1544539886613', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('217', '10', null, null, 'http://foot.yyf-blog.com/44fa08b971df47fe8ad61d875d1fdd88', '1544539886753', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('218', '10', null, null, 'http://foot.yyf-blog.com/4e885faf0b464b429c1df5c5f2a358bc', '1544539886868', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('219', '10', null, null, 'http://foot.yyf-blog.com/8e4963b6fffb440aa7edb34ff5ae5a23', '1544539886992', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('220', '10', null, null, 'http://foot.yyf-blog.com/2f347ede5774432daa86c8ea2d13b0f7', '1544539887113', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('221', '10', null, null, 'http://foot.yyf-blog.com/eb52f90ea8da4ae5bec95ac57ddab2e8', '1544539887269', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('222', '10', null, null, 'http://foot.yyf-blog.com/70a41da8a41144ecb88e87d3db497b25', '1544539887393', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('223', '10', null, null, 'http://foot.yyf-blog.com/9a05513978234dcf813fa502b83ae3fe', '1544539887553', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('224', '10', null, null, 'http://foot.yyf-blog.com/be14b59d94df41a1b36a3c57b63052f6', '1544539887718', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('225', '10', null, null, 'http://foot.yyf-blog.com/222cc573d3d24cc29ba493e65fe85d29', '1544539887858', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('226', '10', null, null, 'http://foot.yyf-blog.com/7d2af6661eab44bfbab29ea4c26bca11', '1544539887993', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('227', '10', null, null, 'http://foot.yyf-blog.com/7a829ca2211448a4a6ea85ebe71a9589', '1544539888153', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('228', '10', null, null, 'http://foot.yyf-blog.com/ad39af28a91e43e0a04c6033e173051b', '1544539888313', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('229', '10', null, null, 'http://foot.yyf-blog.com/3a45a72412d3445ab4e83398dcd9f22f', '1544539888433', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('230', '10', null, null, 'http://foot.yyf-blog.com/472f71835d6b47ebbc70217aec953605', '1544539888548', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('231', '10', null, null, 'http://foot.yyf-blog.com/c5ab945c13eb42c9ab7831dda1e3bb1f', '1544539888692', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('232', '10', null, null, 'http://foot.yyf-blog.com/dd0527d0c5e1486a8011d6edb1523b4b', '1544539888817', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('233', '10', null, null, 'http://foot.yyf-blog.com/0c246d731b1a4145a2ef69e6d0a24106', '1544539888953', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('234', '10', null, null, 'http://foot.yyf-blog.com/43f12f33c6d9491c907e168c2e0c0ee0', '1544539889113', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('235', '10', null, null, 'http://foot.yyf-blog.com/06e37d0d2a914358b5a1fbd1e97554f4', '1544539889273', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('236', '5', null, null, 'http://foot.yyf-blog.com/de91c37842374e1b961d3c792f540353', '1544540139561', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('237', '5', null, null, 'http://foot.yyf-blog.com/aec0045f93d34594a0f0903366df2fb4', '1544540956029', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('238', '10', null, null, 'http://foot.yyf-blog.com/6c8c678877e444168012c0a7e45a5170', '1544541212763', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('239', '10', null, null, 'http://foot.yyf-blog.com/e0850909a7194be9a624014d379bf733', '1544541212949', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('240', '10', null, null, 'http://foot.yyf-blog.com/65e723f242034c379bf0ff7305364116', '1544541213068', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('241', '10', null, null, 'http://foot.yyf-blog.com/54ce537f446047859d3157985466ad50', '1544541213188', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('242', '10', null, null, 'http://foot.yyf-blog.com/b6c318976a6444ada47be26ac5ad8565', '1544541213308', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('243', '10', null, null, 'http://foot.yyf-blog.com/d5c35964133641eb9c9ba0d3f97a8e7f', '1544541213468', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('244', '10', null, null, 'http://foot.yyf-blog.com/a60e2c985ce0478590b0be1bfe6ae372', '1544541213588', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('245', '10', null, null, 'http://foot.yyf-blog.com/37cdac1f8a4748a9b9ef744c57bb30e2', '1544541213708', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('246', '10', null, null, 'http://foot.yyf-blog.com/9807c93f35c142678d61a664bbd3b94c', '1544541213868', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('247', '10', null, null, 'http://foot.yyf-blog.com/49feb9480fb848ca9b3f55fa1d454899', '1544541214068', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('248', '10', null, null, 'http://foot.yyf-blog.com/16e784532ffb48bb879319734d0788fc', '1544541214218', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('249', '10', null, null, 'http://foot.yyf-blog.com/5d50cdf5c0e24236af22e2517d396920', '1544541214388', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('250', '10', null, null, 'http://foot.yyf-blog.com/3817bc373f3e41f0bfc228a898eb973e', '1544541214523', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('251', '10', null, null, 'http://foot.yyf-blog.com/b12bfd08f3e2445eb3ae5ab47681238d', '1544541214668', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('252', '10', null, null, 'http://foot.yyf-blog.com/6a2501eddd404578ba17d1e2fd439927', '1544541214813', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('253', '10', null, null, 'http://foot.yyf-blog.com/8ea171b8714f4b8aaccbaa1fcadbf17d', '1544541214948', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('254', '10', null, null, 'http://foot.yyf-blog.com/67576f398cc345fcae424e2edd8fc3f9', '1544541215068', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('255', '10', null, null, 'http://foot.yyf-blog.com/7ad51bc70f684447b978497aafce7bb9', '1544541215244', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('256', '10', null, null, 'http://foot.yyf-blog.com/286c56a2c11d45d4b39fb0d3a13c3085', '1544541215388', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('257', '10', null, null, 'http://foot.yyf-blog.com/73cf69745710419b910c0adf8d2e72c9', '1544541215573', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('258', '10', null, null, 'http://foot.yyf-blog.com/eb70e06f05a245d0a816c04ba3a21bca', '1544541215733', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('259', '10', null, null, 'http://foot.yyf-blog.com/64f5dde96a8f4c8ca580874d790d32c5', '1544541215868', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('260', '10', null, null, 'http://foot.yyf-blog.com/17b654dcf55c404fac163571a6d4c5f4', '1544541216002', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('261', '10', null, null, 'http://foot.yyf-blog.com/6fbf7cef0f7547b9ab597932326b9656', '1544541216138', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('262', '10', null, null, 'http://foot.yyf-blog.com/fdab73bc08d2453eba19b6bc7463ec2c', '1544541216268', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('263', '10', null, null, 'http://foot.yyf-blog.com/34719f87468149319e6437fc65fbe869', '1544541216403', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('264', '10', null, null, 'http://foot.yyf-blog.com/fffada9c12a5472090d64f7d2aa264f0', '1544541216558', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('265', '10', null, null, 'http://foot.yyf-blog.com/4c293de000f24db28aca4d8efe7ca666', '1544541216708', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('266', '10', null, null, 'http://foot.yyf-blog.com/2eacbd96e3fc48739f0ba2b4d39a6f0c', '1544541216843', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('267', '10', null, null, 'http://foot.yyf-blog.com/37aa2dd5389a4c58863e22834de5e640', '1544541217190', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('268', '10', null, null, 'http://foot.yyf-blog.com/1033464f46714ccba54f1b04944f4cc1', '1544541217348', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('269', '10', null, null, 'http://foot.yyf-blog.com/a33af1a5955e4a59a73ed42ed701df11', '1544541217509', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('270', '10', null, null, 'http://foot.yyf-blog.com/5c7d4ea3c0d24c928b73b9deac6a1c7c', '1544541217643', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('271', '10', null, null, 'http://foot.yyf-blog.com/8ae344b2793e41e38ae94d74a38bdc72', '1544541217788', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('272', '10', null, null, 'http://foot.yyf-blog.com/e8a8288fa6034892a027f94bf65b163c', '1544541217962', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('273', '10', null, null, 'http://foot.yyf-blog.com/893042ff44ee42ef989ad5fd481ee731', '1544541218133', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('274', '10', null, null, 'http://foot.yyf-blog.com/98b3f20556c8447b85bf71d212078148', '1544541218348', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('275', '10', null, null, 'http://foot.yyf-blog.com/9b2d47207c6f4b2391e49b6b6d5a43bb', '1544541218468', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('276', '10', null, null, 'http://foot.yyf-blog.com/fa8a978965444574aeafc542f69896f9', '1544541218603', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('277', '10', null, null, 'http://foot.yyf-blog.com/91b9e93b453a4a26bbb93295d294cc58', '1544541218708', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('278', '10', null, null, 'http://foot.yyf-blog.com/2279ca580c1c4ca482a9f2053198b53a', '1544541218842', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('279', '10', null, null, 'http://foot.yyf-blog.com/dc45cdccdcb149efa8371ccceffd5131', '1544541218988', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('280', '10', null, null, 'http://foot.yyf-blog.com/5a51aefa491c43e3ab4e148f1af7285f', '1544541219108', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('281', '10', null, null, 'http://foot.yyf-blog.com/ce7341eed9304bd5a1daae62487e43dd', '1544541219228', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('282', '10', null, null, 'http://foot.yyf-blog.com/335627ce7e794f2abeb81ae666334a9c', '1544541219348', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('283', '10', null, null, 'http://foot.yyf-blog.com/57301ec0ced540ef9b7ac75142faf47d', '1544541219482', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('284', '10', null, null, 'http://foot.yyf-blog.com/a298646831334a078892f30d35a63ad0', '1544541219602', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('285', '10', null, null, 'http://foot.yyf-blog.com/d2f387e57b4f40bba4a1be9329e1ee02', '1544541219788', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('286', '10', null, null, 'http://foot.yyf-blog.com/24f8a0228632497d976609db676a1355', '1544541219923', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('287', '10', null, null, 'http://foot.yyf-blog.com/0b3ffc09992b4df0a712710754caed51', '1544541220108', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('288', '10', null, null, 'http://foot.yyf-blog.com/d5e3b37bbf7d4192b080f2295057ca49', '1544541220268', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('289', '10', null, null, 'http://foot.yyf-blog.com/2010efceebc6478b8099d58b2247ddfe', '1544541220478', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('290', '10', null, null, 'http://foot.yyf-blog.com/7d18a0dfb2de49db9ff9be8cd44537b3', '1544541220649', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('291', '10', null, null, 'http://foot.yyf-blog.com/b5c6e9cb2c1f4ced8c15921909d925e4', '1544541221002', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('292', '10', null, null, 'http://foot.yyf-blog.com/4d664b35f4c444fbab65828e7433786c', '1544541221168', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('293', '10', null, null, 'http://foot.yyf-blog.com/73cd6e1b3ac84e66ad05a4cc3a240d55', '1544541221328', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('294', '10', null, null, 'http://foot.yyf-blog.com/e939663c09b743719a89c74a5f8c1a48', '1544541221628', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('295', '10', null, null, 'http://foot.yyf-blog.com/db270f589d98413c913fc1727892fd6b', '1544541221749', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('296', '10', null, null, 'http://foot.yyf-blog.com/067e75768e7f4060872bc95e9dac0aed', '1544541221868', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('297', '10', null, null, 'http://foot.yyf-blog.com/f9fea0c5e1ba46ce8dfcc9a0be76fd18', '1544541221988', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('298', '10', null, null, 'http://foot.yyf-blog.com/d73ea47669ab4288a963eb59994ecb81', '1544541222188', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('299', '10', null, null, 'http://foot.yyf-blog.com/686057f5d6114346ac6d7f56589a92bd', '1544541236171', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('300', '10', '119.1843416667', '26.0531527778', 'http://foot.yyf-blog.com/a9afcd50f5d64372b4b5979a7e47864b', '1544541247426', '0', '福州大学', '福建省', '福州市', '福建省福州市闽侯县建平路', '0', null);
INSERT INTO `photo` VALUES ('301', '5', null, null, 'http://foot.yyf-blog.com/eb106e91dabe43578133ee8cf5b2dce7', '1544714465975', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('302', '5', null, null, 'http://foot.yyf-blog.com/a2797fdb72b84829ad9496a088380f2d', '1544714717523', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('303', '5', null, null, 'http://foot.yyf-blog.com/d2d92d8bb8494c818cf8089b9ec982e2', '1544714794150', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('304', '5', null, null, 'http://foot.yyf-blog.com/3d3c7bd54b2d4e7f967857e6f3692c32', '1544714868566', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('305', '5', null, null, 'http://foot.yyf-blog.com/0703031149e9499884ab026a0ae23eea', '1544714890393', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('306', '5', null, null, 'http://foot.yyf-blog.com/14b6194045404044983d1a9ad6d40208', '1544714904109', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('307', '5', null, null, 'http://foot.yyf-blog.com/cbb8e60a8e514e0aa1d62ffe20ec5e7a', '1544716105202', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('308', '5', null, null, 'http://foot.yyf-blog.com/a9a8b338b6314b05a60801b5ca46abb9', '1544716895096', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('309', '5', null, null, 'http://foot.yyf-blog.com/add0403c6a684dba89ab592559d69a52', '1544716898775', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('310', '5', null, null, 'http://foot.yyf-blog.com/bc7e70e873104462bff098cd86d581f9', '1544716902702', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('311', '5', null, null, 'http://foot.yyf-blog.com/d7594316a3004ef881cf44cf0daf23e1', '1544716906528', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('312', '5', null, null, 'http://foot.yyf-blog.com/cb039a81226f4679b5b75f36f85ff9eb', '1544716910464', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('313', '5', null, null, 'http://foot.yyf-blog.com/5061fedec1a7415ca68b529efa8dafad', '1544716914825', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('314', '5', null, null, 'http://foot.yyf-blog.com/5a8ad43c8d1749bfa3a08c2d60e1013c', '1544716918599', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('315', '5', null, null, 'http://foot.yyf-blog.com/e06d114d54b44525a13e0870951f828d', '1544716922330', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('316', '5', null, null, 'http://foot.yyf-blog.com/2200687a69fa4d61a679c28281cb9fe2', '1544716926417', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('317', '5', null, null, 'http://foot.yyf-blog.com/6c50762a66e44fdf8db33d63f354bf58', '1544716930006', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('318', '5', null, null, 'http://foot.yyf-blog.com/8ab5c916c50647c394335b636b38b297', '1544716930098', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('319', '5', null, null, 'http://foot.yyf-blog.com/a6a456a81fbf491f9ebffb8aa6fa2b17', '1544716930226', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('320', '5', null, null, 'http://foot.yyf-blog.com/23e2b4c380ca4f79892cfeed83fe5d22', '1544716930312', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('321', '5', null, null, 'http://foot.yyf-blog.com/81652a2c5a9d45de909cdcc13396bf06', '1544716930387', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('322', '5', null, null, 'http://foot.yyf-blog.com/1dad4a12ac24497f98ba04a3126e3af4', '1544716930554', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('323', '5', null, null, 'http://foot.yyf-blog.com/ced4b41afd9f449aa084d884248fbf15', '1544716930650', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('324', '5', null, null, 'http://foot.yyf-blog.com/86d3355518284daeaf06df3727ad4a14', '1544716930735', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('325', '5', null, null, 'http://foot.yyf-blog.com/c1f63c197349488daedb92020b5afe9c', '1544716930833', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('326', '5', null, null, 'http://foot.yyf-blog.com/7bee1cfd424e43148a3c3f7082f16036', '1544716930963', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('327', '5', null, null, 'http://foot.yyf-blog.com/2ff14a9c2eb7420fa69687501e853083', '1544716931063', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('328', '5', null, null, 'http://foot.yyf-blog.com/6286d377cd0349cd97ff518f0f30f34c', '1544716931181', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('329', '5', null, null, 'http://foot.yyf-blog.com/9e2d2c58be794350b4625fd04aaa0907', '1544716931283', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('330', '5', null, null, 'http://foot.yyf-blog.com/40e75be991fd418c93d16128c6777e44', '1544716931377', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('331', '5', null, null, 'http://foot.yyf-blog.com/c9764248591f4cb1b2262d87c5aed606', '1544716931477', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('332', '5', null, null, 'http://foot.yyf-blog.com/4c96191f729e40fe84784efbd79a8f0d', '1544716931589', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('333', '5', null, null, 'http://foot.yyf-blog.com/f59d0605f3164b4c90be7bd1af18d02d', '1544716931744', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('334', '5', null, null, 'http://foot.yyf-blog.com/b9b22e7b864747b8994335c574e64b5a', '1544716931824', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('335', '5', null, null, 'http://foot.yyf-blog.com/1bebe8d8c4314113b6cdcbe90667b898', '1544716931907', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('336', '5', null, null, 'http://foot.yyf-blog.com/d25fa3bde5a94fb7852a72b52e78b42a', '1544716932007', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('337', '5', null, null, 'http://foot.yyf-blog.com/b64d5e8c1beb46679d1f98e3ce659ef1', '1544716932090', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('338', '5', null, null, 'http://foot.yyf-blog.com/f132639ed1f94942afc2ca3c346320ed', '1544716932179', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('339', '5', null, null, 'http://foot.yyf-blog.com/1b0d3c6367374c0482035793337c18d6', '1544716932270', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('340', '5', null, null, 'http://foot.yyf-blog.com/216fd358129f4af2928ec0e5473dc015', '1544716932354', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('341', '5', null, null, 'http://foot.yyf-blog.com/3c62d504197b4ed388f9eb5e53158e27', '1544716932436', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('342', '5', null, null, 'http://foot.yyf-blog.com/615b9f1cff3647a482c0778f1426bade', '1544716932551', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('343', '5', null, null, 'http://foot.yyf-blog.com/997b59cf83be4d83b36c3f8493f86569', '1544716932700', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('344', '5', null, null, 'http://foot.yyf-blog.com/b045d22954ec424087aae43662e3d24a', '1544716932868', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('345', '5', null, null, 'http://foot.yyf-blog.com/ed950599f39c42baa75411a5f0764329', '1544716933024', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('346', '5', null, null, 'http://foot.yyf-blog.com/d184f11ac4354b9c99623e8df1611740', '1544716933129', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('347', '5', null, null, 'http://foot.yyf-blog.com/d68f741ab18e4cf8865a589c351d99fe', '1544716933226', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('348', '5', null, null, 'http://foot.yyf-blog.com/83f177ab89e24b68969a3efe8e92c30c', '1544716933305', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('349', '5', null, null, 'http://foot.yyf-blog.com/805a779413964043a2e5feb3983e8848', '1544716933388', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('350', '5', null, null, 'http://foot.yyf-blog.com/d940c04027084ce69724b651df7287ab', '1544716933488', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('351', '5', null, null, 'http://foot.yyf-blog.com/0c706a176e4449dc9af61647b9631b7e', '1544716933569', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('352', '5', null, null, 'http://foot.yyf-blog.com/c417cecd35ce4c4f94a78baec7ae7928', '1544716933657', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('353', '5', null, null, 'http://foot.yyf-blog.com/3509a9fcf78144e7b81842d6ebc12248', '1544716933754', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('354', '5', null, null, 'http://foot.yyf-blog.com/56f71b72e9ba4c649daece01146dc7e0', '1544716933852', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('355', '5', null, null, 'http://foot.yyf-blog.com/2064a70679c54fb38c16196035844e91', '1544716933940', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('356', '5', null, null, 'http://foot.yyf-blog.com/5fe8d37731774e1a8e7d555c7942a66e', '1544716934028', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('357', '5', null, null, 'http://foot.yyf-blog.com/a03bd224f294406db93684a83fa1ef26', '1544716934110', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('358', '5', null, null, 'http://foot.yyf-blog.com/2f7408da8a40439aa58c192419f9d499', '1544716934191', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('359', '5', null, null, 'http://foot.yyf-blog.com/2e487da5df5d4d58a0abe80831001b5a', '1544716934280', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('360', '5', null, null, 'http://foot.yyf-blog.com/c3a8d89a8b374efc8abc444d510d10df', '1544716934359', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('361', '5', null, null, 'http://foot.yyf-blog.com/369baba0c15349b2b0958b332b646270', '1544716934442', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('362', '5', null, null, 'http://foot.yyf-blog.com/110dcb39b948426797f3be90ebd5139a', '1544716934523', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('363', '5', null, null, 'http://foot.yyf-blog.com/5e2fba688b2e45eb9f56cc1b388793f2', '1544716934625', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('364', '5', null, null, 'http://foot.yyf-blog.com/33c576bc43344ddbacea92f8b5bc8606', '1544716934702', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('365', '5', null, null, 'http://foot.yyf-blog.com/ca918e0be3644712bcac15bc02ac53ac', '1544716934799', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('366', '5', null, null, 'http://foot.yyf-blog.com/e2f1321b5f154ec9aae2bc04c31e00d0', '1544716934898', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('367', '5', null, null, 'http://foot.yyf-blog.com/a7cfcdae8be341fa9778f5e040faff06', '1544716934986', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('368', '5', null, null, 'http://foot.yyf-blog.com/fc94d6133592406fae50bcbad861f610', '1544716935060', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('369', '5', null, null, 'http://foot.yyf-blog.com/af7d44642a624811848ac069fd037c2e', '1544716935149', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('370', '5', null, null, 'http://foot.yyf-blog.com/fbcc75bcb51949239477da677698b81c', '1544716935230', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('371', '5', null, null, 'http://foot.yyf-blog.com/84a56bcad37d4c359c6cec46d74c714e', '1544716935458', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('372', '5', null, null, 'http://foot.yyf-blog.com/a210b705a91b4d919a23d2987220904a', '1544716935568', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('373', '5', null, null, 'http://foot.yyf-blog.com/55a222cee5a04c9198d3cdfe24cf74ee', '1544716935648', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('374', '5', null, null, 'http://foot.yyf-blog.com/1afee83d9e4a419b8394e72e4a1161ad', '1544716935786', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('375', '5', null, null, 'http://foot.yyf-blog.com/3d6831b4ccda4bf5ab2e1df142dc29f2', '1544716935955', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('376', '5', null, null, 'http://foot.yyf-blog.com/91a685ff64dc47729e3f3dc9e2c55225', '1544716936090', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('377', '5', null, null, 'http://foot.yyf-blog.com/cf4b9f8969cd487d990f21a09dae6607', '1544716936182', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('378', '5', null, null, 'http://foot.yyf-blog.com/e5e9da3aab8a4bcda13397ea7c2bd2b0', '1544716936264', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('379', '5', null, null, 'http://foot.yyf-blog.com/b26add90dbde4248ace17f965800754f', '1544716936346', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('380', '5', null, null, 'http://foot.yyf-blog.com/9e32e4269f624ccabf5c6ab31eb0bbc0', '1544716936448', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('381', '5', null, null, 'http://foot.yyf-blog.com/0bc9ede55dad41d1b9e88a9ba62aaf5e', '1544716936559', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('382', '5', null, null, 'http://foot.yyf-blog.com/51f48ad24cec45289a934eada1959fa3', '1544716936649', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('383', '5', null, null, 'http://foot.yyf-blog.com/12e00c8969b24c01887dcbfbe708f331', '1544716936731', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('384', '5', null, null, 'http://foot.yyf-blog.com/3b2ed21199ff4d05b2656c0a540af98e', '1544716936856', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('385', '5', null, null, 'http://foot.yyf-blog.com/a361daec07e94af48dc8578e2c8768eb', '1544716936948', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('386', '5', null, null, 'http://foot.yyf-blog.com/f64f7bd842154ecc97a64078782d472d', '1544716937033', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('387', '5', null, null, 'http://foot.yyf-blog.com/cee1d052e7fa4c6faf3209f68755a949', '1544716937379', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('388', '5', null, null, 'http://foot.yyf-blog.com/a190e45dce1f4010ba16ad6fa2f211d5', '1544716937486', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('389', '5', null, null, 'http://foot.yyf-blog.com/9f66b78cd8234237823727f086b4be47', '1544716937598', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('390', '5', null, null, 'http://foot.yyf-blog.com/64e30ed133354e72807a11e148fb4c5f', '1544716937702', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('391', '5', null, null, 'http://foot.yyf-blog.com/ee3cf727c8234555ab50b0ec07d7b4ed', '1544716937796', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('392', '5', null, null, 'http://foot.yyf-blog.com/54b59a16c0714343b1c45d902dbf8174', '1544716937888', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('393', '5', null, null, 'http://foot.yyf-blog.com/b9b168f8983044bab0d73d5c65b6135d', '1544716938003', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('394', '5', null, null, 'http://foot.yyf-blog.com/98e92d9e85194b538f499a9ae7d9760a', '1544716938100', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('395', '5', null, null, 'http://foot.yyf-blog.com/c56753bdde7b42a0b049e4fa8e30c4d9', '1544716938213', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('396', '5', null, null, 'http://foot.yyf-blog.com/29ad61cb342844e58afc01011dc51348', '1544716938327', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('397', '5', null, null, 'http://foot.yyf-blog.com/a230a6d00af84b83b0aac9ee7174fb13', '1544716938415', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('398', '5', null, null, 'http://foot.yyf-blog.com/ed2b03885b964b81bfc2750762c1b7d2', '1544716938538', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('399', '5', null, null, 'http://foot.yyf-blog.com/c08aa008662b4c5594724e2e2c65d486', '1544716938633', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('400', '5', null, null, 'http://foot.yyf-blog.com/9cabacc4d29d41d69bb4eec6c9604919', '1544716938734', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('401', '5', null, null, 'http://foot.yyf-blog.com/fb8350df0d8a40bebf8c0b7544e36bbd', '1544716938834', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('402', '5', null, null, 'http://foot.yyf-blog.com/3a2768207b554e82a05b3897ab0409a6', '1544718117526', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('403', '5', null, null, 'http://foot.yyf-blog.com/4c84b02b5f0e4c6ab64108c33523fe25', '1544718182003', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('404', '5', '119.1876180000', '26.0563010000', 'http://foot.yyf-blog.com/58c460d787a34af9ab2eb7340d7d4c54', '1544718313044', '0', '福州大学', '福建省', '福州市', '福建省福州市闽侯县源江路', '0', null);
INSERT INTO `photo` VALUES ('405', '5', null, null, 'http://foot.yyf-blog.com/bd456b740d5548c1895204b2eb94b281', '1544718495697', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('406', '5', null, null, 'http://foot.yyf-blog.com/ce94c145228945aa900f6d833e22b456', '1544718536683', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('407', '5', '119.1876180000', '26.0563010000', 'http://foot.yyf-blog.com/e628941f2ace45218a59cfa63030a12a', '1544720360803', '0', '福州大学', '福建省', '福州市', '福建省福州市闽侯县源江路', '0', null);
INSERT INTO `photo` VALUES ('408', '5', '119.1876180000', '26.0563010000', 'http://foot.yyf-blog.com/6ce90dab623b45f784fda70f72d0dada', '1544720416590', '0', '福州大学', '福建省', '福州市', '福建省福州市闽侯县源江路', '0', null);
INSERT INTO `photo` VALUES ('409', '5', null, null, 'http://foot.yyf-blog.com/de84932cfda04c05ac5b6cf3d5e94685', '1544720551607', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('410', '5', null, null, 'http://foot.yyf-blog.com/b6985893811448fc85b1d84a472ca986', '1544721240839', '0', '福州大学', '', null, null, '0', null);
INSERT INTO `photo` VALUES ('411', '5', null, null, 'http://foot.yyf-blog.com/96755d5e13854030aed01c2a78837382', '1544721269863', '0', '福州大学', '', null, null, '0', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of wechat_user
-- ----------------------------
INSERT INTO `wechat_user` VALUES ('3', 'oVUDw0JPJ4epCQap9Pp-uCL6p0I4', 'bcBCQ+r2FDKryy4vVMmrHSwmDjoRKZvzlQKSrR+ZQDBZhLzGTuphTnNXbxd0hI1f', '1', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJzmBzIeVHkjn4R9GxzBdrzcTFcTmQYzcoWt1FFB0tkciaRL7pROk7ysHTJsjj39C8g0gCtBReiaYSA/132', 'China', 'Zhejiang', 'Wenzhou', 'zh_CN', '1543567616');
INSERT INTO `wechat_user` VALUES ('5', 'oVUDw0Cri4Yf8cWBXgHZmSTkHucY', '9b1vLS2paNhp8hQLV7xs1Tmp7CVUSxnIxr6yWoHaOJhWzVCZp7uViXPhFT6xweek', '1', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJPHibibmaeF73TmzKgwDIa2EJIB0Ard0SvVnnr8LAJ4AUWC5yRricCUUofbXnm3KmldAGuPp5sOP2fg/132', 'China', 'Fujian', 'Quanzhou', 'zh_CN', '1543569366');
INSERT INTO `wechat_user` VALUES ('6', 'oVUDw0NRrI_qYw_jtjAO2LvIpmqw', 'TJVqJm/DS05iTLFF0ECn7OLmrWunFA9ufXWLYWKdyibMIljft/hJg2CfuMjFuLAR', '1', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIbtvzZqTk8lnia5UicmNROZZWAFDZhESy71RI2pCEqtIgsiamablTygeYk5sUoUD96yNZEXVW9wG8icw/132', 'China', 'Shanghai', 'Jinshan', 'zh_CN', '1543569423');
INSERT INTO `wechat_user` VALUES ('7', 'oVUDw0NRWZfnjwR9xwU8nAXndxOQ', 'ph002ysHHEJVpODnur3I4CBN5+8fAFeqvYMBq3bVhsfkxtgf+yBMAmyl7ZVEDozu', '1', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJbItlhVDezicA1UJTKWX2qJWkfqIicljjxxxk7eLG5878Mriaqy3QqoVHWicD6IHgic2QTEaY6NV5D4tQ/132', 'China', 'Fujian', 'Fuzhou', 'zh_CN', '1543573813');
INSERT INTO `wechat_user` VALUES ('8', 'oVUDw0KQF5kSx7pvtG_fwU1LCKa0', 'Ze58WBRTnqCFSvTIgd/nzEO31MpIiG0BWmLGR7hso6oPpOB/a3ZqL4D94/2rtjD4', '1', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKI4b5WtMiarqGtHNA9Uic8b1HuXic0ibicYaNpUTZHicuzGGb1aSUneclUbjTQRKl2e5lHR9CGj9FWhPAA/132', 'China', 'Fujian', 'Xiamen', 'zh_CN', '1543625279');
INSERT INTO `wechat_user` VALUES ('9', 'oVUDw0G0S4ud52JwWCQYjWasb_TI', 'SSdOpwqxKKlCsdsD4JV6CvkJTIFO6YDCZDjlpk+tsKbdsWUoDJGAvqO7Dov0e3Bs', '1', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJev32kzhFlX1BiawXGQkR9bjbUVzp0LBXCliavZBPNQuduouiaLialyRk5T2V2scKiaeMrKAwqoCr0m8w/132', 'China', 'Fujian', 'Putian', 'zh_CN', '1543629053');
INSERT INTO `wechat_user` VALUES ('10', 'oVUDw0Bccr7bUH4x-kW2f9giMdiA', 'ErHVT48Ya8KJSp0DnEtnjyMYpZrW/agplsbrkuNSPGbDB38d/EVYqHMEw0uQTNeN', '2', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJoicIqXrbTSXTsLfP9cTCY6c30cX3hDtibGdq0eHr2eN7rt4pe9FmcB6gAjB2SP5oGPjXo4GXv3qUQ/132', 'Norway', '', '', 'zh_CN', '1544539856');
