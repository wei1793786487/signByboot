/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : meeting2

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 20/07/2020 12:20:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for meeting
-- ----------------------------
DROP TABLE IF EXISTS `meeting`;
CREATE TABLE `meeting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_id` int(11) NULL DEFAULT NULL,
  `address_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meeting_address` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meeting_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meeting_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lng` double NULL DEFAULT NULL,
  `lat` double NULL DEFAULT NULL,
  `information` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meeting
-- ----------------------------
INSERT INTO `meeting` VALUES (60, 1, '日照西站', '山东省 日照市 东港区', '摇摇', '2020-01-25 03:48', '2020-02-22 00:00', '12121545', 'dca58be04c0a4021a921b2fb1e12aa0b', 119.426757, 35.396717, '');
INSERT INTO `meeting` VALUES (61, 1, '临沂市人民政府', '山东省  临沂市  兰山区  G206(烟汕线)  ', '请问下', '2020-02-05 00:00', '2020-02-29 00:00', '154624546', '3e04839b9c24485dbc5ed57a8b7ddc7e', 118.359391, 35.108363, '我被修改了呀');
INSERT INTO `meeting` VALUES (62, 1, '美帝', NULL, '测试', '2020-01-16 00:00:00', '2020-01-31 00:00:00', '5616154566', 'fb6ea0b2746e47d7a3d0bc5d5227b797', NULL, NULL, '');
INSERT INTO `meeting` VALUES (63, 1, '阿拉斯特价', NULL, '有一个测试会议', '2020-01-16 00:00:00', '2020-01-29 00:00:00', '110', 'f6dafff07f60421ea7c74bff4ace8221', NULL, NULL, '要用');
INSERT INTO `meeting` VALUES (64, 1, '前下河村', '山东省 临沂市 莒南县', '玛纳斯', '2020-02-12 00:00', '2020-02-27 00:00', '121546435', '6f06c6f5da1c4906ae9cb8c65d568fa3', 118.764539, 35.294859, '测试');
INSERT INTO `meeting` VALUES (65, 2, 'wuajaska', NULL, '这又是一个测试会议', '2019/10/14 - 15:48', NULL, '123212321', '32ca0f9248a2419bb4ca3289f8c01df4', NULL, NULL, NULL);
INSERT INTO `meeting` VALUES (66, 1, 'dasdsa', NULL, 'sadasdsa', '2020-01-16 00:00:00', '2020-01-16 00:00:00', '111321545', '29836e617fec455d8668ab9d67a9dc02', NULL, NULL, '一个测试的会议');
INSERT INTO `meeting` VALUES (70, 1, '临沂市人民政府', '山东省 临沂市 兰山区', '测试', '2020-02-12 00:00', '2020-02-12 00:00', '12232215', '194f1d4b46844ae4abe6f38a4583f78c', 118.363007, 35.10964, '');
INSERT INTO `meeting` VALUES (71, 1, '山东', NULL, '测试', '2020-01-17 00:00:00', '2020-02-04 00:00:00', '113111231', '32362852019f4ce89a11c358cb6bb49c', NULL, NULL, '');
INSERT INTO `meeting` VALUES (74, 1, '山东日', NULL, '会议信息查看', '2020-01-24 00:00', '2020-01-24 00:00', '15762323454', '5fc55eeadeaf4397a3f1e5ce9517d5b9', NULL, NULL, '@PostFilter\r\n\r\n在执行方法之后执行，而且这里可以调用方法的返回值，然后对返回值进行过滤或处理。EL变量returnObject表示返回的对象。只有方法返回的集合或数组类型的才可以使用。（与分页技术不兼容）\r\n\r\n@PreFilter\r\n\r\nEL变量filterObject表示参数，如果有多个参数，可以使用@filterTarget注解参数，只有方法是集合或数组才行（与分页技术不兼容）。\r\n\r\nsecuredEnabled\r\n@Secured\r\n\r\n在方法上指定安全性要求，只有对应角色的用户才可以调用这些方法。');
INSERT INTO `meeting` VALUES (77, 1, '2121', NULL, '测试绯红', '2020-01-24 00:00', '2020-01-20 00:00', '212121', '4fa159af34c3401d9e88174190ac31c4', NULL, NULL, '2121');
INSERT INTO `meeting` VALUES (78, 1, '京蓝.水拓丝巾.掐丝珐琅画手作工作室', '北京市 朝阳区', '二期2', '2020-01-24 00:00', '2020-01-24 00:00', '15762323410', 'b3ece92beab34541a2113eefd4ffeb75', 116.476302, 39.898297, '1231阿达');
INSERT INTO `meeting` VALUES (80, 1, '请一百了', '北京市  西城区  思源胡同  26号', '测试戴拿', '2020-02-04 00:00', '2020-02-14 00:00', '15762323410', '37f4ae6c14914579867f0c2cf65e2e7c', NULL, NULL, '1313');
INSERT INTO `meeting` VALUES (81, 1, '请釜山', NULL, '测试会议', '2020-02-05 00:00', '2020-02-05 00:00', '15762323410', 'd63b744eecf94241a7dac22e2bd016cc', NULL, NULL, '的的');
INSERT INTO `meeting` VALUES (82, 1, '待多久', NULL, '测试经纬度', '2020-02-05 00:00', '2020-02-05 00:00', '15762323410', '7f9a3b5772d14ddf979a73698fcda955', 116.267007, 39.943927, '缩放1');
INSERT INTO `meeting` VALUES (83, 1, '2131', '北京市  海淀区  阜石路  91号院-14号楼', '在', '2020-02-05 00:00', '2020-02-05 00:00', '15762323411', '285a9079b2d340b6a9e477eef23160be', 116.225614, 39.932863, '阿达的');
INSERT INTO `meeting` VALUES (84, 1, '职业技术学院-公交车站', '山东省 日照市 东港区', '测试还有', '2020-02-05 00:00', '2020-02-05 00:00', '15762323410', '08930a78bb2d4a229972161c53468816', 119.543292, 35.468141, '15762323410');
INSERT INTO `meeting` VALUES (86, 1, '大东区', '辽宁省 沈阳市 大东区', '测试ajax', '2020-03-02 00:00', '2020-03-02 00:00', '15762343411', 'b15fd063edd34106b5ce803e2c8a781c', 123.475326, 41.810391, '哒哒哒');
INSERT INTO `meeting` VALUES (88, 2, '日照职业技术需要', '山东省 日照市 东港区 至中路 ', '曹尼玛111111', '2020-07-07 12:00', '2020-07-20 00:00', '15762323410', '98b05e49f9b945dc908a5d053ae4b24b', 119.545941, 35.46816, '当前你死了个');
INSERT INTO `meeting` VALUES (89, 2, '我爱你', '陕西省 西安市 未央区 永顺路 ', '测你吗呢111', '2020-07-07 12:00', '2020-08-05 00:00', '15762323410', '467ba2ac603f4f6f856f5a38b4df87ee', 108.984377, 34.323106, '测11111');
INSERT INTO `meeting` VALUES (91, 2, '111', '上海市 上海市 闵行区 申达五路 ', '你', '2020-06-29 12:00', '2020-07-13 00:00', '15762323401', '0ce68be2cb7349dab4920c01b3172711', 121.335899, 31.190758, '1的的1的');

-- ----------------------------
-- Table structure for meeting_persion
-- ----------------------------
DROP TABLE IF EXISTS `meeting_persion`;
CREATE TABLE `meeting_persion`  (
  `pid` int(20) NULL DEFAULT NULL,
  `mid` int(20) NULL DEFAULT NULL,
  `IsCheck` int(1) NULL DEFAULT 0,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `mid`(`mid`) USING BTREE,
  CONSTRAINT `meeting_persion_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `meeting_persion_ibfk_2` FOREIGN KEY (`mid`) REFERENCES `meeting` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meeting_persion
-- ----------------------------
INSERT INTO `meeting_persion` VALUES (803, 91, 0);
INSERT INTO `meeting_persion` VALUES (803, 61, 1);
INSERT INTO `meeting_persion` VALUES (803, 62, 0);
INSERT INTO `meeting_persion` VALUES (803, 63, 0);
INSERT INTO `meeting_persion` VALUES (803, 64, 0);
INSERT INTO `meeting_persion` VALUES (803, 66, 0);
INSERT INTO `meeting_persion` VALUES (803, 71, 0);
INSERT INTO `meeting_persion` VALUES (803, 63, 0);
INSERT INTO `meeting_persion` VALUES (804, 63, 0);
INSERT INTO `meeting_persion` VALUES (805, 63, 0);
INSERT INTO `meeting_persion` VALUES (806, 63, 0);
INSERT INTO `meeting_persion` VALUES (803, 65, 1);
INSERT INTO `meeting_persion` VALUES (804, 65, 1);
INSERT INTO `meeting_persion` VALUES (805, 65, 0);
INSERT INTO `meeting_persion` VALUES (806, 65, 0);
INSERT INTO `meeting_persion` VALUES (848, 88, 0);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `path` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'access path',
  `component` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'components corresponding to the front end, Layout is root component  Others are front-end component paths ',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'the name is used by <keep-alive> (must set!!!)',
  `meta_id` int(10) NULL DEFAULT NULL,
  `parent` int(10) NULL DEFAULT 0 COMMENT 'ID of parent node, 0 is the top node',
  `hidden` int(10) NULL DEFAULT 0 COMMENT 'if set true, item will not show in the sidebar(default is false，0 is flase，1 is ture )',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `去`(`meta_id`) USING BTREE,
  CONSTRAINT `去` FOREIGN KEY (`meta_id`) REFERENCES `meta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'icons', 'Layout', 'icons', 1, 0, 0);
INSERT INTO `menu` VALUES (2, 'icon', 'icon', 'Icon', 2, 1, 0);
INSERT INTO `menu` VALUES (3, 'person', 'Layout', 'person', 3, 0, 0);
INSERT INTO `menu` VALUES (4, 'upload', 'upload', 'upload', 4, 3, 0);
INSERT INTO `menu` VALUES (5, 'menu', 'Layout', 'menu', 5, 0, 0);
INSERT INTO `menu` VALUES (6, 'list', 'menu_list', 'menu_list', 6, 5, 0);
INSERT INTO `menu` VALUES (15, 'plist', 'plist', 'plist', 11, 3, 0);
INSERT INTO `menu` VALUES (17, 'meeting', 'Layout', '会议', 13, 0, 0);
INSERT INTO `menu` VALUES (18, 'add', 'meeting_add', '会议添加', 14, 17, 0);
INSERT INTO `menu` VALUES (19, 'set', 'meeting_set', '会议设置', 15, 17, 0);
INSERT INTO `menu` VALUES (20, 'mselect', 'meeting_mselect', '会议报名', 16, 17, 0);
INSERT INTO `menu` VALUES (21, 'sign', 'meeting_sign', '签到管理', 17, 17, 0);
INSERT INTO `menu` VALUES (22, 'log', 'Layout', '日志管理', 18, 0, 0);
INSERT INTO `menu` VALUES (23, 'set', 'log_set', '日志详情', 19, 22, 0);
INSERT INTO `menu` VALUES (26, 'edit/:id', 'edit', '会议编辑', 21, 17, 1);

-- ----------------------------
-- Table structure for meta
-- ----------------------------
DROP TABLE IF EXISTS `meta`;
CREATE TABLE `meta`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'the name show in sidebar and breadcrumb (recommend set)',
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'the icon show in the sidebar',
  `breadcrumb` int(11) NULL DEFAULT 0 COMMENT 'if set false, the item will hidden in breadcrumb(1 is true,0 is false)',
  `activeMenu` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'if set path, the sidebar will highlight the path you set',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meta
-- ----------------------------
INSERT INTO `meta` VALUES (1, '图标', 'icon', 0, '');
INSERT INTO `meta` VALUES (2, '太难了', 'link', 0, '');
INSERT INTO `meta` VALUES (3, '用户管理', 'persions', 0, '');
INSERT INTO `meta` VALUES (4, '人员上传', 'upload', 0, '');
INSERT INTO `meta` VALUES (5, '菜单', 'menu', 0, '');
INSERT INTO `meta` VALUES (6, '菜单列表', 'nested', 0, '');
INSERT INTO `meta` VALUES (8, '添加人员', 'upload', 0, '');
INSERT INTO `meta` VALUES (9, '会议', 'meeting', 0, '');
INSERT INTO `meta` VALUES (11, '人员查看', 'persons', 0, '');
INSERT INTO `meta` VALUES (13, '会议管理', 'avatar15', 0, '');
INSERT INTO `meta` VALUES (14, '会议添加', 'avatar01', 0, '');
INSERT INTO `meta` VALUES (15, '会议设置', 'avatar02', 0, '');
INSERT INTO `meta` VALUES (16, '会议报名', 'avatar03', 0, '');
INSERT INTO `meta` VALUES (17, '签到管理', 'avatar04', 0, '');
INSERT INTO `meta` VALUES (18, '日志管理', 'avatar05', 0, '');
INSERT INTO `meta` VALUES (19, '日志详情', 'avatar06', 0, '');
INSERT INTO `meta` VALUES (21, '会议编辑', 'avatar18', 0, '');

-- ----------------------------
-- Table structure for mini_user
-- ----------------------------
DROP TABLE IF EXISTS `mini_user`;
CREATE TABLE `mini_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(32) NULL DEFAULT NULL,
  `openid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid`(`p_id`) USING BTREE,
  CONSTRAINT `pid` FOREIGN KEY (`p_id`) REFERENCES `persons` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mini_user
-- ----------------------------
INSERT INTO `mini_user` VALUES (9, 803, 'o8o2v4k6ePvEwXJma99DFatP6hR4');

-- ----------------------------
-- Table structure for persons
-- ----------------------------
DROP TABLE IF EXISTS `persons`;
CREATE TABLE `persons`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_id` int(100) NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `person_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uuid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 851 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of persons
-- ----------------------------
INSERT INTO `persons` VALUES (803, 1, 'group1/M00/00/0A/rBUAB14rRNeAHNoCAAHPfKp_qqg20..jpg', '玮哥', '15762323410', '2020-01-25 03:26:14', '38b5d011e972458392b46fcaaac60ecc');
INSERT INTO `persons` VALUES (804, 1, 'group1/M00/00/0A/rBUAB14sFtWAUxO0AABR5tXQ2fc93..jpg', '三', '', '2020-01-25 18:22:14', '586b8b91ebd04d209be8e1912d08af15');
INSERT INTO `persons` VALUES (805, 2, 'group1/M00/00/0B/rBUAB14sVmCAEgfwAABFp6dItMg93..jpg', '大', '', '2020-01-25 22:53:21', '4abe7699a0a74c3aa87c979ba7d5754e');
INSERT INTO `persons` VALUES (806, 2, 'group1/M00/00/0B/rBUAB14tnqGAd4z6AABnnf--rAU11..jpg', '大娃12111', '15762323410', '2020-01-26 22:13:52', '18a9b0026731487c92a9b05637ebceb6');
INSERT INTO `persons` VALUES (808, 2, 'group1/M00/00/01/rBUAB17nThGAZ0IHAABWt7MuQgU97..jpg', 'eee', '15762323410', '2020-06-15 18:31:53', '9558455763624cf39ac3d30390b355ed');
INSERT INTO `persons` VALUES (810, 2, 'group1/M00/00/01/rBUAB170p_iALkQaAABiC5kBOg421..jpg', 'dasd', '', '2020-06-25 21:34:46', '862b6d7632a74d4583fd2c54682245c7');
INSERT INTO `persons` VALUES (811, 2, 'group1/M00/00/01/rBUAB170qCaAUILmAABJwwsKyig87..jpg', 'dasdas', '', '2020-06-25 21:35:33', '1af29dfa019e4ea28cf43d50daa334b1');
INSERT INTO `persons` VALUES (812, 2, 'group1/M00/00/01/rBUAB170qiiAQFNHAABO8JpkGFM93..jpg', 'age', '', '2020-06-25 21:44:06', 'b1e06f329db4468c87798ae422b45f3e');
INSERT INTO `persons` VALUES (813, 2, 'group1/M00/00/01/rBUAB170qwaASzW5AABc58eawEc57..jpg', 'ddd', '', '2020-06-25 21:47:49', '352a12a28a3647f1b3b80ebde0f7fdb6');
INSERT INTO `persons` VALUES (814, 2, 'group1/M00/00/01/rBUAB170sNKAe_4wAACdRBIsvjQ53..jpg', '鹅鹅鹅1', '15762323410', '2020-06-25 22:12:32', '7fbe36864cd74b9d865edc49ab48990f');
INSERT INTO `persons` VALUES (815, 2, 'group1/M00/00/01/rBUAB170sYGAclhuAABbBXPXLoA35..jpg', '小明1', '15762323410', '2020-06-25 22:15:28', '8722f3757644404aa20462aa9b00e80d');
INSERT INTO `persons` VALUES (816, 2, 'group1/M00/00/01/rBUAB170tm2AMqD2AABKDWmgvhE04..jpg', 'dddd', '', '2020-06-25 22:36:27', '5a79c32a18ad4b5cabe72aa8169352fa');
INSERT INTO `persons` VALUES (817, 2, 'group1/M00/00/01/rBUAB170tm2AYg2JAAAuHd1hmOI44..jpg', 'eq', '', '2020-06-25 22:36:27', 'e8e4fe5af8cc499d8acd1d767bab6cb3');
INSERT INTO `persons` VALUES (818, 2, 'group1/M00/00/01/rBUAB170tm-AQO5tAABbGEzV2iw77..jpg', 'logo', '', '2020-06-25 22:36:29', '54385902e71446e4bfa9d3383b40bed4');
INSERT INTO `persons` VALUES (819, 2, 'group1/M00/00/01/rBUAB170tm-AV1C2AABiFyETMZk45..jpg', 'sad', '', '2020-06-25 22:36:29', 'f56b802bc0d24aec87cb90fb58bb12dc');
INSERT INTO `persons` VALUES (820, 2, 'group1/M00/00/01/rBUAB170tnCAQ25BAABylssOWTU11..jpg', '白饭', '', '2020-06-25 22:36:31', '855582e906c0428d82d5b91f621de9f4');
INSERT INTO `persons` VALUES (821, 2, 'group1/M00/00/01/rBUAB170tnGAN5IoAABz4S8qF_898..jpg', '成果', '', '2020-06-25 22:36:31', 'a55798d52a4840d681671606e41f55b2');
INSERT INTO `persons` VALUES (829, 2, 'group1/M00/00/01/rBUAB170tnqAHWRhAAFuXYtwEzg23..jpg', '李四', '', '2020-06-25 22:36:41', '26a0b230ae0643d3839c2d05746db454');
INSERT INTO `persons` VALUES (831, 2, 'group1/M00/00/01/rBUAB170tnyAOU1jAABDj6GSyxA60..jpg', '没', '', '2020-06-25 22:36:43', 'f30b0b58919344dea13ab33e19be61bd');
INSERT INTO `persons` VALUES (835, 2, 'group1/M00/00/01/rBUAB170toWAAVSFAABe4WSyVho18..jpg', '下单', '', '2020-06-25 22:36:51', '5e6f82dd757b476d985e13019fa896d0');
INSERT INTO `persons` VALUES (836, 2, 'group1/M00/00/01/rBUAB170toeAORA3AABHQVRCGis40..jpg', '销毁', '', '2020-06-25 22:36:53', '0bb36b9077144e978061a6653c1e2b49');
INSERT INTO `persons` VALUES (840, 2, 'group1/M00/00/01/rBUAB170vCuAfP6SAABv88f3Ieo34..jpg', '魅蓝', '', '2020-06-25 23:00:57', '3cfbfc924a5448118fd7c4fbf4abdb4e');
INSERT INTO `persons` VALUES (841, 2, 'group1/M00/00/01/rBUAB172DSSAHbrcAABiC5kBOg424..jpg', 'daasd', '', '2020-06-26 22:58:42', 'c7973e566d56445a86fe4dfa598a7eba');
INSERT INTO `persons` VALUES (842, 2, 'group1/M00/00/01/rBUAB172DVOAX1NtAABylssOWTU41..jpg', '白饭1', '', '2020-06-26 22:59:29', '75e89b327a7c44cc98c71c5a0198adbe');
INSERT INTO `persons` VALUES (843, 2, 'group1/M00/00/01/rBUAB172EzGASfdRAABiC5kBOg419..jpg', '女人', '', '2020-06-26 23:24:30', 'a8b31dea3b0d4d369027ecb8ce5b40dc');
INSERT INTO `persons` VALUES (844, 2, 'group1/M00/00/01/rBUAB172FbuAY_ZWAABWt7MuQgU68..jpg', '你的', '', '2020-06-26 23:35:21', 'c2e6e519521c4caf9a02222c315f9dae');
INSERT INTO `persons` VALUES (845, 2, 'group1/M00/00/01/rBUAB172FiaAHrBMAAEOTka6FNc23..jpg', '哒哒qe13', '', '2020-06-26 23:37:08', '95d4a837efe04bfb8aa4d2117939135c');
INSERT INTO `persons` VALUES (846, 2, 'group1/M00/00/01/rBUAB172Fj2AO609AACSJB6BqOU43..jpg', '大王1', '', '2020-06-26 23:37:31', '73f0962137424c7895d0ad112dc31aeb');
INSERT INTO `persons` VALUES (847, 2, 'group1/M00/00/01/rBUAB172FwKAUdPQAAByUW5rfgc96..jpg', '的撒的撒a', '', '2020-06-26 23:40:47', '6377c9e2ba8e4bbda485640c40413135');
INSERT INTO `persons` VALUES (848, 2, 'group1/M00/00/01/rBUAB172Fz2AGVXcAAAuHd1hmOI82..jpg', 'eqq', '', '2020-06-26 23:41:46', '7dac6b32b0724c0ea4b569413a5117d5');
INSERT INTO `persons` VALUES (850, 2, 'group1/M00/00/01/rBUAB172GHSACj4oAABKDWmgvhE01..jpg', '都', '', '2020-06-26 23:46:58', '0c0b58c68feb4d58b23953de413da359');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NULL DEFAULT NULL,
  `role_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色的描述',
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (2, 'XIAO', '测试的');
INSERT INTO `role` VALUES (1, 'ADMIN', '管理员');

-- ----------------------------
-- Table structure for role_meta
-- ----------------------------
DROP TABLE IF EXISTS `role_meta`;
CREATE TABLE `role_meta`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `meta_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`, `meta_id`) USING BTREE,
  INDEX `meta`(`meta_id`) USING BTREE,
  CONSTRAINT `meta` FOREIGN KEY (`meta_id`) REFERENCES `meta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_meta
-- ----------------------------
INSERT INTO `role_meta` VALUES (1, 1, 1);
INSERT INTO `role_meta` VALUES (3, 1, 2);
INSERT INTO `role_meta` VALUES (4, 1, 3);
INSERT INTO `role_meta` VALUES (5, 1, 4);
INSERT INTO `role_meta` VALUES (6, 1, 5);
INSERT INTO `role_meta` VALUES (7, 1, 6);
INSERT INTO `role_meta` VALUES (8, 1, 8);
INSERT INTO `role_meta` VALUES (9, 1, 9);
INSERT INTO `role_meta` VALUES (17, 1, 11);
INSERT INTO `role_meta` VALUES (19, 1, 13);
INSERT INTO `role_meta` VALUES (20, 1, 14);
INSERT INTO `role_meta` VALUES (21, 1, 15);
INSERT INTO `role_meta` VALUES (22, 1, 16);
INSERT INTO `role_meta` VALUES (23, 1, 17);
INSERT INTO `role_meta` VALUES (24, 1, 18);
INSERT INTO `role_meta` VALUES (25, 1, 19);
INSERT INTO `role_meta` VALUES (27, 1, 21);
INSERT INTO `role_meta` VALUES (2, 2, 1);
INSERT INTO `role_meta` VALUES (16, 2, 11);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `address` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `lasttime` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上次登录时间',
  `isEnabled` int(1) NULL DEFAULT 0 COMMENT '是否可用 0为可用，1为不可用',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像的地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'user', '男', NULL, '$2a$10$9aiQrHMuSR8vsKvDqduyDOohgK4hKJPIOSMduCihevdgHBZhsfzVS', '山东省临沂市', '2020-03-08 21:19:03', 0, '1313131dsads');
