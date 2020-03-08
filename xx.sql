/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.62-log : Database - meeting
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`meeting` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `meeting`;

/*Table structure for table `meeting` */

DROP TABLE IF EXISTS `meeting`;

CREATE TABLE `meeting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_id` int(11) DEFAULT NULL,
  `address_name` varchar(32) DEFAULT NULL,
  `meeting_address` varchar(32) DEFAULT NULL,
  `meeting_name` varchar(32) DEFAULT NULL,
  `start_time` varchar(32) DEFAULT NULL,
  `end_time` varchar(32) DEFAULT NULL,
  `meeting_phone` varchar(11) DEFAULT NULL,
  `uuid` varchar(32) DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `information` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `meeting` */

insert  into `meeting`(`id`,`add_id`,`address_name`,`meeting_address`,`meeting_name`,`start_time`,`end_time`,`meeting_phone`,`uuid`,`lng`,`lat`,`information`) values (1,2,'前下河村','山东省  临沂市  莒南县    ','cce','2020-02-15 00:00','2020-02-28 00:00','15762323410','392f0a456fdd4da087801e807fb30a29',118.76572,35.294594,'大苏打多所');

/*Table structure for table `meeting_persion` */

DROP TABLE IF EXISTS `meeting_persion`;

CREATE TABLE `meeting_persion` (
  `pid` int(20) DEFAULT NULL,
  `mid` int(20) DEFAULT NULL,
  `IsCheck` int(1) DEFAULT '0',
  KEY `pid` (`pid`),
  KEY `mid` (`mid`),
  CONSTRAINT `meeting_persion_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `meeting_persion_ibfk_2` FOREIGN KEY (`mid`) REFERENCES `meeting` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `meeting_persion` */

insert  into `meeting_persion`(`pid`,`mid`,`IsCheck`) values (1,1,1),(2,1,0),(3,1,0),(4,1,0),(5,1,0),(6,1,1),(7,1,0),(8,1,0),(9,1,0),(10,1,0),(46,1,1);

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(32) DEFAULT NULL,
  `menu` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`id`,`role_name`,`menu`) values (1,'ROLE_USER','{\r\n  \"clearInfo\": {\r\n    \"clearUrl\": \"#\"\r\n  },\r\n  \"homeInfo\": {\r\n    \"title\": \"首页\",\r\n    \"icon\": \"fa fa-home\",\r\n    \"href\": \"welcome.html\"\r\n  },\r\n  \"logoInfo\": {\r\n    \"title\": \"签到系统\",\r\n    \"image\": \"../images/logo.png\",\r\n    \"href\": \"\"\r\n  },\r\n  \"menuInfo\": {\r\n    \"currency\": {\r\n      \"title\": \"常规管理\",\r\n      \"icon\": \"fa fa-address-book\",\r\n      \"child\": [\r\n        {\r\n          \"title\": \"首页\",\r\n          \"href\": \"welcome.html\",\r\n          \"icon\": \"fa fa-home\",\r\n          \"target\": \"_self\"\r\n        },\r\n        {\r\n          \"title\": \"人员管理\",\r\n          \"href\": \"\",\r\n          \"icon\": \"fa fa-info-circle\",\r\n          \"target\": \"_self\",\r\n          \"child\": [\r\n            {\r\n              \"title\": \"人员添加\",\r\n              \"href\": \"upload.html\",\r\n              \"icon\": \"fa fa-sitemap\",\r\n              \"target\": \"_self\"\r\n            },\r\n            {\r\n              \"title\": \"人员查看\",\r\n              \"href\": \"plist.html\",\r\n              \"icon\": \"fa fa-users\",\r\n              \"target\": \"_self\"\r\n            },\r\n          {\r\n              \"title\": \"联系方式\",\r\n              \"href\": \"addphone.html\",\r\n              \"icon\": \"fa fa-users\",\r\n              \"target\": \"_self\"\r\n            }\r\n          ]\r\n        },\r\n        {\r\n          \"title\": \"会议管理\",\r\n          \"href\": \"\",\r\n          \"icon\": \"fa fa-list\",\r\n          \"target\": \"_self\",\r\n          \"child\": [\r\n            {\r\n              \"title\": \"会议添加\",\r\n              \"href\": \"madd.html\",\r\n              \"icon\": \"fa fa-adjust\",\r\n              \"target\": \"_self\"\r\n            },\r\n            {\r\n              \"title\": \"会议设置\",\r\n              \"href\": \"mlist.html\",\r\n              \"icon\": \"fa fa-certificate\",\r\n              \"target\": \"_self\"\r\n            },\r\n             {\r\n              \"title\": \"会议报名\",\r\n              \"href\": \"mlist-select.html\",\r\n              \"icon\": \"fa fa-group\",\r\n              \"target\": \"_self\"\r\n            },\r\n               {\r\n              \"title\": \"签到管理\",\r\n              \"href\": \"sign-m.html\",\r\n              \"icon\": \"fa fa-dot-circle-o\",\r\n              \"target\": \"_self\"\r\n            }\r\n            \r\n          ]\r\n        },\r\n        {\r\n          \"title\": \"日志管理\",\r\n          \"href\": \"\",\r\n          \"icon\": \"fa fa-inbox\",\r\n          \"target\": \"_self\",\r\n          \"child\": [\r\n            {\r\n              \"title\": \"日志管理\",\r\n              \"href\": \"Journal.html\",\r\n              \"icon\": \"fa fa-clock-o\",\r\n              \"target\": \"_self\"\r\n            }\r\n          ]\r\n        }\r\n      ]\r\n    }\r\n  }\r\n}'),(2,'ROLE_ADMIN','{\r\n  \"clearInfo\": {\r\n    \"clearUrl\": \"#\"\r\n  },\r\n  \"homeInfo\": {\r\n    \"title\": \"首页\",\r\n    \"icon\": \"fa fa-home\",\r\n    \"href\": \"swelcome.html\"\r\n  },\r\n  \"logoInfo\": {\r\n    \"title\": \"签到系统\",\r\n    \"image\": \"../images/logo.png\",\r\n    \"href\": \"\"\r\n  },\r\n  \r\n  \"menuInfo\": {\r\n\r\n    \"currency\": {\r\n      \"title\": \"常规管理\",\r\n      \"icon\": \"fa fa-address-book\",\r\n      \"child\": [\r\n        {\r\n          \"title\": \"首页\",\r\n          \"href\": \"swelcome.html\",\r\n          \"icon\": \"fa fa-home\",\r\n          \"target\": \"_self\"\r\n        },\r\n\r\n\r\n        {\r\n          \"title\": \"用户管理\",\r\n          \"href\": \"\",\r\n          \"icon\": \"fa fa-child\",\r\n          \"target\": \"_self\",\r\n          \"child\": [\r\n            {\r\n              \"title\": \"用户添加\",\r\n              \"href\": \"useradd.html\",\r\n              \"icon\": \"fa fa-leaf\",\r\n              \"target\": \"_self\"\r\n            },\r\n            {\r\n              \"title\": \"用户列表\",\r\n              \"href\": \"user.html\",\r\n              \"icon\": \"fa fa-street-view\",\r\n              \"target\": \"_self\"\r\n            }\r\n          ]\r\n        },\r\n      \r\n       \r\n        {\r\n          \"title\": \"日志管理\",\r\n          \"href\": \"\",\r\n          \"icon\": \"fa fa-inbox\",\r\n          \"target\": \"_self\",\r\n          \"child\": [\r\n            {\r\n              \"title\": \"日志查看\",\r\n              \"href\": \"slog.html\",\r\n              \"icon\": \"fa fa-clock-o\",\r\n              \"target\": \"_self\"\r\n            }\r\n          ]\r\n        }\r\n      ]\r\n    }\r\n  }\r\n}');

/*Table structure for table `mini_user` */

DROP TABLE IF EXISTS `mini_user`;

CREATE TABLE `mini_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(32) DEFAULT NULL,
  `openid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`p_id`),
  CONSTRAINT `pid` FOREIGN KEY (`p_id`) REFERENCES `persons` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `mini_user` */

insert  into `mini_user`(`id`,`p_id`,`openid`) values (1,46,'o8o2v4k6ePvEwXJma99DFatP6hR4');

/*Table structure for table `persistent_logins` */

DROP TABLE IF EXISTS `persistent_logins`;

CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `persistent_logins` */

insert  into `persistent_logins`(`username`,`series`,`token`,`last_used`) values ('user','mVisHg62089brjBAVJFEtw==','CA9Y/9d+mAzRu4e1xpLL7A==','2020-03-02 22:09:05');

/*Table structure for table `persons` */

DROP TABLE IF EXISTS `persons`;

CREATE TABLE `persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_id` int(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `person_name` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `add_time` varchar(100) DEFAULT NULL,
  `uuid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

/*Data for the table `persons` */

insert  into `persons`(`id`,`add_id`,`url`,`person_name`,`phone`,`add_time`,`uuid`) values (1,2,'group1/M00/00/00/rBUAB15H6veAEsH0AABbBXPXLoA50..jpg','下擦','','2020-02-15 20:58:31','39ff0f13b919420386a3e34677e365f9'),(2,2,'group1/M00/00/00/rBUAB15H6veAZOhzAABHQVRCGis31..jpg','13 1','','2020-02-15 20:58:31','0b4fc182bf2f47fb960951f4039ba6ba'),(3,2,'group1/M00/00/00/rBUAB15H6veACmBPAABO8JpkGFM53..jpg','age','','2020-02-15 20:58:31','238b9ce5202646b198d838554e2fb64d'),(4,2,'group1/M00/00/00/rBUAB15H6veAdnzKAABiC5kBOg487..jpg','dasd','','2020-02-15 20:58:31','2dd218476cde4f0f872dd70001343ea4'),(5,2,'group1/M00/00/00/rBUAB15H6veASDYbAABJwwsKyig89..jpg','dasdas','','2020-02-15 20:58:31','a08957504c3f4b75aeea67b658fe7bc1'),(6,2,'group1/M00/00/00/rBUAB15H6veAfq6XAABKDWmgvhE99..jpg','dddd','','2020-02-15 20:58:31','840f2ca3384149598a991e93e8b74e6d'),(7,2,'group1/M00/00/00/rBUAB15H6vqAPbbCAAAuHd1hmOI70..jpg','eq','','2020-02-15 20:58:34','6bcd52e70cb54b04b847bb15d4dada6b'),(8,2,'group1/M00/00/00/rBUAB15H6vqAE0miAABylssOWTU95..jpg','dsadas','','2020-02-15 20:58:34','e7011287eebb41299eee5c7c9dbdcf5d'),(9,2,'group1/M00/00/00/rBUAB15H6vqAS03oAABc58eawEc31..jpg','ddd','','2020-02-15 20:58:34','5e26203132ab47f793bf7180149a39f3'),(10,2,'group1/M00/00/00/rBUAB15H6vqAGTVOAABWt7MuQgU83..jpg','eee','','2020-02-15 20:58:34','2900050888584745949cb3d6e998dd3a'),(11,2,'group1/M00/00/00/rBUAB15H6vqAckHGAABDj6GSyxA58..jpg','sa','','2020-02-15 20:58:34','79ea00b1e2b14eeba9020d69e29286c6'),(12,2,'group1/M00/00/00/rBUAB15H6vqASNR4AABbGEzV2iw38..jpg','logo','','2020-02-15 20:58:34','d31fe0ca4c864a0db779df4284abe3fb'),(13,2,'group1/M00/00/00/rBUAB15H6vyAQ2JHAABiFyETMZk06..jpg','sad','','2020-02-15 20:58:36','e584d01134fb477091a7d02b312ffed1'),(14,2,'group1/M00/00/00/rBUAB15H6vyALa46AABv88f3Ieo18..jpg','sdd','','2020-02-15 20:58:36','0cf4a25880bd41948ded68a91616d36f'),(15,2,'group1/M00/00/00/rBUAB15H6vyANWGZAABAeOj9lUs54..jpg','阿斯达是','','2020-02-15 20:58:36','0ea4b4e0a59b4b6bbdd17d67ba37bf39'),(16,2,'group1/M00/00/00/rBUAB15H6vyAEYEnAABtpsg0MKU77..jpg','nai1','','2020-02-15 20:58:36','13b2f98e7a0948cbb7f4d9e40621db3e'),(17,2,'group1/M00/00/00/rBUAB15H6v2ADOI0AABz4S8qF_881..jpg','成果','','2020-02-15 20:58:37','2c170e51a17d4299a962b853ccb12e50'),(18,2,'group1/M00/00/00/rBUAB15H6v2AJKtdAAEOTka6FNc97..jpg','阿斯顿','','2020-02-15 20:58:37','16b89ba18b684cb9b71adb4a1cf91e0c'),(19,2,'group1/M00/00/00/rBUAB15H6v6AdDpsAAA-VIv3xUg22..jpg','哒哒','','2020-02-15 20:58:38','40136abffed341fa91ed9dc7866e9858'),(20,2,'group1/M00/00/00/rBUAB15H6v-AcC-0AABFp6dItMg99..jpg','大','','2020-02-15 20:58:39','12bb84abfa7242dc955a1828cf5e5537'),(21,2,'group1/M00/00/00/rBUAB15H6wCAOHVBAABF8ykCdYY47..jpg','大三·','','2020-02-15 20:58:40','62eb89ef556e48ebb4e735323eb80c3b'),(23,2,'group1/M00/00/00/rBUAB15H6wGARziYAAB54jGe61Y29..jpg','大苏打','','2020-02-15 20:58:41','b1eee0b6c5b04b03a9ea98a606ca5f04'),(24,2,'group1/M00/00/00/rBUAB15H6wSAEAzHAABcNjit2-w67..jpg','读取文档群','','2020-02-15 20:58:44','5c84ac274b3f475ea1650e4ba8d65406'),(25,2,'group1/M00/00/00/rBUAB15H6wSAbnvnAAA-8Ox-5pM66..jpg','二娃','','2020-02-15 20:58:44','1bb6c3c56ae445acb262606b5bd3dcc5'),(26,2,'group1/M00/00/00/rBUAB15H6wWAfqpsAAA26PjdSkM12..jpg','红巨人','','2020-02-15 20:58:45','f1b4f2d624b74116919aa0c9db720014'),(29,2,'group1/M00/00/00/rBUAB15H6wiAMxKqAABU9cq_Xp013..jpg','猫眼','','2020-02-15 20:58:48','9d9939623317467c9ddecacdf4c4a604'),(31,2,'group1/M00/00/00/rBUAB15H6wiAOXgFAAA_veMAZJU32..jpg','七娃','','2020-02-15 20:58:48','0949ad14ad77443abdd165a22d0cce96'),(32,2,'group1/M00/00/00/rBUAB15H6wiAK3rgAAA24-JKTfE79..jpg','青寡妇','','2020-02-15 20:58:48','325bc15fe3d5464b91c57640a3c58081'),(33,2,'group1/M00/00/00/rBUAB15H6wqAbfh0AABR5tXQ2fc09..jpg','三','','2020-02-15 20:58:50','826715e998234e9492ed9637a277e48b'),(37,2,'group1/M00/00/00/rBUAB15H6wuANDu3AAA73Djgfpg96..jpg','玩玩','','2020-02-15 20:58:51','5479b3a8532a4a23842e6c7eb85066db'),(38,2,'group1/M00/00/00/rBUAB15H6wyANG-IAAA69_eTZSM75..jpg','王力宏','','2020-02-15 20:58:52','b6bbc689c53f4b9c8bb95136442997c4'),(39,2,'group1/M00/00/00/rBUAB15H6wyAeEXeAABN9Q8HAs094..jpg','王五','','2020-02-15 20:58:52','58d3f4c96f164a2bb25059098eb78d92'),(41,2,'group1/M00/00/00/rBUAB15H6w6AJ9BGAABe4WSyVho35..jpg','下单','','2020-02-15 20:58:54','43c14dd953594b04966e57000678a8fb'),(42,2,'group1/M00/00/00/rBUAB15H6w-AaNJyAABXmmN_l6w82..jpg','下载 (1)','','2020-02-15 20:58:55','26f0a47c1c994b66abb2719d7a290956'),(43,2,'group1/M00/00/00/rBUAB15H6w-ABtJ0AABUzPXJbHY44..jpg','下面','','2020-02-15 20:58:55','f7477b72538841df9ba4f87d13c76bcb'),(44,2,'group1/M00/00/00/rBUAB15H6xKAKMrhAABg2AeoA1Y77..jpg','下载 (3)','','2020-02-15 20:58:58','589651db32a14c25b586dbe4d3ae2b4f'),(45,2,'group1/M00/00/00/rBUAB15H6xKAWzhKAAAx2qjhrjw71..jpg','想','','2020-02-15 20:58:58','598df08132284f46b672657e2d44fafc'),(46,2,'group1/M00/00/00/rBUAB15H6xOAehL7AAHPfKp_qqg50..jpg','玮哥','15762323410','2020-02-15 20:58:59','df923b479f86407e9d432c8e9343da5c'),(47,2,'group1/M00/00/00/rBUAB15H6xOADynUAAB_8GjMA_M04..jpg','下载','','2020-02-15 20:58:59','5ce8212176c8466fad04a62081346c2c'),(48,2,'group1/M00/00/00/rBUAB15H6xOAWygZAABODNVbuvg43..jpg','虚鲲','','2020-02-15 20:58:59','38728562c239465cb24d813c4c0e6dd4'),(49,2,'group1/M00/00/00/rBUAB15H6xOATYQKAAFH6Qxp9ps80..jpg','下载 (2)','','2020-02-15 20:58:59','2315f1f615d349f7a9d9c8e4cec5b40c'),(50,2,'group1/M00/00/00/rBUAB15H6xeAGIqLAAJD_Rb3KOQ58..jpg','杨幂','','2020-02-15 20:59:03','e86bf7df740f4375a5fa6fd8a5baa4d5'),(51,2,'group1/M00/00/00/rBUAB15V6iaAAiM8AABylssOWTU81..jpg','ad','','2020-02-26 11:46:46','94505d70884e4bfbbc82bb122adac69c');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `lasttime` varchar(32) DEFAULT NULL,
  `role` varchar(32) DEFAULT 'ROLE_USER',
  `isEnabled` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`username`,`sex`,`phone`,`password`,`address`,`lasttime`,`role`,`isEnabled`) values (1,'surper','男','15762323410','$2a$10$9aiQrHMuSR8vsKvDqduyDOohgK4hKJPIOSMduCihevdgHBZhsfzVS','山东省临沂市','2020-02-15 21:37:26','ROLE_ADMIN',0),(2,'user','女','15762323410','$2a$10$MskoDx3QORo.lJTeFIj1HOl/6.LXDOFcgimNotHuev./0NPAbpkhW','山东省临沂市','2020-03-02 22:09:05','ROLE_USER',0);

