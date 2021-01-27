/*
 Navicat Premium Data Transfer

 Source Server         : meeting
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : 49.232.54.164:3306
 Source Schema         : meeting

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 01/09/2020 17:58:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP database IF EXISTS meeting;
create database meeting;
use meeting;

-- ----------------------------
-- Table structure for meeting
-- ----------------------------
DROP TABLE IF EXISTS `meeting`;
CREATE TABLE `meeting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会议id',
  `add_id` int(11) NULL DEFAULT NULL COMMENT '添加会议的人员姓名',
  `address_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会议地点的名称',
  `meeting_address` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会议地点',
  `meeting_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会议的名称',
  `start_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结束时间',
  `meeting_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `uuid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会议的随机键',
  `lng` double NULL DEFAULT NULL COMMENT '会议经度',
  `lat` double NULL DEFAULT NULL COMMENT '会议纬度',
  `information` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '会议简介信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会议列表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meeting
-- ----------------------------
INSERT INTO `meeting` VALUES (1, 2, '日照职业技术学院校友大厦', '山东省日照市东港区聊城路393号附近', '你是我的小苹果', '2020-08-13 12:00', '2020-08-21 00:00', '15762323410', 'd95c8df99da647f5a01af46dffb2a7b3', 119.538081, 35.45877, '');
INSERT INTO `meeting` VALUES (2, 2, '山东水利职业学院-西门', '山东省日照市东港区博文路山东水利职业学院', '水利会议', '2020-08-15 12:00', '2020-08-24 00:00', '15762323410', 'c411735134fc4c298855459bbb0fcb0b', 119.547328, 35.454833, '');
INSERT INTO `meeting` VALUES (3, 2, '北流孔子学院', '广西壮族自治区玉林市北流市城东一路0068号', '弟子规', '2020-08-15 12:00', '2020-08-13 00:00', '15762323415', '6521f9a8f3c44a7983474d862b4fee00', 110.353791899, 22.709485799, '飒飒');

-- ----------------------------
-- Table structure for meeting_persion
-- ----------------------------
DROP TABLE IF EXISTS `meeting_persion`;
CREATE TABLE `meeting_persion`  (
  `pid` int(20) NULL DEFAULT NULL COMMENT '人员id',
  `mid` int(20) NULL DEFAULT NULL COMMENT '会议id',
  `IsCheck` int(1) NULL DEFAULT 0 COMMENT '是否已经签到',
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `mid`(`mid`) USING BTREE,
  CONSTRAINT `meeting_persion_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `meeting_persion_ibfk_2` FOREIGN KEY (`mid`) REFERENCES `meeting` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会议与人员的关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meeting_persion
-- ----------------------------
INSERT INTO `meeting_persion` VALUES (8, 1, 0);
INSERT INTO `meeting_persion` VALUES (9, 1, 0);
INSERT INTO `meeting_persion` VALUES (10, 1, 0);
INSERT INTO `meeting_persion` VALUES (8, 2, 0);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '菜单的id',
  `path` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单路径',
  `component` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端的组件名称,layuout为根组件',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '这个名称用户被<keep-alive>使用（必须使用）',
  `meta_id` int(10) NULL DEFAULT NULL COMMENT '所对应的meta的ud',
  `parent` int(10) NULL DEFAULT 0 COMMENT '父组件的id,0为顶级的节点',
  `hidden` int(10) NULL DEFAULT 0 COMMENT '菜单设置是否隐藏,，如果设置0不会隐藏，1则会隐藏',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `去`(`meta_id`) USING BTREE,
  CONSTRAINT `去` FOREIGN KEY (`meta_id`) REFERENCES `meta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单' ROW_FORMAT = DYNAMIC;

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
INSERT INTO `menu` VALUES (22, 'vx', 'Layout', '微信小程序', 33, 0, 0);
INSERT INTO `menu` VALUES (23, 'set', 'log_set', '日志详情', 19, 35, 0);
INSERT INTO `menu` VALUES (26, 'edit/:id', 'edit', '会议编辑', 21, 17, 1);
INSERT INTO `menu` VALUES (27, 'user', 'Layout', '账号管理', 22, 0, 0);
INSERT INTO `menu` VALUES (28, 'list', 'user_list', '账号列表', 23, 27, 0);
INSERT INTO `menu` VALUES (29, 'add', 'user_add', '账号添加', 24, 27, 0);
INSERT INTO `menu` VALUES (30, 'edit/:id', 'user_edit', '账号编辑', 25, 27, 1);
INSERT INTO `menu` VALUES (31, 'role', 'Layout', '角色管理', 26, 0, 0);
INSERT INTO `menu` VALUES (32, 'list', 'role_list', '角色列表', 27, 31, 0);
INSERT INTO `menu` VALUES (33, 'edit/:id', 'role_edit', '角色修改', 28, 31, 1);
INSERT INTO `menu` VALUES (34, 'add', 'role_add', '角色添加', 29, 31, 0);
INSERT INTO `menu` VALUES (35, 'log', 'Layout', '日志管理', 18, 0, 0);
INSERT INTO `menu` VALUES (36, 'list', 'vx_list', '列表', 34, 22, 0);

-- ----------------------------
-- Table structure for meta
-- ----------------------------
DROP TABLE IF EXISTS `meta`;
CREATE TABLE `meta`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'meta的id',
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单的名称',
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单的图标',
  `breadcrumb` int(11) NULL DEFAULT 0 COMMENT '如果设置为false，则项目将隐藏在breadcrumb中（1为true，0为false）',
  `activeMenu` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '如果设置路径，侧栏将突出显示您设置的路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单所属于meta' ROW_FORMAT = DYNAMIC;

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
INSERT INTO `meta` VALUES (11, '人员查看', 'eye-open', 0, '');
INSERT INTO `meta` VALUES (13, '会议管理', 'meeting', 0, '');
INSERT INTO `meta` VALUES (14, '会议添加', 'add', 0, '');
INSERT INTO `meta` VALUES (15, '会议设置', 'setting', 0, '');
INSERT INTO `meta` VALUES (16, '会议报名', 'baoming', 0, '');
INSERT INTO `meta` VALUES (17, '签到管理', 'sign', 0, '');
INSERT INTO `meta` VALUES (18, '日志管理', 'logs', 0, '');
INSERT INTO `meta` VALUES (19, '日志详情', 'log', 0, '');
INSERT INTO `meta` VALUES (21, '会议编辑', 'avatar18', 0, '');
INSERT INTO `meta` VALUES (22, '账号管理', 'userType', 0, '');
INSERT INTO `meta` VALUES (23, '账号列表', 'user', 0, '');
INSERT INTO `meta` VALUES (24, '账号添加', 'useradd', 0, '');
INSERT INTO `meta` VALUES (25, '账号编辑', 'useredit', 0, '');
INSERT INTO `meta` VALUES (26, '角色管理', 'role', 0, '');
INSERT INTO `meta` VALUES (27, '角色列表', 'roleList', 0, '');
INSERT INTO `meta` VALUES (28, '角色修改', 'rolemanager', 0, '');
INSERT INTO `meta` VALUES (29, '角色添加', 'roleadd', 0, '');
INSERT INTO `meta` VALUES (33, '小程序用户', 'vset', 0, '');
INSERT INTO `meta` VALUES (34, '小程序列表', 'vset', 0, '');

-- ----------------------------
-- Table structure for persons
-- ----------------------------
DROP TABLE IF EXISTS `persons`;
CREATE TABLE `persons`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '人员id',
  `add_id` int(100) NULL DEFAULT NULL COMMENT '添加人员的用户id',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '人员的照片的url',
  `person_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '人员的姓名',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '人员的联系方式',
  `add_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '人员的添加时间',
  `uuid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '人员的uuid',
  `band_type` int(255) NULL DEFAULT NULL COMMENT '绑定类型，0为管理员添加，1为小程序用户自己添加',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '人员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of persons
-- ----------------------------
INSERT INTO `persons` VALUES (8, 2, 'https://faces-1259231187.cos.ap-beijing.myqcloud.com/76b04120ea6542ceaa8120d16705c825..jpg', '苍老板', '', '2020-08-14 16:07:30', '76b04120ea6542ceaa8120d16705c825', 0);
INSERT INTO `persons` VALUES (9, 2, 'https://faces-1259231187.cos.ap-beijing.myqcloud.com/fcd70374321a4b28b9d560c2cef080c2..jpg', '范水水', '', '2020-08-14 16:07:31', 'fcd70374321a4b28b9d560c2cef080c2', 0);
INSERT INTO `persons` VALUES (10, 2, 'https://faces-1259231187.cos.ap-beijing.myqcloud.com/1b6fe8662c52462b86381382c63545a2..jpg', 'anglebody', '', '2020-08-14 16:07:31', '1b6fe8662c52462b86381382c63545a2', 0);
INSERT INTO `persons` VALUES (18, 0, NULL, '吊我', '15762323410', '2020-08-20 16:29:50', '5a64ba81b4914169bb6296be1a056132', 1);
INSERT INTO `persons` VALUES (19, 2, 'https://faces-1259231187.cos.ap-beijing.myqcloud.com/4065a852d1274224899c353d2041edc4..jpg', '你好', '', '2020-08-20 16:31:39', '4065a852d1274224899c353d2041edc4', 0);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色的描述',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'ADMIN', '管理员');
INSERT INTO `role` VALUES (7, 'MANAGER', '管理员');
INSERT INTO `role` VALUES (8, 'EDIT', '系统员');

-- ----------------------------
-- Table structure for role_meta
-- ----------------------------
DROP TABLE IF EXISTS `role_meta`;
CREATE TABLE `role_meta`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色id',
  `meta_id` int(11) NULL DEFAULT NULL COMMENT 'meta的id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`, `meta_id`) USING BTREE,
  INDEX `meta`(`meta_id`) USING BTREE,
  CONSTRAINT `meta` FOREIGN KEY (`meta_id`) REFERENCES `meta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色与meta的对应表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_meta
-- ----------------------------
INSERT INTO `role_meta` VALUES (72, 1, 3);
INSERT INTO `role_meta` VALUES (46, 1, 4);
INSERT INTO `role_meta` VALUES (8, 1, 8);
INSERT INTO `role_meta` VALUES (9, 1, 9);
INSERT INTO `role_meta` VALUES (50, 1, 11);
INSERT INTO `role_meta` VALUES (52, 1, 13);
INSERT INTO `role_meta` VALUES (54, 1, 14);
INSERT INTO `role_meta` VALUES (56, 1, 15);
INSERT INTO `role_meta` VALUES (58, 1, 16);
INSERT INTO `role_meta` VALUES (60, 1, 17);
INSERT INTO `role_meta` VALUES (62, 1, 18);
INSERT INTO `role_meta` VALUES (64, 1, 19);
INSERT INTO `role_meta` VALUES (66, 1, 21);
INSERT INTO `role_meta` VALUES (28, 1, 22);
INSERT INTO `role_meta` VALUES (29, 1, 23);
INSERT INTO `role_meta` VALUES (30, 1, 24);
INSERT INTO `role_meta` VALUES (31, 1, 25);
INSERT INTO `role_meta` VALUES (32, 1, 26);
INSERT INTO `role_meta` VALUES (33, 1, 27);
INSERT INTO `role_meta` VALUES (34, 1, 28);
INSERT INTO `role_meta` VALUES (40, 1, 29);
INSERT INTO `role_meta` VALUES (68, 1, 33);
INSERT INTO `role_meta` VALUES (70, 1, 34);
INSERT INTO `role_meta` VALUES (73, 7, 3);
INSERT INTO `role_meta` VALUES (45, 7, 4);
INSERT INTO `role_meta` VALUES (51, 7, 11);
INSERT INTO `role_meta` VALUES (53, 7, 13);
INSERT INTO `role_meta` VALUES (55, 7, 14);
INSERT INTO `role_meta` VALUES (57, 7, 15);
INSERT INTO `role_meta` VALUES (59, 7, 16);
INSERT INTO `role_meta` VALUES (61, 7, 17);
INSERT INTO `role_meta` VALUES (63, 7, 18);
INSERT INTO `role_meta` VALUES (65, 7, 19);
INSERT INTO `role_meta` VALUES (67, 7, 21);
INSERT INTO `role_meta` VALUES (69, 7, 33);
INSERT INTO `role_meta` VALUES (71, 7, 34);
INSERT INTO `role_meta` VALUES (43, 8, 1);
INSERT INTO `role_meta` VALUES (44, 8, 2);
INSERT INTO `role_meta` VALUES (47, 8, 5);
INSERT INTO `role_meta` VALUES (49, 8, 6);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `address` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `lasttime` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上次登录时间',
  `isEnabled` int(1) NULL DEFAULT 0 COMMENT '是否可用 0为可用，1为不可用',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'https://q4.qlogo.cn/g?b=qq&nk=1793786487&s=140' COMMENT '头像的地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'user', '男', NULL, '$2a$10$9aiQrHMuSR8vsKvDqduyDOohgK4hKJPIOSMduCihevdgHBZhsfzVS', '山东省日照市', '2020-08-14 16:27:12', 0, '1313131dsads');
INSERT INTO `sys_user` VALUES (2, 'admin', NULL, NULL, '$2a$10$wNyib8SuwaBvzH706Jg.7ez33pxsjpYPtZVSFAFC9ywADxmhTd9oa', '山东省日照市', '2020-08-27 18:45:26', 0, 'https://vuejs.org/images/logo.png');
INSERT INTO `sys_user` VALUES (9, 'edit', '女', '15762323410', '$2a$10$RqEv6AlCHZ5KTe/MKM0EGOKUv97XCYG2XvathrAEgbtvt8vT811YG', '山东省日照市', '2020-08-14 15:19:58', 0, '33');
INSERT INTO `sys_user` VALUES (20, '小王八', '男', '15762323410', '$2a$10$QSOACVPRxrr1cTNRG.7fx.ACem1kmPy5g9idj3mhvUnfx3XBRILcu', NULL, NULL, 0, 'https://q4.qlogo.cn/g?b=qq&nk=1793786487&s=140');

-- ----------------------------
-- Table structure for todos
-- ----------------------------
DROP TABLE IF EXISTS `todos`;
CREATE TABLE `todos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'todo的id',
  `uid` int(11) NULL DEFAULT NULL COMMENT '添加人id',
  `things` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '需要完成的事情',
  `done` int(11) NULL DEFAULT 0 COMMENT '是否完成，0为未完成，1为完成',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'todo列表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of todos
-- ----------------------------
INSERT INTO `todos` VALUES (25, 2, '大三', 1);
INSERT INTO `todos` VALUES (26, 2, '三大', 1);
INSERT INTO `todos` VALUES (30, 2, '你好', 1);
INSERT INTO `todos` VALUES (31, 2, '天呐 这也太棒了', 1);

-- ----------------------------
-- Table structure for user_log
-- ----------------------------
DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `addid` int(11) NULL DEFAULT NULL COMMENT '日志的所属用户id',
  `name` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户操作',
  `type` int(11) NULL DEFAULT NULL COMMENT '日志类型',
  `url` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求url',
  `requestType` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求类型',
  `requestParam` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求参数',
  `user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求ip',
  `ipInfo` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip所属地点',
  `time` int(11) NULL DEFAULT NULL COMMENT '处理该请求的时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '改请求的创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`addid`) USING BTREE,
  CONSTRAINT `uid` FOREIGN KEY (`addid`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3639 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户日志' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_log
-- ----------------------------
INSERT INTO `user_log` VALUES (3495, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '120.224.235.196', '山东省日照市', 30, '2020-08-14 15:58:49');
INSERT INTO `user_log` VALUES (3496, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '120.224.235.196', '山东省日照市', 455, '2020-08-14 16:05:58');
INSERT INTO `user_log` VALUES (3497, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '120.224.235.196', '山东省日照市', 477, '2020-08-14 16:05:58');
INSERT INTO `user_log` VALUES (3498, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '120.224.235.196', '山东省日照市', 246, '2020-08-14 16:05:59');
INSERT INTO `user_log` VALUES (3499, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '120.224.235.196', '山东省日照市', 282, '2020-08-14 16:05:59');
INSERT INTO `user_log` VALUES (3500, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '120.224.235.196', '山东省日照市', 255, '2020-08-14 16:05:59');
INSERT INTO `user_log` VALUES (3501, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '120.224.235.196', '山东省日照市', 299, '2020-08-14 16:06:00');
INSERT INTO `user_log` VALUES (3502, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '120.224.235.196', '山东省日照市', 863, '2020-08-14 16:07:30');
INSERT INTO `user_log` VALUES (3503, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '120.224.235.196', '山东省日照市', 835, '2020-08-14 16:07:30');
INSERT INTO `user_log` VALUES (3504, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '120.224.235.196', '山东省日照市', 634, '2020-08-14 16:07:31');
INSERT INTO `user_log` VALUES (3505, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '120.224.235.196', '山东省日照市', 854, '2020-08-14 16:07:31');
INSERT INTO `user_log` VALUES (3506, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '120.224.235.196', '山东省日照市', 692, '2020-08-14 16:07:31');
INSERT INTO `user_log` VALUES (3507, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '120.224.235.196', '山东省日照市', 830, '2020-08-14 16:07:32');
INSERT INTO `user_log` VALUES (3508, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '120.224.235.196', '山东省日照市', 25, '2020-08-14 16:07:49');
INSERT INTO `user_log` VALUES (3509, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '120.224.235.196', '山东省日照市', 74, '2020-08-14 16:08:21');
INSERT INTO `user_log` VALUES (3510, 2, '添加会议', 1, '/meeting', 'POST', '{\"meetingAddress\":\"山东省日照市东港区聊城路393号附近\",\"meetingName\":\"你是我的小苹果\",\"lng\":\"119.538081\",\"addressName\":\"日照职业技术学院校友大厦\",\"startTime\":\"2020-08-13 12:00\",\"information\":\"\",\"endTime\":\"2020-08-21 00:00\",\"meetingPhone\":\"15762323410\",\"lat\":\"35.45877\"}', 'admin', '120.224.235.196', '山东省日照市', 69, '2020-08-14 16:09:06');
INSERT INTO `user_log` VALUES (3511, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '120.224.235.196', '山东省日照市', 25, '2020-08-14 16:09:08');
INSERT INTO `user_log` VALUES (3512, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '120.224.235.196', '山东省日照市', 37, '2020-08-14 16:09:14');
INSERT INTO `user_log` VALUES (3513, 2, '添加人员进入会议', 1, '/meeting/person', 'POST', '{\"mid\":\"1\",\"pids\":\"7\"}', 'admin', '120.224.235.196', '山东省日照市', 128, '2020-08-14 16:09:19');
INSERT INTO `user_log` VALUES (3514, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '120.224.235.196', '山东省日照市', 78, '2020-08-14 16:09:23');
INSERT INTO `user_log` VALUES (3515, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '120.224.235.196', '山东省日照市', 24, '2020-08-14 16:09:28');
INSERT INTO `user_log` VALUES (3516, 2, '查询签到情况', 1, '/check/1', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '120.224.235.196', '山东省日照市', 43, '2020-08-14 16:09:28');
INSERT INTO `user_log` VALUES (3517, 2, '查询小程序人员', 1, '/vx', 'GET', '{}', 'admin', '120.224.235.196', '山东省日照市', 34, '2020-08-14 16:09:32');
INSERT INTO `user_log` VALUES (3518, 2, '查看所有用户', 1, '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '120.224.235.196', '山东省日照市', 26, '2020-08-14 16:09:40');
INSERT INTO `user_log` VALUES (3519, 2, '查询角色', 1, '/role/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '120.224.235.196', '山东省日照市', 56, '2020-08-14 16:09:44');
INSERT INTO `user_log` VALUES (3520, 2, '查询小程序人员', 1, '/vx', 'GET', '{}', 'admin', '120.224.235.196', '山东省日照市', 8, '2020-08-14 16:09:55');
INSERT INTO `user_log` VALUES (3521, 2, '查询小程序人员', 1, '/vx', 'GET', '{}', 'admin', '120.224.235.196', '山东省日照市', 17, '2020-08-14 16:13:32');
INSERT INTO `user_log` VALUES (3522, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '120.224.235.196', '山东省日照市', 42, '2020-08-14 16:13:39');
INSERT INTO `user_log` VALUES (3523, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '120.224.235.196', '山东省日照市', 3193, '2020-08-14 16:26:20');
INSERT INTO `user_log` VALUES (3524, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '120.224.235.196', '山东省日照市', 194, '2020-08-14 16:26:33');
INSERT INTO `user_log` VALUES (3525, 2, '更新TODO信息', 1, '/todos/31', 'PUT', '{\"done\":\"0\"}', 'admin', '120.224.235.196', '山东省日照市', 38, '2020-08-14 16:26:38');
INSERT INTO `user_log` VALUES (3526, 2, '查询小程序人员', 1, '/vx', 'GET', '{}', 'admin', '120.224.235.196', '山东省日照市', 69, '2020-08-14 16:26:47');
INSERT INTO `user_log` VALUES (3527, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '120.224.235.196', '山东省日照市', 108, '2020-08-14 16:26:51');
INSERT INTO `user_log` VALUES (3528, 2, '查询角色', 1, '/role/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '120.224.235.196', '山东省日照市', 55, '2020-08-14 16:26:58');
INSERT INTO `user_log` VALUES (3529, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"user\"}', '登陆', '120.224.235.196', '山东省日照市', 148, '2020-08-14 16:27:12');
INSERT INTO `user_log` VALUES (3530, 1, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'user', '120.224.235.196', '山东省日照市', 27, '2020-08-14 16:27:16');
INSERT INTO `user_log` VALUES (3531, 1, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'user', '120.224.235.196', '山东省日照市', 66, '2020-08-14 16:27:20');
INSERT INTO `user_log` VALUES (3532, 1, '查询小程序人员', 1, '/vx', 'GET', '{}', 'user', '120.224.235.196', '山东省日照市', 23, '2020-08-14 16:27:27');
INSERT INTO `user_log` VALUES (3533, 1, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'user', '120.224.235.196', '山东省日照市', 12, '2020-08-14 16:27:30');
INSERT INTO `user_log` VALUES (3534, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '221.2.52.247', '山东省日照市', 142, '2020-08-15 19:03:45');
INSERT INTO `user_log` VALUES (3535, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '112.250.191.111', '山东省日照市', 210, '2020-08-16 11:42:44');
INSERT INTO `user_log` VALUES (3536, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 38, '2020-08-16 11:43:02');
INSERT INTO `user_log` VALUES (3537, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"13\"}', 'admin', '112.250.191.111', '山东省日照市', 1218, '2020-08-16 11:43:07');
INSERT INTO `user_log` VALUES (3538, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 25, '2020-08-16 11:43:26');
INSERT INTO `user_log` VALUES (3539, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"13\"}', 'admin', '112.250.191.111', '山东省日照市', 178, '2020-08-16 11:43:39');
INSERT INTO `user_log` VALUES (3540, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 12, '2020-08-16 11:43:54');
INSERT INTO `user_log` VALUES (3541, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '112.250.191.111', '山东省日照市', 130, '2020-08-16 11:46:40');
INSERT INTO `user_log` VALUES (3542, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 25, '2020-08-16 11:46:45');
INSERT INTO `user_log` VALUES (3543, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"11\"}', 'admin', '112.250.191.111', '山东省日照市', 226, '2020-08-16 11:46:50');
INSERT INTO `user_log` VALUES (3544, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 18, '2020-08-16 11:46:50');
INSERT INTO `user_log` VALUES (3545, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '127.0.0.1', '山东省日照市', 3985, '2020-08-16 11:48:52');
INSERT INTO `user_log` VALUES (3546, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省日照市', 128, '2020-08-16 11:49:05');
INSERT INTO `user_log` VALUES (3547, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"13\"}', 'admin', '127.0.0.1', '山东省日照市', 58659, '2020-08-16 11:50:10');
INSERT INTO `user_log` VALUES (3548, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省日照市', 81, '2020-08-16 11:51:24');
INSERT INTO `user_log` VALUES (3549, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"7\"}', 'admin', '127.0.0.1', '山东省日照市', 368, '2020-08-16 11:51:27');
INSERT INTO `user_log` VALUES (3550, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省日照市', 83, '2020-08-16 11:51:27');
INSERT INTO `user_log` VALUES (3551, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"13\"}', 'admin', '127.0.0.1', '山东省日照市', 277, '2020-08-16 11:51:34');
INSERT INTO `user_log` VALUES (3552, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省日照市', 59, '2020-08-16 11:53:05');
INSERT INTO `user_log` VALUES (3553, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"13\"}', 'admin', '127.0.0.1', '山东省日照市', 253, '2020-08-16 11:53:08');
INSERT INTO `user_log` VALUES (3554, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省日照市', 72, '2020-08-16 11:59:50');
INSERT INTO `user_log` VALUES (3555, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '127.0.0.1', '山东省日照市', 55, '2020-08-16 12:00:09');
INSERT INTO `user_log` VALUES (3556, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '112.250.191.111', '山东省日照市', 3144, '2020-08-16 12:16:39');
INSERT INTO `user_log` VALUES (3557, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 54, '2020-08-16 12:18:11');
INSERT INTO `user_log` VALUES (3558, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"15\"}', 'admin', '112.250.191.111', '山东省日照市', 248, '2020-08-16 12:18:36');
INSERT INTO `user_log` VALUES (3559, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 22, '2020-08-16 12:18:37');
INSERT INTO `user_log` VALUES (3560, 2, '添加会议', 1, '/meeting', 'POST', '{\"meetingAddress\":\"山东省日照市东港区博文路山东水利职业学院\",\"meetingName\":\"水利会议\",\"lng\":\"119.547328\",\"addressName\":\"山东水利职业学院-西门\",\"startTime\":\"2020-08-15 12:00\",\"information\":\"\",\"endTime\":\"2020-08-24 00:00\",\"meetingPhone\":\"15762323410\",\"lat\":\"35.454833\"}', 'admin', '112.250.191.111', '山东省日照市', 40, '2020-08-16 12:38:29');
INSERT INTO `user_log` VALUES (3561, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 61, '2020-08-16 12:38:31');
INSERT INTO `user_log` VALUES (3562, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '112.250.191.111', '山东省日照市', 32, '2020-08-16 12:38:37');
INSERT INTO `user_log` VALUES (3563, 2, '添加人员进入会议', 1, '/meeting/person', 'POST', '{\"mid\":\"2\",\"pids\":\"17\"}', 'admin', '112.250.191.111', '山东省日照市', 45, '2020-08-16 12:38:39');
INSERT INTO `user_log` VALUES (3564, 2, '添加人员进入会议', 1, '/meeting/person', 'POST', '{\"mid\":\"2\",\"pids\":\"8\"}', 'admin', '112.250.191.111', '山东省日照市', 55, '2020-08-16 12:38:41');
INSERT INTO `user_log` VALUES (3565, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '112.250.191.111', '山东省日照市', 23, '2020-08-16 12:38:47');
INSERT INTO `user_log` VALUES (3566, 2, '查询签到情况', 1, '/check/2', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 57, '2020-08-16 12:38:47');
INSERT INTO `user_log` VALUES (3567, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '112.250.191.111', '山东省日照市', 75, '2020-08-16 12:39:20');
INSERT INTO `user_log` VALUES (3568, 2, '查询签到情况', 1, '/check/2', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 33, '2020-08-16 12:39:21');
INSERT INTO `user_log` VALUES (3569, 2, '查询签到情况', 1, '/check/2', 'GET', '{\"isCheck\":\"1\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 37, '2020-08-16 12:39:31');
INSERT INTO `user_log` VALUES (3570, 2, '修改签到状态', 1, '/check/0/2', 'PUT', '{\"ids\":\"17\"}', 'admin', '112.250.191.111', '山东省日照市', 39, '2020-08-16 12:40:21');
INSERT INTO `user_log` VALUES (3571, 2, '查询签到情况', 1, '/check/2', 'GET', '{\"isCheck\":\"1\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 21, '2020-08-16 12:40:21');
INSERT INTO `user_log` VALUES (3572, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '112.250.191.111', '山东省日照市', 42, '2020-08-16 12:40:27');
INSERT INTO `user_log` VALUES (3573, 2, '查询签到情况', 1, '/check/2', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 33, '2020-08-16 12:40:28');
INSERT INTO `user_log` VALUES (3574, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 38, '2020-08-16 12:51:48');
INSERT INTO `user_log` VALUES (3575, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"119.547328\",\"persionNumber\":\"2\",\"meetingPhone\":\"15762323410\",\"uuid\":\"c411735134fc4c298855459bbb0fcb0b\",\"meetingAddress\":\"山东省日照市东港区博文路山东水利职业学院\",\"isCheck\":\"\",\"meetingName\":\"水利会议\",\"addId\":\"2\",\"addressName\":\"山东水利职业学院-西门\",\"startTime\":\"2020-08-17 12:00\",\"information\":\"\",\"id\":\"2\",\"endTime\":\"2020-08-24 00:00\",\"value\":\"水利会议\",\"lat\":\"35.454833\"}', 'admin', '112.250.191.111', '山东省日照市', 46, '2020-08-16 12:52:00');
INSERT INTO `user_log` VALUES (3576, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 30, '2020-08-16 12:52:01');
INSERT INTO `user_log` VALUES (3577, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"119.547328\",\"persionNumber\":\"2\",\"meetingPhone\":\"15762323410\",\"uuid\":\"c411735134fc4c298855459bbb0fcb0b\",\"meetingAddress\":\"山东省日照市东港区博文路山东水利职业学院\",\"isCheck\":\"\",\"meetingName\":\"水利会议\",\"addId\":\"2\",\"addressName\":\"山东水利职业学院-西门\",\"startTime\":\"2020-08-14 12:00\",\"information\":\"\",\"id\":\"2\",\"endTime\":\"2020-08-15 00:00\",\"value\":\"水利会议\",\"lat\":\"35.454833\"}', 'admin', '112.250.191.111', '山东省日照市', 26, '2020-08-16 12:53:19');
INSERT INTO `user_log` VALUES (3578, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 21, '2020-08-16 12:53:19');
INSERT INTO `user_log` VALUES (3579, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"119.547328\",\"persionNumber\":\"2\",\"meetingPhone\":\"15762323410\",\"uuid\":\"c411735134fc4c298855459bbb0fcb0b\",\"meetingAddress\":\"山东省日照市东港区博文路山东水利职业学院\",\"isCheck\":\"\",\"meetingName\":\"水利会议\",\"addId\":\"2\",\"addressName\":\"山东水利职业学院-西门\",\"startTime\":\"2020-08-17 12:00\",\"information\":\"\",\"id\":\"2\",\"endTime\":\"2020-08-18 00:00\",\"value\":\"水利会议\",\"lat\":\"35.454833\"}', 'admin', '112.250.191.111', '山东省日照市', 35, '2020-08-16 12:58:51');
INSERT INTO `user_log` VALUES (3580, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 20, '2020-08-16 12:58:52');
INSERT INTO `user_log` VALUES (3581, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"119.547328\",\"persionNumber\":\"2\",\"meetingPhone\":\"15762323410\",\"uuid\":\"c411735134fc4c298855459bbb0fcb0b\",\"meetingAddress\":\"山东省日照市东港区博文路山东水利职业学院\",\"isCheck\":\"\",\"meetingName\":\"水利会议\",\"addId\":\"2\",\"addressName\":\"山东水利职业学院-西门\",\"startTime\":\"2020-08-15 12:00\",\"information\":\"\",\"id\":\"2\",\"endTime\":\"2020-08-18 00:00\",\"value\":\"水利会议\",\"lat\":\"35.454833\"}', 'admin', '112.250.191.111', '山东省日照市', 31, '2020-08-16 12:59:13');
INSERT INTO `user_log` VALUES (3582, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 15, '2020-08-16 12:59:13');
INSERT INTO `user_log` VALUES (3583, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '221.2.52.247', '山东省日照市', 18, '2020-08-16 16:06:34');
INSERT INTO `user_log` VALUES (3584, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"119.547328\",\"persionNumber\":\"2\",\"meetingPhone\":\"15762323410\",\"uuid\":\"c411735134fc4c298855459bbb0fcb0b\",\"meetingAddress\":\"山东省日照市东港区博文路山东水利职业学院\",\"isCheck\":\"\",\"meetingName\":\"水利会议\",\"addId\":\"2\",\"addressName\":\"山东水利职业学院-西门\",\"startTime\":\"2020-08-14 12:00\",\"information\":\"\",\"id\":\"2\",\"endTime\":\"2020-08-15 00:00\",\"value\":\"水利会议\",\"lat\":\"35.454833\"}', 'admin', '221.2.52.247', '山东省日照市', 20, '2020-08-16 16:06:46');
INSERT INTO `user_log` VALUES (3585, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '221.2.52.247', '山东省日照市', 18, '2020-08-16 16:06:47');
INSERT INTO `user_log` VALUES (3586, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"119.547328\",\"persionNumber\":\"2\",\"meetingPhone\":\"15762323410\",\"uuid\":\"c411735134fc4c298855459bbb0fcb0b\",\"meetingAddress\":\"山东省日照市东港区博文路山东水利职业学院\",\"isCheck\":\"\",\"meetingName\":\"水利会议\",\"addId\":\"2\",\"addressName\":\"山东水利职业学院-西门\",\"startTime\":\"2020-08-18 12:00\",\"information\":\"\",\"id\":\"2\",\"endTime\":\"2020-08-25 00:00\",\"value\":\"水利会议\",\"lat\":\"35.454833\"}', 'admin', '221.2.52.247', '山东省日照市', 15, '2020-08-16 16:07:57');
INSERT INTO `user_log` VALUES (3587, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '221.2.52.247', '山东省日照市', 77, '2020-08-16 16:07:57');
INSERT INTO `user_log` VALUES (3588, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"119.547328\",\"persionNumber\":\"2\",\"meetingPhone\":\"15762323410\",\"uuid\":\"c411735134fc4c298855459bbb0fcb0b\",\"meetingAddress\":\"山东省日照市东港区博文路山东水利职业学院\",\"isCheck\":\"\",\"meetingName\":\"水利会议\",\"addId\":\"2\",\"addressName\":\"山东水利职业学院-西门\",\"startTime\":\"2020-08-14 12:00\",\"information\":\"\",\"id\":\"2\",\"endTime\":\"2020-08-15 00:00\",\"value\":\"水利会议\",\"lat\":\"35.454833\"}', 'admin', '221.2.52.247', '山东省日照市', 19, '2020-08-16 16:11:49');
INSERT INTO `user_log` VALUES (3589, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '221.2.52.247', '山东省日照市', 10, '2020-08-16 16:11:50');
INSERT INTO `user_log` VALUES (3590, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"119.547328\",\"persionNumber\":\"2\",\"meetingPhone\":\"15762323410\",\"uuid\":\"c411735134fc4c298855459bbb0fcb0b\",\"meetingAddress\":\"山东省日照市东港区博文路山东水利职业学院\",\"isCheck\":\"\",\"meetingName\":\"水利会议\",\"addId\":\"2\",\"addressName\":\"山东水利职业学院-西门\",\"startTime\":\"2020-08-15 12:00\",\"information\":\"\",\"id\":\"2\",\"endTime\":\"2020-08-24 00:00\",\"value\":\"水利会议\",\"lat\":\"35.454833\"}', 'admin', '221.2.52.247', '山东省日照市', 33, '2020-08-16 16:12:17');
INSERT INTO `user_log` VALUES (3591, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '221.2.52.247', '山东省日照市', 23, '2020-08-16 16:12:17');
INSERT INTO `user_log` VALUES (3592, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"119.547328\",\"persionNumber\":\"2\",\"meetingPhone\":\"15762323410\",\"uuid\":\"c411735134fc4c298855459bbb0fcb0b\",\"meetingAddress\":\"山东省日照市东港区博文路山东水利职业学院\",\"isCheck\":\"\",\"meetingName\":\"水利会议\",\"addId\":\"2\",\"addressName\":\"山东水利职业学院-西门\",\"startTime\":\"2020-08-14 12:00\",\"information\":\"\",\"id\":\"2\",\"endTime\":\"2020-08-15 00:00\",\"value\":\"水利会议\",\"lat\":\"35.454833\"}', 'admin', '221.2.52.247', '山东省日照市', 28, '2020-08-16 16:21:30');
INSERT INTO `user_log` VALUES (3593, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '221.2.52.247', '山东省日照市', 25, '2020-08-16 16:21:31');
INSERT INTO `user_log` VALUES (3594, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"119.547328\",\"persionNumber\":\"2\",\"meetingPhone\":\"15762323410\",\"uuid\":\"c411735134fc4c298855459bbb0fcb0b\",\"meetingAddress\":\"山东省日照市东港区博文路山东水利职业学院\",\"isCheck\":\"\",\"meetingName\":\"水利会议\",\"addId\":\"2\",\"addressName\":\"山东水利职业学院-西门\",\"startTime\":\"2020-08-17 12:00\",\"information\":\"\",\"id\":\"2\",\"endTime\":\"2020-08-24 00:00\",\"value\":\"水利会议\",\"lat\":\"35.454833\"}', 'admin', '221.2.52.247', '山东省日照市', 17, '2020-08-16 16:21:50');
INSERT INTO `user_log` VALUES (3595, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '221.2.52.247', '山东省日照市', 12, '2020-08-16 16:21:51');
INSERT INTO `user_log` VALUES (3596, 2, '修改会议', 1, '/meeting', 'PUT', '{\"lng\":\"119.547328\",\"persionNumber\":\"2\",\"meetingPhone\":\"15762323410\",\"uuid\":\"c411735134fc4c298855459bbb0fcb0b\",\"meetingAddress\":\"山东省日照市东港区博文路山东水利职业学院\",\"isCheck\":\"\",\"meetingName\":\"水利会议\",\"addId\":\"2\",\"addressName\":\"山东水利职业学院-西门\",\"startTime\":\"2020-08-15 12:00\",\"information\":\"\",\"id\":\"2\",\"endTime\":\"2020-08-24 00:00\",\"value\":\"水利会议\",\"lat\":\"35.454833\"}', 'admin', '221.2.52.247', '山东省日照市', 26, '2020-08-16 16:24:03');
INSERT INTO `user_log` VALUES (3597, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '221.2.52.247', '山东省日照市', 32, '2020-08-16 16:24:04');
INSERT INTO `user_log` VALUES (3598, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 16, '2020-08-16 21:30:41');
INSERT INTO `user_log` VALUES (3599, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '112.250.191.111', '山东省日照市', 28, '2020-08-16 21:30:51');
INSERT INTO `user_log` VALUES (3600, 2, '查询签到情况', 1, '/check/2', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 9, '2020-08-16 21:30:52');
INSERT INTO `user_log` VALUES (3601, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '112.250.191.111', '山东省日照市', 120, '2020-08-16 21:49:35');
INSERT INTO `user_log` VALUES (3602, 2, '查看所有用户', 1, '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 34, '2020-08-16 22:10:18');
INSERT INTO `user_log` VALUES (3603, 2, '查看所有用户', 1, '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 55, '2020-08-16 22:10:24');
INSERT INTO `user_log` VALUES (3604, 2, '查询角色', 1, '/role/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 43, '2020-08-16 22:10:54');
INSERT INTO `user_log` VALUES (3605, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '112.250.191.111', '山东省日照市', 118, '2020-08-16 22:19:35');
INSERT INTO `user_log` VALUES (3606, 2, '更新TODO信息', 1, '/todos/31', 'PUT', '{\"done\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 60, '2020-08-16 22:59:21');
INSERT INTO `user_log` VALUES (3607, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 14, '2020-08-16 23:30:27');
INSERT INTO `user_log` VALUES (3608, 2, '人员库删除人员', 1, '/person/', 'DELETE', '{\"ids\":\"17\"}', 'admin', '112.250.191.111', '山东省日照市', 316, '2020-08-16 23:30:31');
INSERT INTO `user_log` VALUES (3609, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '112.250.191.111', '山东省日照市', 33, '2020-08-16 23:30:32');
INSERT INTO `user_log` VALUES (3610, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '123.129.161.23', '山东省日照市', 104, '2020-08-18 01:56:04');
INSERT INTO `user_log` VALUES (3611, 2, '添加会议', 1, '/meeting', 'POST', '{\"meetingAddress\":\"广西壮族自治区玉林市北流市城东一路0068号\",\"meetingName\":\"弟子规\",\"lng\":\"110.353791899\",\"addressName\":\"北流孔子学院\",\"startTime\":\"2020-08-15 12:00\",\"information\":\"飒飒\",\"endTime\":\"2020-08-13 00:00\",\"meetingPhone\":\"15762323415\",\"lat\":\"22.709485799\"}', 'admin', '123.129.161.23', '山东省日照市', 30, '2020-08-18 02:14:46');
INSERT INTO `user_log` VALUES (3612, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '123.129.161.23', '山东省日照市', 23, '2020-08-18 02:14:48');
INSERT INTO `user_log` VALUES (3613, 2, '查询小程序人员', 1, '/vx', 'GET', '{}', 'admin', '123.129.161.23', '山东省日照市', 14, '2020-08-18 02:15:47');
INSERT INTO `user_log` VALUES (3614, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '123.129.161.23', '山东省日照市', 17, '2020-08-18 02:16:30');
INSERT INTO `user_log` VALUES (3615, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '123.129.161.23', '山东省日照市', 13, '2020-08-18 02:16:35');
INSERT INTO `user_log` VALUES (3616, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"\"}', 'admin', '123.129.161.23', '山东省日照市', 22, '2020-08-18 02:16:41');
INSERT INTO `user_log` VALUES (3617, 2, '查询签到情况', 1, '/check/1', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '123.129.161.23', '山东省日照市', 12, '2020-08-18 02:16:43');
INSERT INTO `user_log` VALUES (3618, 2, '查询会议', 1, '/meeting/', 'GET', '{\"meetingName\":\"你是我的小苹果\"}', 'admin', '123.129.161.23', '山东省日照市', 16, '2020-08-18 02:16:44');
INSERT INTO `user_log` VALUES (3619, 2, '查询签到情况', 1, '/check/3', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '123.129.161.23', '山东省日照市', 13, '2020-08-18 02:16:44');
INSERT INTO `user_log` VALUES (3620, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '119.183.120.171', '山东省日照市', 246, '2020-08-18 22:31:23');
INSERT INTO `user_log` VALUES (3621, 2, '查询角色', 1, '/role/', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '119.183.120.171', '山东省日照市', 15, '2020-08-18 22:31:26');
INSERT INTO `user_log` VALUES (3622, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '221.2.52.247', '山东省日照市', 140, '2020-08-20 16:29:17');
INSERT INTO `user_log` VALUES (3623, 2, '批量上传人员', 1, '/upload/person', 'POST', '{}', 'admin', '221.2.52.247', '山东省日照市', 925, '2020-08-20 16:31:39');
INSERT INTO `user_log` VALUES (3624, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '221.2.52.247', '山东省日照市', 9, '2020-08-20 16:32:30');
INSERT INTO `user_log` VALUES (3625, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '117.136.95.105', '山东省临沂市', 205, '2020-08-26 12:16:30');
INSERT INTO `user_log` VALUES (3626, 2, '查看人员信息', 1, '/person/', 'GET', '{\"limit\":\"10\",\"page\":\"1\"}', 'admin', '117.136.95.105', '山东省临沂市', 13, '2020-08-26 12:16:57');
INSERT INTO `user_log` VALUES (3627, NULL, '用户登录', 1, '/login', 'POST', '{\"password\":\"密码不可见\",\"username\":\"admin\"}', '登陆', '221.2.52.247', '山东省日照市', 130, '2020-08-27 18:45:26');
INSERT INTO `user_log` VALUES (3628, 2, '更新TODO信息', 1, '/todos/31', 'PUT', '{\"done\":\"0\"}', 'admin', '221.2.52.247', '山东省日照市', 17, '2020-08-27 18:45:32');
INSERT INTO `user_log` VALUES (3629, 2, '更新TODO信息', 1, '/todos/31', 'PUT', '{\"done\":\"1\"}', 'admin', '221.2.52.247', '山东省日照市', 14, '2020-08-27 18:45:33');
INSERT INTO `user_log` VALUES (3630, 2, '更新TODO信息', 1, '/todos/30', 'PUT', '{\"done\":\"0\"}', 'admin', '221.2.52.247', '山东省日照市', 14, '2020-08-27 18:45:34');
INSERT INTO `user_log` VALUES (3631, 2, '更新TODO信息', 1, '/todos/30', 'PUT', '{\"done\":\"1\"}', 'admin', '221.2.52.247', '山东省日照市', 32, '2020-08-27 18:45:35');
INSERT INTO `user_log` VALUES (3632, 2, '更新TODO信息', 1, '/todos/26', 'PUT', '{\"done\":\"0\"}', 'admin', '221.2.52.247', '山东省日照市', 20, '2020-08-27 18:45:36');
INSERT INTO `user_log` VALUES (3633, 2, '更新TODO信息', 1, '/todos/25', 'PUT', '{\"done\":\"0\"}', 'admin', '221.2.52.247', '山东省日照市', 16, '2020-08-27 18:45:37');
INSERT INTO `user_log` VALUES (3634, 2, '更新TODO信息', 1, '/todos/25', 'PUT', '{\"done\":\"1\"}', 'admin', '221.2.52.247', '山东省日照市', 14, '2020-08-27 18:45:38');
INSERT INTO `user_log` VALUES (3635, 2, '更新TODO信息', 1, '/todos/26', 'PUT', '{\"done\":\"1\"}', 'admin', '221.2.52.247', '山东省日照市', 14, '2020-08-27 18:45:39');
INSERT INTO `user_log` VALUES (3636, 2, '查询小程序人员', 1, '/vx', 'GET', '{}', 'admin', '221.2.52.247', '山东省日照市', 20, '2020-08-27 18:45:45');
INSERT INTO `user_log` VALUES (3637, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '221.2.52.247', '山东省日照市', 36, '2020-08-27 18:45:53');
INSERT INTO `user_log` VALUES (3638, 2, '查询会议', 1, '/meeting/', 'GET', '{\"limit\":\"5\",\"page\":\"1\"}', 'admin', '221.2.52.247', '山东省日照市', 10, '2020-08-27 18:45:55');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色的id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户的id\'',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `1`(`role_id`) USING BTREE,
  INDEX `2`(`user_id`) USING BTREE,
  CONSTRAINT `1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `2` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与角色的关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 2);
INSERT INTO `user_role` VALUES (4, 1, 20);
INSERT INTO `user_role` VALUES (12, 8, 9);
INSERT INTO `user_role` VALUES (13, 7, 1);

-- ----------------------------
-- Table structure for vx_user
-- ----------------------------
DROP TABLE IF EXISTS `vx_user`;
CREATE TABLE `vx_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '小程序用户id',
  `p_id` int(32) NULL DEFAULT NULL COMMENT '绑定的用户的id',
  `openid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小程序用户的openid',
  `last_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '上次登录时间',
  `isband_face` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '是否已经绑定人脸',
  `create_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户的创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid`(`p_id`) USING BTREE,
  CONSTRAINT `pid` FOREIGN KEY (`p_id`) REFERENCES `persons` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '小程序用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vx_user
-- ----------------------------
INSERT INTO `vx_user` VALUES (1, 18, 'o8o2v4k6ePvEwXJma99DFatP6hR4', '2020-08-14 16:13:06', '0', '2020-08-14 16:13:06');
INSERT INTO `vx_user` VALUES (2, NULL, 'o8o2v4s4riSh4a-GvigUCjrTX2oQ', '2020-08-14 23:27:51', '0', '2020-08-14 23:27:51');
INSERT INTO `vx_user` VALUES (3, NULL, 'o8o2v4kvDm5rgWGtk0fdG9ZWLzjg', '2020-08-16 16:25:02', '0', '2020-08-16 16:25:02');
INSERT INTO `vx_user` VALUES (4, NULL, 'o8o2v4nyGbHNncJqhckalAtaqJMk', '2020-08-16 16:25:02', '0', '2020-08-16 16:25:02');
INSERT INTO `vx_user` VALUES (5, NULL, 'o8o2v4uy3FaU4cjkOF552SMY4EMc', '2020-08-16 16:52:35', '0', '2020-08-16 16:52:35');
INSERT INTO `vx_user` VALUES (6, NULL, 'o8o2v4qNvE2f4uI55ww4LAuTbYro', '2020-08-16 16:53:08', '0', '2020-08-16 16:53:08');
INSERT INTO `vx_user` VALUES (7, NULL, 'o8o2v4nbNrrCNcF4e_o_tUnrdKR4', '2020-08-17 16:58:05', '0', '2020-08-17 16:58:05');
INSERT INTO `vx_user` VALUES (8, NULL, 'o8o2v4nB3Xg_4cqMUElzaF42DqRA', '2020-08-22 11:58:11', '0', '2020-08-22 11:58:11');
INSERT INTO `vx_user` VALUES (9, NULL, 'o8o2v4vEkeFPjzB3UNSoqleE_m3Y', '2020-08-24 16:59:18', '0', '2020-08-24 16:59:18');
INSERT INTO `vx_user` VALUES (10, NULL, 'o8o2v4jRwv4kTAdpBzMrfWFNJJMY', '2020-08-27 16:32:49', '0', '2020-08-27 16:32:49');
INSERT INTO `vx_user` VALUES (11, NULL, 'o8o2v4tqdJl78cZ4HeuW_d4GoIck', '2020-08-29 06:04:24', '0', '2020-08-29 06:04:24');

SET FOREIGN_KEY_CHECKS = 1;