INSERT INTO `sys_user` VALUES (2, 'admin', NULL, NULL, '$2a$10$QqhCUCAAbzTssd8h2U3wZ.X0zQfSHmqsvvZOoL.i1jYD1VpVaJa/y', '获取失败', '2020-07-19 20:11:57', 0, 'https://vuejs.org/images/logo.png');
INSERT INTO `sys_user` VALUES (9, '小明', '男', '15762323410', '$2a$10$RqEv6AlCHZ5KTe/MKM0EGOKUv97XCYG2XvathrAEgbtvt8vT811YG', '山东省临沂市', '2020-01-27 22:43:29', 0, '33');
INSERT INTO `sys_user` VALUES (10, 'dam1', '女', '15762323410', '$2a$10$56e.JaVo7u439Awv1VsD8O.U9K2WjpkDY/LOmaj34p1VXYpl50A06', NULL, NULL, 1, '3131');
INSERT INTO `sys_user` VALUES (11, '测试', '男', '15762323410', '$2a$10$qyx.Go9pNYulkaXoBPdMg.VGfKYg3VoiNkZ9ztLAW5cNBiO1rqLGG', NULL, NULL, 0, '3131');
INSERT INTO `sys_user` VALUES (12, '哒哒', '男', '15762323410', '$2a$10$hGJT1f6L4V89k0tG06iIpugR1zaHg9Oavo96qcmLooIcBG5zn47Nm', NULL, NULL, 0, '131');
INSERT INTO `sys_user` VALUES (13, '小明是d1', '女', '15762323410', '$2a$10$FZVxRWicNz3ySsjDmupLguVE1lVjarjoU6/DqLtpGyj6FZjaBeYFa', NULL, NULL, 0, '3131');
INSERT INTO `sys_user` VALUES (14, '夏美', '女', '15762323410', '$2a$10$Is.hoN1BdQ.089jsi/DmqenZvqa0ufJFH7i8Y1KgFELWxDEMoV2ce', NULL, NULL, 0, '31');
INSERT INTO `sys_user` VALUES (15, '紫天', '男', '15762323241', '$2a$10$ePLKx6X6Qd00PYRmBPr60Oahw/WdogWR.G0HvVhGJ6bNyCrCZhSNq', NULL, NULL, 0, '31');
INSERT INTO `sys_user` VALUES (16, '字眼', '男', '15762323410', '$2a$10$32.yyZWwrKEkNMHxLmlcJuothgWNUQAVriRhhY1peU/k5e5sPg3YW', NULL, NULL, 0, '131');
INSERT INTO `sys_user` VALUES (17, '小明121', '男', '15762323410', '$2a$10$VRQMUayE7sILav8GqQ05Ee03AvzRm6kFsZJeLVwDKxPmTYTzfs3DK', NULL, NULL, 1, '3');

