/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : casino_db

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 30/12/2017 03:16:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agents_group
-- ----------------------------
DROP TABLE IF EXISTS `agents_group`;
CREATE TABLE `agents_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(20) CHARACTER SET gbk NOT NULL DEFAULT 'null' COMMENT '代理组名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of agents_group
-- ----------------------------
BEGIN;
INSERT INTO `agents_group` VALUES (1, 'null');
COMMIT;

-- ----------------------------
-- Table structure for agents_list
-- ----------------------------
DROP TABLE IF EXISTS `agents_list`;
CREATE TABLE `agents_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agents_name` varchar(16) CHARACTER SET gbk NOT NULL COMMENT '用户名',
  `agents_pass` varchar(32) CHARACTER SET gbk NOT NULL COMMENT '用户密码',
  `loginip` varchar(20) CHARACTER SET gbk NOT NULL DEFAULT 'null' COMMENT '登陆IP',
  `logintime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '登陆时间',
  `regtime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '注册时间',
  `online` varchar(3) CHARACTER SET gbk NOT NULL DEFAULT '0' COMMENT '是否在线  1在线，0不在线',
  `lognum` int(11) NOT NULL DEFAULT '0' COMMENT '登陆次数',
  `status` varchar(4) CHARACTER SET gbk NOT NULL DEFAULT '正常' COMMENT '会员状态,0未审核，1正常，2异常，3停用',
  `birthday` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '生日',
  `tel` varchar(20) CHARACTER SET gbk NOT NULL DEFAULT 'null' COMMENT '电话',
  `email` varchar(100) CHARACTER SET gbk NOT NULL DEFAULT 'null' COMMENT '会员邮箱',
  `qq` int(12) NOT NULL DEFAULT '10000' COMMENT '会员QQ',
  `othercon` varchar(100) CHARACTER SET gbk NOT NULL DEFAULT 'null' COMMENT '其他联系信息',
  `remark` text CHARACTER SET gbk NOT NULL COMMENT '备注信息',
  `agents_type` varchar(10) CHARACTER SET gbk NOT NULL DEFAULT '赢利分成' COMMENT '理代类型：流水分成，赢利分成',
  `total_1_1` decimal(11,0) NOT NULL DEFAULT '0' COMMENT '水流或赢利量等级1',
  `total_1_2` decimal(11,0) NOT NULL DEFAULT '10000',
  `total_2_1` decimal(11,0) NOT NULL DEFAULT '10001' COMMENT '水流或赢利量等级2',
  `total_2_2` decimal(11,0) NOT NULL DEFAULT '50000' COMMENT '水流或赢利量等级1',
  `total_3_1` decimal(11,0) NOT NULL DEFAULT '50001',
  `total_3_2` decimal(11,0) NOT NULL DEFAULT '100000',
  `total_4_1` decimal(11,0) NOT NULL DEFAULT '100001',
  `total_4_2` decimal(11,0) NOT NULL DEFAULT '200000',
  `total_5_1` decimal(11,0) NOT NULL DEFAULT '200001',
  `total_5_2` decimal(11,0) NOT NULL DEFAULT '500000',
  `total_1_scale` decimal(10,3) NOT NULL DEFAULT '0.000' COMMENT '水流或赢利量等级1的 比例 百分比',
  `total_2_scale` decimal(10,3) NOT NULL DEFAULT '0.000',
  `total_3_scale` decimal(10,3) NOT NULL DEFAULT '0.000',
  `total_4_scale` decimal(10,3) NOT NULL DEFAULT '0.000',
  `total_5_scale` decimal(10,3) NOT NULL DEFAULT '0.000',
  `settlement` varchar(10) CHARACTER SET gbk NOT NULL DEFAULT '月结' COMMENT '结算方式:月结，半月结，周结',
  PRIMARY KEY (`id`),
  KEY `agents_name` (`agents_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for agents_money_log
-- ----------------------------
DROP TABLE IF EXISTS `agents_money_log`;
CREATE TABLE `agents_money_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agents_id` int(11) NOT NULL COMMENT '代理ID',
  `money` decimal(11,2) DEFAULT '0.00' COMMENT '算结金额',
  `s_time` date DEFAULT NULL COMMENT '结算开始日期',
  `e_time` date DEFAULT NULL COMMENT '结算结束日期',
  `do_time` datetime DEFAULT NULL COMMENT '操作时间',
  `ledger` decimal(11,2) DEFAULT NULL COMMENT '流水总额',
  `profig` decimal(11,2) DEFAULT NULL COMMENT '盈利总额',
  `ratio` int(11) DEFAULT '0' COMMENT '成分比例1=1%',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for baseball_match
-- ----------------------------
DROP TABLE IF EXISTS `baseball_match`;
CREATE TABLE `baseball_match` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Match_ID` varchar(50) NOT NULL,
  `Match_Date` varchar(20) DEFAULT NULL,
  `Match_Time` varchar(20) DEFAULT NULL,
  `Match_Name` varchar(250) NOT NULL,
  `Match_Master` varchar(250) NOT NULL,
  `Match_Guest` varchar(250) NOT NULL,
  `Match_IsLose` varchar(2) DEFAULT NULL,
  `Match_Type` tinyint(3) unsigned DEFAULT NULL,
  `Match_Ho` double DEFAULT NULL,
  `Match_Ao` double DEFAULT NULL,
  `Match_RGG` varchar(15) DEFAULT NULL,
  `Match_BzM` double DEFAULT NULL,
  `Match_BzG` double DEFAULT NULL,
  `Match_BzH` double DEFAULT NULL,
  `Match_DxGG` varchar(15) DEFAULT NULL,
  `Match_Dxdpl` double DEFAULT NULL,
  `Match_Dxxpl` double DEFAULT NULL,
  `Match_Dsdpl` double DEFAULT NULL,
  `Match_Dsspl` double DEFAULT NULL,
  `Match_Score` varchar(10) DEFAULT NULL,
  `Match_JS` tinyint(3) unsigned DEFAULT '0',
  `Match_AddDate` datetime DEFAULT NULL,
  `Match_CoverDate` datetime DEFAULT NULL,
  `Match_Allow` tinyint(3) unsigned DEFAULT '0',
  `Match_IsShow` tinyint(3) unsigned DEFAULT '1',
  `Match_MasterID` varchar(15) DEFAULT NULL,
  `Match_GuestID` varchar(15) DEFAULT NULL,
  `Match_StopUpdate` tinyint(3) unsigned DEFAULT '0',
  `MB_Inball` varchar(5) DEFAULT NULL,
  `TG_Inball` varchar(5) DEFAULT NULL,
  `MB_Inball_HR` varchar(5) DEFAULT NULL,
  `TG_Inball_HR` varchar(5) DEFAULT NULL,
  `scorecheck` tinyint(4) DEFAULT NULL,
  `Match_halfScore` varchar(10) DEFAULT NULL,
  `Match_MatchTime` varchar(30) DEFAULT NULL,
  `Match_ShowType` varchar(2) DEFAULT 'H',
  `score_time` datetime DEFAULT NULL,
  `remark` varchar(100) DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `Match_ID` (`Match_ID`),
  KEY `Match_Date` (`Match_Date`),
  KEY `Match_Type` (`Match_Type`),
  KEY `Match_CoverDate` (`Match_CoverDate`),
  KEY `Match_Name` (`Match_Name`),
  KEY `Match_BzM` (`Match_BzM`),
  KEY `Match_StopUpdate` (`Match_StopUpdate`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bet_match
-- ----------------------------
DROP TABLE IF EXISTS `bet_match`;
CREATE TABLE `bet_match` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Match_ID` varchar(50) NOT NULL,
  `Match_HalfId` varchar(50) DEFAULT NULL,
  `Match_Date` varchar(20) DEFAULT NULL,
  `Match_Time` varchar(20) DEFAULT NULL,
  `Match_Name` varchar(50) NOT NULL,
  `Match_Master` varchar(50) NOT NULL,
  `Match_Guest` varchar(50) NOT NULL,
  `Match_IsLose` varchar(4) DEFAULT NULL,
  `Match_State` varchar(7) DEFAULT NULL,
  `Match_Type` tinyint(3) unsigned DEFAULT '1' COMMENT '1日今，0早餐',
  `Match_ShowType` varchar(1) DEFAULT NULL,
  `Match_Ho` double DEFAULT NULL,
  `Match_Ao` double DEFAULT NULL,
  `Match_RGG` varchar(15) DEFAULT NULL,
  `Match_BzM` double DEFAULT NULL,
  `Match_BzG` double DEFAULT NULL,
  `Match_BzH` double DEFAULT NULL,
  `Match_DxGG` varchar(15) DEFAULT NULL,
  `Match_DxDpl` double DEFAULT NULL,
  `Match_DxXpl` double DEFAULT NULL,
  `Match_DsDpl` double DEFAULT NULL,
  `Match_DsSpl` double DEFAULT NULL,
  `Match_BHo` double DEFAULT NULL,
  `Match_BAo` double DEFAULT NULL,
  `Match_Bdpl` double DEFAULT NULL,
  `Match_Bxpl` double DEFAULT NULL,
  `Match_Bmdy` double DEFAULT NULL,
  `Match_Bgdy` double DEFAULT NULL,
  `Match_Bhdy` double DEFAULT NULL,
  `Match_Hr_ShowType` varchar(1) DEFAULT NULL,
  `Match_BRpk` varchar(15) DEFAULT NULL,
  `Match_Bdxpk` varchar(15) DEFAULT NULL,
  `Match_Total01Pl` double DEFAULT NULL,
  `Match_Total23Pl` double DEFAULT NULL,
  `Match_Total46Pl` double DEFAULT NULL,
  `Match_Total7upPl` double DEFAULT NULL,
  `Match_BqMM` double DEFAULT NULL,
  `Match_BqMH` double DEFAULT NULL,
  `Match_BqMG` double DEFAULT NULL,
  `Match_BqHM` double DEFAULT NULL,
  `Match_BqHH` double DEFAULT NULL,
  `Match_BqHG` double DEFAULT NULL,
  `Match_BqGM` double DEFAULT NULL,
  `Match_BqGH` double DEFAULT NULL,
  `Match_BqGG` double DEFAULT NULL,
  `Match_Bd10` double DEFAULT NULL,
  `Match_Bd20` double DEFAULT NULL,
  `Match_Bd21` double DEFAULT NULL,
  `Match_Bd30` double DEFAULT NULL,
  `Match_Bd31` double DEFAULT NULL,
  `Match_Bd32` double DEFAULT NULL,
  `Match_Bd40` double DEFAULT NULL,
  `Match_Bd41` double DEFAULT NULL,
  `Match_Bd42` double DEFAULT NULL,
  `Match_Bd43` double DEFAULT NULL,
  `Match_Bd00` double DEFAULT NULL,
  `Match_Bd11` double DEFAULT NULL,
  `Match_Bd22` double DEFAULT NULL,
  `Match_Bd33` double DEFAULT NULL,
  `Match_Bd44` double DEFAULT NULL,
  `Match_Bdup5` double DEFAULT NULL,
  `Match_upScore` varchar(10) DEFAULT NULL,
  `Match_NowScore` varchar(10) DEFAULT NULL,
  `Match_OverScore` varchar(10) DEFAULT NULL,
  `Match_JS` tinyint(3) unsigned DEFAULT '0',
  `Match_Allowds` tinyint(3) unsigned DEFAULT '0',
  `Match_Allowb` tinyint(3) unsigned DEFAULT '0',
  `Match_Allowg` tinyint(3) unsigned DEFAULT '0',
  `Match_Allowt` tinyint(3) unsigned DEFAULT '0',
  `Match_Allowbq` tinyint(3) unsigned DEFAULT '0',
  `Match_Allowbd` tinyint(3) unsigned DEFAULT '0',
  `Match_Allowh` tinyint(3) unsigned DEFAULT '0',
  `Match_Allowzc` tinyint(3) unsigned DEFAULT '0',
  `Match_AddDate` datetime DEFAULT NULL,
  `Match_CoverDate` datetime DEFAULT NULL,
  `Match_IsShowds` tinyint(3) unsigned DEFAULT '1',
  `Match_IsShowb` tinyint(3) unsigned DEFAULT '1',
  `Match_IsShowg` tinyint(3) unsigned DEFAULT '1',
  `Match_IsShowt` tinyint(3) unsigned DEFAULT '1',
  `Match_IsShowbq` tinyint(3) unsigned DEFAULT '1',
  `Match_IsShowbd` tinyint(3) unsigned DEFAULT '1',
  `Match_IsShowh` tinyint(3) unsigned DEFAULT '1',
  `Match_IsShowzc` tinyint(3) unsigned DEFAULT '1',
  `Match_MasterID` varchar(15) DEFAULT NULL,
  `Match_GuestID` varchar(15) DEFAULT NULL,
  `Match_StopUpdateds` tinyint(3) unsigned DEFAULT '0',
  `Match_StopUpdateb` tinyint(3) unsigned DEFAULT '0',
  `Match_StopUpdateg` tinyint(3) unsigned DEFAULT '0',
  `Match_StopUpdatet` tinyint(3) unsigned DEFAULT '0',
  `Match_StopUpdatebq` tinyint(3) unsigned DEFAULT '0',
  `Match_StopUpdatebd` tinyint(3) unsigned DEFAULT '0',
  `Match_StopUpdateh` tinyint(3) unsigned DEFAULT '0',
  `Match_StopUpdatezc` tinyint(3) unsigned DEFAULT '0',
  `Match_Bdg10` double DEFAULT NULL,
  `Match_Bdg20` double DEFAULT NULL,
  `Match_Bdg21` double DEFAULT NULL,
  `Match_Bdg30` double DEFAULT NULL,
  `Match_Bdg31` double DEFAULT NULL,
  `Match_Bdg32` double DEFAULT NULL,
  `Match_Bdg40` double DEFAULT NULL,
  `Match_Bdg41` double DEFAULT NULL,
  `Match_Bdg42` double DEFAULT NULL,
  `Match_Bdg43` double DEFAULT NULL,
  `Match_Bdgup5` double DEFAULT NULL,
  `Match_Hr_BqMM` double DEFAULT NULL,
  `Match_Hr_BqMH` double DEFAULT NULL,
  `Match_Hr_BqMG` double DEFAULT NULL,
  `Match_Hr_BqHM` double DEFAULT NULL,
  `Match_Hr_BqHH` double DEFAULT NULL,
  `Match_Hr_BqHG` double DEFAULT NULL,
  `Match_Hr_BqGM` double DEFAULT NULL,
  `Match_Hr_BqGH` double DEFAULT NULL,
  `Match_Hr_BqGG` double DEFAULT NULL,
  `Match_Hr_Bd10` double DEFAULT NULL,
  `Match_Hr_Bd20` double DEFAULT NULL,
  `Match_Hr_Bd21` double DEFAULT NULL,
  `Match_Hr_Bd30` double DEFAULT NULL,
  `Match_Hr_Bd31` double DEFAULT NULL,
  `Match_Hr_Bd32` double DEFAULT NULL,
  `Match_Hr_Bd40` double DEFAULT NULL,
  `Match_Hr_Bd41` double DEFAULT NULL,
  `Match_Hr_Bd42` double DEFAULT NULL,
  `Match_Hr_Bd43` double DEFAULT NULL,
  `Match_Hr_Bd00` double DEFAULT NULL,
  `Match_Hr_Bd11` double DEFAULT NULL,
  `Match_Hr_Bd22` double DEFAULT NULL,
  `Match_Hr_Bd33` double DEFAULT NULL,
  `Match_Hr_Bd44` double DEFAULT NULL,
  `Match_Hr_Bdup5` double DEFAULT NULL,
  `Match_Hr_Bdg10` double DEFAULT NULL,
  `Match_Hr_Bdg20` double DEFAULT NULL,
  `Match_Hr_Bdg21` double DEFAULT NULL,
  `Match_Hr_Bdg30` double DEFAULT NULL,
  `Match_Hr_Bdg31` double DEFAULT NULL,
  `Match_Hr_Bdg32` double DEFAULT NULL,
  `Match_Hr_Bdg40` double DEFAULT NULL,
  `Match_Hr_Bdg41` double DEFAULT NULL,
  `Match_Hr_Bdg42` double DEFAULT NULL,
  `Match_Hr_Bdg43` double DEFAULT NULL,
  `Match_Hr_Bdgup5` double DEFAULT NULL,
  `Match_TypePlay` varchar(5) DEFAULT NULL,
  `Match_Allowbz` tinyint(3) unsigned DEFAULT '0',
  `Match_IsShowbz` tinyint(3) unsigned DEFAULT '1',
  `Match_StopUpdatebz` tinyint(3) unsigned DEFAULT NULL,
  `Match_Allowrq` tinyint(3) unsigned DEFAULT '0',
  `Match_IsShowrq` tinyint(3) unsigned DEFAULT '1',
  `Match_StopUpdaterq` tinyint(3) unsigned DEFAULT '0',
  `Match_AddRoll` tinyint(3) unsigned DEFAULT '0',
  `Match_MatchTime` varchar(30) DEFAULT NULL,
  `Match_HRedCard` tinyint(3) unsigned DEFAULT '0',
  `Match_GRedCard` tinyint(3) unsigned DEFAULT '0',
  `MB_Inball` int(11) DEFAULT NULL,
  `TG_Inball` int(11) DEFAULT NULL,
  `MB_Inball_HR` int(11) DEFAULT NULL,
  `TG_Inball_HR` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `ScoreCheck` int(11) DEFAULT '0',
  `Match_LstTime` datetime DEFAULT NULL,
  `iPage` int(11) DEFAULT NULL,
  `iSn` int(11) DEFAULT NULL,
  `Match_SBJS` int(1) unsigned NOT NULL DEFAULT '0',
  `score_time` datetime DEFAULT NULL,
  `remark` varchar(100) DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Match_ID` (`Match_ID`),
  KEY `IX_Bet_Match` (`Match_ID`,`Match_Type`),
  KEY `Match_HalfId` (`Match_HalfId`),
  KEY `Match_Date` (`Match_Date`),
  KEY `Match_CoverDate` (`Match_CoverDate`),
  KEY `Match_BqMM` (`Match_BqMM`),
  KEY `Match_Name` (`Match_Name`),
  KEY `Match_Type` (`Match_Type`),
  KEY `Match_IsShowbd` (`Match_IsShowbd`),
  KEY `Match_Bd21` (`Match_Bd21`),
  KEY `Match_IsShowt` (`Match_IsShowt`),
  KEY `Match_Total01Pl` (`Match_Total01Pl`),
  KEY `Match_Hr_Bd10` (`Match_Hr_Bd10`),
  KEY `Match_IsShowb` (`Match_IsShowb`),
  KEY `Match_StopUpdatebd` (`Match_StopUpdatebd`),
  KEY `Match_StopUpdatebq` (`Match_StopUpdatebq`),
  KEY `Match_StopUpdateds` (`Match_StopUpdateds`),
  KEY `Match_StopUpdatezc` (`Match_StopUpdatezc`),
  KEY `Match_StopUpdateg` (`Match_StopUpdateg`),
  KEY `Match_StopUpdatet` (`Match_StopUpdatet`),
  KEY `Match_StopUpdateb` (`Match_StopUpdateb`),
  KEY `Match_JS` (`Match_JS`),
  KEY `Match_SBJS` (`Match_SBJS`)
) ENGINE=MyISAM AUTO_INCREMENT=442 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for config_p
-- ----------------------------
DROP TABLE IF EXISTS `config_p`;
CREATE TABLE `config_p` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parameter_type` varchar(50) NOT NULL COMMENT '参数类型',
  `parameter_key` varchar(50) CHARACTER SET gbk NOT NULL COMMENT '参数键',
  `parameter_value` varchar(255) CHARACTER SET gbk NOT NULL COMMENT '参数值',
  `parameter_remark` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_p
-- ----------------------------
BEGIN;
INSERT INTO `config_p` VALUES (11, 'SYS', 'TYC_ENABLE', 'enable_true', 'enable_false 是禁用,enable_true 是启用');
INSERT INTO `config_p` VALUES (12, 'SYS', 'REGSTER_TITLE', '欢迎光临', '');
INSERT INTO `config_p` VALUES (13, 'SYS', 'REGSTER_CONTENT', '欢迎光临', '');
INSERT INTO `config_p` VALUES (14, 'SYS', 'REGSTER_ENABLE', 'enable_false', '');
COMMIT;

-- ----------------------------
-- Table structure for history_bank
-- ----------------------------
DROP TABLE IF EXISTS `history_bank`;
CREATE TABLE `history_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `pay_card` varchar(45) NOT NULL,
  `pay_num` varchar(20) NOT NULL,
  `pay_address` varchar(45) NOT NULL,
  `pay_name` varchar(20) NOT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=591 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for history_login
-- ----------------------------
DROP TABLE IF EXISTS `history_login`;
CREATE TABLE `history_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `username` varchar(45) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `www` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `ip` (`ip`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hots
-- ----------------------------
DROP TABLE IF EXISTS `hots`;
CREATE TABLE `hots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `ok` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hots
-- ----------------------------
BEGIN;
INSERT INTO `hots` VALUES (1, '<div class=\"site_container\">\r\n<div class=\"hot_container\">\r\n<div class=\"main_container\">\r\n<div class=\"main_goback\"><a href=\"javascript:click_url(\'/cl/hots.php\');\"><<返回</a></div>\r\n<div class=\"main_inner\">\r\n<div class=\"main_inner_l fl\"><img src=\"/cl/tpl/pujing/images/h1.jpg\"></div>\r\n<div class=\"main_inner_r fl\">\r\n<div class=\"hot_title\">【成功并购 赠送礼金】<p>&nbsp;老会员人人有，赶快来领取、新会员存款即送彩金</div>\r\n<p>活动时间：2014年12月15日 <br>\r\n  活动时间：（北京时间）2015年1月1日中午12点起 <br>\r\n  结束时间：以澳门新葡京娱乐场官网通知为准 </p>\r\n<h2>活动内容</h2>\r\n<p>\r\n澳门新葡京娱乐场.我们为全世界各地提供激情四射的在线游戏深受玩家们的信赖，因为我们深知每一个玩家对我们都是非常重要，因此在此次并购成功之际，我们将为所有的老会员准备一份好礼，凡是在12月15日之前注册的会员并且有过任意存款记录都能直接获得澳门新葡京娱乐场给你准备的现金好礼。在您百忙之中别忘记来澳门新葡京娱乐场领取属于您的那份现金红礼！</p>\r\n\r\n<table border=\"1\" cellspacing=\"1\" cellpadding=\"1\" width=\"100%\" bgcolor=\"#f5f5f5\" bordercolor=\"#d0d0d0\">\r\n  <tr>\r\n    <td width=\"645\" colspan=\"4\" bgcolor=\"#FF6600\">\r\n	<p align=\"center\"><font color=\"#FFFFFF\">庆祝 【澳门新葡京娱乐场】 成功并购 \r\n	【澳门会娱乐城】我们将为所有的老会员准备一份从未有过 礼金</font></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"645\" colspan=\"4\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">\r\n	更多惊喜重在【追加彩金】欢迎新老会员多多参与！ </p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"397\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">存款金额 </p></td>\r\n    <td width=\"227\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">赠送礼金 </p></td>\r\n    <td width=\"441\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">\r\n	领取礼金当天(新老会员)首次存款 </p></td>\r\n    <td width=\"226\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">追加彩金 </p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"397\" bgcolor=\"#FFFFFF\"><p align=\"center\">100元以上 </p></td>\r\n    <td width=\"227\" bgcolor=\"#FFFFFF\"><p align=\"center\">20元 </p></td>\r\n    <td width=\"441\" bgcolor=\"#FFFFFF\"><p align=\"center\">500以上 </p></td>\r\n    <td width=\"226\" bgcolor=\"#FFFFFF\"><p align=\"center\">20元</p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"397\" bgcolor=\"#FFFFFF\">\r\n	<p align=\"center\">3千元以上</td>\r\n    <td width=\"227\" bgcolor=\"#FFFFFF\">\r\n	<p align=\"center\">38元</td>\r\n    <td width=\"441\" bgcolor=\"#FFFFFF\">\r\n	<p align=\"center\">1000以上</td>\r\n    <td width=\"226\" bgcolor=\"#FFFFFF\">\r\n	<p align=\"center\">30元</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"397\" bgcolor=\"#FFFFFF\" height=\"34\"><p align=\"center\">1万或以上 </p></td>\r\n    <td width=\"227\" bgcolor=\"#FFFFFF\" height=\"34\"><p align=\"center\">88元 </p></td>\r\n    <td width=\"441\" bgcolor=\"#FFFFFF\" height=\"34\"><p align=\"center\">2000以上 </p></td>\r\n    <td width=\"226\" bgcolor=\"#FFFFFF\" height=\"34\"><p align=\"center\">50元</p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"397\" bgcolor=\"#FFFFFF\">\r\n	<p align=\"center\">5万或以上</td>\r\n    <td width=\"227\" bgcolor=\"#FFFFFF\">\r\n	<p align=\"center\">128元</td>\r\n    <td width=\"441\" bgcolor=\"#FFFFFF\">\r\n	<p align=\"center\">5000以上 </td>\r\n    <td width=\"226\" bgcolor=\"#FFFFFF\">\r\n	<p align=\"center\">100元</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"397\" bgcolor=\"#FFFFFF\"><p align=\"center\">10万或以上 </p></td>\r\n    <td width=\"227\" bgcolor=\"#FFFFFF\"><p align=\"center\">198元 </p></td>\r\n    <td width=\"441\" bgcolor=\"#FFFFFF\"><p align=\"center\">8000以上 </p></td>\r\n    <td width=\"226\" bgcolor=\"#FFFFFF\"><p align=\"center\">200元</p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"397\" bgcolor=\"#FFFFFF\"><p align=\"center\">30万或以上 </p></td>\r\n    <td width=\"227\" bgcolor=\"#FFFFFF\"><p align=\"center\">288元 </p></td>\r\n    <td width=\"441\" bgcolor=\"#FFFFFF\"><p align=\"center\">10000以上 </p></td>\r\n    <td width=\"226\" bgcolor=\"#FFFFFF\"><p align=\"center\">300元</p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"397\" bgcolor=\"#FFFFFF\"><p align=\"center\">50万或以上 </p></td>\r\n    <td width=\"227\" bgcolor=\"#FFFFFF\"><p align=\"center\">388元 </p></td>\r\n    <td width=\"441\" bgcolor=\"#FFFFFF\"><p align=\"center\">30000以上 </p></td>\r\n    <td width=\"226\" bgcolor=\"#FFFFFF\"><p align=\"center\">600元</p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"397\" bgcolor=\"#FFFFFF\"><p align=\"center\">80万或以上 </p></td>\r\n    <td width=\"227\" bgcolor=\"#FFFFFF\"><p align=\"center\">488元 </p></td>\r\n    <td width=\"441\" bgcolor=\"#FFFFFF\"><p align=\"center\">50000以上 </p></td>\r\n    <td width=\"226\" bgcolor=\"#FFFFFF\"><p align=\"center\">1000元</p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"397\" bgcolor=\"#FFFFFF\"><p align=\"center\">100万或以上 </p></td>\r\n    <td width=\"227\" bgcolor=\"#FFFFFF\"><p align=\"center\">888元 </p></td>\r\n    <td width=\"441\" bgcolor=\"#FFFFFF\"><p align=\"center\">100000以上 </p></td>\r\n    <td width=\"226\" bgcolor=\"#FFFFFF\"><p align=\"center\">2000元</p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"397\" bgcolor=\"#FFFFFF\"><p align=\"center\">500万或以上 </p></td>\r\n    <td width=\"227\" bgcolor=\"#FFFFFF\"><p align=\"center\">1388元 </p></td>\r\n    <td width=\"441\" bgcolor=\"#FFFFFF\"><p align=\"center\">500000以上 </p></td>\r\n    <td width=\"226\" bgcolor=\"#FFFFFF\"><p align=\"center\">5000元</p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"397\" bgcolor=\"#FFFFFF\"><p align=\"center\">1000万或以上 </p></td>\r\n    <td width=\"227\" bgcolor=\"#FFFFFF\"><p align=\"center\">2888元 </p></td>\r\n    <td width=\"441\" bgcolor=\"#FFFFFF\"><p align=\"center\">1000000以上 </p></td>\r\n    <td width=\"226\" bgcolor=\"#FFFFFF\"><p align=\"center\">20000元</p></td>\r\n  </tr>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>注意：存款金额的计算日期截止至2014年12月15日23:59:59（美东时间）之后的存款不予计算 <br>\r\n  凡在12月15日之后存款的会员，就有机会参与我们为你派送的彩金，为感谢新老会员的支持，澳门新葡京娱乐场将不定期举行类似的回馈活动，以表达对新老会员的感恩。 </p>\r\n<h2>会员申请</h2>\r\n<p>老会员回馈礼金:凡是在2014年12月15日23:59:59（美东时间）之前有过存款记录的会员都可以享受有我公司为你准备的回馈礼金。 <br>\r\n  请联系24小时在线客服【礼金发放专员】核实身份领取 <br>\r\n  有情提醒：请务必填写真实有效的联系方式，我们随机进行电话回访的核对信息后为你派发，届时请你务必耐心等待，由于同时申请“礼金”的老会员人数众多，我们将以最快的速度进行办理，预计最迟办理时间为24小时。 </p>\r\n<p>&nbsp;</p>\r\n<h2>活动条款</h2>\r\n<p align=\"left\">\r\n1、所有礼金均只需1倍流水可申请提款。 <br>\r\n2、务必填写真实有效的联系方式以免影响其办理,如提供无效的联系方式,公司有权利不给予办理“礼金”  <br>\r\n3、澳门新葡京娱乐场在会员有重复申请账号套取红利行为时,保留取消，回收会员赠送红利甚至没收其会员账号余额的权利  <br>\r\n4、每位会员、每一个相同IP、每一电子邮箱、每一个相同的电话号码、相同的支付方式（借记卡/银行帐户/信用卡）及共享计算机环境（例：网吧、其他公共用计算机等）只能拥有一个会员红利派送。 <br>\r\n  5、所有澳门新葡京娱乐场的赠送红利是特别为玩家而设，在玩家注册资讯有争议时，为确保双方利益，杜绝身份盗用行为，澳门新葡京娱乐场保留权利要求客户向我们提供充足有效的证件资料，并以各种方式辨别客户是否合资格享有我们赠送的红利。 <br>\r\n  5澳门新葡京娱乐场保留所有权利在任何时候可以更改、停止、取消赠送红利活动。 </p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"cl\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n ', NULL);
INSERT INTO `hots` VALUES (2, '<div class=\"site_container\">\r\n<div class=\"hot_container\">\r\n<div class=\"main_container\">\r\n<div class=\"main_goback\"><a href=\"javascript:click_url(\'/cl/hots.php\');\"><<返回</a></div>\r\n<div class=\"main_inner\">\r\n<div class=\"main_inner_l fl\"><img src=\"/cl/tpl/pujing/images/h5.jpg\"></div>\r\n<div class=\"main_inner_r fl\">\r\n<div class=\"hot_title\">存款即可参与抽奖最高18888元送给你、水果拉霸抽奖华丽登场 天上掉馅饼不再是梦想</div>\r\n<p>活动时间 <br>\r\n  活动时间：（北京时间）2014年12月15日中午12点起 <br>\r\n  结束时间：以澳门新葡京娱乐场官网通知为准 </p>\r\n<h2>活动流程</h2>\r\n<ol>\r\n  <li>1、会员在美东时间第一部存款后，即可参加水果拉霸抽奖； </li>\r\n  <li>2、抽奖的次数取决于您的存款额度，单笔100元以上可参与一次抽奖，单笔3200元以上可参与2次抽奖，单笔12000元以上可参与3次抽奖，单笔32000元以上可参与5次抽奖； </li>\r\n</ol>\r\n<ol>\r\n  <li>3、会员在成功存款后，点击BBIN电子游戏一选择老虎机一选择单线一进入水果拉霸游戏。您有几次抽奖机会，您就进行几次拉霸【如果您有 1次抽奖机会，则以您当天存款后水果拉霸第1个注单作为税奖凭证，以此类推】 </li>\r\n</ol>\r\n<ol>\r\n  <li>4、查询记录方式：点击会员中心一选择交易记录一点击电子游艺一再点击下注金额即可查看记录； </li>\r\n  <li>5、您的存款可以玩任何游戏，水果拉霸只是用于抽奖。 </li>\r\n</ol>\r\n\r\n <h2>活动规则</h2>\r\n <ol>\r\n   <li>彩金只需一倍流水即可取款； </li>\r\n   <li>需要有3次以上存款记录，且以往存款金额不低于600元的会员才能参与本活动； </li>\r\n   <li>每个会员每个ip当日最多仅限5次抽奖，如当日进行两笔存款，则无论金额多少，按照当日第一笔存款金额度来决定抽奖的次数；【如当日 </li>\r\n </ol>\r\n <p>有两笔存款，第一笔100元，第二笔10000元，则当日也是仅有一次拉霸抽奖】 </p>\r\n <ol>\r\n   <li>必须是美东时间第一笔存款，且需要在存款后才可以抽奖，【北京时间的中午的12点到次日中午的12点为美东时间的一天】 </li>\r\n   <li>当天的注单只能当天申请，逾期视为放弃中奖资格，任何因素被取消的注单不被计算在内； </li>\r\n   <li>申请方式：会员在确定中奖后，即可联系24小时在线客服或者发送邮件至xpj13000@gmail.com申请，活动专员会在10分钟内审核注单并回复邮件给于兑奖；</li>\r\n </ol>\r\n <p>邮件格式 <br>\r\n   邮件标题：申请澳门新葡京娱乐场拉霸抽奖彩金 <br>\r\n   邮件内容：会员帐号****姓名***手机***下注单号***</p>\r\n<p>&nbsp;</p>\r\n<h2>彩金对应表</h2>\r\n<p><img src=\"/cl/tpl/pujing/images/hotpic.jpg\" width=\"497\" height=\"412\"></p>\r\n<h2>活动声明</h2>\r\n<p>1、任何团体或个人，以不诚实方式套取红利、图利等行为，澳门新葡京娱乐场有权利取消会员的账号及账户余额</p>\r\n<p>2、玩家不可以使用多账户参与本次活动，凡同一ip地址、同一姓名、同一银行账户，同一联系方式，同一邮箱、同一电脑均视为同一账户，澳门 \r\n  会线上在会员重复申请会员账号时，保留取消，收回会员相关优惠、没收其会员账号余额的权利； <br>\r\n  3.本活动最终解释权归属澳门新葡京娱乐场所有，并保留修改以上条款的最终权利。 </p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"cl\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n ', NULL);
INSERT INTO `hots` VALUES (3, '<div class=\"site_container\">\r\n<div class=\"hot_container\">\r\n<div class=\"main_container\">\r\n<div class=\"main_goback\"><a href=\"javascript:click_url(\'/cl/hots.php\');\"><<返回</a></div>\r\n<div class=\"main_inner\">\r\n<div class=\"main_inner_l fl\"><img src=\"/cl/tpl/pujing/images/h7.jpg\"></div>\r\n<div class=\"main_inner_r fl\">\r\n<div class=\"hot_title\">公司入款贴心回馈  1.2%  奖金无上限</div>\r\n<h2>入款步骤</h2>\r\n<p>登入会员账号→点击“线上存款”→点击“使用公司入款” 按照提示通过网银转账、ATM现金存款、柜台现金存款以及手机银行转账充值100元以上到公司指定用户账户上、即可享受  存款金额1.2%的额外奖金 \r\n</p>\r\n<h2>优惠条款</h2>\r\n<p>1、请每次存款之前先登入会员账号查询公司最新入款账号、如存入过期账号、恕不负责。</p>\r\n<p>2、入款优惠无需申请、提交存款后自动添加到会员账户。  </p>\r\n<p>3、任何团体或个人、以及不诚实方式套取红利等行为、账号及账户余额将被取消。  </p>\r\n<p>4、澳门新葡京娱乐场保留对活动修改订正、最终解 释权、与在无通知情况下改变本次活动权利。 </p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"cl\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n ', NULL);
INSERT INTO `hots` VALUES (4, '<div class=\"site_container\">\r\n<div class=\"hot_container\">\r\n<div class=\"main_container\">\r\n<div class=\"main_goback\"><a href=\"javascript:click_url(\'/cl/hots.php\');\"><<返回</a></div>\r\n<div class=\"main_inner\">\r\n<div class=\"main_inner_l fl\"><img src=\"/cl/tpl/pujing/images/h6.jpg\"></div>\r\n<div class=\"main_inner_r fl\">\r\n<div class=\"hot_title\">\r\n电子游艺 获取每日连续作战奖金\r\n</div>\r\n<p>\r\n活动时间：全年度活动\r\n</p>\r\n<p>\r\n活动地点：仅限BBIN旗舰厅</p>\r\n<p>活动对象：澳门新葡京娱乐场会员  </p>\r\n<p>活动内容：重温经典的97拉霸，转动老虎机，在电子游艺完成指定关卡，即可申请连续作战彩金。连续6天完成指定关卡更有最高588元彩金让您锦上添花！ </p>\r\n<h2>活动方式</h2>\r\n<table border=\"1\" cellspacing=\"1\" cellpadding=\"1\" width=\"100%\" bgcolor=\"#f5f5f5\" bordercolor=\"#d0d0d0\">\r\n  <tr>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#663366\"><p align=\"center\" style=\"color:#fff;\"> 专题完成 </p></td>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#663366\"><p align=\"center\" style=\"color:#fff;\">每款游戏有效投注 </p></td>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#663366\"><p align=\"center\" style=\"color:#fff;\">赠送彩金 </p></td>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#663366\"><p align=\"center\" style=\"color:#fff;\">连续关卡天数 </p></td>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#663366\"><p align=\"center\" style=\"color:#fff;\">可获彩金 </p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">13款游戏 </p></td>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">100</p></td>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">100</p></td>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">6天 </p></td>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">188</p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">26款游戏 </p></td>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">200</p></td>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">200</p></td>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">6天 </p></td>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">288</p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">39款游戏 </p></td>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">500</p></td>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">500</p></td>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">6天 </p></td>\r\n    <td width=\"20%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">588</p></td>\r\n  </tr>\r\n</table>\r\n<p>&nbsp;</p>\r\n <h2>领取方式</h2>\r\n<p>会员在达到要求后、联系24小时在线客服、申请电子游艺 连续作战彩金 ，专员会在24小时内会为您添加彩金。</p>\r\n<p>申请格式： </p>\r\n<p>主题：申请电子游艺 连续作战彩金 </p>\r\n<p>内容：会员账号:XXXX    姓名：XXX     电话号码：13XXXXX666lb</p>\r\n<p>           在美东时间X月X日内，完成39项游戏，申请500元彩金。 </p>\r\n<h2>活动规则</h2>\r\n<p>1.仅限BBIN旗舰厅。 </p>\r\n<p>2.电子游艺所有彩金只需一倍流水即可提款。</p>\r\n<p>3.此优惠活动只适用于同一位客户, 同一台计算机, 同一个住址和IP地址。 </p>\r\n<p>4.任何团体或个人，以不诚实方式套取红利、图利的行为，账号及账户余额将被取消。 </p>\r\n<p>5.澳门新葡京娱乐场保留随时终止此活动的权利，并不作提前通知。 </p>\r\n<p>6.欢迎您随时查看澳门新葡京娱乐场WWW.13000.COM优惠活动专栏，及时了解更多优惠，发现更多惊喜。 </p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"cl\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n         \r\n<div class=\"site_container\">\r\n<div class=\"hot_container\">\r\n<div class=\"main_container\">\r\n<div class=\"main_goback\"><a href=\"javascript:click_url(\'/cl/hots.php\');\"><<返回</a></div>\r\n<div class=\"main_inner\">\r\n<div class=\"main_inner_l fl\"><img src=\"/cl/tpl/pujing/images/h8.jpg\"></div>\r\n<div class=\"main_inner_r fl\">\r\n<div class=\"hot_title\">开户送惊喜   最高可达8888</div>\r\n<h2>活动方法</h2>\r\n<table border=\"1\" cellspacing=\"1\" cellpadding=\"1\" width=\"100%\" bgcolor=\"#f5f5f5\" bordercolor=\"#d0d0d0\">\r\n  <tr>\r\n    <td width=\"25%\" valign=\"top\" bgcolor=\"#663366\"><p align=\"center\" style=\"color:#fff;\">首次存款 </p></td>\r\n    <td width=\"25%\" valign=\"top\" bgcolor=\"#663366\"><p align=\"center\" style=\"color:#fff;\">回馈比例 </p></td>\r\n    <td width=\"25%\" valign=\"top\" bgcolor=\"#663366\"><p align=\"center\" style=\"color:#fff;\">最高赠送 </p></td>\r\n    <td width=\"25%\" valign=\"top\" bgcolor=\"#663366\"><p align=\"center\" style=\"color:#fff;\">流水倍数 </p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"25%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">100元 </p></td>\r\n    <td width=\"25%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">30%</p></td>\r\n    <td width=\"25%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">8888</p></td>\r\n    <td width=\"25%\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">20</p></td>\r\n  </tr>\r\n</table>\r\n<p>一：范例1：首次存款2000元、赠送600元、有效投注（2000+600）*20=52000即可申请提款 <br>\r\n  二：会员在成功注册并一次性存款后即可联系24小时在线客服申请 <br>\r\n  三：申请彩金必须在存款后未进行任何投注的情况下联系24小时在线客服申请并直点彩金加后方可投注否则将视为会员自动放弃此优惠 </p>\r\n<h2>优惠规则</h2>\r\n<p>\r\n1、每位一个会员账号每一个相同IP地址每一个用户只可获得一次申请。</p>\r\n<p> 2、如果选择获取优惠、需达到首次存款+存款的优惠的流水倍数方可申请提款、财务保留权限、审核、无论是团体或个人、如有任何威胁滥用新葡京娱乐城的优惠行为经财务审核、新葡京娱乐城保留取消、收回优惠以及优惠产生的盈利的权利。  </p>\r\n<p>3、任何出现对打情况的投注（例：在双面结果游戏中同时投注：单双.大小.闲庄.黑红.龙虎等.轮盘游戏中同时下注2打以上.2例以上.折合号码不得超过24个.体育注单中不得对冲.彩票游戏中投注号码超过3分之2等.注单号违规者取消返水资格。任何无风险投注皆不计算在有效投注内。 <br>\r\n  4、同一客户使用多账户套取红利，同一IP登录多个帐号，多账号使用同一银行账户，通过VPN注册和登陆多个账号进行套利及软件投注者。若一经查实，封号，封IP，冻结所有资金，取消所有盈利及红利。 <br>\r\n  5、澳门新葡京娱乐场所有优惠特为玩家而设，在玩家注册资讯有争议时，为确保双方利益，杜绝身份盗用行为，澳门新葡京娱乐场有权要求会员向我们提供充足有效的文件，用以确认是否享有该优惠的资质。 <br>\r\n  6、澳门新葡京娱乐场保留对活动修改订正、最终解 释权、与在无通知情况下改变本次活动权利。 </p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"cl\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>   \r\n ', NULL);
INSERT INTO `hots` VALUES (5, '    \r\n<div class=\"site_container\">\r\n<div class=\"hot_container\">\r\n<div class=\"main_container\">\r\n<div class=\"main_goback\"><a href=\"javascript:GoTo(\'1\',\'Hot\');\"><<返回</a></div>\r\n<div class=\"main_inner\">\r\n<div class=\"main_inner_l fl\"><img src=\"/cl/tpl/pujing/images/h4.jpg\"></div>\r\n<div class=\"main_inner_r fl\">\r\n<div class=\"hot_title\">非同返享 不计输赢 投注1元起天天返水最高3.0无上限\r\n</div>\r\n<h2>等级说明</h2>\r\n<table border=\"1\" cellspacing=\"1\" cellpadding=\"1\" width=\"100%\" bgcolor=\"#f5f5f5\" bordercolor=\"#d0d0d0\">\r\n  <tr>\r\n    <td width=\"25%\" valign=\"top\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">会员级别 </p></td>\r\n    <td width=\"15%\" valign=\"top\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">有效投注 </p></td>\r\n    <td width=\"15%\" valign=\"top\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">真人视讯 </p></td>\r\n    <td width=\"15%\" valign=\"top\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">电子游艺 </p></td>\r\n    <td width=\"15%\" valign=\"top\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">彩票游戏 </p></td>\r\n    <td width=\"15%\" valign=\"top\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">体育赛事 </p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"25%\" valign=\"top\"><p align=\"center\">普通会员 </p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1元起 </p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1.0%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1.0%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">0.6%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">0.6%</p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"25%\" valign=\"top\"><p align=\"center\">黄金VIP</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1元起 </p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1.1%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1.1%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">0.7%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">0.7%</p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"25%\" valign=\"top\"><p align=\"center\">白金VIP</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1元起 </p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">2.0%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">2.0%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1.0%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1.0%</p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"25%\" valign=\"top\"><p align=\"center\">钻石VIP</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1元起 </p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">3.0%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">3.0%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1.0%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1.0%</p></td>\r\n  </tr>\r\n</table>\r\n\r\n<h2>活动声明</h2>\r\n<p>1、本优惠可与其它优惠活动申请并用。 <br>\r\n  2、新老会ID员日投注1元起、皆可享受：体育赛事、真人视讯、电子游艺、彩票游戏最高无上线返点回馈！ <br>\r\n  3、会员无需提出申请、返水额度将在香港时间每日下午13:00-18:00时自动加入会员账号。 <br>\r\n  4：所有返点优惠、只需经过全额投注即可提款。                                                                   <br>\r\n  5、任何出现对打情况的投注（例：在双面结果游戏中同时投注：单双.大小.闲庄.黑红.龙虎等.轮盘游戏中同时下注2打以上.2例以上.折合号码不得超过24个.体育注单中不得对冲.彩票游戏中投注号码超过3分之2等.注单号违规者取消返水资格。任何无风险投注皆不计算在有效投注内。 <br>\r\n  6、同一客户使用多账户套取红利，同一IP登录多个帐号，多账号使用同一银行账户，通过VPN注册和登陆多个账号进行套利及软件投注者。若一经查实，封号，封IP，冻结所有资金，取消所有盈利及红利。 <br>\r\n  7、澳门新葡京娱乐场所有优惠特为玩家而设，在玩家注册资讯有争议时，为确保双方利益，杜绝身份盗用行为，澳门新葡京娱乐场有权要求会员向我们提供充足有效的文件，用以确认是否享有该优惠的资质。 <br>\r\n  8、澳门新葡京娱乐场保留对活动修改订正、最终解 释权、与在无通知情况下改变本次活动权利。 </p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"cl\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>    \r\n        \r\n ', NULL);
INSERT INTO `hots` VALUES (6, '    \r\n<div class=\"site_container\">\r\n<div class=\"hot_container\">\r\n<div class=\"main_container\">\r\n<div class=\"main_goback\"><a href=\"javascript:click_url(\'/cl/hots.php\');\"><<返回</a></div>\r\n<div class=\"main_inner\">\r\n<div class=\"main_inner_l fl\"><img src=\"/cl/tpl/pujing/images/h4.jpg\"></div>\r\n<div class=\"main_inner_r fl\">\r\n<div class=\"hot_title\">非同返享 不计输赢 投注1元起天天返水最高3.0无上限\r\n</div>\r\n<h2>等级说明</h2>\r\n<table border=\"1\" cellspacing=\"1\" cellpadding=\"1\" width=\"100%\" bgcolor=\"#f5f5f5\" bordercolor=\"#d0d0d0\">\r\n  <tr>\r\n    <td width=\"25%\" valign=\"top\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">会员级别 </p></td>\r\n    <td width=\"15%\" valign=\"top\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">有效投注 </p></td>\r\n    <td width=\"15%\" valign=\"top\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">真人视讯 </p></td>\r\n    <td width=\"15%\" valign=\"top\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">电子游艺 </p></td>\r\n    <td width=\"15%\" valign=\"top\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">彩票游戏 </p></td>\r\n    <td width=\"15%\" valign=\"top\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">体育赛事 </p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"25%\" valign=\"top\"><p align=\"center\">普通会员 </p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1元起 </p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1.0%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1.0%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">0.6%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">0.6%</p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"25%\" valign=\"top\"><p align=\"center\">黄金VIP</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1元起 </p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1.1%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1.1%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">0.7%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">0.7%</p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"25%\" valign=\"top\"><p align=\"center\">白金VIP</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1元起 </p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">2.0%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">2.0%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1.0%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1.0%</p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"25%\" valign=\"top\"><p align=\"center\">钻石VIP</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1元起 </p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">3.0%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">3.0%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1.0%</p></td>\r\n    <td width=\"15%\" valign=\"top\"><p align=\"center\">1.0%</p></td>\r\n  </tr>\r\n</table>\r\n\r\n<h2>活动声明</h2>\r\n<p>1、本优惠可与其它优惠活动申请并用。 <br>\r\n  2、新老会ID员日投注1元起、皆可享受：体育赛事、真人视讯、电子游艺、彩票游戏最高无上线返点回馈！ <br>\r\n  3、会员无需提出申请、返水额度将在香港时间每日下午13:00-18:00时自动加入会员账号。 <br>\r\n  4：所有返点优惠、只需经过全额投注即可提款。                                                                   <br>\r\n  5、任何出现对打情况的投注（例：在双面结果游戏中同时投注：单双.大小.闲庄.黑红.龙虎等.轮盘游戏中同时下注2打以上.2例以上.折合号码不得超过24个.体育注单中不得对冲.彩票游戏中投注号码超过3分之2等.注单号违规者取消返水资格。任何无风险投注皆不计算在有效投注内。 <br>\r\n  6、同一客户使用多账户套取红利，同一IP登录多个帐号，多账号使用同一银行账户，通过VPN注册和登陆多个账号进行套利及软件投注者。若一经查实，封号，封IP，冻结所有资金，取消所有盈利及红利。 <br>\r\n  7、澳门新葡京娱乐场所有优惠特为玩家而设，在玩家注册资讯有争议时，为确保双方利益，杜绝身份盗用行为，澳门新葡京娱乐场有权要求会员向我们提供充足有效的文件，用以确认是否享有该优惠的资质。 <br>\r\n  8、澳门新葡京娱乐场保留对活动修改订正、最终解 释权、与在无通知情况下改变本次活动权利。 </p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"cl\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>    \r\n        \r\n ', NULL);
INSERT INTO `hots` VALUES (7, '         \r\n<div class=\"site_container\">\r\n<div class=\"hot_container\">\r\n<div class=\"main_container\">\r\n<div class=\"main_goback\"><a href=\"javascript:click_url(\'/cl/hots.php\');\"><<返回</a></div>\r\n<div class=\"main_inner\">\r\n<div class=\"main_inner_l fl\"><img src=\"/cl/tpl/pujing/images/h3.jpg\"></div>\r\n<div class=\"main_inner_r fl\">\r\n<div class=\"hot_title\">比章鱼哥还精准？好“胆”你就来，波胆竞猜盈利加奖100%\r\n</div>\r\n<p>\r\n活动时间：2014年12月15日开始（美东时间）\r\n\r\n</p>\r\n<p>活动对象：新葡京娱乐场所有会员  </p>\r\n<p>活动内容：焦聚五大联赛，好“胆”你就来，波胆竞猜盈利加奖100%！ </p>\r\n<h2>活动办法</h2>\r\n<p>会员在开赛前投注所选定的赛事，并猜中全场赛事的最终比分，即可分别获得每场注单盈利的100%的奖励，每场可享最高人民币58元。（连串过关与滚球的注单不予参加此优惠活动，单场赛事波胆投注不能超过两个比分结果，否则不能参加此优惠活动） </p>\r\n<p>举例: 如果会员下注球队A. 下注竞猜球队A: 2-B:0, 赔率=3, 下注本金人民币50. 如果球队A 2-0获胜, 那会员可以赢得的奖金=盈利奖金x100%=(人民币50x (3-1))x100%=人民币100元(最高58)。 </p>\r\n<h2>申请奖金方式</h2>\r\n<p>1：赛事结束后，会员若猜中赛事的最终比分，请使用注册邮箱发送邮件至xpj13000@gmail.com 提交注单。 <br>\r\n  邮件主题：波胆竞猜活动 内容注明：新葡京账户ID和 盈利注单编号 <br>\r\n  2：奖金申请邮件的截止时间为赛事结束后的48小时之内提交申请，超过截止时间的未申请者，则视同放弃申请奖金。 <br>\r\n  3：此活动每笔注单需在50元或者以上方可参与！:<br>\r\n  4：奖金将会在申请通过审核后的24小时内，注入会员的游戏账户。 <br>\r\n  5：奖金注入后，会员须使用此返水奖金有效投注至少达到1倍后，方可申请提款。在打入奖金的15天内如没有完成此奖金的最低投注, 此奖金和奖金带来的营利将被扣除。:<br>\r\n  6：此竞猜优惠可与现行的其它优惠同时使用。 <br>\r\n  7：新葡京娱乐场保留所有权利在任何时候都可以更改、停止、取消优惠活动；同时欢迎玩家及时查阅新葡京娱乐场 www.13000.com的最新优惠活动，乐享最新优惠！ </p>\r\n</div>\r\n<div class=\"cl\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>   \r\n ', NULL);
INSERT INTO `hots` VALUES (8, '         \r\n<div class=\"site_container\">\r\n<div class=\"hot_container\">\r\n<div class=\"main_container\">\r\n<div class=\"main_goback\"><a href=\"javascript:click_url(\'/cl/hots.php\');\"><<返回</a></div>\r\n<div class=\"main_inner\">\r\n<div class=\"main_inner_l fl\"><img src=\"/cl/tpl/pujing/images/h2.jpg\"></div>\r\n<div class=\"main_inner_r fl\">\r\n<div class=\"hot_title\">【经典老虎机】你敢玩我们就敢送.天天打老虎.澳门新葡京娱乐场给您最多的欢乐时光</div>\r\n<p>活动时间：2014年12月10日\r\n</p>\r\n<p>活动地点：仅限BBIN旗舰厅</p>\r\n<p>起始时间：（北京时间）2014年12月11日中午12点起 </p>\r\n<p>结束时间：以澳门新葡京娱乐场官网通知为准 </p>\r\n<h2>活动内容</h2>\r\n<table border=\"1\" cellspacing=\"1\" cellpadding=\"1\" width=\"100%\" bgcolor=\"#f5f5f5\" bordercolor=\"#d0d0d0\">\r\n  <tr>\r\n    <td width=\"102\" valign=\"top\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">日存款金额 </p></td>\r\n    <td width=\"212\" valign=\"top\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\"><strong>总计日有效投注</strong></p></td>\r\n    <td width=\"103\" valign=\"top\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">获得彩金 </p></td>\r\n    <td width=\"159\" valign=\"top\" bgcolor=\"#660033\"><p align=\"center\" style=\"color:#fff\">彩金流水 </p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"102\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">5000元 </p></td>\r\n    <td width=\"212\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">10000元 </p></td>\r\n    <td width=\"103\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">188</p></td>\r\n    <td width=\"159\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">1倍 </p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"102\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">10000元 </p></td>\r\n    <td width=\"212\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">20000元 </p></td>\r\n    <td width=\"103\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">288</p></td>\r\n    <td width=\"159\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">1倍 </p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"102\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">20000元 </p></td>\r\n    <td width=\"212\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">40000元 </p></td>\r\n    <td width=\"103\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">388</p></td>\r\n    <td width=\"159\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">1倍 </p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"102\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">50000元 </p></td>\r\n    <td width=\"212\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">100000元 </p></td>\r\n    <td width=\"103\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">588</p></td>\r\n    <td width=\"159\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">1倍 </p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"102\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">100000元 </p></td>\r\n    <td width=\"212\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">200000元 </p></td>\r\n    <td width=\"103\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">1888</p></td>\r\n    <td width=\"159\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">1倍 </p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"102\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">300000元 </p></td>\r\n    <td width=\"212\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">600000元 </p></td>\r\n    <td width=\"103\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">2388</p></td>\r\n    <td width=\"159\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">1倍 </p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"102\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">1000000元 </p></td>\r\n    <td width=\"212\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">2000000元 </p></td>\r\n    <td width=\"103\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">5888</p></td>\r\n    <td width=\"159\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">1倍 </p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"102\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">3000000元 </p></td>\r\n    <td width=\"212\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">6000000元 </p></td>\r\n    <td width=\"103\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">10888</p></td>\r\n    <td width=\"159\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">1倍 </p></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"102\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">5000000元 </p></td>\r\n    <td width=\"212\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">10000000元 </p></td>\r\n    <td width=\"103\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">58888</p></td>\r\n    <td width=\"159\" valign=\"top\" bgcolor=\"#FFFFFF\"><p align=\"center\">1倍 </p></td>\r\n  </tr>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>统计时间：北京时间中午12:00至次日中午12:00结算 <br>\r\n  温馨提示：参与&ldquo;经典老虎机&rdquo;的会员，需满足相应日存款金额和日有效投注方可申请。（仅限BBIN旗舰厅） <br>\r\n  会员确定达到要求后，请于北京时间次日中午12点至下午6点内联系24小时在线客服进行申请。审核通过后财务会将相应彩金添加到您的游戏账号上。 </p>\r\n<h2>活动规则</h2>\r\n<p>仅限BBIN旗舰厅</p>\r\n<p>所有彩金只需1倍下注即可提现，每个会员每天只能申请一次。 <br>\r\n  申请&ldquo;经典老虎机&rdquo;会员联系24小时在线客服后系统会在10-30分钟内为您添加彩金，符合活动条件会员需在北京时间次日早上12点至下午6点内联系，逾期视为放弃。 </p>\r\n<p>&nbsp;</p>\r\n<h2>声明条款</h2>\r\n<p>1、任何出现对打情况的投注（例：在双面结果游戏中同时投注：单双.大小.闲庄.黑红.龙虎等.轮盘游戏中同时下注2打以上.2例以上.折合号码不得超过24个.体育注单中不得对冲.彩票游戏中投注号码超过3分之2等.注单号违规者取消返水资格。任何无风险投注皆不计算在有效投注内。 <br>\r\n  2、同一客户使用多账户套取红利，同一IP登录多个帐号，多账号使用同一银行账户，通过VPN注册和登陆多个账号进行套利及软件投注者。若一经查实，封号，封IP，冻结所有资金，取消所有盈利及红利。 <br>\r\n  3、每位会员、每一个相同IP、每一电子邮箱、每一个相同的电话号码、相同的支付方式（借记卡/银行帐户/信用卡）及共享计算机环境（例：网吧、其他公共用计算机等）只能享有一次优惠、若会员有重复申请帐号行为、公司保留或收回会员优惠彩金的权利。 <br>\r\n  澳门新葡京娱乐场所有优惠特为玩家而设，如发现任何团体或个人、以不诚实方式套取红利或任何威胁、滥用公司优惠等行为，公司保留冻结、取消该团体或个人帐号及帐号结余的权利。 <br>\r\n  若会员对活动有争议时，为确保双方利益，杜绝身份盗用行为，澳门新葡京娱乐场有权要求会员向我们提供充足有效的文件，用以确认是否享有该优惠的资质。 <br>\r\n  4、澳门新葡京娱乐场保留对活动修改订正、最终解 释权、与在无通知情况下改变本次活动权利。 </p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"cl\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n ', NULL);
INSERT INTO `hots` VALUES (9, '     \r\n        \r\n<div class=\"site_container\">\r\n<div class=\"hot_container\">\r\n<div class=\"main_container\">\r\n<div class=\"main_goback\"><a href=\"javascript:click_url(\'/cl/hots.php\');\"><<返回</a></div>\r\n<div class=\"main_inner\">\r\n<div class=\"main_inner_l fl\"><img src=\"/cl/tpl/pujing/images/h9.jpg\"></div>\r\n<div class=\"main_inner_r fl\">\r\n<div class=\"hot_title\">帝皇享受 冠名而来 \r\n    澳门新葡京娱乐场诚邀钻石VIP尊享5大特权</div>\r\n<h2>钻石VIP特权</h2>\r\n<p>特权1：首次晋升钻石VIP可获得1188元晋升礼金\r\n</p>\r\n<p>特权2：每月抽取30名钻石VIP、赠送1888元到3888元不等幸运彩金、彩金无需流水。  </p>\r\n<p>特权3：钻石VIP会员取款优先、7x24小时无限制次数提款数额、VIP会员单笔出款最高300万RMB  </p>\r\n<p>特权4：钻石VIP贵宾生日可享受生日彩金、可获生日彩金1888元。  </p>\r\n<p>特权5：VIP当月投注超过800万、还获得额外彩金最高1888元。 </p>\r\n<h2>活动说明</h2>\r\n<p>1：公司每月固定抽取50名成为我们的幸运钻石VIP会员、\r\n</p>\r\n<p>2：新老会员单笔存款20万、一个月累计存款50万、且每周有效投注达500万。  </p>\r\n<p>3：对当月公司输赢金额达50万以上、即可申请钻石VIP资格。  </p>\r\n<p>4：符合申请VIP会员资格的会员、随时欢迎您联系澳门新葡京娱乐场24小时在线客服申请钻石VIP会员、一旦玩家荣升钻石VIP会员、本公司的VIP客服专员会在24小时之内通过邮件发送通知书或电话告知。  </p>\r\n<p>5：本优惠可与其它优惠活动申请并用。  </p>\r\n<p>6：澳门新葡京娱乐场保留对活动修改订正、最终解 释权、与在无通知情况下改变本次活动权利 </p>\r\n</div>\r\n<div class=\"cl\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>      \r\n\r\n ', NULL);
INSERT INTO `hots` VALUES (10, '       \r\n<div class=\"site_container\">\r\n	<div class=\"hot_container\">\r\n		<div class=\"main_container\"><div class=\"main_goback\"><a href=\"javascript:click_url(\'/cl/hots.php\');\"><<返回</a></div>\r\n      \r\n			<div class=\"main_inner\">\r\n				<div class=\"main_inner_l fl\">\r\n					<img src=\"/cl/tpl/pujing/images/hc1.jpg\"></div> \r\n				<div class=\"main_inner_r fl\">\r\n					<b><font style=\"font-size: 16pt\">活动内容</font></b><p>\r\n					古往今来，唯有大能者能驾驭狂龙，固守领空，新葡京娱乐场将借大型电子游艺“怒火领空”推出捕龙大赛，凡是当天在新葡京娱乐场存款100元或以上即享有捕龙大赛资格，便有机会获得5888元奖励！<br>\r\n					<br>\r\n                    <b><font style=\"font-size: 16pt\">活动时间</font></b></p>\r\n                    即日起<br><br>\r\n                    \r\n					<b><font style=\"font-size: 16pt\">活动条件</font></b></p>\r\n                    仅限BBIN旗舰厅电子游戏<br>\r\n					<table border=\"1\" width=\"98%\" cellspacing=\"0\">\r\n						<tr>\r\n							<td colspan=\"2\" align=\"center\" bgcolor=\"#990033\" height=\"30\">\r\n							<b><font size=\"5\" color=\"#FFFFFF\">活动条件</font></b></td>\r\n							<td colspan=\"2\" align=\"center\" bgcolor=\"#990033\" height=\"30\">\r\n							<b><font size=\"5\" color=\"#FFFFFF\">奖金条件</font></b></td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"29%\" align=\"center\" height=\"37\"><b>\r\n							<font size=\"4\">当日第一笔存款金额</font></b></td>\r\n							<td width=\"21%\" align=\"center\" height=\"37\"><b>\r\n							<font size=\"4\">赛程时间</font></b></td>\r\n							<td width=\"30%\" align=\"center\" height=\"37\"><b>\r\n							<font size=\"4\">击倒龙王数量</font></b></td>\r\n							<td width=\"17%\" align=\"center\" height=\"37\"><b>\r\n							<font size=\"4\">奖金</font></b></td>\r\n						</tr>\r\n						<tr>\r\n							<td rowspan=\"2\" width=\"29%\" align=\"center\"><b>100元</b></td>\r\n							<td rowspan=\"2\" width=\"21%\" align=\"center\"><b>60分钟</b></td>\r\n							<td width=\"30%\" align=\"center\"><b>1</b></td>\r\n							<td width=\"17%\" align=\"center\"><b>18元</b></td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"30%\" align=\"center\"><b>2</b></td>\r\n							<td width=\"17%\" align=\"center\"><b>58元</b></td>\r\n						</tr>\r\n						<tr>\r\n							<td rowspan=\"2\" width=\"29%\" align=\"center\"><b>1000元</b></td>\r\n							<td rowspan=\"2\" width=\"21%\" align=\"center\"><b>90分钟</b></td>\r\n							<td width=\"30%\" height=\"22\" align=\"center\"><b>3</b></td>\r\n							<td width=\"17%\" height=\"22\" align=\"center\"><b>128元</b></td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"30%\" align=\"center\"><b>4</b></td>\r\n							<td width=\"17%\" align=\"center\"><b>288元</b></td>\r\n						</tr>\r\n						<tr>\r\n							<td rowspan=\"2\" width=\"29%\" align=\"center\"><b>3000元</b></td>\r\n							<td rowspan=\"2\" width=\"21%\" align=\"center\"><b>120分钟</b></td>\r\n							<td width=\"30%\" align=\"center\"><b>5</b></td>\r\n							<td width=\"17%\" align=\"center\"><b>388元</b></td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"30%\" align=\"center\"><b>6</b></td>\r\n							<td width=\"17%\" align=\"center\"><b>588元</b></td>\r\n						</tr>\r\n						<tr>\r\n							<td rowspan=\"2\" width=\"29%\" align=\"center\"><b>5000元</b></td>\r\n							<td rowspan=\"2\" width=\"21%\" align=\"center\"><b>150分钟</b></td>\r\n							<td width=\"30%\" align=\"center\"><b>7</b></td>\r\n							<td width=\"17%\" align=\"center\"><b>888元</b></td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"30%\" align=\"center\"><b>8</b></td>\r\n							<td width=\"17%\" align=\"center\"><b>1888元</b></td>\r\n						</tr>\r\n						<tr>\r\n							<td rowspan=\"2\" width=\"29%\" align=\"center\"><b>10000元</b></td>\r\n							<td rowspan=\"2\" width=\"21%\" align=\"center\"><b>180分钟</b></td>\r\n							<td width=\"30%\" align=\"center\"><b>9</b></td>\r\n							<td width=\"17%\" align=\"center\"><b>2888元</b></td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"30%\" align=\"center\"><b>10</b></td>\r\n							<td width=\"17%\" align=\"center\"><b>5888元</b></td>\r\n						</tr>\r\n					</table>\r\n					<p>1.不限存款方式，凡是当天成功入款即可享有当天的捕龙大赛资格，当天资格需当天使用！<br>\r\n					2.每天以会员美东时间第一笔存款金额决定当天可享有“赛程时间”，会员持入款金额100元或以上可享有的赛程时间为60分钟，持入款金额1000元或以上可享有的赛程时间为90分，持入款金额3000元或以上可享有的赛程时间为120分钟，持入款金额5000元或以上可享有的赛程时间为150分钟，持入款金额10000元或以上可享有的赛程时间为180分钟；<br>\r\n					3.会员需要在当天美东时间第一笔入款成功后方可进行“怒火领空”游戏，如未在第一笔存款成功后进行将视为自动放弃当天“捕龙大赛”资格;<br>\r\n					4.赛程时间是指计算有效击倒龙王数量的期间，只有在规定的时间内击倒龙王才算有效，如超出赛程时间击倒的龙王将不计算在内；（如会员享有的赛程时间为60分钟，会员在赛程60分钟内击倒了3次，而在第70分钟再次击倒了1次龙王，因第4次属于赛程以外，因此不计算在内，会员只能申请击倒3次龙王的奖金128元）<br>\r\n					5.赛程的起始时间为会员当天开始游戏“怒火领空”的时间，赛程的终点时间根据会员美东时间第1笔入款金额决定，最多可享有180分钟；（每位会员每个IP当日最多可享有180分钟，当日进行两笔存款，第一笔存款金额100元，第2笔存款金额3000元，都将按照美东时间第1笔存款金额决定赛程时间，即当天可享有的赛程时间为60分钟）<br>\r\n					6.查询记录方式：登录会员账号----点击会员中心----选择交易记录----点击3D厅----点击下注金额即可查看记录；<br>\r\n					7.参与方式：登录会员账号--点击电子游艺--直接搜索“怒火领空”进入游戏<br>\r\n					8.达到彩金条件时需要在48小时内提交申请，否则视为自动放弃申请彩金，彩金只需1倍流水即可申请提款；<br>\r\n					9.每个会员每天仅能申请一次彩金，如在赛程未结束时已提交申请彩金，那么将视为放弃剩余赛程时间。<br>\r\n					特殊情况：<br>\r\n					针对条款第2点做额外的补充说明，当天美东时间第一笔存款金额只作为“赛程时间”的判定，之后会员可再次进行存款并不影响比赛，活动只统计在规定的“赛程时间”内所击倒的龙王数量；<br>\r\n					针对第3点做额外的补充说明，会员当天存款成功后必须在当天（美东时间）进行“怒火领空”游戏便可以在存款当日进入赛程，如未在当天进行游戏则视为放弃当日的捕龙资格，次日需要参与捕龙大赛需再次存款成功后方可具备资格；<br>\r\n					举例说明：<br>\r\n					1.如会员当天存款时间为美东时间20点，存款金额1000，可以享用90分钟的赛程时间，需要在美东时间23点59分之前进行“怒火领空”游戏，否则当日的捕龙资格将会取消；<br>\r\n					2.同第1举例，如会员在23点开始进行“怒火领空”游戏，赛程将从23点开始到次日美东时间0点30分，但如会员要再次参与次日的捕龙大赛将会因为条款第3点而无法参与，因此为了避免造成会员的损失以及活动的顺利进行，如遇此情况，次日的赛程时间将额外从次日第1笔存款成功开始“怒火领空”游戏时间算起，不受第3点条款限制。<br>\r\n					策划部留言：由于3D游戏需要较长的时间加载，有兴趣娱乐的玩家请勿因此而抱怨哦，新葡京娱乐场不断的推出新优惠活动，是希望玩家能在娱乐的过程中能有额外的惊喜，但如因各种原因导致玩家对我们的差评，那我们后续就没有勇气在继续策划了，在此新葡京娱乐场策划部感谢每一个参与活动的玩家，因为是你们用行动在鼓励我们。</p>\r\n					<table border=\"1\" width=\"100%\" cellspacing=\"0\">\r\n						<tr>\r\n							<td bgcolor=\"#990033\"><font color=\"#FFFFFF\">\r\n							注：活动条件与活动奖金属两个表格，会员无论获得哪个“赛程时间”，都有机会冲击最高奖金5888元，如会员享有90分钟的赛程里冲击10”击倒龙王“&nbsp; \r\n							获得最高奖金5888.</font></td>\r\n						</tr>\r\n					</table>\r\n					<p>版权声明：此活动由澳门新葡京独家策划，网络无版权，但呼吁广大玩家共同维护澳门新葡京版权，我们一直在创新。</p>\r\n					<p><b><font size=\"5\">领奖方式</font></b><br>\r\n					<br>\r\n					会员确定达到要求后，即可联系澳门新葡京24小时在线客服（活动派发专员）咨询。<br>\r\n					问题主题：怒火领空 捕龙大赛<br>\r\n					问题内容：会员账号：<br>\r\n					游戏时间：2015.01.01<br>\r\n					投注局号：5674898 3456788（根据具体击倒龙王数量）<br>\r\n					击倒龙王：2次<br>\r\n					申请彩金：58元 &nbsp;</p>\r\n					<h2>活动条款</h2>\r\n					<p align=\"left\">1.此活动可与澳门新葡京娱乐场所有活动共享；<br>\r\n					2.会员不得因电子游艺出现网络断线、或因硬件问题无法正常游戏等作为未击倒龙王的理由向新葡京娱乐场索赔或是弥补赛程时间；<br>\r\n					3为确保会员注册信息的真实性，成功申请彩金后的首次出款时不得修改银行卡号等信息，否则将扣除其赠送优惠及期间盈利；<br>\r\n					4.所有红利为随机派送，如系统发生一些不可预测超出本站控制之外技术错误，或人为不可控制的因素，则新葡京娱乐场保留最终处理权；<br>\r\n					5.本次活动仅针对娱乐性玩家，请具备资格参与的会员遵守【新葡京娱乐场】的规定和条款；<br>\r\n					6.在活动期间，澳门新葡京娱乐场对于会员滥用个人账号将严格规定执行，本娱乐场保留权利，在任何时间都可终止会员登录或取消优惠资格；<br>\r\n					7.关于会员活动是否构成滥用多账号的判断和决定是根据新葡京娱乐场最终决定；<br>\r\n					8.为避免文字上的理解差异，澳门新葡京娱乐场保留最终决定权。</p>\r\n					</div>\r\n				<div class=\"cl\">\r\n　</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n ', NULL);
INSERT INTO `hots` VALUES (11, '<div class=\"site_container\">\r\n<div class=\"hot_container\">\r\n<div class=\"main_container\"><div class=\"main_goback\"><a href=\"javascript:GoTo(\'1\',\'Hot\');\"><<返回</a></div>\r\n<div class=\"main_inner\">\r\n<div class=\"main_inner_l fl\"><img src=\"/cl/tpl/pujing/images/hc2.jpg\"></div>\r\n<div class=\"main_inner_r fl\">\r\n<h2><font face=\"宋体\" style=\"font-size: 16pt\">活动详情</font><span style=\"font-weight: 400\"><font face=\"宋体\" size=\"3\"><br>\r\n<br>\r\n会员于澳门新葡京进行电子游艺游戏，按照美东时间计算当日亏损达到1000元或以上，次日即可按照亏损比例申请相应的救援彩金，每日高达1157元。</font></span></h2>\r\n<table border=\"1\" width=\"100%\" cellspacing=\"0\">\r\n	<tr>\r\n		<td height=\"36\" align=\"center\" bgcolor=\"#990033\"><font color=\"#FFFFFF\">\r\n		<b>当日累积亏损</b></font></td>\r\n		<td height=\"36\" align=\"center\" bgcolor=\"#990033\"><font color=\"#FFFFFF\">\r\n		<b>抢救彩金比例</b></font></td>\r\n		<td height=\"36\" align=\"center\" bgcolor=\"#990033\"><font color=\"#FFFFFF\">\r\n		<b>抢救彩金上限</b></font></td>\r\n		<td height=\"36\" align=\"center\" bgcolor=\"#990033\"><font color=\"#FFFFFF\">\r\n		<b>提款要求</b></font></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\"center\"><b>1000元或以上</b></td>\r\n		<td align=\"center\"><b>2%</b></td>\r\n		<td align=\"center\"><b>86元</b></td>\r\n		<td align=\"center\"><b>一倍流水</b></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\"center\"><b>5000元或以上</b></td>\r\n		<td align=\"center\"><b>3%</b></td>\r\n		<td align=\"center\"><b>286元</b></td>\r\n		<td align=\"center\"><b>一倍流水</b></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\"center\"><b>10000元或以上</b></td>\r\n		<td align=\"center\"><b>4%</b></td>\r\n		<td align=\"center\"><b>1157元</b></td>\r\n		<td align=\"center\"><b>一倍流水</b></td>\r\n	</tr>\r\n</table>\r\n<h2><span style=\"font-weight: 400\"><font face=\"宋体\" size=\"3\"><br>\r\n例：当日在电子游艺中负盈利10000元，则可申请获得的救援金为（人民币亏损金额10000x救援彩金比例4%=400元）。<br>\r\n&nbsp;&nbsp; </font></span></h2>\r\n<h2><span style=\"font-weight: 400\"><font face=\"宋体\" size=\"3\">●活动时间：即日起<br>\r\n&nbsp;</font></span></h2>\r\n<h2><span style=\"font-weight: 400\"><font face=\"宋体\" size=\"3\">●仅限BBIN旗舰厅电子游戏<br>\r\n&nbsp;</font></span></h2>\r\n<h2><font face=\"宋体\" style=\"font-size: 16pt\">申请方式</font><span style=\"font-weight: 400\"><font face=\"宋体\" size=\"3\"><br>\r\n<br>\r\n符合申请条件的会员即可联系澳门新葡京24小时在线客服（活动派发专员）咨询。内容如下：<br>\r\n主题：电子游艺救援彩金<br>\r\n会员账号：<br>\r\n亏损金额：***元<br>\r\n救援金：***元<br>\r\n注：会员申请救援金之后，系统会在3小时之内添加到您的账户，在此期间切勿重复发送。<br>\r\n&nbsp;</font></span></h2>\r\n<h2><font face=\"宋体\" style=\"font-size: 16pt\">活动细则</font><span style=\"font-weight: 400\"><font face=\"宋体\" size=\"3\"><br>\r\n<br>\r\n1.所获得救援金仅需一倍流水方可申请提款。<br>\r\n2.每个会员账户每日仅限申请一次，天数按照美东时间计算，需在次日24小时内联系在线客服申请，逾期视为放弃。<br>\r\n3.此活动除开户彩金，体验金外，与其他优惠共同享有。<br>\r\n4.会员亏损金额为扣除当天所有领取优惠之后所得到的实际亏损金额。<br>\r\n5.参与该优惠，即表示您同意《优惠规则与条款》。</font></span></h2>\r\n<h2><span style=\"font-size: 16pt\">活动条款</span></h2>\r\n<p align=\"left\">\r\n1、所有礼金均只需1倍流水可申请提款。 <br>\r\n2、务必填写真实有效的联系方式以免影响其办理,如提供无效的联系方式,公司有权利不给予办理&ldquo;礼金&rdquo;  <br>\r\n3、澳门新葡京娱乐场在会员有重复申请账号套取红利行为时,保留取消，回收会员赠送红利甚至没收其会员账号余额的权利  <br>\r\n4、每位会员、每一个相同IP、每一电子邮箱、每一个相同的电话号码、相同的支付方式（借记卡/银行帐户/信用卡）及共享计算机环境（例：网吧、其他公共用计算机等）只能拥有一个会员红利派送。 <br>\r\n  5、所有澳门新葡京娱乐场的赠送红利是特别为玩家而设，在玩家注册资讯有争议时，为确保双方利益，杜绝身份盗用行为，澳门新葡京娱乐场保留权利要求客户向我们提供充足有效的证件资料，并以各种方式辨别客户是否合资格享有我们赠送的红利。 <br>\r\n  5澳门新葡京娱乐场保留所有权利在任何时候可以更改、停止、取消赠送红利活动。 </p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"cl\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n ', NULL);
INSERT INTO `hots` VALUES (12, '<div class=\"site_container\">\r\n	<div class=\"hot_container\">\r\n		<div class=\"main_container\"><div class=\"main_goback\"><a href=\"javascript:click_url(\'/cl/hots.php\');\"><<返回</a></div>\r\n			<div class=\"main_inner\">\r\n				<div class=\"main_inner_l fl\">\r\n					<img src=\"/cl/tpl/pujing/images/hc3.jpg\"></div>\r\n				<div class=\"main_inner_r fl\">\r\n					<b><font style=\"font-size: 16pt\">活动详情</font></b><br>\r\n					<br>\r\n					凡是在新葡京娱乐场进行电子游艺游戏，七天累计有效投注达10万，即可获得新葡京娱乐场送出的彩金，最高达3357元。<p><b><font style=\"font-size: 16pt\">活动条件</font></b></p>\r\n					<table border=\"1\" width=\"98%\" cellspacing=\"0\">\r\n						<tr>\r\n							<td width=\"32%\" align=\"center\" height=\"39\" bgcolor=\"#990033\">\r\n							<font color=\"#FFFFFF\"><b>周有效投注</b></font></td>\r\n							<td width=\"36%\" align=\"center\" height=\"39\" bgcolor=\"#990033\">\r\n							<font color=\"#FFFFFF\"><b>奖励彩金 </b></font></td>\r\n							<td width=\"31%\" align=\"center\" height=\"39\" bgcolor=\"#990033\">\r\n							<font color=\"#FFFFFF\"><b>提款要求</b></font></td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"32%\" align=\"center\"><b>10万及以上</b></td>\r\n							<td width=\"36%\" align=\"center\"><b>86元</b></td>\r\n							<td width=\"31%\" align=\"center\"><b>一倍流水</b></td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"32%\" align=\"center\" height=\"21\"><b>30万及以上</b></td>\r\n							<td width=\"36%\" align=\"center\" height=\"21\"><b>157元</b></td>\r\n							<td width=\"31%\" align=\"center\" height=\"21\"><b>一倍流水</b></td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"32%\" height=\"22\" align=\"center\"><b>50万及以上</b></td>\r\n							<td width=\"36%\" height=\"22\" align=\"center\"><b>357元</b></td>\r\n							<td width=\"31%\" height=\"22\" align=\"center\"><b>一倍流水</b></td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"32%\" align=\"center\"><b>100万及以上</b></td>\r\n							<td width=\"36%\" align=\"center\"><b>657元</b></td>\r\n							<td width=\"31%\" align=\"center\"><b>一倍流水</b></td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"32%\" align=\"center\"><b>500万及以上</b></td>\r\n							<td width=\"36%\" align=\"center\"><b>1357元</b></td>\r\n							<td width=\"31%\" align=\"center\"><b>一倍流水</b></td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"32%\" align=\"center\"><b>800万及以上</b></td>\r\n							<td width=\"36%\" align=\"center\"><b>3357元</b></td>\r\n							<td width=\"31%\" align=\"center\"><b>一倍流水</b></td>\r\n						</tr>\r\n					</table>\r\n					<p>●活动时间：即日起</p>\r\n                    <p>●仅限BBIN旗舰厅电子游戏</p>\r\n					<p><b><font style=\"font-size: 16pt\">申请方式</font></b><br>\r\n					<br>\r\n					会员确定达到要求后，即可联系澳门新葡京24小时在线客服（活动派发专员）咨询<br>\r\n					问题主题：电子游艺七天乐送彩金<br>\r\n					问题内容：会员账号：<br>\r\n					注：1.申请时间：每周星期一<br>\r\n					2.会员申请彩金之后，系统会在3小时之内添加到您的账户，在此期间切勿重复发送。</p>\r\n					<p><span style=\"font-size: 16pt; font-weight: 700\">活动细则</span><br>\r\n					<br>\r\n					1.所获得奖金需一倍流水方可申请提款。<br>\r\n					2.每个会员账户每周仅限申请一次，周期按照美东时间计算。<br>\r\n					3.此活动除开户彩金，体验金外，与其他优惠共同享有。需在24小时内联系在线客服申请、逾期视为放弃。<br>\r\n					4.会员需在活动时间内参与，逾期概不负责。<br>\r\n					5.参与该优惠，即表示您同意《优惠规则与条款》。<br>\r\n					优惠规则与条款<br>\r\n					<br>\r\n					1.所有优惠以人民币(CNY)为结算货币，以美东时间(EDT)为计时区间。<br>\r\n					2.每一位玩家﹑每一个住址 \r\n					、每一个电子邮箱地址﹑每一个电话号码﹑相同支付方式(相同借记卡/信用卡/银行账户)、相同IP地址以及共享电脑网络（例如网吧，电子教室，局域网等）只能够于同区间享有一次优惠；若会员有重复申请账号行为，公司保留取消或收回会员优惠的权利。<br>\r\n					3.澳门新葡京娱乐场的所有优惠特为玩家而设，如发现任何个人或团体，以不诚实方式套取红利或任何威胁、滥用公司优惠等行为，公司保留取消、冻结该个人或团体账户及账户结余的权利。<br>\r\n					4.若会员对活动有争议，为确保双方利益，杜绝身份盗用行为，新葡京娱乐场有权要求会员向我们提供充足有效的证件，用以确认是否享有该优惠的资质。<br>\r\n					5.当参与优惠会员未能完全遵守、或违反、滥用任何有关公司优惠或推广的条款，又或我们有证据证明有个人或团体投下一连串的关联赌注，籍以造成无论赛果怎样都可以确保从该存款红利或其他推广活动提供的优惠获利，\r\n					澳门新葡京娱乐场保留向该个人或团体停止、取消优惠或索回已支付的全部优惠红利的权利。此外，公司亦保留向这些客户扣除相当于优惠红利价值的行政费用以补偿我们行政成本的权利。<br>\r\n					6.新葡京娱乐场保留在无通知的情况下更改、停止、取消优惠或索回已支取的全部优惠的权利。<br>\r\n					7.为避免对文字的理解歧义，澳门新葡京娱乐场保留对活动的最终解释权！</p>\r\n					<p>　</div>\r\n				<div class=\"cl\">\r\n　</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n ', NULL);
INSERT INTO `hots` VALUES (13, '<div class=\"site_container\">\r\n<div class=\"hot_container\">\r\n<div class=\"main_container\"><div class=\"main_goback\"><a href=\"javascript:click_url(\'/cl/hots.php\');\"><<返回</a></div>\r\n<div class=\"main_inner\">\r\n<div class=\"main_inner_l fl\"><img src=\"/cl/tpl/pujing/images/hc4.jpg\"></div>\r\n<div class=\"main_inner_r fl\">\r\n<p><span style=\"font-size: 16pt; font-weight: 700\">活动详情</span><br>\r\n<br>\r\n凡是在澳门新葡京投注电子游艺中奖之后即可获得澳门新葡京送出的加赠彩金，最高达2388元。<br>\r\n&nbsp;</p>\r\n<table border=\"1\" width=\"100%\" cellspacing=\"0\">\r\n	<tr>\r\n		<td align=\"center\" height=\"31\" bgcolor=\"#990033\"><font color=\"#FFFFFF\">\r\n		<b>中奖金额</b></font></td>\r\n		<td align=\"center\" height=\"31\" bgcolor=\"#990033\"><font color=\"#FFFFFF\">\r\n		<b>加赠彩金</b></font></td>\r\n		<td align=\"center\" height=\"31\" bgcolor=\"#990033\"><font color=\"#FFFFFF\">\r\n		<b>提款要求</b></font></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\"center\"><b>2000元及以上</b></td>\r\n		<td align=\"center\"><b>38</b></td>\r\n		<td align=\"center\"><b>一倍流水</b></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\"center\"><b>5000元及以上</b></td>\r\n		<td align=\"center\"><b>88</b></td>\r\n		<td align=\"center\"><b>一倍流水</b></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\"center\"><b>10000元及以上</b></td>\r\n		<td align=\"center\"><b>138</b></td>\r\n		<td align=\"center\"><b>一倍流水</b></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\"center\"><b>100000元及以上</b></td>\r\n		<td align=\"center\"><b>388</b></td>\r\n		<td align=\"center\"><b>一倍流水</b></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\"center\"><b>300000元及以上</b></td>\r\n		<td align=\"center\"><b>2388</b></td>\r\n		<td align=\"center\"><b>一倍流水</b></td>\r\n	</tr>\r\n</table>\r\n<p>●活动时间：即日起<br>\r\n<p>●仅限BBIN旗舰厅电子游戏<br>\r\n<br>\r\n<span style=\"font-size: 16pt; font-weight: 700\">申请方式</span><br>\r\n<br>\r\n符合条件申请的会员即可联系澳门新葡京24小时在线客服（活动派发专员）咨询。内容如下：<br>\r\n主题：电子游艺超级彩金奖上奖<br>\r\n会员账号：<br>\r\n游戏时间：<br>\r\n注单编号：<br>\r\n注：会员申请彩金之后，系统会在3小时之内添加到您的账户，在此期间切勿重复发送。<br>\r\n&nbsp;</p>\r\n<p><span style=\"font-size: 16pt; font-weight: 700\">活动细则</span><br>\r\n<br>\r\n1.所获得奖金需一倍流水方可申请提款。<br>\r\n2.系统赠送的投注不参与在内，需有效投注才能参与活动<br>\r\n3.每个会员账户每日仅限申请一次。天数按照美东时间计算，需在中奖当日联系24小时在线客服申请、逾期视为放弃。<br>\r\n5.此活动除开户彩金，与其他优惠共同享有。<br>\r\n6.参与该优惠，即表示您同意《活动条款》。</p>\r\n<h2><span style=\"font-size: 16pt\">活动条款</span></h2>\r\n<p align=\"left\">\r\n1、所有礼金均只需1倍流水可申请提款。 <br>\r\n2、务必填写真实有效的联系方式以免影响其办理,如提供无效的联系方式,公司有权利不给予办理&ldquo;礼金&rdquo;  <br>\r\n3、澳门新葡京娱乐场在会员有重复申请账号套取红利行为时,保留取消，回收会员赠送红利甚至没收其会员账号余额的权利  <br>\r\n4、每位会员、每一个相同IP、每一电子邮箱、每一个相同的电话号码、相同的支付方式（借记卡/银行帐户/信用卡）及共享计算机环境（例：网吧、其他公共用计算机等）只能拥有一个会员红利派送。 <br>\r\n  5、所有澳门新葡京娱乐场的赠送红利是特别为玩家而设，在玩家注册资讯有争议时，为确保双方利益，杜绝身份盗用行为，澳门新葡京娱乐场保留权利要求客户向我们提供充足有效的证件资料，并以各种方式辨别客户是否合资格享有我们赠送的红利。 <br>\r\n  5澳门新葡京娱乐场保留所有权利在任何时候可以更改、停止、取消赠送红利活动。 </p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"cl\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n ', NULL);
INSERT INTO `hots` VALUES (14, '        \r\n<div class=\"site_container\">\r\n	<div class=\"hot_container\">\r\n		<div class=\"main_container\"><div class=\"main_goback\"><a href=\"javascript:GoTo(\'1\',\'Hot\');\"><<返回</a></div>\r\n			<div class=\"main_inner\">\r\n				<div class=\"main_inner_l fl\">\r\n					<img src=\"/cl/tpl/pujing/images/hc5.jpg\"></div>\r\n				<div class=\"main_inner_r fl\">\r\n					<b><span style=\"font-size: 16pt\">活动详情</span></b><br>\r\n					<br>\r\n					会员于新葡京娱乐场电子游艺【老虎机】游戏中，每天单笔游戏注单号码产生下列四种情况即可获得加赠奖金，最高倍数100倍，最高赠送金额12286元！<p>\r\n					<span style=\"font-size: 16pt; font-weight: 700\">活动方式</span><b><span style=\"font-size: 14pt\"><br>\r\n					</span></b>1.</p>\r\n					<p>A、注单号码末三位出现888 三个数字，即可获得此笔注单金额10倍彩金。<br>\r\n					B、注单号码末四位出现8888 四个数字，即可获得此笔注单金额30倍彩金。<br>\r\n					C、注单号码末五位出现88888五个数字，即可获得此笔注单金额50倍彩金。<br>\r\n					D、注单号码末六位出现888888六个数字，即可获得此笔注单金额100倍彩金。<br>\r\n&nbsp; 此活动只限【电子游艺】中的（老虎机跟经典老虎机注单）</p>\r\n					<p>2.</p>\r\n					<table border=\"1\" width=\"98%\" cellspacing=\"0\">\r\n						<tr>\r\n							<td width=\"99%\" align=\"center\" height=\"39\" bgcolor=\"#990033\" colspan=\"6\">\r\n							<font color=\"#FFFFFF\">游戏列表</font></td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"12%\" align=\"center\">高球之旅 </td>\r\n							<td width=\"12%\" align=\"center\">高速卡车</td>\r\n							<td width=\"12%\" align=\"center\">沙滩排球</td>\r\n							<td width=\"11%\" align=\"center\">&nbsp;异国之夜</td>\r\n							<td width=\"10%\" align=\"center\">&nbsp;狂欢夜</td>\r\n							<td width=\"10%\" align=\"center\">&nbsp; 幸运财神</td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"12%\" height=\"21\" align=\"center\">老船长</td>\r\n							<td width=\"12%\" height=\"21\" align=\"center\">恶龙传说</td>\r\n							<td width=\"12%\" height=\"21\" align=\"center\">圣诞派对</td>\r\n							<td width=\"11%\" height=\"21\" align=\"center\">金矿工</td>\r\n							<td width=\"10%\" height=\"21\" align=\"center\">霸王龙</td>\r\n							<td width=\"10%\" height=\"21\" align=\"center\">月光宝盒</td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"12%\" height=\"22\" align=\"center\">航海时代</td>\r\n							<td width=\"12%\" height=\"22\" align=\"center\">浪人武士</td>\r\n							<td width=\"12%\" height=\"22\" align=\"center\">爱你一万年</td>\r\n							<td width=\"11%\" height=\"22\" align=\"center\">空战英豪</td>\r\n							<td width=\"10%\" height=\"22\" align=\"center\">奇幻花园</td>\r\n							<td width=\"10%\" height=\"22\" align=\"center\">金瓶梅</td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"12%\" align=\"center\">功夫龙</td>\r\n							<td width=\"12%\" align=\"center\">大明星</td>\r\n							<td width=\"12%\" align=\"center\">中秋月光派对</td>\r\n							<td width=\"11%\" align=\"center\">凯萨帝国</td>\r\n							<td width=\"10%\" align=\"center\">丛林</td>\r\n							<td width=\"10%\" align=\"center\">史前丛林冒险</td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"12%\" align=\"center\">阿基里斯&nbsp; </td>\r\n							<td width=\"12%\" align=\"center\">金莲 </td>\r\n							<td width=\"12%\" align=\"center\">2012伦敦奥运</td>\r\n							<td width=\"11%\" align=\"center\">海豚世界</td>\r\n							<td width=\"10%\" align=\"center\">马戏团</td>\r\n							<td width=\"10%\" align=\"center\">齐天大圣</td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"12%\" align=\"center\">超级7</td>\r\n							<td width=\"12%\" align=\"center\">斗鸡</td>\r\n							<td width=\"12%\" align=\"center\">法海斗白蛇</td>\r\n							<td width=\"11%\" align=\"center\">明星97</td>\r\n							<td width=\"10%\" align=\"center\">&nbsp;三国拉霸 </td>\r\n							<td width=\"10%\" align=\"center\">&nbsp;动物奇观五</td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"12%\" align=\"center\">西游记</td>\r\n							<td width=\"12%\" align=\"center\">FIFA2010</td>\r\n							<td width=\"12%\" align=\"center\">喜福牛年</td>\r\n							<td width=\"11%\" align=\"center\">封神榜</td>\r\n							<td width=\"10%\" align=\"center\">星际大战</td>\r\n							<td width=\"10%\" align=\"center\">阿兹特克宝藏</td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"12%\" align=\"center\">外星争霸</td>\r\n							<td width=\"12%\" align=\"center\">热带风情 </td>\r\n							<td width=\"12%\" align=\"center\">传统 </td>\r\n							<td width=\"11%\" align=\"center\">水果乐园 </td>\r\n							<td width=\"10%\" align=\"center\">玉蒲团 </td>\r\n							<td width=\"10%\" align=\"center\">&nbsp;发大财</td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"12%\" align=\"center\">尸乐园</td>\r\n							<td width=\"12%\" align=\"center\">火焰山</td>\r\n							<td width=\"12%\" align=\"center\">东方魅力</td>\r\n							<td width=\"11%\" align=\"center\">特务危机</td>\r\n							<td width=\"10%\" align=\"center\">&nbsp; 战火佳人 </td>\r\n							<td width=\"10%\" align=\"center\">国际足球</td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"12%\" align=\"center\">龙在囧途</td>\r\n							<td width=\"12%\" align=\"center\">&nbsp;疯狂水果盘</td>\r\n							<td width=\"12%\" align=\"center\">&nbsp;兔女郎&nbsp; </td>\r\n							<td width=\"11%\" align=\"center\">金瓶梅2 </td>\r\n							<td width=\"10%\" align=\"center\">夜市人生</td>\r\n							<td width=\"10%\" align=\"center\">沉默武士</td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"12%\" align=\"center\">七剑传说&nbsp; </td>\r\n							<td width=\"12%\" align=\"center\">天山侠侣传</td>\r\n							<td width=\"12%\" align=\"center\">&nbsp;龙卷风</td>\r\n							<td width=\"11%\" align=\"center\">2014FIFA</td>\r\n							<td width=\"10%\" align=\"center\">暗器之王</td>\r\n							<td width=\"10%\" align=\"center\">钻石列车</td>\r\n						</tr>\r\n					</table>\r\n					<table border=\"1\" width=\"98%\" cellspacing=\"0\">\r\n						<tr>\r\n							<td width=\"99%\" align=\"center\" height=\"39\" bgcolor=\"#990033\" colspan=\"5\">\r\n							<font color=\"#FFFFFF\">游戏列表</font></td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"12%\" align=\"center\">会员账号&nbsp; </td>\r\n							<td width=\"11%\" align=\"center\">例如时间 </td>\r\n							<td width=\"10%\" align=\"center\">例如注单编号</td>\r\n							<td width=\"10%\" align=\"center\">&nbsp;获奖倍数</td>\r\n							<td width=\"10%\" align=\"center\">最高加赠彩金</td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"12%\" align=\"center\" height=\"21\">AAAA&nbsp;\r\n							</td>\r\n							<td width=\"11%\" align=\"center\" height=\"21\">\r\n							2015.01.08 18:18:18</td>\r\n							<td width=\"10%\" align=\"center\" height=\"21\">\r\n							2286739888</td>\r\n							<td width=\"10%\" align=\"center\" height=\"21\">&nbsp;10倍 \r\n							</td>\r\n							<td width=\"10%\" align=\"center\" height=\"21\">1136元</td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"12%\" height=\"22\" align=\"center\">BBBB</td>\r\n							<td width=\"11%\" height=\"22\" align=\"center\">&nbsp;2015.01.08 \r\n							18:18:18</td>\r\n							<td width=\"10%\" height=\"22\" align=\"center\">&nbsp;2286738888</td>\r\n							<td width=\"10%\" height=\"22\" align=\"center\">30倍</td>\r\n							<td width=\"10%\" height=\"22\" align=\"center\">2286元</td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"12%\" align=\"center\">CCCC </td>\r\n							<td width=\"11%\" align=\"center\">2015.01.08 18:18:18\r\n							</td>\r\n							<td width=\"10%\" align=\"center\">2286788888 </td>\r\n							<td width=\"10%\" align=\"center\">50倍 </td>\r\n							<td width=\"10%\" align=\"center\">6286元</td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"12%\" align=\"center\">DDDD </td>\r\n							<td width=\"11%\" align=\"center\">2015.01.08 18:18:18\r\n							</td>\r\n							<td width=\"10%\" align=\"center\">2286888888 </td>\r\n							<td width=\"10%\" align=\"center\">100倍</td>\r\n							<td width=\"10%\" align=\"center\">12286元</td>\r\n						</tr>\r\n					</table>\r\n					<p>3.所有因任何因素被取消之注单，或因中奖后彩金加码游戏所产生之单号，均不在计算范围之内。<br>\r\n					●活动时间：即日起<br>\r\n                    ●仅限BBIN旗舰厅电子游戏<br>\r\n					<br>\r\n					<span style=\"font-size: 16pt; font-weight: 700\">领奖方式</span><br>\r\n					<br>\r\n					会员确定达到要求后，即可联系澳门新葡京24小时在线客服（活动派发专员）咨询。<br>\r\n					问题主题：玩转电子老虎机即送彩金<br>\r\n					问题内容：会员账号：AAAA<br>\r\n					游戏时间：******<br>\r\n					注单编号：******<br>\r\n					申请活动：**倍彩金<br>\r\n					下注金额：******元<br>\r\n					<br>\r\n					<span style=\"font-size: 16pt; font-weight: 700\">活动细则</span><br>\r\n					<br>\r\n					1.所获得奖金需一倍流水方可申请提款。<br>\r\n					2.注单只限当日有效，每位会员每天仅限申请一次，每个注单仅限申请一次，天数按照美东时间进行计算。<br>\r\n					3.所中奖的注单需在24小时内联系在线客服申请、逾期视为放弃。<br>\r\n					4.电子游艺中赠送给您的免费抽奖机会所产生的注单，系统派送的免费优惠彩金（包括开户彩金，返水，晋级彩金等）并不作为参与本次活动的有效注单，以及任何原因投注额小于1元，均不具备参与本次活动。<br>\r\n					5.参与该优惠，即表示您同意《一般优惠规则与条款》。</p>\r\n					<p><span style=\"font-size: 16pt; font-weight: 700\">优惠规则与条款</span><br>\r\n					<br>\r\n					所有优惠以人民币(CNY)为结算货币，以美东时间(EDT)为计时区间。<br>\r\n					每一位玩家﹑每一个住址 \r\n					、每一个电子邮箱地址﹑每一个电话号码﹑相同支付方式(相同借记卡/信用卡/银行账户)、相同IP地址以及共享电脑网络（例如网吧，电子教室，局域网等）只能够于同区间享有一次优惠；若会员有重复申请账号行为，公司保留取消或收回会员优惠的权利。<br>\r\n					新葡京娱乐场的所有优惠特为玩家而设，如发现任何个人或团体，以不诚实方式套取红利或任何威胁、滥用公司优惠等行为，公司保留取消、冻结该个人或团体账户及账户结余的权利。<br>\r\n					若会员对活动有争议，为确保双方利益，杜绝身份盗用行为，新葡京娱乐场有权要求会员向我们提供充足有效的证件，用以确认是否享有该优惠的资质。<br>\r\n					当参与优惠会员未能完全遵守、或违反、滥用任何有关公司优惠或推广的条款，又或我们有证据证明有个人或团体投下一连串的关联赌注，籍以造成无论赛果怎样都可以确保从该存款红利或其他推广活动提供的优惠获利，新葡京娱乐场保留向该个人或团体停止、取消优惠或索回已支付的全部优惠红利的权利。此外，公司亦保留向这些客户扣除相当于优惠红利价值的行政费用以补偿我们行政成本的权利。<br>\r\n					新葡京娱乐场保留在无通知的情况下更改、停止、取消优惠或索回已支取的全部优惠的权利。<br>\r\n					为避免对文字的理解歧义，新葡京娱乐场保留对活动的最终解释权！</div>\r\n				<div class=\"cl\">\r\n　</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div> \r\n ', NULL);
INSERT INTO `hots` VALUES (15, '    \r\n<div class=\"site_container\">\r\n<div class=\"hot_container\">\r\n<div class=\"main_container\"><div class=\"main_goback\"><a href=\"javascript:click_url(\'/cl/hots.php\');\"><<返回</a></div>\r\n<div class=\"main_inner\">\r\n<div class=\"main_inner_l fl\"><img src=\"/cl/tpl/pujing/images/hc6.jpg\"></div>\r\n<div class=\"main_inner_r fl\">\r\n<p><span style=\"font-size: 16pt; font-weight: 700\">活动时间</span></p>\r\n<p>美东时间2015年3月05日00：00 ~ 2015年3月05日12：00&nbsp; （北京时间2015年3月05日12：00 ~ \r\n2015年3月05日23：59）</p>\r\n<p><span style=\"font-size: 16pt; font-weight: 700\">活动对象</span></p>\r\n<p>美东时间2015年3月05日之前注册</p>\r\n<p><span style=\"font-size: 16pt; font-weight: 700\">活动内容</span></p>\r\n<table border=\"1\" width=\"92%\" cellspacing=\"0\">\r\n	<tr>\r\n		<td align=\"center\" width=\"18%\" height=\"38\" bgcolor=\"#000000\">\r\n		<font color=\"#FFFFFF\"><b>项目</b></font></td>\r\n		<td align=\"center\" width=\"38%\" height=\"38\" bgcolor=\"#000000\">\r\n		<font color=\"#FFFFFF\"><b>活动说明</b></font></td>\r\n		<td align=\"center\" width=\"18%\" height=\"38\" bgcolor=\"#000000\">\r\n		<font color=\"#FFFFFF\"><b>红利</b></font></td>\r\n		<td align=\"center\" width=\"17%\" height=\"38\" bgcolor=\"#000000\">\r\n		<font color=\"#FFFFFF\"><b>取款要求</b></font></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\"center\" width=\"18%\" height=\"76\" bgcolor=\"#990033\">\r\n		<font color=\"#FFFF00\"><span style=\"font-weight: 700\">回馈新老会员</span></font></td>\r\n		<td align=\"center\" width=\"38%\" height=\"76\" bgcolor=\"#990033\">\r\n		<font color=\"#FFFF00\"><b>使用公司入款</b></font></td>\r\n		<td align=\"center\" width=\"18%\" height=\"76\" bgcolor=\"#990033\">\r\n		<font color=\"#FFFF00\"><b>5%</b></font></td>\r\n		<td align=\"center\" width=\"17%\" height=\"76\" bgcolor=\"#990033\">\r\n		<font color=\"#FFFF00\"><b>1倍流水</b></font></td>\r\n	</tr>\r\n	<tr>\r\n		<td colspan=\"4\" bgcolor=\"#000000\"><b><font color=\"#FFFFFF\">\r\n		注：</font><font color=\"#FFFF00\">1、</font><font color=\"#FFFFFF\">每位会员最多申请</font><font color=\"#FF0000\">3</font><font color=\"#FFFFFF\">笔，&nbsp; </font>\r\n		<font color=\"#FFFF00\">\r\n		2、</font><font color=\"#FFFFFF\">（存款金额+红利）X</font><font color=\"#FF0000\">1</font><font color=\"#FFFFFF\">倍流水即可提款。</font></b></td>\r\n	</tr>\r\n</table>\r\n<h2><span style=\"font-size: 16pt\">会员申请</span></h2>\r\n<p>在活动开始后、会员即可联系新葡京娱乐场24小时在线客服（活动派发专员）咨询。内容如下：</p>\r\n<p>主题：公司入款赠送<br>\r\n会员账号：***<br>\r\n手机号码：***<br>\r\n注：会员申请赠送之后，系统会在入款成功后赠送的部分一同添加到您的账户，在此期间切勿重复发送</p>\r\n<p><span style=\"font-size: 16pt; font-weight: 700\">活动规则</span></p>\r\n<p>1、申请条件：美东时间2015年3月05日之前注册的会员，每个游戏帐号在活动期间只可享受三次机会。</p>\r\n<p>2、申请方法：参加优惠活动条件的会员入款成功后联系24小时在线客服提交申请即可。</p>\r\n<p>3、红利领取：有效投资（存款金额+红利）需达1倍流水后方可提款。</p>\r\n<p>4、此优惠活动名额无限制，每位会员最多申请3笔。</p>\r\n<p>5、会员必须在活动截止时间前联系在线客服申请，逾期视为自动放弃，按照系统美东时间计算。</p>\r\n<h2><span style=\"font-size: 16pt\">活动条款</span></h2>\r\n<p align=\"left\">\r\n1、所有礼金均只需1倍流水可申请提款。 <br>\r\n2、务必填写真实有效的联系方式以免影响其办理,如提供无效的联系方式,公司有权利不给予办理&ldquo;礼金&rdquo;  <br>\r\n3、澳门新葡京娱乐场在会员有重复申请账号套取红利行为时,保留取消，回收会员赠送红利甚至没收其会员账号余额的权利  <br>\r\n4、每位会员、每一个相同IP、每一电子邮箱、每一个相同的电话号码、相同的支付方式（借记卡/银行帐户/信用卡）及共享计算机环境（例：网吧、其他公共用计算机等）只能拥有一个会员红利派送。 <br>\r\n  5、所有澳门新葡京娱乐场的赠送红利是特别为玩家而设，在玩家注册资讯有争议时，为确保双方利益，杜绝身份盗用行为，澳门新葡京娱乐场保留权利要求客户向我们提供充足有效的证件资料，并以各种方式辨别客户是否合资格享有我们赠送的红利。 <br>\r\n  6、澳门新葡京娱乐场保留所有权利在任何时候可以更改、停止、取消赠送红利活动。 </p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"cl\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>  \r\n        \r\n\r\n \r\n3、澳门新葡京娱乐场在会员有重复申请账号套取红利行为时,保留取消，回收会员赠送红利甚至没收其会员账号余额的权利  <br>\r\n4、每位会员、每一个相同IP、每一电子邮箱、每一个相同的电话号码、相同的支付方式（借记卡/银行帐户/信用卡）及共享计算机环境（例：网吧、其他公共用计算机等）只能拥有一个会员红利派送。 <br>\r\n  5、所有澳门新葡京娱乐场的赠送红利是特别为玩家而设，在玩家注册资讯有争议时，为确保双方利益，杜绝身份盗用行为，澳门新葡京娱乐场保留权利要求客户向我们提供充足有效的证件资料，并以各种方式辨别客户是否合资格享有我们赠送的红利。 <br>\r\n  6、澳门新葡京娱乐场保留所有权利在任何时候可以更改、停止、取消赠送红利活动。 </p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"cl\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>  \r\n    ', NULL);
COMMIT;

-- ----------------------------
-- Table structure for k_bet
-- ----------------------------
DROP TABLE IF EXISTS `k_bet`;
CREATE TABLE `k_bet` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `user_id` bigint(20) NOT NULL COMMENT '下注者',
  `order_num` varchar(50) DEFAULT NULL COMMENT '单编号注',
  `ball_sort` varchar(10) DEFAULT NULL COMMENT '球类种类，足球，篮球',
  `point_column` varchar(20) DEFAULT NULL COMMENT '下注赔率字段',
  `match_name` varchar(100) DEFAULT NULL COMMENT '联赛名',
  `master_guest` varchar(100) DEFAULT NULL COMMENT '主客队',
  `match_id` varchar(20) DEFAULT NULL COMMENT '联赛ID',
  `bet_info` varchar(100) DEFAULT NULL COMMENT '下注详细信息',
  `match_showtype` varchar(5) DEFAULT NULL COMMENT '让球类型',
  `match_rgg` varchar(10) DEFAULT NULL COMMENT '让球数',
  `match_dxgg` varchar(10) DEFAULT NULL COMMENT '大小盘口',
  `match_nowscore` varchar(5) DEFAULT NULL COMMENT '当前比分',
  `match_type` int(1) DEFAULT NULL COMMENT '下注球赛类型',
  `bet_money` decimal(8,2) DEFAULT NULL COMMENT '下注金额',
  `ben_add` int(1) DEFAULT NULL,
  `bet_point` float DEFAULT NULL COMMENT '赔率',
  `bet_win` decimal(12,2) DEFAULT NULL COMMENT '最高赢后金额',
  `win` decimal(12,2) DEFAULT '0.00' COMMENT '已赢',
  `bet_time` datetime DEFAULT NULL COMMENT '下注时间(北京时间)',
  `bet_time_et` datetime DEFAULT NULL COMMENT '下注时间(美东时间)',
  `match_time` varchar(20) DEFAULT NULL COMMENT '比赛日期 或者 滚球进行时间',
  `match_endtime` datetime DEFAULT NULL COMMENT '封盘时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态，0代表未处理，1代表赢，2输，3代表取消,4赢一半,5输一半,6进球无效,7红卡无效,8和局',
  `lose_ok` int(1) NOT NULL DEFAULT '1' COMMENT '是否需要确认',
  `update_time` datetime DEFAULT NULL COMMENT '注单处理时间',
  `sys_about` varchar(200) DEFAULT '' COMMENT '注单无效的原因',
  `MB_Inball` varchar(30) DEFAULT NULL COMMENT '主进球',
  `TG_Inball` varchar(30) DEFAULT NULL COMMENT '客队进球',
  `balance` decimal(12,2) NOT NULL COMMENT '会员当前余额',
  `Match_HRedCard` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '队主红牌数',
  `Match_GRedCard` int(1) unsigned NOT NULL DEFAULT '0',
  `assets` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '下注前金额',
  `ip` varchar(20) DEFAULT NULL COMMENT '下注客户IP',
  `www` varchar(50) DEFAULT NULL,
  `match_coverdate` datetime DEFAULT NULL,
  `fs` decimal(8,2) NOT NULL DEFAULT '0.00',
  `check` int(1) NOT NULL DEFAULT '0' COMMENT '否是结算，1统系自动结算，2手工结算，0未结算',
  `bet_yx` decimal(8,2) DEFAULT '0.00' COMMENT '有效金额',
  `bet_reb` float DEFAULT '0' COMMENT '点返比例',
  `game_type` varchar(10) DEFAULT NULL COMMENT '冠军类型FT=足球冠军',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `match_id` (`match_id`),
  KEY `match_name` (`match_name`),
  KEY `match_type` (`match_type`),
  KEY `bet_time` (`bet_time`),
  KEY `lose_ok` (`lose_ok`),
  KEY `match_coverdate` (`match_coverdate`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='所有下注记录';

-- ----------------------------
-- Table structure for k_bet_cg
-- ----------------------------
DROP TABLE IF EXISTS `k_bet_cg`;
CREATE TABLE `k_bet_cg` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `gid` int(11) DEFAULT NULL COMMENT '串关编号',
  `user_id` bigint(20) NOT NULL COMMENT '下注者',
  `ball_sort` varchar(10) DEFAULT NULL COMMENT '球类种类，足球，篮球',
  `point_column` varchar(20) DEFAULT NULL COMMENT '下注赔率字段',
  `match_name` varchar(100) DEFAULT NULL COMMENT '联赛名',
  `master_guest` varchar(100) DEFAULT NULL COMMENT '主客队',
  `match_id` varchar(20) DEFAULT NULL COMMENT '联赛ID',
  `bet_info` varchar(100) DEFAULT NULL COMMENT '下注详细信息',
  `bet_money` decimal(8,2) DEFAULT NULL COMMENT '下注金额',
  `bet_point` float DEFAULT NULL COMMENT '赔率',
  `ben_add` int(1) DEFAULT NULL COMMENT '是否带本金',
  `bet_time` datetime DEFAULT NULL COMMENT '下注时间',
  `bet_time_et` datetime DEFAULT NULL,
  `match_endtime` datetime DEFAULT NULL COMMENT '封盘时间',
  `match_showtype` varchar(10) DEFAULT NULL,
  `match_rgg` varchar(10) DEFAULT NULL,
  `match_dxgg` varchar(10) DEFAULT NULL,
  `match_nowscore` varchar(10) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态，0代表未处理，1代表赢，2输，3代表取消',
  `update_time` datetime DEFAULT NULL COMMENT '注单处理时间',
  `sys_about` varchar(200) DEFAULT NULL COMMENT '注单无效的原因',
  `MB_Inball` varchar(11) DEFAULT NULL COMMENT '主进球',
  `TG_Inball` varchar(11) DEFAULT NULL COMMENT '客队进球',
  `check` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`),
  KEY `gid` (`gid`),
  KEY `match_id` (`match_id`),
  KEY `match_name` (`match_name`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for k_bet_cg_group
-- ----------------------------
DROP TABLE IF EXISTS `k_bet_cg_group`;
CREATE TABLE `k_bet_cg_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(50) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `cg_count` int(6) NOT NULL,
  `bet_money` decimal(8,2) NOT NULL,
  `win` decimal(12,2) DEFAULT '0.00',
  `bet_win` decimal(12,2) DEFAULT NULL COMMENT '可赢',
  `bet_time` datetime DEFAULT NULL,
  `bet_time_et` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '0' COMMENT '状态，0未结算，1已经结算,2输,3平手或无效',
  `update_time` datetime DEFAULT NULL COMMENT '审核时间',
  `balance` decimal(12,2) NOT NULL COMMENT '会员当前余额',
  `assets` decimal(12,2) NOT NULL DEFAULT '0.00',
  `ip` varchar(20) DEFAULT NULL,
  `www` varchar(50) DEFAULT NULL,
  `match_coverdate` datetime DEFAULT NULL,
  `fs` decimal(8,2) NOT NULL DEFAULT '0.00',
  `bet_reb` float DEFAULT '0',
  `check` int(1) NOT NULL DEFAULT '0' COMMENT '否是结算，1是，0否',
  `bet_yx` decimal(8,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`),
  KEY `status` (`status`),
  KEY `match_coverdate` (`match_coverdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='串关组';

-- ----------------------------
-- Table structure for k_notice
-- ----------------------------
DROP TABLE IF EXISTS `k_notice`;
CREATE TABLE `k_notice` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(255) NOT NULL,
  `is_show` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '类别ID',
  `end_time` datetime NOT NULL COMMENT '有效时间',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` int(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`nid`),
  KEY `end_time` (`end_time`)
) ENGINE=MyISAM AUTO_INCREMENT=2172 DEFAULT CHARSET=utf8 COMMENT='网站公告表';

-- ----------------------------
-- Table structure for live_fs_list
-- ----------------------------
DROP TABLE IF EXISTS `live_fs_list`;
CREATE TABLE `live_fs_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(50) NOT NULL,
  `USERNAME_LIVE` varchar(50) NOT NULL,
  `VALIDMONEY` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '有效金额',
  `FSMONEY` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '反水金额',
  `ADDTIME` datetime DEFAULT NULL COMMENT '增加日期',
  `FSTIME` datetime DEFAULT NULL COMMENT '反水日期',
  `FS_RATE` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '反水比例',
  `live_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FS_LIST_MIX` (`USERNAME_LIVE`,`FSTIME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for live_log
-- ----------------------------
DROP TABLE IF EXISTS `live_log`;
CREATE TABLE `live_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(50) NOT NULL COMMENT '订单号',
  `live_type` varchar(10) NOT NULL DEFAULT '' COMMENT '人真娱乐场游戏类型如 AG,HG',
  `zz_type` varchar(10) NOT NULL DEFAULT '' COMMENT '账转类型，如果转入或转出 d，w',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `live_username` varchar(20) NOT NULL DEFAULT '' COMMENT '乐场娱中的用户名',
  `zz_money` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '账转金额',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态0未实行，1已执行',
  `result` varchar(255) DEFAULT '' COMMENT '行执结果反馈',
  `add_time` datetime DEFAULT NULL COMMENT '订单提交时间',
  `do_time` datetime DEFAULT NULL COMMENT '订单执行时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for live_order
-- ----------------------------
DROP TABLE IF EXISTS `live_order`;
CREATE TABLE `live_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_username` varchar(50) DEFAULT NULL,
  `order_num` varchar(32) NOT NULL COMMENT '投注编号，也就是注单号',
  `order_time` datetime DEFAULT NULL COMMENT '投注日期',
  `live_th` varchar(20) NOT NULL COMMENT '台号',
  `live_type` varchar(20) DEFAULT NULL COMMENT '类型',
  `live_office` varchar(10) DEFAULT NULL COMMENT '局号',
  `office_num` varchar(20) DEFAULT NULL COMMENT '局数',
  `live_result` varchar(100) DEFAULT NULL COMMENT '结果',
  `bet_info` varchar(100) DEFAULT NULL COMMENT '投注内容',
  `bet_money` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '投注金额',
  `live_win` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '赢输金额',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `live_status` varchar(20) DEFAULT NULL COMMENT '状态',
  `game_room` varchar(20) DEFAULT NULL COMMENT '游戏厅',
  `game_type` varchar(20) NOT NULL DEFAULT 'AG' COMMENT 'AG   太阳城',
  `VALIDBETAMOUNT` decimal(9,2) DEFAULT NULL,
  `balanceAfter` decimal(9,2) DEFAULT NULL,
  `sequenceNo` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_num` (`order_num`),
  KEY `live_username` (`live_username`),
  KEY `order_time` (`order_time`),
  KEY `game_type` (`game_type`),
  KEY `sequenceNo` (`sequenceNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for live_rpc_config
-- ----------------------------
DROP TABLE IF EXISTS `live_rpc_config`;
CREATE TABLE `live_rpc_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_name_prefix` varchar(30) NOT NULL COMMENT '会员名称前缀',
  `rpc_client_name` varchar(100) NOT NULL COMMENT 'rpc客户端标识',
  `rpc_server_folder` varchar(100) NOT NULL COMMENT 'rpc服务端文件夹名称',
  `rpc_server_domain` varchar(100) NOT NULL COMMENT 'rpc服务端域名',
  `ag_server_class` varchar(250) NOT NULL COMMENT 'ag server类',
  `ds_server_class` varchar(250) NOT NULL COMMENT 'ds server类',
  `sys_server_class` varchar(250) NOT NULL COMMENT 'sys server类',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '状态: -1 删除 0 禁用 1 启用',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rpc_client_name` (`rpc_client_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='真人rpc配置表';

-- ----------------------------
-- Records of live_rpc_config
-- ----------------------------
BEGIN;
INSERT INTO `live_rpc_config` VALUES (1, 'g05', '*', '*.com', 'ademoka1266.com', '/RpcCenter/Server/server1/Service/live/AgServer.php', '/RpcCenter/Server/server1/Service/live/DsServer.php', '/RpcCenter/Auth/AdminServer.php', 1);
COMMIT;

-- ----------------------------
-- Table structure for live_user
-- ----------------------------
DROP TABLE IF EXISTS `live_user`;
CREATE TABLE `live_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `live_uid` int(11) DEFAULT NULL,
  `live_type` varchar(10) NOT NULL DEFAULT '' COMMENT '人真娱乐场游戏类型如 AG,HG',
  `user` varchar(20) NOT NULL,
  `live_username` varchar(20) NOT NULL COMMENT '娱乐场中的用户名',
  `live_password` varchar(32) NOT NULL COMMENT '娱乐场用户密码',
  `live_money_a` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '乐场娱中的用户金额类型A，如AG中的普通厅',
  `live_money_b` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '乐场娱中的用户金额类型B，如AG中的VIP厅',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `oddlists` varchar(5) DEFAULT 'A' COMMENT 'AG盘口',
  `live_bet_money` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '投注金额',
  `live_win_money` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '盈利金额',
  `fs_rate` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '反水比例',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `live_uid` (`live_uid`),
  KEY `live_type` (`live_type`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lottery_result_bjkn
-- ----------------------------
DROP TABLE IF EXISTS `lottery_result_bjkn`;
CREATE TABLE `lottery_result_bjkn` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `state` varchar(255) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:正常  2:重新结算',
  `prev_text` varchar(2000) DEFAULT NULL,
  `ball_1` int(2) DEFAULT NULL,
  `ball_2` int(2) DEFAULT NULL,
  `ball_3` int(2) DEFAULT NULL,
  `ball_4` int(2) DEFAULT NULL,
  `ball_5` int(2) DEFAULT NULL,
  `ball_6` int(2) DEFAULT NULL,
  `ball_7` int(2) DEFAULT NULL,
  `ball_8` int(2) DEFAULT NULL,
  `ball_9` int(2) DEFAULT NULL,
  `ball_10` int(2) DEFAULT NULL,
  `ball_11` int(2) DEFAULT NULL,
  `ball_12` int(2) DEFAULT NULL,
  `ball_13` int(2) DEFAULT NULL,
  `ball_14` int(2) DEFAULT NULL,
  `ball_15` int(2) DEFAULT NULL,
  `ball_16` int(2) DEFAULT NULL,
  `ball_17` int(2) DEFAULT NULL,
  `ball_18` int(2) DEFAULT NULL,
  `ball_19` int(2) DEFAULT NULL,
  `ball_20` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17824 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for lottery_result_bjpk
-- ----------------------------
DROP TABLE IF EXISTS `lottery_result_bjpk`;
CREATE TABLE `lottery_result_bjpk` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `state` varchar(255) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:正常  2:重新结算',
  `prev_text` varchar(2000) DEFAULT NULL,
  `ball_1` int(2) DEFAULT NULL,
  `ball_2` int(2) DEFAULT NULL,
  `ball_3` int(2) DEFAULT NULL,
  `ball_4` int(2) DEFAULT NULL,
  `ball_5` int(2) DEFAULT NULL,
  `ball_6` int(2) DEFAULT NULL,
  `ball_7` int(2) DEFAULT NULL,
  `ball_8` int(2) DEFAULT NULL,
  `ball_9` int(2) DEFAULT NULL,
  `ball_10` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17822 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for lottery_result_cq
-- ----------------------------
DROP TABLE IF EXISTS `lottery_result_cq`;
CREATE TABLE `lottery_result_cq` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `state` varchar(255) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:正常  2:重新结算',
  `prev_text` varchar(2000) DEFAULT NULL,
  `ball_1` int(2) DEFAULT NULL,
  `ball_2` int(2) DEFAULT NULL,
  `ball_3` int(2) DEFAULT NULL,
  `ball_4` int(2) DEFAULT NULL,
  `ball_5` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40721 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for lottery_result_cqsf
-- ----------------------------
DROP TABLE IF EXISTS `lottery_result_cqsf`;
CREATE TABLE `lottery_result_cqsf` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `state` varchar(255) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:正常  2:重新结算',
  `prev_text` varchar(2000) DEFAULT NULL,
  `ball_1` int(2) DEFAULT NULL,
  `ball_2` int(2) DEFAULT NULL,
  `ball_3` int(2) DEFAULT NULL,
  `ball_4` int(2) DEFAULT NULL,
  `ball_5` int(2) DEFAULT NULL,
  `ball_6` int(2) DEFAULT NULL,
  `ball_7` int(2) DEFAULT NULL,
  `ball_8` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=155609 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for lottery_result_d3
-- ----------------------------
DROP TABLE IF EXISTS `lottery_result_d3`;
CREATE TABLE `lottery_result_d3` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `state` varchar(255) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:正常  2:重新结算',
  `prev_text` varchar(2000) DEFAULT NULL,
  `ball_1` int(2) DEFAULT NULL,
  `ball_2` int(2) DEFAULT NULL,
  `ball_3` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for lottery_result_gd11
-- ----------------------------
DROP TABLE IF EXISTS `lottery_result_gd11`;
CREATE TABLE `lottery_result_gd11` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `state` varchar(255) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:正常  2:重新结算',
  `prev_text` varchar(2000) DEFAULT NULL,
  `ball_1` int(2) DEFAULT NULL,
  `ball_2` int(2) DEFAULT NULL,
  `ball_3` int(2) DEFAULT NULL,
  `ball_4` int(2) DEFAULT NULL,
  `ball_5` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8393 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for lottery_result_gdsf
-- ----------------------------
DROP TABLE IF EXISTS `lottery_result_gdsf`;
CREATE TABLE `lottery_result_gdsf` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `state` varchar(255) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:正常  2:重新结算',
  `prev_text` varchar(2000) DEFAULT NULL,
  `ball_1` int(2) DEFAULT NULL,
  `ball_2` int(2) DEFAULT NULL,
  `ball_3` int(2) DEFAULT NULL,
  `ball_4` int(2) DEFAULT NULL,
  `ball_5` int(2) DEFAULT NULL,
  `ball_6` int(2) DEFAULT NULL,
  `ball_7` int(2) DEFAULT NULL,
  `ball_8` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8391 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for lottery_result_gxsf
-- ----------------------------
DROP TABLE IF EXISTS `lottery_result_gxsf`;
CREATE TABLE `lottery_result_gxsf` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `state` varchar(255) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:正常  2:重新结算',
  `prev_text` varchar(2000) DEFAULT NULL,
  `ball_1` int(2) DEFAULT NULL,
  `ball_2` int(2) DEFAULT NULL,
  `ball_3` int(2) DEFAULT NULL,
  `ball_4` int(2) DEFAULT NULL,
  `ball_5` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5026 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for lottery_result_jx
-- ----------------------------
DROP TABLE IF EXISTS `lottery_result_jx`;
CREATE TABLE `lottery_result_jx` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `state` varchar(255) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:正常  2:重新结算',
  `prev_text` varchar(2000) DEFAULT NULL,
  `ball_1` int(2) DEFAULT NULL,
  `ball_2` int(2) DEFAULT NULL,
  `ball_3` int(2) DEFAULT NULL,
  `ball_4` int(2) DEFAULT NULL,
  `ball_5` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8393 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for lottery_result_lhc
-- ----------------------------
DROP TABLE IF EXISTS `lottery_result_lhc`;
CREATE TABLE `lottery_result_lhc` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `state` varchar(255) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:正常  2:重新结算',
  `prev_text` varchar(2000) DEFAULT NULL,
  `ball_1` int(2) DEFAULT NULL,
  `ball_2` int(2) DEFAULT NULL,
  `ball_3` int(2) DEFAULT NULL,
  `ball_4` int(2) DEFAULT NULL,
  `ball_5` int(2) DEFAULT NULL,
  `ball_6` int(2) DEFAULT NULL,
  `ball_7` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for lottery_result_p3
-- ----------------------------
DROP TABLE IF EXISTS `lottery_result_p3`;
CREATE TABLE `lottery_result_p3` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `state` varchar(255) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:正常  2:重新结算',
  `prev_text` varchar(2000) DEFAULT NULL,
  `ball_1` int(2) DEFAULT NULL,
  `ball_2` int(2) DEFAULT NULL,
  `ball_3` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for lottery_result_t3
-- ----------------------------
DROP TABLE IF EXISTS `lottery_result_t3`;
CREATE TABLE `lottery_result_t3` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `state` varchar(255) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:正常  2:重新结算',
  `prev_text` varchar(2000) DEFAULT NULL,
  `ball_1` int(2) DEFAULT NULL,
  `ball_2` int(2) DEFAULT NULL,
  `ball_3` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2341 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for lottery_result_tj
-- ----------------------------
DROP TABLE IF EXISTS `lottery_result_tj`;
CREATE TABLE `lottery_result_tj` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `state` varchar(255) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:正常  2:重新结算',
  `prev_text` varchar(2000) DEFAULT NULL,
  `ball_1` int(2) DEFAULT NULL,
  `ball_2` int(2) DEFAULT NULL,
  `ball_3` int(2) DEFAULT NULL,
  `ball_4` int(2) DEFAULT NULL,
  `ball_5` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8395 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for lottery_result_tjsf
-- ----------------------------
DROP TABLE IF EXISTS `lottery_result_tjsf`;
CREATE TABLE `lottery_result_tjsf` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `state` varchar(255) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:正常  2:重新结算',
  `prev_text` varchar(2000) DEFAULT NULL,
  `ball_1` int(2) DEFAULT NULL,
  `ball_2` int(2) DEFAULT NULL,
  `ball_3` int(2) DEFAULT NULL,
  `ball_4` int(2) DEFAULT NULL,
  `ball_5` int(2) DEFAULT NULL,
  `ball_6` int(2) DEFAULT NULL,
  `ball_7` int(2) DEFAULT NULL,
  `ball_8` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8393 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for lottery_schedule
-- ----------------------------
DROP TABLE IF EXISTS `lottery_schedule`;
CREATE TABLE `lottery_schedule` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `lottery_type` varchar(255) NOT NULL,
  `qishu` varchar(255) DEFAULT NULL,
  `kaipan_time` time DEFAULT NULL,
  `fenpan_time` time DEFAULT NULL,
  `kaijiang_time` time DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1498 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lottery_schedule
-- ----------------------------
BEGIN;
INSERT INTO `lottery_schedule` VALUES (1, '广西十分彩', '01', '08:55:00', '09:08:00', '09:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (2, '广西十分彩', '02', '09:10:00', '09:23:00', '09:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (3, '广西十分彩', '03', '09:25:00', '09:38:00', '09:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (4, '广西十分彩', '04', '09:40:00', '09:53:00', '09:55:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (5, '广西十分彩', '05', '09:55:00', '10:08:00', '10:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (6, '广西十分彩', '06', '10:10:00', '10:23:00', '10:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (7, '广西十分彩', '07', '10:25:00', '10:38:00', '10:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (8, '广西十分彩', '08', '10:40:00', '10:53:00', '10:55:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (9, '广西十分彩', '09', '10:55:00', '11:08:00', '11:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (10, '广西十分彩', '10', '11:10:00', '11:23:00', '11:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (11, '广西十分彩', '11', '11:25:00', '11:38:00', '11:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (12, '广西十分彩', '12', '11:40:00', '11:53:00', '11:55:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (13, '广西十分彩', '13', '11:55:00', '12:08:00', '12:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (14, '广西十分彩', '14', '12:10:00', '12:23:00', '12:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (15, '广西十分彩', '15', '12:25:00', '12:38:00', '12:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (16, '广西十分彩', '16', '12:40:00', '12:53:00', '12:55:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (17, '广西十分彩', '17', '12:55:00', '13:08:00', '13:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (18, '广西十分彩', '18', '13:10:00', '13:23:00', '13:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (19, '广西十分彩', '19', '13:25:00', '13:38:00', '13:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (20, '广西十分彩', '20', '13:40:00', '13:53:00', '13:55:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (21, '广西十分彩', '21', '13:55:00', '14:08:00', '14:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (22, '广西十分彩', '22', '14:10:00', '14:23:00', '14:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (23, '广西十分彩', '23', '14:25:00', '14:38:00', '14:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (24, '广西十分彩', '24', '14:40:00', '14:53:00', '14:55:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (25, '广西十分彩', '25', '14:55:00', '15:08:00', '15:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (26, '广西十分彩', '26', '15:10:00', '15:23:00', '15:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (27, '广西十分彩', '27', '15:25:00', '15:38:00', '15:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (28, '广西十分彩', '28', '15:40:00', '15:53:00', '15:55:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (29, '广西十分彩', '29', '15:55:00', '16:08:00', '16:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (30, '广西十分彩', '30', '16:10:00', '16:23:00', '16:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (31, '广西十分彩', '31', '16:25:00', '16:38:00', '16:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (32, '广西十分彩', '32', '16:40:00', '16:53:00', '16:55:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (33, '广西十分彩', '33', '16:55:00', '17:08:00', '17:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (34, '广西十分彩', '34', '17:10:00', '17:23:00', '17:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (35, '广西十分彩', '35', '17:25:00', '17:38:00', '17:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (36, '广西十分彩', '36', '17:40:00', '17:53:00', '17:55:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (37, '广西十分彩', '37', '17:55:00', '18:08:00', '18:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (38, '广西十分彩', '38', '18:10:00', '18:23:00', '18:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (39, '广西十分彩', '39', '18:25:00', '18:38:00', '18:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (40, '广西十分彩', '40', '18:40:00', '18:53:00', '18:55:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (41, '广西十分彩', '41', '18:55:00', '19:08:00', '19:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (42, '广西十分彩', '42', '19:10:00', '19:23:00', '19:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (43, '广西十分彩', '43', '19:25:00', '19:38:00', '19:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (44, '广西十分彩', '44', '19:40:00', '19:53:00', '19:55:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (45, '广西十分彩', '45', '19:55:00', '20:08:00', '20:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (46, '广西十分彩', '46', '20:10:00', '20:23:00', '20:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (47, '广西十分彩', '47', '20:25:00', '20:38:00', '20:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (48, '广西十分彩', '48', '20:40:00', '20:53:00', '20:55:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (49, '广西十分彩', '49', '20:55:00', '21:08:00', '21:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (50, '广西十分彩', '50', '21:10:00', '21:23:00', '21:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (51, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (52, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (53, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (54, '广东十分彩', '01', '09:00:00', '09:09:00', '09:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (55, '广东十分彩', '02', '09:10:00', '09:19:00', '09:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (56, '广东十分彩', '03', '09:20:00', '09:29:00', '09:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (57, '广东十分彩', '04', '09:30:00', '09:39:00', '09:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (58, '广东十分彩', '05', '09:40:00', '09:49:00', '09:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (59, '广东十分彩', '06', '09:50:00', '09:59:00', '10:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (60, '广东十分彩', '07', '10:00:00', '10:09:00', '10:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (61, '广东十分彩', '08', '10:10:00', '10:19:00', '10:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (62, '广东十分彩', '09', '10:20:00', '10:29:00', '10:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (63, '广东十分彩', '10', '10:30:00', '10:39:00', '10:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (64, '广东十分彩', '11', '10:40:00', '10:49:00', '10:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (65, '广东十分彩', '12', '10:50:00', '10:59:00', '11:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (66, '广东十分彩', '13', '11:00:00', '11:09:00', '11:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (67, '广东十分彩', '14', '11:10:00', '11:19:00', '11:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (68, '广东十分彩', '15', '11:20:00', '11:29:00', '11:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (69, '广东十分彩', '16', '11:30:00', '11:39:00', '11:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (70, '广东十分彩', '17', '11:40:00', '11:49:00', '11:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (71, '广东十分彩', '18', '11:50:00', '11:59:00', '12:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (72, '广东十分彩', '19', '12:00:00', '12:09:00', '12:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (73, '广东十分彩', '20', '12:10:00', '12:19:00', '12:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (74, '广东十分彩', '21', '12:20:00', '12:29:00', '12:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (75, '广东十分彩', '22', '12:30:00', '12:39:00', '12:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (76, '广东十分彩', '23', '12:40:00', '12:49:00', '12:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (77, '广东十分彩', '24', '12:50:00', '12:59:00', '13:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (78, '广东十分彩', '25', '13:00:00', '13:09:00', '13:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (79, '广东十分彩', '26', '13:10:00', '13:19:00', '13:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (80, '广东十分彩', '27', '13:20:00', '13:29:00', '13:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (81, '广东十分彩', '28', '13:30:00', '13:39:00', '13:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (82, '广东十分彩', '29', '13:40:00', '13:49:00', '13:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (83, '广东十分彩', '30', '13:50:00', '13:59:00', '14:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (84, '广东十分彩', '31', '14:00:00', '14:09:00', '14:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (85, '广东十分彩', '32', '14:10:00', '14:19:00', '14:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (86, '广东十分彩', '33', '14:20:00', '14:29:00', '14:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (87, '广东十分彩', '34', '14:30:00', '14:39:00', '14:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (88, '广东十分彩', '35', '14:40:00', '14:49:00', '14:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (89, '广东十分彩', '36', '14:50:00', '14:59:00', '15:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (90, '广东十分彩', '37', '15:00:00', '15:09:00', '15:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (91, '广东十分彩', '38', '15:10:00', '15:19:00', '15:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (92, '广东十分彩', '39', '15:20:00', '15:29:00', '15:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (93, '广东十分彩', '40', '15:30:00', '15:39:00', '15:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (94, '广东十分彩', '41', '15:40:00', '15:49:00', '15:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (95, '广东十分彩', '42', '15:50:00', '15:59:00', '16:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (96, '广东十分彩', '43', '16:00:00', '16:09:00', '16:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (97, '广东十分彩', '44', '16:10:00', '16:19:00', '16:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (98, '广东十分彩', '45', '16:20:00', '16:29:00', '16:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (99, '广东十分彩', '46', '16:30:00', '16:39:00', '16:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (100, '广东十分彩', '47', '16:40:00', '16:49:00', '16:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (101, '广东十分彩', '48', '16:50:00', '16:59:00', '17:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (102, '广东十分彩', '49', '17:00:00', '17:09:00', '17:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (103, '广东十分彩', '50', '17:10:00', '17:19:00', '17:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (104, '广东十分彩', '51', '17:20:00', '17:29:00', '17:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (105, '广东十分彩', '52', '17:30:00', '17:39:00', '17:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (106, '广东十分彩', '53', '17:40:00', '17:49:00', '17:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (107, '广东十分彩', '54', '17:50:00', '17:59:00', '18:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (108, '广东十分彩', '55', '18:00:00', '18:09:00', '18:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (109, '广东十分彩', '56', '18:10:00', '18:19:00', '18:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (110, '广东十分彩', '57', '18:20:00', '18:29:00', '18:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (111, '广东十分彩', '58', '18:30:00', '18:39:00', '18:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (112, '广东十分彩', '59', '18:40:00', '18:49:00', '18:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (113, '广东十分彩', '60', '18:50:00', '18:59:00', '19:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (114, '广东十分彩', '61', '19:00:00', '19:09:00', '19:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (115, '广东十分彩', '62', '19:10:00', '19:19:00', '19:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (116, '广东十分彩', '63', '19:20:00', '19:29:00', '19:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (117, '广东十分彩', '64', '19:30:00', '19:39:00', '19:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (118, '广东十分彩', '65', '19:40:00', '19:49:00', '19:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (119, '广东十分彩', '66', '19:50:00', '19:59:00', '20:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (120, '广东十分彩', '67', '20:00:00', '20:09:00', '20:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (121, '广东十分彩', '68', '20:10:00', '20:19:00', '20:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (122, '广东十分彩', '69', '20:20:00', '20:29:00', '20:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (123, '广东十分彩', '70', '20:30:00', '20:39:00', '20:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (124, '广东十分彩', '71', '20:40:00', '20:49:00', '20:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (125, '广东十分彩', '72', '20:50:00', '20:59:00', '21:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (126, '广东十分彩', '73', '21:00:00', '21:09:00', '21:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (127, '广东十分彩', '74', '21:10:00', '21:19:00', '21:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (128, '广东十分彩', '75', '21:20:00', '21:29:00', '21:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (129, '广东十分彩', '76', '21:30:00', '21:39:00', '21:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (130, '广东十分彩', '77', '21:40:00', '21:49:00', '21:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (131, '广东十分彩', '78', '21:50:00', '21:59:00', '22:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (132, '广东十分彩', '79', '22:00:00', '22:09:00', '22:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (133, '广东十分彩', '80', '22:10:00', '22:19:00', '22:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (134, '广东十分彩', '81', '22:20:00', '22:29:00', '22:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (135, '广东十分彩', '82', '22:30:00', '22:39:00', '22:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (136, '广东十分彩', '83', '22:40:00', '22:49:00', '22:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (137, '广东十分彩', '84', '22:50:00', '22:59:00', '23:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (138, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (139, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (140, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (141, '天津十分彩', '001', '08:54:00', '09:02:00', '09:04:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (142, '天津十分彩', '002', '09:04:00', '09:12:00', '09:14:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (143, '天津十分彩', '003', '09:14:00', '09:22:00', '09:24:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (144, '天津十分彩', '004', '09:24:00', '09:32:00', '09:34:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (145, '天津十分彩', '005', '09:34:00', '09:42:00', '09:44:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (146, '天津十分彩', '006', '09:44:00', '09:52:00', '09:54:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (147, '天津十分彩', '007', '09:54:00', '10:02:00', '10:04:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (148, '天津十分彩', '008', '10:04:00', '10:12:00', '10:14:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (149, '天津十分彩', '009', '10:14:00', '10:22:00', '10:24:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (150, '天津十分彩', '010', '10:24:00', '10:32:00', '10:34:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (151, '天津十分彩', '011', '10:34:00', '10:42:00', '10:44:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (152, '天津十分彩', '012', '10:44:00', '10:52:00', '10:54:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (153, '天津十分彩', '013', '10:54:00', '11:02:00', '11:04:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (154, '天津十分彩', '014', '11:04:00', '11:12:00', '11:14:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (155, '天津十分彩', '015', '11:14:00', '11:22:00', '11:24:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (156, '天津十分彩', '016', '11:24:00', '11:32:00', '11:34:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (157, '天津十分彩', '017', '11:34:00', '11:42:00', '11:44:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (158, '天津十分彩', '018', '11:44:00', '11:52:00', '11:54:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (159, '天津十分彩', '019', '11:54:00', '12:02:00', '12:04:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (160, '天津十分彩', '020', '12:04:00', '12:12:00', '12:14:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (161, '天津十分彩', '021', '12:14:00', '12:22:00', '12:24:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (162, '天津十分彩', '022', '12:24:00', '12:32:00', '12:34:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (163, '天津十分彩', '023', '12:34:00', '12:42:00', '12:44:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (164, '天津十分彩', '024', '12:44:00', '12:52:00', '12:54:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (165, '天津十分彩', '025', '12:54:00', '13:02:00', '13:04:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (166, '天津十分彩', '026', '13:04:00', '13:12:00', '13:14:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (167, '天津十分彩', '027', '13:14:00', '13:22:00', '13:24:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (168, '天津十分彩', '028', '13:24:00', '13:32:00', '13:34:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (169, '天津十分彩', '029', '13:34:00', '13:42:00', '13:44:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (170, '天津十分彩', '030', '13:44:00', '13:52:00', '13:54:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (171, '天津十分彩', '031', '13:54:00', '14:02:00', '14:04:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (172, '天津十分彩', '032', '14:04:00', '14:12:00', '14:14:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (173, '天津十分彩', '033', '14:14:00', '14:22:00', '14:24:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (174, '天津十分彩', '034', '14:24:00', '14:32:00', '14:34:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (175, '天津十分彩', '035', '14:34:00', '14:42:00', '14:44:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (176, '天津十分彩', '036', '14:44:00', '14:52:00', '14:54:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (177, '天津十分彩', '037', '14:54:00', '15:02:00', '15:04:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (178, '天津十分彩', '038', '15:04:00', '15:12:00', '15:14:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (179, '天津十分彩', '039', '15:14:00', '15:22:00', '15:24:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (180, '天津十分彩', '040', '15:24:00', '15:32:00', '15:34:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (181, '天津十分彩', '041', '15:34:00', '15:42:00', '15:44:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (182, '天津十分彩', '042', '15:44:00', '15:52:00', '15:54:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (183, '天津十分彩', '043', '15:54:00', '16:02:00', '16:04:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (184, '天津十分彩', '044', '16:04:00', '16:12:00', '16:14:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (185, '天津十分彩', '045', '16:14:00', '16:22:00', '16:24:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (186, '天津十分彩', '046', '16:24:00', '16:32:00', '16:34:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (187, '天津十分彩', '047', '16:34:00', '16:42:00', '16:44:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (188, '天津十分彩', '048', '16:44:00', '16:52:00', '16:54:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (189, '天津十分彩', '049', '16:54:00', '17:02:00', '17:04:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (190, '天津十分彩', '050', '17:04:00', '17:12:00', '17:14:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (191, '天津十分彩', '051', '17:14:00', '17:22:00', '17:24:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (192, '天津十分彩', '052', '17:24:00', '17:32:00', '17:34:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (193, '天津十分彩', '053', '17:34:00', '17:42:00', '17:44:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (194, '天津十分彩', '054', '17:44:00', '17:52:00', '17:54:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (195, '天津十分彩', '055', '17:54:00', '18:02:00', '18:04:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (196, '天津十分彩', '056', '18:04:00', '18:12:00', '18:14:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (197, '天津十分彩', '057', '18:14:00', '18:22:00', '18:24:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (198, '天津十分彩', '058', '18:24:00', '18:32:00', '18:34:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (199, '天津十分彩', '059', '18:34:00', '18:42:00', '18:44:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (200, '天津十分彩', '060', '18:44:00', '18:52:00', '18:54:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (201, '天津十分彩', '061', '18:54:00', '19:02:00', '19:04:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (202, '天津十分彩', '062', '19:04:00', '19:12:00', '19:14:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (203, '天津十分彩', '063', '19:14:00', '19:22:00', '19:24:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (204, '天津十分彩', '064', '19:24:00', '19:32:00', '19:34:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (205, '天津十分彩', '065', '19:34:00', '19:42:00', '19:44:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (206, '天津十分彩', '066', '19:44:00', '19:52:00', '19:54:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (207, '天津十分彩', '067', '19:54:00', '20:02:00', '20:04:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (208, '天津十分彩', '068', '20:04:00', '20:12:00', '20:14:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (209, '天津十分彩', '069', '20:14:00', '20:22:00', '20:24:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (210, '天津十分彩', '070', '20:24:00', '20:32:00', '20:34:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (211, '天津十分彩', '071', '20:34:00', '20:42:00', '20:44:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (212, '天津十分彩', '072', '20:44:00', '20:52:00', '20:54:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (213, '天津十分彩', '073', '20:54:00', '21:02:00', '21:04:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (214, '天津十分彩', '074', '21:04:00', '21:12:00', '21:14:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (215, '天津十分彩', '075', '21:14:00', '21:22:00', '21:24:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (216, '天津十分彩', '076', '21:24:00', '21:32:00', '21:34:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (217, '天津十分彩', '077', '21:34:00', '21:42:00', '21:44:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (218, '天津十分彩', '078', '21:44:00', '21:52:00', '21:54:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (219, '天津十分彩', '079', '21:54:00', '22:02:00', '22:04:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (220, '天津十分彩', '080', '22:04:00', '22:12:00', '22:14:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (221, '天津十分彩', '081', '22:14:00', '22:22:00', '22:24:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (222, '天津十分彩', '082', '22:24:00', '22:32:00', '22:34:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (223, '天津十分彩', '083', '22:34:00', '22:42:00', '22:44:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (224, '天津十分彩', '084', '22:44:00', '22:52:00', '22:54:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (225, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (226, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (227, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (228, '北京PK拾', '1', '09:02:00', '09:06:30', '09:07:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (229, '北京PK拾', '2', '09:07:00', '09:11:30', '09:12:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (230, '北京PK拾', '3', '09:12:00', '09:16:30', '09:17:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (231, '北京PK拾', '4', '09:17:00', '09:21:30', '09:22:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (232, '北京PK拾', '5', '09:22:00', '09:26:30', '09:27:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (233, '北京PK拾', '6', '09:27:00', '09:31:30', '09:32:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (234, '北京PK拾', '7', '09:32:00', '09:36:30', '09:37:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (235, '北京PK拾', '8', '09:37:00', '09:41:30', '09:42:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (236, '北京PK拾', '9', '09:42:00', '09:46:30', '09:47:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (237, '北京PK拾', '10', '09:47:00', '09:51:30', '09:52:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (238, '北京PK拾', '11', '09:52:00', '09:56:30', '09:57:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (239, '北京PK拾', '12', '09:57:00', '10:01:30', '10:02:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (240, '北京PK拾', '13', '10:02:00', '10:06:30', '10:07:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (241, '北京PK拾', '14', '10:07:00', '10:11:30', '10:12:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (242, '北京PK拾', '15', '10:12:00', '10:16:30', '10:17:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (243, '北京PK拾', '16', '10:17:00', '10:21:30', '10:22:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (244, '北京PK拾', '17', '10:22:00', '10:26:30', '10:27:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (245, '北京PK拾', '18', '10:27:00', '10:31:30', '10:32:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (246, '北京PK拾', '19', '10:32:00', '10:36:30', '10:37:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (247, '北京PK拾', '20', '10:37:00', '10:41:30', '10:42:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (248, '北京PK拾', '21', '10:42:00', '10:46:30', '10:47:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (249, '北京PK拾', '22', '10:47:00', '10:51:30', '10:52:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (250, '北京PK拾', '23', '10:52:00', '10:56:30', '10:57:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (251, '北京PK拾', '24', '10:57:00', '11:01:30', '11:02:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (252, '北京PK拾', '25', '11:02:00', '11:06:30', '11:07:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (253, '北京PK拾', '26', '11:07:00', '11:11:30', '11:12:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (254, '北京PK拾', '27', '11:12:00', '11:16:30', '11:17:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (255, '北京PK拾', '28', '11:17:00', '11:21:30', '11:22:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (256, '北京PK拾', '29', '11:22:00', '11:26:30', '11:27:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (257, '北京PK拾', '30', '11:27:00', '11:31:30', '11:32:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (258, '北京PK拾', '31', '11:32:00', '11:36:30', '11:37:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (259, '北京PK拾', '32', '11:37:00', '11:41:30', '11:42:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (260, '北京PK拾', '33', '11:42:00', '11:46:30', '11:47:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (261, '北京PK拾', '34', '11:47:00', '11:51:30', '11:52:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (262, '北京PK拾', '35', '11:52:00', '11:56:30', '11:57:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (263, '北京PK拾', '36', '11:57:00', '12:01:30', '12:02:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (264, '北京PK拾', '37', '12:02:00', '12:06:30', '12:07:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (265, '北京PK拾', '38', '12:07:00', '12:11:30', '12:12:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (266, '北京PK拾', '39', '12:12:00', '12:16:30', '12:17:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (267, '北京PK拾', '40', '12:17:00', '12:21:30', '12:22:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (268, '北京PK拾', '41', '12:22:00', '12:26:30', '12:27:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (269, '北京PK拾', '42', '12:27:00', '12:31:30', '12:32:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (270, '北京PK拾', '43', '12:32:00', '12:36:30', '12:37:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (271, '北京PK拾', '44', '12:37:00', '12:41:30', '12:42:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (272, '北京PK拾', '45', '12:42:00', '12:46:30', '12:47:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (273, '北京PK拾', '46', '12:47:00', '12:51:30', '12:52:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (274, '北京PK拾', '47', '12:52:00', '12:56:30', '12:57:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (275, '北京PK拾', '48', '12:57:00', '13:01:30', '13:02:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (276, '北京PK拾', '49', '13:02:00', '13:06:30', '13:07:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (277, '北京PK拾', '50', '13:07:00', '13:11:30', '13:12:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (278, '北京PK拾', '51', '13:12:00', '13:16:30', '13:17:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (279, '北京PK拾', '52', '13:17:00', '13:21:30', '13:22:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (280, '北京PK拾', '53', '13:22:00', '13:26:30', '13:27:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (281, '北京PK拾', '54', '13:27:00', '13:31:30', '13:32:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (282, '北京PK拾', '55', '13:32:00', '13:36:30', '13:37:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (283, '北京PK拾', '56', '13:37:00', '13:41:30', '13:42:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (284, '北京PK拾', '57', '13:42:00', '13:46:30', '13:47:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (285, '北京PK拾', '58', '13:47:00', '13:51:30', '13:52:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (286, '北京PK拾', '59', '13:52:00', '13:56:30', '13:57:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (287, '北京PK拾', '60', '13:57:00', '14:01:30', '14:02:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (288, '北京PK拾', '61', '14:02:00', '14:06:30', '14:07:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (289, '北京PK拾', '62', '14:07:00', '14:11:30', '14:12:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (290, '北京PK拾', '63', '14:12:00', '14:16:30', '14:17:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (291, '北京PK拾', '64', '14:17:00', '14:21:30', '14:22:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (292, '北京PK拾', '65', '14:22:00', '14:26:30', '14:27:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (293, '北京PK拾', '66', '14:27:00', '14:31:30', '14:32:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (294, '北京PK拾', '67', '14:32:00', '14:36:30', '14:37:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (295, '北京PK拾', '68', '14:37:00', '14:41:30', '14:42:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (296, '北京PK拾', '69', '14:42:00', '14:46:30', '14:47:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (297, '北京PK拾', '70', '14:47:00', '14:51:30', '14:52:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (298, '北京PK拾', '71', '14:52:00', '14:56:30', '14:57:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (299, '北京PK拾', '72', '14:57:00', '15:01:30', '15:02:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (300, '北京PK拾', '73', '15:02:00', '15:06:30', '15:07:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (301, '北京PK拾', '74', '15:07:00', '15:11:30', '15:12:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (302, '北京PK拾', '75', '15:12:00', '15:16:30', '15:17:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (303, '北京PK拾', '76', '15:17:00', '15:21:30', '15:22:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (304, '北京PK拾', '77', '15:22:00', '15:26:30', '15:27:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (305, '北京PK拾', '78', '15:27:00', '15:31:30', '15:32:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (306, '北京PK拾', '79', '15:32:00', '15:36:30', '15:37:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (307, '北京PK拾', '80', '15:37:00', '15:41:30', '15:42:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (308, '北京PK拾', '81', '15:42:00', '15:46:30', '15:47:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (309, '北京PK拾', '82', '15:47:00', '15:51:30', '15:52:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (310, '北京PK拾', '83', '15:52:00', '15:56:30', '15:57:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (311, '北京PK拾', '84', '15:57:00', '16:01:30', '16:02:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (312, '北京PK拾', '85', '16:02:00', '16:06:30', '16:07:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (313, '北京PK拾', '86', '16:07:00', '16:11:30', '16:12:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (314, '北京PK拾', '87', '16:12:00', '16:16:30', '16:17:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (315, '北京PK拾', '88', '16:17:00', '16:21:30', '16:22:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (316, '北京PK拾', '89', '16:22:00', '16:26:30', '16:27:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (317, '北京PK拾', '90', '16:27:00', '16:31:30', '16:32:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (318, '北京PK拾', '91', '16:32:00', '16:36:30', '16:37:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (319, '北京PK拾', '92', '16:37:00', '16:41:30', '16:42:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (320, '北京PK拾', '93', '16:42:00', '16:46:30', '16:47:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (321, '北京PK拾', '94', '16:47:00', '16:51:30', '16:52:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (322, '北京PK拾', '95', '16:52:00', '16:56:30', '16:57:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (323, '北京PK拾', '96', '16:57:00', '17:01:30', '17:02:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (324, '北京PK拾', '97', '17:02:00', '17:06:30', '17:07:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (325, '北京PK拾', '98', '17:07:00', '17:11:30', '17:12:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (326, '北京PK拾', '99', '17:12:00', '17:16:30', '17:17:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (327, '北京PK拾', '100', '17:17:00', '17:21:30', '17:22:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (328, '北京PK拾', '101', '17:22:00', '17:26:30', '17:27:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (329, '北京PK拾', '102', '17:27:00', '17:31:30', '17:32:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (330, '北京PK拾', '103', '17:32:00', '17:36:30', '17:37:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (331, '北京PK拾', '104', '17:37:00', '17:41:30', '17:42:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (332, '北京PK拾', '105', '17:42:00', '17:46:30', '17:47:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (333, '北京PK拾', '106', '17:47:00', '17:51:30', '17:52:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (334, '北京PK拾', '107', '17:52:00', '17:56:30', '17:57:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (335, '北京PK拾', '108', '17:57:00', '18:01:30', '18:02:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (336, '北京PK拾', '109', '18:02:00', '18:06:30', '18:07:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (337, '北京PK拾', '110', '18:07:00', '18:11:30', '18:12:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (338, '北京PK拾', '111', '18:12:00', '18:16:30', '18:17:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (339, '北京PK拾', '112', '18:17:00', '18:21:30', '18:22:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (340, '北京PK拾', '113', '18:22:00', '18:26:30', '18:27:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (341, '北京PK拾', '114', '18:27:00', '18:31:30', '18:32:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (342, '北京PK拾', '115', '18:32:00', '18:36:30', '18:37:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (343, '北京PK拾', '116', '18:37:00', '18:41:30', '18:42:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (344, '北京PK拾', '117', '18:42:00', '18:46:30', '18:47:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (345, '北京PK拾', '118', '18:47:00', '18:51:30', '18:52:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (346, '北京PK拾', '119', '18:52:00', '18:56:30', '18:57:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (347, '北京PK拾', '120', '18:57:00', '19:01:30', '19:02:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (348, '北京PK拾', '121', '19:02:00', '19:06:30', '19:07:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (349, '北京PK拾', '122', '19:07:00', '19:11:30', '19:12:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (350, '北京PK拾', '123', '19:12:00', '19:16:30', '19:17:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (351, '北京PK拾', '124', '19:17:00', '19:21:30', '19:22:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (352, '北京PK拾', '125', '19:22:00', '19:26:30', '19:27:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (353, '北京PK拾', '126', '19:27:00', '19:31:30', '19:32:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (354, '北京PK拾', '127', '19:32:00', '19:36:30', '19:37:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (355, '北京PK拾', '128', '19:37:00', '19:41:30', '19:42:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (356, '北京PK拾', '129', '19:42:00', '19:46:30', '19:47:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (357, '北京PK拾', '130', '19:47:00', '19:51:30', '19:52:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (358, '北京PK拾', '131', '19:52:00', '19:56:30', '19:57:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (359, '北京PK拾', '132', '19:57:00', '20:01:30', '20:02:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (360, '北京PK拾', '133', '20:02:00', '20:06:30', '20:07:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (361, '北京PK拾', '134', '20:07:00', '20:11:30', '20:12:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (362, '北京PK拾', '135', '20:12:00', '20:16:30', '20:17:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (363, '北京PK拾', '136', '20:17:00', '20:21:30', '20:22:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (364, '北京PK拾', '137', '20:22:00', '20:26:30', '20:27:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (365, '北京PK拾', '138', '20:27:00', '20:31:30', '20:32:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (366, '北京PK拾', '139', '20:32:00', '20:36:30', '20:37:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (367, '北京PK拾', '140', '20:37:00', '20:41:30', '20:42:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (368, '北京PK拾', '141', '20:42:00', '20:46:30', '20:47:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (369, '北京PK拾', '142', '20:47:00', '20:51:30', '20:52:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (370, '北京PK拾', '143', '20:52:00', '20:56:30', '20:57:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (371, '北京PK拾', '144', '20:57:00', '21:01:30', '21:02:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (372, '北京PK拾', '145', '21:02:00', '21:06:30', '21:07:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (373, '北京PK拾', '146', '21:07:00', '21:11:30', '21:12:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (374, '北京PK拾', '147', '21:12:00', '21:16:30', '21:17:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (375, '北京PK拾', '148', '21:17:00', '21:21:30', '21:22:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (376, '北京PK拾', '149', '21:22:00', '21:26:30', '21:27:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (377, '北京PK拾', '150', '21:27:00', '21:31:30', '21:32:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (378, '北京PK拾', '151', '21:32:00', '21:36:30', '21:37:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (379, '北京PK拾', '152', '21:37:00', '21:41:30', '21:42:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (380, '北京PK拾', '153', '21:42:00', '21:46:30', '21:47:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (381, '北京PK拾', '154', '21:47:00', '21:51:30', '21:52:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (382, '北京PK拾', '155', '21:52:00', '21:56:30', '21:57:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (383, '北京PK拾', '156', '21:57:00', '22:01:30', '22:02:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (384, '北京PK拾', '157', '22:02:00', '22:06:30', '22:07:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (385, '北京PK拾', '158', '22:07:00', '22:11:30', '22:12:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (386, '北京PK拾', '159', '22:12:00', '22:16:30', '22:17:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (387, '北京PK拾', '160', '22:17:00', '22:21:30', '22:22:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (388, '北京PK拾', '161', '22:22:00', '22:26:30', '22:27:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (389, '北京PK拾', '162', '22:27:00', '22:31:30', '22:32:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (390, '北京PK拾', '163', '22:32:00', '22:36:30', '22:37:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (391, '北京PK拾', '164', '22:37:00', '22:41:30', '22:42:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (392, '北京PK拾', '165', '22:42:00', '22:46:30', '22:47:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (393, '北京PK拾', '166', '22:47:00', '22:51:30', '22:52:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (394, '北京PK拾', '167', '22:52:00', '22:56:30', '22:57:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (395, '北京PK拾', '168', '22:57:00', '23:01:30', '23:02:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (396, '北京PK拾', '169', '23:02:00', '23:06:30', '23:07:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (397, '北京PK拾', '170', '23:07:00', '23:11:30', '23:12:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (398, '北京PK拾', '171', '23:12:00', '23:16:30', '23:17:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (399, '北京PK拾', '172', '23:17:00', '23:21:30', '23:22:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (400, '北京PK拾', '173', '23:22:00', '23:26:30', '23:27:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (401, '北京PK拾', '174', '23:27:00', '23:31:30', '23:32:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (402, '北京PK拾', '175', '23:32:00', '23:36:30', '23:37:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (403, '北京PK拾', '176', '23:37:00', '23:41:30', '23:42:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (404, '北京PK拾', '177', '23:42:00', '23:46:30', '23:47:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (405, '北京PK拾', '178', '23:47:00', '23:51:30', '23:52:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (406, '北京PK拾', '179', '23:52:00', '23:56:30', '23:57:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (407, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (408, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (409, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (410, '北京快乐8', '1', '08:58:00', '09:02:50', '09:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (411, '北京快乐8', '2', '09:03:00', '09:07:50', '09:08:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (412, '北京快乐8', '3', '09:08:00', '09:12:50', '09:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (413, '北京快乐8', '4', '09:13:00', '09:17:50', '09:18:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (414, '北京快乐8', '5', '09:18:00', '09:22:50', '09:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (415, '北京快乐8', '6', '09:23:00', '09:27:50', '09:28:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (416, '北京快乐8', '7', '09:28:00', '09:32:50', '09:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (417, '北京快乐8', '8', '09:33:00', '09:37:50', '09:38:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (418, '北京快乐8', '9', '09:38:00', '09:42:50', '09:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (419, '北京快乐8', '10', '09:43:00', '09:47:50', '09:48:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (420, '北京快乐8', '11', '09:48:00', '09:52:50', '09:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (421, '北京快乐8', '12', '09:53:00', '09:57:50', '09:58:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (422, '北京快乐8', '13', '09:58:00', '10:02:50', '10:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (423, '北京快乐8', '14', '10:03:00', '10:07:50', '10:08:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (424, '北京快乐8', '15', '10:08:00', '10:12:50', '10:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (425, '北京快乐8', '16', '10:13:00', '10:17:50', '10:18:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (426, '北京快乐8', '17', '10:18:00', '10:22:50', '10:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (427, '北京快乐8', '18', '10:23:00', '10:27:50', '10:28:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (428, '北京快乐8', '19', '10:28:00', '10:32:50', '10:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (429, '北京快乐8', '20', '10:33:00', '10:37:50', '10:38:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (430, '北京快乐8', '21', '10:38:00', '10:42:50', '10:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (431, '北京快乐8', '22', '10:43:00', '10:47:50', '10:48:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (432, '北京快乐8', '23', '10:48:00', '10:52:50', '10:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (433, '北京快乐8', '24', '10:53:00', '10:57:50', '10:58:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (434, '北京快乐8', '25', '10:58:00', '11:02:50', '11:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (435, '北京快乐8', '26', '11:03:00', '11:07:50', '11:08:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (436, '北京快乐8', '27', '11:08:00', '11:12:50', '11:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (437, '北京快乐8', '28', '11:13:00', '11:17:50', '11:18:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (438, '北京快乐8', '29', '11:18:00', '11:22:50', '11:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (439, '北京快乐8', '30', '11:23:00', '11:27:50', '11:28:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (440, '北京快乐8', '31', '11:28:00', '11:32:50', '11:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (441, '北京快乐8', '32', '11:33:00', '11:37:50', '11:38:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (442, '北京快乐8', '33', '11:38:00', '11:42:50', '11:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (443, '北京快乐8', '34', '11:43:00', '11:47:50', '11:48:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (444, '北京快乐8', '35', '11:48:00', '11:52:50', '11:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (445, '北京快乐8', '36', '11:53:00', '11:57:50', '11:58:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (446, '北京快乐8', '37', '11:58:00', '12:02:50', '12:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (447, '北京快乐8', '38', '12:03:00', '12:07:50', '12:08:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (448, '北京快乐8', '39', '12:08:00', '12:12:50', '12:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (449, '北京快乐8', '40', '12:13:00', '12:17:50', '12:18:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (450, '北京快乐8', '41', '12:18:00', '12:22:50', '12:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (451, '北京快乐8', '42', '12:23:00', '12:27:50', '12:28:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (452, '北京快乐8', '43', '12:28:00', '12:32:50', '12:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (453, '北京快乐8', '44', '12:33:00', '12:37:50', '12:38:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (454, '北京快乐8', '45', '12:38:00', '12:42:50', '12:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (455, '北京快乐8', '46', '12:43:00', '12:47:50', '12:48:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (456, '北京快乐8', '47', '12:48:00', '12:52:50', '12:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (457, '北京快乐8', '48', '12:53:00', '12:57:50', '12:58:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (458, '北京快乐8', '49', '12:58:00', '13:02:50', '13:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (459, '北京快乐8', '50', '13:03:00', '13:07:50', '13:08:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (460, '北京快乐8', '51', '13:08:00', '13:12:50', '13:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (461, '北京快乐8', '52', '13:13:00', '13:17:50', '13:18:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (462, '北京快乐8', '53', '13:18:00', '13:22:50', '13:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (463, '北京快乐8', '54', '13:23:00', '13:27:50', '13:28:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (464, '北京快乐8', '55', '13:28:00', '13:32:50', '13:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (465, '北京快乐8', '56', '13:33:00', '13:37:50', '13:38:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (466, '北京快乐8', '57', '13:38:00', '13:42:50', '13:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (467, '北京快乐8', '58', '13:43:00', '13:47:50', '13:48:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (468, '北京快乐8', '59', '13:48:00', '13:52:50', '13:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (469, '北京快乐8', '60', '13:53:00', '13:57:50', '13:58:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (470, '北京快乐8', '61', '13:58:00', '14:02:50', '14:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (471, '北京快乐8', '62', '14:03:00', '14:07:50', '14:08:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (472, '北京快乐8', '63', '14:08:00', '14:12:50', '14:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (473, '北京快乐8', '64', '14:13:00', '14:17:50', '14:18:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (474, '北京快乐8', '65', '14:18:00', '14:22:50', '14:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (475, '北京快乐8', '66', '14:23:00', '14:27:50', '14:28:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (476, '北京快乐8', '67', '14:28:00', '14:32:50', '14:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (477, '北京快乐8', '68', '14:33:00', '14:37:50', '14:38:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (478, '北京快乐8', '69', '14:38:00', '14:42:50', '14:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (479, '北京快乐8', '70', '14:43:00', '14:47:50', '14:48:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (480, '北京快乐8', '71', '14:48:00', '14:52:50', '14:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (481, '北京快乐8', '72', '14:53:00', '14:57:50', '14:58:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (482, '北京快乐8', '73', '14:58:00', '15:02:50', '15:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (483, '北京快乐8', '74', '15:03:00', '15:07:50', '15:08:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (484, '北京快乐8', '75', '15:08:00', '15:12:50', '15:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (485, '北京快乐8', '76', '15:13:00', '15:17:50', '15:18:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (486, '北京快乐8', '77', '15:18:00', '15:22:50', '15:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (487, '北京快乐8', '78', '15:23:00', '15:27:50', '15:28:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (488, '北京快乐8', '79', '15:28:00', '15:32:50', '15:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (489, '北京快乐8', '80', '15:33:00', '15:37:50', '15:38:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (490, '北京快乐8', '81', '15:38:00', '15:42:50', '15:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (491, '北京快乐8', '82', '15:43:00', '15:47:50', '15:48:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (492, '北京快乐8', '83', '15:48:00', '15:52:50', '15:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (493, '北京快乐8', '84', '15:53:00', '15:57:50', '15:58:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (494, '北京快乐8', '85', '15:58:00', '16:02:50', '16:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (495, '北京快乐8', '86', '16:03:00', '16:07:50', '16:08:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (496, '北京快乐8', '87', '16:08:00', '16:12:50', '16:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (497, '北京快乐8', '88', '16:13:00', '16:17:50', '16:18:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (498, '北京快乐8', '89', '16:18:00', '16:22:50', '16:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (499, '北京快乐8', '90', '16:23:00', '16:27:50', '16:28:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (500, '北京快乐8', '91', '16:28:00', '16:32:50', '16:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (501, '北京快乐8', '92', '16:33:00', '16:37:50', '16:38:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (502, '北京快乐8', '93', '16:38:00', '16:42:50', '16:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (503, '北京快乐8', '94', '16:43:00', '16:47:50', '16:48:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (504, '北京快乐8', '95', '16:48:00', '16:52:50', '16:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (505, '北京快乐8', '96', '16:53:00', '16:57:50', '16:58:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (506, '北京快乐8', '97', '16:58:00', '17:02:50', '17:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (507, '北京快乐8', '98', '17:03:00', '17:07:50', '17:08:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (508, '北京快乐8', '99', '17:08:00', '17:12:50', '17:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (509, '北京快乐8', '100', '17:13:00', '17:17:50', '17:18:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (510, '北京快乐8', '101', '17:18:00', '17:22:50', '17:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (511, '北京快乐8', '102', '17:23:00', '17:27:50', '17:28:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (512, '北京快乐8', '103', '17:28:00', '17:32:50', '17:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (513, '北京快乐8', '104', '17:33:00', '17:37:50', '17:38:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (514, '北京快乐8', '105', '17:38:00', '17:42:50', '17:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (515, '北京快乐8', '106', '17:43:00', '17:47:50', '17:48:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (516, '北京快乐8', '107', '17:48:00', '17:52:50', '17:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (517, '北京快乐8', '108', '17:53:00', '17:57:50', '17:58:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (518, '北京快乐8', '109', '17:58:00', '18:02:50', '18:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (519, '北京快乐8', '110', '18:03:00', '18:07:50', '18:08:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (520, '北京快乐8', '111', '18:08:00', '18:12:50', '18:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (521, '北京快乐8', '112', '18:13:00', '18:17:50', '18:18:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (522, '北京快乐8', '113', '18:18:00', '18:22:50', '18:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (523, '北京快乐8', '114', '18:23:00', '18:27:50', '18:28:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (524, '北京快乐8', '115', '18:28:00', '18:32:50', '18:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (525, '北京快乐8', '116', '18:33:00', '18:37:50', '18:38:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (526, '北京快乐8', '117', '18:38:00', '18:42:50', '18:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (527, '北京快乐8', '118', '18:43:00', '18:47:50', '18:48:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (528, '北京快乐8', '119', '18:48:00', '18:52:50', '18:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (529, '北京快乐8', '120', '18:53:00', '18:57:50', '18:58:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (530, '北京快乐8', '121', '18:58:00', '19:02:50', '19:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (531, '北京快乐8', '122', '19:03:00', '19:07:50', '19:08:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (532, '北京快乐8', '123', '19:08:00', '19:12:50', '19:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (533, '北京快乐8', '124', '19:13:00', '19:17:50', '19:18:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (534, '北京快乐8', '125', '19:18:00', '19:22:50', '19:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (535, '北京快乐8', '126', '19:23:00', '19:27:50', '19:28:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (536, '北京快乐8', '127', '19:28:00', '19:32:50', '19:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (537, '北京快乐8', '128', '19:33:00', '19:37:50', '19:38:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (538, '北京快乐8', '129', '19:38:00', '19:42:50', '19:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (539, '北京快乐8', '130', '19:43:00', '19:47:50', '19:48:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (540, '北京快乐8', '131', '19:48:00', '19:52:50', '19:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (541, '北京快乐8', '132', '19:53:00', '19:57:50', '19:58:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (542, '北京快乐8', '133', '19:58:00', '20:02:50', '20:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (543, '北京快乐8', '134', '20:03:00', '20:07:50', '20:08:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (544, '北京快乐8', '135', '20:08:00', '20:12:50', '20:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (545, '北京快乐8', '136', '20:13:00', '20:17:50', '20:18:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (546, '北京快乐8', '137', '20:18:00', '20:22:50', '20:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (547, '北京快乐8', '138', '20:23:00', '20:27:50', '20:28:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (548, '北京快乐8', '139', '20:28:00', '20:32:50', '20:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (549, '北京快乐8', '140', '20:33:00', '20:37:50', '20:38:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (550, '北京快乐8', '141', '20:38:00', '20:42:50', '20:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (551, '北京快乐8', '142', '20:43:00', '20:47:50', '20:48:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (552, '北京快乐8', '143', '20:48:00', '20:52:50', '20:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (553, '北京快乐8', '144', '20:53:00', '20:57:50', '20:58:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (554, '北京快乐8', '145', '20:58:00', '21:02:50', '21:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (555, '北京快乐8', '146', '21:03:00', '21:07:50', '21:08:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (556, '北京快乐8', '147', '21:08:00', '21:12:50', '21:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (557, '北京快乐8', '148', '21:13:00', '21:17:50', '21:18:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (558, '北京快乐8', '149', '21:18:00', '21:22:50', '21:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (559, '北京快乐8', '150', '21:23:00', '21:27:50', '21:28:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (560, '北京快乐8', '151', '21:28:00', '21:32:50', '21:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (561, '北京快乐8', '152', '21:33:00', '21:37:50', '21:38:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (562, '北京快乐8', '153', '21:38:00', '21:42:50', '21:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (563, '北京快乐8', '154', '21:43:00', '21:47:50', '21:48:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (564, '北京快乐8', '155', '21:48:00', '21:52:50', '21:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (565, '北京快乐8', '156', '21:53:00', '21:57:50', '21:58:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (566, '北京快乐8', '157', '21:58:00', '22:02:50', '22:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (567, '北京快乐8', '158', '22:03:00', '22:07:50', '22:08:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (568, '北京快乐8', '159', '22:08:00', '22:12:50', '22:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (569, '北京快乐8', '160', '22:13:00', '22:17:50', '22:18:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (570, '北京快乐8', '161', '22:18:00', '22:22:50', '22:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (571, '北京快乐8', '162', '22:23:00', '22:27:50', '22:28:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (572, '北京快乐8', '163', '22:28:00', '22:32:50', '22:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (573, '北京快乐8', '164', '22:33:00', '22:37:50', '22:38:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (574, '北京快乐8', '165', '22:38:00', '22:42:50', '22:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (575, '北京快乐8', '166', '22:43:00', '22:47:50', '22:48:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (576, '北京快乐8', '167', '22:48:00', '22:52:50', '22:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (577, '北京快乐8', '168', '22:53:00', '22:57:50', '22:58:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (578, '北京快乐8', '169', '22:58:00', '23:02:50', '23:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (579, '北京快乐8', '170', '23:03:00', '23:07:50', '23:08:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (580, '北京快乐8', '171', '23:08:00', '23:12:50', '23:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (581, '北京快乐8', '172', '23:13:00', '23:17:50', '23:18:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (582, '北京快乐8', '173', '23:18:00', '23:22:50', '23:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (583, '北京快乐8', '174', '23:23:00', '23:27:50', '23:28:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (584, '北京快乐8', '175', '23:28:00', '23:32:50', '23:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (585, '北京快乐8', '176', '23:33:00', '23:37:50', '23:38:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (586, '北京快乐8', '177', '23:38:00', '23:42:50', '23:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (587, '北京快乐8', '178', '23:43:00', '23:47:50', '23:48:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (588, '北京快乐8', '179', '23:48:00', '23:52:50', '23:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (589, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (590, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (591, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (592, '上海时时乐', '01', '09:58:00', '10:28:00', '10:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (593, '上海时时乐', '02', '10:28:00', '10:58:00', '11:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (594, '上海时时乐', '03', '10:58:00', '11:28:00', '11:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (595, '上海时时乐', '04', '11:28:00', '11:58:00', '12:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (596, '上海时时乐', '05', '11:58:00', '12:28:00', '12:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (597, '上海时时乐', '06', '12:28:00', '12:58:00', '13:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (598, '上海时时乐', '07', '12:58:00', '13:28:00', '13:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (599, '上海时时乐', '08', '13:28:00', '13:58:00', '14:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (600, '上海时时乐', '09', '13:58:00', '14:28:00', '14:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (601, '上海时时乐', '10', '14:28:00', '14:58:00', '15:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (602, '上海时时乐', '11', '14:58:00', '15:28:00', '15:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (603, '上海时时乐', '12', '15:28:00', '15:58:00', '16:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (604, '上海时时乐', '13', '15:58:00', '16:28:00', '16:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (605, '上海时时乐', '14', '16:28:00', '16:58:00', '17:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (606, '上海时时乐', '15', '16:58:00', '17:28:00', '17:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (607, '上海时时乐', '16', '17:28:00', '17:58:00', '18:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (608, '上海时时乐', '17', '17:58:00', '18:28:00', '18:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (609, '上海时时乐', '18', '18:28:00', '18:58:00', '19:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (610, '上海时时乐', '19', '18:58:00', '19:28:00', '19:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (611, '上海时时乐', '20', '19:28:00', '19:58:00', '20:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (612, '上海时时乐', '21', '19:58:00', '20:28:00', '20:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (613, '上海时时乐', '22', '20:28:00', '20:58:00', '21:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (614, '上海时时乐', '23', '20:58:00', '21:28:00', '21:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (615, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (616, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (617, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (618, '重庆时时彩', '001', '00:00:00', '00:04:00', '00:05:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (619, '重庆时时彩', '002', '00:05:00', '00:09:00', '00:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (620, '重庆时时彩', '003', '00:10:00', '00:14:00', '00:15:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (621, '重庆时时彩', '004', '00:15:00', '00:19:00', '00:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (622, '重庆时时彩', '005', '00:20:00', '00:24:00', '00:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (623, '重庆时时彩', '006', '00:25:00', '00:29:00', '00:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (624, '重庆时时彩', '007', '00:30:00', '00:34:00', '00:35:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (625, '重庆时时彩', '008', '00:35:00', '00:39:00', '00:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (626, '重庆时时彩', '009', '00:40:00', '00:44:00', '00:45:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (627, '重庆时时彩', '010', '00:45:00', '00:49:00', '00:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (628, '重庆时时彩', '011', '00:50:00', '00:54:00', '00:55:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (629, '重庆时时彩', '012', '00:55:00', '00:59:00', '01:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (630, '重庆时时彩', '013', '01:00:00', '01:04:00', '01:05:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (631, '重庆时时彩', '014', '01:05:00', '01:09:00', '01:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (632, '重庆时时彩', '015', '01:10:00', '01:14:00', '01:15:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (633, '重庆时时彩', '016', '01:15:00', '01:19:00', '01:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (634, '重庆时时彩', '017', '01:20:00', '01:24:00', '01:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (635, '重庆时时彩', '018', '01:25:00', '01:29:00', '01:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (636, '重庆时时彩', '019', '01:30:00', '01:34:00', '01:35:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (637, '重庆时时彩', '020', '01:35:00', '01:39:00', '01:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (638, '重庆时时彩', '021', '01:40:00', '01:44:00', '01:45:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (639, '重庆时时彩', '022', '01:45:00', '01:49:00', '01:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (640, '重庆时时彩', '023', '01:50:00', '01:54:00', '01:55:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (641, '重庆时时彩', '024', '01:55:00', '09:59:00', '10:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (642, '重庆时时彩', '025', '10:00:00', '10:09:00', '10:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (643, '重庆时时彩', '026', '10:10:00', '10:19:00', '10:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (644, '重庆时时彩', '027', '10:20:00', '10:29:00', '10:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (645, '重庆时时彩', '028', '10:30:00', '10:39:00', '10:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (646, '重庆时时彩', '029', '10:40:00', '10:49:00', '10:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (647, '重庆时时彩', '030', '10:50:00', '10:59:00', '11:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (648, '重庆时时彩', '031', '11:00:00', '11:09:00', '11:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (649, '重庆时时彩', '032', '11:10:00', '11:19:00', '11:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (650, '重庆时时彩', '033', '11:20:00', '11:29:00', '11:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (651, '重庆时时彩', '034', '11:30:00', '11:39:00', '11:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (652, '重庆时时彩', '035', '11:40:00', '11:49:00', '11:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (653, '重庆时时彩', '036', '11:50:00', '11:59:00', '12:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (654, '重庆时时彩', '037', '12:00:00', '12:09:00', '12:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (655, '重庆时时彩', '038', '12:10:00', '12:19:00', '12:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (656, '重庆时时彩', '039', '12:20:00', '12:29:00', '12:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (657, '重庆时时彩', '040', '12:30:00', '12:39:00', '12:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (658, '重庆时时彩', '041', '12:40:00', '12:49:00', '12:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (659, '重庆时时彩', '042', '12:50:00', '12:59:00', '13:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (660, '重庆时时彩', '043', '13:00:00', '13:09:00', '13:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (661, '重庆时时彩', '044', '13:10:00', '13:19:00', '13:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (662, '重庆时时彩', '045', '13:20:00', '13:29:00', '13:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (663, '重庆时时彩', '046', '13:30:00', '13:39:00', '13:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (664, '重庆时时彩', '047', '13:40:00', '13:49:00', '13:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (665, '重庆时时彩', '048', '13:50:00', '13:59:00', '14:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (666, '重庆时时彩', '049', '14:00:00', '14:09:00', '14:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (667, '重庆时时彩', '050', '14:10:00', '14:19:00', '14:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (668, '重庆时时彩', '051', '14:20:00', '14:29:00', '14:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (669, '重庆时时彩', '052', '14:30:00', '14:39:00', '14:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (670, '重庆时时彩', '053', '14:40:00', '14:49:00', '14:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (671, '重庆时时彩', '054', '14:50:00', '14:59:00', '15:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (672, '重庆时时彩', '055', '15:00:00', '15:09:00', '15:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (673, '重庆时时彩', '056', '15:10:00', '15:19:00', '15:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (674, '重庆时时彩', '057', '15:20:00', '15:29:00', '15:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (675, '重庆时时彩', '058', '15:30:00', '15:39:00', '15:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (676, '重庆时时彩', '059', '15:40:00', '15:49:00', '15:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (677, '重庆时时彩', '060', '15:50:00', '15:59:00', '16:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (678, '重庆时时彩', '061', '16:00:00', '16:09:00', '16:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (679, '重庆时时彩', '062', '16:10:00', '16:19:00', '16:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (680, '重庆时时彩', '063', '16:20:00', '16:29:00', '16:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (681, '重庆时时彩', '064', '16:30:00', '16:39:00', '16:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (682, '重庆时时彩', '065', '16:40:00', '16:49:00', '16:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (683, '重庆时时彩', '066', '16:50:00', '16:59:00', '17:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (684, '重庆时时彩', '067', '17:00:00', '17:09:00', '17:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (685, '重庆时时彩', '068', '17:10:00', '17:19:00', '17:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (686, '重庆时时彩', '069', '17:20:00', '17:29:00', '17:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (687, '重庆时时彩', '070', '17:30:00', '17:39:00', '17:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (688, '重庆时时彩', '071', '17:40:00', '17:49:00', '17:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (689, '重庆时时彩', '072', '17:50:00', '17:59:00', '18:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (690, '重庆时时彩', '073', '18:00:00', '18:09:00', '18:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (691, '重庆时时彩', '074', '18:10:00', '18:19:00', '18:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (692, '重庆时时彩', '075', '18:20:00', '18:29:00', '18:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (693, '重庆时时彩', '076', '18:30:00', '18:39:00', '18:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (694, '重庆时时彩', '077', '18:40:00', '18:49:00', '18:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (695, '重庆时时彩', '078', '18:50:00', '18:59:00', '19:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (696, '重庆时时彩', '079', '19:00:00', '19:09:00', '19:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (697, '重庆时时彩', '080', '19:10:00', '19:19:00', '19:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (698, '重庆时时彩', '081', '19:20:00', '19:29:00', '19:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (699, '重庆时时彩', '082', '19:30:00', '19:39:00', '19:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (700, '重庆时时彩', '083', '19:40:00', '19:49:00', '19:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (701, '重庆时时彩', '084', '19:50:00', '19:59:00', '20:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (702, '重庆时时彩', '085', '20:00:00', '20:09:00', '20:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (703, '重庆时时彩', '086', '20:10:00', '20:19:00', '20:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (704, '重庆时时彩', '087', '20:20:00', '20:29:00', '20:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (705, '重庆时时彩', '088', '20:30:00', '20:39:00', '20:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (706, '重庆时时彩', '089', '20:40:00', '20:49:00', '20:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (707, '重庆时时彩', '090', '20:50:00', '20:59:00', '21:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (708, '重庆时时彩', '091', '21:00:00', '21:09:00', '21:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (709, '重庆时时彩', '092', '21:10:00', '21:19:00', '21:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (710, '重庆时时彩', '093', '21:20:00', '21:29:00', '21:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (711, '重庆时时彩', '094', '21:30:00', '21:39:00', '21:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (712, '重庆时时彩', '095', '21:40:00', '21:49:00', '21:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (713, '重庆时时彩', '096', '21:50:00', '21:59:00', '22:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (714, '重庆时时彩', '097', '22:00:00', '22:04:00', '22:05:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (715, '重庆时时彩', '098', '22:05:00', '22:09:00', '22:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (716, '重庆时时彩', '099', '22:10:00', '22:14:00', '22:15:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (717, '重庆时时彩', '100', '22:15:00', '22:19:00', '22:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (718, '重庆时时彩', '101', '22:20:00', '22:24:00', '22:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (719, '重庆时时彩', '102', '22:25:00', '22:29:00', '22:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (720, '重庆时时彩', '103', '22:30:00', '22:34:00', '22:35:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (721, '重庆时时彩', '104', '22:35:00', '22:39:00', '22:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (722, '重庆时时彩', '105', '22:40:00', '22:44:00', '22:45:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (723, '重庆时时彩', '106', '22:45:00', '22:49:00', '22:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (724, '重庆时时彩', '107', '22:50:00', '22:54:00', '22:55:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (725, '重庆时时彩', '108', '22:55:00', '22:59:00', '23:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (726, '重庆时时彩', '109', '23:00:00', '23:04:00', '23:05:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (727, '重庆时时彩', '110', '23:05:00', '23:09:00', '23:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (728, '重庆时时彩', '111', '23:10:00', '23:14:00', '23:15:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (729, '重庆时时彩', '112', '23:15:00', '23:19:00', '23:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (730, '重庆时时彩', '113', '23:20:00', '23:24:00', '23:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (731, '重庆时时彩', '114', '23:25:00', '23:29:00', '23:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (732, '重庆时时彩', '115', '23:30:00', '23:34:00', '23:35:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (733, '重庆时时彩', '116', '23:35:00', '23:39:00', '23:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (734, '重庆时时彩', '117', '23:40:00', '23:44:00', '23:45:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (735, '重庆时时彩', '118', '23:45:00', '23:49:00', '23:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (736, '重庆时时彩', '119', '23:50:00', '23:54:00', '23:55:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (737, '重庆时时彩', '120', '23:55:00', '23:59:00', '23:59:59', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (767, '天津时时彩', '027', '13:19:00', '13:27:00', '13:29:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (766, '天津时时彩', '026', '13:09:00', '13:17:00', '13:19:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (765, '天津时时彩', '025', '12:59:00', '13:07:00', '13:09:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (764, '天津时时彩', '024', '12:49:00', '12:57:00', '12:59:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (763, '天津时时彩', '023', '12:39:00', '12:47:00', '12:49:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (762, '天津时时彩', '022', '12:29:00', '12:37:00', '12:39:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (761, '天津时时彩', '021', '12:19:00', '12:27:00', '12:29:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (760, '天津时时彩', '020', '12:09:00', '12:17:00', '12:19:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (759, '天津时时彩', '019', '11:59:00', '12:07:00', '12:09:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (758, '天津时时彩', '018', '11:49:00', '11:57:00', '11:59:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (757, '天津时时彩', '017', '11:39:00', '11:47:00', '11:49:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (756, '天津时时彩', '016', '11:29:00', '11:37:00', '11:39:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (755, '天津时时彩', '015', '11:19:00', '11:27:00', '11:29:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (754, '天津时时彩', '014', '11:09:00', '11:17:00', '11:19:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (753, '天津时时彩', '013', '10:59:00', '11:07:00', '11:09:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (752, '天津时时彩', '012', '10:49:00', '10:57:00', '10:59:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (751, '天津时时彩', '011', '10:39:00', '10:47:00', '10:49:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (750, '天津时时彩', '010', '10:29:00', '10:37:00', '10:39:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (749, '天津时时彩', '009', '10:19:00', '10:27:00', '10:29:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (748, '天津时时彩', '008', '10:09:00', '10:17:00', '10:19:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (747, '天津时时彩', '007', '09:59:00', '10:07:00', '10:09:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (746, '天津时时彩', '006', '09:49:00', '09:57:00', '09:59:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (745, '天津时时彩', '005', '09:39:00', '09:47:00', '09:49:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (744, '天津时时彩', '004', '09:29:00', '09:37:00', '09:39:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (743, '天津时时彩', '003', '09:19:00', '09:27:00', '09:29:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (742, '天津时时彩', '002', '09:09:00', '09:17:00', '09:19:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (741, '天津时时彩', '001', '08:59:00', '09:07:00', '09:09:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (740, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (739, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (738, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (768, '天津时时彩', '028', '13:29:00', '13:37:00', '13:39:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (769, '天津时时彩', '029', '13:39:00', '13:47:00', '13:49:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (770, '天津时时彩', '030', '13:49:00', '13:57:00', '13:59:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (771, '天津时时彩', '031', '13:59:00', '14:07:00', '14:09:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (772, '天津时时彩', '032', '14:09:00', '14:17:00', '14:19:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (773, '天津时时彩', '033', '14:19:00', '14:27:00', '14:29:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (774, '天津时时彩', '034', '14:29:00', '14:37:00', '14:39:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (775, '天津时时彩', '035', '14:39:00', '14:47:00', '14:49:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (776, '天津时时彩', '036', '14:49:00', '14:57:00', '14:59:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (777, '天津时时彩', '037', '14:59:00', '15:07:00', '15:09:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (778, '天津时时彩', '038', '15:09:00', '15:17:00', '15:19:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (779, '天津时时彩', '039', '15:19:00', '15:27:00', '15:29:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (780, '天津时时彩', '040', '15:29:00', '15:37:00', '15:39:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (781, '天津时时彩', '041', '15:39:00', '15:47:00', '15:49:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (782, '天津时时彩', '042', '15:49:00', '15:57:00', '15:59:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (783, '天津时时彩', '043', '15:59:00', '16:07:00', '16:09:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (784, '天津时时彩', '044', '16:09:00', '16:17:00', '16:19:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (785, '天津时时彩', '045', '16:19:00', '16:27:00', '16:29:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (786, '天津时时彩', '046', '16:29:00', '16:37:00', '16:39:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (787, '天津时时彩', '047', '16:39:00', '16:47:00', '16:49:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (788, '天津时时彩', '048', '16:49:00', '16:57:00', '16:59:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (789, '天津时时彩', '049', '16:59:00', '17:07:00', '17:09:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (790, '天津时时彩', '050', '17:09:00', '17:17:00', '17:19:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (791, '天津时时彩', '051', '17:19:00', '17:27:00', '17:29:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (792, '天津时时彩', '052', '17:29:00', '17:37:00', '17:39:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (793, '天津时时彩', '053', '17:39:00', '17:47:00', '17:49:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (794, '天津时时彩', '054', '17:49:00', '17:57:00', '17:59:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (795, '天津时时彩', '055', '17:59:00', '18:07:00', '18:09:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (796, '天津时时彩', '056', '18:09:00', '18:17:00', '18:19:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (797, '天津时时彩', '057', '18:19:00', '18:27:00', '18:29:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (798, '天津时时彩', '058', '18:29:00', '18:37:00', '18:39:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (799, '天津时时彩', '059', '18:39:00', '18:47:00', '18:49:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (800, '天津时时彩', '060', '18:49:00', '18:57:00', '18:59:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (801, '天津时时彩', '061', '18:59:00', '19:07:00', '19:09:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (802, '天津时时彩', '062', '19:09:00', '19:17:00', '19:19:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (803, '天津时时彩', '063', '19:19:00', '19:27:00', '19:29:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (804, '天津时时彩', '064', '19:29:00', '19:37:00', '19:39:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (805, '天津时时彩', '065', '19:39:00', '19:47:00', '19:49:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (806, '天津时时彩', '066', '19:49:00', '19:57:00', '19:59:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (807, '天津时时彩', '067', '19:59:00', '20:07:00', '20:09:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (808, '天津时时彩', '068', '20:09:00', '20:17:00', '20:19:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (809, '天津时时彩', '069', '20:19:00', '20:27:00', '20:29:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (810, '天津时时彩', '070', '20:29:00', '20:37:00', '20:39:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (811, '天津时时彩', '071', '20:39:00', '20:47:00', '20:49:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (812, '天津时时彩', '072', '20:49:00', '20:57:00', '20:59:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (813, '天津时时彩', '073', '20:59:00', '21:07:00', '21:09:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (814, '天津时时彩', '074', '21:09:00', '21:17:00', '21:19:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (815, '天津时时彩', '075', '21:19:00', '21:27:00', '21:29:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (816, '天津时时彩', '076', '21:29:00', '21:37:00', '21:39:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (817, '天津时时彩', '077', '21:39:00', '21:47:00', '21:49:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (818, '天津时时彩', '078', '21:49:00', '21:57:00', '21:59:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (819, '天津时时彩', '079', '21:59:00', '22:07:00', '22:09:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (820, '天津时时彩', '080', '22:09:00', '22:17:00', '22:19:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (821, '天津时时彩', '081', '22:19:00', '22:27:00', '22:29:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (822, '天津时时彩', '082', '22:29:00', '22:37:00', '22:39:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (823, '天津时时彩', '083', '22:39:00', '22:47:00', '22:49:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (824, '天津时时彩', '084', '22:49:00', '22:57:00', '22:59:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (825, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (826, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (827, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (995, '江西时时彩', '084', '23:01:00', '23:09:00', '23:11:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (994, '江西时时彩', '083', '22:51:00', '22:59:00', '23:01:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (993, '江西时时彩', '082', '22:41:00', '22:49:00', '22:51:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (992, '江西时时彩', '081', '22:31:00', '22:39:00', '22:41:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (991, '江西时时彩', '080', '22:21:00', '22:29:00', '22:31:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (990, '江西时时彩', '079', '22:11:00', '22:19:00', '22:21:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (989, '江西时时彩', '078', '22:00:00', '22:09:00', '22:11:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (988, '江西时时彩', '077', '21:50:00', '21:58:00', '22:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (987, '江西时时彩', '076', '21:40:00', '21:48:00', '21:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (986, '江西时时彩', '075', '21:30:00', '21:38:00', '21:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (985, '江西时时彩', '074', '21:20:00', '21:28:00', '21:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (984, '江西时时彩', '073', '21:10:00', '21:18:00', '21:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (983, '江西时时彩', '072', '21:00:00', '21:08:00', '21:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (982, '江西时时彩', '071', '20:49:00', '20:58:00', '21:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (981, '江西时时彩', '070', '20:39:00', '20:47:00', '20:49:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (980, '江西时时彩', '069', '20:29:00', '20:37:00', '20:39:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (979, '江西时时彩', '068', '20:19:00', '20:27:00', '20:29:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (978, '江西时时彩', '067', '20:09:00', '20:17:00', '20:19:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (977, '江西时时彩', '066', '19:59:00', '20:07:00', '20:09:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (976, '江西时时彩', '065', '19:49:00', '19:57:00', '19:59:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (975, '江西时时彩', '064', '19:38:00', '19:47:00', '19:49:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (974, '江西时时彩', '063', '19:28:00', '19:36:00', '19:38:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (973, '江西时时彩', '062', '19:18:00', '19:26:00', '19:28:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (972, '江西时时彩', '061', '19:08:00', '19:16:00', '19:18:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (971, '江西时时彩', '060', '18:58:00', '19:06:00', '19:08:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (970, '江西时时彩', '059', '18:48:00', '18:56:00', '18:58:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (969, '江西时时彩', '058', '18:38:00', '18:46:00', '18:48:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (968, '江西时时彩', '057', '18:27:00', '18:36:00', '18:38:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (967, '江西时时彩', '056', '18:17:00', '18:25:00', '18:27:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (966, '江西时时彩', '055', '18:07:00', '18:15:00', '18:17:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (965, '江西时时彩', '054', '17:57:00', '18:05:00', '18:07:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (964, '江西时时彩', '053', '17:47:00', '17:55:00', '17:57:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (963, '江西时时彩', '052', '17:37:00', '17:45:00', '17:47:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (962, '江西时时彩', '051', '17:27:00', '17:35:00', '17:37:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (961, '江西时时彩', '050', '17:17:00', '17:25:00', '17:27:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (960, '江西时时彩', '049', '17:07:00', '17:15:00', '17:17:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (959, '江西时时彩', '048', '16:56:00', '17:05:00', '17:07:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (958, '江西时时彩', '047', '16:46:00', '16:54:00', '16:56:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (957, '江西时时彩', '046', '16:36:00', '16:44:00', '16:46:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (956, '江西时时彩', '045', '16:25:00', '16:34:00', '16:36:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (955, '江西时时彩', '044', '16:15:00', '16:23:00', '16:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (954, '江西时时彩', '043', '16:05:00', '16:13:00', '16:15:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (953, '江西时时彩', '042', '15:55:00', '16:03:00', '16:05:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (952, '江西时时彩', '041', '15:45:00', '15:53:00', '15:55:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (951, '江西时时彩', '040', '15:35:00', '15:43:00', '15:45:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (950, '江西时时彩', '039', '15:25:00', '15:33:00', '15:35:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (949, '江西时时彩', '038', '15:14:00', '15:23:00', '15:25:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (948, '江西时时彩', '037', '15:04:00', '15:12:00', '15:14:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (947, '江西时时彩', '036', '14:54:00', '15:02:00', '15:04:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (946, '江西时时彩', '035', '14:44:00', '14:52:00', '14:54:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (945, '江西时时彩', '034', '14:34:00', '14:42:00', '14:44:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (944, '江西时时彩', '033', '14:24:00', '14:32:00', '14:34:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (943, '江西时时彩', '032', '14:14:00', '14:22:00', '14:24:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (942, '江西时时彩', '031', '14:03:00', '14:12:00', '14:14:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (941, '江西时时彩', '030', '13:53:00', '14:01:00', '14:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (940, '江西时时彩', '029', '13:43:00', '13:51:00', '13:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (939, '江西时时彩', '028', '13:33:00', '13:41:00', '13:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (938, '江西时时彩', '027', '13:23:00', '13:31:00', '13:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (937, '江西时时彩', '026', '13:13:00', '13:21:00', '13:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (936, '江西时时彩', '025', '13:03:00', '13:11:00', '13:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (935, '江西时时彩', '024', '12:52:00', '13:01:00', '13:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (934, '江西时时彩', '023', '12:42:00', '12:50:00', '12:52:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (933, '江西时时彩', '022', '12:32:00', '12:40:00', '12:42:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (932, '江西时时彩', '021', '12:22:00', '12:30:00', '12:32:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (931, '江西时时彩', '020', '12:12:00', '12:20:00', '12:22:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (930, '江西时时彩', '019', '12:02:00', '12:10:00', '12:12:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (929, '江西时时彩', '018', '11:52:00', '12:00:00', '12:02:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (928, '江西时时彩', '017', '11:42:00', '11:49:00', '11:52:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (927, '江西时时彩', '016', '11:31:00', '11:40:00', '11:42:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (926, '江西时时彩', '015', '11:21:00', '11:29:00', '11:31:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (925, '江西时时彩', '014', '11:11:00', '11:19:00', '11:21:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (924, '江西时时彩', '013', '11:01:00', '11:09:00', '11:11:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (923, '江西时时彩', '012', '10:51:00', '10:59:00', '11:01:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (922, '江西时时彩', '011', '10:41:00', '10:49:00', '10:51:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (921, '江西时时彩', '010', '10:31:00', '10:39:00', '10:41:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (920, '江西时时彩', '009', '10:20:00', '10:29:00', '10:31:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (919, '江西时时彩', '008', '10:10:00', '10:18:00', '10:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (918, '江西时时彩', '007', '10:00:00', '10:08:00', '10:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (917, '江西时时彩', '006', '09:50:00', '09:58:00', '10:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (916, '江西时时彩', '005', '09:40:00', '09:48:00', '09:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (915, '江西时时彩', '004', '09:30:00', '09:38:00', '09:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (914, '江西时时彩', '003', '09:20:00', '09:28:00', '09:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (913, '江西时时彩', '002', '09:10:00', '09:18:00', '09:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (912, '江西时时彩', '001', '09:00:00', '09:08:00', '09:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (996, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (997, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (998, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (999, '广东十一选五', '01', '09:00:00', '09:09:00', '09:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1000, '广东十一选五', '02', '09:10:00', '09:19:00', '09:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1001, '广东十一选五', '03', '09:20:00', '09:29:00', '09:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1002, '广东十一选五', '04', '09:30:00', '09:39:00', '09:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1003, '广东十一选五', '05', '09:40:00', '09:49:00', '09:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1004, '广东十一选五', '06', '09:50:00', '09:59:00', '10:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1005, '广东十一选五', '07', '10:00:00', '10:09:00', '10:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1006, '广东十一选五', '08', '10:10:00', '10:19:00', '10:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1007, '广东十一选五', '09', '10:20:00', '10:29:00', '10:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1008, '广东十一选五', '10', '10:30:00', '10:39:00', '10:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1009, '广东十一选五', '11', '10:40:00', '10:49:00', '10:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1010, '广东十一选五', '12', '10:50:00', '10:59:00', '11:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1011, '广东十一选五', '13', '11:00:00', '11:09:00', '11:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1012, '广东十一选五', '14', '11:10:00', '11:19:00', '11:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1013, '广东十一选五', '15', '11:20:00', '11:29:00', '11:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1014, '广东十一选五', '16', '11:30:00', '11:39:00', '11:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1015, '广东十一选五', '17', '11:40:00', '11:49:00', '11:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1016, '广东十一选五', '18', '11:50:00', '11:59:00', '12:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1017, '广东十一选五', '19', '12:00:00', '12:09:00', '12:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1018, '广东十一选五', '20', '12:10:00', '12:19:00', '12:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1019, '广东十一选五', '21', '12:20:00', '12:29:00', '12:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1020, '广东十一选五', '22', '12:30:00', '12:39:00', '12:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1021, '广东十一选五', '23', '12:40:00', '12:49:00', '12:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1022, '广东十一选五', '24', '12:50:00', '12:59:00', '13:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1023, '广东十一选五', '25', '13:00:00', '13:09:00', '13:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1024, '广东十一选五', '26', '13:10:00', '13:19:00', '13:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1025, '广东十一选五', '27', '13:20:00', '13:29:00', '13:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1026, '广东十一选五', '28', '13:30:00', '13:39:00', '13:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1027, '广东十一选五', '29', '13:40:00', '13:49:00', '13:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1028, '广东十一选五', '30', '13:50:00', '13:59:00', '14:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1029, '广东十一选五', '31', '14:00:00', '14:09:00', '14:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1030, '广东十一选五', '32', '14:10:00', '14:19:00', '14:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1031, '广东十一选五', '33', '14:20:00', '14:29:00', '14:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1032, '广东十一选五', '34', '14:30:00', '14:39:00', '14:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1033, '广东十一选五', '35', '14:40:00', '14:49:00', '14:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1034, '广东十一选五', '36', '14:50:00', '14:59:00', '15:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1035, '广东十一选五', '37', '15:00:00', '15:09:00', '15:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1036, '广东十一选五', '38', '15:10:00', '15:19:00', '15:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1037, '广东十一选五', '39', '15:20:00', '15:29:00', '15:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1038, '广东十一选五', '40', '15:30:00', '15:39:00', '15:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1039, '广东十一选五', '41', '15:40:00', '15:49:00', '15:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1040, '广东十一选五', '42', '15:50:00', '15:59:00', '16:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1041, '广东十一选五', '43', '16:00:00', '16:09:00', '16:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1042, '广东十一选五', '44', '16:10:00', '16:19:00', '16:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1043, '广东十一选五', '45', '16:20:00', '16:29:00', '16:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1044, '广东十一选五', '46', '16:30:00', '16:39:00', '16:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1045, '广东十一选五', '47', '16:40:00', '16:49:00', '16:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1046, '广东十一选五', '48', '16:50:00', '16:59:00', '17:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1047, '广东十一选五', '49', '17:00:00', '17:09:00', '17:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1048, '广东十一选五', '50', '17:10:00', '17:19:00', '17:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1049, '广东十一选五', '51', '17:20:00', '17:29:00', '17:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1050, '广东十一选五', '52', '17:30:00', '17:39:00', '17:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1051, '广东十一选五', '53', '17:40:00', '17:49:00', '17:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1052, '广东十一选五', '54', '17:50:00', '17:59:00', '18:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1053, '广东十一选五', '55', '18:00:00', '18:09:00', '18:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1054, '广东十一选五', '56', '18:10:00', '18:19:00', '18:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1055, '广东十一选五', '57', '18:20:00', '18:29:00', '18:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1056, '广东十一选五', '58', '18:30:00', '18:39:00', '18:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1057, '广东十一选五', '59', '18:40:00', '18:49:00', '18:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1058, '广东十一选五', '60', '18:50:00', '18:59:00', '19:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1059, '广东十一选五', '61', '19:00:00', '19:09:00', '19:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1060, '广东十一选五', '62', '19:10:00', '19:19:00', '19:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1061, '广东十一选五', '63', '19:20:00', '19:29:00', '19:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1062, '广东十一选五', '64', '19:30:00', '19:39:00', '19:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1063, '广东十一选五', '65', '19:40:00', '19:49:00', '19:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1064, '广东十一选五', '66', '19:50:00', '19:59:00', '20:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1065, '广东十一选五', '67', '20:00:00', '20:09:00', '20:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1066, '广东十一选五', '68', '20:10:00', '20:19:00', '20:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1067, '广东十一选五', '69', '20:20:00', '20:29:00', '20:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1068, '广东十一选五', '70', '20:30:00', '20:39:00', '20:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1069, '广东十一选五', '71', '20:40:00', '20:49:00', '20:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1070, '广东十一选五', '72', '20:50:00', '20:59:00', '21:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1071, '广东十一选五', '73', '21:00:00', '21:09:00', '21:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1072, '广东十一选五', '74', '21:10:00', '21:19:00', '21:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1073, '广东十一选五', '75', '21:20:00', '21:29:00', '21:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1074, '广东十一选五', '76', '21:30:00', '21:39:00', '21:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1075, '广东十一选五', '77', '21:40:00', '21:49:00', '21:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1076, '广东十一选五', '78', '21:50:00', '21:59:00', '22:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1077, '广东十一选五', '79', '22:00:00', '22:09:00', '22:10:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1078, '广东十一选五', '80', '22:10:00', '22:19:00', '22:20:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1079, '广东十一选五', '81', '22:20:00', '22:29:00', '22:30:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1080, '广东十一选五', '82', '22:30:00', '22:39:00', '22:40:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1081, '广东十一选五', '83', '22:40:00', '22:49:00', '22:50:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1082, '广东十一选五', '84', '22:50:00', '22:59:00', '23:00:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1201, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1202, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1203, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1204, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1205, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1206, '重庆十分彩', '001', '23:53:00', '00:01:00', '00:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1207, '重庆十分彩', '002', '00:03:00', '00:11:00', '00:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1208, '重庆十分彩', '003', '00:13:00', '00:21:00', '00:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1209, '重庆十分彩', '004', '00:23:00', '00:31:00', '00:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1210, '重庆十分彩', '005', '00:33:00', '00:41:00', '00:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1211, '重庆十分彩', '006', '00:43:00', '00:51:00', '00:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1212, '重庆十分彩', '007', '00:53:00', '01:01:00', '01:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1213, '重庆十分彩', '008', '01:03:00', '01:11:00', '01:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1214, '重庆十分彩', '009', '01:13:00', '01:21:00', '01:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1215, '重庆十分彩', '010', '01:23:00', '01:31:00', '01:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1216, '重庆十分彩', '011', '01:33:00', '01:41:00', '01:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1217, '重庆十分彩', '012', '01:43:00', '01:51:00', '01:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1218, '重庆十分彩', '013', '01:53:00', '02:01:00', '02:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1219, '重庆十分彩', '014', '02:03:00', '10:01:00', '10:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1220, '重庆十分彩', '015', '10:03:00', '10:11:00', '10:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1221, '重庆十分彩', '016', '10:13:00', '10:21:00', '10:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1222, '重庆十分彩', '017', '10:23:00', '10:31:00', '10:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1223, '重庆十分彩', '018', '10:33:00', '10:41:00', '10:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1224, '重庆十分彩', '019', '10:43:00', '10:51:00', '10:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1225, '重庆十分彩', '020', '10:53:00', '11:01:00', '11:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1226, '重庆十分彩', '021', '11:03:00', '11:11:00', '11:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1227, '重庆十分彩', '022', '11:13:00', '11:21:00', '11:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1228, '重庆十分彩', '023', '11:23:00', '11:31:00', '11:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1229, '重庆十分彩', '024', '11:33:00', '11:41:00', '11:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1230, '重庆十分彩', '025', '11:43:00', '11:51:00', '11:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1231, '重庆十分彩', '026', '11:53:00', '12:01:00', '12:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1232, '重庆十分彩', '027', '12:03:00', '12:11:00', '12:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1233, '重庆十分彩', '028', '12:13:00', '12:21:00', '12:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1234, '重庆十分彩', '029', '12:23:00', '12:31:00', '12:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1235, '重庆十分彩', '030', '12:33:00', '12:41:00', '12:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1236, '重庆十分彩', '031', '12:43:00', '12:51:00', '12:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1237, '重庆十分彩', '032', '12:53:00', '13:01:00', '13:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1238, '重庆十分彩', '033', '13:03:00', '13:11:00', '13:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1239, '重庆十分彩', '034', '13:13:00', '13:21:00', '13:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1240, '重庆十分彩', '035', '13:23:00', '13:31:00', '13:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1241, '重庆十分彩', '036', '13:33:00', '13:41:00', '13:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1242, '重庆十分彩', '037', '13:43:00', '13:51:00', '13:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1243, '重庆十分彩', '038', '13:53:00', '14:01:00', '14:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1244, '重庆十分彩', '039', '14:03:00', '14:11:00', '14:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1245, '重庆十分彩', '040', '14:13:00', '14:21:00', '14:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1246, '重庆十分彩', '041', '14:23:00', '14:31:00', '14:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1247, '重庆十分彩', '042', '14:33:00', '14:41:00', '14:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1248, '重庆十分彩', '043', '14:43:00', '14:51:00', '14:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1249, '重庆十分彩', '044', '14:53:00', '15:01:00', '15:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1250, '重庆十分彩', '045', '15:03:00', '15:11:00', '15:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1251, '重庆十分彩', '046', '15:13:00', '15:21:00', '15:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1252, '重庆十分彩', '047', '15:23:00', '15:31:00', '15:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1253, '重庆十分彩', '048', '15:33:00', '15:41:00', '15:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1254, '重庆十分彩', '049', '15:43:00', '15:51:00', '15:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1255, '重庆十分彩', '050', '15:53:00', '16:01:00', '16:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1256, '重庆十分彩', '051', '16:03:00', '16:11:00', '16:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1257, '重庆十分彩', '052', '16:13:00', '16:21:00', '16:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1258, '重庆十分彩', '053', '16:23:00', '16:31:00', '16:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1259, '重庆十分彩', '054', '16:33:00', '16:41:00', '16:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1260, '重庆十分彩', '055', '16:43:00', '16:51:00', '16:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1261, '重庆十分彩', '056', '16:53:00', '17:01:00', '17:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1262, '重庆十分彩', '057', '17:03:00', '17:11:00', '17:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1263, '重庆十分彩', '058', '17:13:00', '17:21:00', '17:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1264, '重庆十分彩', '059', '17:23:00', '17:31:00', '17:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1265, '重庆十分彩', '060', '17:33:00', '17:41:00', '17:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1266, '重庆十分彩', '061', '17:43:00', '17:51:00', '17:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1267, '重庆十分彩', '062', '17:53:00', '18:01:00', '18:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1268, '重庆十分彩', '063', '18:03:00', '18:11:00', '18:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1269, '重庆十分彩', '064', '18:13:00', '18:21:00', '18:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1270, '重庆十分彩', '065', '18:23:00', '18:31:00', '18:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1271, '重庆十分彩', '066', '18:33:00', '18:41:00', '18:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1272, '重庆十分彩', '067', '18:43:00', '18:51:00', '18:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1273, '重庆十分彩', '068', '18:53:00', '19:01:00', '19:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1274, '重庆十分彩', '069', '19:03:00', '19:11:00', '19:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1275, '重庆十分彩', '070', '19:13:00', '19:21:00', '19:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1276, '重庆十分彩', '071', '19:23:00', '19:31:00', '19:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1277, '重庆十分彩', '072', '19:33:00', '19:41:00', '19:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1278, '重庆十分彩', '073', '19:43:00', '19:51:00', '19:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1279, '重庆十分彩', '074', '19:53:00', '20:01:00', '20:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1280, '重庆十分彩', '075', '20:03:00', '20:11:00', '20:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1281, '重庆十分彩', '076', '20:13:00', '20:21:00', '20:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1282, '重庆十分彩', '077', '20:23:00', '20:31:00', '20:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1283, '重庆十分彩', '078', '20:33:00', '20:41:00', '20:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1284, '重庆十分彩', '079', '20:43:00', '20:51:00', '20:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1285, '重庆十分彩', '080', '20:53:00', '21:01:00', '21:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1286, '重庆十分彩', '081', '21:03:00', '21:11:00', '21:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1287, '重庆十分彩', '082', '21:13:00', '21:21:00', '21:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1288, '重庆十分彩', '083', '21:23:00', '21:31:00', '21:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1289, '重庆十分彩', '084', '21:33:00', '21:41:00', '21:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1290, '重庆十分彩', '085', '21:43:00', '21:51:00', '21:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1291, '重庆十分彩', '086', '21:53:00', '22:01:00', '22:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1292, '重庆十分彩', '087', '22:03:00', '22:11:00', '22:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1293, '重庆十分彩', '088', '22:13:00', '22:21:00', '22:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1294, '重庆十分彩', '089', '22:23:00', '22:31:00', '22:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1295, '重庆十分彩', '090', '22:33:00', '22:41:00', '22:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1296, '重庆十分彩', '091', '22:43:00', '22:51:00', '22:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1297, '重庆十分彩', '092', '22:53:00', '23:01:00', '23:03:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1298, '重庆十分彩', '093', '23:03:00', '23:11:00', '23:13:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1299, '重庆十分彩', '094', '23:13:00', '23:21:00', '23:23:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1300, '重庆十分彩', '095', '23:23:00', '23:31:00', '23:33:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1301, '重庆十分彩', '096', '23:33:00', '23:41:00', '23:43:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1302, '重庆十分彩', '097', '23:43:00', '23:51:00', '23:53:00', NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1495, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1496, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lottery_schedule` VALUES (1497, '-------------', '-------------', NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for lq_match
-- ----------------------------
DROP TABLE IF EXISTS `lq_match`;
CREATE TABLE `lq_match` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Match_ID` varchar(50) NOT NULL,
  `Match_Date` varchar(20) DEFAULT NULL,
  `Match_Time` varchar(20) DEFAULT NULL,
  `Match_Name` varchar(50) NOT NULL,
  `Match_Master` varchar(50) NOT NULL,
  `Match_Guest` varchar(50) NOT NULL,
  `Match_IsLose` varchar(2) DEFAULT NULL,
  `Match_Type` int(1) unsigned DEFAULT NULL,
  `Match_ShowType` varchar(2) DEFAULT NULL,
  `Match_Ho` double DEFAULT NULL,
  `Match_Ao` double DEFAULT NULL,
  `Match_RGG` varchar(15) DEFAULT NULL,
  `Match_DxGG` varchar(15) DEFAULT NULL,
  `Match_Dxdpl` double DEFAULT NULL,
  `Match_Dxxpl` double DEFAULT NULL,
  `Match_Dsdpl` double DEFAULT NULL,
  `Match_Dsspl` double DEFAULT NULL,
  `Match_BzM` double DEFAULT NULL,
  `Match_BzG` double DEFAULT NULL,
  `Match_BzH` double DEFAULT NULL,
  `Match_Score` varchar(10) DEFAULT NULL,
  `Match_JS` int(1) unsigned DEFAULT '0',
  `Match_AddDate` datetime DEFAULT NULL,
  `Match_CoverDate` datetime DEFAULT NULL,
  `Match_Allowds` int(3) unsigned DEFAULT '0',
  `Match_Allowdj` int(3) unsigned DEFAULT '0',
  `Match_Allowg` int(3) unsigned DEFAULT '0',
  `Match_Allowrf` int(3) unsigned DEFAULT '0',
  `Match_Allowzc` int(3) unsigned DEFAULT '0',
  `Match_IsShowds` int(3) unsigned DEFAULT '1',
  `Match_IsShowdj` int(3) unsigned DEFAULT '1',
  `Match_IsShowg` int(3) unsigned DEFAULT '1',
  `Match_IsShowrf` int(3) unsigned DEFAULT '1',
  `Match_IsShowzc` int(3) unsigned DEFAULT '1',
  `Match_StopUpdateds` int(3) unsigned DEFAULT '0',
  `Match_StopUpdatedj` int(3) unsigned DEFAULT '0',
  `Match_StopUpdateg` int(3) unsigned DEFAULT '0',
  `Match_StopUpdaterf` int(3) unsigned DEFAULT '0',
  `Match_StopUpdatezc` int(3) unsigned DEFAULT '0',
  `Match_oneScore` varchar(10) DEFAULT NULL,
  `Match_twoScore` varchar(50) DEFAULT NULL,
  `Match_threeScore` varchar(50) DEFAULT NULL,
  `Match_fourScore` varchar(50) DEFAULT NULL,
  `Match_upScore` varchar(50) DEFAULT NULL,
  `Match_downScore` varchar(50) DEFAULT NULL,
  `Match_MasterID` varchar(15) DEFAULT NULL,
  `Match_GuestID` varchar(15) DEFAULT NULL,
  `Match_MatchTime` varchar(30) DEFAULT NULL,
  `Match_Allowb` int(3) unsigned DEFAULT '0',
  `Match_IsShowb` int(3) unsigned DEFAULT '1',
  `MB_Inball_1st` int(11) DEFAULT NULL,
  `MB_Inball_2st` int(11) DEFAULT NULL,
  `MB_Inball_3st` int(11) DEFAULT NULL,
  `MB_Inball_4st` int(11) DEFAULT NULL,
  `MB_Inball_Add` int(11) DEFAULT NULL,
  `TG_Inball_1st` int(11) DEFAULT NULL,
  `TG_Inball_2st` int(11) DEFAULT NULL,
  `TG_Inball_3st` int(11) DEFAULT NULL,
  `TG_Inball_4st` int(11) DEFAULT NULL,
  `TG_Inball_Add` int(11) DEFAULT NULL,
  `MB_Inball` varchar(5) DEFAULT '',
  `TG_Inball` varchar(5) DEFAULT '',
  `MB_Inball_HR` int(11) DEFAULT NULL,
  `MB_Inball_ER` int(11) DEFAULT NULL,
  `TG_Inball_HR` int(11) DEFAULT NULL,
  `TG_Inball_ER` int(11) DEFAULT NULL,
  `MB_Inball_OK` varchar(5) DEFAULT '',
  `TG_Inball_OK` varchar(5) DEFAULT '',
  `HasAddTime` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `ScoreCheck` int(11) DEFAULT '0',
  `Match_More` int(11) DEFAULT '0',
  `Match_NowScore` varchar(10) DEFAULT NULL,
  `Match_LstTime` datetime DEFAULT NULL,
  `iPage` int(11) DEFAULT NULL,
  `iSn` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT '',
  `score_time` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Match_ID` (`Match_ID`),
  KEY `Match_Date` (`Match_Date`),
  KEY `Match_Name` (`Match_Name`),
  KEY `Match_CoverDate` (`Match_CoverDate`),
  KEY `Match_Type` (`Match_Type`),
  KEY `Match_StopUpdateds` (`Match_StopUpdateds`),
  KEY `Match_StopUpdatezc` (`Match_StopUpdatezc`),
  KEY `Match_StopUpdateg` (`Match_StopUpdateg`),
  KEY `Match_JS` (`Match_JS`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for manage_log
-- ----------------------------
DROP TABLE IF EXISTS `manage_log`;
CREATE TABLE `manage_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manage_name` varchar(16) CHARACTER SET gbk NOT NULL DEFAULT '未知',
  `login_ip` varchar(20) CHARACTER SET gbk NOT NULL DEFAULT '0.0.0.0' COMMENT '登陆IP',
  `login_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '登陆时间',
  `edlog` varchar(200) CHARACTER SET gbk NOT NULL COMMENT '操作内容',
  `session_str` varchar(50) CHARACTER SET gbk NOT NULL DEFAULT '未知' COMMENT '登陆时候产生的guid',
  `logout_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '退出时间',
  `edtime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '操作时间',
  `run_str` varchar(50) DEFAULT NULL COMMENT '浏览器标识',
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`manage_name`,`login_ip`,`edlog`,`session_str`) USING BTREE,
  FULLTEXT KEY `edlog` (`manage_name`,`login_ip`,`edlog`,`session_str`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for mggames
-- ----------------------------
DROP TABLE IF EXISTS `mggames`;
CREATE TABLE `mggames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Category` text NOT NULL COMMENT '游戏大类',
  `Game_category` text NOT NULL COMMENT '游戏小类',
  `zh_name` text NOT NULL,
  `en_name` text NOT NULL,
  `flashid` text NOT NULL,
  `img_name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=323 DEFAULT CHARSET=utf8 COMMENT='MG游戏ID图片以及中文名称';

-- ----------------------------
-- Records of mggames
-- ----------------------------
BEGIN;
INSERT INTO `mggames` VALUES (1, 'SLOTS', 'Others', '5卷的驱动器', '5 Reel Drive', '5ReelDrive', 'BTN_5ReelDrive1');
INSERT INTO `mggames` VALUES (2, 'POKER', 'Video Poker', '黑桃A8', 'Aces and Eights', 'RubyAcesAndEights', 'BTN_AcesAndEights1');
INSERT INTO `mggames` VALUES (3, 'POKER', 'Video Poker', '王牌', 'Aces and Faces', 'acesfaces', 'BTN_AcesFaces1');
INSERT INTO `mggames` VALUES (4, 'POKER', 'Poker4', 'A与人头扑克', 'AcesfacesPwrPoker', 'AcesfacesPwrPoker', 'BTN_AcesFacesPowerPoker1');
INSERT INTO `mggames` VALUES (5, 'SLOTS', '5 Reel Slots', '丛林冒险', 'Adventure Palace', 'RubyAdventurePalace', 'BTN_AdventurePalace4');
INSERT INTO `mggames` VALUES (6, 'SLOTS', '5 Reel Slots', '年代探索', 'Age of Discovery', 'RubyAgeOfDiscovery', 'BTN_AgeofDiscovery3');
INSERT INTO `mggames` VALUES (7, 'SLOTS', 'Others', '美女秘探', 'Agent Jane Blonde', 'RubyAgentJaneBlonde', 'BTN_AgentJaneBlonde7');
INSERT INTO `mggames` VALUES (8, 'SLOTS', '5 Reel Slots', '阿拉斯加州捕鱼', 'Alaskan Fishing', 'AlaskanFishing', 'BTN_AlaskanFishing1');
INSERT INTO `mggames` VALUES (9, 'SLOTS', '5 Reel Slots', '僵尸之地', 'Alaxe In Zombieland', 'AlaxeInZombieland', 'BTN_AlaxeInZombieland');
INSERT INTO `mggames` VALUES (10, 'POKER', 'Video Poker', '王牌扑克', 'All Aces Poker', 'RubyAllAces', 'BTN_AllAces1');
INSERT INTO `mggames` VALUES (11, 'POKER', 'Video Poker', '美国扑克', 'All American', 'RubyAllAmerican', 'BTN_AllAmerican1');
INSERT INTO `mggames` VALUES (12, 'TABLEGAMES', 'Roulette', '美式轮盘', 'AmericanRoulette', 'AmericanRoulette', 'BTN_USRoulette1');
INSERT INTO `mggames` VALUES (13, 'SLOTS', '5 Reel Slots', '北极探险', 'Arctic Agents', 'ArcticAgents', 'BTN_ArcticAgents');
INSERT INTO `mggames` VALUES (14, 'SLOTS', '5 Reel Slots', '北极寻宝', 'Arctic Fortune', 'ArcticFortune', 'BTN_ArcticFortune1');
INSERT INTO `mggames` VALUES (15, 'SLOTS', '5 Reel Slots', '环游世界', 'Around the World', 'RubyAroundThe World', 'BTN_AroundTheWorld');
INSERT INTO `mggames` VALUES (16, 'SLOTS', 'Others', '亚洲美女', 'Asian Beauty', 'AsianBeauty', 'BTN_AsianBeauty1');
INSERT INTO `mggames` VALUES (17, 'TABLEGAMES', 'BlackJack', '大西洋黄金21点', 'Atlantic City Blackjack Gold', 'AtlanticCityBJGold', 'BTN_GoldSeries_AtlanticCityBlackjack1');
INSERT INTO `mggames` VALUES (18, 'SLOTS', 'Others', '阿瓦隆1', 'Avalon', 'RubyAvalon', 'BTN_Avalon1');
INSERT INTO `mggames` VALUES (19, 'SLOTS', 'Others', '阿瓦隆2', 'Avalon II-L-Quest for the Grail', 'Avalon2', 'BTN_AvalonII');
INSERT INTO `mggames` VALUES (20, 'TABLEGAMES', 'Baccarat', '百家乐', 'Baccarat', 'Baccarat', 'BTN_Baccarat2');
INSERT INTO `mggames` VALUES (21, 'TABLEGAMES', 'Baccarat', '金牌百家乐', 'BaccaratGold', 'BaccaratGold', 'BTN_GoldSeries_Baccarat1');
INSERT INTO `mggames` VALUES (22, 'SLOTS', 'Others', '太空堡垒卡拉斯加', 'BattlestarGalactica', 'BattlestarGalactica', 'BTN_BattlestarGalactica1');
INSERT INTO `mggames` VALUES (23, 'SMALLGAME', 'Card', '啤酒节', 'Beer Fest', 'RubyBeerFest', 'BTN_BeerFest1');
INSERT INTO `mggames` VALUES (24, 'SLOTS', '3 Reel Slots', '美味餐厅', 'Belissimo', 'Belissimo', 'BTN_Belissimo17');
INSERT INTO `mggames` VALUES (25, 'TABLEGAMES', 'BlackJack', 'Big 5 Blackjack Gold', 'Big 5 Blackjack Gold', 'RubyBigFiveBlackjackGold', 'BTN_GoldSeries_BigFive1');
INSERT INTO `mggames` VALUES (26, 'SLOTS', 'Others', 'Big Break', 'Big Break', 'RubyBigBreak', 'BTN_BigBreak1');
INSERT INTO `mggames` VALUES (27, 'SMALLGAME', 'Card', 'Big Break', 'Big Break', 'RubyIWBigBreak', 'BTN_InstantWin_BigBreak1');
INSERT INTO `mggames` VALUES (28, 'SLOTS', 'Others', '征服钱海', 'Big Kahuna', 'BigKahuna', 'BTN_BigKahuna1');
INSERT INTO `mggames` VALUES (29, 'SLOTS', '5 Reel Slots', '夏威夷蛇女', 'Big Kahuna - Snakes & Ladders', 'RubyBigKahunaSnakesAndLadders', 'BTN_BigKahuna_SL1');
INSERT INTO `mggames` VALUES (30, 'SLOTS', 'Others', '马戏团', 'Big Top', 'BigTop', 'BTN_BigTop1');
INSERT INTO `mggames` VALUES (31, 'SMALLGAME', 'Card', '比尔和泰德的虚假之旅', 'Bill and Ted\'s Bogus Journey', 'RubyIWBillAndTedsBJ', 'BTN_BillandTeds_BogusJourney1');
INSERT INTO `mggames` VALUES (32, 'SLOTS', 'Others', '亿万大富豪', 'Billion Dollar Gran', 'RubyBillionDollarGran', 'BTN_BillionDollarGran1');
INSERT INTO `mggames` VALUES (33, 'SMALLGAME', 'Others', '宾果邦戈热潮', 'Bingo Bango Boom!', 'BingoBangoBoom', 'BTN_BingoBangoBoom1');
INSERT INTO `mggames` VALUES (34, 'SMALLGAME', 'Card', '宾果富矿', 'Bingo Bonanza', 'RubyBingoBonanza', 'BTN_BingoBonanza1');
INSERT INTO `mggames` VALUES (35, 'POKER', 'Video Poker', 'Bonus Deuces Wild', 'Bonus Deuces Wild', 'RubyBonusDeucesWild', 'BTN_BonusDeucesWild1');
INSERT INTO `mggames` VALUES (36, 'POKER', 'Video Poker', 'Bonus Poker', 'Bonus Poker', 'RubyBonusPoker', 'BTN_BonusPoker1');
INSERT INTO `mggames` VALUES (37, 'POKER', 'Video Poker', 'Bonus Poker Deluxe', 'Bonus Poker Deluxe', 'RubyBonusPokerDeluxe', 'BTN_BonusPokerDeluxe1');
INSERT INTO `mggames` VALUES (38, 'SLOTS', 'Others', 'Booty Time', 'Booty Time', 'BootyTime', 'BTN_BootyTime');
INSERT INTO `mggames` VALUES (39, 'SMALLGAME', 'Card', 'Bowled Over', 'Bowled Over', 'RubyBowledOver', 'BTN_BowledOver1');
INSERT INTO `mggames` VALUES (40, 'SLOTS', 'Others', 'Break Away', 'Break Away', 'BreakAway', 'BTN_BreakAway1');
INSERT INTO `mggames` VALUES (41, 'SLOTS', 'Others', '银行爆破', 'Break Da Bank', 'BreakDaBank', 'BTN_BreakDaBank1');
INSERT INTO `mggames` VALUES (42, 'SLOTS', 'Others', '银行爆破2', 'Break Da Bank Again', 'RubyBreakDaBankAgain', 'BTN_BreakDaBankAgain1');
INSERT INTO `mggames` VALUES (43, 'SLOTS', 'Others', 'Bridezilla', 'Bridezilla', 'Bridezilla', 'BTN_BootyTime');
INSERT INTO `mggames` VALUES (44, 'SMALLGAME', 'Fallow', '泡泡富矿', 'BubbleBonanza', 'BubbleBonanza', 'BTN_BubbleBonanza');
INSERT INTO `mggames` VALUES (45, 'SMALLGAME', 'Card', 'Bunny Boiler', 'Bunny Boiler', 'RubyBunnyBoiler', 'BTN_BunnyBoiler1');
INSERT INTO `mggames` VALUES (46, 'SMALLGAME', 'Card', 'Bunny Boiler Gold', 'Bunny Boiler Gold', 'RubyBunnyBoilerGold', 'BTN_BunnyBoilerGold1');
INSERT INTO `mggames` VALUES (47, 'SLOTS', 'Others', '燃烧的欲望', 'Burning Desire', 'RubyBurningDesire', 'BTN_BurningDesire1');
INSERT INTO `mggames` VALUES (48, 'SLOTS', 'Others', '布什电报', 'bushTelegraph', 'bushTelegraph', 'BushTelegraph');
INSERT INTO `mggames` VALUES (49, 'SLOTS', 'Others', '抢劫银行', 'Bust the Bank', 'BustTheBank', 'BTN_BustTheBank1');
INSERT INTO `mggames` VALUES (50, 'SLOTS', 'Others', '胸围银行', 'BustTheBank', 'BustTheBank', 'BTN_BustTheBank1');
INSERT INTO `mggames` VALUES (51, 'SLOTS', 'Others', '狂欢节', 'Carnaval', 'Carnaval', 'BTN_Carnaval2');
INSERT INTO `mggames` VALUES (52, 'SLOTS', 'Others', '现金蚬', 'Cash Clams', 'CashClams', 'BTN_CashClams2');
INSERT INTO `mggames` VALUES (53, 'SLOTS', 'Others', '财运疯狂', 'Cash Crazy', 'cashcrazy', 'BTN_CashCrazy9');
INSERT INTO `mggames` VALUES (54, 'SLOTS', 'Others', 'Cash n Curry', 'Cash n Curry', 'CashCurry', 'BTN_AWPCashnCurry');
INSERT INTO `mggames` VALUES (55, 'SLOTS', 'Others', '卡萨努瓦', 'Cashanova', 'Cashanova', 'BTN_Cashanova1');
INSERT INTO `mggames` VALUES (56, 'SLOTS', 'Others', '昆虫派对', 'Cashapillar', 'RubyCashapillar', 'BTN_Cashapillar1');
INSERT INTO `mggames` VALUES (57, 'SMALLGAME', 'Card', 'Cashapillar Scratch Card', 'Cashapillar Scratch Card', 'RubyIWCashapillar', 'BTN_Cashapillar1');
INSERT INTO `mggames` VALUES (58, 'SLOTS', 'Others', '挥金如土', 'Cashville', 'Cashville', 'BTN_Cashville1');
INSERT INTO `mggames` VALUES (59, 'SLOTS', 'Others', 'Centre Court', 'Centre Court', 'RubyCentreCourt', 'BTN_CentreCourt1');
INSERT INTO `mggames` VALUES (60, 'TABLEGAMES ', 'BlackJack', '经典21点黄金版', 'Classic Blackjack Gold', 'RubyClassicBlackjackGold', 'BTN_GoldSeries_ClassicBlackjack1');
INSERT INTO `mggames` VALUES (61, 'SLOTS', 'Others', '酷巴克', 'coolbuck', 'coolbuck', 'BTN_CoolBuck1');
INSERT INTO `mggames` VALUES (62, 'SLOTS', 'Others', 'Cops And Robbers', 'Cops And Robbers', 'CopsAndRobbers', 'BTN_CopsandRobbers1');
INSERT INTO `mggames` VALUES (63, 'SLOTS', '3 Reel Slots', '宇宙猫', 'cosmicc', 'cosmicc', 'BTN_CosmicCat1');
INSERT INTO `mggames` VALUES (64, 'SLOTS', '3 Reel Slots', '慵懒土豆', 'CouchPotato', 'CouchPotato', 'BTN_CouchPotato2');
INSERT INTO `mggames` VALUES (65, 'TABLEGAMES ', 'Others', '掷骰子', 'Craps', 'Craps', 'BTN_Craps1');
INSERT INTO `mggames` VALUES (66, 'SLOTS', 'Others', 'Crazy 80s', 'Crazy 80s', 'RubyCrazy80s', 'BTN_Crazy80s4');
INSERT INTO `mggames` VALUES (67, 'SLOTS', 'Others', '疯狂变色龙', 'CrazyChameleons', 'CrazyChameleons', 'BTN_CrazyChameleons1');
INSERT INTO `mggames` VALUES (68, 'SLOTS', 'Others', '蜂蜜乐园', 'Crocodopolis', 'Crocodopolis', 'BTN_Crocodopolis');
INSERT INTO `mggames` VALUES (69, 'SMALLGAME', 'Fallow', '国际鱼虾蟹骰宝', 'CrownAndAnchor', 'CrownAndAnchor', 'BTN_CrownAndAnchor1');
INSERT INTO `mggames` VALUES (70, 'SMALLGAME', 'Card', 'Crypt Crusade', 'Crypt Crusade', 'RubyCryptCrusade', 'BTN_CryptCrusade1');
INSERT INTO `mggames` VALUES (71, 'SMALLGAME', 'Card', 'Crypt Crusade Gold', 'Crypt Crusade Gold', 'RubyCryptCrusadeGold', 'BTN_CryptCrusadeGold1');
INSERT INTO `mggames` VALUES (72, 'TABLEGAMES ', 'Others', '加勒比海扑克', 'Cyberstud', 'Cyberstud', 'BTN_Cyberstud1');
INSERT INTO `mggames` VALUES (73, 'SMALLGAME', 'Card', 'Dawn Of The Bread', 'Dawn Of The Bread', 'RubyDawnOfTheBread', 'BTN_DawnoftheBread1');
INSERT INTO `mggames` VALUES (74, 'SLOTS', 'Others', '闪亮的圣诞节', 'Deck The Halls', 'RubyDeckTheHalls', 'BTN_DeckTheHalls1');
INSERT INTO `mggames` VALUES (75, 'POKER ', 'Poker4', '百搭小丑扑克', 'Deuces and Joker', 'Deuces&JokerPwrPoker', 'BTN_DeucesJokerPowerPoker1');
INSERT INTO `mggames` VALUES (76, 'POKER', 'Video Poker', '百搭小丑扑克', 'Deuces and Joker', 'DeucesandJoker', 'BTN_DeucesJoker1');
INSERT INTO `mggames` VALUES (77, 'POKER', 'Video Poker', '万能两点', 'Deuces Wild', 'deuceswi', 'BTN_DeucesWild1');
INSERT INTO `mggames` VALUES (78, 'POKER', 'Poker4', 'Deuces Wild', 'Deuces Wild', 'DeucesWildPwrPoker', 'BTN_DeucesWildPowerPoker1');
INSERT INTO `mggames` VALUES (79, 'SLOTS', 'Others', '恐龙迪诺', 'Dino Might', 'DinoMight', 'BTN_DinoMight1');
INSERT INTO `mggames` VALUES (80, 'SLOTS', 'Others', 'Doctor Love', 'Doctor Love', 'DoctorLove', 'BTN_DrLove');
INSERT INTO `mggames` VALUES (81, 'SLOTS', 'Others', '蜜蜂乐园', 'Dogfather', 'RubyDogfather', 'BTN_Dogfather2');
INSERT INTO `mggames` VALUES (82, 'SMALLGAME', 'Others', '小狗宾果盘', 'Doggy Reel Bingo', 'DoggyReelBingo', 'BTN_DoggyReelBingo1');
INSERT INTO `mggames` VALUES (83, 'SLOTS', 'Others', '寻访海豚', 'Dolphin Quest', 'DolphinQuest', 'BTN_DolphinQuest');
INSERT INTO `mggames` VALUES (84, 'POKER', 'Video Poker', 'Double Bonus Poker', 'Double Bonus Poker', 'RubyDoubleBonusPoker', 'BTN_DoubleBonus1');
INSERT INTO `mggames` VALUES (85, 'POKER', 'Video Poker', '4倍红利扑克', 'Double Double Bonus', 'DoubleDoubleBonus', 'BTN_DoubleDoubleBonus1');
INSERT INTO `mggames` VALUES (86, 'TABLEGAMES', 'Others', 'Double Exposure Gold', 'Double Exposure Gold', 'RubyDoubleExposureBlackjackGold', 'BTN_GoldSeries_DoubleExposureBlackjack1');
INSERT INTO `mggames` VALUES (87, 'POKER', 'Video Poker', 'Double Joker', 'Double Joker', 'DoubleJoker', 'BTN_DoubleJoker1');
INSERT INTO `mggames` VALUES (88, 'POKER', 'Poker4', '双小丑(PP)', 'Double Joker', 'DoubleJokerPwrPoker', 'BTN_DoubleJokerPowerPoker1');
INSERT INTO `mggames` VALUES (89, 'SLOTS', '3 Reel Slots', '双倍魔术', 'Double Magic', 'dm', 'BTN_DoubleMagic1');
INSERT INTO `mggames` VALUES (90, 'SLOTS', 'Others', '双重韦密', 'Double Wammy', 'DoubleWammy', 'BTN_DoubleWammy1');
INSERT INTO `mggames` VALUES (91, 'SMALLGAME', 'Card', 'Dragons Fortune', 'Dragons Fortune', 'RubyDragonsFortune', 'BTN_DragonsFortune1');
INSERT INTO `mggames` VALUES (92, 'SLOTS', 'Others', 'Drone Wars', 'Drone Wars', 'DroneWars', 'BTN_DroneWars');
INSERT INTO `mggames` VALUES (93, 'SLOTS', 'Others', '恐怖实验室', 'DrWattsUp', 'DrWattsUp', 'BTN_DrWattsUp1');
INSERT INTO `mggames` VALUES (94, 'SLOTS', 'Others', 'Eagles Wings', 'Eagles Wings', 'EaglesWings', 'BTN_EaglesWings1');
INSERT INTO `mggames` VALUES (95, 'SMALLGAME', 'Fallow', '电子宾果', 'ElectroBingo', 'ElectroBingo', 'BTN_ElectroBingo1');
INSERT INTO `mggames` VALUES (96, 'SLOTS', 'Others', '水果怪兽', 'Elementals', 'rubyelementals', 'BTN_Elementals2');
INSERT INTO `mggames` VALUES (97, 'SMALLGAME', 'Fallow', '魔法森林', 'EnchantedWoods', 'EnchantedWoods', 'BTN_EnchantedWoods1');
INSERT INTO `mggames` VALUES (98, 'TABLEGAMES', 'BlackJack', 'European Blackjack Gold', 'European Blackjack Gold', 'EuropeanBJGold', 'BTN_GoldSeries_EuroBlackjack1');
INSERT INTO `mggames` VALUES (99, 'TABLEGAMES', 'Roulette', '欧洲黄金轮盘', 'EuroRouletteGold', 'EuroRouletteGold', 'BTN_GoldSeries_EuroRoulette1');
INSERT INTO `mggames` VALUES (100, 'SLOTS', '3 Reel Slots', '炫目缤纷', 'fan7', 'fan7', 'BTN_FantasticSevens1');
INSERT INTO `mggames` VALUES (101, 'SLOTS', 'Others', 'Fat Lady Sings', 'Fat Lady Sings', 'FatLadySings', 'BTN_FatLadySings1');
INSERT INTO `mggames` VALUES (102, 'SLOTS', 'Others', 'Fire Hawk ', 'Fire Hawk ', 'FireHawk', 'BTN_FireHawk');
INSERT INTO `mggames` VALUES (103, 'SLOTS', 'Others', '超级飞行员', 'Flying Ace', 'RubyFlyingAce', 'BTN_FlyingAce2');
INSERT INTO `mggames` VALUES (104, 'SMALLGAME', 'Card', 'Foamy Fortunes', 'Foamy Fortunes', 'RubyFoamyFortunes', 'BTN_FoamyFortunes1');
INSERT INTO `mggames` VALUES (105, 'SLOTS', '3 Reel Slots', '幸运饼', 'FortuneCookie', 'FortuneCookie', 'BTN_FortuneCookie7');
INSERT INTO `mggames` VALUES (106, 'SMALLGAME', 'Fallow', '四乘四', 'Four by Four', 'FourByFour', 'BTN_FourByFour1');
INSERT INTO `mggames` VALUES (107, 'SMALLGAME', 'Card', 'Freezing Fuzzballs', 'Freezing Fuzzballs', 'RubyFreezingFuzzballs', 'BTN_FreezingFuzzballs1');
INSERT INTO `mggames` VALUES (108, 'TABLEGAMES', 'Roulette', '法式轮盘', 'FrenchRoulette', 'FrenchRoulette', 'BTN_FrenchRoulette1');
INSERT INTO `mggames` VALUES (109, 'SMALLGAME', 'Others', '水果宾果', 'Fruit Bingo', 'RubyFruitBingo', 'BTN_FruitBingo1');
INSERT INTO `mggames` VALUES (110, 'SLOTS', '3 Reel Slots', '水果老虎机', 'Fruit Slots', 'fruits', 'BTN_FruitSlots1');
INSERT INTO `mggames` VALUES (111, 'SLOTS', 'Others', 'Fruit Smoothies', 'Fruit Smoothies', 'RubyFruitSmoothies', 'BTN_FruitSmoothies1');
INSERT INTO `mggames` VALUES (112, 'SLOTS', 'Others', 'Galacticons', 'Galacticons', 'Galacticons', 'BTN_Galacticons');
INSERT INTO `mggames` VALUES (113, 'SMALLGAME', 'Card', 'Game Set And Scratch', 'Game Set And Scratch', 'RubyGameSetAndScratch', 'BTN_GameSetandScratch1');
INSERT INTO `mggames` VALUES (114, 'SLOTS', 'Others', '精灵宝石', 'geniesgems', 'geniesgems', 'BTN_GeniesGems2');
INSERT INTO `mggames` VALUES (115, 'SMALLGAME', 'Fallow', '病毒碰碰乐', 'Germinator', 'Germinator', 'BTN_Germinator1');
INSERT INTO `mggames` VALUES (116, 'SLOTS', 'Others', 'Gift Rap', 'Gift Rap', 'GiftRap', 'BTN_GiftRap2');
INSERT INTO `mggames` VALUES (117, 'SLOTS', 'Others', '女孩与枪', 'Girls with Guns-L-Frozen Dawn', 'GirlsWithGunsFrozenDawn', 'BTN_GirlswithGuns2');
INSERT INTO `mggames` VALUES (118, 'SLOTS', 'Others', '持枪女孩', 'GirlsWithGuns', 'GirlsWithGuns', 'BTN_GirlswithGuns1');
INSERT INTO `mggames` VALUES (119, 'SLOTS', 'Others', '黄金海岸', 'Gold Coast', 'RubyGoldCoast', 'BTN_GoldCoast3');
INSERT INTO `mggames` VALUES (120, 'SLOTS', 'Others', 'Gold Factory', 'Gold Factory', 'GoldFactory', 'BTN_GoldFactory1');
INSERT INTO `mggames` VALUES (121, 'SLOTS', 'Others', 'Gold Mine', 'Gold Mine', 'RubyGoldMine', 'BTN_GoldMine1');
INSERT INTO `mggames` VALUES (122, 'SLOTS', 'Others', '黄金龙', 'Golden Dragon', 'gdragon', 'BTN_GoldenDragon6');
INSERT INTO `mggames` VALUES (123, 'SMALLGAME', 'Card', 'Golden Ghouls', 'Golden Ghouls', 'RubyGoldenGhouls', 'BTN_GoldenGhouls1');
INSERT INTO `mggames` VALUES (124, 'SLOTS', 'Others', '疯狂赛道', 'Good To Go', 'RubyGoodToGo', 'BTN_GoodToGo2');
INSERT INTO `mggames` VALUES (125, 'SLOTS', 'Others', '黄金囊地鼠', 'Gopher Gold', 'GopherGold', 'BTN_GopherGold2');
INSERT INTO `mggames` VALUES (126, 'SMALLGAME', 'Card', 'Granny Prix', 'Granny Prix', 'RubyGrannyPrix', 'BTN_GrannyPrix1');
INSERT INTO `mggames` VALUES (127, 'SLOTS', 'Others', '伟大的格里芬', 'GreatGriffin', 'GreatGriffin', 'BTN_GreatGriffin1');
INSERT INTO `mggames` VALUES (128, 'SMALLGAME', 'Card', 'Hairy Fairies', 'Hairy Fairies', 'RubyHairyFairies', 'BTN_HairyFairies1');
INSERT INTO `mggames` VALUES (129, 'SMALLGAME', 'Card', '万圣节', 'Halloweenies', 'RubyHalloweenies', 'BTN_Halloweenies1');
INSERT INTO `mggames` VALUES (130, 'SLOTS', 'Others', 'Halloweenies', 'Halloweenies', 'RubyIWHalloweenies', 'BTN_Halloweenies1');
INSERT INTO `mggames` VALUES (131, 'SMALLGAME', 'Card', 'Hand to Hand Combat', 'Hand to Hand Combat', 'RubyHandToHandCombat', 'BTN_HandToHandCombat1');
INSERT INTO `mggames` VALUES (132, 'SLOTS', 'Others', '哈维斯的晚餐', 'Harveys', 'RubyHarveys', 'BTN_Harveys1');
INSERT INTO `mggames` VALUES (133, 'SLOTS', 'Others', 'Hellboy', 'Hellboy', 'RubyHellBoy', 'BTN_HellBoy1');
INSERT INTO `mggames` VALUES (134, 'SLOTS', 'Others', 'Hells Grannies', 'Hells Grannies', 'HellsGrannies', 'BTN_HellGrannies');
INSERT INTO `mggames` VALUES (135, 'SMALLGAME', 'Fallow', 'Hexaline', 'Hexaline', 'Hexaline', 'BTN_Hexaline1');
INSERT INTO `mggames` VALUES (136, 'TABLEGAMES', 'Baccarat', '高限制百家乐', 'High Limit Baccarat', 'HighLimitBaccarat', 'BTN_HighLimitBaccarat1');
INSERT INTO `mggames` VALUES (137, 'TABLEGAMES', 'BlackJack', '欧式高限21点', 'High Limit European Blackjack', 'HLEuropeanAdvBJ', 'BTN_EuroBlackjackHighLimit1');
INSERT INTO `mggames` VALUES (138, 'SLOTS', 'Others', '上流社会', 'High Society', 'HighSociety', 'BTN_HighSociety');
INSERT INTO `mggames` VALUES (139, 'POKER', 'Others', '高频扑克', 'High Speed Poker', 'HighSpeedPoker', 'BTN_GoldSeries_MHHighSpeedPoker1');
INSERT INTO `mggames` VALUES (140, 'TABLEGAMES', 'BlackJack', 'HiLo 13 European Blackjack Gold', 'HiLo 13 European Blackjack Gold', 'RubyHiLoBlackjackGold', 'BTN_GoldSeries_HiLo13EuroBJ1');
INSERT INTO `mggames` VALUES (141, 'SLOTS', 'Others', '终极杀手', 'HitMan', 'RubyHitman', 'BTN_Hitman1');
INSERT INTO `mggames` VALUES (142, 'SLOTS', 'Others', '圣诞礼物', 'hohoho', 'hohoho', 'BTN_Hohoho1');
INSERT INTO `mggames` VALUES (143, 'SLOTS', 'Others', '神奇墨水', 'Hot Ink', 'HotInk', 'BTN_HotInk1');
INSERT INTO `mggames` VALUES (144, 'SLOTS', 'Others', '棒球直击', 'Hot Shot', 'RubyHotShot', 'BTN_HotShot3');
INSERT INTO `mggames` VALUES (145, 'SLOTS', 'Others', 'House of Dragons ', 'House of Dragons ', 'RubyHouseofDragons', 'BTN_HouseofDragons');
INSERT INTO `mggames` VALUES (146, 'SLOTS', 'Others', '不朽的爱情', 'ImmortalRomance', 'ImmortalRomance', 'BTN_ImmortalRomance1');
INSERT INTO `mggames` VALUES (147, 'SLOTS', 'Others', '赌场大赢家', 'In It To Win It', 'InItToWinIt', 'BTN_InItToWinIt');
INSERT INTO `mggames` VALUES (148, 'SLOTS', 'Others', 'Irish Eyes', 'Irish Eyes', 'IrishEyes', 'BTN_IrishEyes');
INSERT INTO `mggames` VALUES (149, 'SMALLGAME', 'Card', '即时刮刮卡', 'IWCardSelector', 'IWCardSelector', 'BTN_InstantWinCardSelector1');
INSERT INTO `mggames` VALUES (150, 'TABLEGAMES', 'Video Poker', '对J高手', 'jacks', 'jacks', 'BTN_JacksOrBetter1');
INSERT INTO `mggames` VALUES (151, 'POKER', 'Poker4', '对J高手(PP)', 'Jackspwrpoker', 'Jackspwrpoker', 'BTN_JacksorBetterPowerPoker1');
INSERT INTO `mggames` VALUES (152, 'SLOTS', 'Others', 'Jekyll And Hyde', 'Jekyll And Hyde', 'JekyllAndHyde', 'BTN_JekyllandHyde');
INSERT INTO `mggames` VALUES (153, 'SLOTS', 'Others', 'Jewels of the Orient Video Slot', 'Jewels of the Orient Video Slot', 'JewelsOfTheOrient', 'BTN_JewelsoftheOrient1');
INSERT INTO `mggames` VALUES (154, 'SLOTS', 'Others', '累积奖金快车', 'jexpress', 'jexpress', 'BTN_JackpotExpress1');
INSERT INTO `mggames` VALUES (155, 'SLOTS', 'Others', '铃儿响叮当', 'Jingle Bells', 'RubyJingleBells', 'BTN_JingleBells6');
INSERT INTO `mggames` VALUES (156, 'SLOTS', 'Others', 'Joker 8000', 'Joker 8000', 'RubyJoker8000', 'BTN_Joker80001');
INSERT INTO `mggames` VALUES (157, 'SLOTS', 'Others', 'Joker Jester', 'Joker Jester', 'JokerJester', 'BTN_JokerJester');
INSERT INTO `mggames` VALUES (158, 'POKER', 'Video Poker', 'Joker Poker', 'Joker Poker', 'Jokerpok', 'BTN_JokerPoker1');
INSERT INTO `mggames` VALUES (159, 'SLOTS', 'Others', '小丑扑克', 'JokerPwrPoker', 'JokerPwrPoker', 'BTN_JokerPoker1');
INSERT INTO `mggames` VALUES (160, 'SLOTS', 'Others', '侏罗纪大奖', 'Jurassic Jackpot', 'jurassicjackpot', 'BTN_JurassicJackpot1');
INSERT INTO `mggames` VALUES (161, 'SLOTS', 'Others', '空手道猪', 'KaratePig', 'KaratePig', 'BTN_KaratePig1');
INSERT INTO `mggames` VALUES (162, 'SLOTS', 'Others', '卡萨縵都', 'Kathmandu', 'RubyKathmandu', 'BTN_Kathmandu1');
INSERT INTO `mggames` VALUES (163, 'Others', 'Others', '宾果游戏', 'Keno', 'Keno', 'BTN_Keno3');
INSERT INTO `mggames` VALUES (164, 'SLOTS', 'Others', 'King Arthur', 'King Arthur', 'RubyKingArthur', 'BTN_KingArthur');
INSERT INTO `mggames` VALUES (165, 'SLOTS', 'Others', 'Kings of Cash', 'Kings of Cash', 'KingsOfCash', 'BTN_KingsofCash1');
INSERT INTO `mggames` VALUES (166, 'SLOTS', 'Others', '淑女之夜', 'LadiesNite', 'LadiesNite', 'BTN_LadiesNite5');
INSERT INTO `mggames` VALUES (167, 'SLOTS', 'Others', '红衣女郎', 'LadyInRed', 'LadyInRed', 'BTN_LadyInRed2');
INSERT INTO `mggames` VALUES (168, 'SLOTS', 'Others', '财富联盟', 'LeaguesOfFortune', 'LeaguesOfFortune', 'BTN_LeaguesOfFortune1');
INSERT INTO `mggames` VALUES (169, 'SLOTS', 'Others', '炫富一族', 'Legacy', 'RubyLegacy', 'BTN_Legacy2');
INSERT INTO `mggames` VALUES (170, 'SLOTS', 'Others', 'Loaded', 'Loaded', 'Loaded', 'BTN_Loaded1');
INSERT INTO `mggames` VALUES (171, 'SLOTS', 'Others', '海盗王', 'Loose Cannon', 'LooseCannon', 'BTN_LooseCannon1');
INSERT INTO `mggames` VALUES (172, 'POKER', 'Video Poker', '路易斯安那州', 'LouisianaDouble', 'LouisianaDouble', 'BTN_LouisianaDouble1');
INSERT INTO `mggames` VALUES (173, 'SLOTS', 'Others', 'Love Bugs ', 'Love Bugs ', 'LoveBugs', 'BTN_LoveBugs');
INSERT INTO `mggames` VALUES (174, 'SLOTS', 'Others', 'Lucky Darts', 'Lucky Darts', 'RubyLuckyDarts', 'BTN_LuckyDarts1');
INSERT INTO `mggames` VALUES (175, 'SLOTS', 'Others', '幸运的锦鲤', 'Lucky Koi', 'LuckyKoi', 'BTN_LuckyKoi');
INSERT INTO `mggames` VALUES (176, 'SLOTS', 'Others', 'Lucky Leprechaun’s Loot', 'Lucky Leprechaun’s Loot', 'LuckyLeprechaunsLoot', 'BTN_LuckyLeprechaunsLoot');
INSERT INTO `mggames` VALUES (177, 'SMALLGAME', 'Card', 'Lucky Numbers', 'Lucky Numbers', 'RubyLuckyNumbers', 'BTN_LuckyNumbers1');
INSERT INTO `mggames` VALUES (178, 'SLOTS', 'Others', '幸运女巫', 'LuckyWitch', 'LuckyWitch', 'BTN_LuckyWitch1');
INSERT INTO `mggames` VALUES (179, 'SLOTS', 'Others', '疯狂的帽子', 'Mad Hatters', 'MadHatters', 'BTN_MadHatters1');
INSERT INTO `mggames` VALUES (180, 'SLOTS', 'Others', '魔幻盒子', 'MagicBoxes', 'MagicBoxes', 'BTN_MagicBoxes');
INSERT INTO `mggames` VALUES (181, 'SLOTS', 'Others', '魔法护身符', 'magiccharms', 'magiccharms', 'BTN_MagicCharms');
INSERT INTO `mggames` VALUES (182, 'SLOTS', 'Others', 'Magnificent 777\'s', 'Magnificent 777\'s', 'RubyMagnificentSevens', 'BTN_AWPMagnificent7771');
INSERT INTO `mggames` VALUES (183, 'SMALLGAME', 'Fallow', '星战传奇', 'MaxDamage', 'MaxDamage', 'BTN_MaxDamage1');
INSERT INTO `mggames` VALUES (184, 'SLOTS', 'Others', 'Mayan Princess Video Slot', 'Mayan Princess Video Slot', 'MayanPrincess', 'BTN_MayanPrincess1');
INSERT INTO `mggames` VALUES (185, 'SMALLGAME', 'Fallow', '雅马宾果', 'MayanBingo', 'MayanBingo', 'BTN_MayanBingo1');
INSERT INTO `mggames` VALUES (186, 'SLOTS', 'Others', '银行爆破', 'Mega Spins Break Da Bank', 'MSBreakDaBankAgain', 'BTN_BreakdaBankAgainMegaSpin1');
INSERT INTO `mggames` VALUES (187, 'SLOTS', 'Others', 'Merlin\'s Millions', 'Merlin\'s Millions', 'MerlinsMillions', 'BTN_MerlinsMillions');
INSERT INTO `mggames` VALUES (188, 'SLOTS', 'Others', '美人鱼', 'Mermaids Millions', 'MermaidsMillions', 'BTN_MermaidsMillions1');
INSERT INTO `mggames` VALUES (189, 'SLOTS', 'Others', 'Money Mad Monkey', 'Money Mad Monkey', 'RubyMoneyMadMonkey', 'BTN_MoneyMadMonkey1');
INSERT INTO `mggames` VALUES (190, 'SLOTS', 'Others', '疯狂怪物', 'MonsterMania', 'MonsterMania', 'BTN_MonsterMania1');
INSERT INTO `mggames` VALUES (191, 'SLOTS', 'Others', '月光', 'Moonshine', 'Moonshine', 'BTN_Moonshine1');
INSERT INTO `mggames` VALUES (192, 'SLOTS', 'Others', 'Mount Olympus', 'Mount Olympus', 'MountOlympus', 'BTN_MountOlympus');
INSERT INTO `mggames` VALUES (193, 'SLOTS', 'Others', 'Mugshot Madness ', 'Mugshot Madness ', 'MugshotMadness', 'BTN_MugshotMadness1');
INSERT INTO `mggames` VALUES (194, 'TABLEGAMES', 'BlackJack', 'Multi-hand European Blackjack Gold', 'Multi-hand European Blackjack Gold', 'MHEuropeanBJGold', 'BTN_GoldSeries_MHEuroBlackjack2');
INSERT INTO `mggames` VALUES (195, 'TABLEGAMES', 'BlackJack', '完美21点', 'Multi-Hand Perfect Pairs Blackjack Gold ', 'RubyMHPerfectPairs', 'BTN_GoldSeries_MHPerfectPairsBlackjack1');
INSERT INTO `mggames` VALUES (196, 'TABLEGAMES', 'BlackJack', 'Multi-Hand Premier Blackjack Gold', 'Multi-Hand Premier Blackjack Gold', 'RubyPBJMultiHand', 'BTN_MHPremierBlackjack1');
INSERT INTO `mggames` VALUES (197, 'TABLEGAMES', 'BlackJack', '维加斯多手21点', 'Multi-Hand Vegas Downtown Blackjack Gold', 'RubyMultiVegasDowntownBlackjackGold', 'BTN_GoldSeries_MHVegasDowntown2');
INSERT INTO `mggames` VALUES (198, 'TABLEGAMES', 'Roulette', '黄金多轮轮盘', 'MultiWheelRouletteGold', 'MultiWheelRouletteGold', 'BTN_GoldSeries_MultiWheelRoulette1');
INSERT INTO `mggames` VALUES (199, 'SMALLGAME', 'Card', 'Mumbai Magic', 'Mumbai Magic', 'RubyMumbaiMagic', 'BTN_MumbaiMagic1');
INSERT INTO `mggames` VALUES (200, 'SLOTS', 'Others', '怪兽曼琪肯', 'Munchkins', 'RubyMunchkins', 'BTN_Munchkins2');
INSERT INTO `mggames` VALUES (201, 'SLOTS', 'Others', '神秘的梦', 'MysticDreams', 'MysticDreams', 'BTN_MysticDreams1');
INSERT INTO `mggames` VALUES (202, 'SLOTS', 'Others', 'Mystique Grove', 'Mystique Grove', 'MystiqueGrove', 'BTN_MystiqueGrove');
INSERT INTO `mggames` VALUES (203, 'SLOTS', 'Others', 'Octopays', 'Octopays', 'Octopays', 'BTN_Octopays');
INSERT INTO `mggames` VALUES (204, 'SMALLGAME', 'Card', 'Offside And Seek', 'Offside And Seek', 'RubyOffsideAndSeek', 'BTN_OffsideandSeek1');
INSERT INTO `mggames` VALUES (205, 'SLOTS', 'Others', '东方财富', 'OrientalFortune', 'OrientalFortune', 'BTN_OrientalFortune2');
INSERT INTO `mggames` VALUES (206, 'SLOTS', 'Others', 'Paradise Found', 'Paradise Found', 'ParadiseFound', 'BTN_ParadiseFound');
INSERT INTO `mggames` VALUES (207, 'SLOTS', 'Others', 'Phantom Cash ', 'Phantom Cash ', 'PhantomCash', 'BTN_PhantomCash');
INSERT INTO `mggames` VALUES (208, 'SMALLGAME', 'Fallow', '法老王的命运', 'PharaohBingo', 'PharaohBingo', 'BTN_PharaohBingo1');
INSERT INTO `mggames` VALUES (209, 'SMALLGAME', 'Card', 'Pharoah\'s Gems', 'Pharoah\'s Gems', 'RubyPharaohsGems', 'BTN_PharoahsGems1');
INSERT INTO `mggames` VALUES (210, 'SMALLGAME', 'Fallow', '最终智能', 'PickNSwitch', 'PickNSwitch', 'BTN_PickAndSwitch1');
INSERT INTO `mggames` VALUES (211, 'SLOTS', 'Others', 'Piggy Fortunes', 'Piggy Fortunes', 'PiggyFortunes', 'BTN_PiggyFortunes');
INSERT INTO `mggames` VALUES (212, 'SLOTS', 'Others', '花花公子', 'playboy', 'playboy', 'BTN_Playboy1');
INSERT INTO `mggames` VALUES (213, 'SMALLGAME', 'Card', 'Plunder The Sea', 'Plunder The Sea', 'RubyPlunderTheSea', 'BTN_PlundertheSea1');
INSERT INTO `mggames` VALUES (214, 'TABLEGAMES', 'Others', '扑克追击', 'PokerPursuit', 'PokerPursuit', 'BTN_PokerPursuit1');
INSERT INTO `mggames` VALUES (215, 'SLOTS', 'Others', '蜂蜜乐园', 'Pollen Nation', 'PollenNation', 'BTN_PollenNation1');
INSERT INTO `mggames` VALUES (216, 'TABLEGAMES', 'BlackJack', 'Premier Blackjack Hi Lo Gold', 'Premier Blackjack Hi Lo Gold', 'RubyPBJHiLo', 'BTN_PremierBlackjackHiLo1');
INSERT INTO `mggames` VALUES (217, 'TABLEGAMES', 'BlackJack', 'Premier Blackjack High Streak Gold', 'Premier Blackjack High Streak Gold', 'RubyPBJHighStreak', 'BTN_PremierBlackjackHiStreak1');
INSERT INTO `mggames` VALUES (218, 'TABLEGAMES', 'BlackJack', '欧洲多手21点黄金版', 'Premier Multi-Hand Euro Bonus Blackjack Gold', 'RubyPBJMultiHandBonus', 'BTN_GoldSeries_MHBonusBlackjack2');
INSERT INTO `mggames` VALUES (219, 'SMALLGAME', 'Fallow', '超级赛马', 'Premier Racing', 'PremierRacing', 'BTN_PremierRacing1');
INSERT INTO `mggames` VALUES (220, 'TABLEGAMES', 'Roulette', '经典轮盘', 'Premier Roulette', 'RubyPremierRoulette', 'BTN_PremierRoulette9');
INSERT INTO `mggames` VALUES (221, 'TABLEGAMES', 'Roulette', '经典轮盘钻石版', 'Premier Roulette Diamond Edition', 'PremierRouletteDE', 'BTN_PremierRouletteDE1');
INSERT INTO `mggames` VALUES (222, 'SMALLGAME', 'Fallow', '超级马赛车', 'PremierTrotting', 'PremierTrotting', 'BTN_PremierTrotting1');
INSERT INTO `mggames` VALUES (223, 'SLOTS', 'Others', 'Prime Property', 'Prime Property', 'RubyPrimeProperty', 'BTN_PrimeProperty1');
INSERT INTO `mggames` VALUES (224, 'SLOTS', 'Others', 'Pure Platinum', 'Pure Platinum', 'pureplatinum ', 'BTN_PurePlatinum1');
INSERT INTO `mggames` VALUES (225, 'SLOTS', 'Others', '为粉红而战', 'Racing For Pinks', 'RacingForPinks', 'BTN_RacingForPinks');
INSERT INTO `mggames` VALUES (226, 'SLOTS', 'Others', 'Ramesses Riches', 'Ramesses Riches', 'RamessesRiches', 'BTN_RammessesRiches');
INSERT INTO `mggames` VALUES (227, 'SLOTS', 'Others', '急速转轮', 'Rapid Reels', 'RubyRapidReels', 'BTN_RapidReels5');
INSERT INTO `mggames` VALUES (228, 'SLOTS', 'Others', '宝石连线', 'ReelGems', 'ReelGems', 'BTN_ReelGems1');
INSERT INTO `mggames` VALUES (229, 'SLOTS', 'Others', '海底大战', 'ReelStrike', 'ReelStrike', 'BTN_ReelStrike1');
INSERT INTO `mggames` VALUES (230, 'SLOTS', 'Others', '雷霆战士', 'ReelThunder', 'ReelThunder', 'BTN_ReelThunder2');
INSERT INTO `mggames` VALUES (231, 'SLOTS', 'Others', 'Retro Reels - Extreme Heat', 'Retro Reels - Extreme Heat', 'RetroReelsExtremeHeat', 'BTN_RRExtreme1');
INSERT INTO `mggames` VALUES (232, 'SLOTS', 'Others', '水果乐园', 'RetroReels', 'RetroReels', 'BTN_RetroReels1');
INSERT INTO `mggames` VALUES (233, 'SLOTS', 'Others', '钻石浮华复古版', 'RetroReelsDiamondGlitz', 'RetroReelsDiamondGlitz', 'BTN_RRDiamondGlitz1');
INSERT INTO `mggames` VALUES (234, 'SLOTS', 'Others', '押韵的卷轴 - 心挞', 'Rhyming Reels - Hearts & Tarts ', 'RRQueenOfHearts', 'BTN_RRHearts&Tarts1');
INSERT INTO `mggames` VALUES (235, 'SLOTS', 'Others', '押韵的卷轴 - 老国王科尔', 'Rhyming Reels - Old King Cole', 'RROldKingCole', 'BTN_RRKing1');
INSERT INTO `mggames` VALUES (236, 'SLOTS', 'Others', '海滨财富', 'Riviera Riches', 'MonteCarloRiches', 'BTN_RivieraRiches1');
INSERT INTO `mggames` VALUES (237, 'SLOTS', '3 Reel Slots', '摇滚航道', 'RockTheBoat', 'RockTheBoat', 'BTN_RocktheBoat18');
INSERT INTO `mggames` VALUES (238, 'SLOTS', 'Others', 'Roller Derby', 'Roller Derby', 'RollerDerby', 'BTN_RollerDerby');
INSERT INTO `mggames` VALUES (239, 'SLOTS', '3 Reel Slots', '罗马宝藏', 'romanriches', 'romanriches', 'BTN_RomanRiches11');
INSERT INTO `mggames` VALUES (240, 'SMALLGAME', 'Fallow', '萨巴宾果', 'Samba Bingo', 'SambaBingo', 'BTN_SambaBingo1');
INSERT INTO `mggames` VALUES (241, 'SLOTS', 'Others', '疯狂圣诞老人', 'SantasWildRide', 'SantasWildRide', 'BTN_SantasWildRide1');
INSERT INTO `mggames` VALUES (242, 'SLOTS', 'Others', 'Scratch N Spin', 'Scratch N Spin', 'RubyScratchNSpin', 'BTN_ScratchNSpin1');
INSERT INTO `mggames` VALUES (243, 'SLOTS', 'Others', '守财奴', 'Scrooge', 'RubyScrooge', 'BTN_Scrooge1');
INSERT INTO `mggames` VALUES (244, 'SLOTS', 'Others', '圣诞老人的秘密', 'Secret Santa', 'SecretSanta', 'BTN_SecretSanta');
INSERT INTO `mggames` VALUES (245, 'SLOTS', 'Others', '暗恋', 'SecretAdmirer', 'SecretAdmirer', 'BTN_SecretAdmirer1');
INSERT INTO `mggames` VALUES (246, 'SLOTS', 'Others', 'Shoot!', 'Shoot!', 'Shoot', 'BTN_Shoot');
INSERT INTO `mggames` VALUES (247, 'SLOTS', 'Others', '极地之友', 'Silverfang', 'Silverfang', 'BTN_SilverFang1');
INSERT INTO `mggames` VALUES (248, 'SLOTS', 'Others', 'Six Bomb', 'Six Bomb', 'RubySixBomb', '');
INSERT INTO `mggames` VALUES (249, 'SMALLGAME', 'Card', 'Six Shooter Looter Gold', 'Six Shooter Looter Gold', 'RubySixShooterLooter', 'BTN_SixShooterLooterGold1');
INSERT INTO `mggames` VALUES (250, 'SLOTS', 'Others', '冒险丛林', 'SkullDuggery', 'SkullDuggery', 'BTN_SkullDuggery1');
INSERT INTO `mggames` VALUES (251, 'SMALLGAME', 'Card', 'Slam Funk', 'Slam Funk', 'RubySlamFunk', 'BTN_SlamFunk1');
INSERT INTO `mggames` VALUES (252, 'SLOTS', 'Others', 'Soccer Safari', 'Soccer Safari', 'RubySoccerSafari', 'BTN_SoccerSafari1');
INSERT INTO `mggames` VALUES (253, 'SLOTS', 'Others', '海上霸王', 'Sovereign of the Seven Seas ', 'SovereignOfTheSevenSeas', 'BTN_SovereignoftheSevenSeas');
INSERT INTO `mggames` VALUES (254, 'SMALLGAME', 'Card', 'Space Evader', 'Space Evader', 'RubySpaceEvader', 'BTN_SpaceEvader1');
INSERT INTO `mggames` VALUES (255, 'SMALLGAME', 'Card', 'Space Evader Gold', 'Space Evader Gold', 'RubySpaceEvaderGold', 'BTN_SpaceEvaderGold1');
INSERT INTO `mggames` VALUES (256, 'TABLEGAMES', 'BlackJack', '西班牙21点', 'Spanish', 'Spanish', 'BTN_SpanishBlackjack1');
INSERT INTO `mggames` VALUES (257, 'TABLEGAMES', 'BlackJack', '西班牙黄金21点', 'Spanish 21 Blackjack Gold ', 'RubySpanishBlackjackGold', 'BTN_GoldSeries_SpanishBlackjack1');
INSERT INTO `mggames` VALUES (258, 'SLOTS', '3 Reel Slots', '华丽剧场', 'Spectacular', 'Spectacular', 'BTN_Spectacular3');
INSERT INTO `mggames` VALUES (259, 'SLOTS', 'Others', 'Spin Magic', 'Spin Magic', 'RubySpinMagic', 'BTN_SpinMagic1');
INSERT INTO `mggames` VALUES (260, 'SMALLGAME', 'Fallow', 'Spingo', 'Spingo', 'Spingo', 'BTN_Spingo');
INSERT INTO `mggames` VALUES (261, 'SLOTS', 'Others', 'Spooks and Ladders', 'Spooks and Ladders', 'RubySpooksAndLadders', 'BTN_Spooks&Ladders1');
INSERT INTO `mggames` VALUES (262, 'SLOTS', 'Others', '海滨嘉年华', 'SpringBreak', 'SpringBreak', 'BTN_SpringBreak2');
INSERT INTO `mggames` VALUES (263, 'SLOTS', 'Others', '星光之吻', 'StarlightKiss', 'StarlightKiss', 'BTN_StarlightKiss1');
INSERT INTO `mggames` VALUES (264, 'SLOTS', 'Others', 'Starscape', 'Starscape', 'Starscape', 'BTN_StarScape1');
INSERT INTO `mggames` VALUES (265, 'SLOTS', 'Others', 'Stash of the Titans', 'Stash of the Titans', 'StashOfTheTitans', 'BTN_StashoftheTitans1');
INSERT INTO `mggames` VALUES (266, 'SLOTS', 'Others', 'Steam Punk Heroes', 'Steam Punk Heroes', 'SteamPunkHeroes', 'BTN_SteamPunkHeroes');
INSERT INTO `mggames` VALUES (267, 'SLOTS', 'Others', 'Sterling Silver 3D', 'Sterling Silver 3D', 'SterlingSilver3d', 'BTN_SterlingSilver3D1');
INSERT INTO `mggames` VALUES (268, 'SLOTS', 'Others', '金钱追逐', 'SunQuest', 'SunQuest', 'BTN_SunQuest3');
INSERT INTO `mggames` VALUES (269, 'SLOTS', 'Others', 'Supe it Up', 'Supe it Up', 'RubySupeItUp', 'BTN_SupeItUp2');
INSERT INTO `mggames` VALUES (270, 'SMALLGAME', 'Fallow', '超级宾果', 'Super Bonus Bingo', 'RubySuperBonusBingo', 'BTN_SuperBonusBingo1');
INSERT INTO `mggames` VALUES (271, 'SMALLGAME', 'Card', 'Super Zeroes', 'Super Zeroes', 'RubySuperZeroes', 'BTN_SuperZeroes1');
INSERT INTO `mggames` VALUES (272, 'TABLEGAMES', 'BlackJack', '超级21点', 'SuperFun21', 'SuperFun21', 'BTN_SuperFun21Blackjack1');
INSERT INTO `mggames` VALUES (273, 'SLOTS', 'Others', 'Surf Safari', 'Surf Safari', 'SurfSafari', 'BTN_SurfSafari');
INSERT INTO `mggames` VALUES (274, 'SLOTS', 'Others', 'Sweet Harvest', 'Sweet Harvest', 'SweetHarvest', 'BTN_SweetHarvest1');
INSERT INTO `mggames` VALUES (275, 'SLOTS', 'Others', '泰利嗬', 'Tally Ho', 'TallyHo', 'BTN_TallyHo1');
INSERT INTO `mggames` VALUES (276, 'POKER', 'Poker4', 'Tens or Better', 'Tens or Better', 'TensorBetterPwrPoker', 'BTN_TensOrBetterPowerPoker1');
INSERT INTO `mggames` VALUES (277, 'POKER', 'Video Poker', '扑克游戏', 'TensorBetter', 'TensorBetter', 'BTN_TensOrBetter1');
INSERT INTO `mggames` VALUES (278, 'SLOTS', 'Others', '蝙蝠侠崛起', 'The Dark Knight Rises (TM)', 'TheDarkKnightRises', 'BTN_TheDarkKnightRises');
INSERT INTO `mggames` VALUES (279, 'SLOTS', 'Others', 'The Gee Gees', 'The Gee Gees', 'TheGeeGees', 'BTN_TheGeeGees1');
INSERT INTO `mggames` VALUES (280, 'SLOTS', 'Others', '6号喜悦', 'The Joy of Six ', 'JoyOfSix', 'BTN_JoyOfSix');
INSERT INTO `mggames` VALUES (281, 'SLOTS', 'Others', 'The Lost Princess Anastasia', 'The Lost Princess Anastasia', 'TheLostPrincessAnastasia', 'BTN_TheLostPrincessAnastasia');
INSERT INTO `mggames` VALUES (282, 'SLOTS', 'Others', '摇滚奥斯本', 'The Osbournes', 'RubyTheOsbournes', 'BTN_TheOsbournes1');
INSERT INTO `mggames` VALUES (283, 'SLOTS', 'Others', 'The Rat Pack', 'The Rat Pack', 'RubyTheRatPack', 'BTN_RatPack1');
INSERT INTO `mggames` VALUES (284, 'SLOTS', 'Others', '美好生活', 'TheFinerReelsOfLife', 'TheFinerReelsOfLife', 'BTN_FinerReelsofLife1');
INSERT INTO `mggames` VALUES (285, 'SLOTS', '5 Reel Slots', '搞怪马戏团', 'thetwistedcircus', 'thetwistedcircus', 'BTN_TwistedCircus1');
INSERT INTO `mggames` VALUES (286, 'SLOTS', '5 Reel Slots', '埃及国王', 'Throne of Egypt', 'throneofegypt', 'BTN_ThroneOfEgypt1');
INSERT INTO `mggames` VALUES (287, 'SLOTS', '5 Reel Slots', '惊愕', 'Thunderstruck', 'Thunderstruck', 'BTN_Thunderstruck1');
INSERT INTO `mggames` VALUES (288, 'SLOTS', '5 Reel Slots', '惊愕2', 'ThunderStruck2', 'ThunderStruck2', 'BTN_ThunderstruckTwo1');
INSERT INTO `mggames` VALUES (289, 'SLOTS', '5 Reel Slots', '老虎之月', 'Tiger Moon', 'TigerMoon', 'BTN_Tiger Moon');
INSERT INTO `mggames` VALUES (290, 'SLOTS', '5 Reel Slots', '猛虎与黑熊', 'Tiger Vs Bear', 'TigerVsBear', 'BTN_TigerVsBear');
INSERT INTO `mggames` VALUES (291, 'SLOTS', '5 Reel Slots', '古墓丽影', 'Tomb Raider', 'TombRaider', 'BTN_TombRaider2');
INSERT INTO `mggames` VALUES (292, 'SLOTS', '5 Reel Slots', '古墓丽影 2', 'Tomb Raider 2', 'RubyTombRaiderII', 'BTN_TombRaiderSotS1');
INSERT INTO `mggames` VALUES (293, 'SLOTS', '5 Reel Slots', '图腾宝藏', 'Totem Treasure', 'RubyTotemTreasure', 'BTN_TotemTreasure1');
INSERT INTO `mggames` VALUES (294, 'SLOTS', 'Others', 'Track And Fieldmouse', 'Track And Fieldmouse', 'TrackAndFieldMouse', 'BTN_TrackandFieldMouse1');
INSERT INTO `mggames` VALUES (295, 'SMALLGAME', 'Fallow', '魔幻三角', 'Triangulation', 'Triangulation', 'BTN_Triangulation');
INSERT INTO `mggames` VALUES (296, 'TABLEGAMES', 'Others', '三人德克萨斯纸牌', 'Triple Pocket Holdem Poker', 'RubyTriplePocketPoker', 'BTN_GoldSeries_TriplePocket1');
INSERT INTO `mggames` VALUES (297, 'SLOTS', '3 Reel Slots', '三重魔力', 'TripleMagic', 'TripleMagic', 'BTN_TripleMagic1');
INSERT INTO `mggames` VALUES (298, 'SMALLGAME', 'Card', '疯狂捕海龟', 'Turtley Awesome', 'RubyTurtleyAwesome', 'BTN_TurtleyAwesome1');
INSERT INTO `mggames` VALUES (299, 'SLOTS', 'Others', '驯服冠鹰雕', 'Untamed Crowned Eagle', 'UntamedCrownedEagle', 'BTN_UntamedCrownedEagle');
INSERT INTO `mggames` VALUES (300, 'SLOTS', 'Others', '孟加拉虎', 'UntamedBengalTiger', 'UntamedBengalTiger', 'BTN_UntamedBengalTiger1');
INSERT INTO `mggames` VALUES (301, 'SLOTS', 'Others', '森林熊猫', 'UntamedGiantPanda', 'UntamedGiantPanda', 'BTN_UntamedGiantPanda');
INSERT INTO `mggames` VALUES (302, 'SLOTS', 'Others', '蛮荒野狼', 'untamedwolfpack', 'untamedwolfpack', 'BTN_UntamedWolfPack1');
INSERT INTO `mggames` VALUES (303, 'TABLEGAMES', 'BlackJack', '拉斯维加斯单人黄金21点', 'Vegas Single Deck Blackjack Gold', 'RubyVegasSingleDeckBlackjackGold', 'BTN_GoldSeries_VegasSingleDeck1');
INSERT INTO `mggames` VALUES (304, 'TABLEGAMES', 'BlackJack', '拉斯维加斯黄金21点', 'Vegas Strip Blackjack Gold', 'RubyVegasStripBlackjackGold', 'BTN_GoldSeries_VegasStrip1');
INSERT INTO `mggames` VALUES (305, 'TABLEGAMES', 'BlackJack', '拉斯维加斯21点', 'VegasStrip', 'VegasStrip', 'BTN_VegasStripBlackjack1');
INSERT INTO `mggames` VALUES (306, 'SLOTS', 'Others', '维多利亚时代淘气鬼', 'Victorian Villain', 'VictorianVillain', 'BTN_VictorianVillian');
INSERT INTO `mggames` VALUES (307, 'SLOTS', 'Others', '甜蜜约会', 'VinylCountdown', 'VinylCountdown', 'BTN_VinylCountdown4');
INSERT INTO `mggames` VALUES (308, 'SLOTS', 'Others', '芥末大餐', 'Wasabi San', 'RubyWasabiSan', 'BTN_WasabiSan4');
INSERT INTO `mggames` VALUES (309, 'SLOTS', 'Others', '西部边疆', 'westernfrontier', 'westernfrontier', 'BTN_WesternFrontier');
INSERT INTO `mggames` VALUES (310, 'SMALLGAME', 'Card', '重击地鼠', 'Whack a Jackpot', 'RubyWhackAJackpot', 'BTN_WhackaJackpot1');
INSERT INTO `mggames` VALUES (311, 'SLOTS', 'Others', '地球探索', 'What on Earth', 'WhatonEarth', 'BTN_WhatonEarth1');
INSERT INTO `mggames` VALUES (312, 'SLOTS', 'Others', '猫头鹰', 'WhatAHoot', 'WhatAHoot', 'BTN_WhataHoot3');
INSERT INTO `mggames` VALUES (313, 'SLOTS', 'Others', '疯狂轮盘', 'Wheel of Plenty', 'RubyWheelOfPlenty', 'BTN_WheelofPlenty1');
INSERT INTO `mggames` VALUES (314, 'SLOTS', 'Others', '财富之轮', 'Wheel of Wealth', 'RubyWheelofWealth', 'BTN_WheelOfWealth1');
INSERT INTO `mggames` VALUES (315, 'SLOTS', 'Others', '财富之轮 特别版', 'Wheel of Wealth Special Edition', 'WheelOfWealthSE', 'BTN_WheelofWealthSE1');
INSERT INTO `mggames` VALUES (316, 'SLOTS', 'Others', '白色水牛酒店', 'White Buffalo', 'WhiteBuffalo', 'BTN_WhiteBuffalo');
INSERT INTO `mggames` VALUES (317, 'SLOTS', 'Others', '野生捕捞', 'Wild Catch', 'WildCatch', 'BTN_WildCatch');
INSERT INTO `mggames` VALUES (318, 'SMALLGAME', 'Card', '野蛮战士', 'Wild Champions', 'RubyWildChampions', 'BTN_WildChampions1');
INSERT INTO `mggames` VALUES (319, 'SLOTS', 'Others', '赢得飞旋', 'Win Spinner', 'WinSpinner', 'BTN_WinSpinner1');
INSERT INTO `mggames` VALUES (320, 'SLOTS', '5 Reel Slots', '女巫的财富', 'Witches Wealth', 'RubyWitchesWealth', 'BTN_WitchesWealth1');
INSERT INTO `mggames` VALUES (321, 'SLOTS', '5 Reel Slots', '魔幻宝物', 'wwizards', 'wwizards', 'BTN_WinningWizards1');
INSERT INTO `mggames` VALUES (322, 'SLOTS', '3 Reel Slots', '搞怪斑马', 'zebra', 'zebra', 'BTN_ZanyZebra1');
COMMIT;

-- ----------------------------
-- Table structure for money
-- ----------------------------
DROP TABLE IF EXISTS `money`;
CREATE TABLE `money` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `order_num` varchar(50) NOT NULL COMMENT '單號',
  `status` varchar(10) NOT NULL DEFAULT '未结算' COMMENT '状态，0:未结算，1:成功，2:失败',
  `about` varchar(255) NOT NULL COMMENT '备注',
  `update_time` datetime NOT NULL COMMENT '注单处理时间',
  `pay_card` varchar(50) NOT NULL COMMENT '支付卡',
  `pay_num` varchar(50) NOT NULL COMMENT '支付卡号',
  `pay_address` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT '在线支付' COMMENT '付支類型，在线支付，银行汇款，用户提款',
  `pay_name` varchar(20) NOT NULL,
  `sxf` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '續費手',
  `order_value` decimal(11,2) NOT NULL COMMENT '產生的金額',
  `assets` decimal(11,2) DEFAULT NULL,
  `balance` decimal(11,2) DEFAULT NULL,
  `manner` varchar(255) DEFAULT NULL COMMENT '汇款方式',
  `zsjr` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '赠送金额',
  `date` datetime DEFAULT NULL COMMENT '汇款时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_num` (`order_num`),
  KEY `uid` (`user_id`),
  KEY `status` (`status`,`update_time`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='存款和提款记录';

-- ----------------------------
-- Table structure for money_log
-- ----------------------------
DROP TABLE IF EXISTS `money_log`;
CREATE TABLE `money_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `order_num` varchar(50) NOT NULL COMMENT '單號',
  `about` varchar(255) NOT NULL COMMENT '該筆交易詳細說明',
  `update_time` datetime NOT NULL COMMENT '注单处理时间',
  `type` varchar(100) NOT NULL COMMENT '游戏下注，返利，充值，提现，无效退款，赢，赢一半，输一半',
  `order_value` decimal(11,2) NOT NULL COMMENT '產生的金額',
  `assets` decimal(11,2) NOT NULL COMMENT '前資產',
  `balance` decimal(11,2) NOT NULL COMMENT '后資產',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='存款和提款记录';

-- ----------------------------
-- Table structure for odds_lottery
-- ----------------------------
DROP TABLE IF EXISTS `odds_lottery`;
CREATE TABLE `odds_lottery` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `lottery_type` varchar(255) DEFAULT NULL,
  `sub_type` varchar(255) DEFAULT NULL,
  `ball_type` varchar(255) DEFAULT NULL,
  `h1` decimal(8,2) DEFAULT NULL,
  `h2` decimal(8,2) DEFAULT NULL,
  `h3` decimal(8,2) DEFAULT NULL,
  `h4` decimal(8,2) DEFAULT NULL,
  `h5` decimal(8,2) DEFAULT NULL,
  `h6` decimal(8,2) DEFAULT NULL,
  `h7` decimal(8,2) DEFAULT NULL,
  `h8` decimal(8,2) DEFAULT NULL,
  `h9` decimal(8,2) DEFAULT NULL,
  `h10` decimal(8,2) DEFAULT NULL,
  `h11` decimal(8,2) DEFAULT NULL,
  `h12` decimal(8,2) DEFAULT NULL,
  `h13` decimal(8,2) DEFAULT NULL,
  `h14` decimal(8,2) DEFAULT NULL,
  `h15` decimal(8,2) DEFAULT NULL,
  `h16` decimal(8,2) DEFAULT NULL,
  `h17` decimal(8,2) DEFAULT NULL,
  `h18` decimal(8,2) DEFAULT NULL,
  `h19` decimal(8,2) DEFAULT NULL,
  `h20` decimal(8,2) DEFAULT NULL,
  `h21` decimal(8,2) DEFAULT NULL,
  `h22` decimal(8,2) DEFAULT NULL,
  `h23` decimal(8,2) DEFAULT NULL,
  `h24` decimal(8,2) DEFAULT NULL,
  `h25` decimal(8,2) DEFAULT NULL,
  `h26` decimal(8,2) DEFAULT NULL,
  `h27` decimal(8,2) DEFAULT NULL,
  `h28` decimal(8,2) DEFAULT NULL,
  `h29` decimal(8,2) DEFAULT NULL,
  `h30` decimal(8,2) DEFAULT NULL,
  `h31` decimal(8,2) DEFAULT NULL,
  `h32` decimal(8,2) DEFAULT NULL,
  `h33` decimal(8,2) DEFAULT NULL,
  `h34` decimal(8,2) DEFAULT NULL,
  `h35` decimal(8,2) DEFAULT NULL,
  `h36` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=426 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of odds_lottery
-- ----------------------------
BEGIN;
INSERT INTO `odds_lottery` VALUES (401, '广西十分彩', '主盘势', 'ball_1', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (402, '广西十分彩', '主盘势', 'ball_2', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (403, '广西十分彩', '主盘势', 'ball_3', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (404, '广西十分彩', '主盘势', 'ball_4', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (405, '广西十分彩', '主盘势', 'ball_5', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (406, '广西十分彩', '正码和特别号', 'ball_1', 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 2.82, 2.82, 2.82, 3.76, 3.76, 3.76, 3.76, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96);
INSERT INTO `odds_lottery` VALUES (407, '广西十分彩', '正码和特别号', 'ball_2', 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 2.82, 2.82, 2.82, 3.76, 3.76, 3.76, 3.76, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96);
INSERT INTO `odds_lottery` VALUES (408, '广西十分彩', '正码和特别号', 'ball_3', 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 2.82, 2.82, 2.82, 3.76, 3.76, 3.76, 3.76, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96);
INSERT INTO `odds_lottery` VALUES (409, '广西十分彩', '正码和特别号', 'ball_4', 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 20.00, 2.82, 2.82, 2.82, 3.76, 3.76, 3.76, 3.76, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96);
INSERT INTO `odds_lottery` VALUES (410, '广西十分彩', '正码和特别号', 'ball_5', 20.10, 20.10, 20.10, 20.10, 20.10, 20.10, 20.10, 20.10, 20.10, 20.10, 20.10, 20.10, 20.10, 20.10, 20.10, 20.10, 20.10, 20.10, 20.10, 20.10, 20.10, 2.82, 2.82, 2.82, 3.76, 3.76, 3.76, 3.76, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96);
INSERT INTO `odds_lottery` VALUES (411, '广西十分彩', '四季五行', 'ball_1', 3.76, 3.76, 3.76, 3.76, 4.94, 3.95, 4.94, 4.94, 4.94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (412, '广西十分彩', '四季五行', 'ball_2', 3.76, 3.76, 3.76, 3.76, 4.94, 3.95, 4.94, 4.94, 4.94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (413, '广西十分彩', '四季五行', 'ball_3', 3.76, 3.76, 3.76, 3.76, 4.94, 3.95, 4.94, 4.94, 4.94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (414, '广西十分彩', '四季五行', 'ball_4', 3.76, 3.76, 3.76, 3.76, 4.94, 3.95, 4.94, 4.94, 4.94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (415, '广西十分彩', '四季五行', 'ball_5', 3.76, 3.76, 3.76, 3.76, 4.94, 3.95, 4.94, 4.94, 4.94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (416, '广西十分彩', '一中一', 'ball_1', 3.63, 3.63, 3.63, 3.63, 3.63, 3.63, 3.63, 3.63, 3.63, 3.63, 3.63, 3.63, 3.63, 3.63, 3.63, 3.63, 3.63, 3.63, 3.63, 3.63, 3.63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (17, '----------------', '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (18, '----------------', '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (19, '----------------', '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (20, '广东十分彩', '主盘势', 'ball_1', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (21, '广东十分彩', '主盘势', 'ball_2', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (22, '广东十分彩', '主盘势', 'ball_3', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (23, '广东十分彩', '主盘势', 'ball_4', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (24, '广东十分彩', '主盘势', 'ball_5', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (25, '广东十分彩', '主盘势', 'ball_6', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (26, '广东十分彩', '主盘势', 'ball_7', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (27, '广东十分彩', '主盘势', 'ball_8', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (28, '广东十分彩', '主盘势', 'ball_9', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (29, '广东十分彩', '单面双码', 'ball_1', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (30, '广东十分彩', '单面双码', 'ball_2', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (31, '广东十分彩', '单面双码', 'ball_3', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (32, '广东十分彩', '单面双码', 'ball_4', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (33, '广东十分彩', '单面双码', 'ball_5', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (34, '广东十分彩', '单面双码', 'ball_6', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (35, '广东十分彩', '单面双码', 'ball_7', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (36, '广东十分彩', '单面双码', 'ball_8', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (37, '广东十分彩', '四季五行', 'ball_1', 3.76, 3.76, 3.76, 3.76, 4.70, 4.70, 4.70, 4.70, 4.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (38, '广东十分彩', '四季五行', 'ball_2', 3.76, 3.76, 3.76, 3.76, 4.70, 4.70, 4.70, 4.70, 4.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (39, '广东十分彩', '四季五行', 'ball_3', 3.76, 3.76, 3.76, 3.76, 4.70, 4.70, 4.70, 4.70, 4.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (40, '广东十分彩', '四季五行', 'ball_4', 3.76, 3.76, 3.76, 3.76, 4.70, 4.70, 4.70, 4.70, 4.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (41, '广东十分彩', '四季五行', 'ball_5', 3.76, 3.76, 3.76, 3.76, 4.70, 4.70, 4.70, 4.70, 4.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (42, '广东十分彩', '四季五行', 'ball_6', 3.76, 3.76, 3.76, 3.76, 4.70, 4.70, 4.70, 4.70, 4.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (43, '广东十分彩', '四季五行', 'ball_7', 3.76, 3.76, 3.76, 3.76, 4.70, 4.70, 4.70, 4.70, 4.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (44, '广东十分彩', '四季五行', 'ball_8', 3.76, 3.76, 3.76, 3.76, 4.70, 4.70, 4.70, 4.70, 4.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (45, '广东十分彩', '方位中发白', 'ball_1', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (46, '广东十分彩', '方位中发白', 'ball_2', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (47, '广东十分彩', '方位中发白', 'ball_3', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (48, '广东十分彩', '方位中发白', 'ball_4', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (49, '广东十分彩', '方位中发白', 'ball_5', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (50, '广东十分彩', '方位中发白', 'ball_6', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (51, '广东十分彩', '方位中发白', 'ball_7', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (52, '广东十分彩', '方位中发白', 'ball_8', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (53, '广东十分彩', '总和龙虎', 'ball_1', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (54, '广东十分彩', '一中一', 'ball_1', 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (55, '----------------', '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (56, '----------------', '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (57, '----------------', '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (58, '天津十分彩', '主盘势', 'ball_1', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (59, '天津十分彩', '主盘势', 'ball_2', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (60, '天津十分彩', '主盘势', 'ball_3', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (61, '天津十分彩', '主盘势', 'ball_4', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (62, '天津十分彩', '主盘势', 'ball_5', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (63, '天津十分彩', '主盘势', 'ball_6', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (64, '天津十分彩', '主盘势', 'ball_7', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (65, '天津十分彩', '主盘势', 'ball_8', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (66, '天津十分彩', '主盘势', 'ball_9', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (67, '天津十分彩', '正码和特别号', 'ball_1', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (68, '天津十分彩', '正码和特别号', 'ball_2', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (69, '天津十分彩', '正码和特别号', 'ball_3', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (70, '天津十分彩', '正码和特别号', 'ball_4', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (71, '天津十分彩', '正码和特别号', 'ball_5', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (72, '天津十分彩', '正码和特别号', 'ball_6', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (73, '天津十分彩', '正码和特别号', 'ball_7', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (74, '天津十分彩', '正码和特别号', 'ball_8', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (75, '天津十分彩', '四季五行', 'ball_1', 3.76, 3.76, 3.76, 3.76, 4.70, 4.70, 4.70, 4.70, 4.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (76, '天津十分彩', '四季五行', 'ball_2', 3.76, 3.76, 3.76, 3.76, 4.70, 4.70, 4.70, 4.70, 4.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (77, '天津十分彩', '四季五行', 'ball_3', 3.76, 3.76, 3.76, 3.76, 4.70, 4.70, 4.70, 4.70, 4.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (78, '天津十分彩', '四季五行', 'ball_4', 3.76, 3.76, 3.76, 3.76, 4.70, 4.70, 4.70, 4.70, 4.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (79, '天津十分彩', '四季五行', 'ball_5', 3.76, 3.76, 3.76, 3.76, 4.70, 4.70, 4.70, 4.70, 4.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (80, '天津十分彩', '四季五行', 'ball_6', 3.76, 3.76, 3.76, 3.76, 4.70, 4.70, 4.70, 4.70, 4.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (81, '天津十分彩', '四季五行', 'ball_7', 3.76, 3.76, 3.76, 3.76, 4.70, 4.70, 4.70, 4.70, 4.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (82, '天津十分彩', '四季五行', 'ball_8', 3.76, 3.76, 3.76, 3.76, 4.70, 4.70, 4.70, 4.70, 4.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (83, '天津十分彩', '方位中发白', 'ball_1', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (84, '天津十分彩', '方位中发白', 'ball_2', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (85, '天津十分彩', '方位中发白', 'ball_3', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (86, '天津十分彩', '方位中发白', 'ball_4', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (87, '天津十分彩', '方位中发白', 'ball_5', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (88, '天津十分彩', '方位中发白', 'ball_6', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (89, '天津十分彩', '方位中发白', 'ball_7', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (90, '天津十分彩', '方位中发白', 'ball_8', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (91, '天津十分彩', '总和龙虎', 'ball_1', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (92, '天津十分彩', '一中一', 'ball_1', 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, 2.16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (93, '----------------', '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (94, '----------------', '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (95, '----------------', '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (96, '北京PK拾', '主盘势', 'ball_1', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (97, '北京PK拾', '主盘势', 'ball_2', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (98, '北京PK拾', '主盘势', 'ball_3', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (99, '北京PK拾', '主盘势', 'ball_4', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (100, '北京PK拾', '主盘势', 'ball_5', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (101, '北京PK拾', '主盘势', 'ball_6', 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (102, '北京PK拾', '主盘势', 'ball_7', 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (103, '北京PK拾', '主盘势', 'ball_8', 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (104, '北京PK拾', '主盘势', 'ball_9', 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (105, '北京PK拾', '主盘势', 'ball_10', 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (106, '北京PK拾', '定位', 'ball_1', 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (107, '北京PK拾', '定位', 'ball_2', 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (108, '北京PK拾', '定位', 'ball_3', 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (109, '北京PK拾', '定位', 'ball_4', 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (110, '北京PK拾', '定位', 'ball_5', 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (111, '北京PK拾', '定位', 'ball_6', 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (112, '北京PK拾', '定位', 'ball_7', 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (113, '北京PK拾', '定位', 'ball_8', 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (114, '北京PK拾', '定位', 'ball_9', 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (115, '北京PK拾', '定位', 'ball_10', 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (116, '北京PK拾', '冠亚军和', 'ball_1', 10.80, 2.70, 5.40, 8.64, 3.60, 1.96, 1.72, 1.72, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (117, '北京PK拾', '选号', 'ball_1', 49.00, 2.00, 175.00, 20.00, 380.00, 50.00, 10.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (118, '北京PK拾', '冠亚军和-快速', 'ball_1', 42.02, 42.02, 20.52, 20.52, 13.52, 13.52, 10.02, 10.02, 8.52, 10.02, 10.02, 13.52, 13.52, 20.52, 20.52, 42.02, 42.02, 1.96, 1.72, 1.72, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (119, '----------------', '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (120, '----------------', '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (121, '北京快乐8', '选号', 'ball_1', 251.00, 21.00, 3.00, 51.00, 6.00, 2.00, 20.30, 2.30, 10.30, 3.30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (122, '北京快乐8', '其他', 'ball_1', 1.95, 1.95, 1.95, 1.95, 108.00, 2.30, 4.30, 2.30, 2.30, 4.30, 2.30, 9.20, 4.60, 2.40, 4.60, 9.20, 3.70, 3.70, 3.70, 3.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (131, '----------------', '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (132, '----------------', '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (133, '----------------', '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (149, '广东十一选五', '顺子杂六', 'ball_2', 6.00, 1.90, 1.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (148, '广东十一选五', '顺子杂六', 'ball_1', 6.00, 1.90, 1.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (147, '广东十一选五', '总和龙虎和', 'ball_1', 1.88, 1.68, 1.88, 1.88, 1.88, 1.88, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (141, '广东十一选五', '正码和特别号', 'ball_1', 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 1.70, 1.80, 1.70, 1.80, 1.96, 1.96, 1.70, 1.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (142, '广东十一选五', '正码和特别号', 'ball_2', 9.50, 9.50, 9.50, 9.50, 9.50, 9.50, 9.50, 9.50, 9.50, 9.50, 9.50, 1.70, 1.80, 1.70, 1.80, 1.96, 1.96, 1.70, 1.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (143, '广东十一选五', '正码和特别号', 'ball_3', 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.50, 9.00, 1.70, 1.80, 1.70, 1.80, 1.96, 1.96, 1.70, 1.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (144, '广东十一选五', '正码和特别号', 'ball_4', 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 1.70, 1.80, 1.70, 1.80, 1.96, 1.96, 1.70, 1.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (145, '广东十一选五', '正码和特别号', 'ball_5', 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 1.70, 1.80, 1.70, 1.80, 1.96, 1.96, 1.70, 1.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (146, '广东十一选五', '一中一', 'ball_1', 1.90, 1.90, 1.90, 1.90, 1.90, 1.90, 1.90, 1.90, 1.90, 1.90, 1.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (153, '----------------', '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (155, '----------------', '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (302, '重庆十分彩', '正码和特别号', 'ball_2', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (301, '重庆十分彩', '正码和特别号', 'ball_1', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (154, '----------------', '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (150, '广东十一选五', '顺子杂六', 'ball_3', 6.00, 1.90, 1.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (303, '重庆十分彩', '正码和特别号', 'ball_3', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (304, '重庆十分彩', '正码和特别号', 'ball_4', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (305, '重庆十分彩', '正码和特别号', 'ball_5', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (306, '重庆十分彩', '正码和特别号', 'ball_6', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (307, '重庆十分彩', '正码和特别号', 'ball_7', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (308, '重庆十分彩', '正码和特别号', 'ball_8', 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 19.20, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (309, '重庆十分彩', '方位中发白', 'ball_1', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (310, '重庆十分彩', '方位中发白', 'ball_2', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (311, '重庆十分彩', '方位中发白', 'ball_3', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (312, '重庆十分彩', '方位中发白', 'ball_4', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (313, '重庆十分彩', '方位中发白', 'ball_5', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (314, '重庆十分彩', '方位中发白', 'ball_6', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (315, '重庆十分彩', '方位中发白', 'ball_7', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (316, '重庆十分彩', '方位中发白', 'ball_8', 3.76, 3.76, 3.76, 3.76, 2.70, 2.70, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (317, '重庆十分彩', '总和龙虎', 'ball_1', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (350, '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (351, '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (352, '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (353, '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (354, '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (422, '广西十分彩', '总和龙虎和', 'ball_1', 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (423, '广西十分彩', '顺子杂六', 'ball_1', 70.00, 12.00, 2.80, 1.90, 1.10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (424, '广西十分彩', '顺子杂六', 'ball_2', 70.00, 12.00, 2.80, 1.90, 1.10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery` VALUES (425, '广西十分彩', '顺子杂六', 'ball_3', 70.00, 12.00, 2.80, 1.90, 1.10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for odds_lottery_normal
-- ----------------------------
DROP TABLE IF EXISTS `odds_lottery_normal`;
CREATE TABLE `odds_lottery_normal` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `lottery_type` varchar(255) DEFAULT NULL,
  `sub_type` varchar(255) DEFAULT NULL,
  `ball_type` varchar(255) DEFAULT NULL,
  `h0` decimal(8,2) DEFAULT NULL,
  `h1` decimal(8,2) DEFAULT NULL,
  `h2` decimal(8,2) DEFAULT NULL,
  `h3` decimal(8,2) DEFAULT NULL,
  `h4` decimal(8,2) DEFAULT NULL,
  `h5` decimal(8,2) DEFAULT NULL,
  `h6` decimal(8,2) DEFAULT NULL,
  `h7` decimal(8,2) DEFAULT NULL,
  `h8` decimal(8,2) DEFAULT NULL,
  `h9` decimal(8,2) DEFAULT NULL,
  `h10` decimal(8,2) DEFAULT NULL,
  `h11` decimal(8,2) DEFAULT NULL,
  `h12` decimal(8,2) DEFAULT NULL,
  `h13` decimal(8,2) DEFAULT NULL,
  `h14` decimal(8,2) DEFAULT NULL,
  `h15` decimal(8,2) DEFAULT NULL,
  `h16` decimal(8,2) DEFAULT NULL,
  `h17` decimal(8,2) DEFAULT NULL,
  `h18` decimal(8,2) DEFAULT NULL,
  `h19` decimal(8,2) DEFAULT NULL,
  `h20` decimal(8,2) DEFAULT NULL,
  `h21` decimal(8,2) DEFAULT NULL,
  `h22` decimal(8,2) DEFAULT NULL,
  `h23` decimal(8,2) DEFAULT NULL,
  `h24` decimal(8,2) DEFAULT NULL,
  `h25` decimal(8,2) DEFAULT NULL,
  `h26` decimal(8,2) DEFAULT NULL,
  `h27` decimal(8,2) DEFAULT NULL,
  `h28` decimal(8,2) DEFAULT NULL,
  `h29` decimal(8,2) DEFAULT NULL,
  `h30` decimal(8,2) DEFAULT NULL,
  `h31` decimal(8,2) DEFAULT NULL,
  `h32` decimal(8,2) DEFAULT NULL,
  `h33` decimal(8,2) DEFAULT NULL,
  `h34` decimal(8,2) DEFAULT NULL,
  `h35` decimal(8,2) DEFAULT NULL,
  `h36` decimal(8,2) DEFAULT NULL,
  `h37` decimal(8,2) DEFAULT NULL,
  `h38` decimal(8,2) DEFAULT NULL,
  `h39` decimal(8,2) DEFAULT NULL,
  `h40` decimal(8,2) DEFAULT NULL,
  `h41` decimal(8,2) DEFAULT NULL,
  `h42` decimal(8,2) DEFAULT NULL,
  `h43` decimal(8,2) DEFAULT NULL,
  `h44` decimal(8,2) DEFAULT NULL,
  `h45` decimal(8,2) DEFAULT NULL,
  `h46` decimal(8,2) DEFAULT NULL,
  `h47` decimal(8,2) DEFAULT NULL,
  `h48` decimal(8,2) DEFAULT NULL,
  `h49` decimal(8,2) DEFAULT NULL,
  `h50` decimal(8,2) DEFAULT NULL,
  `h51` decimal(8,2) DEFAULT NULL,
  `h52` decimal(8,2) DEFAULT NULL,
  `h53` decimal(8,2) DEFAULT NULL,
  `h54` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1223 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of odds_lottery_normal
-- ----------------------------
BEGIN;
INSERT INTO `odds_lottery_normal` VALUES (141, '3D彩', '一字', NULL, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (142, '3D彩', '佰定位', NULL, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (143, '3D彩', '拾定位', NULL, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (144, '3D彩', '个定位', NULL, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (145, '3D彩', '二字', NULL, 31.50, 15.20, 16.40, 16.40, 16.40, 16.40, 16.40, 15.00, 16.40, 16.40, 29.10, 31.50, 15.20, 15.20, 15.20, 15.20, 13.80, 15.20, 15.20, 31.50, 16.40, 16.40, 16.40, 16.40, 15.00, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 15.00, 16.40, 16.40, 31.50, 16.40, 16.40, 15.00, 16.40, 16.40, 31.50, 16.40, 15.00, 16.40, 16.40, 31.50, 15.00, 16.40, 16.40, 28.70, 15.00, 15.00, 31.50, 16.40, 31.50);
INSERT INTO `odds_lottery_normal` VALUES (146, '3D彩', '佰拾定位', 'part1', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 82.00, 82.00, 82.00, 82.00, 82.00, 82.00, 81.00, 75.00, 82.00, 82.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (147, '3D彩', '佰拾定位', 'part2', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 87.00, 81.00, 87.00, 87.00, 87.00, 87.00, 87.00, 80.00, 87.00, 87.00, 81.00, 75.00, 81.00, 81.00, 81.00, 81.00, 80.00, 81.00, 81.00, 81.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (148, '3D彩', '佰个定位', 'part1', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 82.00, 82.00, 82.00, 82.00, 82.00, 82.00, 81.00, 75.00, 82.00, 82.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (149, '3D彩', '佰个定位', 'part2', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 87.00, 81.00, 87.00, 87.00, 87.00, 87.00, 87.00, 80.00, 87.00, 87.00, 81.00, 75.00, 81.00, 81.00, 81.00, 81.00, 80.00, 81.00, 81.00, 81.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (150, '3D彩', '拾个定位', 'part1', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 82.00, 82.00, 82.00, 82.00, 82.00, 82.00, 81.00, 75.00, 82.00, 82.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (151, '3D彩', '拾个定位', 'part2', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 87.00, 81.00, 87.00, 87.00, 87.00, 87.00, 87.00, 80.00, 87.00, 87.00, 81.00, 75.00, 81.00, 81.00, 81.00, 81.00, 80.00, 81.00, 81.00, 81.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (153, '3D彩', '和数', NULL, 720.00, 240.00, 136.00, 82.00, 54.50, 39.00, 31.00, 24.30, 19.30, 15.80, 13.90, 12.80, 12.30, 12.00, 12.00, 12.30, 12.80, 13.90, 15.80, 19.30, 24.30, 31.00, 39.00, 54.50, 82.00, 136.00, 240.00, 720.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (154, '3D彩', '佰拾和数', NULL, 87.00, 43.50, 29.00, 21.70, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.70, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (155, '3D彩', '佰个和数', NULL, 87.00, 43.50, 29.00, 21.70, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.70, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (156, '3D彩', '拾个和数', NULL, 87.00, 43.50, 29.00, 21.70, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.70, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (157, '3D彩', '两面', NULL, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (168, '3D彩', '跨度', NULL, 86.00, 16.70, 9.40, 7.20, 6.20, 6.00, 6.20, 7.20, 9.40, 16.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (159, '3D彩', '组选三', NULL, 14.60, 9.81, 7.05, 5.31, 4.41, 3.32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (160, '3D彩', '组选六', NULL, 36.53, 14.77, 7.17, 4.14, 2.61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (161, '3D彩', '一字过关', NULL, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 3.57, 6.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (162, '3D彩', '佰拾个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (163, '3D彩', '佰拾和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (164, '3D彩', '佰个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (165, '3D彩', '拾个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (169, '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (158, '3D彩', '总和龙虎和', NULL, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (167, '3D彩', '3连', NULL, 60.00, 13.00, 2.81, 2.01, 2.21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (170, '排列三', '一字', NULL, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (171, '排列三', '佰定位', NULL, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (172, '排列三', '拾定位', NULL, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (173, '排列三', '个定位', NULL, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (174, '排列三', '二字', NULL, 31.50, 15.20, 16.40, 16.40, 16.40, 16.40, 16.40, 15.00, 16.40, 16.40, 29.10, 15.20, 15.20, 15.20, 15.20, 15.20, 13.80, 15.20, 15.20, 15.20, 16.40, 16.40, 16.40, 16.40, 15.00, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 15.00, 16.40, 16.40, 31.50, 16.40, 16.40, 15.00, 16.40, 16.40, 31.50, 16.40, 15.00, 16.40, 16.40, 31.50, 15.00, 16.40, 16.40, 28.70, 15.00, 15.00, 31.50, 16.40, 31.50);
INSERT INTO `odds_lottery_normal` VALUES (175, '排列三', '佰拾定位', 'part1', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 82.00, 82.00, 82.00, 82.00, 82.00, 82.00, 81.00, 75.00, 82.00, 82.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (176, '排列三', '佰拾定位', 'part2', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 87.00, 81.00, 87.00, 87.00, 87.00, 87.00, 87.00, 80.00, 87.00, 87.00, 81.00, 75.00, 81.00, 81.00, 81.00, 81.00, 80.00, 81.00, 81.00, 81.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (177, '排列三', '佰个定位', 'part1', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 82.00, 82.00, 82.00, 82.00, 82.00, 82.00, 81.00, 75.00, 82.00, 82.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (178, '排列三', '佰个定位', 'part2', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 87.00, 81.00, 87.00, 87.00, 87.00, 87.00, 87.00, 80.00, 87.00, 88.00, 81.00, 75.00, 81.00, 81.00, 81.00, 81.00, 80.00, 81.00, 81.00, 81.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (179, '排列三', '拾个定位', 'part1', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 82.00, 82.00, 82.00, 82.00, 82.00, 82.00, 81.00, 75.00, 82.00, 82.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (180, '排列三', '拾个定位', 'part2', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 87.00, 81.00, 87.00, 87.00, 87.00, 87.00, 87.00, 80.00, 87.00, 88.00, 81.00, 75.00, 81.00, 81.00, 81.00, 81.00, 80.00, 81.00, 81.00, 81.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 888.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (181, '排列三', '和数', NULL, 720.00, 240.00, 136.00, 82.00, 54.50, 39.00, 31.00, 24.30, 19.30, 15.80, 13.90, 12.80, 12.30, 12.00, 12.00, 12.30, 12.80, 13.90, 15.80, 19.30, 24.30, 31.00, 39.00, 54.50, 82.00, 136.00, 240.00, 720.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (182, '排列三', '佰拾和数', NULL, 87.00, 43.50, 29.00, 21.70, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.70, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (183, '排列三', '佰个和数', NULL, 87.00, 43.50, 29.00, 21.70, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.70, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (184, '排列三', '拾个和数', NULL, 87.00, 43.50, 29.00, 21.70, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.70, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (185, '排列三', '两面', NULL, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (195, '排列三', '跨度', NULL, 86.00, 16.70, 9.40, 7.20, 6.20, 6.00, 6.20, 7.20, 9.40, 16.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (187, '排列三', '组选三', NULL, 14.60, 9.81, 7.05, 5.31, 4.41, 3.32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (188, '排列三', '组选六', NULL, 36.53, 14.77, 7.17, 4.14, 2.63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (189, '排列三', '一字过关', NULL, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 3.57, 6.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (190, '排列三', '佰拾个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (191, '排列三', '佰拾和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (192, '排列三', '佰个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (193, '排列三', '拾个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (186, '排列三', '总和龙虎和', NULL, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (194, '排列三', '3连', NULL, 60.00, 13.00, 2.81, 2.01, 2.21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (196, '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (197, '上海时时乐', '一字', NULL, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (198, '上海时时乐', '佰定位', NULL, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (199, '上海时时乐', '拾定位', NULL, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (200, '上海时时乐', '个定位', NULL, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, 8.90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (201, '上海时时乐', '二字', NULL, 31.50, 15.20, 16.40, 16.40, 16.40, 16.40, 16.40, 15.00, 16.40, 16.40, 29.10, 31.50, 15.20, 15.20, 15.20, 15.20, 13.80, 15.20, 15.20, 31.50, 16.40, 16.40, 16.40, 16.40, 15.00, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 31.00, 16.40, 16.40, 31.50, 16.40, 16.40, 15.00, 16.40, 16.40, 31.50, 16.40, 15.00, 16.40, 16.40, 31.50, 15.00, 16.40, 16.40, 28.70, 15.00, 15.00, 31.50, 16.40, 31.50);
INSERT INTO `odds_lottery_normal` VALUES (202, '上海时时乐', '佰拾定位', 'part1', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 82.00, 82.00, 82.00, 82.00, 82.00, 82.00, 82.00, 75.00, 82.00, 82.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (203, '上海时时乐', '佰拾定位', 'part2', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 87.00, 81.00, 87.00, 87.00, 87.00, 87.00, 81.00, 80.00, 87.00, 87.00, 81.00, 75.00, 81.00, 81.00, 81.00, 81.00, 80.00, 81.00, 81.00, 81.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (204, '上海时时乐', '佰个定位', 'part1', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 82.00, 82.00, 82.00, 82.00, 82.00, 82.00, 82.00, 75.00, 82.00, 82.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (205, '上海时时乐', '佰个定位', 'part2', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 87.00, 81.00, 87.00, 87.00, 87.00, 87.00, 81.00, 80.00, 87.00, 87.00, 81.00, 75.00, 81.00, 81.00, 81.00, 81.00, 80.00, 81.00, 81.00, 81.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (206, '上海时时乐', '拾个定位', 'part1', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 82.00, 82.00, 82.00, 82.00, 82.00, 82.00, 82.00, 75.00, 82.00, 82.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 88.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (207, '上海时时乐', '拾个定位', 'part2', 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 87.00, 81.00, 87.00, 87.00, 87.00, 87.00, 81.00, 80.00, 87.00, 87.00, 81.00, 75.00, 81.00, 81.00, 81.00, 81.00, 80.00, 81.00, 81.00, 81.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, 88.00, 82.00, 88.00, 88.00, 88.00, 88.00, 87.00, 81.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (208, '上海时时乐', '和数', NULL, 720.00, 240.00, 136.00, 82.00, 54.50, 39.00, 31.00, 24.30, 19.30, 15.80, 13.90, 12.80, 12.30, 12.00, 12.00, 12.30, 12.80, 13.90, 15.80, 19.30, 24.30, 31.00, 39.00, 54.50, 82.00, 136.00, 240.00, 720.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (209, '上海时时乐', '佰拾和数', NULL, 87.00, 43.50, 29.00, 21.70, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.70, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (210, '上海时时乐', '佰个和数', NULL, 87.00, 43.50, 29.00, 21.70, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.70, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (211, '上海时时乐', '拾个和数', NULL, 87.00, 43.50, 29.00, 21.70, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.70, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (213, '上海时时乐', '两面', NULL, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (222, '上海时时乐', '跨度', NULL, 86.00, 16.70, 9.40, 7.20, 6.20, 6.00, 6.20, 7.20, 9.40, 16.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (214, '上海时时乐', '组选三', NULL, 14.60, 9.81, 7.05, 5.31, 4.41, 3.32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (215, '上海时时乐', '组选六', NULL, 36.53, 14.77, 7.17, 4.14, 2.61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (216, '上海时时乐', '一字过关', NULL, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 1.89, 3.57, 6.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (217, '上海时时乐', '佰拾个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (218, '上海时时乐', '佰拾和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (219, '上海时时乐', '佰个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (220, '上海时时乐', '拾个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (212, '上海时时乐', '总和龙虎和', NULL, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (221, '上海时时乐', '3连', NULL, 60.00, 13.00, 2.81, 2.01, 2.01, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (223, '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (224, '重庆时时彩', '全五-多重彩派', NULL, 2.05, 2.05, 2.05, 2.05, 2.05, 2.05, 2.05, 2.05, 2.05, 2.05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (225, '重庆时时彩', '(前三)一字组合', NULL, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (226, '重庆时时彩', '(中三)一字组合', NULL, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (227, '重庆时时彩', '(后三)一字组合', NULL, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (228, '重庆时时彩', '(前三)和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (229, '重庆时时彩', '(中三)和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (230, '重庆时时彩', '(后三)和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (231, '重庆时时彩', '万仟和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (232, '重庆时时彩', '万佰和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (233, '重庆时时彩', '万拾和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (234, '重庆时时彩', '万个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (235, '重庆时时彩', '仟佰和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (236, '重庆时时彩', '仟拾和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (237, '重庆时时彩', '仟个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (238, '重庆时时彩', '佰拾和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (239, '重庆时时彩', '佰个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (240, '重庆时时彩', '拾个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (241, '重庆时时彩', '(前三)和数', NULL, 720.00, 240.00, 136.00, 82.00, 54.50, 39.00, 31.00, 24.30, 19.30, 15.80, 13.90, 12.80, 12.30, 12.00, 12.00, 12.30, 12.80, 13.90, 15.80, 19.30, 24.30, 31.00, 39.00, 54.50, 85.00, 136.00, 240.00, 720.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (242, '重庆时时彩', '(中三)和数', NULL, 720.00, 240.00, 136.00, 82.00, 54.50, 39.00, 31.00, 24.30, 19.30, 15.80, 13.90, 12.80, 12.30, 12.00, 12.00, 12.30, 12.80, 13.90, 15.80, 19.30, 24.30, 31.00, 39.00, 54.50, 85.00, 136.00, 240.00, 720.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (243, '重庆时时彩', '(后三)和数', NULL, 720.00, 240.00, 136.00, 82.00, 54.50, 39.00, 31.00, 24.30, 19.30, 15.80, 13.90, 12.80, 12.30, 12.00, 12.00, 12.30, 12.80, 13.90, 15.80, 19.30, 24.30, 31.00, 39.00, 54.50, 85.00, 136.00, 240.00, 720.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (244, '重庆时时彩', '万仟和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (245, '重庆时时彩', '万佰和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (246, '重庆时时彩', '万拾和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (247, '重庆时时彩', '万个和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (248, '重庆时时彩', '仟佰和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (249, '重庆时时彩', '仟拾和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (250, '重庆时时彩', '仟个和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (251, '重庆时时彩', '佰拾和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (252, '重庆时时彩', '佰个和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (253, '重庆时时彩', '拾个和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (254, '重庆时时彩', '万定位', NULL, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (255, '重庆时时彩', '仟定位', NULL, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (256, '重庆时时彩', '佰定位', NULL, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (257, '重庆时时彩', '拾定位', NULL, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (258, '重庆时时彩', '个定位', NULL, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, 9.80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (259, '重庆时时彩', '(前三)二字组合', NULL, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 31.50, 16.40, 31.50);
INSERT INTO `odds_lottery_normal` VALUES (260, '重庆时时彩', '(中三)二字组合', NULL, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 31.50, 16.40, 31.50);
INSERT INTO `odds_lottery_normal` VALUES (261, '重庆时时彩', '(后三)二字组合', NULL, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 31.50, 16.40, 31.50);
INSERT INTO `odds_lottery_normal` VALUES (262, '重庆时时彩', '(前三)跨度', NULL, 86.00, 16.70, 9.40, 7.20, 6.20, 6.00, 6.10, 7.20, 9.40, 16.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (263, '重庆时时彩', '(中三)跨度', NULL, 86.00, 16.70, 9.40, 7.20, 6.20, 6.00, 6.10, 7.20, 9.40, 16.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (264, '重庆时时彩', '(后三)跨度', NULL, 86.00, 16.70, 9.40, 7.20, 6.20, 6.00, 6.10, 7.20, 9.40, 16.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (265, '重庆时时彩', '(前三)组选三', NULL, 15.30, 10.20, 7.29, 5.46, 4.25, 3.40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (266, '重庆时时彩', '(中三)组选三', NULL, 15.30, 10.20, 7.29, 5.46, 4.25, 3.40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (267, '重庆时时彩', '(后三)组选三', NULL, 15.30, 10.20, 7.29, 5.46, 4.25, 3.40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (268, '重庆时时彩', '(前三)组选六', NULL, 38.50, 15.40, 7.70, 4.40, 2.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (269, '重庆时时彩', '(中三)组选六', NULL, 38.50, 15.40, 7.70, 4.40, 2.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (270, '重庆时时彩', '(后三)组选六', NULL, 38.50, 15.40, 7.70, 4.40, 2.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (271, '重庆时时彩', '两面', 'part1', 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, NULL);
INSERT INTO `odds_lottery_normal` VALUES (272, '重庆时时彩', '两面', 'part2', 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, NULL);
INSERT INTO `odds_lottery_normal` VALUES (273, '重庆时时彩', '万仟定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (274, '重庆时时彩', '万仟定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (275, '重庆时时彩', '万佰定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (276, '重庆时时彩', '万佰定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (277, '重庆时时彩', '万拾定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (278, '重庆时时彩', '万拾定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (279, '重庆时时彩', '万个定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (280, '重庆时时彩', '万个定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (281, '重庆时时彩', '仟佰定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (282, '重庆时时彩', '仟佰定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (283, '重庆时时彩', '仟拾定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (284, '重庆时时彩', '仟拾定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (285, '重庆时时彩', '仟个定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (286, '重庆时时彩', '仟个定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (287, '重庆时时彩', '佰拾定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (288, '重庆时时彩', '佰拾定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (289, '重庆时时彩', '佰个定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (290, '重庆时时彩', '佰个定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (291, '重庆时时彩', '拾个定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (292, '重庆时时彩', '拾个定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (303, '重庆时时彩', '牛牛', NULL, 2.30, 11.00, 11.00, 11.00, 11.00, 11.00, 11.00, 11.00, 11.00, 11.00, 11.00, 2.50, 2.50, 2.50, 2.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (304, '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (305, '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (314, '天津时时彩', '万佰和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (313, '天津时时彩', '万仟和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (312, '天津时时彩', '(后三)和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (311, '天津时时彩', '(中三)和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (310, '天津时时彩', '(前三)和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (309, '天津时时彩', '(后三)一字组合', NULL, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (308, '天津时时彩', '(中三)一字组合', NULL, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (307, '天津时时彩', '(前三)一字组合', NULL, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (306, '天津时时彩', '全五-多重彩派', NULL, 2.05, 2.05, 2.05, 2.05, 2.05, 2.05, 2.05, 2.05, 2.05, 2.05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (315, '天津时时彩', '万拾和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 8.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (316, '天津时时彩', '万个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (317, '天津时时彩', '仟佰和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (318, '天津时时彩', '仟拾和尾数', NULL, 9.00, 8.00, 9.00, 9.00, 9.00, 9.00, 8.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (319, '天津时时彩', '仟个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 8.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (320, '天津时时彩', '佰拾和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 8.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (321, '天津时时彩', '佰个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (322, '天津时时彩', '拾个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (323, '天津时时彩', '(前三)和数', NULL, 720.00, 240.00, 136.00, 82.00, 54.50, 39.00, 31.00, 24.30, 19.30, 15.80, 13.90, 12.80, 12.30, 12.00, 12.00, 12.30, 12.80, 13.90, 15.80, 19.30, 24.30, 31.00, 39.00, 54.50, 85.00, 136.00, 240.00, 720.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (324, '天津时时彩', '(中三)和数', NULL, 720.00, 240.00, 136.00, 82.00, 54.50, 39.00, 31.00, 24.30, 19.30, 15.80, 13.90, 12.80, 12.30, 12.00, 12.00, 12.30, 12.80, 13.90, 15.80, 19.30, 24.30, 31.00, 39.00, 54.50, 85.00, 136.00, 240.00, 720.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (325, '天津时时彩', '(后三)和数', NULL, 720.00, 240.00, 136.00, 82.00, 54.50, 39.00, 31.00, 24.30, 19.30, 15.80, 13.90, 12.80, 12.30, 12.00, 12.00, 12.30, 12.80, 13.90, 15.80, 19.30, 24.30, 31.00, 39.00, 54.50, 85.00, 136.00, 240.00, 720.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (326, '天津时时彩', '万仟和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (327, '天津时时彩', '万佰和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (328, '天津时时彩', '万拾和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (329, '天津时时彩', '万个和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (330, '天津时时彩', '仟佰和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (331, '天津时时彩', '仟拾和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (332, '天津时时彩', '仟个和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (333, '天津时时彩', '佰拾和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (334, '天津时时彩', '佰个和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (335, '天津时时彩', '拾个和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (336, '天津时时彩', '万定位', NULL, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (337, '天津时时彩', '仟定位', NULL, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (338, '天津时时彩', '佰定位', NULL, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (339, '天津时时彩', '拾定位', NULL, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (340, '天津时时彩', '个定位', NULL, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (341, '天津时时彩', '(前三)二字组合', NULL, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 31.50, 16.40, 31.50);
INSERT INTO `odds_lottery_normal` VALUES (342, '天津时时彩', '(中三)二字组合', NULL, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 31.50, 16.40, 31.50);
INSERT INTO `odds_lottery_normal` VALUES (343, '天津时时彩', '(后三)二字组合', NULL, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 31.50, 16.40, 31.50);
INSERT INTO `odds_lottery_normal` VALUES (344, '天津时时彩', '(前三)跨度', NULL, 86.00, 16.70, 9.40, 7.20, 6.20, 6.00, 6.10, 7.20, 9.40, 16.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (345, '天津时时彩', '(中三)跨度', NULL, 86.00, 16.70, 9.40, 7.20, 6.20, 6.00, 6.10, 7.20, 9.40, 16.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (346, '天津时时彩', '(后三)跨度', NULL, 86.00, 16.70, 9.40, 7.20, 6.20, 6.00, 6.10, 7.20, 9.40, 16.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (347, '天津时时彩', '(前三)组选三', NULL, 15.30, 10.20, 7.29, 5.46, 4.25, 3.40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (348, '天津时时彩', '(中三)组选三', NULL, 15.30, 10.20, 7.29, 5.46, 4.25, 3.40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (349, '天津时时彩', '(后三)组选三', NULL, 15.30, 10.20, 7.29, 5.46, 4.25, 3.40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (350, '天津时时彩', '(前三)组选六', NULL, 38.50, 15.40, 7.70, 4.40, 2.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (351, '天津时时彩', '(中三)组选六', NULL, 38.50, 15.40, 7.70, 4.40, 2.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (352, '天津时时彩', '(后三)组选六', NULL, 38.50, 15.40, 7.70, 4.40, 2.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (353, '天津时时彩', '两面', 'part1', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL);
INSERT INTO `odds_lottery_normal` VALUES (354, '天津时时彩', '两面', 'part2', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL);
INSERT INTO `odds_lottery_normal` VALUES (355, '天津时时彩', '万仟定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (356, '天津时时彩', '万仟定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (357, '天津时时彩', '万佰定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (358, '天津时时彩', '万佰定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (359, '天津时时彩', '万拾定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (360, '天津时时彩', '万拾定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (361, '天津时时彩', '万个定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (362, '天津时时彩', '万个定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (363, '天津时时彩', '仟佰定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (364, '天津时时彩', '仟佰定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (365, '天津时时彩', '仟拾定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (366, '天津时时彩', '仟拾定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (367, '天津时时彩', '仟个定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (368, '天津时时彩', '仟个定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (369, '天津时时彩', '佰拾定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (370, '天津时时彩', '佰拾定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (371, '天津时时彩', '佰个定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (372, '天津时时彩', '佰个定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (373, '天津时时彩', '拾个定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (374, '天津时时彩', '拾个定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (375, '天津时时彩', '总和龙虎和', NULL, 1.97, 1.97, 1.97, 1.97, 1.97, 1.97, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (376, '天津时时彩', '豹子顺子(前三)', NULL, 70.00, 13.00, 2.80, 2.10, 2.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (377, '天津时时彩', '豹子顺子(中三)', NULL, 70.00, 13.00, 2.80, 2.10, 2.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (378, '天津时时彩', '豹子顺子(后三)', NULL, 70.00, 13.00, 2.80, 2.10, 2.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (380, '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (381, '江西时时彩', '全五-多重彩派', NULL, 2.05, 2.05, 2.05, 2.05, 2.05, 2.05, 2.05, 2.05, 2.05, 2.05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (382, '江西时时彩', '(前三)一字组合', NULL, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (383, '江西时时彩', '(中三)一字组合', NULL, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (384, '江西时时彩', '(后三)一字组合', NULL, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, 3.37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (385, '江西时时彩', '(前三)和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (386, '江西时时彩', '(中三)和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (387, '江西时时彩', '(后三)和尾数', NULL, 9.00, 9.00, 8.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (388, '江西时时彩', '万仟和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (389, '江西时时彩', '万佰和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (390, '江西时时彩', '万拾和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (391, '江西时时彩', '万个和尾数', NULL, 9.00, 8.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (392, '江西时时彩', '仟佰和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (393, '江西时时彩', '仟拾和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (394, '江西时时彩', '仟个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 8.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (395, '江西时时彩', '佰拾和尾数', NULL, 8.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 8.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (396, '江西时时彩', '佰个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (397, '江西时时彩', '拾个和尾数', NULL, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (398, '江西时时彩', '(前三)和数', NULL, 720.00, 240.00, 136.00, 82.00, 54.50, 39.00, 31.00, 24.30, 19.30, 15.80, 13.90, 12.80, 12.30, 12.00, 12.00, 12.30, 12.80, 13.90, 15.80, 19.30, 24.30, 31.00, 39.00, 54.50, 85.00, 136.00, 240.00, 720.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (399, '江西时时彩', '(中三)和数', NULL, 720.00, 240.00, 136.00, 82.00, 54.50, 39.00, 31.00, 24.30, 19.30, 15.80, 13.90, 12.80, 12.30, 12.00, 12.00, 12.30, 12.80, 13.90, 15.80, 19.30, 24.30, 31.00, 39.00, 54.50, 85.00, 136.00, 240.00, 720.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (400, '江西时时彩', '(后三)和数', NULL, 720.00, 240.00, 136.00, 82.00, 54.50, 39.00, 31.00, 24.30, 19.30, 15.80, 13.90, 12.80, 12.30, 12.00, 12.00, 12.30, 12.80, 13.90, 15.80, 19.30, 24.30, 31.00, 39.00, 54.50, 85.00, 136.00, 240.00, 720.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (401, '江西时时彩', '万仟和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (402, '江西时时彩', '万佰和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (403, '江西时时彩', '万拾和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (404, '江西时时彩', '万个和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (405, '江西时时彩', '仟佰和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (406, '江西时时彩', '仟拾和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (407, '江西时时彩', '仟个和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (408, '江西时时彩', '佰拾和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (409, '江西时时彩', '佰个和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 10.88, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (410, '江西时时彩', '拾个和数', NULL, 87.00, 43.50, 29.00, 21.75, 17.40, 14.50, 12.43, 12.00, 9.67, 8.70, 9.67, 10.88, 12.43, 14.50, 17.40, 21.75, 29.00, 43.50, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (411, '江西时时彩', '万定位', NULL, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (412, '江西时时彩', '仟定位', NULL, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (413, '江西时时彩', '佰定位', NULL, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (414, '江西时时彩', '拾定位', NULL, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (415, '江西时时彩', '个定位', NULL, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, 9.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (416, '江西时时彩', '(前三)二字组合', NULL, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 31.50, 16.40, 31.50);
INSERT INTO `odds_lottery_normal` VALUES (417, '江西时时彩', '(中三)二字组合', NULL, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 31.50, 16.40, 31.50);
INSERT INTO `odds_lottery_normal` VALUES (418, '江西时时彩', '(后三)二字组合', NULL, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 16.40, 31.50, 16.40, 16.40, 31.50, 16.40, 31.50);
INSERT INTO `odds_lottery_normal` VALUES (419, '江西时时彩', '(前三)跨度', NULL, 86.00, 16.70, 9.40, 7.20, 6.20, 6.00, 6.10, 7.20, 9.40, 16.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (420, '江西时时彩', '(中三)跨度', NULL, 86.00, 16.70, 9.40, 7.20, 6.20, 6.00, 6.10, 7.20, 9.40, 16.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (421, '江西时时彩', '(后三)跨度', NULL, 86.00, 16.70, 9.40, 7.20, 6.20, 6.00, 6.10, 7.20, 9.40, 16.70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (422, '江西时时彩', '(前三)组选三', NULL, 15.30, 10.20, 7.29, 5.46, 4.25, 3.40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (423, '江西时时彩', '(中三)组选三', NULL, 15.30, 10.20, 7.29, 5.46, 4.25, 3.40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (424, '江西时时彩', '(后三)组选三', NULL, 15.30, 10.20, 7.29, 5.46, 4.25, 3.40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (425, '江西时时彩', '(前三)组选六', NULL, 38.50, 15.40, 7.70, 4.40, 2.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (426, '江西时时彩', '(中三)组选六', NULL, 38.50, 15.40, 7.70, 4.40, 2.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (427, '江西时时彩', '(后三)组选六', NULL, 38.50, 15.40, 7.70, 4.40, 2.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (428, '江西时时彩', '两面', 'part1', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL);
INSERT INTO `odds_lottery_normal` VALUES (429, '江西时时彩', '两面', 'part2', 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.98, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, 1.96, NULL);
INSERT INTO `odds_lottery_normal` VALUES (430, '江西时时彩', '万仟定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (431, '江西时时彩', '万仟定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (432, '江西时时彩', '万佰定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (433, '江西时时彩', '万佰定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (434, '江西时时彩', '万拾定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (435, '江西时时彩', '万拾定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (436, '江西时时彩', '万个定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (437, '江西时时彩', '万个定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (438, '江西时时彩', '仟佰定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (439, '江西时时彩', '仟佰定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (440, '江西时时彩', '仟拾定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (441, '江西时时彩', '仟拾定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (442, '江西时时彩', '仟个定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (443, '江西时时彩', '仟个定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (444, '江西时时彩', '佰拾定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (445, '江西时时彩', '佰拾定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (446, '江西时时彩', '佰个定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (447, '江西时时彩', '佰个定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (448, '江西时时彩', '拾个定位', 'part1', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (449, '江西时时彩', '拾个定位', 'part2', 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, 88.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (551, '江西时时彩', '牛牛', NULL, 2.30, 11.00, 11.00, 11.00, 11.00, 11.00, 11.00, 11.00, 11.00, 11.00, 11.00, 2.50, 2.50, 2.50, 2.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (552, '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (553, '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (554, '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (555, '----------------', '----------------', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (293, '重庆时时彩', '总和龙虎和', NULL, 1.98, 1.98, 1.98, 1.98, 1.98, 1.98, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (294, '重庆时时彩', '豹子顺子(前三)', NULL, 70.00, 13.00, 2.80, 2.10, 2.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (295, '重庆时时彩', '豹子顺子(中三)', NULL, 70.00, 13.00, 2.80, 2.10, 2.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (296, '重庆时时彩', '豹子顺子(后三)', NULL, 70.00, 13.00, 2.80, 2.10, 2.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (450, '江西时时彩', '总和龙虎和', NULL, 1.97, 1.97, 1.97, 1.97, 1.97, 1.97, 9.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (451, '江西时时彩', '豹子顺子(前三)', NULL, 70.00, 13.00, 2.80, 2.00, 2.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (452, '江西时时彩', '豹子顺子(中三)', NULL, 70.00, 13.00, 2.80, 2.00, 2.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (453, '江西时时彩', '豹子顺子(后三)', NULL, 70.00, 13.00, 2.80, 2.10, 2.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `odds_lottery_normal` VALUES (379, '天津时时彩', '牛牛', NULL, 2.30, 11.00, 11.00, 11.00, 11.00, 11.00, 11.00, 11.00, 11.00, 11.00, 11.00, 2.50, 2.50, 2.50, 2.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for order_lottery
-- ----------------------------
DROP TABLE IF EXISTS `order_lottery`;
CREATE TABLE `order_lottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(100) NOT NULL COMMENT '單號',
  `user_id` bigint(20) NOT NULL COMMENT '會員ID',
  `Gtype` varchar(255) NOT NULL COMMENT '彩票 類型縮寫，如 D3,P3',
  `lottery_number` varchar(255) NOT NULL COMMENT '开奖期数',
  `rtype_str` varchar(255) NOT NULL COMMENT '彩票 类型，如 一字(组合)，一字(口XX)等',
  `rtype` varchar(255) NOT NULL COMMENT '彩票 类型缩写，如W1, D1M等',
  `bet_info` varchar(5000) NOT NULL COMMENT '下单详细情况',
  `bet_rate` varchar(100) DEFAULT NULL COMMENT '下注賠率',
  `bet_money` decimal(11,2) NOT NULL COMMENT '下注金額',
  `win` decimal(10,2) NOT NULL COMMENT '最高可赢金额',
  `bet_time` datetime NOT NULL COMMENT '下注時間',
  `status` varchar(20) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:已结算 2:重新结算 3:已作废',
  PRIMARY KEY (`id`),
  KEY `gtype` (`Gtype`),
  KEY `bet_time` (`bet_time`),
  KEY `user_id` (`user_id`),
  KEY `order_num` (`order_num`),
  KEY `lottery_number` (`lottery_number`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=288543 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for order_lottery_sub
-- ----------------------------
DROP TABLE IF EXISTS `order_lottery_sub`;
CREATE TABLE `order_lottery_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(100) NOT NULL COMMENT '單號',
  `order_sub_num` varchar(100) NOT NULL COMMENT '子订单号',
  `quick_type` varchar(100) DEFAULT NULL COMMENT '快速下注订单类型，如第一球，第二球',
  `number` varchar(2000) NOT NULL COMMENT '号码，如1,2,3,单,双,大,小',
  `bet_rate` varchar(100) NOT NULL COMMENT '下注賠率',
  `bet_money` decimal(11,2) NOT NULL COMMENT '下注金額',
  `win` decimal(10,2) NOT NULL COMMENT '可赢金额',
  `fs` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '反水金额',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '下单后账号还有多少钱',
  `status` varchar(10) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:已结算 2:重新结算 3:已作废',
  `is_win` varchar(20) DEFAULT NULL COMMENT '0:未中奖 1:已中奖 2:平局 3:赢一半',
  PRIMARY KEY (`id`),
  KEY `order_num` (`order_num`),
  KEY `order_sub_num` (`order_sub_num`,`status`,`is_win`)
) ENGINE=MyISAM AUTO_INCREMENT=459269 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for other_match
-- ----------------------------
DROP TABLE IF EXISTS `other_match`;
CREATE TABLE `other_match` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Match_ID` varchar(50) NOT NULL,
  `Match_Date` varchar(20) DEFAULT NULL,
  `Match_Time` varchar(20) DEFAULT NULL,
  `Match_Name` varchar(50) DEFAULT NULL,
  `Match_Master` varchar(50) DEFAULT NULL,
  `Match_Guest` varchar(50) DEFAULT NULL,
  `Match_IsLose` varchar(4) DEFAULT NULL,
  `Match_State` varchar(7) DEFAULT NULL,
  `Match_Type` tinyint(3) unsigned DEFAULT NULL,
  `Match_Ho` double DEFAULT NULL,
  `Match_Ao` double DEFAULT NULL,
  `Match_RGG` varchar(15) DEFAULT NULL,
  `Match_BzM` double DEFAULT NULL,
  `Match_BzG` double DEFAULT NULL,
  `Match_BzH` double DEFAULT NULL,
  `Match_DxGG` varchar(15) DEFAULT NULL,
  `Match_DxDpl` double DEFAULT NULL,
  `Match_DxXpl` double DEFAULT NULL,
  `Match_DsDpl` double DEFAULT NULL,
  `Match_DsSpl` double DEFAULT NULL,
  `Match_OverScore` varchar(10) DEFAULT NULL,
  `Match_JS` tinyint(3) unsigned DEFAULT '0',
  `Match_Allowds` tinyint(3) unsigned DEFAULT '0',
  `Match_AddDate` datetime DEFAULT NULL,
  `Match_CoverDate` datetime DEFAULT NULL,
  `Match_IsShowds` tinyint(3) unsigned DEFAULT '1',
  `Match_MasterID` varchar(15) DEFAULT NULL,
  `Match_GuestID` varchar(15) DEFAULT NULL,
  `Match_StopUpdateds` tinyint(3) unsigned DEFAULT '0',
  `Match_TypePlay` varchar(5) DEFAULT NULL,
  `Match_bd20` float DEFAULT NULL,
  `Match_bd21` float DEFAULT NULL,
  `Match_bd30` float DEFAULT NULL,
  `Match_bd31` float DEFAULT NULL,
  `Match_bd32` float DEFAULT NULL,
  `match_1score` varchar(15) DEFAULT NULL,
  `match_2score` varchar(15) DEFAULT NULL,
  `match_3score` varchar(15) DEFAULT NULL,
  `match_4score` varchar(15) DEFAULT NULL,
  `match_5score` varchar(15) DEFAULT NULL,
  `match_PScore` varchar(15) DEFAULT NULL,
  `Match_Scene` tinyint(3) unsigned DEFAULT '0',
  `Match_MatchTime` varchar(30) DEFAULT NULL,
  `MB_Inball` varchar(5) DEFAULT NULL,
  `TG_Inball` varchar(5) DEFAULT NULL,
  `MB_Inball_HR` varchar(5) DEFAULT NULL,
  `TG_Inball_HR` varchar(5) DEFAULT NULL,
  `scorecheck` smallint(11) DEFAULT NULL,
  `match_showtype` varchar(1) NOT NULL DEFAULT 'H',
  `Match_LstTime` datetime DEFAULT NULL,
  `iPage` int(11) DEFAULT NULL,
  `iSn` int(11) DEFAULT NULL,
  `score_time` datetime DEFAULT NULL,
  `remark` varchar(100) DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `Match_ID` (`Match_ID`),
  KEY `Match_Type` (`Match_Type`),
  KEY `Match_Date` (`Match_Date`),
  KEY `Match_CoverDate` (`Match_CoverDate`),
  KEY `Match_Bd21` (`Match_bd21`),
  KEY `Match_Name` (`Match_Name`),
  KEY `Match_StopUpdateds` (`Match_StopUpdateds`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pay_error_log
-- ----------------------------
DROP TABLE IF EXISTS `pay_error_log`;
CREATE TABLE `pay_error_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sign_info` varchar(5000) NOT NULL COMMENT '签名信息',
  `update_time` datetime NOT NULL,
  `pay_type` varchar(100) NOT NULL COMMENT '支付类型，比如智付2.0 ， 环讯等',
  `error_type` varchar(100) NOT NULL DEFAULT '签名不一致',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pay_info
-- ----------------------------
DROP TABLE IF EXISTS `pay_info`;
CREATE TABLE `pay_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nid` varchar(25) NOT NULL COMMENT '第三方文件ID',
  `pay_name` varchar(20) NOT NULL COMMENT '显示的名称',
  `pay_domain` varchar(200) NOT NULL,
  `discounts` decimal(8,4) NOT NULL DEFAULT '0.0000' COMMENT '优惠 按%比计算',
  `pay_start` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 为启用',
  `group_id` int(11) NOT NULL DEFAULT '0' COMMENT '按分组显示 如果未找到就显示',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0 为不显示   1为pc  2 为手机',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '排列顺序',
  `pay_limits` decimal(11,2) unsigned NOT NULL DEFAULT '99999999.00' COMMENT '支付限额',
  `pay_height` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '已支付金额',
  `pay_Lowest` decimal(11,2) unsigned NOT NULL DEFAULT '10.00' COMMENT '最低限额',
  `pay_money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '已支付金额',
  `pay_data` text NOT NULL COMMENT '支付内容',
  `addtime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `nid` (`nid`),
  KEY `show` (`show`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for pay_order
-- ----------------------------
DROP TABLE IF EXISTS `pay_order`;
CREATE TABLE `pay_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(30) NOT NULL DEFAULT '' COMMENT '订单号',
  `pay_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '第三方支付ID',
  `uid` bigint(20) NOT NULL COMMENT '会员id ',
  `money` decimal(11,2) unsigned NOT NULL COMMENT '订单金额',
  `cat` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否查看单',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `fs` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '赠送金额',
  `addtime` bigint(20) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `ordernumidx` (`order_num`) USING BTREE,
  KEY `uid_idx` (`uid`) USING BTREE,
  KEY `cat_status` (`cat`,`status`,`addtime`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for pay_set
-- ----------------------------
DROP TABLE IF EXISTS `pay_set`;
CREATE TABLE `pay_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_domain` varchar(100) DEFAULT NULL COMMENT '支付域名',
  `pay_id` varchar(50) DEFAULT NULL COMMENT '商家号',
  `pay_key` text COMMENT '密匙',
  `pay_type` int(11) DEFAULT NULL COMMENT '支付类型',
  `f_url` varchar(100) DEFAULT NULL COMMENT '支付成功后跳转地址',
  `money_limits` double DEFAULT '99999999' COMMENT '支付限额',
  `money_Already` double DEFAULT NULL COMMENT '已有金额',
  `order_id` int(11) DEFAULT NULL COMMENT '排序ID',
  `b_start` int(11) DEFAULT NULL COMMENT '是否启用',
  `money_Lowest` double DEFAULT '0' COMMENT '低最冲值',
  `pay_name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for session
-- ----------------------------
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` char(40) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for six_lottery_log
-- ----------------------------
DROP TABLE IF EXISTS `six_lottery_log`;
CREATE TABLE `six_lottery_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sub` int(11) NOT NULL COMMENT '外键',
  `log_type` varchar(100) NOT NULL COMMENT '记录类型',
  `log_info` varchar(200) NOT NULL COMMENT '记录信息',
  `create_time` datetime NOT NULL COMMENT '记录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for six_lottery_odds
-- ----------------------------
DROP TABLE IF EXISTS `six_lottery_odds`;
CREATE TABLE `six_lottery_odds` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `sub_type` varchar(255) DEFAULT NULL,
  `ball_type` varchar(255) DEFAULT NULL,
  `h1` decimal(8,2) DEFAULT NULL,
  `h2` decimal(8,2) DEFAULT NULL,
  `h3` decimal(8,2) DEFAULT NULL,
  `h4` decimal(8,2) DEFAULT NULL,
  `h5` decimal(8,2) DEFAULT NULL,
  `h6` decimal(8,2) DEFAULT NULL,
  `h7` decimal(8,2) DEFAULT NULL,
  `h8` decimal(8,2) DEFAULT NULL,
  `h9` decimal(8,2) DEFAULT NULL,
  `h10` decimal(8,2) DEFAULT NULL,
  `h11` decimal(8,2) DEFAULT NULL,
  `h12` decimal(8,2) DEFAULT NULL,
  `h13` decimal(8,2) DEFAULT NULL,
  `h14` decimal(8,2) DEFAULT NULL,
  `h15` decimal(8,2) DEFAULT NULL,
  `h16` decimal(8,2) DEFAULT NULL,
  `h17` decimal(8,2) DEFAULT NULL,
  `h18` decimal(8,2) DEFAULT NULL,
  `h19` decimal(8,2) DEFAULT NULL,
  `h20` decimal(8,2) DEFAULT NULL,
  `h21` decimal(8,2) DEFAULT NULL,
  `h22` decimal(8,2) DEFAULT NULL,
  `h23` decimal(8,2) DEFAULT NULL,
  `h24` decimal(8,2) DEFAULT NULL,
  `h25` decimal(8,2) DEFAULT NULL,
  `h26` decimal(8,2) DEFAULT NULL,
  `h27` decimal(8,2) DEFAULT NULL,
  `h28` decimal(8,2) DEFAULT NULL,
  `h29` decimal(8,2) DEFAULT NULL,
  `h30` decimal(8,2) DEFAULT NULL,
  `h31` decimal(8,2) DEFAULT NULL,
  `h32` decimal(8,2) DEFAULT NULL,
  `h33` decimal(8,2) DEFAULT NULL,
  `h34` decimal(8,2) DEFAULT NULL,
  `h35` decimal(8,2) DEFAULT NULL,
  `h36` decimal(8,2) DEFAULT NULL,
  `h37` decimal(8,2) DEFAULT NULL,
  `h38` decimal(8,2) DEFAULT NULL,
  `h39` decimal(8,2) DEFAULT NULL,
  `h40` decimal(8,2) DEFAULT NULL,
  `h41` decimal(8,2) DEFAULT NULL,
  `h42` decimal(8,2) DEFAULT NULL,
  `h43` decimal(8,2) DEFAULT NULL,
  `h44` decimal(8,2) DEFAULT NULL,
  `h45` decimal(8,2) DEFAULT NULL,
  `h46` decimal(8,2) DEFAULT NULL,
  `h47` decimal(8,2) DEFAULT NULL,
  `h48` decimal(8,2) DEFAULT NULL,
  `h49` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of six_lottery_odds
-- ----------------------------
BEGIN;
INSERT INTO `six_lottery_odds` VALUES (101, 'SP', NULL, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30, 48.30);
INSERT INTO `six_lottery_odds` VALUES (102, 'SP', 'other', 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 2.70, 2.85, 2.85, 3.75, 3.75, 3.75, 3.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (111, 'N1', NULL, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00);
INSERT INTO `six_lottery_odds` VALUES (112, 'N2', NULL, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00);
INSERT INTO `six_lottery_odds` VALUES (113, 'N3', NULL, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00);
INSERT INTO `six_lottery_odds` VALUES (114, 'N4', NULL, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00);
INSERT INTO `six_lottery_odds` VALUES (115, 'N5', NULL, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00);
INSERT INTO `six_lottery_odds` VALUES (116, 'N6', NULL, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00, 43.00);
INSERT INTO `six_lottery_odds` VALUES (117, 'N1', 'other', 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 2.70, 2.85, 2.85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (118, 'N2', 'other', 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 2.70, 2.85, 2.85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (119, 'N3', 'other', 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 2.70, 2.85, 2.85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (120, 'N4', 'other', 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 2.70, 2.85, 2.85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (121, 'N5', 'other', 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 2.70, 2.85, 2.85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (122, 'N6', 'other', 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 1.95, 2.70, 2.85, 2.85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (103, 'NA', NULL, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16, 7.16);
INSERT INTO `six_lottery_odds` VALUES (104, 'NA', 'other', 1.95, 1.95, 1.95, 1.95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (201, 'SPA', NULL, 11.50, 11.50, 11.50, 11.50, 11.50, 11.50, 11.50, 9.50, 11.50, 11.50, 11.50, 11.50, 5.00, 4.50, 4.50, 4.50, 4.50, 11.50, 9.20, 9.20, 9.20, 9.20, 9.20, 9.20, 9.20, 9.20, 9.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (202, 'C7', NULL, 1.92, 1.92, 1.92, 1.92, 1.92, 1.92, 1.92, 1.62, 1.92, 1.92, 1.92, 1.92, 2.75, 3.00, 3.00, 25.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (222, 'NAP1', NULL, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 2.36, 2.41, 2.41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (203, 'SPB', NULL, 2.08, 2.08, 2.08, 2.08, 2.08, 2.08, 2.08, 1.80, 2.08, 2.08, 2.08, 2.08, 2.12, 1.85, 1.85, 1.85, 1.85, 1.85, 1.85, 1.85, 1.85, 1.85, 15.00, 3.07, 1.96, 5.40, 1.98, 1.84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (221, 'HB', NULL, 5.50, 5.00, 6.00, 4.50, 5.50, 6.50, 5.50, 6.50, 5.50, 5.50, 4.50, 6.50, 14.80, 11.10, 8.90, 8.90, 11.10, 11.10, 11.10, 14.80, 8.90, 11.10, 14.80, 11.10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (223, 'NAP2', NULL, 1.76, 1.76, 1.76, 1.76, 1.76, 1.70, 1.76, 1.76, 1.76, 1.76, 2.36, 2.41, 2.41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (224, 'NAP3', NULL, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 2.36, 2.41, 2.41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (225, 'NAP4', NULL, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 2.36, 2.41, 2.41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (226, 'NAP5', NULL, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 2.36, 2.41, 2.41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (227, 'NAP6', NULL, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 1.76, 2.36, 2.41, 2.41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (228, 'NX', NULL, 11.61, 5.81, 3.87, 2.90, 2.32, 1.94, 1.66, 1.45, 1.29, 1.16, 1.06, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (230, 'LX2', NULL, 4.20, 4.20, 4.20, 4.20, 4.20, 4.20, 4.20, 3.55, 4.20, 4.20, 4.20, 4.20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (231, 'LX3', NULL, 11.00, 11.00, 11.00, 11.00, 11.00, 11.00, 11.00, 9.00, 11.00, 11.00, 11.00, 11.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (232, 'LX4', NULL, 32.00, 32.00, 32.00, 32.00, 32.00, 32.00, 32.00, 27.00, 32.00, 32.00, 32.00, 32.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (233, 'LX5', NULL, 90.00, 90.00, 90.00, 90.00, 90.00, 90.00, 90.00, 80.00, 90.00, 90.00, 90.00, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (234, 'LF2', NULL, 3.20, 3.10, 3.10, 3.10, 3.10, 3.10, 3.10, 3.10, 3.10, 3.10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (235, 'LF3', NULL, 7.00, 7.00, 7.00, 7.00, 7.00, 7.00, 7.00, 7.00, 7.00, 7.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (236, 'LF4', NULL, 17.00, 16.00, 16.00, 16.00, 16.00, 16.00, 16.00, 16.00, 16.00, 16.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (237, 'LF5', NULL, 51.00, 42.00, 42.00, 42.00, 42.00, 42.00, 42.00, 42.00, 42.00, 42.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (238, 'NI', NULL, 2.17, 2.63, 3.31, 4.15, 4.85, 5.85, 6.80, 8.51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (239, 'CH', NULL, 10000.00, 650.00, 30.00, 100.00, 61.00, 35.00, 35.00, 115.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `six_lottery_odds` VALUES (240, 'SP', 'a_side', 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80, 43.80);
INSERT INTO `six_lottery_odds` VALUES (241, 'SP', 'fs', 10.00, 0.10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for six_lottery_order
-- ----------------------------
DROP TABLE IF EXISTS `six_lottery_order`;
CREATE TABLE `six_lottery_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(100) NOT NULL COMMENT '單號',
  `user_id` bigint(20) NOT NULL COMMENT '會員ID',
  `lottery_number` varchar(255) NOT NULL COMMENT '开奖期数',
  `rtype_str` varchar(255) NOT NULL COMMENT '彩票 类型，如 一字(组合)，一字(口XX)等',
  `rtype` varchar(255) NOT NULL COMMENT '彩票 类型缩写，如W1, D1M等',
  `bet_info` varchar(5000) NOT NULL COMMENT '下单详细情况',
  `bet_money_total` decimal(11,2) NOT NULL COMMENT '下注金額',
  `win_total` decimal(10,2) NOT NULL COMMENT '最高可赢金额',
  `bet_time` datetime NOT NULL COMMENT '下注時間',
  `status` varchar(20) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:已结算 2:重新结算 3:已作废',
  PRIMARY KEY (`id`),
  KEY `bet_time` (`bet_time`),
  KEY `user_id` (`user_id`),
  KEY `order_num` (`order_num`),
  KEY `lottery_number` (`lottery_number`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=22349 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for six_lottery_order_sub
-- ----------------------------
DROP TABLE IF EXISTS `six_lottery_order_sub`;
CREATE TABLE `six_lottery_order_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(100) NOT NULL COMMENT '單號',
  `order_sub_num` varchar(100) NOT NULL COMMENT '子订单号',
  `number` varchar(2000) NOT NULL COMMENT '号码，如1,2,3,单,双,大,小',
  `bet_rate` varchar(100) NOT NULL COMMENT '下注賠率',
  `bet_money` decimal(11,2) NOT NULL COMMENT '下注金額',
  `win` decimal(10,2) NOT NULL COMMENT '可赢金额',
  `fs` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '反水金额',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '下单后账号还有多少钱',
  `status` varchar(10) NOT NULL DEFAULT '0' COMMENT '0:未结算 1:已结算 2:重新结算 3:已作废',
  `is_win` varchar(20) DEFAULT NULL COMMENT '0:未中奖 1:已中奖 2:平局',
  PRIMARY KEY (`id`),
  KEY `order_num` (`order_num`),
  KEY `order_sub_num` (`order_sub_num`,`status`,`is_win`)
) ENGINE=MyISAM AUTO_INCREMENT=86221 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for six_lottery_schedule
-- ----------------------------
DROP TABLE IF EXISTS `six_lottery_schedule`;
CREATE TABLE `six_lottery_schedule` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `qishu` varchar(255) DEFAULT NULL,
  `kaipan_time` datetime DEFAULT NULL,
  `fenpan_time` datetime DEFAULT NULL,
  `kaijiang_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `prev_text` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of six_lottery_schedule
-- ----------------------------
BEGIN;
INSERT INTO `six_lottery_schedule` VALUES (1, '2015060', '2015-05-21 21:50:00', '2015-05-23 21:30:00', '2015-05-23 21:33:00', '2015-05-19 19:21:44', '修改时间：2015-05-19 19:21:44。\n修改前内容：\n  开奖期号2015055,\n  开盘时间2015-05-10 21:50:00,\n  封盘时间2015-05-12 21:30:00,\n  开奖时间2015-05-12 21:33:00。\n修改后内容：\n  开盘期号2015060,\n  开盘时间2015-05-21 21:50:00,\n  封盘时间2015-05-23 21:30:00,\n  开奖时间2015-05-23 21:33:00。\n\n修改时间：2015-05-08 21:25:56。\n修改前内容：\n  开奖期号2015051,\n  开盘时间2015-04-30 21:50:00,\n  封盘时间2015-05-02 21:30:00,\n  开奖时间2015-05-02 21:33:00。\n修改后内容：\n  开盘期号2015055,\n  开盘时间2015-05-10 21:50:00,\n  封盘时间2015-05-12 21:30:00,\n  开奖时间2015-05-12 21:33:00。\n\n修改时间：2015-05-01 00:14:02。\n修改前内容：\n  开奖期号2015047,\n  开盘时间2015-04-30 21:50:00,\n  封盘时间2015-05-02 21:30:00,\n  开奖时间2015-05-02 21:33:00。\n修改后内容：\n  开盘期号2015051,\n  开盘时间2015-04-30 21:50:00,\n  封盘时间2015-05-02 21:30:00,\n  开奖时间2015-05-02 21:33:00。\n\n修改时间：2015-05-01 00:13:54。\n修改前内容：\n  开奖期号2015047,\n  开盘时间2015-04-21 21:50:00,\n  封盘时间2015-04-23 21:30:00,\n  开奖时间2015-04-23 21:33:00。\n修改后内容：\n  开盘期号2015047,\n  开盘时间2015-04-30 21:50:00,\n  封盘时间2015-05-02 21:30:00,\n  开奖时间2015-05-02 21:33:00。\n\n修改时间：2015-04-21 22:30:39。\n修改前内容：\n  开奖期号2015047,\n  开盘时间2015-04-21 21:50:00,\n  封盘时间2015-04-23 21:28:00,\n  开奖时间2015-04-23 21:33:00。\n修改后内容：\n  开盘期号2015047,\n  开盘时间2015-04-21 21:50:00,\n  封盘时间2015-04-23 21:30:00,\n  开奖时间2015-04-23 21:33:00。\n\n修改时间：2015-04-21 22:29:20。\n修改前内容：\n  开奖期号2015047,\n  开盘时间2015-04-21 21:50:00,\n  封盘时间2015-04-23 21:28:00,\n  开奖时间2015-04-23 21:33:00。\n修改后内容：\n  开盘期号2015047,\n  开盘时间2015-04-21 21:50:00,\n  封盘时间2015-04-23 21:28:00,\n  开奖时间2015-04-23 21:33:00。\n\n修改时间：2015-04-16 23:58:37。\n修改前内容：\n  开奖期号2015043,\n  开盘时间2015-04-11 21:50:00,\n  封盘时间2015-04-14 21:28:00,\n  开奖时间2015-04-14 21:33:00。\n修改后内容：\n  开盘期号2015047,\n  开盘时间2015-04-21 21:50:00,\n  封盘时间2015-04-23 21:28:00,\n  开奖时间2015-04-23 21:33:00。\n\n修改时间：2015-04-09 22:44:48。\n修改前内容：\n  开奖期号2015039,\n  开盘时间2015-04-02 21:50:00,\n  封盘时间2015-04-04 21:28:00,\n  开奖时间2015-04-04 21:33:00。\n修改后内容：\n  开盘期号2015043,\n  开盘时间2015-04-11 21:50:00,\n  封盘时间2015-04-14 21:28:00,\n  开奖时间2015-04-14 21:33:00。\n\n修改时间：2015-03-27 00:06:05。\n修改前内容：\n  开奖期号2015035,\n  开盘时间2015-03-24 21:50:00,\n  封盘时间2015-03-26 21:28:00,\n  开奖时间2015-03-26 21:33:00。\n修改后内容：\n  开盘期号2015039,\n  开盘时间2015-04-02 21:50:00,\n  封盘时间2015-04-04 21:28:00,\n  开奖时间2015-04-04 21:33:00。\n\n修改时间：2015-03-21 01:37:12。\n修改前内容：\n  开奖期号2015031,\n  开盘时间2015-03-14 21:50:00,\n  封盘时间2015-03-17 21:28:00,\n  开奖时间2015-03-17 21:33:00。\n修改后内容：\n  开盘期号2015035,\n  开盘时间2015-03-24 21:50:00,\n  封盘时间2015-03-26 21:28:00,\n  开奖时间2015-03-26 21:33:00。\n\n修改时间：2015-03-08 12:57:02。\n修改前内容：\n  开奖期号2015027,\n  开盘时间2015-03-05 21:50:00,\n  封盘时间2015-03-07 21:28:00,\n  开奖时间2015-03-07 21:33:00。\n修改后内容：\n  开盘期号2015031,\n  开盘时间2015-03-14 21:50:00,\n  封盘时间2015-03-17 21:28:00,\n  开奖时间2015-03-17 21:33:00。\n\n修改时间：2015-03-03 22:10:46。\n修改前内容：\n  开奖期号2015023,\n  开盘时间2015-02-24 21:50:00,\n  封盘时间2015-02-26 21:28:00,\n  开奖时间2015-02-26 21:33:00。\n修改后内容：\n  开盘期号2015027,\n  开盘时间2015-03-05 21:50:00,\n  封盘时间2015-03-07 21:28:00,\n  开奖时间2015-03-07 21:33:00。\n\n修改时间：2015-02-22 22:08:18。\n修改前内容：\n  开奖期号2015021,\n  开盘时间2015-02-19 21:50:00,\n  封盘时间2015-02-22 21:28:00,\n  开奖时间2015-02-22 21:33:00。\n修改后内容：\n  开盘期号2015023,\n  开盘时间2015-02-24 21:50:00,\n  封盘时间2015-02-26 21:28:00,\n  开奖时间2015-02-26 21:33:00。\n\n修改时间：2015-02-17 22:48:21。\n修改前内容：\n  开奖期号2015021,\n  开盘时间2015-02-17 21:50:00,\n  封盘时间2015-02-22 21:28:00,\n  开奖时间2015-02-22 21:33:00。\n修改后内容：\n  开盘期号2015021,\n  开盘时间2015-02-19 21:50:00,\n  封盘时间2015-02-22 21:28:00,\n  开奖时间2015-02-22 21:33:00。\n\n修改时间：2015-02-17 22:37:07。\n修改前内容：\n  开奖期号2015020,\n  开盘时间2015-02-14 21:50:00,\n  封盘时间2015-02-17 21:28:00,\n  开奖时间2015-02-17 21:33:00。\n修改后内容：\n  开盘期号2015021,\n  开盘时间2015-02-17 21:50:00,\n  封盘时间2015-02-22 21:28:00,\n  开奖时间2015-02-22 21:33:00。\n\n修改时间：2015-02-08 22:04:20。\n修改前内容：\n  开奖期号2015016,\n  开盘时间2015-02-05 21:50:00,\n  封盘时间2015-02-08 21:28:00,\n  开奖时间2015-02-08 21:33:00。\n修改后内容：\n  开盘期号2015020,\n  开盘时间2015-02-14 21:50:00,\n  封盘时间2015-02-17 21:28:00,\n  开奖时间2015-02-17 21:33:00。\n\n修改时间：2015-02-08 18:47:41。\n修改前内容：\n  开奖期号2015016,\n  开盘时间2015-02-05 21:50:00,\n  封盘时间2015-02-08 21:28:00,\n  开奖时间2015-02-08 21:33:00。\n修改后内容：\n  开盘期号2015016,\n  开盘时间2015-02-05 21:50:00,\n  封盘时间2015-02-08 21:28:00,\n  开奖时间2015-02-08 21:33:00。\n\n修改时间：2015-02-08 18:47:17。\n修改前内容：\n  开奖期号2015016,\n  开盘时间2015-02-05 21:50:00,\n  封盘时间2015-02-08 21:28:00,\n  开奖时间2015-02-08 09:33:00。\n修改后内容：\n  开盘期号2015016,\n  开盘时间2015-02-05 21:50:00,\n  封盘时间2015-02-08 21:28:00,\n  开奖时间2015-02-08 21:33:00。\n\n修改时间：2015-02-08 18:46:37。\n修改前内容：\n  开奖期号2015016,\n  开盘时间2015-02-05 09:50:00,\n  封盘时间2015-02-08 09:28:00,\n  开奖时间2015-02-08 09:33:00。\n修改后内容：\n  开盘期号2015016,\n  开盘时间2015-02-05 21:50:00,\n  封盘时间2015-02-08 21:28:00,\n  开奖时间2015-02-08 09:33:00。\n\n');
INSERT INTO `six_lottery_schedule` VALUES (2, '2015059', '2015-05-19 21:50:00', '2015-05-21 21:30:00', '2015-05-21 21:33:00', '2015-05-19 19:21:17', '修改时间：2015-05-19 19:21:17。\n修改前内容：\n  开奖期号2015054,\n  开盘时间2015-05-07 21:50:00,\n  封盘时间2015-05-10 21:30:00,\n  开奖时间2015-05-10 21:33:00。\n修改后内容：\n  开盘期号2015059,\n  开盘时间2015-05-19 21:50:00,\n  封盘时间2015-05-21 21:30:00,\n  开奖时间2015-05-21 21:33:00。\n\n修改时间：2015-05-01 00:17:15。\n修改前内容：\n  开奖期号2015050,\n  开盘时间2015-04-28 21:50:00,\n  封盘时间2015-04-30 21:30:00,\n  开奖时间2015-04-30 21:33:00。\n修改后内容：\n  开盘期号2015054,\n  开盘时间2015-05-07 21:50:00,\n  封盘时间2015-05-10 21:30:00,\n  开奖时间2015-05-10 21:33:00。\n\n修改时间：2015-04-21 22:46:36。\n修改前内容：\n  开奖期号2015048,\n  开盘时间2015-04-23 21:50:00,\n  封盘时间2015-04-25 21:28:00,\n  开奖时间2015-04-25 21:33:00。\n修改后内容：\n  开盘期号2015050,\n  开盘时间2015-04-28 21:50:00,\n  封盘时间2015-04-30 21:30:00,\n  开奖时间2015-04-30 21:33:00。\n\n修改时间：2015-04-16 23:59:06。\n修改前内容：\n  开奖期号2015044,\n  开盘时间2015-04-14 21:50:00,\n  封盘时间2015-04-16 21:28:00,\n  开奖时间2015-04-16 21:33:00。\n修改后内容：\n  开盘期号2015048,\n  开盘时间2015-04-23 21:50:00,\n  封盘时间2015-04-25 21:28:00,\n  开奖时间2015-04-25 21:33:00。\n\n修改时间：2015-04-09 22:46:41。\n修改前内容：\n  开奖期号2015040,\n  开盘时间2015-04-04 21:50:00,\n  封盘时间2015-04-06 21:28:00,\n  开奖时间2015-04-06 21:33:00。\n修改后内容：\n  开盘期号2015044,\n  开盘时间2015-04-14 21:50:00,\n  封盘时间2015-04-16 21:28:00,\n  开奖时间2015-04-16 21:33:00。\n\n修改时间：2015-04-02 23:25:30。\n修改前内容：\n  开奖期号2015036,\n  开盘时间2015-03-26 21:50:00,\n  封盘时间2015-03-28 21:28:00,\n  开奖时间2015-03-28 21:33:00。\n修改后内容：\n  开盘期号2015040,\n  开盘时间2015-04-04 21:50:00,\n  封盘时间2015-04-06 21:28:00,\n  开奖时间2015-04-06 21:33:00。\n\n修改时间：2015-03-21 01:39:27。\n修改前内容：\n  开奖期号2015032,\n  开盘时间2015-03-17 21:50:00,\n  封盘时间2015-03-19 21:28:00,\n  开奖时间2015-03-19 21:33:00。\n修改后内容：\n  开盘期号2015036,\n  开盘时间2015-03-26 21:50:00,\n  封盘时间2015-03-28 21:28:00,\n  开奖时间2015-03-28 21:33:00。\n\n修改时间：2015-03-12 21:49:26。\n修改前内容：\n  开奖期号2015028,\n  开盘时间2015-03-07 21:50:00,\n  封盘时间2015-03-10 21:28:00,\n  开奖时间2015-03-10 21:33:00。\n修改后内容：\n  开盘期号2015032,\n  开盘时间2015-03-17 21:50:00,\n  封盘时间2015-03-19 21:28:00,\n  开奖时间2015-03-19 21:33:00。\n\n修改时间：2015-03-07 21:49:21。\n修改前内容：\n  开奖期号2015024,\n  开盘时间2015-02-26 21:50:00,\n  封盘时间2015-02-28 21:28:00,\n  开奖时间2015-02-28 21:33:00。\n修改后内容：\n  开盘期号2015028,\n  开盘时间2015-03-07 21:50:00,\n  封盘时间2015-03-10 21:28:00,\n  开奖时间2015-03-10 21:33:00。\n\n修改时间：2015-02-25 00:32:03。\n修改前内容：\n  开奖期号2015021,\n  开盘时间2015-02-20 12:50:00,\n  封盘时间2015-02-19 21:28:00,\n  开奖时间2015-02-19 21:33:00。\n修改后内容：\n  开盘期号2015024,\n  开盘时间2015-02-26 21:50:00,\n  封盘时间2015-02-28 21:28:00,\n  开奖时间2015-02-28 21:33:00。\n\n修改时间：2015-02-17 22:49:03。\n修改前内容：\n  开奖期号2015021,\n  开盘时间2015-02-18 12:50:00,\n  封盘时间2015-02-19 21:28:00,\n  开奖时间2015-02-19 21:33:00。\n修改后内容：\n  开盘期号2015021,\n  开盘时间2015-02-20 12:50:00,\n  封盘时间2015-02-19 21:28:00,\n  开奖时间2015-02-19 21:33:00。\n\n修改时间：2015-02-17 08:29:51。\n修改前内容：\n  开奖期号2015021,\n  开盘时间2015-02-17 21:50:00,\n  封盘时间2015-02-19 21:28:00,\n  开奖时间2015-02-19 21:33:00。\n修改后内容：\n  开盘期号2015021,\n  开盘时间2015-02-18 12:50:00,\n  封盘时间2015-02-19 21:28:00,\n  开奖时间2015-02-19 21:33:00。\n\n修改时间：2015-02-10 21:42:20。\n修改前内容：\n  开奖期号2015021,\n  开盘时间2015-02-14 21:50:00,\n  封盘时间2015-02-17 21:28:00,\n  开奖时间2015-02-17 21:33:00。\n修改后内容：\n  开盘期号2015021,\n  开盘时间2015-02-17 21:50:00,\n  封盘时间2015-02-19 21:28:00,\n  开奖时间2015-02-19 21:33:00。\n\n修改时间：2015-02-10 21:41:50。\n修改前内容：\n  开奖期号2015017,\n  开盘时间2015-02-08 21:50:00,\n  封盘时间2015-02-10 21:28:00,\n  开奖时间2015-02-10 21:33:00。\n修改后内容：\n  开盘期号2015021,\n  开盘时间2015-02-14 21:50:00,\n  封盘时间2015-02-17 21:28:00,\n  开奖时间2015-02-17 21:33:00。\n\n修改时间：2015-02-08 18:47:54。\n修改前内容：\n  开奖期号2015017,\n  开盘时间2015-02-08 09:50:00,\n  封盘时间2015-02-10 09:28:00,\n  开奖时间2015-02-10 21:33:00。\n修改后内容：\n  开盘期号2015017,\n  开盘时间2015-02-08 21:50:00,\n  封盘时间2015-02-10 21:28:00,\n  开奖时间2015-02-10 21:33:00。\n\n修改时间：2015-02-08 18:47:44。\n修改前内容：\n  开奖期号2015017,\n  开盘时间2015-02-08 09:50:00,\n  封盘时间2015-02-10 09:28:00,\n  开奖时间2015-02-10 21:33:00。\n修改后内容：\n  开盘期号2015017,\n  开盘时间2015-02-08 09:50:00,\n  封盘时间2015-02-10 09:28:00,\n  开奖时间2015-02-10 21:33:00。\n\n修改时间：2015-02-08 18:46:45。\n修改前内容：\n  开奖期号2015017,\n  开盘时间2015-02-08 09:50:00,\n  封盘时间2015-02-10 09:28:00,\n  开奖时间2015-02-10 09:33:00。\n修改后内容：\n  开盘期号2015017,\n  开盘时间2015-02-08 09:50:00,\n  封盘时间2015-02-10 09:28:00,\n  开奖时间2015-02-10 21:33:00。\n\n');
INSERT INTO `six_lottery_schedule` VALUES (3, '2015062', '2015-05-26 21:50:00', '2015-05-28 21:30:00', '2015-05-28 21:33:00', '2015-05-19 19:23:03', '修改时间：2015-05-19 19:23:03。\n修改前内容：\n  开奖期号2015057,\n  开盘时间2015-05-14 21:50:00,\n  封盘时间2015-05-17 21:30:00,\n  开奖时间2015-05-17 21:33:00。\n修改后内容：\n  开盘期号2015062,\n  开盘时间2015-05-26 21:50:00,\n  封盘时间2015-05-28 21:30:00,\n  开奖时间2015-05-28 21:33:00。\n\n修改时间：2015-05-08 21:26:45。\n修改前内容：\n  开奖期号2015053,\n  开盘时间2015-05-05 21:50:00,\n  封盘时间2015-05-07 21:30:00,\n  开奖时间2015-05-07 21:33:00。\n修改后内容：\n  开盘期号2015057,\n  开盘时间2015-05-14 21:50:00,\n  封盘时间2015-05-17 21:30:00,\n  开奖时间2015-05-17 21:33:00。\n\n修改时间：2015-05-01 00:16:35。\n修改前内容：\n  开奖期号2015049,\n  开盘时间2015-04-25 21:50:00,\n  封盘时间2015-04-28 21:30:00,\n  开奖时间2015-04-28 21:33:00。\n修改后内容：\n  开盘期号2015053,\n  开盘时间2015-05-05 21:50:00,\n  封盘时间2015-05-07 21:30:00,\n  开奖时间2015-05-07 21:33:00。\n\n修改时间：2015-04-21 22:38:21。\n修改前内容：\n  开奖期号2015049,\n  开盘时间2015-04-16 21:50:00,\n  封盘时间2015-04-18 21:28:00,\n  开奖时间2015-04-18 21:33:00。\n修改后内容：\n  开盘期号2015049,\n  开盘时间2015-04-25 21:50:00,\n  封盘时间2015-04-28 21:30:00,\n  开奖时间2015-04-28 21:33:00。\n\n修改时间：2015-04-21 22:28:55。\n修改前内容：\n  开奖期号2015045,\n  开盘时间2015-04-16 21:50:00,\n  封盘时间2015-04-18 21:28:00,\n  开奖时间2015-04-18 21:33:00。\n修改后内容：\n  开盘期号2015049,\n  开盘时间2015-04-16 21:50:00,\n  封盘时间2015-04-18 21:28:00,\n  开奖时间2015-04-18 21:33:00。\n\n修改时间：2015-04-09 22:47:14。\n修改前内容：\n  开奖期号2015041,\n  开盘时间2015-04-06 21:50:00,\n  封盘时间2015-04-09 21:28:00,\n  开奖时间2015-04-09 21:33:00。\n修改后内容：\n  开盘期号2015045,\n  开盘时间2015-04-16 21:50:00,\n  封盘时间2015-04-18 21:28:00,\n  开奖时间2015-04-18 21:33:00。\n\n修改时间：2015-04-02 23:26:34。\n修改前内容：\n  开奖期号2015037,\n  开盘时间2015-03-28 21:50:00,\n  封盘时间2015-03-31 21:28:00,\n  开奖时间2015-03-31 21:33:00。\n修改后内容：\n  开盘期号2015041,\n  开盘时间2015-04-06 21:50:00,\n  封盘时间2015-04-09 21:28:00,\n  开奖时间2015-04-09 21:33:00。\n\n修改时间：2015-03-27 00:00:48。\n修改前内容：\n  开奖期号2015033,\n  开盘时间2015-03-19 21:50:00,\n  封盘时间2015-03-22 21:28:00,\n  开奖时间2015-03-22 21:33:00。\n修改后内容：\n  开盘期号2015037,\n  开盘时间2015-03-28 21:50:00,\n  封盘时间2015-03-31 21:28:00,\n  开奖时间2015-03-31 21:33:00。\n\n修改时间：2015-03-12 21:55:06。\n修改前内容：\n  开奖期号2015029,\n  开盘时间2015-03-10 21:50:00,\n  封盘时间2015-03-12 21:28:00,\n  开奖时间2015-03-12 21:33:00。\n修改后内容：\n  开盘期号2015033,\n  开盘时间2015-03-19 21:50:00,\n  封盘时间2015-03-22 21:28:00,\n  开奖时间2015-03-22 21:33:00。\n\n修改时间：2015-03-07 21:49:56。\n修改前内容：\n  开奖期号2015025,\n  开盘时间2015-02-28 21:50:00,\n  封盘时间2015-03-03 21:28:00,\n  开奖时间2015-03-03 21:33:00。\n修改后内容：\n  开盘期号2015029,\n  开盘时间2015-03-10 21:50:00,\n  封盘时间2015-03-12 21:28:00,\n  开奖时间2015-03-12 21:33:00。\n\n修改时间：2015-02-25 00:35:06。\n修改前内容：\n  开奖期号2015021,\n  开盘时间2015-02-17 21:50:00,\n  封盘时间2015-02-22 21:28:00,\n  开奖时间2015-02-22 21:33:00。\n修改后内容：\n  开盘期号2015025,\n  开盘时间2015-02-28 21:50:00,\n  封盘时间2015-03-03 21:28:00,\n  开奖时间2015-03-03 21:33:00。\n\n修改时间：2015-02-18 01:12:05。\n修改前内容：\n  开奖期号2015022,\n  开盘时间2015-02-22 21:50:00,\n  封盘时间2015-02-24 21:28:00,\n  开奖时间2015-02-24 21:33:00。\n修改后内容：\n  开盘期号2015021,\n  开盘时间2015-02-17 21:50:00,\n  封盘时间2015-02-22 21:28:00,\n  开奖时间2015-02-22 21:33:00。\n\n修改时间：2015-02-17 22:39:36。\n修改前内容：\n  开奖期号2015022,\n  开盘时间2015-02-19 21:50:00,\n  封盘时间2015-02-22 21:28:00,\n  开奖时间2015-02-22 21:33:00。\n修改后内容：\n  开盘期号2015022,\n  开盘时间2015-02-22 21:50:00,\n  封盘时间2015-02-24 21:28:00,\n  开奖时间2015-02-24 21:33:00。\n\n修改时间：2015-02-13 16:00:54。\n修改前内容：\n  开奖期号2015018,\n  开盘时间2015-02-10 21:50:00,\n  封盘时间2015-02-12 21:28:00,\n  开奖时间2015-02-12 21:33:00。\n修改后内容：\n  开盘期号2015022,\n  开盘时间2015-02-19 21:50:00,\n  封盘时间2015-02-22 21:28:00,\n  开奖时间2015-02-22 21:33:00。\n\n修改时间：2015-02-08 18:48:03。\n修改前内容：\n  开奖期号2015018,\n  开盘时间2015-02-10 21:50:00,\n  封盘时间2015-02-12 21:28:00,\n  开奖时间2015-02-12 21:33:00。\n修改后内容：\n  开盘期号2015018,\n  开盘时间2015-02-10 21:50:00,\n  封盘时间2015-02-12 21:28:00,\n  开奖时间2015-02-12 21:33:00。\n\n修改时间：2015-02-08 18:47:04。\n修改前内容：\n  开奖期号2015018,\n  开盘时间2015-02-10 09:50:00,\n  封盘时间2015-02-12 09:28:00,\n  开奖时间2015-02-12 09:33:00。\n修改后内容：\n  开盘期号2015018,\n  开盘时间2015-02-10 21:50:00,\n  封盘时间2015-02-12 21:28:00,\n  开奖时间2015-02-12 21:33:00。\n\n');
INSERT INTO `six_lottery_schedule` VALUES (4, '2015061', '2015-05-23 21:50:00', '2015-05-26 21:30:00', '2015-05-26 21:33:00', '2015-05-19 19:22:15', '修改时间：2015-05-19 19:22:15。\n修改前内容：\n  开奖期号2015056,\n  开盘时间2015-05-12 21:50:00,\n  封盘时间2015-05-14 21:30:00,\n  开奖时间2015-05-14 21:33:00。\n修改后内容：\n  开盘期号2015061,\n  开盘时间2015-05-23 21:50:00,\n  封盘时间2015-05-26 21:30:00,\n  开奖时间2015-05-26 21:33:00。\n\n修改时间：2015-05-08 21:26:17。\n修改前内容：\n  开奖期号2015052,\n  开盘时间2015-05-02 21:50:00,\n  封盘时间2015-05-05 21:30:00,\n  开奖时间2015-05-05 21:33:00。\n修改后内容：\n  开盘期号2015056,\n  开盘时间2015-05-12 21:50:00,\n  封盘时间2015-05-14 21:30:00,\n  开奖时间2015-05-14 21:33:00。\n\n修改时间：2015-05-01 00:15:54。\n修改前内容：\n  开奖期号2015048,\n  开盘时间2015-04-23 21:50:00,\n  封盘时间2015-04-25 21:30:00,\n  开奖时间2015-04-25 21:33:00。\n修改后内容：\n  开盘期号2015052,\n  开盘时间2015-05-02 21:50:00,\n  封盘时间2015-05-05 21:30:00,\n  开奖时间2015-05-05 21:33:00。\n\n修改时间：2015-04-21 22:30:43。\n修改前内容：\n  开奖期号2015048,\n  开盘时间2015-04-23 21:50:00,\n  封盘时间2015-04-25 21:30:00,\n  开奖时间2015-04-25 21:33:00。\n修改后内容：\n  开盘期号2015048,\n  开盘时间2015-04-23 21:50:00,\n  封盘时间2015-04-25 21:30:00,\n  开奖时间2015-04-25 21:33:00。\n\n修改时间：2015-04-21 22:30:11。\n修改前内容：\n  开奖期号2015046,\n  开盘时间2015-04-18 21:50:00,\n  封盘时间2015-04-21 21:28:00,\n  开奖时间2015-04-21 21:33:00。\n修改后内容：\n  开盘期号2015048,\n  开盘时间2015-04-23 21:50:00,\n  封盘时间2015-04-25 21:30:00,\n  开奖时间2015-04-25 21:33:00。\n\n修改时间：2015-04-16 23:58:06。\n修改前内容：\n  开奖期号2015045,\n  开盘时间2015-04-18 21:50:00,\n  封盘时间2015-04-21 21:28:00,\n  开奖时间2015-04-21 21:33:00。\n修改后内容：\n  开盘期号2015046,\n  开盘时间2015-04-18 21:50:00,\n  封盘时间2015-04-21 21:28:00,\n  开奖时间2015-04-21 21:33:00。\n\n修改时间：2015-04-16 23:57:53。\n修改前内容：\n  开奖期号2015042,\n  开盘时间2015-04-09 21:50:00,\n  封盘时间2015-04-11 21:28:00,\n  开奖时间2015-04-11 21:33:00。\n修改后内容：\n  开盘期号2015045,\n  开盘时间2015-04-18 21:50:00,\n  封盘时间2015-04-21 21:28:00,\n  开奖时间2015-04-21 21:33:00。\n\n修改时间：2015-04-04 21:57:35。\n修改前内容：\n  开奖期号2015038,\n  开盘时间2015-03-31 21:50:00,\n  封盘时间2015-04-02 21:28:00,\n  开奖时间2015-04-02 21:33:00。\n修改后内容：\n  开盘期号2015042,\n  开盘时间2015-04-09 21:50:00,\n  封盘时间2015-04-11 21:28:00,\n  开奖时间2015-04-11 21:33:00。\n\n修改时间：2015-03-27 00:04:16。\n修改前内容：\n  开奖期号2015034,\n  开盘时间2015-03-22 21:50:00,\n  封盘时间2015-03-24 21:28:00,\n  开奖时间2015-03-24 21:33:00。\n修改后内容：\n  开盘期号2015038,\n  开盘时间2015-03-31 21:50:00,\n  封盘时间2015-04-02 21:28:00,\n  开奖时间2015-04-02 21:33:00。\n\n修改时间：2015-03-21 01:33:18。\n修改前内容：\n  开奖期号2015030,\n  开盘时间2015-03-12 21:50:00,\n  封盘时间2015-03-14 21:28:00,\n  开奖时间2015-03-14 21:33:00。\n修改后内容：\n  开盘期号2015034,\n  开盘时间2015-03-22 21:50:00,\n  封盘时间2015-03-24 21:28:00,\n  开奖时间2015-03-24 21:33:00。\n\n修改时间：2015-03-08 12:56:31。\n修改前内容：\n  开奖期号2015026,\n  开盘时间2015-03-03 21:50:00,\n  封盘时间2015-03-05 21:28:00,\n  开奖时间2015-03-05 21:33:00。\n修改后内容：\n  开盘期号2015030,\n  开盘时间2015-03-12 21:50:00,\n  封盘时间2015-03-14 21:28:00,\n  开奖时间2015-03-14 21:33:00。\n\n修改时间：2015-03-03 22:09:27。\n修改前内容：\n  开奖期号2015022,\n  开盘时间2015-02-22 21:50:00,\n  封盘时间2015-02-24 21:28:00,\n  开奖时间2015-02-24 21:33:00。\n修改后内容：\n  开盘期号2015026,\n  开盘时间2015-03-03 21:50:00,\n  封盘时间2015-03-05 21:28:00,\n  开奖时间2015-03-05 21:33:00。\n\n修改时间：2015-02-18 01:13:30。\n修改前内容：\n  开奖期号2015023,\n  开盘时间2015-02-24 21:50:00,\n  封盘时间2015-02-26 21:28:00,\n  开奖时间2015-02-26 21:33:00。\n修改后内容：\n  开盘期号2015022,\n  开盘时间2015-02-22 21:50:00,\n  封盘时间2015-02-24 21:28:00,\n  开奖时间2015-02-24 21:33:00。\n\n修改时间：2015-02-17 22:40:08。\n修改前内容：\n  开奖期号2015023,\n  开盘时间2015-02-01 21:50:00,\n  封盘时间2015-02-01 21:28:00,\n  开奖时间2015-02-01 21:33:00。\n修改后内容：\n  开盘期号2015023,\n  开盘时间2015-02-24 21:50:00,\n  封盘时间2015-02-26 21:28:00,\n  开奖时间2015-02-26 21:33:00。\n\n修改时间：2015-02-17 08:29:11。\n修改前内容：\n  开奖期号2015019,\n  开盘时间2015-02-01 21:50:00,\n  封盘时间2015-02-01 21:28:00,\n  开奖时间2015-02-01 21:33:00。\n修改后内容：\n  开盘期号2015023,\n  开盘时间2015-02-01 21:50:00,\n  封盘时间2015-02-01 21:28:00,\n  开奖时间2015-02-01 21:33:00。\n\n修改时间：2015-02-17 08:27:16。\n修改前内容：\n  开奖期号2015023,\n  开盘时间2015-02-22 21:50:00,\n  封盘时间2015-02-24 21:28:00,\n  开奖时间2015-02-24 21:33:00。\n修改后内容：\n  开盘期号2015019,\n  开盘时间2015-02-01 21:50:00,\n  封盘时间2015-02-01 21:28:00,\n  开奖时间2015-02-01 21:33:00。\n\n修改时间：2015-02-14 21:53:11。\n修改前内容：\n  开奖期号2015019,\n  开盘时间2015-02-12 21:50:00,\n  封盘时间2015-02-14 21:28:00,\n  开奖时间2015-02-14 21:33:00。\n修改后内容：\n  开盘期号2015023,\n  开盘时间2015-02-22 21:50:00,\n  封盘时间2015-02-24 21:28:00,\n  开奖时间2015-02-24 21:33:00。\n\n修改时间：2015-02-08 18:48:06。\n修改前内容：\n  开奖期号2015019,\n  开盘时间2015-02-12 21:50:00,\n  封盘时间2015-02-14 21:28:00,\n  开奖时间2015-02-14 21:33:00。\n修改后内容：\n  开盘期号2015019,\n  开盘时间2015-02-12 21:50:00,\n  封盘时间2015-02-14 21:28:00,\n  开奖时间2015-02-14 21:33:00。\n\n修改时间：2015-02-08 18:47:29。\n修改前内容：\n  开奖期号2015019,\n  开盘时间2015-02-12 09:50:00,\n  封盘时间2015-02-14 09:28:00,\n  开奖时间2015-02-14 09:33:00。\n修改后内容：\n  开盘期号2015019,\n  开盘时间2015-02-12 21:50:00,\n  封盘时间2015-02-14 21:28:00,\n  开奖时间2015-02-14 21:33:00。\n\n');
INSERT INTO `six_lottery_schedule` VALUES (5, '2015058', '2015-05-17 21:50:00', '2015-05-19 21:30:00', '2015-05-19 21:33:00', '2015-05-08 21:27:58', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sport_close
-- ----------------------------
DROP TABLE IF EXISTS `sport_close`;
CREATE TABLE `sport_close` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sign` varchar(12) DEFAULT NULL COMMENT '体育标识',
  `close` tinyint(4) DEFAULT '1' COMMENT '是否关闭(0:开启,1:关闭)',
  `name` varchar(10) DEFAULT NULL COMMENT '体育中文名',
  `end_close_time` datetime DEFAULT NULL COMMENT '开启时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sport_close
-- ----------------------------
BEGIN;
INSERT INTO `sport_close` VALUES (1, 'all', 0, '体育', NULL);
INSERT INTO `sport_close` VALUES (2, 'baseball', 0, '棒球', NULL);
INSERT INTO `sport_close` VALUES (3, 'basketball', 0, '篮球/美式足球', NULL);
INSERT INTO `sport_close` VALUES (5, 'football', 0, '足球', NULL);
INSERT INTO `sport_close` VALUES (6, 'other', 0, '其他', NULL);
INSERT INTO `sport_close` VALUES (7, 'tennis', 0, '网球', NULL);
INSERT INTO `sport_close` VALUES (8, 'volleyball', 0, '排球', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_announcement
-- ----------------------------
DROP TABLE IF EXISTS `sys_announcement`;
CREATE TABLE `sys_announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(5000) NOT NULL COMMENT '公告内容',
  `type` varchar(255) DEFAULT NULL COMMENT '公告类型',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '公告创建时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `is_show` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `fid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `web_name` varchar(100) DEFAULT NULL COMMENT '网站名称',
  `reg_msg_title` varchar(255) DEFAULT NULL,
  `reg_msg_info` text,
  `reg_msg_from` varchar(255) DEFAULT NULL,
  `why` text,
  `conf_www` varchar(255) DEFAULT NULL,
  `web_image` varchar(100) DEFAULT NULL COMMENT '网站图片域名',
  `tk_ring` tinyint(1) DEFAULT '1' COMMENT '提款铃声',
  `hk_ring` tinyint(1) DEFAULT '1' COMMENT '汇款铃声',
  `dl_ring` tinyint(1) DEFAULT '1' COMMENT '理代铃声',
  `cg_ring` tinyint(1) DEFAULT '1' COMMENT '关串铃声',
  `er_ring` tinyint(1) DEFAULT '1' COMMENT '常异会员铃声 ',
  `ss_ring` tinyint(1) DEFAULT '1' COMMENT '员会申述铃声',
  `AGLiveUrl` varchar(255) DEFAULT NULL COMMENT 'AG网址',
  `gunqiu_time_min` varchar(10) DEFAULT NULL COMMENT '滚球时间下限',
  `gunqiu_time_max` varchar(10) DEFAULT NULL COMMENT '滚球时间上限',
  `close` int(1) DEFAULT NULL COMMENT '网站是否关闭',
  `end_close_time` varchar(100) DEFAULT NULL COMMENT '关闭截止时间',
  `service_email` varchar(100) DEFAULT NULL COMMENT '客服email',
  `generalize_email` varchar(100) DEFAULT NULL COMMENT '推广email',
  `complain_email` varchar(100) DEFAULT NULL COMMENT '投诉email',
  `contact_tel` varchar(100) DEFAULT NULL COMMENT '客服联系电话',
  `check_url1` varchar(100) DEFAULT NULL COMMENT '线路检测1',
  `check_url2` varchar(100) DEFAULT NULL COMMENT '线路检测2',
  `check_url3` varchar(100) DEFAULT NULL COMMENT '线路检测3',
  `check_url4` varchar(100) DEFAULT NULL COMMENT '线路检测4',
  `check_url5` varchar(100) DEFAULT NULL COMMENT '线路检测5',
  `check_url6` varchar(100) DEFAULT NULL COMMENT '线路检测6',
  `check_url7` varchar(100) DEFAULT NULL COMMENT '线路检测7',
  `check_url8` varchar(100) DEFAULT NULL COMMENT '线路检测8',
  `ag_hall` decimal(9,2) DEFAULT '0.00' COMMENT 'AG 普通厅余额',
  `ag_viphall` decimal(9,2) DEFAULT '0.00' COMMENT 'AG VIP厅余额',
  `min_qukuan_money` decimal(9,0) DEFAULT '100' COMMENT '最低取款金额',
  `min_change_money` decimal(9,0) DEFAULT '1' COMMENT '真人最低转账金额',
  `tyc_hall` decimal(9,2) DEFAULT '0.00' COMMENT '太阳城 余额',
  `bbin_hall` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT 'BBIN',
  `serverurl` varchar(100) NOT NULL DEFAULT 'http://118.142.69.136' COMMENT 'serverurl',
  `auto_zhenren` tinyint(1) NOT NULL DEFAULT 1 COMMENT '真人转帐',
  `hk_sxf` decimal(6,3) NOT NULL DEFAULT 0.00 COMMENT '',
  `poptxt` varchar(600) NOT NULL default '' ,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES (1, '娱乐城', '欢迎您光临新葡京娱乐城', '欢迎新葡京娱乐城:最高赔率，最快存取款，最刺激的手机美女荷官真人游戏投注，24小时客服人员为您服务，敬请牢记本站域名：www.02.TT，www.03.TT手机投注网址：wap.02.TT，wap.03.TT\r\n\r\n尊敬的广大玩家，为保证游戏的通畅，新葡京娱乐城现金网现公布备用网址如下：www.XPJ.TT\r\n\r\n为感谢广大会员的大力支持，现在推出周周充值大返利活动，更多详情请查看相关优惠活动或咨询24小时在线客服，望您玩得开心，赢得精彩!', '新葡京娱乐城', NULL, '119.42.147.91', 'http://pic.xpj.tt', 1, 1, 1, 1, 1, 1, NULL, '60', '90', 0, '2015-02-06 17:00:00', '1099456789@qq.com', '1099456789@qq.com', '1099456789@qq.com', '', 'www.9018.com', 'www.9028.com', 'www.9038.com', 'www.9048.com', 'www.9058.com', 'www.9068.com', 'www.9078.com', 'www.9098.com', 69158.00, 0.00, 100, 20, 0.00, 45723.00, 'http://118.142.69.136',1,0.00,'');
COMMIT;

-- ----------------------------
-- Table structure for sys_huikuan_list
-- ----------------------------
DROP TABLE IF EXISTS `sys_huikuan_list`;
CREATE TABLE `sys_huikuan_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(100) CHARACTER SET gbk NOT NULL COMMENT '银行类型',
  `bank_number` varchar(100) CHARACTER SET gbk NOT NULL COMMENT '银行账号',
  `bank_xm` varchar(100) CHARACTER SET gbk NOT NULL COMMENT '开户姓名',
  `bank_city` varchar(100) CHARACTER SET gbk NOT NULL COMMENT '开户银行',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_huikuan_list
-- ----------------------------
BEGIN;
INSERT INTO `sys_huikuan_list` VALUES (37, '农业银行', '咨询客服', '咨询客服', '咨询客服');
INSERT INTO `sys_huikuan_list` VALUES (38, '工商银行', '咨询客服', '咨询客服', '咨询客服');
INSERT INTO `sys_huikuan_list` VALUES (42, '邮政银行', '咨询客服', '咨询客服', '咨询客服');
INSERT INTO `sys_huikuan_list` VALUES (44, '支付宝', '咨询客服', '咨询客服', '咨询客服');
INSERT INTO `sys_huikuan_list` VALUES (43, '中国银行', '咨询客服', '咨询客服', '咨询客服');
COMMIT;

-- ----------------------------
-- Table structure for sys_huikuanbank_list
-- ----------------------------
DROP TABLE IF EXISTS `sys_huikuanbank_list`;
CREATE TABLE `sys_huikuanbank_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(100) CHARACTER SET gbk NOT NULL COMMENT '银行名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_huikuanbank_list
-- ----------------------------
BEGIN;
INSERT INTO `sys_huikuanbank_list` VALUES (41, '中国工商银行');
INSERT INTO `sys_huikuanbank_list` VALUES (42, '中国建设银行');
INSERT INTO `sys_huikuanbank_list` VALUES (43, '中国农业银行');
INSERT INTO `sys_huikuanbank_list` VALUES (44, '深圳发展银行');
INSERT INTO `sys_huikuanbank_list` VALUES (45, '中信银行');
INSERT INTO `sys_huikuanbank_list` VALUES (46, '招商银行');
INSERT INTO `sys_huikuanbank_list` VALUES (47, '交通银行');
INSERT INTO `sys_huikuanbank_list` VALUES (48, '中国民生银行');
INSERT INTO `sys_huikuanbank_list` VALUES (49, '中国光大银行');
INSERT INTO `sys_huikuanbank_list` VALUES (50, '东亚银行');
INSERT INTO `sys_huikuanbank_list` VALUES (51, '平安银行');
INSERT INTO `sys_huikuanbank_list` VALUES (52, '中国银行');
INSERT INTO `sys_huikuanbank_list` VALUES (53, '中国邮政储蓄银行');
INSERT INTO `sys_huikuanbank_list` VALUES (54, '兴业银行');
INSERT INTO `sys_huikuanbank_list` VALUES (55, '广发银行');
INSERT INTO `sys_huikuanbank_list` VALUES (56, '华夏银行');
INSERT INTO `sys_huikuanbank_list` VALUES (57, '浦发银行');
INSERT INTO `sys_huikuanbank_list` VALUES (58, '渤海银行');
INSERT INTO `sys_huikuanbank_list` VALUES (59, '宁波银行');
INSERT INTO `sys_huikuanbank_list` VALUES (60, '北京银行');
INSERT INTO `sys_huikuanbank_list` VALUES (61, '南京银行');
INSERT INTO `sys_huikuanbank_list` VALUES (62, '上海银行');
INSERT INTO `sys_huikuanbank_list` VALUES (63, '北京农村信用社');
INSERT INTO `sys_huikuanbank_list` VALUES (64, '浙商银行');
INSERT INTO `sys_huikuanbank_list` VALUES (65, '杭州银行');
INSERT INTO `sys_huikuanbank_list` VALUES (66, '上海农村商业银行');
INSERT INTO `sys_huikuanbank_list` VALUES (67, '南洋商业银行');
INSERT INTO `sys_huikuanbank_list` VALUES (68, '河北银行');
INSERT INTO `sys_huikuanbank_list` VALUES (69, '支付宝');
INSERT INTO `sys_huikuanbank_list` VALUES (70, '微信');
INSERT INTO `sys_huikuanbank_list` VALUES (71, '其他');
COMMIT;

-- ----------------------------
-- Table structure for sys_live
-- ----------------------------
DROP TABLE IF EXISTS `sys_live`;
CREATE TABLE `sys_live` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_type` varchar(8) DEFAULT NULL,
  `live_amount` decimal(9,0) DEFAULT NULL,
  `close` int(1) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_live
-- ----------------------------
BEGIN;
INSERT INTO `sys_live` VALUES (1, 'AG', 0, NULL);
INSERT INTO `sys_live` VALUES (2, 'BBIN', 0, NULL);
INSERT INTO `sys_live` VALUES (3, 'MG', 0, NULL);
INSERT INTO `sys_live` VALUES (4, 'DS', 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_manage
-- ----------------------------
DROP TABLE IF EXISTS `sys_manage`;
CREATE TABLE `sys_manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manage_name` varchar(16) CHARACTER SET gbk NOT NULL,
  `manage_pass` varchar(32) CHARACTER SET gbk NOT NULL,
  `login_one` int(1) NOT NULL COMMENT '只允许一个地方登陆 1为一个地方登陆 0为没有',
  `bindcomputer` tinyint(1) NOT NULL DEFAULT '0' COMMENT '绑定计算机',
  `purview` varchar(250) CHARACTER SET gbk NOT NULL COMMENT '权限',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_manage
-- ----------------------------
BEGIN;
INSERT INTO `sys_manage` VALUES (1, 'admin', '14e1b600b1fd579f47433b88e8d85291', 1, 0, '|查看会员信息|修改会员|删除会员|查看代理信息|添加代理|删除代理|修改代理|查看财务信息|加款扣款|财务审核|会员返利|查看注单|手工结算注单|手工录入体育比分|手工录入彩票结果|修改网站信息|修改在线支付|查看报表|管理员管理|编辑体育赛事|修改彩票赔率|修改体育赔率|游戏开关|消息管理|真人娱乐|数据管理|');
COMMIT;

-- ----------------------------
-- Table structure for sys_manage_lock
-- ----------------------------
DROP TABLE IF EXISTS `sys_manage_lock`;
CREATE TABLE `sys_manage_lock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_cookie` varchar(200) NOT NULL DEFAULT '0',
  `b_lock` tinyint(4) NOT NULL DEFAULT '0' COMMENT '否是锁定',
  `run_str` varchar(50) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_manage_lock
-- ----------------------------
BEGIN;
INSERT INTO `sys_manage_lock` VALUES (7, '第一次登入的浏览器:[Google Chrome] 时间:[2017-11-20 23:17:07] IP:[127.0.0.1] 账号[admin] 标识:[ULESPNDDHYSJHEJX]', 0, 'ULESPNDDHYSJHEJX');
COMMIT;

-- ----------------------------
-- Table structure for sys_manage_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_manage_online`;
CREATE TABLE `sys_manage_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manage_name` varchar(16) NOT NULL,
  `session_str` varchar(32) NOT NULL,
  `logintime` datetime NOT NULL COMMENT '登陆时间',
  `onlinetime` datetime NOT NULL COMMENT '在线时间',
  `loginip` varchar(16) NOT NULL COMMENT '登陆 IP',
  `loginbrowser` varchar(50) NOT NULL COMMENT '登陆浏览器',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=690 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_manage_online
-- ----------------------------
BEGIN;
INSERT INTO `sys_manage_online` VALUES (689, 'admin', 'gp411drqpdkia9ul7oj484sol4', '2017-12-21 15:36:21', '2017-12-30 03:15:53', '127.0.0.1', 'Google Chrome');
COMMIT;

-- ----------------------------
-- Table structure for t_guanjun
-- ----------------------------
DROP TABLE IF EXISTS `t_guanjun`;
CREATE TABLE `t_guanjun` (
  `x_id` int(11) NOT NULL AUTO_INCREMENT,
  `match_name` varchar(250) NOT NULL,
  `x_title` varchar(100) NOT NULL,
  `match_date` varchar(10) NOT NULL,
  `match_time` varchar(10) NOT NULL,
  `match_coverdate` datetime NOT NULL,
  `add_time` datetime NOT NULL,
  `x_result` varchar(200) DEFAULT NULL,
  `match_id` varchar(10) NOT NULL DEFAULT '0',
  `match_type` int(1) unsigned NOT NULL DEFAULT '1',
  `game_type` varchar(10) DEFAULT NULL,
  `remark` varchar(100) DEFAULT '',
  `score_time` datetime DEFAULT NULL,
  PRIMARY KEY (`x_id`),
  KEY `match_id` (`match_id`),
  KEY `x_title` (`x_title`),
  KEY `match_type` (`match_type`),
  KEY `match_date` (`match_date`)
) ENGINE=MyISAM AUTO_INCREMENT=220 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_guanjun_team
-- ----------------------------
DROP TABLE IF EXISTS `t_guanjun_team`;
CREATE TABLE `t_guanjun_team` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `xid` int(11) NOT NULL,
  `team_name` varchar(100) NOT NULL,
  `point` float NOT NULL DEFAULT '0',
  `match_id` varchar(10) NOT NULL DEFAULT 'none',
  `match_type` int(1) unsigned NOT NULL DEFAULT '1',
  `match_id_g` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `xid` (`xid`),
  KEY `match_id` (`match_id`),
  KEY `match_type` (`match_type`)
) ENGINE=MyISAM AUTO_INCREMENT=20368285 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tennis_match
-- ----------------------------
DROP TABLE IF EXISTS `tennis_match`;
CREATE TABLE `tennis_match` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Match_ID` varchar(50) NOT NULL,
  `Match_Date` varchar(20) DEFAULT NULL,
  `Match_Time` varchar(20) DEFAULT NULL,
  `Match_Name` varchar(50) DEFAULT NULL,
  `Match_Master` varchar(50) DEFAULT NULL,
  `Match_Guest` varchar(50) DEFAULT NULL,
  `Match_IsLose` varchar(4) DEFAULT NULL,
  `Match_State` varchar(7) DEFAULT NULL,
  `Match_Type` tinyint(3) unsigned DEFAULT NULL,
  `Match_Ho` double DEFAULT NULL,
  `Match_Ao` double DEFAULT NULL,
  `Match_RGG` varchar(15) DEFAULT NULL,
  `Match_BzM` double DEFAULT NULL,
  `Match_BzG` double DEFAULT NULL,
  `Match_DxGG` varchar(15) DEFAULT NULL,
  `Match_DxDpl` double DEFAULT NULL,
  `Match_DxXpl` double DEFAULT NULL,
  `Match_DsDpl` double DEFAULT NULL,
  `Match_DsSpl` double DEFAULT NULL,
  `Match_OverScore` varchar(10) DEFAULT NULL,
  `Match_JS` tinyint(3) unsigned DEFAULT '0',
  `Match_Allowds` tinyint(3) unsigned DEFAULT '0',
  `Match_AddDate` datetime DEFAULT NULL,
  `Match_CoverDate` datetime DEFAULT NULL,
  `Match_IsShowds` tinyint(3) unsigned DEFAULT '1',
  `Match_MasterID` varchar(15) DEFAULT NULL,
  `Match_GuestID` varchar(15) DEFAULT NULL,
  `Match_StopUpdateds` tinyint(3) unsigned DEFAULT '0',
  `Match_TypePlay` varchar(5) DEFAULT NULL,
  `Match_bd20` float DEFAULT NULL,
  `Match_bd21` float DEFAULT NULL,
  `Match_bd30` float DEFAULT NULL,
  `Match_bd31` float DEFAULT NULL,
  `Match_bd32` float DEFAULT NULL,
  `match_1score` varchar(15) DEFAULT NULL,
  `match_2score` varchar(15) DEFAULT NULL,
  `match_3score` varchar(15) DEFAULT NULL,
  `match_4score` varchar(15) DEFAULT NULL,
  `match_5score` varchar(15) DEFAULT NULL,
  `match_PScore` varchar(15) DEFAULT NULL,
  `Match_Scene` tinyint(3) unsigned DEFAULT '0',
  `Match_MatchTime` varchar(30) DEFAULT NULL,
  `MB_Inball` varchar(5) DEFAULT NULL,
  `TG_Inball` varchar(5) DEFAULT NULL,
  `MB_Inball_HR` varchar(5) DEFAULT NULL,
  `TG_Inball_HR` varchar(5) DEFAULT NULL,
  `scorecheck` smallint(11) DEFAULT NULL,
  `match_showtype` varchar(1) NOT NULL DEFAULT 'H',
  `remark` varchar(100) DEFAULT '',
  `score_time` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Match_ID` (`Match_ID`),
  KEY `Match_Type` (`Match_Type`),
  KEY `Match_Date` (`Match_Date`),
  KEY `Match_CoverDate` (`Match_CoverDate`),
  KEY `Match_Bd21` (`Match_bd21`),
  KEY `Match_Name` (`Match_Name`),
  KEY `Match_StopUpdateds` (`Match_StopUpdateds`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tyc_status
-- ----------------------------
DROP TABLE IF EXISTS `tyc_status`;
CREATE TABLE `tyc_status` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `msg` varchar(255) DEFAULT NULL COMMENT '图片地址或者字符串',
  `code` varchar(255) DEFAULT NULL COMMENT '保存验证码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tyc_status
-- ----------------------------
BEGIN;
INSERT INTO `tyc_status` VALUES (41, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL DEFAULT '0' COMMENT '会员组编号',
  `group_name` varchar(20) CHARACTER SET gbk NOT NULL DEFAULT '普通会员' COMMENT '会员组名称',
  `total_bets` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '下注流水总额达到，自动换到这个组',
  `default_group` varchar(1) CHARACTER SET gbk NOT NULL DEFAULT '否' COMMENT '否是是默认组',
  `sports_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '体育下注大于',
  `sports_bet_reb` decimal(4,3) NOT NULL DEFAULT '0.000' COMMENT '体育下注返利',
  `cq_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '重庆时时彩',
  `cq_bet_reb` decimal(4,3) NOT NULL DEFAULT '0.000',
  `jx_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '江西时时彩',
  `jx_bet_reb` decimal(4,3) NOT NULL DEFAULT '0.000',
  `tj_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '天津时时彩',
  `tj_bet_reb` decimal(4,3) NOT NULL DEFAULT '0.000',
  `bjpk_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '京北PK10',
  `bjpk_bet_reb` decimal(4,3) NOT NULL DEFAULT '0.000',
  `bjkn_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '京北快乐8',
  `bjkn_bet_reb` decimal(4,3) NOT NULL DEFAULT '0.000',
  `gdsf_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '广东十分',
  `gdsf_bet_reb` decimal(4,3) NOT NULL DEFAULT '0.000',
  `tjsf_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '天津十分',
  `tjsf_bet_reb` decimal(4,3) NOT NULL DEFAULT '0.000',
  `gxsf_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '广西十分',
  `gxsf_bet_reb` decimal(4,3) NOT NULL DEFAULT '0.000',
  `cqsf_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '重庆十分',
  `cqsf_bet_reb` decimal(4,3) NOT NULL DEFAULT '0.000',
  `gd11_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '东广11选5',
  `gd11_bet_reb` decimal(4,3) NOT NULL DEFAULT '0.000',
  `lhc_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '合彩六',
  `lhc_bet_reb` decimal(4,3) NOT NULL DEFAULT '0.000',
  `d3_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '福彩3D',
  `d3_bet_reb` decimal(4,3) NOT NULL DEFAULT '0.000',
  `p3_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '列三排',
  `p3_bet_reb` decimal(4,3) NOT NULL DEFAULT '0.000',
  `t3_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '上海时时乐',
  `t3_bet_reb` decimal(4,3) NOT NULL DEFAULT '0.000',
  `sports_lower_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '育体投注最低下限',
  `cq_lower_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '重庆时时彩最低下注',
  `jx_lower_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '江西时时彩最低下注',
  `tj_lower_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '天津时时彩最低下注',
  `bjpk_lower_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bjkn_lower_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `gdsf_lower_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `gxsf_lower_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tjsf_lower_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cqsf_lower_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `gd11_lower_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `lhc_lower_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `d3_lower_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `p3_lower_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `t3_lower_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sports_max_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '育体投最高上限',
  `cq_max_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '重庆时时彩最高上限',
  `jx_max_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '江西时时彩最高上限',
  `tj_max_bet` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '天津时时彩最高上限',
  `bjpk_max_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bjkn_max_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `gdsf_max_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `gxsf_max_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tjsf_max_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cqsf_max_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `gd11_max_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `lhc_max_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `d3_max_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `p3_max_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  `t3_max_bet` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_group
-- ----------------------------
BEGIN;
INSERT INTO `user_group` VALUES (2, 553, '普通会员组', 0.00, '是', 10.00, 0.750, 10.00, 0.006, 10.00, 0.006, 10.00, 0.006, 10.00, 0.006, 10.00, 0.006, 10.00, 0.006, 10.00, 0.006, 10.00, 0.006, 10.00, 0.006, 10.00, 0.006, 10.00, 0.000, 10.00, 0.006, 10.00, 0.006, 10.00, 0.006, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 50001.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00);
INSERT INTO `user_group` VALUES (3, 735, '银卡会员', 1000000.00, '否', 10.00, 0.750, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.000, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00);
INSERT INTO `user_group` VALUES (4, 804, '金卡会员2', 10000000.00, '否', 10.00, 0.750, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.000, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00);
INSERT INTO `user_group` VALUES (5, 866, '第四档会员', 1000000.00, '否', 10.00, 0.750, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.000, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00);
INSERT INTO `user_group` VALUES (6, 972, '第五档会员', 10000000.00, '否', 10.00, 0.750, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 0.000, 10.00, 0.008, 10.00, 0.008, 10.00, 0.008, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00, 50000.00);
COMMIT;

-- ----------------------------
-- Table structure for user_list
-- ----------------------------
DROP TABLE IF EXISTS `user_list`;
CREATE TABLE `user_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `Oid` varchar(50) CHARACTER SET gbk NOT NULL DEFAULT 'logout',
  `user_name` varchar(16) CHARACTER SET gbk NOT NULL COMMENT '用户名',
  `user_pass` varchar(32) CHARACTER SET gbk NOT NULL COMMENT '用户密码',
  `user_pass_naked` varchar(32) DEFAULT NULL COMMENT '用户密码_明文',
  `qk_pass` varchar(32) CHARACTER SET gbk NOT NULL COMMENT '取款密码',
  `top_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级代理ID',
  `money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '员会当前帐户金额',
  `total_bets` decimal(13,2) NOT NULL DEFAULT '0.00' COMMENT '注下流水',
  `ask` varchar(50) CHARACTER SET gbk NOT NULL COMMENT '安全问题',
  `answer` varchar(50) CHARACTER SET gbk NOT NULL COMMENT '安全回答',
  `loginip` varchar(20) CHARACTER SET gbk NOT NULL DEFAULT '0.0.0.0' COMMENT '登陆IP',
  `OnlineTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '在線時間',
  `logintime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '登陆时间',
  `loginaddress` varchar(100) CHARACTER SET gbk NOT NULL DEFAULT '未知' COMMENT '登陆地址',
  `regtime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '注册时间',
  `regip` varchar(20) CHARACTER SET gbk NOT NULL DEFAULT '0.0.0.0' COMMENT '注册IP',
  `regaddress` varchar(100) CHARACTER SET gbk NOT NULL DEFAULT '未知' COMMENT '注册地址',
  `logouttime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '户用退出时间',
  `online` varchar(1) CHARACTER SET gbk NOT NULL DEFAULT '否' COMMENT '是否在线',
  `lognum` int(11) NOT NULL DEFAULT '0' COMMENT '登陆次数',
  `status` varchar(4) CHARACTER SET gbk NOT NULL DEFAULT '正常' COMMENT '会员状态,1正常，2停用，3异常',
  `group_id` int(11) NOT NULL DEFAULT '0' COMMENT '会员组ID',
  `sex` varchar(2) CHARACTER SET gbk NOT NULL DEFAULT '未知' COMMENT '性别',
  `birthday` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '生日',
  `tel` varchar(20) CHARACTER SET gbk NOT NULL DEFAULT '空' COMMENT '电话',
  `email` varchar(50) CHARACTER SET gbk NOT NULL DEFAULT '空' COMMENT '会员邮箱',
  `qq` varchar(20) NOT NULL DEFAULT '0' COMMENT '会员QQ',
  `othercon` varchar(100) CHARACTER SET gbk NOT NULL DEFAULT '空' COMMENT '其他联系信息',
  `country` varchar(50) CHARACTER SET gbk NOT NULL DEFAULT '空' COMMENT '国籍',
  `province` varchar(50) CHARACTER SET gbk NOT NULL DEFAULT '空' COMMENT '省份',
  `city` varchar(50) CHARACTER SET gbk NOT NULL DEFAULT '空' COMMENT '城市',
  `address` varchar(100) CHARACTER SET gbk NOT NULL DEFAULT '空' COMMENT '详细地址',
  `pay_name` varchar(20) CHARACTER SET gbk NOT NULL DEFAULT '未填写' COMMENT '会员银行卡用户名',
  `pay_address` varchar(100) CHARACTER SET gbk NOT NULL DEFAULT '未填写' COMMENT '银行卡开户地址',
  `pay_num` varchar(50) CHARACTER SET gbk NOT NULL DEFAULT '未填写' COMMENT '银行卡帐号',
  `pay_bank` varchar(50) CHARACTER SET gbk NOT NULL DEFAULT '未填写' COMMENT '开户银行',
  `remark` text CHARACTER SET gbk NOT NULL COMMENT '备注信息',
  `loginurl` varchar(100) CHARACTER SET gbk NOT NULL DEFAULT 'www' COMMENT '录登网址',
  `regurl` varchar(100) CHARACTER SET gbk NOT NULL DEFAULT 'www' COMMENT '注册网址',
  `is_allow_live` varchar(10) NOT NULL DEFAULT '1' COMMENT '1:允许，2不允许',
  `allow_total_money` int(10) NOT NULL DEFAULT '0' COMMENT '允许会员当期下注金额',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `Oid` (`Oid`),
  KEY `user_name` (`user_name`),
  KEY `top_id` (`top_id`),
  KEY `group_id` (`group_id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_log
-- ----------------------------
DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(16) CHARACTER SET gbk NOT NULL DEFAULT '未知',
  `user_id` bigint(20) NOT NULL,
  `Oid` varchar(50) CHARACTER SET gbk NOT NULL,
  `login_ip` varchar(20) CHARACTER SET gbk NOT NULL DEFAULT '0.0.0.0' COMMENT '登陆IP',
  `edlog` varchar(200) CHARACTER SET gbk NOT NULL COMMENT '操作内容',
  `edtime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '操作时间',
  `login_url` varchar(200) DEFAULT NULL COMMENT '登录网址',
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`user_name`,`login_ip`,`edlog`) USING BTREE,
  KEY `user_id` (`user_id`),
  FULLTEXT KEY `edlog` (`user_name`,`login_ip`,`edlog`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for user_msg
-- ----------------------------
DROP TABLE IF EXISTS `user_msg`;
CREATE TABLE `user_msg` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_from` varchar(20) NOT NULL COMMENT '发消息者',
  `user_id` bigint(20) NOT NULL,
  `msg_title` varchar(50) NOT NULL COMMENT '消息标题',
  `msg_info` varchar(2000) DEFAULT NULL,
  `msg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `islook` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for volleyball_match
-- ----------------------------
DROP TABLE IF EXISTS `volleyball_match`;
CREATE TABLE `volleyball_match` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Match_ID` varchar(50) NOT NULL,
  `Match_Date` varchar(20) DEFAULT NULL,
  `Match_Time` varchar(20) DEFAULT NULL,
  `Match_Name` varchar(50) DEFAULT NULL,
  `Match_Master` varchar(50) DEFAULT NULL,
  `Match_Guest` varchar(50) DEFAULT NULL,
  `Match_IsLose` varchar(4) DEFAULT NULL,
  `Match_State` varchar(7) DEFAULT NULL,
  `Match_Type` tinyint(3) unsigned DEFAULT NULL,
  `Match_Ho` double DEFAULT NULL,
  `Match_Ao` double DEFAULT NULL,
  `Match_RGG` varchar(15) DEFAULT NULL,
  `Match_BzM` double DEFAULT NULL,
  `Match_BzG` double DEFAULT NULL,
  `Match_DxGG` varchar(15) DEFAULT NULL,
  `Match_DxDpl` double DEFAULT NULL,
  `Match_DxXpl` double DEFAULT NULL,
  `Match_DsDpl` double DEFAULT NULL,
  `Match_DsSpl` double DEFAULT NULL,
  `Match_OverScore` varchar(10) DEFAULT NULL,
  `Match_JS` tinyint(3) unsigned DEFAULT '0',
  `Match_Allowds` tinyint(3) unsigned DEFAULT '0',
  `Match_AddDate` datetime DEFAULT NULL,
  `Match_CoverDate` datetime DEFAULT NULL,
  `Match_IsShowds` tinyint(3) unsigned DEFAULT '1',
  `Match_MasterID` varchar(15) DEFAULT NULL,
  `Match_GuestID` varchar(15) DEFAULT NULL,
  `Match_StopUpdateds` tinyint(3) unsigned DEFAULT '0',
  `Match_TypePlay` varchar(5) DEFAULT NULL,
  `Match_bd20` float DEFAULT NULL,
  `Match_bd21` float DEFAULT NULL,
  `Match_bd30` float DEFAULT NULL,
  `Match_bd31` float DEFAULT NULL,
  `Match_bd32` float DEFAULT NULL,
  `Match_1Score` varchar(15) DEFAULT NULL,
  `Match_2Score` varchar(15) DEFAULT NULL,
  `Match_3Score` varchar(15) DEFAULT NULL,
  `Match_4Score` varchar(15) DEFAULT NULL,
  `Match_5Score` varchar(15) DEFAULT NULL,
  `Match_PScore` varchar(15) DEFAULT NULL,
  `Match_Scene` tinyint(3) unsigned DEFAULT '0',
  `Match_MatchTime` varchar(30) DEFAULT NULL,
  `MB_Inball` varchar(5) DEFAULT NULL,
  `TG_Inball` varchar(5) DEFAULT NULL,
  `MB_Inball_HR` varchar(5) DEFAULT NULL,
  `TG_Inball_HR` varchar(5) DEFAULT NULL,
  `scorecheck` smallint(6) DEFAULT NULL,
  `Match_ShowType` varchar(1) DEFAULT 'H',
  `score_time` datetime DEFAULT NULL,
  `remark` varchar(100) DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `Match_ID` (`Match_ID`),
  KEY `Match_Type` (`Match_Type`),
  KEY `Match_CoverDate` (`Match_CoverDate`),
  KEY `Match_Date` (`Match_Date`),
  KEY `Match_Name` (`Match_Name`),
  KEY `Match_StopUpdateds` (`Match_StopUpdateds`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for web_close
-- ----------------------------
DROP TABLE IF EXISTS `web_close`;
CREATE TABLE `web_close` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sign` varchar(8) DEFAULT NULL COMMENT '彩票标识',
  `close` tinyint(1) DEFAULT '1' COMMENT '是否关闭(0:开启,1:关闭)',
  `name` varchar(10) DEFAULT NULL COMMENT '彩票中文名',
  `des` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL DEFAULT '' COMMENT '原因',
  `ktime` varchar(10) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL DEFAULT '',
  `knum` varchar(20) NOT NULL DEFAULT '',
  `end_close_time` datetime DEFAULT NULL COMMENT '开启时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_close
-- ----------------------------
BEGIN;
INSERT INTO `web_close` VALUES (1, 'web', 0, '网站', '', '', '', NULL);
INSERT INTO `web_close` VALUES (2, 'jx', 1, '江西时时彩', '江西时时彩系统维护,暂时关闭!', '', '', NULL);
INSERT INTO `web_close` VALUES (3, 'cq', 0, '重庆时时彩', '天津时时彩系统维护,暂时关闭!', '', '', NULL);
INSERT INTO `web_close` VALUES (4, 'tj', 0, '天津时时彩', '天津时时彩系统维护,暂时关闭!', '', '', NULL);
INSERT INTO `web_close` VALUES (5, 'cqsf', 0, '重庆快乐十分', '重庆十分彩系统维护,暂时关闭!', '', '', NULL);
INSERT INTO `web_close` VALUES (6, 'gdsf', 0, '广东快乐十分', '广东十分彩系统维护,暂时关闭!', '', '', NULL);
INSERT INTO `web_close` VALUES (7, 'tjsf', 0, '天津快乐十分', '天津十分彩系统维护,暂时关闭!', '', '', NULL);
INSERT INTO `web_close` VALUES (8, 'gxsf', 0, '广西十分彩', '广西十分彩系统维护,暂时关闭!', '2018-02-22', '201804601', NULL);
INSERT INTO `web_close` VALUES (9, 'pk10', 0, '北京PK拾', '北京PK10系统维护,暂时关闭!', '2018-02-22', '667279', NULL);
INSERT INTO `web_close` VALUES (10, 'd3', 0, '福彩3D', '福彩3D系统维护,暂时关闭!', '2018-02-21', '2018045', NULL);
INSERT INTO `web_close` VALUES (11, 'p3', 0, '排列3', '排列三系统维护,暂时关闭!', '2018-02-21', '18045', NULL);
INSERT INTO `web_close` VALUES (12, 't3', 0, '上海时时乐', '上海时时乐系统维护,暂时关闭!', '', '', NULL);
INSERT INTO `web_close` VALUES (13, 'kl8', 0, '北京快乐8', '北京快乐8系统维护,暂时关闭!', '2018-05-08', '886681', NULL);
INSERT INTO `web_close` VALUES (14, 'gd11', 0, '广东11选5', '广东11选5系统维护,暂时关闭!', '', '', NULL);
INSERT INTO `web_close` VALUES (15, 'lhc', 0, '六合彩', '六合彩系统维护,暂时关闭!', '', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for webinfo
-- ----------------------------
DROP TABLE IF EXISTS `webinfo`;
CREATE TABLE `webinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of webinfo
-- ----------------------------
BEGIN;
INSERT INTO `webinfo` VALUES (1, 'jdtz', '焦点投注', '6月04日  03:00<p style=\"color: #ffff00;\">友誼賽</p>巴西  VS 英格蘭<br />0.90 一球 1.00');
INSERT INTO `webinfo` VALUES (2, 'temp2', 'temp2', 'temp2');
INSERT INTO `webinfo` VALUES (3, 'temp3', 'temp3', 'temp3');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