/*Table structure for table `user_log` */

DROP TABLE IF EXISTS `user_log`;

CREATE TABLE `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addid` int(11) DEFAULT NULL,
  `name` varchar(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `url` varchar(32) DEFAULT NULL,
  `requestType` varchar(32) DEFAULT NULL,
  `requestParam` text,
  `user` varchar(32) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `ipInfo` varchar(32) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`addid`),
  CONSTRAINT `uid` FOREIGN KEY (`addid`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;

/*Data for the table `user_log` */

insert  into `user_log`(`id`,`addid`,`name`,`type`,`url`,`requestType`,`requestParam`,`user`,`ip`,`ipInfo`,`time`,`create_time`) values (1,1,'用户登录',1,'/login','POST','{\"password\":\"密码不可见\",\"captcha\":\"l9jy\",\"remember-me\":\"true\",\"username\":\"surper\"}','surper','127.0.0.1','北京市',651,'2020-02-15 20:53:25'),(2,1,'查看所有用户',1,'/user','GET','{\"limit\":\"15\",\"page\":\"1\"}','surper','127.0.0.1','北京市',152,'2020-02-15 20:53:35'),(3,1,'查看用户是否存在',1,'/user/isHave','GET','{\"username\":\"user\"}','surper','127.0.0.1','北京市',24,'2020-02-15 20:54:05'),(4,1,'新建用户',1,'/user','POST','{\"password\":\"密码不可见\",\"phone\":\"15762323410\",\"sex\":\"女\",\"password2\":\"lx1793786487\",\"username\":\"user\"}','surper','127.0.0.1','北京市',1235,'2020-02-15 20:54:05'),(5,1,'查看所有用户',1,'/user','GET','{\"limit\":\"15\",\"page\":\"1\"}','surper','127.0.0.1','北京市',34,'2020-02-15 20:54:15'),(6,1,'超管查询日志',1,'/log/all','GET','{\"limit\":\"15\",\"page\":\"1\"}','surper','127.0.0.1','北京市',139,'2020-02-15 20:54:39'),(74,2,'删除所选日志',1,'/log','DELETE','{\"ids[]\":\"7\"}','user','223.104.188.203','山东省临沂市',75,'2020-02-15 21:14:51'),(75,2,'查看人员信息',1,'/person','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',51,'2020-02-15 21:19:18'),(76,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',15,'2020-02-15 21:21:14'),(77,2,'添加会议',1,'/meeting','POST','{\"meetingAddress\":\"山东省 临沂市 莒南县\",\"meetingName\":\"cce\",\"lng\":\"118.764539\",\"addressName\":\"前下河村\",\"startTime\":\"2020-02-15 00:00\",\"information\":\"大苏打多所\",\"endTime\":\"2020-02-28 00:00\",\"meetingPhone\":\"15762323410\",\"lat\":\"35.294859\"}','user','223.104.188.203','山东省临沂市',77,'2020-02-15 21:21:51'),(78,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',17,'2020-02-15 21:21:57'),(79,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',18,'2020-02-15 21:22:00'),(80,2,'查询会议',1,'/meeting','GET','{\"limit\":\"10\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',51,'2020-02-15 21:22:34'),(81,2,'查看人员信息',1,'/person','GET','{\"limit\":\"10\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',55,'2020-02-15 21:22:37'),(82,2,'添加人员进入会议',1,'/meeting/person','POST','{\"mid\":\"1\",\"pids\":\"1,2,3,4,5,6,7,8,9,10\"}','user','223.104.188.203','山东省临沂市',45,'2020-02-15 21:22:43'),(83,2,'查询会议',1,'/meeting','GET','{\"limit\":\"10\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',14,'2020-02-15 21:22:55'),(84,2,'查询签到比例',1,'/check','GET','{\"mid\":\"1\"}','user','223.104.188.203','山东省临沂市',18,'2020-02-15 21:22:58'),(85,2,'查询签到情况',1,'/check/1','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',96,'2020-02-15 21:22:59'),(86,2,'修改签到状态',1,'/check/1/1','PUT','{\"ids[]\":\"1\"}','user','223.104.188.203','山东省临沂市',19,'2020-02-15 21:23:14'),(87,2,'查询签到比例',1,'/check','GET','{\"mid\":\"1\"}','user','223.104.188.203','山东省临沂市',12,'2020-02-15 21:23:15'),(88,2,'查询签到情况',1,'/check/1','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',122,'2020-02-15 21:23:16'),(89,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',11,'2020-02-15 21:23:25'),(90,2,'查询会议',1,'/meeting','GET','{\"limit\":\"10\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',31,'2020-02-15 21:23:32'),(91,2,'查询签到比例',1,'/check','GET','{\"mid\":\"1\"}','user','223.104.188.203','山东省临沂市',5,'2020-02-15 21:23:36'),(92,2,'查询签到情况',1,'/check/1','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',7,'2020-02-15 21:23:37'),(93,2,'修改签到状态',1,'/check/1/1','PUT','{\"ids[]\":\"6\"}','user','223.104.188.203','山东省临沂市',23,'2020-02-15 21:23:40'),(94,2,'查询签到比例',1,'/check','GET','{\"mid\":\"1\"}','user','223.104.188.203','山东省临沂市',10,'2020-02-15 21:23:41'),(95,2,'查询签到情况',1,'/check/1','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',7,'2020-02-15 21:23:41'),(96,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',9,'2020-02-15 21:35:17'),(97,1,'用户登录',1,'/login','POST','{\"password\":\"密码不可见\",\"captcha\":\"lu9v\",\"username\":\"surper\"}','surper','223.104.188.203','山东省临沂市',128,'2020-02-15 21:37:26'),(98,1,'查看所有用户',1,'/user','GET','{\"limit\":\"15\",\"page\":\"1\"}','surper','223.104.188.203','山东省临沂市',8,'2020-02-15 21:37:47'),(99,1,'超管查询日志',1,'/log/all','GET','{\"limit\":\"15\",\"page\":\"1\"}','surper','223.104.188.203','山东省临沂市',23,'2020-02-15 21:37:53'),(100,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',241,'2020-02-15 21:47:26'),(101,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',36,'2020-02-15 21:47:41'),(102,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',44,'2020-02-15 21:52:16'),(103,2,'查询会议',1,'/meeting','GET','{\"limit\":\"10\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',38,'2020-02-15 22:08:47'),(104,2,'查看人员信息',1,'/person','GET','{\"limit\":\"10\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',115,'2020-02-15 22:08:50'),(105,2,'查看人员信息',1,'/person','GET','{\"limit\":\"10\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',65,'2020-02-15 22:08:56'),(106,2,'查看人员信息',1,'/person','GET','{\"personName\":\"玮哥\",\"limit\":\"10\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',65,'2020-02-15 22:09:00'),(107,2,'添加人员进入会议',1,'/meeting/person','POST','{\"mid\":\"1\",\"pids\":\"46\"}','user','223.104.188.203','山东省临沂市',60,'2020-02-15 22:09:03'),(108,2,'修改会议',1,'/meeting','PUT','{\"meetingAddress\":\"山东省  临沂市  莒南县    \",\"meetingName\":\"cce\",\"lng\":\"118.768348\",\"addressName\":\"前下河村\",\"startTime\":\"2020-02-15 00:00\",\"information\":\"大苏打多所\",\"id\":\"1\",\"endTime\":\"2020-02-28 00:00\",\"meetingPhone\":\"15762323410\",\"lat\":\"35.294656\"}','user','223.104.188.203','山东省临沂市',150,'2020-02-15 22:17:05'),(109,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',27,'2020-02-15 22:17:08'),(110,2,'修改会议',1,'/meeting','PUT','{\"meetingAddress\":\"山东省  临沂市  莒南县    \",\"meetingName\":\"cce\",\"lng\":\"118.765958\",\"addressName\":\"前下河村\",\"startTime\":\"2020-02-15 00:00\",\"information\":\"大苏打多所\",\"id\":\"1\",\"endTime\":\"2020-02-28 00:00\",\"meetingPhone\":\"15762323410\",\"lat\":\"35.294601\"}','user','223.104.188.203','山东省临沂市',40,'2020-02-15 22:19:53'),(111,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',27,'2020-02-15 22:19:55'),(112,2,'修改会议',1,'/meeting','PUT','{\"meetingAddress\":\"山东省 临沂市 莒南县\",\"meetingName\":\"cce\",\"lng\":\"118.841541\",\"addressName\":\"莒南县\",\"startTime\":\"2020-02-15 00:00\",\"information\":\"大苏打多所\",\"id\":\"1\",\"endTime\":\"2020-02-28 00:00\",\"meetingPhone\":\"15762323410\",\"lat\":\"35.180812\"}','user','223.104.188.203','山东省临沂市',34,'2020-02-15 22:22:25'),(113,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',23,'2020-02-15 22:22:27'),(114,2,'修改会议',1,'/meeting','PUT','{\"meetingAddress\":\"山东省  临沂市  莒南县    \",\"meetingName\":\"cce\",\"lng\":\"118.763187\",\"addressName\":\"前下河村\",\"startTime\":\"2020-02-15 00:00\",\"information\":\"大苏打多所\",\"id\":\"1\",\"endTime\":\"2020-02-28 00:00\",\"meetingPhone\":\"15762323410\",\"lat\":\"35.294329\"}','user','223.104.188.203','山东省临沂市',31,'2020-02-15 22:23:45'),(115,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',26,'2020-02-15 22:23:47'),(116,2,'用户登录',1,'/login','POST','{\"password\":\"密码不可见\",\"captcha\":\"7exl\",\"remember-me\":\"true\",\"username\":\"user\"}','user','223.104.188.203','山东省临沂市',821,'2020-02-15 22:56:20'),(117,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',239,'2020-02-15 22:56:40'),(118,2,'修改会议',1,'/meeting','PUT','{\"meetingAddress\":\"山东省  临沂市  莒南县    \",\"meetingName\":\"cce\",\"lng\":\"118.76572\",\"addressName\":\"前下河村\",\"startTime\":\"2020-02-15 00:00\",\"information\":\"大苏打多所\",\"id\":\"1\",\"endTime\":\"2020-02-28 00:00\",\"meetingPhone\":\"15762323410\",\"lat\":\"35.294594\"}','user','223.104.188.203','山东省临沂市',181,'2020-02-15 22:56:59'),(119,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',39,'2020-02-15 22:57:01'),(120,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',42,'2020-02-15 23:13:44'),(121,2,'用户登录',1,'/isLife','GET','{}','user','223.104.188.203','山东省临沂市',201,'2020-02-15 23:17:27'),(122,2,'用户登录',1,'/menu','GET','{}','user','223.104.188.203','山东省临沂市',242,'2020-02-15 23:17:27'),(123,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',59,'2020-02-15 23:17:43'),(124,2,'查询会议',1,'/meeting','GET','{\"limit\":\"10\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',35,'2020-02-15 23:17:53'),(125,2,'查询签到比例',1,'/check','GET','{\"mid\":\"1\"}','user','223.104.188.203','山东省临沂市',36,'2020-02-15 23:17:56'),(126,2,'查询签到情况',1,'/check/1','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',98,'2020-02-15 23:17:56'),(127,2,'查询签到情况',1,'/check/1','GET','{\"isCheck\":\"1\",\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',36,'2020-02-15 23:18:02'),(128,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',58,'2020-02-15 23:43:31'),(129,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',28,'2020-02-15 23:52:23'),(130,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',21,'2020-02-15 23:52:24'),(131,2,'用户登录',1,'/isLife','GET','{}','user','223.104.188.203','山东省临沂市',212,'2020-02-15 23:53:02'),(132,2,'查看人员信息',1,'/person','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',70,'2020-02-15 23:53:21'),(133,2,'查看人员信息',1,'/person','GET','{\"limit\":\"15\",\"page\":\"3\"}','user','223.104.188.203','山东省临沂市',24,'2020-02-15 23:53:24'),(134,2,'查看人员信息',1,'/person','GET','{\"limit\":\"15\",\"page\":\"2\"}','user','223.104.188.203','山东省临沂市',31,'2020-02-15 23:53:26'),(135,2,'更新人员信息',1,'/person','PUT','{\"personName\":\"nai1\",\"isCheck\":\"\",\"addTime\":\"2020-02-15 20:58:36\",\"phone\":\"\",\"addId\":\"2\",\"id\":\"16\",\"uuid\":\"13b2f98e7a0948cbb7f4d9e40621db3e\",\"url\":\"group1/M00/00/00/rBUAB15H6vyAEYEnAABtpsg0MKU77..jpg\"}','user','223.104.188.203','山东省临沂市',187,'2020-02-15 23:53:45'),(136,2,'查看人员信息',1,'/person','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',14,'2020-02-15 23:53:47'),(137,2,'更新人员信息',1,'/person','PUT','{\"personName\":\"】哒哒\",\"isCheck\":\"\",\"addTime\":\"2020-02-15 20:58:31\",\"phone\":\"\",\"addId\":\"2\",\"id\":\"1\",\"uuid\":\"39ff0f13b919420386a3e34677e365f9\",\"url\":\"group1/M00/00/00/rBUAB15H6veAEsH0AABbBXPXLoA50..jpg\"}','user','223.104.188.203','山东省临沂市',29,'2020-02-15 23:53:55'),(138,2,'查看人员信息',1,'/person','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',26,'2020-02-15 23:53:57'),(139,2,'用户登录',1,'/login','POST','{\"password\":\"密码不可见\",\"captcha\":\"9r96\",\"remember-me\":\"true\",\"username\":\"user\"}','user','223.104.188.203','山东省临沂市',122,'2020-02-16 15:35:14'),(140,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',34,'2020-02-16 15:35:55'),(141,2,'查询会议',1,'/meeting','GET','{\"limit\":\"10\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',31,'2020-02-16 15:35:59'),(142,2,'查询签到比例',1,'/check','GET','{\"mid\":\"1\"}','user','223.104.188.203','山东省临沂市',55,'2020-02-16 15:36:05'),(143,2,'查询签到情况',1,'/check/1','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',74,'2020-02-16 15:36:05'),(144,2,'查看人员信息',1,'/person','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',21,'2020-02-16 15:36:33'),(145,2,'用户登录',1,'/isLife','GET','{}','user','223.104.188.203','山东省临沂市',190,'2020-02-18 09:14:20'),(146,2,'用户登录',1,'/menu','GET','{}','user','223.104.188.203','山东省临沂市',245,'2020-02-18 09:14:20'),(147,2,'查看人员信息',1,'/person','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',80,'2020-02-18 09:14:27'),(148,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',73,'2020-02-18 09:14:34'),(149,2,'查询会议',1,'/meeting','GET','{\"limit\":\"10\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',31,'2020-02-18 09:16:10'),(150,2,'查询签到比例',1,'/check','GET','{\"mid\":\"1\"}','user','223.104.188.203','山东省临沂市',9,'2020-02-18 09:16:12'),(151,2,'查询签到情况',1,'/check/1','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',22,'2020-02-18 09:16:12'),(152,2,'查询会议',1,'/meeting','GET','{\"limit\":\"10\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',28,'2020-02-18 09:16:20'),(153,2,'查看人员信息',1,'/person','GET','{\"limit\":\"10\",\"page\":\"1\"}','user','223.104.188.203','山东省临沂市',33,'2020-02-18 09:16:23'),(154,2,'用户登录',1,'/login','POST','{\"password\":\"密码不可见\",\"captcha\":\"r8lq\",\"username\":\"user\"}','user','223.104.188.203','山东省临沂市',141,'2020-02-18 12:40:56'),(155,2,'用户登录',1,'/login','POST','{\"password\":\"密码不可见\",\"captcha\":\"9a9a\",\"username\":\"user\"}','user','223.104.191.185','山东省临沂市',185,'2020-02-20 03:20:51'),(156,2,'用户登录',1,'/login','POST','{\"password\":\"密码不可见\",\"captcha\":\"dfjx\",\"username\":\"user\"}','user','223.104.191.185','山东省临沂市',122,'2020-02-22 23:55:21'),(157,2,'查看人员信息',1,'/person','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.191.185','山东省临沂市',21,'2020-02-22 23:55:48'),(158,2,'用户登录',1,'/login','POST','{\"password\":\"密码不可见\",\"captcha\":\"cthx\",\"username\":\"user\"}','user','223.104.191.185','山东省临沂市',154,'2020-02-26 11:45:59'),(159,2,'批量上传人员',1,'/upload/person','POST','{\"tailor\":\"false\"}','user','223.104.191.185','山东省临沂市',53,'2020-02-26 11:46:08'),(160,2,'批量上传人员',1,'/upload/person','POST','{\"tailor\":\"false\"}','user','223.104.191.185','山东省临沂市',116,'2020-02-26 11:46:20'),(161,2,'批量上传人员',1,'/upload/person','POST','{\"tailor\":\"false\"}','user','223.104.191.185','山东省临沂市',2287,'2020-02-26 11:46:46'),(162,2,'查看人员信息',1,'/person','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.191.185','山东省临沂市',144,'2020-02-26 11:46:52'),(163,2,'查看人员信息',1,'/person','GET','{\"limit\":\"15\",\"page\":\"3\"}','user','223.104.191.185','山东省临沂市',34,'2020-02-26 11:46:55'),(164,2,'用户登录',1,'/login','POST','{\"password\":\"密码不可见\",\"captcha\":\"vqlw\",\"username\":\"user\"}','user','223.104.191.185','山东省临沂市',132,'2020-02-26 12:04:22'),(165,2,'用户登录',1,'/login','POST','{\"password\":\"密码不可见\",\"captcha\":\"s9fp\",\"remember-me\":\"true\",\"username\":\"user\"}','user','223.104.191.185','山东省临沂市',128,'2020-02-26 12:04:50'),(166,2,'用户登录',1,'/isLife','GET','{}','user','223.104.191.185','山东省临沂市',231,'2020-02-26 12:05:00'),(167,2,'用户登录',1,'/menu','GET','{}','user','223.104.191.185','山东省临沂市',272,'2020-02-26 12:05:00'),(168,2,'用户登录',1,'/isLife','GET','{}','user','223.104.191.185','山东省临沂市',146,'2020-02-26 12:05:11'),(169,2,'查询会议',1,'/meeting','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.191.185','山东省临沂市',26,'2020-02-26 12:05:17'),(170,2,'查询会议',1,'/meeting','GET','{\"limit\":\"10\",\"page\":\"1\"}','user','223.104.191.185','山东省临沂市',21,'2020-02-26 12:05:31'),(171,2,'查询签到比例',1,'/check','GET','{\"mid\":\"1\"}','user','223.104.191.185','山东省临沂市',8,'2020-02-26 12:05:34'),(172,2,'查询签到情况',1,'/check/1','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.191.185','山东省临沂市',8,'2020-02-26 12:05:34'),(173,2,'用户登录',1,'/login','POST','{\"password\":\"密码不可见\",\"captcha\":\"563u\",\"remember-me\":\"true\",\"username\":\"user\"}','user','117.136.95.101','山东省潍坊市',198,'2020-02-27 11:34:26'),(174,2,'用户登录',1,'/menu','GET','{}','user','223.104.191.239','山东省临沂市',215,'2020-02-28 10:06:10'),(175,2,'用户登录',1,'/isLife','GET','{}','user','223.104.191.239','山东省临沂市',219,'2020-02-28 10:06:10'),(176,2,'查看人员信息',1,'/person','GET','{\"limit\":\"15\",\"page\":\"1\"}','user','223.104.191.239','山东省临沂市',74,'2020-02-28 10:06:23'),(177,2,'查看人员信息',1,'/person','GET','{\"limit\":\"15\",\"page\":\"2\"}','user','223.104.191.239','山东省临沂市',20,'2020-02-28 10:06:35'),(178,2,'查看人员信息',1,'/person','GET','{\"limit\":\"15\",\"page\":\"3\"}','user','223.104.191.239','山东省临沂市',21,'2020-02-28 10:06:36'),(179,2,'查看人员信息',1,'/person','GET','{\"limit\":\"15\",\"page\":\"2\"}','user','223.104.191.239','山东省临沂市',9,'2020-02-28 10:06:56'),(180,2,'用户登录',1,'/isLife','GET','{}','user','223.104.191.239','山东省临沂市',153,'2020-02-29 14:34:44'),(181,2,'用户登录',1,'/menu','GET','{}','user','223.104.191.239','山东省临沂市',196,'2020-02-29 14:34:44'),(195,2,'删除所选日志',1,'/log','DELETE','{\"ids[]\":\"182\"}','user','223.104.191.239','山东省临沂市',52,'2020-03-02 22:08:47'),(196,2,'用户登录',1,'/isLife','GET','{}','user','223.104.191.239','山东省临沂市',838,'2020-03-02 22:09:05'),(197,2,'登录异常',1,'/login','POST','{\"password\":\"密码不可见\",\"captcha\":\"chel\",\"remember-me\":\"true\",\"username\":\"user\"}','user','223.104.191.239','山东省临沂市',100,'2020-03-02 22:09:37');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