-- ----------------------------
-- Table structure for todos
-- ----------------------------
DROP TABLE IF EXISTS `todos`;
CREATE TABLE `todos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `things` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `done` int(11) NULL DEFAULT 0 COMMENT '是否完成，0为未完成，1为完成',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of todos
-- ----------------------------
INSERT INTO `todos` VALUES (23, 2, '简答', 0);
INSERT INTO `todos` VALUES (25, 2, '大三', 0);
INSERT INTO `todos` VALUES (26, 2, '三大', 1);
INSERT INTO `todos` VALUES (27, 2, '今天是个好日子', 1);

-- ----------------------------
-- Table structure for user_log
-- ----------------------------
DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addid` int(11) NULL DEFAULT NULL,
  `name` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `url` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requestType` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requestParam` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ipInfo` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`addid`) USING BTREE,
  CONSTRAINT `uid` FOREIGN KEY (`addid`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2548 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_log
-- ----------------------------
INSERT INTO `user_log` VALUES (1133, 1, '查询会议', 1, '/meeting', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'user', '127.0.0.1', '山东省临沂市', 28, '2020-03-08 21:20:38');
INSERT INTO `user_log` VALUES (1134, 1, '查询会议', 1, '/meeting', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'user', '127.0.0.1', '山东省临沂市', 31, '2020-03-08 21:20:41');
INSERT INTO `user_log` VALUES (1135, 1, '查询签到比例', 1, '/check', 'GET', '{\"mid\":\"60\"}', 'user', '127.0.0.1', '山东省临沂市', 22, '2020-03-08 21:20:43');
INSERT INTO `user_log` VALUES (1136, 1, '查询签到情况', 1, '/check/60', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '山东省临沂市', 36, '2020-03-08 21:20:43');
INSERT INTO `user_log` VALUES (1137, 1, '查询签到情况', 1, '/check/60', 'GET', '{\"limit\":\"15\",\"page\":\"2\"}', 'user', '127.0.0.1', '山东省临沂市', 19, '2020-03-08 21:20:46');
INSERT INTO `user_log` VALUES (1138, 1, '修改签到状态', 1, '/check/0/60', 'PUT', '{\"ids[]\":\"803\"}', 'user', '127.0.0.1', '山东省临沂市', 22, '2020-03-08 21:20:54');
INSERT INTO `user_log` VALUES (1139, 1, '查询签到比例', 1, '/check', 'GET', '{\"mid\":\"60\"}', 'user', '127.0.0.1', '山东省临沂市', 9, '2020-03-08 21:20:55');
INSERT INTO `user_log` VALUES (1140, 1, '查询签到情况', 1, '/check/60', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '山东省临沂市', 9, '2020-03-08 21:20:55');
INSERT INTO `user_log` VALUES (1141, 1, '查询会议', 1, '/meeting', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'user', '127.0.0.1', '山东省临沂市', 33, '2020-03-08 21:21:01');
INSERT INTO `user_log` VALUES (1142, 1, '查询会议', 1, '/meeting', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'user', '127.0.0.1', '山东省临沂市', 84, '2020-03-08 21:23:24');
INSERT INTO `user_log` VALUES (1143, 1, '查看人员信息', 1, '/person', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'user', '127.0.0.1', '山东省临沂市', 28, '2020-03-08 21:23:27');
INSERT INTO `user_log` VALUES (1144, 1, '查看人员信息', 1, '/person', 'GET', '{\"personName\":\"哥\",\"limit\":\"10\",\"page\":\"1\"}', 'user', '127.0.0.1', '山东省临沂市', 34, '2020-03-08 21:23:39');
INSERT INTO `user_log` VALUES (1145, 1, '添加人员进入会议', 1, '/meeting/person', 'POST', '{\"mid\":\"62\",\"pids\":\"803\"}', 'user', '127.0.0.1', '山东省临沂市', 11, '2020-03-08 21:23:42');
INSERT INTO `user_log` VALUES (1161, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 683, '2020-04-17 12:17:58');
INSERT INTO `user_log` VALUES (1162, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 663, '2020-04-17 12:18:54');
INSERT INTO `user_log` VALUES (1163, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 669, '2020-04-17 12:31:22');
INSERT INTO `user_log` VALUES (1164, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 702, '2020-04-17 23:00:42');
INSERT INTO `user_log` VALUES (1165, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 830, '2020-04-18 13:19:50');
INSERT INTO `user_log` VALUES (1166, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 39287, '2020-04-18 13:21:49');
INSERT INTO `user_log` VALUES (1167, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 17240, '2020-04-18 13:25:02');
INSERT INTO `user_log` VALUES (1168, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 348, '2020-04-18 13:26:53');
INSERT INTO `user_log` VALUES (1169, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 270, '2020-04-18 13:27:22');
INSERT INTO `user_log` VALUES (1170, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 708, '2020-04-18 13:28:29');
INSERT INTO `user_log` VALUES (1171, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 250, '2020-04-18 13:28:53');
INSERT INTO `user_log` VALUES (1172, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 344, '2020-04-18 13:29:21');
INSERT INTO `user_log` VALUES (1173, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 324, '2020-04-18 13:47:45');
INSERT INTO `user_log` VALUES (1174, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 362, '2020-04-18 13:54:42');
INSERT INTO `user_log` VALUES (1175, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 295, '2020-04-18 13:56:11');
INSERT INTO `user_log` VALUES (1176, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 2178, '2020-04-18 13:57:23');
INSERT INTO `user_log` VALUES (1177, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 296, '2020-04-18 13:59:06');
INSERT INTO `user_log` VALUES (1178, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 1018, '2020-04-19 22:12:01');
INSERT INTO `user_log` VALUES (1179, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 277, '2020-04-19 22:12:11');
INSERT INTO `user_log` VALUES (1180, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 889, '2020-04-20 16:17:07');
INSERT INTO `user_log` VALUES (1181, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 1032, '2020-04-20 16:19:20');
INSERT INTO `user_log` VALUES (1182, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 303, '2020-04-20 16:22:14');
INSERT INTO `user_log` VALUES (1183, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 265052, '2020-04-20 16:37:01');
INSERT INTO `user_log` VALUES (1184, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 3562, '2020-04-20 16:52:49');
INSERT INTO `user_log` VALUES (1185, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 259, '2020-04-20 16:54:49');
INSERT INTO `user_log` VALUES (1186, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 329, '2020-04-20 16:55:08');
INSERT INTO `user_log` VALUES (1187, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 10116, '2020-04-20 16:57:05');
INSERT INTO `user_log` VALUES (1188, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 7843, '2020-04-20 17:21:59');
INSERT INTO `user_log` VALUES (1189, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 273, '2020-04-20 17:25:12');
INSERT INTO `user_log` VALUES (1190, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 303, '2020-04-20 17:26:37');
INSERT INTO `user_log` VALUES (1191, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 250, '2020-04-20 17:27:33');
INSERT INTO `user_log` VALUES (1192, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 271, '2020-04-20 17:28:10');
INSERT INTO `user_log` VALUES (1193, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 231, '2020-04-20 17:28:55');
INSERT INTO `user_log` VALUES (1194, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 345, '2020-04-20 17:30:00');
INSERT INTO `user_log` VALUES (1195, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 260, '2020-04-20 17:30:42');
INSERT INTO `user_log` VALUES (1196, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 221, '2020-04-20 17:31:06');
INSERT INTO `user_log` VALUES (1197, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 305, '2020-04-20 17:32:30');
INSERT INTO `user_log` VALUES (1198, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 354, '2020-04-20 17:34:12');
INSERT INTO `user_log` VALUES (1199, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 829, '2020-04-20 18:21:36');
INSERT INTO `user_log` VALUES (1200, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 1362, '2020-04-20 23:19:21');
INSERT INTO `user_log` VALUES (1201, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 847, '2020-04-20 23:28:19');
INSERT INTO `user_log` VALUES (1202, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 2904, '2020-04-20 23:33:30');
INSERT INTO `user_log` VALUES (1203, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 786, '2020-04-21 07:55:30');
INSERT INTO `user_log` VALUES (1204, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 859, '2020-04-21 08:52:13');
INSERT INTO `user_log` VALUES (1205, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 341, '2020-04-21 08:54:37');
INSERT INTO `user_log` VALUES (1206, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 2164, '2020-04-21 08:59:56');
INSERT INTO `user_log` VALUES (1207, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 336, '2020-04-21 09:04:31');
INSERT INTO `user_log` VALUES (1208, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 351, '2020-04-21 09:10:42');
INSERT INTO `user_log` VALUES (1209, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 288, '2020-04-21 09:15:54');
INSERT INTO `user_log` VALUES (1210, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 558, '2020-04-21 09:19:11');
INSERT INTO `user_log` VALUES (1211, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 359, '2020-04-21 09:21:22');
INSERT INTO `user_log` VALUES (1212, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 1394, '2020-04-21 09:25:35');
INSERT INTO `user_log` VALUES (1213, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 366, '2020-04-21 09:29:00');
INSERT INTO `user_log` VALUES (1214, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 323, '2020-04-21 09:33:13');
INSERT INTO `user_log` VALUES (1215, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 934, '2020-04-21 09:35:48');
INSERT INTO `user_log` VALUES (1216, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 974, '2020-04-21 09:39:39');
INSERT INTO `user_log` VALUES (1217, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 299, '2020-04-21 09:45:16');
INSERT INTO `user_log` VALUES (1218, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 320, '2020-04-21 09:48:31');
INSERT INTO `user_log` VALUES (1219, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 1050, '2020-04-21 09:50:42');
INSERT INTO `user_log` VALUES (1220, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 282, '2020-04-21 09:56:13');
INSERT INTO `user_log` VALUES (1221, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 226, '2020-04-21 09:56:21');
INSERT INTO `user_log` VALUES (1222, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 251, '2020-04-21 09:56:26');
INSERT INTO `user_log` VALUES (1223, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 306, '2020-04-21 09:58:04');
INSERT INTO `user_log` VALUES (1224, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 387, '2020-04-21 11:08:53');
INSERT INTO `user_log` VALUES (1225, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 455, '2020-04-21 11:10:56');
INSERT INTO `user_log` VALUES (1226, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 239, '2020-04-21 11:11:08');
INSERT INTO `user_log` VALUES (1227, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 289, '2020-04-21 11:12:43');
INSERT INTO `user_log` VALUES (1228, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 338, '2020-04-21 14:15:42');
INSERT INTO `user_log` VALUES (1229, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 2016, '2020-04-22 10:10:10');
INSERT INTO `user_log` VALUES (1230, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 1684, '2020-04-22 10:10:10');
INSERT INTO `user_log` VALUES (1231, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 279, '2020-04-22 10:10:15');
INSERT INTO `user_log` VALUES (1232, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 403, '2020-04-22 10:10:31');
INSERT INTO `user_log` VALUES (1233, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 481, '2020-04-23 09:57:41');
INSERT INTO `user_log` VALUES (1234, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 270, '2020-04-23 09:57:49');
INSERT INTO `user_log` VALUES (1235, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 292, '2020-04-23 09:59:41');
INSERT INTO `user_log` VALUES (1236, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 255, '2020-04-23 10:00:04');
INSERT INTO `user_log` VALUES (1237, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 286, '2020-04-23 10:01:03');
INSERT INTO `user_log` VALUES (1238, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 239, '2020-04-23 10:01:45');
INSERT INTO `user_log` VALUES (1239, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 651, '2020-04-23 10:02:05');
INSERT INTO `user_log` VALUES (1240, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 303, '2020-04-23 10:02:59');
INSERT INTO `user_log` VALUES (1241, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 232, '2020-04-23 10:03:35');
INSERT INTO `user_log` VALUES (1242, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 251, '2020-04-23 10:04:49');
INSERT INTO `user_log` VALUES (1243, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 372, '2020-04-23 10:05:44');
INSERT INTO `user_log` VALUES (1244, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 313, '2020-04-23 10:06:54');
INSERT INTO `user_log` VALUES (1245, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 259, '2020-04-23 10:09:38');
INSERT INTO `user_log` VALUES (1246, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 248, '2020-04-23 10:10:26');
INSERT INTO `user_log` VALUES (1247, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 332, '2020-04-23 10:13:20');
INSERT INTO `user_log` VALUES (1248, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 256, '2020-04-23 10:17:26');
INSERT INTO `user_log` VALUES (1249, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 212, '2020-04-23 10:17:55');
INSERT INTO `user_log` VALUES (1250, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 263, '2020-04-23 10:19:44');
INSERT INTO `user_log` VALUES (1251, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 329, '2020-04-23 10:20:15');
INSERT INTO `user_log` VALUES (1252, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 334, '2020-04-23 10:22:23');
INSERT INTO `user_log` VALUES (1253, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 289, '2020-04-23 10:39:16');
INSERT INTO `user_log` VALUES (1254, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 205, '2020-04-23 10:39:21');
INSERT INTO `user_log` VALUES (1255, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 263, '2020-04-23 10:40:25');
INSERT INTO `user_log` VALUES (1256, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 319, '2020-04-23 10:42:36');
INSERT INTO `user_log` VALUES (1257, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 245, '2020-04-23 10:43:07');
INSERT INTO `user_log` VALUES (1258, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 699, '2020-04-23 10:44:55');
INSERT INTO `user_log` VALUES (1259, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 296, '2020-04-23 10:46:38');
INSERT INTO `user_log` VALUES (1260, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 293, '2020-04-23 10:49:14');
INSERT INTO `user_log` VALUES (1261, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 642, '2020-04-23 10:51:07');
INSERT INTO `user_log` VALUES (1262, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 280, '2020-04-23 10:54:00');
INSERT INTO `user_log` VALUES (1263, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 341, '2020-04-23 11:15:58');
INSERT INTO `user_log` VALUES (1264, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 240, '2020-04-23 11:16:04');
INSERT INTO `user_log` VALUES (1265, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 310, '2020-04-23 11:17:26');
INSERT INTO `user_log` VALUES (1266, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 289, '2020-04-23 11:20:35');
INSERT INTO `user_log` VALUES (1267, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 185, '2020-04-23 11:20:40');
INSERT INTO `user_log` VALUES (1268, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 282, '2020-04-23 11:22:05');
INSERT INTO `user_log` VALUES (1269, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 299, '2020-04-23 11:22:40');
INSERT INTO `user_log` VALUES (1270, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 269, '2020-04-23 11:23:50');
INSERT INTO `user_log` VALUES (1271, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 257, '2020-04-23 11:24:27');
INSERT INTO `user_log` VALUES (1272, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 310, '2020-04-23 11:24:50');
INSERT INTO `user_log` VALUES (1273, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 312, '2020-04-23 11:26:09');
INSERT INTO `user_log` VALUES (1274, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 308, '2020-04-23 11:27:38');
INSERT INTO `user_log` VALUES (1275, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 231, '2020-04-23 11:28:48');
INSERT INTO `user_log` VALUES (1276, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 287, '2020-04-23 11:30:35');
INSERT INTO `user_log` VALUES (1277, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 214, '2020-04-23 11:30:56');
INSERT INTO `user_log` VALUES (1278, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 177, '2020-04-23 11:30:58');
INSERT INTO `user_log` VALUES (1279, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 168, '2020-04-23 11:31:01');
INSERT INTO `user_log` VALUES (1280, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 256, '2020-04-23 11:31:15');
INSERT INTO `user_log` VALUES (1281, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 247, '2020-04-23 11:31:31');
INSERT INTO `user_log` VALUES (1282, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 293, '2020-04-23 11:33:33');
INSERT INTO `user_log` VALUES (1283, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 345, '2020-04-23 11:34:20');
INSERT INTO `user_log` VALUES (1284, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 220, '2020-04-23 11:34:45');
INSERT INTO `user_log` VALUES (1285, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 273, '2020-04-23 11:35:17');
INSERT INTO `user_log` VALUES (1286, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 282, '2020-04-23 11:55:11');
INSERT INTO `user_log` VALUES (1287, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 889, '2020-04-23 14:30:08');
INSERT INTO `user_log` VALUES (1288, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 302, '2020-04-23 14:30:41');
INSERT INTO `user_log` VALUES (1289, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 371, '2020-04-23 14:52:04');
INSERT INTO `user_log` VALUES (1290, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 531, '2020-04-23 18:31:49');
INSERT INTO `user_log` VALUES (1291, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 2681, '2020-04-24 08:56:19');
INSERT INTO `user_log` VALUES (1292, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 388, '2020-04-24 19:42:23');
INSERT INTO `user_log` VALUES (1293, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 269, '2020-04-24 19:42:53');
INSERT INTO `user_log` VALUES (1294, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 324, '2020-04-24 19:43:39');
INSERT INTO `user_log` VALUES (1295, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 375, '2020-04-24 19:44:59');
INSERT INTO `user_log` VALUES (1296, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 257, '2020-04-24 19:45:27');
INSERT INTO `user_log` VALUES (1297, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 274, '2020-04-24 19:46:10');
INSERT INTO `user_log` VALUES (1298, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 276, '2020-04-24 19:46:40');
INSERT INTO `user_log` VALUES (1299, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 261, '2020-04-24 19:48:10');
INSERT INTO `user_log` VALUES (1300, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 2685, '2020-04-25 18:57:25');
INSERT INTO `user_log` VALUES (1301, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 748, '2020-04-25 18:57:27');
INSERT INTO `user_log` VALUES (1302, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 2319, '2020-04-25 19:48:10');
INSERT INTO `user_log` VALUES (1303, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 272, '2020-04-25 19:49:29');
INSERT INTO `user_log` VALUES (1304, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 345, '2020-04-25 19:59:10');
INSERT INTO `user_log` VALUES (1305, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 261, '2020-04-25 19:59:22');
INSERT INTO `user_log` VALUES (1306, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 319, '2020-04-25 20:08:11');
INSERT INTO `user_log` VALUES (1307, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 278, '2020-04-25 20:23:29');
INSERT INTO `user_log` VALUES (1308, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 396, '2020-04-25 20:24:04');
INSERT INTO `user_log` VALUES (1309, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 341, '2020-04-25 20:33:36');
INSERT INTO `user_log` VALUES (1310, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 67, '2020-04-25 21:26:43');
INSERT INTO `user_log` VALUES (1311, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 3411, '2020-04-26 10:35:58');
INSERT INTO `user_log` VALUES (1312, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 584, '2020-04-26 10:41:45');
INSERT INTO `user_log` VALUES (1313, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 424, '2020-04-26 10:42:20');
INSERT INTO `user_log` VALUES (1314, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 593, '2020-04-26 10:44:25');
INSERT INTO `user_log` VALUES (1315, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 344, '2020-04-26 11:48:21');
INSERT INTO `user_log` VALUES (1316, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 3945, '2020-04-26 18:38:38');
INSERT INTO `user_log` VALUES (1317, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 4602, '2020-04-27 13:44:44');
INSERT INTO `user_log` VALUES (1318, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 335, '2020-04-27 13:56:18');
INSERT INTO `user_log` VALUES (1319, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 212, '2020-04-27 13:56:20');
INSERT INTO `user_log` VALUES (1320, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 501, '2020-04-27 13:56:27');
INSERT INTO `user_log` VALUES (1321, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 303, '2020-04-27 13:57:05');
INSERT INTO `user_log` VALUES (1322, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 290, '2020-04-27 13:59:42');
INSERT INTO `user_log` VALUES (1323, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 407, '2020-04-27 19:29:35');
INSERT INTO `user_log` VALUES (1324, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 769, '2020-04-28 00:53:48');
INSERT INTO `user_log` VALUES (1325, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 18461, '2020-04-28 00:56:36');
INSERT INTO `user_log` VALUES (1326, 2, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '山东省临沂市', 57429, '2020-04-28 00:59:20');
INSERT INTO `user_log` VALUES (1327, 2, '更新TODO信息', 1, '/todos/1/1', 'PUT', '{\"data\":\"1131da\"}', 'admin', '127.0.0.1', '山东省临沂市', 1701, '2020-04-28 18:15:15');
INSERT INTO `user_log` VALUES (1328, 2, '更新TODO信息', 1, '/todos/1/1', 'PUT', '{\"data\":\"1131da\"}', 'admin', '127.0.0.1', '山东省临沂市', 2254, '2020-04-28 18:19:25');
INSERT INTO `user_log` VALUES (1329, 2, '更新TODO信息', 1, '/todos/1/1', 'PUT', '{\"data\":\"1131da\"}', 'admin', '127.0.0.1', '山东省临沂市', 35, '2020-04-28 18:34:02');
INSERT INTO `user_log` VALUES (1330, 2, '更新TODO信息', 1, '/todos/1', 'PUT', '{\"uid\":\"113\"}', 'admin', '127.0.0.1', '山东省临沂市', 16565, '2020-04-28 19:10:16');
INSERT INTO `user_log` VALUES (1331, 2, '更新TODO信息', 1, '/todos/1', 'PUT', '{\"uid\":\"113\"}', 'admin', '127.0.0.1', '山东省临沂市', 1919, '2020-04-28 19:12:57');
INSERT INTO `user_log` VALUES (1332, 2, '更新TODO信息', 1, '/todos/1', 'PUT', '{\"uid\":\"\"}', 'admin', '127.0.0.1', '山东省临沂市', 41, '2020-04-28 19:13:22');
INSERT INTO `user_log` VALUES (1333, 2, '更新TODO信息', 1, '/todos/1', 'PUT', '{\"uid\":\"\"}', 'admin', '127.0.0.1', '山东省临沂市', 13, '2020-04-28 19:13:29');
INSERT INTO `user_log` VALUES (1334, 2, '更新TODO信息', 1, '/todos/1', 'PUT', '{\"uid\":\"\"}', 'admin', '127.0.0.1', '山东省临沂市', 12, '2020-04-28 19:13:46');
INSERT INTO `user_log` VALUES (1335, 2, '更新TODO信息', 1, '/todos/1', 'PUT', '{\"uid\":\"\"}', 'admin', '127.0.0.1', '山东省临沂市', 9970, '2020-04-28 19:15:32');
INSERT INTO `user_log` VALUES (1336, 2, '更新TODO信息', 1, '/todos/1', 'PUT', '{\"things\":\"2\"}', 'admin', '127.0.0.1', '山东省临沂市', 10, '2020-04-28 19:16:53');
INSERT INTO `user_log` VALUES (1337, 2, '更新TODO信息', 1, '/todos/1', 'PUT', '{\"things\":\"干就完\"}', 'admin', '127.0.0.1', '山东省临沂市', 9, '2020-04-28 19:17:01');
INSERT INTO `user_log` VALUES (1338, 2, '更新TODO信息', 1, '/todos/1', 'PUT', '{\"things\":\"干就完\",\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 8, '2020-04-28 19:17:13');
INSERT INTO `user_log` VALUES (1339, 2, '添加TODO信息', 1, '/todos', 'POST', '{}', 'admin', '127.0.0.1', '山东省临沂市', 82, '2020-04-29 01:31:53');
INSERT INTO `user_log` VALUES (1340, 2, '添加TODO信息', 1, '/todos', 'POST', '{}', 'admin', '127.0.0.1', '山东省临沂市', 13, '2020-04-29 01:32:33');
INSERT INTO `user_log` VALUES (1341, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"大三\"}', 'admin', '127.0.0.1', '山东省临沂市', 9, '2020-04-29 01:55:20');
INSERT INTO `user_log` VALUES (1342, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"大三\"}', 'admin', '127.0.0.1', '山东省临沂市', 7, '2020-04-29 01:55:37');
INSERT INTO `user_log` VALUES (1343, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 10, '2020-04-29 02:09:21');
INSERT INTO `user_log` VALUES (1344, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 16, '2020-04-29 02:09:44');
INSERT INTO `user_log` VALUES (1345, 2, '更新TODO信息', 1, '/todos/3', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 32, '2020-04-29 02:11:58');
INSERT INTO `user_log` VALUES (1346, 2, '更新TODO信息', 1, '/todos/5', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 8, '2020-04-29 02:12:13');
INSERT INTO `user_log` VALUES (1347, 2, '更新TODO信息', 1, '/todos/6', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 7, '2020-04-29 02:12:13');
INSERT INTO `user_log` VALUES (1348, 2, '更新TODO信息', 1, '/todos/7', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 02:12:14');
INSERT INTO `user_log` VALUES (1349, 2, '更新TODO信息', 1, '/todos/8', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 7, '2020-04-29 02:12:14');
INSERT INTO `user_log` VALUES (1350, 2, '更新TODO信息', 1, '/todos/9', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 7, '2020-04-29 02:12:15');
INSERT INTO `user_log` VALUES (1351, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 02:32:35');
INSERT INTO `user_log` VALUES (1352, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{}', 'admin', '127.0.0.1', '山东省临沂市', 75687, '2020-04-29 02:32:40');
INSERT INTO `user_log` VALUES (1353, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{}', 'admin', '127.0.0.1', '山东省临沂市', 59513, '2020-04-29 02:34:00');
INSERT INTO `user_log` VALUES (1354, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{}', 'admin', '127.0.0.1', '山东省临沂市', 134819, '2020-04-29 02:35:04');
INSERT INTO `user_log` VALUES (1355, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{}', 'admin', '127.0.0.1', '山东省临沂市', 9642, '2020-04-29 02:37:38');
INSERT INTO `user_log` VALUES (1356, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{}', 'admin', '127.0.0.1', '山东省临沂市', 114227, '2020-04-29 02:42:54');
INSERT INTO `user_log` VALUES (1357, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 24988, '2020-04-29 02:44:56');
INSERT INTO `user_log` VALUES (1358, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 2490, '2020-04-29 02:47:14');
INSERT INTO `user_log` VALUES (1359, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"2\"}', 'admin', '127.0.0.1', '山东省临沂市', 8, '2020-04-29 02:47:39');
INSERT INTO `user_log` VALUES (1360, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"3\"}', 'admin', '127.0.0.1', '山东省临沂市', 8, '2020-04-29 02:47:40');
INSERT INTO `user_log` VALUES (1361, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"5\"}', 'admin', '127.0.0.1', '山东省临沂市', 8, '2020-04-29 02:47:40');
INSERT INTO `user_log` VALUES (1362, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"6\"}', 'admin', '127.0.0.1', '山东省临沂市', 7, '2020-04-29 02:47:40');
INSERT INTO `user_log` VALUES (1363, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"7\"}', 'admin', '127.0.0.1', '山东省临沂市', 7, '2020-04-29 02:47:40');
INSERT INTO `user_log` VALUES (1364, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"8\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 02:47:40');
INSERT INTO `user_log` VALUES (1365, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"9\"}', 'admin', '127.0.0.1', '山东省临沂市', 8, '2020-04-29 02:47:41');
INSERT INTO `user_log` VALUES (1366, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"10\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 02:47:41');
INSERT INTO `user_log` VALUES (1367, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"11\"}', 'admin', '127.0.0.1', '山东省临沂市', 8, '2020-04-29 02:47:41');
INSERT INTO `user_log` VALUES (1368, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"11\"}', 'admin', '127.0.0.1', '山东省临沂市', 32, '2020-04-29 02:47:41');
INSERT INTO `user_log` VALUES (1369, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"11\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 02:47:42');
INSERT INTO `user_log` VALUES (1370, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"才没\"}', 'admin', '127.0.0.1', '山东省临沂市', 10, '2020-04-29 02:47:50');
INSERT INTO `user_log` VALUES (1371, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"要和\"}', 'admin', '127.0.0.1', '山东省临沂市', 8, '2020-04-29 02:47:53');
INSERT INTO `user_log` VALUES (1372, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 18, '2020-04-29 02:47:55');
INSERT INTO `user_log` VALUES (1373, 2, '更新TODO信息', 1, '/todos/12', 'PUT', '{\"things\":\"爱的十大所多\"}', 'admin', '127.0.0.1', '山东省临沂市', 7, '2020-04-29 02:54:13');
INSERT INTO `user_log` VALUES (1374, 2, '更新TODO信息', 1, '/todos/12', 'PUT', '{\"things\":\"dasdasd\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 02:54:18');
INSERT INTO `user_log` VALUES (1375, 2, '更新TODO信息', 1, '/todos/12', 'PUT', '{\"things\":\"woaini\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 02:56:12');
INSERT INTO `user_log` VALUES (1376, 2, '更新TODO信息', 1, '/todos/12', 'PUT', '{\"things\":\"woaini\"}', 'admin', '127.0.0.1', '山东省临沂市', 7, '2020-04-29 02:56:16');
INSERT INTO `user_log` VALUES (1377, 2, '更新TODO信息', 1, '/todos/12', 'PUT', '{\"things\":\"woaini\"}', 'admin', '127.0.0.1', '山东省临沂市', 11, '2020-04-29 02:57:08');
INSERT INTO `user_log` VALUES (1378, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"12\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:03:47');
INSERT INTO `user_log` VALUES (1379, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"sa1\"}', 'admin', '127.0.0.1', '山东省临沂市', 8, '2020-04-29 03:04:54');
INSERT INTO `user_log` VALUES (1380, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 8, '2020-04-29 03:04:56');
INSERT INTO `user_log` VALUES (1381, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:04:57');
INSERT INTO `user_log` VALUES (1382, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:05:03');
INSERT INTO `user_log` VALUES (1383, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:05:04');
INSERT INTO `user_log` VALUES (1384, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:05:05');
INSERT INTO `user_log` VALUES (1385, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:05:05');
INSERT INTO `user_log` VALUES (1386, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:05:06');
INSERT INTO `user_log` VALUES (1387, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:05:06');
INSERT INTO `user_log` VALUES (1388, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:05:07');
INSERT INTO `user_log` VALUES (1389, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:05:07');
INSERT INTO `user_log` VALUES (1390, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:05:08');
INSERT INTO `user_log` VALUES (1391, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:05:08');
INSERT INTO `user_log` VALUES (1392, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 7, '2020-04-29 03:05:08');
INSERT INTO `user_log` VALUES (1393, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:05:09');
INSERT INTO `user_log` VALUES (1394, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:05:10');
INSERT INTO `user_log` VALUES (1395, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:05:11');
INSERT INTO `user_log` VALUES (1396, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:05:11');
INSERT INTO `user_log` VALUES (1397, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 7, '2020-04-29 03:08:25');
INSERT INTO `user_log` VALUES (1398, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:08:25');
INSERT INTO `user_log` VALUES (1399, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:08:26');
INSERT INTO `user_log` VALUES (1400, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:08:27');
INSERT INTO `user_log` VALUES (1401, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"things\":\"要和\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:08:56');
INSERT INTO `user_log` VALUES (1402, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"things\":\"sa1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:08:58');
INSERT INTO `user_log` VALUES (1403, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"vfe\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:09:15');
INSERT INTO `user_log` VALUES (1404, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:09:17');
INSERT INTO `user_log` VALUES (1405, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:09:18');
INSERT INTO `user_log` VALUES (1406, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"things\":\"vfe\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:09:20');
INSERT INTO `user_log` VALUES (1407, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"things\":\"要和\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:09:46');
INSERT INTO `user_log` VALUES (1408, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"参数\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:09:48');
INSERT INTO `user_log` VALUES (1409, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"things\":\"参数\"}', 'admin', '127.0.0.1', '山东省临沂市', 26, '2020-04-29 03:11:50');
INSERT INTO `user_log` VALUES (1410, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"things\":\"vfe\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:12:50');
INSERT INTO `user_log` VALUES (1411, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"things\":\"参数\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:12:52');
INSERT INTO `user_log` VALUES (1412, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"things\":\"要和\"}', 'admin', '127.0.0.1', '山东省临沂市', 8, '2020-04-29 03:12:52');
INSERT INTO `user_log` VALUES (1413, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:12:53');
INSERT INTO `user_log` VALUES (1414, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:12:54');
INSERT INTO `user_log` VALUES (1415, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:12:55');
INSERT INTO `user_log` VALUES (1416, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:12:56');
INSERT INTO `user_log` VALUES (1417, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:12:56');
INSERT INTO `user_log` VALUES (1418, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"发\"}', 'admin', '127.0.0.1', '山东省临沂市', 7, '2020-04-29 03:14:37');
INSERT INTO `user_log` VALUES (1419, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:14:45');
INSERT INTO `user_log` VALUES (1420, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:14:46');
INSERT INTO `user_log` VALUES (1421, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:14:48');
INSERT INTO `user_log` VALUES (1422, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:14:49');
INSERT INTO `user_log` VALUES (1423, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:14:49');
INSERT INTO `user_log` VALUES (1424, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:14:49');
INSERT INTO `user_log` VALUES (1425, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:14:49');
INSERT INTO `user_log` VALUES (1426, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:14:50');
INSERT INTO `user_log` VALUES (1427, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:14:50');
INSERT INTO `user_log` VALUES (1428, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:14:50');
INSERT INTO `user_log` VALUES (1429, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:14:51');
INSERT INTO `user_log` VALUES (1430, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:14:51');
INSERT INTO `user_log` VALUES (1431, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:14:51');
INSERT INTO `user_log` VALUES (1432, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 29, '2020-04-29 03:21:24');
INSERT INTO `user_log` VALUES (1433, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:21:24');
INSERT INTO `user_log` VALUES (1434, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:21:25');
INSERT INTO `user_log` VALUES (1435, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:21:25');
INSERT INTO `user_log` VALUES (1436, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:21:25');
INSERT INTO `user_log` VALUES (1437, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:21:25');
INSERT INTO `user_log` VALUES (1438, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 7, '2020-04-29 03:21:25');
INSERT INTO `user_log` VALUES (1439, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:21:26');
INSERT INTO `user_log` VALUES (1440, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:21:26');
INSERT INTO `user_log` VALUES (1441, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:21:26');
INSERT INTO `user_log` VALUES (1442, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:21:27');
INSERT INTO `user_log` VALUES (1443, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:21:27');
INSERT INTO `user_log` VALUES (1444, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:21:28');
INSERT INTO `user_log` VALUES (1445, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:21:28');
INSERT INTO `user_log` VALUES (1446, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:21:29');
INSERT INTO `user_log` VALUES (1447, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:22:57');
INSERT INTO `user_log` VALUES (1448, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:22:58');
INSERT INTO `user_log` VALUES (1449, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:22:58');
INSERT INTO `user_log` VALUES (1450, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:22:59');
INSERT INTO `user_log` VALUES (1451, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:23:52');
INSERT INTO `user_log` VALUES (1452, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:23:56');
INSERT INTO `user_log` VALUES (1453, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:23:56');
INSERT INTO `user_log` VALUES (1454, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:23:56');
INSERT INTO `user_log` VALUES (1455, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:23:57');
INSERT INTO `user_log` VALUES (1456, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:25:30');
INSERT INTO `user_log` VALUES (1457, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:27:09');
INSERT INTO `user_log` VALUES (1458, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:27:10');
INSERT INTO `user_log` VALUES (1459, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:27:10');
INSERT INTO `user_log` VALUES (1460, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:27:28');
INSERT INTO `user_log` VALUES (1461, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:28:00');
INSERT INTO `user_log` VALUES (1462, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:28:02');
INSERT INTO `user_log` VALUES (1463, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:28:05');
INSERT INTO `user_log` VALUES (1464, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:28:05');
INSERT INTO `user_log` VALUES (1465, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:28:06');
INSERT INTO `user_log` VALUES (1466, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:28:18');
INSERT INTO `user_log` VALUES (1467, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"0\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:28:34');
INSERT INTO `user_log` VALUES (1468, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"0\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:28:40');
INSERT INTO `user_log` VALUES (1469, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"0\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:28:50');
INSERT INTO `user_log` VALUES (1470, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:29:59');
INSERT INTO `user_log` VALUES (1471, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"0\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:30:00');
INSERT INTO `user_log` VALUES (1472, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:30:05');
INSERT INTO `user_log` VALUES (1473, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:30:06');
INSERT INTO `user_log` VALUES (1474, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:30:06');
INSERT INTO `user_log` VALUES (1475, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"0\"}', 'admin', '127.0.0.1', '山东省临沂市', 7, '2020-04-29 03:32:26');
INSERT INTO `user_log` VALUES (1476, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"0\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:32:27');
INSERT INTO `user_log` VALUES (1477, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"0\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:32:27');
INSERT INTO `user_log` VALUES (1478, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"0\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:32:28');
INSERT INTO `user_log` VALUES (1479, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"0\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:32:28');
INSERT INTO `user_log` VALUES (1480, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:33:06');
INSERT INTO `user_log` VALUES (1481, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:33:06');
INSERT INTO `user_log` VALUES (1482, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 15, '2020-04-29 03:33:06');
INSERT INTO `user_log` VALUES (1483, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:33:06');
INSERT INTO `user_log` VALUES (1484, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 18, '2020-04-29 03:33:06');
INSERT INTO `user_log` VALUES (1485, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:33:16');
INSERT INTO `user_log` VALUES (1486, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:33:16');
INSERT INTO `user_log` VALUES (1487, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:33:16');
INSERT INTO `user_log` VALUES (1488, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:33:16');
INSERT INTO `user_log` VALUES (1489, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 22, '2020-04-29 03:33:16');
INSERT INTO `user_log` VALUES (1490, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:33:17');
INSERT INTO `user_log` VALUES (1491, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:33:17');
INSERT INTO `user_log` VALUES (1492, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 13, '2020-04-29 03:33:17');
INSERT INTO `user_log` VALUES (1493, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 26, '2020-04-29 03:33:17');
INSERT INTO `user_log` VALUES (1494, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 29, '2020-04-29 03:33:17');
INSERT INTO `user_log` VALUES (1495, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:33:18');
INSERT INTO `user_log` VALUES (1496, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:33:18');
INSERT INTO `user_log` VALUES (1497, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 10, '2020-04-29 03:33:18');
INSERT INTO `user_log` VALUES (1498, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:33:18');
INSERT INTO `user_log` VALUES (1499, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 8, '2020-04-29 03:33:18');
INSERT INTO `user_log` VALUES (1500, 2, '更新TODO信息', 1, '/todos/16', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:33:19');
INSERT INTO `user_log` VALUES (1501, 2, '更新TODO信息', 1, '/todos/17', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:33:19');
INSERT INTO `user_log` VALUES (1502, 2, '更新TODO信息', 1, '/todos/15', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:33:19');
INSERT INTO `user_log` VALUES (1503, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:33:19');
INSERT INTO `user_log` VALUES (1504, 2, '更新TODO信息', 1, '/todos/13', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 16, '2020-04-29 03:33:19');
INSERT INTO `user_log` VALUES (1505, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"done\":\"0\"}', 'admin', '127.0.0.1', '山东省临沂市', 8, '2020-04-29 03:33:39');
INSERT INTO `user_log` VALUES (1506, 2, '更新TODO信息', 1, '/todos/14', 'PUT', '{\"things\":\"sa1阿萨德\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:33:41');
INSERT INTO `user_log` VALUES (1507, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"14\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:34:35');
INSERT INTO `user_log` VALUES (1508, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"13\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:34:37');
INSERT INTO `user_log` VALUES (1509, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"15\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:34:37');
INSERT INTO `user_log` VALUES (1510, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"16\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:34:38');
INSERT INTO `user_log` VALUES (1511, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"17\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:34:38');
INSERT INTO `user_log` VALUES (1512, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"17\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:34:41');
INSERT INTO `user_log` VALUES (1513, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"ads\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:35:40');
INSERT INTO `user_log` VALUES (1514, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"大苏打\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:35:41');
INSERT INTO `user_log` VALUES (1515, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"18\"}', 'admin', '127.0.0.1', '山东省临沂市', 4, '2020-04-29 03:35:46');
INSERT INTO `user_log` VALUES (1516, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"19\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:35:47');
INSERT INTO `user_log` VALUES (1517, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"大三\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:36:42');
INSERT INTO `user_log` VALUES (1518, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"20\"}', 'admin', '127.0.0.1', '山东省临沂市', 6, '2020-04-29 03:37:12');
INSERT INTO `user_log` VALUES (1519, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"大\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:37:27');
INSERT INTO `user_log` VALUES (1520, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"21\"}', 'admin', '127.0.0.1', '山东省临沂市', 5, '2020-04-29 03:37:34');
INSERT INTO `user_log` VALUES (1521, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"沙发\"}', 'admin', '127.0.0.1', '山东省临沂市', 16, '2020-04-29 03:40:18');
INSERT INTO `user_log` VALUES (1522, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"22\"}', 'admin', '127.0.0.1', '山东省临沂市', 9, '2020-04-29 03:40:19');
INSERT INTO `user_log` VALUES (1523, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"简答\"}', 'admin', '127.0.0.1', '山东省临沂市', 46, '2020-04-29 08:30:28');
INSERT INTO `user_log` VALUES (1524, 2, '更新TODO信息', 1, '/todos/23', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省临沂市', 23, '2020-04-29 08:30:30');
INSERT INTO `user_log` VALUES (1525, 2, '更新TODO信息', 1, '/todos/23', 'PUT', '{\"done\":\"0\"}', 'admin', '127.0.0.1', '山东省临沂市', 7, '2020-04-29 08:30:33');
INSERT INTO `user_log` VALUES (1526, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"大师傅\"}', 'admin', '127.0.0.1', '山东省临沂市', 92, '2020-04-29 09:19:24');
INSERT INTO `user_log` VALUES (1527, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"大三\"}', 'admin', '127.0.0.1', '山东省临沂市', 10, '2020-04-29 09:19:26');
INSERT INTO `user_log` VALUES (1528, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"三大\"}', 'admin', '127.0.0.1', '山东省临沂市', 9, '2020-04-29 09:19:52');
INSERT INTO `user_log` VALUES (1529, 2, '更新TODO信息', 1, '/todos/24', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '获取失败', 40, '2020-05-30 11:53:25');
INSERT INTO `user_log` VALUES (1530, 2, '删除TODO信息', 1, '/todos', 'DELETE', '{\"ids\":\"24\"}', 'admin', '127.0.0.1', '获取失败', 11, '2020-05-30 11:53:26');
INSERT INTO `user_log` VALUES (1531, 2, '更新TODO信息', 1, '/todos/26', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '获取失败', 10, '2020-05-30 11:53:58');
INSERT INTO `user_log` VALUES (1532, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '127.0.0.1', '获取失败', 18838, '2020-06-15 18:28:13');
INSERT INTO `user_log` VALUES (1533, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '获取失败', 4933, '2020-06-24 22:22:40');
INSERT INTO `user_log` VALUES (1534, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '获取失败', 35118, '2020-06-25 09:33:13');
INSERT INTO `user_log` VALUES (1535, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '获取失败', 175, '2020-06-25 10:04:05');
INSERT INTO `user_log` VALUES (1536, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 24988, '2020-06-25 10:28:45');
INSERT INTO `user_log` VALUES (1537, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '获取失败', 3092, '2020-06-25 20:54:47');
INSERT INTO `user_log` VALUES (1538, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2332, '2020-06-25 20:58:28');
INSERT INTO `user_log` VALUES (1539, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '获取失败', 2020, '2020-06-25 21:13:10');
INSERT INTO `user_log` VALUES (1540, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '获取失败', 183, '2020-06-25 21:14:06');
INSERT INTO `user_log` VALUES (1541, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '获取失败', 2337, '2020-06-25 21:15:27');
INSERT INTO `user_log` VALUES (1542, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '获取失败', 234, '2020-06-25 21:17:38');
INSERT INTO `user_log` VALUES (1543, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '获取失败', 12026, '2020-06-25 21:19:48');
INSERT INTO `user_log` VALUES (1544, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '获取失败', 2421, '2020-06-25 21:34:22');
INSERT INTO `user_log` VALUES (1545, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2373, '2020-06-25 21:34:47');
INSERT INTO `user_log` VALUES (1546, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1775, '2020-06-25 21:35:33');
INSERT INTO `user_log` VALUES (1547, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1969, '2020-06-25 21:44:06');
INSERT INTO `user_log` VALUES (1548, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 15, '2020-06-25 21:47:40');
INSERT INTO `user_log` VALUES (1549, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 18, '2020-06-25 21:47:49');
INSERT INTO `user_log` VALUES (1550, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 27, '2020-06-25 21:47:49');
INSERT INTO `user_log` VALUES (1551, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 18, '2020-06-25 21:47:49');
INSERT INTO `user_log` VALUES (1552, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1734, '2020-06-25 21:47:49');
INSERT INTO `user_log` VALUES (1553, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1316, '2020-06-25 22:10:04');
INSERT INTO `user_log` VALUES (1554, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 45172, '2020-06-25 22:11:14');
INSERT INTO `user_log` VALUES (1555, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 7466, '2020-06-25 22:12:06');
INSERT INTO `user_log` VALUES (1556, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 4884, '2020-06-25 22:12:32');
INSERT INTO `user_log` VALUES (1557, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 4459, '2020-06-25 22:15:27');
INSERT INTO `user_log` VALUES (1558, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 32, '2020-06-25 22:22:27');
INSERT INTO `user_log` VALUES (1559, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 23, '2020-06-25 22:23:48');
INSERT INTO `user_log` VALUES (1560, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 16, '2020-06-25 22:24:11');
INSERT INTO `user_log` VALUES (1561, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 17, '2020-06-25 22:24:35');
INSERT INTO `user_log` VALUES (1562, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 20, '2020-06-25 22:25:17');
INSERT INTO `user_log` VALUES (1563, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 17, '2020-06-25 22:26:03');
INSERT INTO `user_log` VALUES (1564, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 16, '2020-06-25 22:26:44');
INSERT INTO `user_log` VALUES (1565, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 24, '2020-06-25 22:28:03');
INSERT INTO `user_log` VALUES (1566, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 21, '2020-06-25 22:28:17');
INSERT INTO `user_log` VALUES (1567, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 45, '2020-06-25 22:36:22');
INSERT INTO `user_log` VALUES (1568, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 17, '2020-06-25 22:36:27');
INSERT INTO `user_log` VALUES (1569, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 31, '2020-06-25 22:36:27');
INSERT INTO `user_log` VALUES (1570, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 20, '2020-06-25 22:36:27');
INSERT INTO `user_log` VALUES (1571, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 39, '2020-06-25 22:36:27');
INSERT INTO `user_log` VALUES (1572, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 23, '2020-06-25 22:36:27');
INSERT INTO `user_log` VALUES (1573, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2046, '2020-06-25 22:36:27');
INSERT INTO `user_log` VALUES (1574, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2184, '2020-06-25 22:36:27');
INSERT INTO `user_log` VALUES (1575, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1644, '2020-06-25 22:36:29');
INSERT INTO `user_log` VALUES (1576, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 13, '2020-06-25 22:36:31');
INSERT INTO `user_log` VALUES (1577, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1651, '2020-06-25 22:36:30');
INSERT INTO `user_log` VALUES (1578, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 14, '2020-06-25 22:36:31');
INSERT INTO `user_log` VALUES (1579, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1676, '2020-06-25 22:36:31');
INSERT INTO `user_log` VALUES (1580, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1693, '2020-06-25 22:36:31');
INSERT INTO `user_log` VALUES (1581, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1735, '2020-06-25 22:36:33');
INSERT INTO `user_log` VALUES (1582, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 22:36:35');
INSERT INTO `user_log` VALUES (1583, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2763, '2020-06-25 22:36:33');
INSERT INTO `user_log` VALUES (1584, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 22:36:36');
INSERT INTO `user_log` VALUES (1585, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1826, '2020-06-25 22:36:35');
INSERT INTO `user_log` VALUES (1586, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 22:36:37');
INSERT INTO `user_log` VALUES (1587, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2126, '2020-06-25 22:36:37');
INSERT INTO `user_log` VALUES (1588, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 22:36:39');
INSERT INTO `user_log` VALUES (1589, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 22:36:39');
INSERT INTO `user_log` VALUES (1590, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 3057, '2020-06-25 22:36:36');
INSERT INTO `user_log` VALUES (1591, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 13, '2020-06-25 22:36:39');
INSERT INTO `user_log` VALUES (1592, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 14, '2020-06-25 22:36:39');
INSERT INTO `user_log` VALUES (1593, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 22:36:39');
INSERT INTO `user_log` VALUES (1594, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 11, '2020-06-25 22:36:39');
INSERT INTO `user_log` VALUES (1595, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2074, '2020-06-25 22:36:39');
INSERT INTO `user_log` VALUES (1596, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 22:36:41');
INSERT INTO `user_log` VALUES (1597, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1824, '2020-06-25 22:36:39');
INSERT INTO `user_log` VALUES (1598, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1823, '2020-06-25 22:36:41');
INSERT INTO `user_log` VALUES (1599, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1928, '2020-06-25 22:36:41');
INSERT INTO `user_log` VALUES (1600, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 11, '2020-06-25 22:36:43');
INSERT INTO `user_log` VALUES (1601, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1809, '2020-06-25 22:36:43');
INSERT INTO `user_log` VALUES (1602, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1530, '2020-06-25 22:36:45');
INSERT INTO `user_log` VALUES (1603, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1538, '2020-06-25 22:36:46');
INSERT INTO `user_log` VALUES (1604, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 4810, '2020-06-25 22:36:43');
INSERT INTO `user_log` VALUES (1605, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 13, '2020-06-25 22:36:48');
INSERT INTO `user_log` VALUES (1606, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 23, '2020-06-25 22:36:48');
INSERT INTO `user_log` VALUES (1607, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 22:36:48');
INSERT INTO `user_log` VALUES (1608, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2694, '2020-06-25 22:36:48');
INSERT INTO `user_log` VALUES (1609, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 11, '2020-06-25 22:36:51');
INSERT INTO `user_log` VALUES (1610, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 13, '2020-06-25 22:36:51');
INSERT INTO `user_log` VALUES (1611, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 13, '2020-06-25 22:36:51');
INSERT INTO `user_log` VALUES (1612, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 11, '2020-06-25 22:36:51');
INSERT INTO `user_log` VALUES (1613, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 3589, '2020-06-25 22:36:48');
INSERT INTO `user_log` VALUES (1614, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2188, '2020-06-25 22:36:51');
INSERT INTO `user_log` VALUES (1615, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 11, '2020-06-25 22:36:53');
INSERT INTO `user_log` VALUES (1616, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 19, '2020-06-25 22:36:53');
INSERT INTO `user_log` VALUES (1617, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 22:36:53');
INSERT INTO `user_log` VALUES (1618, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 9, '2020-06-25 22:36:53');
INSERT INTO `user_log` VALUES (1619, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 9, '2020-06-25 22:36:53');
INSERT INTO `user_log` VALUES (1620, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 9, '2020-06-25 22:36:53');
INSERT INTO `user_log` VALUES (1621, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2437, '2020-06-25 22:36:51');
INSERT INTO `user_log` VALUES (1622, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 10, '2020-06-25 22:36:54');
INSERT INTO `user_log` VALUES (1623, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 9, '2020-06-25 22:36:54');
INSERT INTO `user_log` VALUES (1624, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 11, '2020-06-25 22:36:54');
INSERT INTO `user_log` VALUES (1625, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2143, '2020-06-25 22:36:53');
INSERT INTO `user_log` VALUES (1626, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 41, '2020-06-25 22:39:58');
INSERT INTO `user_log` VALUES (1627, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 15, '2020-06-25 22:40:33');
INSERT INTO `user_log` VALUES (1628, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 48, '2020-06-25 22:42:51');
INSERT INTO `user_log` VALUES (1629, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 23, '2020-06-25 22:43:03');
INSERT INTO `user_log` VALUES (1630, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 41, '2020-06-25 22:43:03');
INSERT INTO `user_log` VALUES (1631, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 10, '2020-06-25 22:43:03');
INSERT INTO `user_log` VALUES (1632, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 16, '2020-06-25 22:43:27');
INSERT INTO `user_log` VALUES (1633, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 17, '2020-06-25 22:43:27');
INSERT INTO `user_log` VALUES (1634, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 16, '2020-06-25 22:43:27');
INSERT INTO `user_log` VALUES (1635, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 22:43:44');
INSERT INTO `user_log` VALUES (1636, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 22:43:44');
INSERT INTO `user_log` VALUES (1637, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 22:43:44');
INSERT INTO `user_log` VALUES (1638, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 15, '2020-06-25 22:43:44');
INSERT INTO `user_log` VALUES (1639, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 11, '2020-06-25 22:43:44');
INSERT INTO `user_log` VALUES (1640, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 10, '2020-06-25 22:43:44');
INSERT INTO `user_log` VALUES (1641, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 13, '2020-06-25 22:44:39');
INSERT INTO `user_log` VALUES (1642, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 28, '2020-06-25 22:44:39');
INSERT INTO `user_log` VALUES (1643, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 9, '2020-06-25 22:44:39');
INSERT INTO `user_log` VALUES (1644, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 15, '2020-06-25 22:45:59');
INSERT INTO `user_log` VALUES (1645, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 14, '2020-06-25 22:45:59');
INSERT INTO `user_log` VALUES (1646, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 41, '2020-06-25 22:48:30');
INSERT INTO `user_log` VALUES (1647, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 13, '2020-06-25 22:49:04');
INSERT INTO `user_log` VALUES (1648, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 11, '2020-06-25 22:49:14');
INSERT INTO `user_log` VALUES (1649, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 22:50:09');
INSERT INTO `user_log` VALUES (1650, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 22:50:32');
INSERT INTO `user_log` VALUES (1651, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 11, '2020-06-25 22:50:51');
INSERT INTO `user_log` VALUES (1652, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 11, '2020-06-25 22:51:21');
INSERT INTO `user_log` VALUES (1653, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 11, '2020-06-25 22:52:26');
INSERT INTO `user_log` VALUES (1654, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 10, '2020-06-25 22:52:50');
INSERT INTO `user_log` VALUES (1655, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 22, '2020-06-25 22:53:36');
INSERT INTO `user_log` VALUES (1656, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 13, '2020-06-25 22:54:25');
INSERT INTO `user_log` VALUES (1657, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 43, '2020-06-25 22:57:47');
INSERT INTO `user_log` VALUES (1658, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 9, '2020-06-25 22:59:24');
INSERT INTO `user_log` VALUES (1659, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 13, '2020-06-25 23:00:50');
INSERT INTO `user_log` VALUES (1660, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 19, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1661, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 24, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1662, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1663, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 28, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1664, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 13, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1665, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 14, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1666, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1667, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 17, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1668, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 10, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1669, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 11, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1670, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 10, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1671, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 22, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1672, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1673, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 11, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1674, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 14, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1675, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 15, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1676, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 19, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1677, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 9, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1678, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 15, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1679, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 10, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1680, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 12, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1681, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 32, '2020-06-25 23:00:55');
INSERT INTO `user_log` VALUES (1682, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 14, '2020-06-25 23:00:55');
INSERT INTO `user_log` VALUES (1683, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 15, '2020-06-25 23:00:55');
INSERT INTO `user_log` VALUES (1684, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 22, '2020-06-25 23:00:55');
INSERT INTO `user_log` VALUES (1685, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 10, '2020-06-25 23:00:55');
INSERT INTO `user_log` VALUES (1686, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 9, '2020-06-25 23:00:55');
INSERT INTO `user_log` VALUES (1687, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 10, '2020-06-25 23:00:55');
INSERT INTO `user_log` VALUES (1688, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 13, '2020-06-25 23:00:55');
INSERT INTO `user_log` VALUES (1689, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 14, '2020-06-25 23:00:55');
INSERT INTO `user_log` VALUES (1690, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2206, '2020-06-25 23:00:54');
INSERT INTO `user_log` VALUES (1691, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2435, '2020-06-25 23:00:55');
INSERT INTO `user_log` VALUES (1692, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 10, '2020-06-25 23:00:57');
INSERT INTO `user_log` VALUES (1693, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 8, '2020-06-25 23:00:58');
INSERT INTO `user_log` VALUES (1694, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2234, '2020-06-25 23:00:58');
INSERT INTO `user_log` VALUES (1695, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 3540, '2020-06-25 23:00:57');
INSERT INTO `user_log` VALUES (1696, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 9, '2020-06-25 23:01:00');
INSERT INTO `user_log` VALUES (1697, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 10, '2020-06-25 23:01:00');
INSERT INTO `user_log` VALUES (1698, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 11, '2020-06-25 23:01:00');
INSERT INTO `user_log` VALUES (1699, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1741, '2020-06-25 23:01:00');
INSERT INTO `user_log` VALUES (1700, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1732, '2020-06-25 23:01:00');
INSERT INTO `user_log` VALUES (1701, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 15, '2020-06-25 23:01:02');
INSERT INTO `user_log` VALUES (1702, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 11, '2020-06-25 23:01:02');
INSERT INTO `user_log` VALUES (1703, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 11, '2020-06-25 23:01:02');
INSERT INTO `user_log` VALUES (1704, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 8, '2020-06-25 23:01:02');
INSERT INTO `user_log` VALUES (1705, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1735, '2020-06-25 23:01:02');
INSERT INTO `user_log` VALUES (1706, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 14, '2020-06-25 23:01:03');
INSERT INTO `user_log` VALUES (1707, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 10, '2020-06-25 23:01:03');
INSERT INTO `user_log` VALUES (1708, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 8, '2020-06-25 23:01:03');
INSERT INTO `user_log` VALUES (1709, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 10, '2020-06-25 23:01:03');
INSERT INTO `user_log` VALUES (1710, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 13, '2020-06-25 23:01:03');
INSERT INTO `user_log` VALUES (1711, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 10, '2020-06-25 23:01:03');
INSERT INTO `user_log` VALUES (1712, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 15, '2020-06-25 23:01:04');
INSERT INTO `user_log` VALUES (1713, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 13, '2020-06-25 23:01:04');
INSERT INTO `user_log` VALUES (1714, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 21, '2020-06-25 23:01:04');
INSERT INTO `user_log` VALUES (1715, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 7, '2020-06-25 23:01:04');
INSERT INTO `user_log` VALUES (1716, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 13, '2020-06-25 23:01:04');
INSERT INTO `user_log` VALUES (1717, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1678, '2020-06-25 23:01:02');
INSERT INTO `user_log` VALUES (1718, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '获取失败', 3522, '2020-06-26 22:57:18');
INSERT INTO `user_log` VALUES (1719, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 38, '2020-06-26 22:57:34');
INSERT INTO `user_log` VALUES (1720, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 25, '2020-06-26 22:57:48');
INSERT INTO `user_log` VALUES (1721, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 25, '2020-06-26 22:58:30');
INSERT INTO `user_log` VALUES (1722, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 4056, '2020-06-26 22:58:41');
INSERT INTO `user_log` VALUES (1723, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2225, '2020-06-26 22:59:29');
INSERT INTO `user_log` VALUES (1724, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 129, '2020-06-26 23:06:56');
INSERT INTO `user_log` VALUES (1725, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 373, '2020-06-26 23:19:56');
INSERT INTO `user_log` VALUES (1726, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 118, '2020-06-26 23:21:47');
INSERT INTO `user_log` VALUES (1727, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 4517, '2020-06-26 23:24:31');
INSERT INTO `user_log` VALUES (1728, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1962, '2020-06-26 23:35:21');
INSERT INTO `user_log` VALUES (1729, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2210, '2020-06-26 23:37:08');
INSERT INTO `user_log` VALUES (1730, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1660, '2020-06-26 23:37:31');
INSERT INTO `user_log` VALUES (1731, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1752, '2020-06-26 23:40:48');
INSERT INTO `user_log` VALUES (1732, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1648, '2020-06-26 23:41:46');
INSERT INTO `user_log` VALUES (1733, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1673, '2020-06-26 23:42:27');
INSERT INTO `user_log` VALUES (1734, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"url\":\"group1/M00/00/01/rBUAB172F2WAfbqLAABKDWmgvhE26..jpg\"}', 'admin', '127.0.0.1', '获取失败', 426, '2020-06-26 23:42:30');
INSERT INTO `user_log` VALUES (1735, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 111, '2020-06-26 23:44:49');
INSERT INTO `user_log` VALUES (1736, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 13, '2020-06-26 23:44:50');
INSERT INTO `user_log` VALUES (1737, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1782, '2020-06-26 23:46:58');
INSERT INTO `user_log` VALUES (1738, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1686, '2020-06-26 23:48:13');
INSERT INTO `user_log` VALUES (1739, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"url\":\"group1/M00/00/01/rBUAB172GL-AFfFgAABbGEzV2iw67..jpg\"}', 'admin', '127.0.0.1', '获取失败', 356, '2020-06-26 23:48:17');
INSERT INTO `user_log` VALUES (1740, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 19, '2020-06-26 23:48:31');
INSERT INTO `user_log` VALUES (1741, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 12, '2020-06-26 23:48:31');
INSERT INTO `user_log` VALUES (1742, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 23, '2020-06-26 23:49:02');
INSERT INTO `user_log` VALUES (1743, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 8, '2020-06-26 23:49:02');
INSERT INTO `user_log` VALUES (1744, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 19, '2020-06-26 23:49:10');
INSERT INTO `user_log` VALUES (1745, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 9, '2020-06-26 23:49:10');
INSERT INTO `user_log` VALUES (1746, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1927, '2020-06-26 23:50:05');
INSERT INTO `user_log` VALUES (1747, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"url\":\"group1/M00/00/01/rBUAB172GS-ALrJbAABylssOWTU53..jpg\"}', 'admin', '127.0.0.1', '获取失败', 375, '2020-06-26 23:50:09');
INSERT INTO `user_log` VALUES (1748, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 23, '2020-06-26 23:50:12');
INSERT INTO `user_log` VALUES (1749, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 5, '2020-06-26 23:50:12');
INSERT INTO `user_log` VALUES (1750, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 16, '2020-06-26 23:50:20');
INSERT INTO `user_log` VALUES (1751, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 5, '2020-06-26 23:50:20');
INSERT INTO `user_log` VALUES (1752, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1776, '2020-06-26 23:51:56');
INSERT INTO `user_log` VALUES (1753, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 10, '2020-06-26 23:51:58');
INSERT INTO `user_log` VALUES (1754, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2185, '2020-06-26 23:55:17');
INSERT INTO `user_log` VALUES (1755, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1665, '2020-06-26 23:56:30');
INSERT INTO `user_log` VALUES (1756, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"url\":\"group1/M00/00/01/rBUAB172GrCAHAHAAAAuHd1hmOI11..jpg\"}', 'admin', '127.0.0.1', '获取失败', 397, '2020-06-26 23:56:33');
INSERT INTO `user_log` VALUES (1757, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 15, '2020-06-26 23:56:40');
INSERT INTO `user_log` VALUES (1758, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 4, '2020-06-26 23:56:40');
INSERT INTO `user_log` VALUES (1759, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1621, '2020-06-26 23:56:45');
INSERT INTO `user_log` VALUES (1760, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1690, '2020-06-26 23:56:50');
INSERT INTO `user_log` VALUES (1761, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"url\":\"group1/M00/00/01/rBUAB172GsSAdz3bAABF8ykCdYY22..jpg\"}', 'admin', '127.0.0.1', '获取失败', 371, '2020-06-26 23:57:42');
INSERT INTO `user_log` VALUES (1762, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"url\":\"group1/M00/00/01/rBUAB172Gr-AMI6MAABAeOj9lUs70..jpg\"}', 'admin', '127.0.0.1', '获取失败', 628, '2020-06-26 23:57:42');
INSERT INTO `user_log` VALUES (1763, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1631, '2020-06-26 23:57:50');
INSERT INTO `user_log` VALUES (1764, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 1658, '2020-06-26 23:57:56');
INSERT INTO `user_log` VALUES (1765, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 15, '2020-06-26 23:58:02');
INSERT INTO `user_log` VALUES (1766, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 4, '2020-06-26 23:58:02');
INSERT INTO `user_log` VALUES (1767, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 19, '2020-06-26 23:59:27');
INSERT INTO `user_log` VALUES (1768, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 8, '2020-06-26 23:59:27');
INSERT INTO `user_log` VALUES (1769, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 15, '2020-06-26 23:59:36');
INSERT INTO `user_log` VALUES (1770, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 9, '2020-06-26 23:59:36');
INSERT INTO `user_log` VALUES (1771, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '获取失败', 2430, '2020-06-27 11:19:47');
INSERT INTO `user_log` VALUES (1772, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 43, '2020-06-27 11:20:15');
INSERT INTO `user_log` VALUES (1773, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 20, '2020-06-27 11:20:15');
INSERT INTO `user_log` VALUES (1774, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 27, '2020-06-27 11:32:05');
INSERT INTO `user_log` VALUES (1775, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 8, '2020-06-27 11:32:05');
INSERT INTO `user_log` VALUES (1776, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 18, '2020-06-27 11:40:29');
INSERT INTO `user_log` VALUES (1777, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 6, '2020-06-27 11:40:29');
INSERT INTO `user_log` VALUES (1778, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 15, '2020-06-27 11:41:04');
INSERT INTO `user_log` VALUES (1779, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 4, '2020-06-27 11:41:04');
INSERT INTO `user_log` VALUES (1780, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 15, '2020-06-27 11:42:41');
INSERT INTO `user_log` VALUES (1781, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 5, '2020-06-27 11:42:41');
INSERT INTO `user_log` VALUES (1782, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 16, '2020-06-27 11:43:04');
INSERT INTO `user_log` VALUES (1783, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 3, '2020-06-27 11:43:04');
INSERT INTO `user_log` VALUES (1784, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 10, '2020-06-27 11:43:27');
INSERT INTO `user_log` VALUES (1785, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 7, '2020-06-27 11:43:27');
INSERT INTO `user_log` VALUES (1786, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 20, '2020-06-27 11:43:53');
INSERT INTO `user_log` VALUES (1787, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 4, '2020-06-27 11:43:54');
INSERT INTO `user_log` VALUES (1788, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 17, '2020-06-27 11:44:42');
INSERT INTO `user_log` VALUES (1789, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 3, '2020-06-27 11:44:53');
INSERT INTO `user_log` VALUES (1790, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 14, '2020-06-27 11:45:37');
INSERT INTO `user_log` VALUES (1791, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '获取失败', 4, '2020-06-27 11:45:37');
INSERT INTO `user_log` VALUES (1792, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 18, '2020-06-27 11:45:48');
INSERT INTO `user_log` VALUES (1793, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 18, '2020-06-27 11:46:12');
INSERT INTO `user_log` VALUES (1794, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 22620, '2020-06-27 11:45:52');
INSERT INTO `user_log` VALUES (1795, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 18, '2020-06-27 11:46:20');
INSERT INTO `user_log` VALUES (1796, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 22448, '2020-06-27 11:46:32');
INSERT INTO `user_log` VALUES (1797, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 22373, '2020-06-27 11:47:19');
INSERT INTO `user_log` VALUES (1798, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 22357, '2020-06-27 11:47:53');
INSERT INTO `user_log` VALUES (1799, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '获取失败', 314, '2020-06-27 15:46:07');
INSERT INTO `user_log` VALUES (1800, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 56, '2020-06-27 17:14:18');
INSERT INTO `user_log` VALUES (1801, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 2519, '2020-06-27 17:14:27');
INSERT INTO `user_log` VALUES (1802, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 4417, '2020-06-29 17:30:46');
INSERT INTO `user_log` VALUES (1803, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 3196, '2020-06-29 22:33:25');
INSERT INTO `user_log` VALUES (1804, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 199, '2020-06-29 22:49:02');
INSERT INTO `user_log` VALUES (1805, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 184, '2020-06-29 22:49:10');
INSERT INTO `user_log` VALUES (1806, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 190, '2020-06-29 22:49:33');
INSERT INTO `user_log` VALUES (1807, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 2698, '2020-06-30 08:57:06');
INSERT INTO `user_log` VALUES (1808, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 3263, '2020-07-01 08:36:39');
INSERT INTO `user_log` VALUES (1809, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 233, '2020-07-01 08:45:18');
INSERT INTO `user_log` VALUES (1810, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 23440, '2020-07-02 17:14:55');
INSERT INTO `user_log` VALUES (1811, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 21077, '2020-07-02 17:25:54');
INSERT INTO `user_log` VALUES (1812, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 2019, '2020-07-03 08:40:27');
INSERT INTO `user_log` VALUES (1813, 2, '新增菜单', 1, '/menu', 'POST', '{\"0[metaId]\":\"1\",\"0[meta][title]\":\"图标\",\"5[name]\":\"menu_list\",\"4[meta][roleList][0][roleName]\":\"ADMIN\",\"5[meta][activemenu]\":\"\",\"4[meta][title]\":\"菜单\",\"2[meta][breadcrumb]\":\"0\",\"3[parent]\":\"0\",\"5[id]\":\"6\",\"3[meta][roleList][0][roleName]\":\"ADMIN\",\"4[meta][roleList][0][id]\":\"1\",\"2[redirect]\":\"\",\"3[meta][id]\":\"3\",\"5[meta][roleList][0][roleName]\":\"ADMIN\",\"2[name]\":\"upload\",\"1[meta][breadcrumb]\":\"0\",\"0[meta][roleList][1][roleName]\":\"XIAO\",\"5[component]\":\"menu_list\",\"6[path]\":\"person\",\"6[meta][icon]\":\"upload\",\"0[meta][roleList][1][describe]\":\"测试的\",\"3[meta][icon]\":\"persions\",\"4[meta][icon]\":\"menu\",\"0[hidden]\":\"0\",\"5[meta][icon]\":\"nested\",\"0[children]\":\"\",\"3[path]\":\"person\",\"4[meta][activemenu]\":\"\",\"0[meta][icon]\":\"icon\",\"5[meta][roleList][0][id]\":\"1\",\"4[meta][id]\":\"5\",\"1[redirect]\":\"\",\"4[metaId]\":\"5\",\"2[meta][icon]\":\"upload\",\"2[meta][roleList][0][roleName]\":\"ADMIN\",\"4[hidden]\":\"0\",\"3[meta][activemenu]\":\"\",\"1[meta][icon]\":\"link\",\"3[meta][breadcrumb]\":\"0\",\"0[path]\":\"icons\",\"6[children]\":\"\",\"2[meta][activemenu]\":\"\",\"0[name]\":\"icons\",\"3[metaId]\":\"3\",\"2[meta][roleList][0][id]\":\"1\",\"4[redirect]\":\"\",\"4[component]\":\"Layout\",\"5[meta][breadcrumb]\":\"0\",\"0[meta][roleList][0][roleName]\":\"ADMIN\",\"0[id]\":\"1\",\"6[parent]\":\"0\",\"1[component]\":\"icon\",\"3[meta][roleList][0][id]\":\"1\",\"6[meta][id]\":\"7\",\"2[id]\":\"4\",\"2[parent]\":\"3\",\"1[children]\":\"\",\"6[name]\":\"person\",\"3[hidden]\":\"0\",\"3[meta][roleList][0][describe]\":\"管理员\",\"2[component]\":\"upload\",\"1[path]\":\"icon\",\"0[meta][breadcrumb]\":\"0\",\"0[meta][activemenu]\":\"\",\"0[meta][roleList][0][id]\":\"1\",\"0[component]\":\"Layout\",\"5[parent]\":\"5\",\"6[redirect]\":\"\",\"4[children]\":\"\",\"3[component]\":\"Layout\",\"0[meta][id]\":\"1\",\"2[metaId]\":\"4\",\"6[meta][title]\":\"人员管理\",\"0[meta][roleList][0][describe]\":\"管理员\",\"2[path]\":\"upload\",\"5[path]\":\"list\",\"1[meta][roleList][0][describe]\":\"管理员\",\"4[id]\":\"5\",\"2[meta][title]\":\"人员上传\",\"4[name]\":\"menu\",\"1[meta][roleList][0][id]\":\"1\",\"2[hidden]\":\"0\",\"1[meta][id]\":\"2\",\"5[redirect]\":\"\",\"2[meta][roleList][0][describe]\":\"管理员\",\"6[hidden]\":\"0\",\"6[metaId]\":\"7\",\"1[parent]\":\"1\",\"0[meta][roleList][1][id]\":\"2\",\"3[children]\":\"\",\"6[component]\":\"Layout\",\"1[name]\":\"Icon\",\"6[id]\":\"7\",\"1[id]\":\"2\",\"4[meta][roleList][0][describe]\":\"管理员\",\"1[metaId]\":\"2\",\"3[name]\":\"person\",\"5[meta][id]\":\"6\",\"4[meta][breadcrumb]\":\"0\",\"4[parent]\":\"0\",\"5[meta][title]\":\"菜单列表\",\"2[children]\":\"\",\"2[parentName]\":\"用户管理\",\"1[parentName]\":\"图标\",\"3[meta][title]\":\"用户管理\",\"0[parentName]\":\"\",\"1[meta][title]\":\"太难了\",\"1[hidden]\":\"0\",\"3[id]\":\"3\",\"1[meta][roleList][0][roleName]\":\"ADMIN\",\"6[meta][activemenu]\":\"\",\"0[redirect]\":\"\",\"1[meta][activemenu]\":\"\",\"3[parentName]\":\"\",\"4[parentName]\":\"\",\"5[meta][roleList][0][describe]\":\"管理员\",\"5[children]\":\"\",\"6[parentName]\":\"\",\"5[metaId]\":\"6\",\"5[parentName]\":\"菜单\",\"2[meta][id]\":\"4\",\"4[path]\":\"menu\",\"3[redirect]\":\"\",\"5[hidden]\":\"0\",\"0[parent]\":\"0\",\"6[meta][breadcrumb]\":\"0\"}', 'admin', '127.0.0.1', '山东省莱芜市', 1524, '2020-07-03 12:15:04');
INSERT INTO `user_log` VALUES (1814, 2, '新增菜单', 1, '/menu', 'POST', '{\"path\":\"plist\",\"parent\":\"3\",\"component\":\"plist\",\"hidden\":\"0\",\"meta_id\":\"11\",\"isTop\":\"false\",\"name\":\"plist\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-03 12:17:48');
INSERT INTO `user_log` VALUES (1815, 2, '新增菜单', 1, '/menu', 'POST', '{\"path\":\"plist\",\"parent\":\"3\",\"component\":\"plist\",\"hidden\":\"0\",\"metaId\":\"\",\"meta_id\":\"11\",\"isTop\":\"false\",\"name\":\"plist\"}', 'admin', '127.0.0.1', '山东省莱芜市', 2054, '2020-07-03 12:27:57');
INSERT INTO `user_log` VALUES (1816, 2, '新增菜单', 1, '/menu', 'POST', '{\"path\":\"plist\",\"parent\":\"3\",\"component\":\"plist\",\"hidden\":\"0\",\"metaId\":\"11\",\"isTop\":\"false\",\"name\":\"plist\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9309, '2020-07-03 12:33:39');
INSERT INTO `user_log` VALUES (1817, 2, '新增菜单', 1, '/menu', 'POST', '{\"path\":\"phone\",\"parent\":\"3\",\"component\":\"phone\",\"hidden\":\"0\",\"metaId\":\"12\",\"isTop\":\"false\",\"name\":\"phone\"}', 'admin', '127.0.0.1', '山东省莱芜市', 4506, '2020-07-03 12:39:35');
INSERT INTO `user_log` VALUES (1818, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 2559, '2020-07-04 22:49:22');
INSERT INTO `user_log` VALUES (1819, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 2863, '2020-07-04 23:46:23');
INSERT INTO `user_log` VALUES (1820, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 2365, '2020-07-05 14:49:28');
INSERT INTO `user_log` VALUES (1821, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 215, '2020-07-05 14:54:10');
INSERT INTO `user_log` VALUES (1822, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 2720, '2020-07-05 16:13:55');
INSERT INTO `user_log` VALUES (1823, 2, '新增菜单', 1, '/menu', 'POST', '{\"path\":\"meeting\",\"parent\":\"\",\"component\":\"Layout\",\"hidden\":\"0\",\"metaId\":\"13\",\"isTop\":\"true\",\"name\":\"会议\"}', 'admin', '127.0.0.1', '山东省莱芜市', 38, '2020-07-05 18:33:54');
INSERT INTO `user_log` VALUES (1824, 2, '新增菜单', 1, '/menu', 'POST', '{\"path\":\"add\",\"parent\":\"17\",\"component\":\"meeting_add\",\"hidden\":\"0\",\"metaId\":\"14\",\"isTop\":\"false\",\"name\":\"会议添加\"}', 'admin', '127.0.0.1', '山东省莱芜市', 31, '2020-07-05 18:35:51');
INSERT INTO `user_log` VALUES (1825, 2, '新增菜单', 1, '/menu', 'POST', '{\"path\":\"set\",\"parent\":\"17\",\"component\":\"meeting_set\",\"hidden\":\"0\",\"metaId\":\"15\",\"isTop\":\"false\",\"name\":\"会议设置\"}', 'admin', '127.0.0.1', '山东省莱芜市', 31, '2020-07-05 18:37:21');
INSERT INTO `user_log` VALUES (1826, 2, '新增菜单', 1, '/menu', 'POST', '{\"path\":\"mselect\",\"parent\":\"17\",\"component\":\"meeting_mselect\",\"hidden\":\"0\",\"metaId\":\"16\",\"isTop\":\"false\",\"name\":\"会议报名\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-05 18:38:27');
INSERT INTO `user_log` VALUES (1827, 2, '新增菜单', 1, '/menu', 'POST', '{\"path\":\"sign\",\"parent\":\"17\",\"component\":\"meeting_sign\",\"hidden\":\"0\",\"metaId\":\"17\",\"isTop\":\"false\",\"name\":\"签到管理\"}', 'admin', '127.0.0.1', '山东省莱芜市', 25, '2020-07-05 18:39:21');
INSERT INTO `user_log` VALUES (1828, 2, '新增菜单', 1, '/menu', 'POST', '{\"path\":\"log\",\"parent\":\"17\",\"component\":\"Layout\",\"hidden\":\"0\",\"metaId\":\"18\",\"isTop\":\"true\",\"name\":\"日志管理\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-05 18:39:41');
INSERT INTO `user_log` VALUES (1829, 2, '新增菜单', 1, '/menu', 'POST', '{\"path\":\"set\",\"parent\":\"22\",\"component\":\"log_set\",\"hidden\":\"0\",\"metaId\":\"19\",\"isTop\":\"false\",\"name\":\"日志详情\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-05 18:40:31');
INSERT INTO `user_log` VALUES (1830, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 4297, '2020-07-06 09:38:51');
INSERT INTO `user_log` VALUES (1831, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 2533, '2020-07-07 10:08:03');
INSERT INTO `user_log` VALUES (1832, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 69, '2020-07-07 10:17:57');
INSERT INTO `user_log` VALUES (1833, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 174, '2020-07-07 10:18:11');
INSERT INTO `user_log` VALUES (1834, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-07 10:18:16');
INSERT INTO `user_log` VALUES (1835, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 1767, '2020-07-07 10:24:10');
INSERT INTO `user_log` VALUES (1836, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-07 10:24:29');
INSERT INTO `user_log` VALUES (1837, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 23, '2020-07-07 10:25:37');
INSERT INTO `user_log` VALUES (1838, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 57, '2020-07-07 10:25:51');
INSERT INTO `user_log` VALUES (1839, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-07 10:26:09');
INSERT INTO `user_log` VALUES (1840, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 63, '2020-07-07 10:28:44');
INSERT INTO `user_log` VALUES (1841, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-07 10:30:28');
INSERT INTO `user_log` VALUES (1842, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 90, '2020-07-07 10:34:22');
INSERT INTO `user_log` VALUES (1843, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-07 10:34:27');
INSERT INTO `user_log` VALUES (1844, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-07 10:34:51');
INSERT INTO `user_log` VALUES (1845, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 4664, '2020-07-07 15:42:39');
INSERT INTO `user_log` VALUES (1846, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 27, '2020-07-07 15:42:50');
INSERT INTO `user_log` VALUES (1847, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 114, '2020-07-07 15:54:28');
INSERT INTO `user_log` VALUES (1848, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 55, '2020-07-07 16:19:01');
INSERT INTO `user_log` VALUES (1849, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-07 16:19:09');
INSERT INTO `user_log` VALUES (1850, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-07 16:19:57');
INSERT INTO `user_log` VALUES (1851, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-07 16:21:35');
INSERT INTO `user_log` VALUES (1852, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 62, '2020-07-07 16:25:31');
INSERT INTO `user_log` VALUES (1853, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-07 16:28:33');
INSERT INTO `user_log` VALUES (1854, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 50, '2020-07-07 16:30:34');
INSERT INTO `user_log` VALUES (1855, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-07 16:31:46');
INSERT INTO `user_log` VALUES (1856, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 84, '2020-07-07 16:41:24');
INSERT INTO `user_log` VALUES (1857, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-07 16:42:17');
INSERT INTO `user_log` VALUES (1858, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-07 16:43:14');
INSERT INTO `user_log` VALUES (1859, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-07 16:44:00');
INSERT INTO `user_log` VALUES (1860, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-07 16:44:35');
INSERT INTO `user_log` VALUES (1861, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-07 16:45:26');
INSERT INTO `user_log` VALUES (1862, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 16:45:46');
INSERT INTO `user_log` VALUES (1863, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-07 16:46:30');
INSERT INTO `user_log` VALUES (1864, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-07 16:47:06');
INSERT INTO `user_log` VALUES (1865, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-07 16:48:11');
INSERT INTO `user_log` VALUES (1866, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-07 16:49:51');
INSERT INTO `user_log` VALUES (1867, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 31, '2020-07-07 16:53:40');
INSERT INTO `user_log` VALUES (1868, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 16:54:11');
INSERT INTO `user_log` VALUES (1869, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-07 16:54:28');
INSERT INTO `user_log` VALUES (1870, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-07 16:55:58');
INSERT INTO `user_log` VALUES (1871, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-07 17:00:45');
INSERT INTO `user_log` VALUES (1872, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 31, '2020-07-07 17:01:21');
INSERT INTO `user_log` VALUES (1873, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-07 17:02:46');
INSERT INTO `user_log` VALUES (1874, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-07 17:03:00');
INSERT INTO `user_log` VALUES (1875, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 47, '2020-07-07 17:08:05');
INSERT INTO `user_log` VALUES (1876, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-07 17:08:12');
INSERT INTO `user_log` VALUES (1877, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-07 17:08:14');
INSERT INTO `user_log` VALUES (1878, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-07 17:09:33');
INSERT INTO `user_log` VALUES (1879, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-07 17:10:22');
INSERT INTO `user_log` VALUES (1880, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 17:10:49');
INSERT INTO `user_log` VALUES (1881, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-07 17:11:22');
INSERT INTO `user_log` VALUES (1882, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 45, '2020-07-07 17:14:04');
INSERT INTO `user_log` VALUES (1883, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 17:14:11');
INSERT INTO `user_log` VALUES (1884, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-07 17:14:25');
INSERT INTO `user_log` VALUES (1885, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-07 17:14:30');
INSERT INTO `user_log` VALUES (1886, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-07 17:14:37');
INSERT INTO `user_log` VALUES (1887, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 17:14:38');
INSERT INTO `user_log` VALUES (1888, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 17:14:55');
INSERT INTO `user_log` VALUES (1889, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-07 17:16:06');
INSERT INTO `user_log` VALUES (1890, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 54, '2020-07-07 17:18:11');
INSERT INTO `user_log` VALUES (1891, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-07 17:19:02');
INSERT INTO `user_log` VALUES (1892, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-07 17:19:17');
INSERT INTO `user_log` VALUES (1893, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-07 17:19:37');
INSERT INTO `user_log` VALUES (1894, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 51, '2020-07-07 17:22:33');
INSERT INTO `user_log` VALUES (1895, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-07 17:23:09');
INSERT INTO `user_log` VALUES (1896, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 17:23:48');
INSERT INTO `user_log` VALUES (1897, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-07 17:25:06');
INSERT INTO `user_log` VALUES (1898, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 17:25:12');
INSERT INTO `user_log` VALUES (1899, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-07 17:25:35');
INSERT INTO `user_log` VALUES (1900, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 63, '2020-07-07 17:34:36');
INSERT INTO `user_log` VALUES (1901, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 17:35:03');
INSERT INTO `user_log` VALUES (1902, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-07 17:35:26');
INSERT INTO `user_log` VALUES (1903, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-07 17:36:21');
INSERT INTO `user_log` VALUES (1904, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-07 17:36:42');
INSERT INTO `user_log` VALUES (1905, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 46, '2020-07-07 17:41:25');
INSERT INTO `user_log` VALUES (1906, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-07 17:42:04');
INSERT INTO `user_log` VALUES (1907, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-07 17:42:41');
INSERT INTO `user_log` VALUES (1908, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 33, '2020-07-07 17:51:28');
INSERT INTO `user_log` VALUES (1909, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-07 17:51:51');
INSERT INTO `user_log` VALUES (1910, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-07 17:53:08');
INSERT INTO `user_log` VALUES (1911, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 17:54:00');
INSERT INTO `user_log` VALUES (1912, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 91, '2020-07-07 18:06:14');
INSERT INTO `user_log` VALUES (1913, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-07 18:06:25');
INSERT INTO `user_log` VALUES (1914, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-07 18:06:45');
INSERT INTO `user_log` VALUES (1915, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 18:07:14');
INSERT INTO `user_log` VALUES (1916, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 18:07:19');
INSERT INTO `user_log` VALUES (1917, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-07 18:08:49');
INSERT INTO `user_log` VALUES (1918, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 92, '2020-07-07 18:16:07');
INSERT INTO `user_log` VALUES (1919, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 72, '2020-07-07 18:21:34');
INSERT INTO `user_log` VALUES (1920, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-07 18:22:24');
INSERT INTO `user_log` VALUES (1921, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-07 18:23:08');
INSERT INTO `user_log` VALUES (1922, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-07 18:24:20');
INSERT INTO `user_log` VALUES (1923, 2, '查看人员信息', 1, '/person/', 'GET', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-07 18:26:06');
INSERT INTO `user_log` VALUES (1924, 2, '查看人员信息', 1, '/person/', 'GET', '{\"0\":\"page=1&limit=15\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 18:27:01');
INSERT INTO `user_log` VALUES (1925, 2, '查看人员信息', 1, '/person/', 'GET', '{\"0\":\"page=1&limit=15\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-07 18:27:06');
INSERT INTO `user_log` VALUES (1926, 2, '查看人员信息', 1, '/person/', 'GET', '{\"0\":\"page=1&limit=10\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-07 18:27:31');
INSERT INTO `user_log` VALUES (1927, 2, '查看人员信息', 1, '/person/', 'GET', '{\"0\":\"page=2&limit=10\"}', 'admin', '127.0.0.1', '山东省莱芜市', 137, '2020-07-07 18:50:05');
INSERT INTO `user_log` VALUES (1928, 2, '查看人员信息', 1, '/person/', 'GET', '{\"0\":\"page=3&limit=10\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-07 18:50:11');
INSERT INTO `user_log` VALUES (1929, 2, '查看人员信息', 1, '/person/', 'GET', '{\"0\":\"page=1&limit=15\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7603, '2020-07-07 19:45:53');
INSERT INTO `user_log` VALUES (1930, 2, '查看人员信息', 1, '/person/', 'GET', '{\"0\":\"page=2&limit=15\"}', 'admin', '127.0.0.1', '山东省莱芜市', 24367, '2020-07-07 19:46:08');
INSERT INTO `user_log` VALUES (1931, 2, '查看人员信息', 1, '/person/', 'GET', '{\"0\":\"page=1&limit=15\"}', 'admin', '127.0.0.1', '山东省莱芜市', 5094, '2020-07-07 19:47:24');
INSERT INTO `user_log` VALUES (1932, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 825, '2020-07-07 19:50:22');
INSERT INTO `user_log` VALUES (1933, 2, '查看人员信息', 1, '/person/', 'GET', '{\"0\":\"page=2&limit=15\"}', 'admin', '127.0.0.1', '山东省莱芜市', 134060, '2020-07-07 19:48:09');
INSERT INTO `user_log` VALUES (1934, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"2\"}', 'admin', '127.0.0.1', '山东省莱芜市', 61429, '2020-07-07 19:50:29');
INSERT INTO `user_log` VALUES (1935, 2, '查看人员信息', 1, '/person/', 'GET', '{\"0\":\"page=1&limit=15\"}', 'admin', '127.0.0.1', '山东省莱芜市', 1823, '2020-07-07 19:51:30');
INSERT INTO `user_log` VALUES (1936, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 822, '2020-07-07 19:51:31');
INSERT INTO `user_log` VALUES (1937, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 807, '2020-07-07 19:51:32');
INSERT INTO `user_log` VALUES (1938, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"2\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7234, '2020-07-07 19:51:39');
INSERT INTO `user_log` VALUES (1939, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"2\",\"title\":\"大哥\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-07 19:53:11');
INSERT INTO `user_log` VALUES (1940, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"2\",\"title\":\"大哥\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-07 19:53:21');
INSERT INTO `user_log` VALUES (1941, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-07 19:53:58');
INSERT INTO `user_log` VALUES (1942, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-07 19:54:11');
INSERT INTO `user_log` VALUES (1943, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\",\"title\":\"大哥\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-07 19:54:19');
INSERT INTO `user_log` VALUES (1944, 2, '查看人员信息', 1, '/person/', 'GET', '{\"personName\":\"大哥\",\"limit\":\"15\",\"page\":\"1\",\"title\":\"大哥\"}', 'admin', '127.0.0.1', '山东省莱芜市', 42, '2020-07-07 19:55:03');
INSERT INTO `user_log` VALUES (1945, 2, '查看人员信息', 1, '/person/', 'GET', '{\"personName\":\"大哥\",\"limit\":\"15\",\"page\":\"1\",\"title\":\"大哥\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 19:56:09');
INSERT INTO `user_log` VALUES (1946, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-07 19:56:36');
INSERT INTO `user_log` VALUES (1947, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 19:56:40');
INSERT INTO `user_log` VALUES (1948, 2, '查看人员信息', 1, '/person/', 'GET', '{\"personName\":\"大哥\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-07 19:56:52');
INSERT INTO `user_log` VALUES (1949, 2, '查看人员信息', 1, '/person/', 'GET', '{\"personName\":\"不\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-07 19:56:56');
INSERT INTO `user_log` VALUES (1950, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 75, '2020-07-07 19:58:57');
INSERT INTO `user_log` VALUES (1951, 2, '查看人员信息', 1, '/person/', 'GET', '{\"personName\":\"的\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-07 19:59:01');
INSERT INTO `user_log` VALUES (1952, 2, '查看人员信息', 1, '/person/', 'GET', '{\"personName\":\"哒哒\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 19:59:03');
INSERT INTO `user_log` VALUES (1953, 2, '查看人员信息', 1, '/person/', 'GET', '{\"personName\":\"nish1\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-07 19:59:06');
INSERT INTO `user_log` VALUES (1954, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-07 19:59:18');
INSERT INTO `user_log` VALUES (1955, 2, '查看人员信息', 1, '/person/', 'GET', '{\"personName\":\"d1\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-07 19:59:20');
INSERT INTO `user_log` VALUES (1956, 2, '查看人员信息', 1, '/person/', 'GET', '{\"personName\":\"你是我的\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 6, '2020-07-07 19:59:24');
INSERT INTO `user_log` VALUES (1957, 2, '查看人员信息', 1, '/person/', 'GET', '{\"personName\":\"你是我的\",\"limit\":\"15\",\"page\":\"2\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-07 19:59:35');
INSERT INTO `user_log` VALUES (1958, 2, '查看人员信息', 1, '/person/', 'GET', '{\"personName\":\"\",\"limit\":\"15\",\"page\":\"3\"}', 'admin', '127.0.0.1', '山东省莱芜市', 20, '2020-07-07 19:59:42');
INSERT INTO `user_log` VALUES (1959, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-07 20:00:13');
INSERT INTO `user_log` VALUES (1960, 2, '查看人员信息', 1, '/person/', 'GET', '{\"personName\":\"的\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 6, '2020-07-07 20:00:15');
INSERT INTO `user_log` VALUES (1961, 2, '查看人员信息', 1, '/person/', 'GET', '{\"personName\":\"哒哒哒\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-07 20:00:17');
INSERT INTO `user_log` VALUES (1962, 2, '查看人员信息', 1, '/person/', 'GET', '{\"personName\":\"哒哒哒的的的\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 20:00:18');
INSERT INTO `user_log` VALUES (1963, 2, '查看人员信息', 1, '/person/', 'GET', '{\"personName\":\"\",\"limit\":\"10\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-07 20:00:24');
INSERT INTO `user_log` VALUES (1964, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 44, '2020-07-07 20:03:23');
INSERT INTO `user_log` VALUES (1965, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-07 20:04:19');
INSERT INTO `user_log` VALUES (1966, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-07 20:04:30');
INSERT INTO `user_log` VALUES (1967, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-07 20:04:38');
INSERT INTO `user_log` VALUES (1968, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"3\"}', 'admin', '127.0.0.1', '山东省莱芜市', 44, '2020-07-07 20:13:41');
INSERT INTO `user_log` VALUES (1969, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"50\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 50, '2020-07-07 20:16:48');
INSERT INTO `user_log` VALUES (1970, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"50\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-07 20:16:48');
INSERT INTO `user_log` VALUES (1971, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-07 20:17:27');
INSERT INTO `user_log` VALUES (1972, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"3\"}', 'admin', '127.0.0.1', '山东省莱芜市', 67, '2020-07-07 21:48:42');
INSERT INTO `user_log` VALUES (1973, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-07 21:50:23');
INSERT INTO `user_log` VALUES (1974, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 3213, '2020-07-08 08:36:13');
INSERT INTO `user_log` VALUES (1975, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 27, '2020-07-08 08:36:38');
INSERT INTO `user_log` VALUES (1976, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 77, '2020-07-08 08:40:39');
INSERT INTO `user_log` VALUES (1977, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 63, '2020-07-08 08:43:21');
INSERT INTO `user_log` VALUES (1978, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 54, '2020-07-08 08:46:15');
INSERT INTO `user_log` VALUES (1979, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 62, '2020-07-08 08:52:28');
INSERT INTO `user_log` VALUES (1980, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-08 08:52:30');
INSERT INTO `user_log` VALUES (1981, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 20, '2020-07-08 08:52:46');
INSERT INTO `user_log` VALUES (1982, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"2\"}', 'admin', '127.0.0.1', '山东省莱芜市', 62, '2020-07-08 08:55:27');
INSERT INTO `user_log` VALUES (1983, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"3\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-08 08:55:36');
INSERT INTO `user_log` VALUES (1984, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 58, '2020-07-08 08:57:53');
INSERT INTO `user_log` VALUES (1985, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-08 08:58:12');
INSERT INTO `user_log` VALUES (1986, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 55, '2020-07-08 09:08:44');
INSERT INTO `user_log` VALUES (1987, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 30, '2020-07-08 09:09:42');
INSERT INTO `user_log` VALUES (1988, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-08 09:10:31');
INSERT INTO `user_log` VALUES (1989, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-08 09:11:07');
INSERT INTO `user_log` VALUES (1990, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-08 09:11:28');
INSERT INTO `user_log` VALUES (1991, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-08 09:12:03');
INSERT INTO `user_log` VALUES (1992, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-08 09:13:59');
INSERT INTO `user_log` VALUES (1993, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-08 09:15:09');
INSERT INTO `user_log` VALUES (1994, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 93, '2020-07-08 09:31:14');
INSERT INTO `user_log` VALUES (1995, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-08 09:41:53');
INSERT INTO `user_log` VALUES (1996, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-08 09:47:32');
INSERT INTO `user_log` VALUES (1997, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 34, '2020-07-08 09:53:35');
INSERT INTO `user_log` VALUES (1998, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 45, '2020-07-08 09:58:16');
INSERT INTO `user_log` VALUES (1999, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-08 09:59:17');
INSERT INTO `user_log` VALUES (2000, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"2\"}', 'admin', '127.0.0.1', '山东省莱芜市', 44, '2020-07-08 10:34:30');
INSERT INTO `user_log` VALUES (2001, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"3\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-08 10:34:36');
INSERT INTO `user_log` VALUES (2002, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 45, '2020-07-08 11:14:41');
INSERT INTO `user_log` VALUES (2003, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-08 11:39:32');
INSERT INTO `user_log` VALUES (2004, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-08 11:40:10');
INSERT INTO `user_log` VALUES (2005, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-08 11:40:34');
INSERT INTO `user_log` VALUES (2006, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"2\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-08 11:40:53');
INSERT INTO `user_log` VALUES (2007, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"3\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-08 11:40:56');
INSERT INTO `user_log` VALUES (2008, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 72, '2020-07-08 11:44:10');
INSERT INTO `user_log` VALUES (2009, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-08 11:44:34');
INSERT INTO `user_log` VALUES (2010, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-08 11:44:35');
INSERT INTO `user_log` VALUES (2011, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 55, '2020-07-08 11:49:59');
INSERT INTO `user_log` VALUES (2012, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-08 11:50:29');
INSERT INTO `user_log` VALUES (2013, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 50, '2020-07-08 11:53:05');
INSERT INTO `user_log` VALUES (2014, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 91, '2020-07-08 11:55:59');
INSERT INTO `user_log` VALUES (2015, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-08 11:56:07');
INSERT INTO `user_log` VALUES (2016, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-08 11:57:24');
INSERT INTO `user_log` VALUES (2017, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 37, '2020-07-08 12:01:47');
INSERT INTO `user_log` VALUES (2018, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-08 12:03:21');
INSERT INTO `user_log` VALUES (2019, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-08 12:06:43');
INSERT INTO `user_log` VALUES (2020, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-08 12:07:20');
INSERT INTO `user_log` VALUES (2021, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-08 12:07:31');
INSERT INTO `user_log` VALUES (2022, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 220, '2020-07-08 15:45:57');
INSERT INTO `user_log` VALUES (2023, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-08 17:41:36');
INSERT INTO `user_log` VALUES (2024, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 46, '2020-07-08 17:42:02');
INSERT INTO `user_log` VALUES (2025, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 33, '2020-07-08 17:46:16');
INSERT INTO `user_log` VALUES (2026, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 63, '2020-07-08 18:14:51');
INSERT INTO `user_log` VALUES (2027, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-08 18:22:44');
INSERT INTO `user_log` VALUES (2028, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 5398, '2020-07-09 17:09:08');
INSERT INTO `user_log` VALUES (2029, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 166, '2020-07-09 17:09:58');
INSERT INTO `user_log` VALUES (2030, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-09 17:10:04');
INSERT INTO `user_log` VALUES (2031, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-09 17:16:23');
INSERT INTO `user_log` VALUES (2032, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 63, '2020-07-09 17:21:22');
INSERT INTO `user_log` VALUES (2033, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-09 17:21:25');
INSERT INTO `user_log` VALUES (2034, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-09 17:23:01');
INSERT INTO `user_log` VALUES (2035, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-09 17:23:11');
INSERT INTO `user_log` VALUES (2036, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-09 17:24:19');
INSERT INTO `user_log` VALUES (2037, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 77, '2020-07-09 17:28:52');
INSERT INTO `user_log` VALUES (2038, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-09 17:29:21');
INSERT INTO `user_log` VALUES (2039, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-09 17:29:52');
INSERT INTO `user_log` VALUES (2040, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-09 17:30:10');
INSERT INTO `user_log` VALUES (2041, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-09 17:31:03');
INSERT INTO `user_log` VALUES (2042, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-09 17:31:33');
INSERT INTO `user_log` VALUES (2043, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 2749, '2020-07-10 17:11:35');
INSERT INTO `user_log` VALUES (2044, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 164, '2020-07-10 17:11:47');
INSERT INTO `user_log` VALUES (2045, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 27, '2020-07-10 17:11:52');
INSERT INTO `user_log` VALUES (2046, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 3282, '2020-07-11 19:31:35');
INSERT INTO `user_log` VALUES (2047, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 27, '2020-07-11 19:31:54');
INSERT INTO `user_log` VALUES (2048, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-11 19:33:41');
INSERT INTO `user_log` VALUES (2049, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"3\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-11 19:34:25');
INSERT INTO `user_log` VALUES (2050, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 631, '2020-07-11 21:29:08');
INSERT INTO `user_log` VALUES (2051, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-11 21:29:24');
INSERT INTO `user_log` VALUES (2052, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 51, '2020-07-11 21:31:28');
INSERT INTO `user_log` VALUES (2053, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-11 21:32:05');
INSERT INTO `user_log` VALUES (2054, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 64, '2020-07-11 22:00:23');
INSERT INTO `user_log` VALUES (2055, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-11 22:01:45');
INSERT INTO `user_log` VALUES (2056, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-11 22:01:57');
INSERT INTO `user_log` VALUES (2057, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-11 22:02:09');
INSERT INTO `user_log` VALUES (2058, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-11 22:02:25');
INSERT INTO `user_log` VALUES (2059, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-11 22:03:22');
INSERT INTO `user_log` VALUES (2060, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-11 22:03:53');
INSERT INTO `user_log` VALUES (2061, 2, '批量为人员添加手机号', 1, '/upload/Phone', 'POST', '{}', 'admin', '0:0:0:0:0:0:0:1', '山东省日照市', 743, '2020-07-11 22:04:10');
INSERT INTO `user_log` VALUES (2062, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-11 22:04:25');
INSERT INTO `user_log` VALUES (2063, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 75, '2020-07-11 22:09:08');
INSERT INTO `user_log` VALUES (2064, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 187, '2020-07-12 00:56:55');
INSERT INTO `user_log` VALUES (2065, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 2746, '2020-07-12 01:44:46');
INSERT INTO `user_log` VALUES (2066, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 152, '2020-07-12 01:45:32');
INSERT INTO `user_log` VALUES (2067, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 2400, '2020-07-15 15:53:36');
INSERT INTO `user_log` VALUES (2068, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 924, '2020-07-15 18:04:40');
INSERT INTO `user_log` VALUES (2069, 2, '添加会议', 1, '/meeting', 'POST', '{\"meetingAddress\":\"山东省 日照市 东港区  \",\"meetingName\":\"你好\",\"lng\":\"119.547532\",\"addressName\":\"曲阜师范大学\",\"startTime\":\"2020-07-01 12:00\",\"information\":\"nihilism\",\"endTime\":\"2020-07-30 00:00\",\"meetingPhone\":\"15762323410\",\"lat\":\"35.44758\"}', 'admin', '127.0.0.1', '山东省莱芜市', 137, '2020-07-16 00:09:03');
INSERT INTO `user_log` VALUES (2070, 2, '添加会议', 1, '/meeting', 'POST', '{\"meetingAddress\":\"山东省 日照市 东港区 至中路 \",\"meetingName\":\"曹尼玛\",\"lng\":\"119.545941\",\"addressName\":\"日照职业技术需要\",\"startTime\":\"2020-07-07 12:00\",\"information\":\"当前\",\"endTime\":\"2020-07-20 00:00\",\"meetingPhone\":\"15762323410\",\"lat\":\"35.46816\"}', 'admin', '127.0.0.1', '山东省莱芜市', 25, '2020-07-16 00:13:09');
INSERT INTO `user_log` VALUES (2071, 2, '添加会议', 1, '/meeting', 'POST', '{\"meetingAddress\":\"陕西省 西安市 未央区 永顺路 \",\"meetingName\":\"测\",\"lng\":\"108.984377\",\"addressName\":\"我爱你\",\"startTime\":\"2020-07-07 12:00\",\"information\":\"测11111\",\"endTime\":\"2020-08-05 00:00\",\"meetingPhone\":\"15762323410\",\"lat\":\"34.323106\"}', 'admin', '127.0.0.1', '山东省莱芜市', 106, '2020-07-16 00:14:16');
INSERT INTO `user_log` VALUES (2072, 2, '添加会议', 1, '/meeting', 'POST', '{\"meetingAddress\":\"贵州省 贵阳市 乌当区  \",\"meetingName\":\"重启\",\"lng\":\"106.781381\",\"addressName\":\"11\",\"startTime\":\"2020-07-06 12:00\",\"information\":\"11111\",\"endTime\":\"2020-07-06 00:00\",\"meetingPhone\":\"15762323410\",\"lat\":\"26.636826\"}', 'admin', '127.0.0.1', '山东省莱芜市', 33, '2020-07-16 00:16:08');
INSERT INTO `user_log` VALUES (2073, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 2808, '2020-07-16 11:30:43');
INSERT INTO `user_log` VALUES (2074, 2, '添加会议', 1, '/meeting', 'POST', '{\"meetingAddress\":\"上海市 上海市 闵行区 申达五路 \",\"meetingName\":\"你\",\"lng\":\"121.335899\",\"addressName\":\"111\",\"startTime\":\"2020-06-29 12:00\",\"information\":\"1的的1的\",\"endTime\":\"2020-07-13 00:00\",\"meetingPhone\":\"15762323401\",\"lat\":\"31.190758\"}', 'admin', '127.0.0.1', '山东省莱芜市', 95, '2020-07-16 12:15:56');
INSERT INTO `user_log` VALUES (2075, 2, '添加会议', 1, '/meeting', 'POST', '{\"lng\":\"119.545941\",\"persionNumber\":\"0\",\"meetingPhone\":\"15762323410\",\"uuid\":\"\",\"meetingAddress\":\"山东省 日照市 东港区 至中路 \",\"meetingName\":\"曹尼玛111111\",\"addId\":\"\",\"addressName\":\"日照职业技术需要\",\"startTime\":\"2020-07-07 12:00\",\"information\":\"当前\",\"id\":\"88\",\"endTime\":\"2020-07-20 00:00\",\"lat\":\"35.46816\"}', 'admin', '127.0.0.1', '山东省莱芜市', 1865, '2020-07-16 12:42:19');
INSERT INTO `user_log` VALUES (2076, 2, '添加会议', 1, '/meeting', 'POST', '{\"lng\":\"119.545941\",\"persionNumber\":\"0\",\"meetingPhone\":\"15762323410\",\"uuid\":\"\",\"meetingAddress\":\"山东省 日照市 东港区 至中路 \",\"meetingName\":\"曹尼玛111111\",\"addId\":\"\",\"addressName\":\"日照职业技术需要\",\"startTime\":\"2020-07-07 12:00\",\"information\":\"当前\",\"id\":\"88\",\"endTime\":\"2020-07-20 00:00\",\"lat\":\"35.46816\"}', 'admin', '127.0.0.1', '山东省莱芜市', 21, '2020-07-16 12:44:10');
INSERT INTO `user_log` VALUES (2077, 2, '添加会议', 1, '/meeting', 'POST', '{\"lng\":\"119.545941\",\"persionNumber\":\"0\",\"meetingPhone\":\"15762323410\",\"uuid\":\"\",\"meetingAddress\":\"山东省 日照市 东港区 至中路 \",\"meetingName\":\"曹尼玛11\",\"addId\":\"\",\"addressName\":\"日照职业技术需要\",\"startTime\":\"2020-07-07 12:00\",\"information\":\"当前\",\"id\":\"88\",\"endTime\":\"2020-07-20 00:00\",\"lat\":\"35.46816\"}', 'admin', '127.0.0.1', '山东省莱芜市', 21, '2020-07-16 12:44:25');
INSERT INTO `user_log` VALUES (2078, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"119.545941\",\"persionNumber\":\"0\",\"meetingPhone\":\"15762323410\",\"uuid\":\"98b05e49f9b945dc908a5d053ae4b24b\",\"meetingAddress\":\"山东省 日照市 东港区 至中路 \",\"meetingName\":\"曹尼玛11\",\"addId\":\"2\",\"addressName\":\"日照职业技术需要\",\"startTime\":\"2020-07-07 12:00\",\"information\":\"当前\",\"id\":\"88\",\"endTime\":\"2020-07-20 00:00\",\"lat\":\"35.46816\"}', 'admin', '127.0.0.1', '山东省莱芜市', 38, '2020-07-16 12:45:53');
INSERT INTO `user_log` VALUES (2079, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"119.545941\",\"persionNumber\":\"0\",\"meetingPhone\":\"15762323410\",\"uuid\":\"98b05e49f9b945dc908a5d053ae4b24b\",\"meetingAddress\":\"山东省 日照市 东港区 至中路 \",\"meetingName\":\"曹尼玛111111\",\"addId\":\"2\",\"addressName\":\"日照职业技术需要\",\"startTime\":\"2020-07-07 12:00\",\"information\":\"当前\",\"id\":\"88\",\"endTime\":\"2020-07-20 00:00\",\"lat\":\"35.46816\"}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-16 12:46:47');
INSERT INTO `user_log` VALUES (2080, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"119.545941\",\"persionNumber\":\"0\",\"meetingPhone\":\"15762323410\",\"uuid\":\"98b05e49f9b945dc908a5d053ae4b24b\",\"meetingAddress\":\"山东省 日照市 东港区 至中路 \",\"meetingName\":\"曹尼玛111111\",\"addId\":\"2\",\"addressName\":\"日照职业技术需要\",\"startTime\":\"2020-07-07 12:00\",\"information\":\"当前你死了个\",\"id\":\"88\",\"endTime\":\"2020-07-20 00:00\",\"lat\":\"35.46816\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-16 12:46:55');
INSERT INTO `user_log` VALUES (2081, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 133, '2020-07-16 12:53:31');
INSERT INTO `user_log` VALUES (2082, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 54, '2020-07-16 17:18:15');
INSERT INTO `user_log` VALUES (2083, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 49, '2020-07-16 17:23:20');
INSERT INTO `user_log` VALUES (2084, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 2755, '2020-07-16 17:28:27');
INSERT INTO `user_log` VALUES (2085, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 24, '2020-07-16 17:29:17');
INSERT INTO `user_log` VALUES (2086, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-16 17:30:41');
INSERT INTO `user_log` VALUES (2087, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-16 17:32:32');
INSERT INTO `user_log` VALUES (2088, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 17:33:13');
INSERT INTO `user_log` VALUES (2089, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 17:33:17');
INSERT INTO `user_log` VALUES (2090, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 21, '2020-07-16 17:34:38');
INSERT INTO `user_log` VALUES (2091, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-16 17:35:04');
INSERT INTO `user_log` VALUES (2092, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-16 17:35:22');
INSERT INTO `user_log` VALUES (2093, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 17:35:46');
INSERT INTO `user_log` VALUES (2094, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 17:36:03');
INSERT INTO `user_log` VALUES (2095, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-16 17:36:23');
INSERT INTO `user_log` VALUES (2096, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 95, '2020-07-16 17:46:53');
INSERT INTO `user_log` VALUES (2097, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 21, '2020-07-16 17:48:53');
INSERT INTO `user_log` VALUES (2098, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 48, '2020-07-16 17:55:49');
INSERT INTO `user_log` VALUES (2099, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-16 17:56:50');
INSERT INTO `user_log` VALUES (2100, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-16 17:57:17');
INSERT INTO `user_log` VALUES (2101, 2, '更新人员信息', 1, '/person/', 'PUT', '{\"0\":\"id=806&personName=%E5%A4%A7%E5%A8%8312&phone=1545\"}', 'admin', '127.0.0.1', '山东省莱芜市', 201, '2020-07-16 17:57:18');
INSERT INTO `user_log` VALUES (2102, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-16 17:57:44');
INSERT INTO `user_log` VALUES (2103, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-16 17:58:18');
INSERT INTO `user_log` VALUES (2104, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 17:58:33');
INSERT INTO `user_log` VALUES (2105, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 17:58:55');
INSERT INTO `user_log` VALUES (2106, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 44, '2020-07-16 18:01:04');
INSERT INTO `user_log` VALUES (2107, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 59, '2020-07-16 18:03:43');
INSERT INTO `user_log` VALUES (2108, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-16 18:05:26');
INSERT INTO `user_log` VALUES (2109, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 45, '2020-07-16 18:08:43');
INSERT INTO `user_log` VALUES (2110, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 23, '2020-07-16 18:08:44');
INSERT INTO `user_log` VALUES (2111, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 18:09:13');
INSERT INTO `user_log` VALUES (2112, 2, '更新人员信息', 1, '/person/', 'PUT', '{\"0\":\"id=806&personName=%E5%A4%A7%E5%A8%831211&phone=1545\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-16 18:09:16');
INSERT INTO `user_log` VALUES (2113, 2, '更新人员信息', 1, '/person/', 'PUT', '{\"0\":\"id=806&personName=%E5%A4%A7%E5%A8%83122&phone=1545\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-16 18:09:52');
INSERT INTO `user_log` VALUES (2114, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 47, '2020-07-16 18:12:21');
INSERT INTO `user_log` VALUES (2115, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 18:13:53');
INSERT INTO `user_log` VALUES (2116, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-16 18:14:38');
INSERT INTO `user_log` VALUES (2117, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-16 18:14:41');
INSERT INTO `user_log` VALUES (2118, 2, '更新人员信息', 1, '/person/', 'PUT', '{\"0\":\"id=806&personName=%E5%A4%A7%E5%A8%8312&phone=1545\"}', 'admin', '127.0.0.1', '山东省莱芜市', 71329, '2020-07-16 18:14:49');
INSERT INTO `user_log` VALUES (2119, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-16 18:16:01');
INSERT INTO `user_log` VALUES (2120, 2, '更新人员信息', 1, '/person/', 'PUT', '{\"personName\":\"鹅鹅鹅1\",\"phone\":\"15762323410\",\"id\":\"814\"}', 'admin', '127.0.0.1', '山东省莱芜市', 5365, '2020-07-16 18:16:11');
INSERT INTO `user_log` VALUES (2121, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 47, '2020-07-16 18:17:37');
INSERT INTO `user_log` VALUES (2122, 2, '更新人员信息', 1, '/person/', 'PUT', '{\"personName\":\"大娃12111\",\"phone\":\"1545\",\"id\":\"806\"}', 'admin', '127.0.0.1', '山东省莱芜市', 47033, '2020-07-16 18:16:50');
INSERT INTO `user_log` VALUES (2123, 2, '更新人员信息', 1, '/person/', 'PUT', '{\"personName\":\"大娃12111\",\"phone\":\"1576232323410\",\"id\":\"806\"}', 'admin', '127.0.0.1', '山东省莱芜市', 108, '2020-07-16 18:17:46');
INSERT INTO `user_log` VALUES (2124, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-16 18:17:46');
INSERT INTO `user_log` VALUES (2125, 2, '更新人员信息', 1, '/person/', 'PUT', '{\"personName\":\"大娃12111\",\"phone\":\"1576232323410\",\"id\":\"806\"}', 'admin', '127.0.0.1', '山东省莱芜市', 2249, '2020-07-16 18:23:02');
INSERT INTO `user_log` VALUES (2126, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 108, '2020-07-16 18:23:04');
INSERT INTO `user_log` VALUES (2127, 2, '更新人员信息', 1, '/person/', 'PUT', '{\"personName\":\"大娃12111\",\"phone\":\"1576232323410\",\"id\":\"806\"}', 'admin', '127.0.0.1', '山东省莱芜市', 30, '2020-07-16 18:23:23');
INSERT INTO `user_log` VALUES (2128, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 26, '2020-07-16 18:23:23');
INSERT INTO `user_log` VALUES (2129, 2, '更新人员信息', 1, '/person/', 'PUT', '{\"personName\":\"大娃12111\",\"phone\":\"1576232323410\",\"id\":\"806\"}', 'admin', '127.0.0.1', '山东省莱芜市', 144, '2020-07-16 18:27:27');
INSERT INTO `user_log` VALUES (2130, 2, '更新人员信息', 1, '/person/', 'PUT', '{\"personName\":\"大娃12111\",\"phone\":\"15762323410\",\"id\":\"806\"}', 'admin', '127.0.0.1', '山东省莱芜市', 40, '2020-07-16 18:27:45');
INSERT INTO `user_log` VALUES (2131, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 31, '2020-07-16 18:27:45');
INSERT INTO `user_log` VALUES (2132, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 36, '2020-07-16 18:28:16');
INSERT INTO `user_log` VALUES (2133, 2, '更新人员信息', 1, '/person/', 'PUT', '{\"personName\":\"大娃12111\",\"phone\":\"157623234101\",\"id\":\"806\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-16 18:28:23');
INSERT INTO `user_log` VALUES (2134, 2, '更新人员信息', 1, '/person/', 'PUT', '{\"personName\":\"eee\",\"phone\":\"\",\"id\":\"808\"}', 'admin', '127.0.0.1', '山东省莱芜市', 25, '2020-07-16 18:28:28');
INSERT INTO `user_log` VALUES (2135, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 21, '2020-07-16 18:28:28');
INSERT INTO `user_log` VALUES (2136, 2, '更新人员信息', 1, '/person/', 'PUT', '{\"personName\":\"eee\",\"phone\":\"15762323410\",\"id\":\"808\"}', 'admin', '127.0.0.1', '山东省莱芜市', 32, '2020-07-16 18:28:39');
INSERT INTO `user_log` VALUES (2137, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 21, '2020-07-16 18:28:39');
INSERT INTO `user_log` VALUES (2138, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 186, '2020-07-16 18:43:12');
INSERT INTO `user_log` VALUES (2139, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 23, '2020-07-16 18:43:15');
INSERT INTO `user_log` VALUES (2140, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 25, '2020-07-16 18:43:28');
INSERT INTO `user_log` VALUES (2141, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-16 18:44:54');
INSERT INTO `user_log` VALUES (2142, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"3\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-16 18:44:59');
INSERT INTO `user_log` VALUES (2143, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 6, '2020-07-16 18:45:02');
INSERT INTO `user_log` VALUES (2144, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-16 18:45:15');
INSERT INTO `user_log` VALUES (2145, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 21, '2020-07-16 18:46:43');
INSERT INTO `user_log` VALUES (2146, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"3\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-16 18:46:47');
INSERT INTO `user_log` VALUES (2147, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids[0]\":\"863\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-16 18:46:50');
INSERT INTO `user_log` VALUES (2148, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-16 18:48:27');
INSERT INTO `user_log` VALUES (2149, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids[0]\":\"817\"}', 'admin', '127.0.0.1', '山东省莱芜市', 4, '2020-07-16 18:48:36');
INSERT INTO `user_log` VALUES (2150, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 18:48:55');
INSERT INTO `user_log` VALUES (2151, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{}', 'admin', '127.0.0.1', '山东省莱芜市', 4, '2020-07-16 18:48:57');
INSERT INTO `user_log` VALUES (2152, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 67, '2020-07-16 18:51:49');
INSERT INTO `user_log` VALUES (2153, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"816\"}', 'admin', '127.0.0.1', '山东省莱芜市', 5, '2020-07-16 18:51:52');
INSERT INTO `user_log` VALUES (2154, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"822\"}', 'admin', '127.0.0.1', '山东省莱芜市', 3735, '2020-07-16 18:54:10');
INSERT INTO `user_log` VALUES (2155, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 189, '2020-07-16 19:02:29');
INSERT INTO `user_log` VALUES (2156, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"823\"}', 'admin', '127.0.0.1', '山东省莱芜市', 960, '2020-07-16 19:02:39');
INSERT INTO `user_log` VALUES (2157, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"823\"}', 'admin', '127.0.0.1', '山东省莱芜市', 26, '2020-07-16 19:02:51');
INSERT INTO `user_log` VALUES (2158, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-16 19:03:23');
INSERT INTO `user_log` VALUES (2159, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 20, '2020-07-16 19:03:27');
INSERT INTO `user_log` VALUES (2160, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"824\"}', 'admin', '127.0.0.1', '山东省莱芜市', 585, '2020-07-16 19:03:27');
INSERT INTO `user_log` VALUES (2161, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-16 19:03:43');
INSERT INTO `user_log` VALUES (2162, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 19:04:11');
INSERT INTO `user_log` VALUES (2163, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"825\"}', 'admin', '127.0.0.1', '山东省莱芜市', 574, '2020-07-16 19:04:15');
INSERT INTO `user_log` VALUES (2164, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-16 19:04:15');
INSERT INTO `user_log` VALUES (2165, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 41, '2020-07-16 19:06:31');
INSERT INTO `user_log` VALUES (2166, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"827\"}', 'admin', '127.0.0.1', '山东省莱芜市', 570, '2020-07-16 19:06:35');
INSERT INTO `user_log` VALUES (2167, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 24, '2020-07-16 19:06:49');
INSERT INTO `user_log` VALUES (2168, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"828\"}', 'admin', '127.0.0.1', '山东省莱芜市', 581, '2020-07-16 19:07:40');
INSERT INTO `user_log` VALUES (2169, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-16 19:07:41');
INSERT INTO `user_log` VALUES (2170, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-16 19:09:10');
INSERT INTO `user_log` VALUES (2171, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"3\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-16 19:09:14');
INSERT INTO `user_log` VALUES (2172, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-16 19:09:41');
INSERT INTO `user_log` VALUES (2173, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"3\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 19:09:44');
INSERT INTO `user_log` VALUES (2174, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-16 19:10:10');
INSERT INTO `user_log` VALUES (2175, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 19:10:33');
INSERT INTO `user_log` VALUES (2176, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"3\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-16 19:10:39');
INSERT INTO `user_log` VALUES (2177, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"858\"}', 'admin', '127.0.0.1', '山东省莱芜市', 1118, '2020-07-16 19:10:43');
INSERT INTO `user_log` VALUES (2178, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"3\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 19:10:44');
INSERT INTO `user_log` VALUES (2179, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-16 19:10:52');
INSERT INTO `user_log` VALUES (2180, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"2\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 19:10:55');
INSERT INTO `user_log` VALUES (2181, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"857\"}', 'admin', '127.0.0.1', '山东省莱芜市', 1103, '2020-07-16 19:11:02');
INSERT INTO `user_log` VALUES (2182, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"2\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-16 19:11:03');
INSERT INTO `user_log` VALUES (2183, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-16 19:12:29');
INSERT INTO `user_log` VALUES (2184, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-16 19:13:00');
INSERT INTO `user_log` VALUES (2185, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 19:13:22');
INSERT INTO `user_log` VALUES (2186, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 19:13:28');
INSERT INTO `user_log` VALUES (2187, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 41, '2020-07-16 19:18:47');
INSERT INTO `user_log` VALUES (2188, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 19:19:40');
INSERT INTO `user_log` VALUES (2189, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-16 19:19:42');
INSERT INTO `user_log` VALUES (2190, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-16 19:20:52');
INSERT INTO `user_log` VALUES (2191, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 65, '2020-07-16 19:21:41');
INSERT INTO `user_log` VALUES (2192, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 25, '2020-07-16 19:23:30');
INSERT INTO `user_log` VALUES (2193, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-16 19:27:39');
INSERT INTO `user_log` VALUES (2194, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 26, '2020-07-16 19:28:45');
INSERT INTO `user_log` VALUES (2195, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 47, '2020-07-16 19:31:39');
INSERT INTO `user_log` VALUES (2196, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"5\",\"page\":\"3\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 19:31:45');
INSERT INTO `user_log` VALUES (2197, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 19:32:03');
INSERT INTO `user_log` VALUES (2198, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"3\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-16 19:32:07');
INSERT INTO `user_log` VALUES (2199, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 27, '2020-07-16 19:32:14');
INSERT INTO `user_log` VALUES (2200, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-16 19:33:10');
INSERT INTO `user_log` VALUES (2201, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 32, '2020-07-16 19:33:30');
INSERT INTO `user_log` VALUES (2202, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 31, '2020-07-16 19:34:32');
INSERT INTO `user_log` VALUES (2203, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"2\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-16 19:34:38');
INSERT INTO `user_log` VALUES (2204, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 21, '2020-07-16 19:34:40');
INSERT INTO `user_log` VALUES (2205, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"50\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 24, '2020-07-16 19:34:47');
INSERT INTO `user_log` VALUES (2206, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 21, '2020-07-16 19:36:47');
INSERT INTO `user_log` VALUES (2207, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 28, '2020-07-16 19:38:33');
INSERT INTO `user_log` VALUES (2208, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 19:39:32');
INSERT INTO `user_log` VALUES (2209, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-16 19:40:26');
INSERT INTO `user_log` VALUES (2210, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-16 19:40:33');
INSERT INTO `user_log` VALUES (2211, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 74, '2020-07-16 19:43:16');
INSERT INTO `user_log` VALUES (2212, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-16 19:44:43');
INSERT INTO `user_log` VALUES (2213, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-16 19:45:04');
INSERT INTO `user_log` VALUES (2214, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-16 19:45:06');
INSERT INTO `user_log` VALUES (2215, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 26, '2020-07-16 19:45:08');
INSERT INTO `user_log` VALUES (2216, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 25, '2020-07-16 19:45:18');
INSERT INTO `user_log` VALUES (2217, 2, '新增菜单', 1, '/menu', 'POST', '{\"path\":\"edit\",\"parent\":\"17\",\"component\":\"编辑\",\"hidden\":\"1\",\"metaId\":\"20\",\"isTop\":\"false\",\"name\":\"会议管理\"}', 'admin', '127.0.0.1', '山东省莱芜市', 34, '2020-07-16 19:48:49');
INSERT INTO `user_log` VALUES (2218, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 19:52:53');
INSERT INTO `user_log` VALUES (2219, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 19:53:17');
INSERT INTO `user_log` VALUES (2220, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-16 19:53:23');
INSERT INTO `user_log` VALUES (2221, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 19:54:32');
INSERT INTO `user_log` VALUES (2222, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-16 19:54:38');
INSERT INTO `user_log` VALUES (2223, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-16 19:54:42');
INSERT INTO `user_log` VALUES (2224, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 19:54:52');
INSERT INTO `user_log` VALUES (2225, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 42, '2020-07-16 19:54:55');
INSERT INTO `user_log` VALUES (2226, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-16 19:54:58');
INSERT INTO `user_log` VALUES (2227, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-16 19:57:51');
INSERT INTO `user_log` VALUES (2228, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-16 19:58:02');
INSERT INTO `user_log` VALUES (2229, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 19:58:49');
INSERT INTO `user_log` VALUES (2230, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-16 19:58:55');
INSERT INTO `user_log` VALUES (2231, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 19:59:02');
INSERT INTO `user_log` VALUES (2232, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 20:00:50');
INSERT INTO `user_log` VALUES (2233, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 90, '2020-07-16 20:05:50');
INSERT INTO `user_log` VALUES (2234, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 20:05:54');
INSERT INTO `user_log` VALUES (2235, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"116.365634\",\"persionNumber\":\"0\",\"meetingPhone\":\"15762323410\",\"uuid\":\"80a94bd7cbc24600828df5ad40c10999\",\"meetingAddress\":\"山东省 济宁市 嘉祥县  \",\"meetingName\":\"时间测试\",\"addId\":\"2\",\"addressName\":\"曲阜基础\",\"startTime\":\"2020-01-24 00:00\",\"information\":\"111\",\"id\":\"75\",\"endTime\":\"2020-01-13 21:05\",\"lat\":\"35.297364\"}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-16 20:06:45');
INSERT INTO `user_log` VALUES (2236, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-16 20:07:30');
INSERT INTO `user_log` VALUES (2237, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 20:09:20');
INSERT INTO `user_log` VALUES (2238, 2, '新增菜单', 1, '/menu', 'POST', '{\"path\":\"edit/:id\",\"parent\":\"17\",\"component\":\"edit\",\"hidden\":\"0\",\"metaId\":\"21\",\"isTop\":\"false\",\"name\":\"会议编辑\"}', 'admin', '127.0.0.1', '山东省莱芜市', 23, '2020-07-16 20:13:03');
INSERT INTO `user_log` VALUES (2239, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-16 20:15:19');
INSERT INTO `user_log` VALUES (2240, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-16 20:15:53');
INSERT INTO `user_log` VALUES (2241, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"125.40453\",\"persionNumber\":\"0\",\"meetingPhone\":\"15762323410\",\"uuid\":\"a07d11c4417b42179b6375cb81d15cb4\",\"meetingAddress\":\"吉林省 长春市 南关区  \",\"meetingName\":\"时间测试\",\"addId\":\"2\",\"addressName\":\"驱动\",\"startTime\":\"2020-01-24 00:00\",\"information\":\"111\",\"id\":\"76\",\"endTime\":\"2020-01-13 21:05\",\"lat\":\"43.791312\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-16 20:16:14');
INSERT INTO `user_log` VALUES (2242, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"125.40453\",\"persionNumber\":\"0\",\"meetingPhone\":\"15762323410\",\"uuid\":\"a07d11c4417b42179b6375cb81d15cb4\",\"meetingAddress\":\"吉林省 长春市 南关区  \",\"meetingName\":\"时间测试\",\"addId\":\"2\",\"addressName\":\"驱动\",\"startTime\":\"2020-01-24 00:00\",\"information\":\"111\",\"id\":\"76\",\"endTime\":\"2020-01-13 21:05\",\"lat\":\"43.791312\"}', 'admin', '127.0.0.1', '山东省莱芜市', 26, '2020-07-16 20:16:27');
INSERT INTO `user_log` VALUES (2243, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 124, '2020-07-16 20:18:46');
INSERT INTO `user_log` VALUES (2244, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 20:18:48');
INSERT INTO `user_log` VALUES (2245, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-16 20:18:51');
INSERT INTO `user_log` VALUES (2246, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 20:19:08');
INSERT INTO `user_log` VALUES (2247, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-16 20:19:29');
INSERT INTO `user_log` VALUES (2248, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"125.40453\",\"persionNumber\":\"0\",\"meetingPhone\":\"15762323410\",\"uuid\":\"a07d11c4417b42179b6375cb81d15cb4\",\"meetingAddress\":\"吉林省 长春市 南关区  \",\"meetingName\":\"时间测试\",\"addId\":\"2\",\"addressName\":\"驱动1\",\"startTime\":\"2020-01-24 00:00\",\"information\":\"111\",\"id\":\"76\",\"endTime\":\"2020-01-13 21:05\",\"lat\":\"43.791312\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-16 20:19:40');
INSERT INTO `user_log` VALUES (2249, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-16 20:21:04');
INSERT INTO `user_log` VALUES (2250, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"108.984377\",\"persionNumber\":\"0\",\"meetingPhone\":\"15762323410\",\"uuid\":\"467ba2ac603f4f6f856f5a38b4df87ee\",\"meetingAddress\":\"陕西省 西安市 未央区 永顺路 \",\"meetingName\":\"测你吗呢\",\"addId\":\"2\",\"addressName\":\"我爱你\",\"startTime\":\"2020-07-07 12:00\",\"information\":\"测11111\",\"id\":\"89\",\"endTime\":\"2020-08-05 00:00\",\"lat\":\"34.323106\"}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-16 20:21:12');
INSERT INTO `user_log` VALUES (2251, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"108.984377\",\"persionNumber\":\"0\",\"meetingPhone\":\"15762323410\",\"uuid\":\"467ba2ac603f4f6f856f5a38b4df87ee\",\"meetingAddress\":\"陕西省 西安市 未央区 永顺路 \",\"meetingName\":\"测你吗呢111\",\"addId\":\"2\",\"addressName\":\"我爱你\",\"startTime\":\"2020-07-07 12:00\",\"information\":\"测11111\",\"id\":\"89\",\"endTime\":\"2020-08-05 00:00\",\"lat\":\"34.323106\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-16 20:21:21');
INSERT INTO `user_log` VALUES (2252, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-16 20:22:46');
INSERT INTO `user_log` VALUES (2253, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 27, '2020-07-16 20:22:48');
INSERT INTO `user_log` VALUES (2254, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"125.40453\",\"persionNumber\":\"0\",\"meetingPhone\":\"15762323410\",\"uuid\":\"a07d11c4417b42179b6375cb81d15cb4\",\"meetingAddress\":\"吉林省 长春市 南关区  \",\"meetingName\":\"时间测试11\",\"addId\":\"2\",\"addressName\":\"驱动1\",\"startTime\":\"2020-01-24 00:00\",\"information\":\"111\",\"id\":\"76\",\"endTime\":\"2020-01-13 21:05\",\"lat\":\"43.791312\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-16 20:22:52');
INSERT INTO `user_log` VALUES (2255, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 20:22:53');
INSERT INTO `user_log` VALUES (2256, 2, '查询会议', 1, '/meeting/', 'GET', '{\"personName\":\"时间\",\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 20:23:14');
INSERT INTO `user_log` VALUES (2257, 2, '查询会议', 1, '/meeting/', 'GET', '{\"personName\":\"时间\",\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-16 20:23:15');
INSERT INTO `user_log` VALUES (2258, 2, '查询会议', 1, '/meeting/', 'GET', '{\"personName\":\"时间\",\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-16 20:23:15');
INSERT INTO `user_log` VALUES (2259, 2, '查询会议', 1, '/meeting/', 'GET', '{\"personName\":\"时间\",\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 20:23:15');
INSERT INTO `user_log` VALUES (2260, 2, '查询会议', 1, '/meeting/', 'GET', '{\"personName\":\"时间\",\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-16 20:23:15');
INSERT INTO `user_log` VALUES (2261, 2, '查询会议', 1, '/meeting/', 'GET', '{\"personName\":\"时间\",\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-16 20:23:16');
INSERT INTO `user_log` VALUES (2262, 2, '查询会议', 1, '/meeting/', 'GET', '{\"personName\":\"时间\",\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 20:23:17');
INSERT INTO `user_log` VALUES (2263, 2, '查询会议', 1, '/meeting/', 'GET', '{\"personName\":\"时间\",\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-16 20:23:17');
INSERT INTO `user_log` VALUES (2264, 2, '查询会议', 1, '/meeting/', 'GET', '{\"personName\":\"时间\",\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 20, '2020-07-16 20:24:11');
INSERT INTO `user_log` VALUES (2265, 2, '查询会议', 1, '/meeting/', 'GET', '{\"personName\":\"时间\",\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 34121, '2020-07-16 20:24:57');
INSERT INTO `user_log` VALUES (2266, 2, '查询会议', 1, '/meeting/', 'GET', '{\"personName\":\"时间\",\"meetingName\":\"时间\",\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 41, '2020-07-16 20:25:39');
INSERT INTO `user_log` VALUES (2267, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-16 20:26:48');
INSERT INTO `user_log` VALUES (2268, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 20:26:52');
INSERT INTO `user_log` VALUES (2269, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 20:27:56');
INSERT INTO `user_log` VALUES (2270, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-16 20:28:52');
INSERT INTO `user_log` VALUES (2271, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 20, '2020-07-16 20:29:35');
INSERT INTO `user_log` VALUES (2272, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"2\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-16 20:29:44');
INSERT INTO `user_log` VALUES (2273, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 74, '2020-07-16 20:30:43');
INSERT INTO `user_log` VALUES (2274, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"2\"}', 'admin', '127.0.0.1', '山东省莱芜市', 26, '2020-07-16 20:30:45');
INSERT INTO `user_log` VALUES (2275, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 69, '2020-07-16 20:31:17');
INSERT INTO `user_log` VALUES (2276, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"2\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-16 20:31:19');
INSERT INTO `user_log` VALUES (2277, 2, '删除所选会议', 1, '/meeting/', 'DELETE', '{\"ids\":\"90\"}', 'admin', '127.0.0.1', '山东省莱芜市', 28, '2020-07-16 20:31:23');
INSERT INTO `user_log` VALUES (2278, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"2\"}', 'admin', '127.0.0.1', '山东省莱芜市', 27, '2020-07-16 20:31:23');
INSERT INTO `user_log` VALUES (2279, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 30, '2020-07-16 20:31:27');
INSERT INTO `user_log` VALUES (2280, 2, '删除所选会议', 1, '/meeting/', 'DELETE', '{\"ids\":\"75\"}', 'admin', '127.0.0.1', '山东省莱芜市', 49, '2020-07-16 20:36:10');
INSERT INTO `user_log` VALUES (2281, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 26, '2020-07-16 20:36:10');
INSERT INTO `user_log` VALUES (2282, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 27, '2020-07-16 20:37:20');
INSERT INTO `user_log` VALUES (2283, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 35, '2020-07-16 20:37:49');
INSERT INTO `user_log` VALUES (2284, 2, '删除所选会议', 1, '/meeting/', 'DELETE', '{\"ids\":\"76\"}', 'admin', '127.0.0.1', '山东省莱芜市', 23, '2020-07-16 20:37:55');
INSERT INTO `user_log` VALUES (2285, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 21, '2020-07-16 20:37:55');
INSERT INTO `user_log` VALUES (2286, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-16 20:38:03');
INSERT INTO `user_log` VALUES (2287, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-16 23:37:00');
INSERT INTO `user_log` VALUES (2288, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 21, '2020-07-16 23:38:56');
INSERT INTO `user_log` VALUES (2289, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 28, '2020-07-16 23:41:51');
INSERT INTO `user_log` VALUES (2290, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 24, '2020-07-16 23:42:59');
INSERT INTO `user_log` VALUES (2291, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-16 23:47:01');
INSERT INTO `user_log` VALUES (2292, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 83, '2020-07-16 23:49:25');
INSERT INTO `user_log` VALUES (2293, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 23:49:32');
INSERT INTO `user_log` VALUES (2294, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-16 23:49:58');
INSERT INTO `user_log` VALUES (2295, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-16 23:50:04');
INSERT INTO `user_log` VALUES (2296, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-16 23:50:11');
INSERT INTO `user_log` VALUES (2297, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-16 23:50:28');
INSERT INTO `user_log` VALUES (2298, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 59, '2020-07-17 00:45:41');
INSERT INTO `user_log` VALUES (2299, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-17 00:45:48');
INSERT INTO `user_log` VALUES (2300, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 2165, '2020-07-17 12:59:29');
INSERT INTO `user_log` VALUES (2301, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 102, '2020-07-17 13:34:40');
INSERT INTO `user_log` VALUES (2302, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 25, '2020-07-17 13:35:10');
INSERT INTO `user_log` VALUES (2303, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-17 13:38:04');
INSERT INTO `user_log` VALUES (2304, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-17 13:38:45');
INSERT INTO `user_log` VALUES (2305, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-17 13:38:55');
INSERT INTO `user_log` VALUES (2306, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 26, '2020-07-17 13:39:16');
INSERT INTO `user_log` VALUES (2307, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 25, '2020-07-17 13:39:25');
INSERT INTO `user_log` VALUES (2308, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-17 13:39:36');
INSERT INTO `user_log` VALUES (2309, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-17 13:39:38');
INSERT INTO `user_log` VALUES (2310, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"11\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-17 13:39:39');
INSERT INTO `user_log` VALUES (2311, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-17 13:39:41');
INSERT INTO `user_log` VALUES (2312, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"日照\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-17 13:39:42');
INSERT INTO `user_log` VALUES (2313, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-17 13:40:23');
INSERT INTO `user_log` VALUES (2314, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"日照\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-17 13:40:25');
INSERT INTO `user_log` VALUES (2315, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-17 13:40:28');
INSERT INTO `user_log` VALUES (2316, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-17 13:40:31');
INSERT INTO `user_log` VALUES (2317, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-17 13:41:08');
INSERT INTO `user_log` VALUES (2318, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-17 13:41:14');
INSERT INTO `user_log` VALUES (2319, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-17 13:41:31');
INSERT INTO `user_log` VALUES (2320, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-17 13:41:34');
INSERT INTO `user_log` VALUES (2321, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"11\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-17 13:41:37');
INSERT INTO `user_log` VALUES (2322, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"11\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-17 13:42:01');
INSERT INTO `user_log` VALUES (2323, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"11\"}', 'admin', '127.0.0.1', '山东省莱芜市', 46885, '2020-07-17 14:51:58');
INSERT INTO `user_log` VALUES (2324, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"11\"}', 'admin', '127.0.0.1', '山东省莱芜市', 49483, '2020-07-17 14:53:22');
INSERT INTO `user_log` VALUES (2325, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"11\"}', 'admin', '127.0.0.1', '山东省莱芜市', 47, '2020-07-17 14:54:11');
INSERT INTO `user_log` VALUES (2326, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-17 14:54:17');
INSERT INTO `user_log` VALUES (2327, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"11\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-17 14:54:18');
INSERT INTO `user_log` VALUES (2328, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"11\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-17 14:54:30');
INSERT INTO `user_log` VALUES (2329, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"11\"}', 'admin', '127.0.0.1', '山东省莱芜市', 3515, '2020-07-17 14:59:53');
INSERT INTO `user_log` VALUES (2330, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 32, '2020-07-17 15:00:01');
INSERT INTO `user_log` VALUES (2331, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"类别\"}', 'admin', '127.0.0.1', '山东省莱芜市', 47, '2020-07-17 15:00:03');
INSERT INTO `user_log` VALUES (2332, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"曹尼玛111111\"}', 'admin', '127.0.0.1', '山东省莱芜市', 24, '2020-07-17 15:00:10');
INSERT INTO `user_log` VALUES (2333, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 31, '2020-07-17 15:00:34');
INSERT INTO `user_log` VALUES (2334, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"测你吗呢111\"}', 'admin', '127.0.0.1', '山东省莱芜市', 24, '2020-07-17 15:00:36');
INSERT INTO `user_log` VALUES (2335, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 98, '2020-07-17 16:09:56');
INSERT INTO `user_log` VALUES (2336, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 62, '2020-07-17 16:20:03');
INSERT INTO `user_log` VALUES (2337, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 86, '2020-07-17 18:43:54');
INSERT INTO `user_log` VALUES (2338, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"曹尼玛111111\"}', 'admin', '127.0.0.1', '山东省莱芜市', 29, '2020-07-17 18:43:57');
INSERT INTO `user_log` VALUES (2339, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 27, '2020-07-17 18:44:21');
INSERT INTO `user_log` VALUES (2340, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"测你吗呢111\"}', 'admin', '127.0.0.1', '山东省莱芜市', 20, '2020-07-17 18:44:23');
INSERT INTO `user_log` VALUES (2341, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-17 18:44:26');
INSERT INTO `user_log` VALUES (2342, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"你\"}', 'admin', '127.0.0.1', '山东省莱芜市', 21, '2020-07-17 18:44:29');
INSERT INTO `user_log` VALUES (2343, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 52, '2020-07-17 18:44:30');
INSERT INTO `user_log` VALUES (2344, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 24, '2020-07-17 18:45:19');
INSERT INTO `user_log` VALUES (2345, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 24, '2020-07-17 18:48:41');
INSERT INTO `user_log` VALUES (2346, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 24, '2020-07-17 18:50:56');
INSERT INTO `user_log` VALUES (2347, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"这又是一个测试会议\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-17 18:51:44');
INSERT INTO `user_log` VALUES (2348, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 64, '2020-07-17 19:13:07');
INSERT INTO `user_log` VALUES (2349, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-17 19:13:29');
INSERT INTO `user_log` VALUES (2350, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-17 19:13:45');
INSERT INTO `user_log` VALUES (2351, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-17 19:14:06');
INSERT INTO `user_log` VALUES (2352, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 24, '2020-07-17 19:15:09');
INSERT INTO `user_log` VALUES (2353, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 73, '2020-07-17 19:17:48');
INSERT INTO `user_log` VALUES (2354, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 24, '2020-07-17 19:19:37');
INSERT INTO `user_log` VALUES (2355, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 20, '2020-07-17 19:22:02');
INSERT INTO `user_log` VALUES (2356, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"这又是一个测试会议\"}', 'admin', '127.0.0.1', '山东省莱芜市', 31, '2020-07-17 19:22:04');
INSERT INTO `user_log` VALUES (2357, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"=\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-17 19:22:07');
INSERT INTO `user_log` VALUES (2358, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-17 19:22:08');
INSERT INTO `user_log` VALUES (2359, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"曹尼玛111111\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-17 19:22:13');
INSERT INTO `user_log` VALUES (2360, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-17 19:22:56');
INSERT INTO `user_log` VALUES (2361, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"这又是一个测试会议\"}', 'admin', '127.0.0.1', '山东省莱芜市', 30, '2020-07-17 19:22:57');
INSERT INTO `user_log` VALUES (2362, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"这\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-17 19:23:00');
INSERT INTO `user_log` VALUES (2363, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-17 19:23:02');
INSERT INTO `user_log` VALUES (2364, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"曹尼玛111111\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-17 19:23:04');
INSERT INTO `user_log` VALUES (2365, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-17 19:23:07');
INSERT INTO `user_log` VALUES (2366, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-17 19:23:32');
INSERT INTO `user_log` VALUES (2367, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"这又是一个测试会议\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-17 19:23:34');
INSERT INTO `user_log` VALUES (2368, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-17 19:23:35');
INSERT INTO `user_log` VALUES (2369, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-17 19:24:41');
INSERT INTO `user_log` VALUES (2370, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-17 19:24:44');
INSERT INTO `user_log` VALUES (2371, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-17 19:25:10');
INSERT INTO `user_log` VALUES (2372, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-17 19:25:12');
INSERT INTO `user_log` VALUES (2373, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-17 19:25:35');
INSERT INTO `user_log` VALUES (2374, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-17 19:25:37');
INSERT INTO `user_log` VALUES (2375, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 61, '2020-07-17 19:30:46');
INSERT INTO `user_log` VALUES (2376, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-17 19:31:21');
INSERT INTO `user_log` VALUES (2377, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 28, '2020-07-17 19:32:54');
INSERT INTO `user_log` VALUES (2378, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-17 19:33:59');
INSERT INTO `user_log` VALUES (2379, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 131, '2020-07-17 19:43:01');
INSERT INTO `user_log` VALUES (2380, 2, '添加人员进入会议', 1, '/meeting/person', 'POST', '{\"mid\":\"65\",\"pids\":\"803\"}', 'admin', '127.0.0.1', '山东省莱芜市', 34, '2020-07-17 19:43:04');
INSERT INTO `user_log` VALUES (2381, 2, '添加人员进入会议', 1, '/meeting/person', 'POST', '{\"mid\":\"65\",\"pids\":\"804\"}', 'admin', '127.0.0.1', '山东省莱芜市', 27, '2020-07-17 19:43:32');
INSERT INTO `user_log` VALUES (2382, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 57, '2020-07-17 19:45:47');
INSERT INTO `user_log` VALUES (2383, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 94, '2020-07-17 19:48:38');
INSERT INTO `user_log` VALUES (2384, 2, '添加人员进入会议', 1, '/meeting/person', 'POST', '{\"mid\":\"65\",\"pids\":\"803\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-17 19:48:52');
INSERT INTO `user_log` VALUES (2385, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-17 19:49:05');
INSERT INTO `user_log` VALUES (2386, 2, '添加人员进入会议', 1, '/meeting/person', 'POST', '{\"mid\":\"65\",\"pids\":\"803\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-17 19:49:09');
INSERT INTO `user_log` VALUES (2387, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-17 19:50:50');
INSERT INTO `user_log` VALUES (2388, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-17 19:51:56');
INSERT INTO `user_log` VALUES (2389, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-17 19:52:11');
INSERT INTO `user_log` VALUES (2390, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"这又是一个测试会议\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-17 19:52:15');
INSERT INTO `user_log` VALUES (2391, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 21, '2020-07-17 20:08:10');
INSERT INTO `user_log` VALUES (2392, 2, '添加人员进入会议', 1, '/meeting/person', 'POST', '{\"mid\":\"65\",\"pids\":\"808\"}', 'admin', '127.0.0.1', '山东省莱芜市', 32, '2020-07-17 20:08:17');
INSERT INTO `user_log` VALUES (2393, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 164, '2020-07-17 21:15:05');
INSERT INTO `user_log` VALUES (2394, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 27, '2020-07-17 21:15:26');
INSERT INTO `user_log` VALUES (2395, 2, '将人员从会议里面移除', 1, '/meeting/person', 'DELETE', '{\"mid\":\"65\",\"ids\":\"805\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-17 21:15:28');
INSERT INTO `user_log` VALUES (2396, 2, '添加人员进入会议', 1, '/meeting/person', 'POST', '{\"mid\":\"65\",\"pids\":\"805\"}', 'admin', '127.0.0.1', '山东省莱芜市', 143, '2020-07-17 21:15:35');
INSERT INTO `user_log` VALUES (2397, 2, '将人员从会议里面移除', 1, '/meeting/person', 'DELETE', '{\"mid\":\"65\",\"ids\":\"805\"}', 'admin', '127.0.0.1', '山东省莱芜市', 44, '2020-07-17 21:15:46');
INSERT INTO `user_log` VALUES (2398, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 28, '2020-07-17 21:16:07');
INSERT INTO `user_log` VALUES (2399, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"这又是一个测试会议\"}', 'admin', '127.0.0.1', '山东省莱芜市', 64, '2020-07-17 21:18:59');
INSERT INTO `user_log` VALUES (2400, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 61, '2020-07-17 21:19:14');
INSERT INTO `user_log` VALUES (2401, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 38, '2020-07-17 21:19:18');
INSERT INTO `user_log` VALUES (2402, 2, '将人员从会议里面移除', 1, '/meeting/person', 'DELETE', '{\"mid\":\"65\",\"ids\":\"805\"}', 'admin', '127.0.0.1', '山东省莱芜市', 37, '2020-07-17 21:19:21');
INSERT INTO `user_log` VALUES (2403, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 38, '2020-07-17 21:19:31');
INSERT INTO `user_log` VALUES (2404, 2, '添加人员进入会议', 1, '/meeting/person', 'POST', '{\"mid\":\"65\",\"pids\":\"805\"}', 'admin', '127.0.0.1', '山东省莱芜市', 42, '2020-07-17 21:19:44');
INSERT INTO `user_log` VALUES (2405, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"这又是一个测试会议\"}', 'admin', '127.0.0.1', '山东省莱芜市', 25, '2020-07-17 21:19:51');
INSERT INTO `user_log` VALUES (2406, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 31, '2020-07-17 21:19:52');
INSERT INTO `user_log` VALUES (2407, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 41, '2020-07-17 21:19:55');
INSERT INTO `user_log` VALUES (2408, 2, '添加人员进入会议', 1, '/meeting/person', 'POST', '{\"mid\":\"88\",\"pids\":\"848\"}', 'admin', '127.0.0.1', '山东省莱芜市', 42, '2020-07-17 21:19:58');
INSERT INTO `user_log` VALUES (2409, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-17 21:21:09');
INSERT INTO `user_log` VALUES (2410, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 21, '2020-07-17 21:41:35');
INSERT INTO `user_log` VALUES (2411, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 20, '2020-07-17 21:42:31');
INSERT INTO `user_log` VALUES (2412, 2, '删除所选日志', 1, '/log/', 'DELETE', '{\"ids\":\"1146\"}', 'admin', '127.0.0.1', '山东省莱芜市', 32, '2020-07-17 23:34:34');
INSERT INTO `user_log` VALUES (2413, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-17 23:34:45');
INSERT INTO `user_log` VALUES (2414, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 2416, '2020-07-18 21:00:19');
INSERT INTO `user_log` VALUES (2415, 2, '添加TODO信息', 1, '/todos', 'POST', '{\"things\":\"今天是个好日子\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-18 21:00:44');
INSERT INTO `user_log` VALUES (2416, 2, '更新TODO信息', 1, '/todos/27', 'PUT', '{\"done\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-18 21:00:50');
INSERT INTO `user_log` VALUES (2417, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 102, '2020-07-18 23:24:19');
INSERT INTO `user_log` VALUES (2418, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-18 23:25:03');
INSERT INTO `user_log` VALUES (2419, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-18 23:25:36');
INSERT INTO `user_log` VALUES (2420, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-18 23:26:20');
INSERT INTO `user_log` VALUES (2421, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 54, '2020-07-18 23:41:12');
INSERT INTO `user_log` VALUES (2422, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-18 23:41:38');
INSERT INTO `user_log` VALUES (2423, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-18 23:41:47');
INSERT INTO `user_log` VALUES (2424, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-18 23:41:48');
INSERT INTO `user_log` VALUES (2425, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 22, '2020-07-18 23:42:30');
INSERT INTO `user_log` VALUES (2426, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 76, '2020-07-18 23:44:36');
INSERT INTO `user_log` VALUES (2427, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"这又是一个测试会议\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-18 23:44:37');
INSERT INTO `user_log` VALUES (2428, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-18 23:46:34');
INSERT INTO `user_log` VALUES (2429, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-18 23:47:31');
INSERT INTO `user_log` VALUES (2430, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 25, '2020-07-18 23:48:00');
INSERT INTO `user_log` VALUES (2431, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-18 23:49:46');
INSERT INTO `user_log` VALUES (2432, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-18 23:50:19');
INSERT INTO `user_log` VALUES (2433, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-18 23:53:06');
INSERT INTO `user_log` VALUES (2434, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 19, '2020-07-18 23:59:16');
INSERT INTO `user_log` VALUES (2435, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 58, '2020-07-19 00:15:24');
INSERT INTO `user_log` VALUES (2436, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-19 00:15:35');
INSERT INTO `user_log` VALUES (2437, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-19 00:15:37');
INSERT INTO `user_log` VALUES (2438, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-19 00:16:31');
INSERT INTO `user_log` VALUES (2439, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-19 00:16:34');
INSERT INTO `user_log` VALUES (2440, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-19 00:16:36');
INSERT INTO `user_log` VALUES (2441, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-19 00:16:43');
INSERT INTO `user_log` VALUES (2442, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"曹尼玛111111\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-19 00:16:45');
INSERT INTO `user_log` VALUES (2443, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"曹尼玛11111\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-19 00:16:49');
INSERT INTO `user_log` VALUES (2444, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-19 00:16:50');
INSERT INTO `user_log` VALUES (2445, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-19 00:17:09');
INSERT INTO `user_log` VALUES (2446, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"这又是一个测试会议\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-19 00:17:10');
INSERT INTO `user_log` VALUES (2447, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-19 00:17:22');
INSERT INTO `user_log` VALUES (2448, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"这又是一个测试会议\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-19 00:17:26');
INSERT INTO `user_log` VALUES (2449, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-19 00:17:28');
INSERT INTO `user_log` VALUES (2450, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-19 00:19:20');
INSERT INTO `user_log` VALUES (2451, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-19 00:19:23');
INSERT INTO `user_log` VALUES (2452, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 46, '2020-07-19 00:21:42');
INSERT INTO `user_log` VALUES (2453, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-19 00:21:44');
INSERT INTO `user_log` VALUES (2454, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"这又是一个测试会议\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-19 00:21:46');
INSERT INTO `user_log` VALUES (2455, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-19 00:21:48');
INSERT INTO `user_log` VALUES (2456, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-19 00:21:50');
INSERT INTO `user_log` VALUES (2457, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-19 00:23:14');
INSERT INTO `user_log` VALUES (2458, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"这又是一个测试会议\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-19 00:23:16');
INSERT INTO `user_log` VALUES (2459, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-19 00:23:17');
INSERT INTO `user_log` VALUES (2460, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-19 00:23:25');
INSERT INTO `user_log` VALUES (2461, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 20, '2020-07-19 00:25:14');
INSERT INTO `user_log` VALUES (2462, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 34, '2020-07-19 00:38:44');
INSERT INTO `user_log` VALUES (2463, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 52, '2020-07-19 00:44:28');
INSERT INTO `user_log` VALUES (2464, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-19 00:45:04');
INSERT INTO `user_log` VALUES (2465, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-19 00:45:31');
INSERT INTO `user_log` VALUES (2466, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-19 00:46:21');
INSERT INTO `user_log` VALUES (2467, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"65\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-19 00:46:23');
INSERT INTO `user_log` VALUES (2468, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-19 00:47:35');
INSERT INTO `user_log` VALUES (2469, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"65\"}', 'admin', '127.0.0.1', '山东省莱芜市', 6, '2020-07-19 00:47:36');
INSERT INTO `user_log` VALUES (2470, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"65\"}', 'admin', '127.0.0.1', '山东省莱芜市', 5, '2020-07-19 00:47:43');
INSERT INTO `user_log` VALUES (2471, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-19 00:50:12');
INSERT INTO `user_log` VALUES (2472, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"65\"}', 'admin', '127.0.0.1', '山东省莱芜市', 6, '2020-07-19 00:50:13');
INSERT INTO `user_log` VALUES (2473, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"这又是一个测试会议\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-19 00:50:23');
INSERT INTO `user_log` VALUES (2474, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-19 00:50:25');
INSERT INTO `user_log` VALUES (2475, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-19 00:50:27');
INSERT INTO `user_log` VALUES (2476, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"88\"}', 'admin', '127.0.0.1', '山东省莱芜市', 5, '2020-07-19 00:50:28');
INSERT INTO `user_log` VALUES (2477, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-19 00:51:25');
INSERT INTO `user_log` VALUES (2478, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"65\"}', 'admin', '127.0.0.1', '山东省莱芜市', 5, '2020-07-19 00:51:27');
INSERT INTO `user_log` VALUES (2479, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"这又是一个测试会议\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-19 00:51:32');
INSERT INTO `user_log` VALUES (2480, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-19 00:51:33');
INSERT INTO `user_log` VALUES (2481, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-19 00:51:35');
INSERT INTO `user_log` VALUES (2482, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"88\"}', 'admin', '127.0.0.1', '山东省莱芜市', 5, '2020-07-19 00:51:37');
INSERT INTO `user_log` VALUES (2483, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"88\"}', 'admin', '127.0.0.1', '山东省莱芜市', 37, '2020-07-19 00:53:54');
INSERT INTO `user_log` VALUES (2484, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-19 01:01:01');
INSERT INTO `user_log` VALUES (2485, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 51, '2020-07-19 01:16:52');
INSERT INTO `user_log` VALUES (2486, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 2027, '2020-07-19 01:23:39');
INSERT INTO `user_log` VALUES (2487, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-19 01:23:42');
INSERT INTO `user_log` VALUES (2488, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 78, '2020-07-19 01:27:37');
INSERT INTO `user_log` VALUES (2489, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-19 01:27:38');
INSERT INTO `user_log` VALUES (2490, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 25, '2020-07-19 01:28:11');
INSERT INTO `user_log` VALUES (2491, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-19 01:28:11');
INSERT INTO `user_log` VALUES (2492, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 51, '2020-07-19 01:30:44');
INSERT INTO `user_log` VALUES (2493, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-19 01:30:44');
INSERT INTO `user_log` VALUES (2494, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"65\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-19 01:30:50');
INSERT INTO `user_log` VALUES (2495, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"65\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-19 01:31:03');
INSERT INTO `user_log` VALUES (2496, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"65\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-19 01:31:08');
INSERT INTO `user_log` VALUES (2497, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-19 01:31:32');
INSERT INTO `user_log` VALUES (2498, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-19 01:31:32');
INSERT INTO `user_log` VALUES (2499, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"65\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-19 01:31:34');
INSERT INTO `user_log` VALUES (2500, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-19 01:32:15');
INSERT INTO `user_log` VALUES (2501, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-19 01:32:16');
INSERT INTO `user_log` VALUES (2502, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"65\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-19 01:32:17');
INSERT INTO `user_log` VALUES (2503, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 16, '2020-07-19 01:32:50');
INSERT INTO `user_log` VALUES (2504, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-19 01:32:51');
INSERT INTO `user_log` VALUES (2505, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"65\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-19 01:32:54');
INSERT INTO `user_log` VALUES (2506, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 41, '2020-07-19 01:35:37');
INSERT INTO `user_log` VALUES (2507, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-19 01:35:38');
INSERT INTO `user_log` VALUES (2508, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 45, '2020-07-19 01:38:54');
INSERT INTO `user_log` VALUES (2509, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-19 01:38:54');
INSERT INTO `user_log` VALUES (2510, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-19 01:40:05');
INSERT INTO `user_log` VALUES (2511, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 10, '2020-07-19 01:40:06');
INSERT INTO `user_log` VALUES (2512, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 26, '2020-07-19 01:40:23');
INSERT INTO `user_log` VALUES (2513, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-19 01:40:23');
INSERT INTO `user_log` VALUES (2514, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 14, '2020-07-19 01:40:35');
INSERT INTO `user_log` VALUES (2515, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-19 01:40:35');
INSERT INTO `user_log` VALUES (2516, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"65\"}', 'admin', '127.0.0.1', '山东省莱芜市', 6, '2020-07-19 01:40:45');
INSERT INTO `user_log` VALUES (2517, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"65\"}', 'admin', '127.0.0.1', '山东省莱芜市', 6, '2020-07-19 01:41:17');
INSERT INTO `user_log` VALUES (2518, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省莱芜市', 206, '2020-07-19 20:11:57');
INSERT INTO `user_log` VALUES (2519, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-19 20:12:03');
INSERT INTO `user_log` VALUES (2520, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-19 20:12:03');
INSERT INTO `user_log` VALUES (2521, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"65\"}', 'admin', '127.0.0.1', '山东省莱芜市', 41, '2020-07-19 20:55:34');
INSERT INTO `user_log` VALUES (2522, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 17, '2020-07-20 01:53:01');
INSERT INTO `user_log` VALUES (2523, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 55, '2020-07-20 01:55:28');
INSERT INTO `user_log` VALUES (2524, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-20 01:55:29');
INSERT INTO `user_log` VALUES (2525, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 18, '2020-07-20 01:56:31');
INSERT INTO `user_log` VALUES (2526, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-20 01:56:32');
INSERT INTO `user_log` VALUES (2527, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 41, '2020-07-20 02:04:52');
INSERT INTO `user_log` VALUES (2528, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-20 02:05:33');
INSERT INTO `user_log` VALUES (2529, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-20 02:05:37');
INSERT INTO `user_log` VALUES (2530, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"isCheck\":\"0\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-20 02:05:37');
INSERT INTO `user_log` VALUES (2531, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 12, '2020-07-20 11:49:33');
INSERT INTO `user_log` VALUES (2532, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-20 11:49:34');
INSERT INTO `user_log` VALUES (2533, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"isCheck\":\"0\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-20 11:49:39');
INSERT INTO `user_log` VALUES (2534, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"isCheck\":\"1\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-20 11:49:41');
INSERT INTO `user_log` VALUES (2535, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 47, '2020-07-20 11:52:32');
INSERT INTO `user_log` VALUES (2536, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 51, '2020-07-20 11:59:22');
INSERT INTO `user_log` VALUES (2537, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 13, '2020-07-20 12:00:26');
INSERT INTO `user_log` VALUES (2538, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 15, '2020-07-20 12:00:34');
INSERT INTO `user_log` VALUES (2539, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-20 12:00:34');
INSERT INTO `user_log` VALUES (2540, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-20 12:01:07');
INSERT INTO `user_log` VALUES (2541, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"isCheck\":\"1\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-20 12:01:10');
INSERT INTO `user_log` VALUES (2542, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"isCheck\":\"0\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-20 12:01:12');
INSERT INTO `user_log` VALUES (2543, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 8, '2020-07-20 12:01:14');
INSERT INTO `user_log` VALUES (2544, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"personName\":\"哥\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 9, '2020-07-20 12:01:21');
INSERT INTO `user_log` VALUES (2545, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '127.0.0.1', '山东省莱芜市', 11, '2020-07-20 12:01:40');
INSERT INTO `user_log` VALUES (2546, 2, '查询签到情况', 1, '/check/65', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-20 12:01:40');
INSERT INTO `user_log` VALUES (2547, 2, '查询签到比例', 1, '/check/', 'GET', '{\"mid\":\"65\"}', 'admin', '127.0.0.1', '山东省莱芜市', 7, '2020-07-20 12:01:41');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(11) NOT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `1`(`role_id`) USING BTREE,
  INDEX `2`(`user_id`) USING BTREE,
  CONSTRAINT `1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `2` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 2);
INSERT INTO `user_role` VALUES (2, 2, 2);

SET FOREIGN_KEY_CHECKS = 1;
