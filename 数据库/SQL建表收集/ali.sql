/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ali

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-03-26 18:18:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for agconf
-- ----------------------------
DROP TABLE IF EXISTS `agconf`;
CREATE TABLE `agconf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agip` varchar(30) NOT NULL,
  `subfix` varchar(2) NOT NULL,
  `ptsubfix` varchar(7) NOT NULL,
  `key` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bill_ag_table
-- ----------------------------
DROP TABLE IF EXISTS `bill_ag_table`;
CREATE TABLE `bill_ag_table` (
  `billNo` bigint(20) NOT NULL,
  `playerName` varchar(20) NOT NULL,
  `agentCode` varchar(20) NOT NULL,
  `gameCode` varchar(20) NOT NULL,
  `netAmount` decimal(12,2) NOT NULL,
  `betTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gameType` varchar(10) NOT NULL,
  `betAmount` decimal(12,2) NOT NULL,
  `validBetAmount` decimal(12,2) NOT NULL,
  `flag` tinyint(4) NOT NULL,
  `playType` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `tableCode` varchar(20) NOT NULL,
  `loginIP` varchar(20) NOT NULL,
  `recalcuTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `platformId` varchar(10) NOT NULL,
  `platformType` varchar(10) NOT NULL,
  `stringex` varchar(20) NOT NULL,
  `remark` varchar(20) NOT NULL,
  `round` varchar(10) NOT NULL,
  `localusername` varchar(20) NOT NULL,
  `a` int(11) NOT NULL DEFAULT '0',
  `b` int(11) NOT NULL DEFAULT '0',
  `c` int(11) NOT NULL DEFAULT '0',
  `d` int(11) NOT NULL DEFAULT '0',
  `e` int(11) NOT NULL DEFAULT '0',
  `A_Point` int(11) NOT NULL DEFAULT '0',
  `B_Point` int(11) NOT NULL DEFAULT '0',
  `C_Point` int(11) NOT NULL DEFAULT '0',
  `D_Point` int(11) NOT NULL DEFAULT '0',
  `E_Point` int(11) NOT NULL DEFAULT '0',
  `slottype` varchar(20) NOT NULL,
  `result` varchar(20) NOT NULL,
  `mainbillno` varchar(20) NOT NULL,
  `beforeCerdit` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`billNo`),
  KEY `playerName` (`playerName`),
  KEY `betTime` (`betTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bill_ag_tranter
-- ----------------------------
DROP TABLE IF EXISTS `bill_ag_tranter`;
CREATE TABLE `bill_ag_tranter` (
  `ID` varchar(30) NOT NULL,
  `agentCode` varchar(30) NOT NULL,
  `transferId` varchar(20) NOT NULL,
  `tradeNo` varchar(20) NOT NULL,
  `playerName` varchar(20) NOT NULL,
  `transferType` varchar(10) NOT NULL,
  `transferAmount` decimal(12,2) NOT NULL,
  `previousAmount` decimal(12,2) NOT NULL,
  `currentAmount` decimal(12,2) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `platformId` varchar(10) NOT NULL,
  `platformType` varchar(20) NOT NULL,
  `exchangeRate` int(11) NOT NULL DEFAULT '1',
  `IP` varchar(20) NOT NULL DEFAULT '0',
  `flag` int(11) NOT NULL DEFAULT '0',
  `creationTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gameCode` varchar(30) NOT NULL,
  `localusername` varchar(20) NOT NULL,
  `a` int(11) NOT NULL DEFAULT '0',
  `b` int(11) NOT NULL DEFAULT '0',
  `c` int(11) NOT NULL DEFAULT '0',
  `d` int(11) NOT NULL DEFAULT '0',
  `e` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `tradeNo` (`tradeNo`),
  KEY `transferId` (`transferId`),
  KEY `creationTime` (`creationTime`,`localusername`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bill_mg_table
-- ----------------------------
DROP TABLE IF EXISTS `bill_mg_table`;
CREATE TABLE `bill_mg_table` (
  `key` varchar(30) NOT NULL,
  `colId` varchar(30) NOT NULL,
  `horNeKey` varchar(20) NOT NULL,
  `mbrNeKey` varchar(20) NOT NULL,
  `betTransKey` varchar(30) NOT NULL,
  `gameKey` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `product` varchar(10) NOT NULL,
  `transactionTimestampDate` bigint(20) NOT NULL,
  `amount` float(11,2) NOT NULL,
  `mbrCode` varchar(30) NOT NULL,
  `mbrAlias` varchar(20) NOT NULL,
  `mbrUsername` varchar(30) NOT NULL,
  `gameCasinoId` varchar(50) NOT NULL,
  `gamePokerId` varchar(20) NOT NULL,
  `gamePokerType` varchar(20) NOT NULL,
  `refKey` varchar(20) NOT NULL,
  `refType` varchar(20) NOT NULL,
  `afterTxWalletAmount` float(13,2) NOT NULL,
  `mgsGameId` varchar(20) NOT NULL,
  `mgsActionId` varchar(20) NOT NULL,
  `clrngAmnt` varchar(20) NOT NULL,
  `gamePlatformType` varchar(20) NOT NULL,
  `subfix` varchar(3) NOT NULL,
  `localusername` varchar(20) NOT NULL,
  `Agents` varchar(20) NOT NULL,
  `World` varchar(20) NOT NULL,
  `Corprator` varchar(20) NOT NULL,
  `Super` varchar(20) NOT NULL,
  `Admin` varchar(20) NOT NULL,
  UNIQUE KEY `colId` (`colId`),
  KEY `localusername` (`localusername`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for g_rank
-- ----------------------------
DROP TABLE IF EXISTS `g_rank`;
CREATE TABLE `g_rank` (
  `g_nid` varchar(200) NOT NULL COMMENT '//關聯標示',
  `g_login_id` int(2) unsigned NOT NULL COMMENT '//登陸驗證ID',
  `g_name` varchar(10) NOT NULL COMMENT '//帳號',
  `g_password` varchar(40) NOT NULL COMMENT '//密碼',
  `g_f_name` varchar(20) NOT NULL COMMENT '//昵稱',
  `g_money` double unsigned NOT NULL COMMENT '//信用額',
  `g_distribution` int(3) unsigned NOT NULL COMMENT '//占成',
  `g_distribution_limit` int(3) unsigned NOT NULL COMMENT '//限制占成',
  `g_Immediate_lock` int(2) unsigned NOT NULL COMMENT '//補貨限制',
  `g_Immediate2_lock` int(1) unsigned NOT NULL DEFAULT '1',
  `g_lock` int(1) unsigned NOT NULL COMMENT '//帳號限制',
  `g_ip` varchar(20) NOT NULL COMMENT '//ip',
  `g_date` datetime NOT NULL COMMENT '//登陸時間',
  `g_uid` varchar(32) NOT NULL COMMENT '//唯一標示',
  `g_out` int(1) unsigned NOT NULL DEFAULT '0',
  `g_count_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `g_pwd` int(11) DEFAULT '1',
  `g_zcgs` int(11) DEFAULT '0',
  PRIMARY KEY (`g_name`),
  UNIQUE KEY `g_name` (`g_name`),
  KEY `g_nid` (`g_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='//公司表';

-- ----------------------------
-- Table structure for g_user
-- ----------------------------
DROP TABLE IF EXISTS `g_user`;
CREATE TABLE `g_user` (
  `g_nid` varchar(200) NOT NULL COMMENT '//外鍵關鍵標示',
  `g_login_id` varchar(20) NOT NULL DEFAULT '9',
  `g_name` varchar(15) NOT NULL COMMENT '//帳號',
  `g_f_name` varchar(20) NOT NULL COMMENT '//名稱',
  `g_mumber_type` int(1) unsigned NOT NULL COMMENT '//會員類型',
  `g_password` varchar(40) NOT NULL COMMENT '//密碼',
  `g_money` int(8) unsigned NOT NULL COMMENT '//信用額',
  `g_money_yes` double unsigned NOT NULL COMMENT '//可用額',
  `g_distribution` int(3) unsigned NOT NULL COMMENT '//占成',
  `g_panlu` varchar(12) NOT NULL COMMENT '//盤路',
  `g_xianer` int(8) unsigned NOT NULL COMMENT '//單號限額',
  `g_out` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '//停用',
  `g_count_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '//统计在线时间',
  `g_look` int(1) unsigned NOT NULL COMMENT '//暫停',
  `g_ip` varchar(20) NOT NULL COMMENT '//登錄IP',
  `g_date` datetime DEFAULT NULL COMMENT '//登錄時間',
  `g_uid` varchar(32) NOT NULL COMMENT '//唯一標示符',
  `g_panlus` varchar(12) DEFAULT 'A,B,C,',
  `g_state` int(10) DEFAULT NULL,
  `g_autowin` int(10) NOT NULL DEFAULT '0',
  `g_id` int(100) NOT NULL AUTO_INCREMENT,
  `g_pwd` int(11) DEFAULT '1',
  `g_autofail` int(10) NOT NULL DEFAULT '0',
  `iscash` char(1) NOT NULL DEFAULT '0',
  `g_xm` varchar(20) DEFAULT NULL,
  `g_tel` varchar(25) DEFAULT NULL,
  `g_qq` varchar(25) DEFAULT NULL,
  `g_birthday` varchar(30) DEFAULT NULL,
  `g_ask` varchar(100) DEFAULT NULL,
  `g_answer` varchar(100) DEFAULT NULL,
  `g_pay_pass` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`g_id`),
  UNIQUE KEY `g_name` (`g_name`),
  KEY `g_nid` (`g_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='//用戶表';

-- ----------------------------
-- Table structure for mg_config
-- ----------------------------
DROP TABLE IF EXISTS `mg_config`;
CREATE TABLE `mg_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subfix` varchar(3) NOT NULL,
  `mem_url` varchar(50) NOT NULL,
  `partner_id` varchar(30) NOT NULL,
  `api_usr` varchar(30) NOT NULL,
  `api_psw` varchar(30) NOT NULL,
  `currency_code` varchar(5) NOT NULL,
  `language` varchar(5) NOT NULL DEFAULT 'en',
  `ag_usr` varchar(20) NOT NULL,
  `ag_psw` varchar(20) NOT NULL,
  `ag_url` varchar(50) NOT NULL,
  `ag_neid` varchar(20) NOT NULL,
  `ag_lst_login` bigint(20) NOT NULL COMMENT '代理最后登录时间',
  `ag_lst_id` varchar(35) NOT NULL,
  `ag_lst_token` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for notify_test
-- ----------------------------
DROP TABLE IF EXISTS `notify_test`;
CREATE TABLE `notify_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??ID',
  `str` text NOT NULL COMMENT '内容',
  `created_time` char(19) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='第三方异步通知测试';

-- ----------------------------
-- Table structure for ssc_2ag
-- ----------------------------
DROP TABLE IF EXISTS `ssc_2ag`;
CREATE TABLE `ssc_2ag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` int(11) NOT NULL,
  `moneyf` int(11) NOT NULL,
  `moneys` int(11) NOT NULL,
  `adddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `iotype` varchar(3) NOT NULL DEFAULT 'IN',
  `chgtype` tinyint(4) NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_3dopen
-- ----------------------------
DROP TABLE IF EXISTS `ssc_3dopen`;
CREATE TABLE `ssc_3dopen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round` varchar(100) NOT NULL DEFAULT '0' COMMENT '期数',
  `game_code` int(3) NOT NULL COMMENT '游戏代号',
  `endtime` int(11) NOT NULL COMMENT '结束时间',
  `roundtime` int(11) NOT NULL COMMENT '游戏时间',
  `number` varchar(255) NOT NULL DEFAULT '' COMMENT '开奖号码',
  `number_sec` varchar(255) DEFAULT NULL COMMENT '二次答案',
  `total` int(11) NOT NULL DEFAULT '0' COMMENT '总和',
  `passed` int(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `endtime` (`endtime`),
  KEY `round` (`game_code`,`round`(20))
) ENGINE=MyISAM AUTO_INCREMENT=374932 DEFAULT CHARSET=utf8 COMMENT='时时彩开答';

-- ----------------------------
-- Table structure for ssc_addmoney_log
-- ----------------------------
DROP TABLE IF EXISTS `ssc_addmoney_log`;
CREATE TABLE `ssc_addmoney_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `loginid` int(11) NOT NULL,
  `addmoney` double(12,2) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_agent_amount
-- ----------------------------
DROP TABLE IF EXISTS `ssc_agent_amount`;
CREATE TABLE `ssc_agent_amount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `backwater` varchar(255) NOT NULL COMMENT '返水率',
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='代理返水表';

-- ----------------------------
-- Table structure for ssc_agent_backwater
-- ----------------------------
DROP TABLE IF EXISTS `ssc_agent_backwater`;
CREATE TABLE `ssc_agent_backwater` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `backwater` varchar(255) NOT NULL COMMENT '返水率',
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代理返水表';

-- ----------------------------
-- Table structure for ssc_agent_url
-- ----------------------------
DROP TABLE IF EXISTS `ssc_agent_url`;
CREATE TABLE `ssc_agent_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(50) NOT NULL,
  `agname` varchar(20) NOT NULL,
  `remark` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_ag_api
-- ----------------------------
DROP TABLE IF EXISTS `ssc_ag_api`;
CREATE TABLE `ssc_ag_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) NOT NULL,
  `subfix` varchar(20) NOT NULL,
  `api` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_ag_log
-- ----------------------------
DROP TABLE IF EXISTS `ssc_ag_log`;
CREATE TABLE `ssc_ag_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `money` float NOT NULL,
  `addtime` int(10) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='AG返水加钱日志';

-- ----------------------------
-- Table structure for ssc_allocateseting
-- ----------------------------
DROP TABLE IF EXISTS `ssc_allocateseting`;
CREATE TABLE `ssc_allocateseting` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '管理账号',
  `deposit` varchar(200) NOT NULL COMMENT '存款分流编号',
  `withdrawals` varchar(200) NOT NULL COMMENT '取款分流编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_bank_data
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bank_data`;
CREATE TABLE `ssc_bank_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(100) NOT NULL,
  `bank_user` varchar(20) NOT NULL,
  `bank_addres` varchar(255) NOT NULL,
  `bank_account` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `bank_image_url` varchar(150) NOT NULL COMMENT '支付宝,微信二维码路径',
  `bank_image_url2` varchar(200) NOT NULL,
  `url_type` int(1) NOT NULL DEFAULT '1',
  `recharge_offer` decimal(4,2) NOT NULL DEFAULT '0.00' COMMENT '线下汇款优惠百分比',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_bbin_backwater
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bbin_backwater`;
CREATE TABLE `ssc_bbin_backwater` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `backwater` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_bbin_log
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bbin_log`;
CREATE TABLE `ssc_bbin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `money` float NOT NULL,
  `addtime` int(10) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1692 DEFAULT CHARSET=utf8 COMMENT='BBIN返水加钱日志';

-- ----------------------------
-- Table structure for ssc_bill
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bill`;
CREATE TABLE `ssc_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL COMMENT '会员id',
  `username` char(20) NOT NULL COMMENT '会员帐号',
  `a_uid` int(11) NOT NULL DEFAULT '0' COMMENT '管理员id',
  `b_uid` int(11) NOT NULL DEFAULT '0' COMMENT '大股东id',
  `c_uid` int(11) NOT NULL DEFAULT '0' COMMENT '股东id',
  `d_uid` int(11) NOT NULL DEFAULT '0' COMMENT '总代理id',
  `e_uid` int(11) NOT NULL DEFAULT '0' COMMENT '代理id',
  `game_code` int(3) NOT NULL COMMENT '游戏代号',
  `type_code` int(6) NOT NULL COMMENT '下注类型代号',
  `happy8` int(6) NOT NULL COMMENT '类型的classid',
  `round` char(30) NOT NULL COMMENT '期数',
  `drop_money` double NOT NULL DEFAULT '0' COMMENT '下注金额',
  `drop_content` varchar(100) NOT NULL COMMENT '下注内容',
  `total` double NOT NULL DEFAULT '0' COMMENT '下注总额',
  `valid_money` double NOT NULL DEFAULT '0' COMMENT '有效金额',
  `user_win` double NOT NULL DEFAULT '0' COMMENT '会员输赢,不含退水',
  `user_cut` double NOT NULL DEFAULT '0' COMMENT '会员退水',
  `user_rate` double NOT NULL DEFAULT '0' COMMENT '赔率',
  `xq_rate` varchar(100) DEFAULT NULL COMMENT '小球過關賠率',
  `a_cut` double NOT NULL DEFAULT '0' COMMENT '管理员退水',
  `b_cut` double NOT NULL DEFAULT '0' COMMENT '大股东退水',
  `c_cut` double NOT NULL DEFAULT '0' COMMENT '股东退水',
  `d_cut` double NOT NULL DEFAULT '0' COMMENT '总代理退水',
  `e_cut` double NOT NULL DEFAULT '0' COMMENT '代理退水',
  `a_profit` double NOT NULL DEFAULT '0' COMMENT '管理员占成',
  `b_profit` double NOT NULL DEFAULT '0' COMMENT '大股东占成',
  `c_profit` double NOT NULL DEFAULT '0' COMMENT '股东占成',
  `d_profit` double NOT NULL DEFAULT '0' COMMENT '总代理占成',
  `e_profit` double NOT NULL DEFAULT '0' COMMENT '代理占成',
  `count_pay` int(3) NOT NULL DEFAULT '1' COMMENT '注数',
  `count` int(1) NOT NULL DEFAULT '0' COMMENT '是否结算',
  `cancel` int(1) NOT NULL DEFAULT '0' COMMENT '是否注销',
  `pankou` char(5) NOT NULL DEFAULT '' COMMENT '下注盘口',
  `cp_type` int(3) NOT NULL DEFAULT '0' COMMENT '注销理由',
  `bet_ip` varchar(20) NOT NULL COMMENT '下注ip',
  `bet_time` int(11) NOT NULL DEFAULT '0' COMMENT '下注时间',
  `replenishtype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '如果为0就不是补货，1代理补货，2总代补货，3股东补货，4分公司补货',
  `m_name` varchar(200) DEFAULT NULL,
  `xq_de_id` int(11) NOT NULL DEFAULT '0' COMMENT '對應小球賠率表id',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `moneyf` double(11,2) NOT NULL DEFAULT '0.00' COMMENT '下注前余额',
  `count_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '注单状态:0,未结算;1,已结算;3,已注销;4,已恢复;5,已撤销结算;6,已二次结算;',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `ag_uid` (`a_uid`,`b_uid`,`c_uid`,`d_uid`,`e_uid`),
  KEY `bet_time` (`bet_time`),
  KEY `gameinfo` (`game_code`,`type_code`,`happy8`),
  KEY `round` (`round`),
  KEY `count` (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=147869615 DEFAULT CHARSET=utf8 COMMENT='注单表';

-- ----------------------------
-- Table structure for ssc_bill_ag
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bill_ag`;
CREATE TABLE `ssc_bill_ag` (
  `billNo` varchar(30) NOT NULL COMMENT '注单号',
  `playerName` varchar(20) NOT NULL COMMENT '玩家账号',
  `agentCode` varchar(20) NOT NULL COMMENT '代理商编号',
  `gameCode` varchar(20) NOT NULL COMMENT '游戏局号',
  `netAmount` decimal(12,2) NOT NULL COMMENT '玩家输赢额度',
  `betTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '投注时间',
  `gameType` varchar(10) NOT NULL COMMENT '游戏类型',
  `betAmount` decimal(12,2) NOT NULL COMMENT '投注金额',
  `validBetAmount` decimal(12,2) NOT NULL COMMENT '有效投注额度',
  `flag` tinyint(4) NOT NULL COMMENT '结算状态',
  `playType` int(11) NOT NULL COMMENT '游戏玩法',
  `currency` varchar(10) NOT NULL COMMENT '货币类型',
  `tableCode` varchar(20) NOT NULL COMMENT '桌子编号',
  `loginIP` varchar(20) NOT NULL COMMENT '玩家IP',
  `recalcuTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '注单重新派彩时间',
  `platformId` varchar(10) NOT NULL COMMENT '平台编号(通常为空)',
  `platformType` varchar(10) NOT NULL COMMENT '平台类型',
  `stringex` varchar(20) NOT NULL COMMENT '产品附注(通常为空)',
  `remark` varchar(20) NOT NULL COMMENT '额外信息',
  `round` varchar(10) NOT NULL COMMENT '平台内的大厅类型',
  `localusername` varchar(20) NOT NULL COMMENT '会员账号',
  `slottype` varchar(20) NOT NULL COMMENT '老虎机类型',
  `mainbillno` varchar(20) NOT NULL COMMENT '主订单号',
  `beforeCerdit` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '玩家下注前的剩余额度',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0为未退水1为已退水',
  PRIMARY KEY (`billNo`),
  KEY `betTime` (`betTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_bill_ag_table
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bill_ag_table`;
CREATE TABLE `ssc_bill_ag_table` (
  `billNo` bigint(20) NOT NULL,
  `playerName` varchar(20) NOT NULL,
  `agentCode` varchar(20) NOT NULL,
  `gameCode` varchar(20) NOT NULL,
  `netAmount` decimal(12,2) NOT NULL,
  `betTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gameType` varchar(10) NOT NULL,
  `betAmount` decimal(12,2) NOT NULL,
  `validBetAmount` decimal(12,2) NOT NULL,
  `flag` tinyint(4) NOT NULL,
  `playType` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `tableCode` varchar(20) NOT NULL,
  `loginIP` varchar(20) NOT NULL,
  `recalcuTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `platformId` varchar(10) NOT NULL,
  `platformType` varchar(10) NOT NULL,
  `stringex` varchar(20) NOT NULL,
  `remark` varchar(20) NOT NULL,
  `round` varchar(10) NOT NULL,
  `localusername` varchar(20) NOT NULL,
  `a` int(11) NOT NULL DEFAULT '0',
  `b` int(11) NOT NULL DEFAULT '0',
  `c` int(11) NOT NULL DEFAULT '0',
  `d` int(11) NOT NULL DEFAULT '0',
  `e` int(11) NOT NULL DEFAULT '0',
  `A_Point` int(11) NOT NULL DEFAULT '0',
  `B_Point` int(11) NOT NULL DEFAULT '0',
  `C_Point` int(11) NOT NULL DEFAULT '0',
  `D_Point` int(11) NOT NULL DEFAULT '0',
  `E_Point` int(11) NOT NULL DEFAULT '0',
  `slottype` varchar(20) NOT NULL,
  `result` varchar(20) NOT NULL,
  `mainbillno` varchar(20) NOT NULL,
  `beforeCerdit` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`billNo`),
  KEY `playerName` (`playerName`),
  KEY `betTime` (`betTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_bill_ag_tranter
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bill_ag_tranter`;
CREATE TABLE `ssc_bill_ag_tranter` (
  `ID` varchar(30) NOT NULL,
  `agentCode` varchar(30) NOT NULL,
  `transferId` varchar(20) NOT NULL,
  `tradeNo` varchar(20) NOT NULL,
  `playerName` varchar(20) NOT NULL,
  `transferType` varchar(10) NOT NULL,
  `transferAmount` decimal(12,2) NOT NULL,
  `previousAmount` decimal(12,2) NOT NULL,
  `currentAmount` decimal(12,2) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `platformId` varchar(10) NOT NULL,
  `platformType` varchar(20) NOT NULL,
  `exchangeRate` int(11) NOT NULL DEFAULT '1',
  `IP` varchar(20) NOT NULL DEFAULT '0',
  `flag` int(11) NOT NULL DEFAULT '0',
  `creationTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gameCode` varchar(30) NOT NULL,
  `localusername` varchar(20) NOT NULL,
  `a` int(11) NOT NULL DEFAULT '0',
  `b` int(11) NOT NULL DEFAULT '0',
  `c` int(11) NOT NULL DEFAULT '0',
  `d` int(11) NOT NULL DEFAULT '0',
  `e` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `tradeNo` (`tradeNo`),
  KEY `transferId` (`transferId`),
  KEY `creationTime` (`creationTime`,`localusername`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_bill_bbin
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bill_bbin`;
CREATE TABLE `ssc_bill_bbin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `WagersID` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '注单号',
  `WagersDate` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '下注时间',
  `SerialID` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '局号',
  `RoundNo` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '场次',
  `GameType` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '游戏种类',
  `WagerDetail` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '玩法',
  `GameCode` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '桌号',
  `Result` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '开牌结果',
  `Card` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '结果牌',
  `BetAmount` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '下注金额',
  `Origin` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '下注的装置',
  `Commissionable` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '会员有效投注额',
  `Payoff` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '派彩金额',
  `Currency` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ExchangeRate` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '与人民币的汇率',
  `ResultType` varchar(255) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL COMMENT '注单结果（-1注销，0未结算）',
  `Subfix` varchar(2) CHARACTER SET utf8 NOT NULL COMMENT '前缀',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `WagersID` (`WagersID`),
  KEY `UserName` (`UserName`,`Subfix`)
) ENGINE=InnoDB AUTO_INCREMENT=217469881 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for ssc_bill_check
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bill_check`;
CREATE TABLE `ssc_bill_check` (
  `bill_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  UNIQUE KEY `bill_id` (`bill_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_bill_domain
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bill_domain`;
CREATE TABLE `ssc_bill_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??ID',
  `bill_id` bigint(11) NOT NULL DEFAULT '0' COMMENT 'ssc_bill.id',
  `domain` varchar(50) NOT NULL DEFAULT '' COMMENT '下注域名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25998833 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_bill_guest
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bill_guest`;
CREATE TABLE `ssc_bill_guest` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??ID',
  `session_id` varchar(32) NOT NULL DEFAULT '' COMMENT 'md5加密session_id',
  `bill_id` int(11) NOT NULL DEFAULT '0' COMMENT 'ssc_bill.id',
  `lcurrency` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '剩余额度',
  `created_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `modified_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后修改时间',
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `bill_id` (`bill_id`),
  KEY `modified_time` (`modified_time`)
) ENGINE=MyISAM AUTO_INCREMENT=852749 DEFAULT CHARSET=utf8 COMMENT='试玩注单';

-- ----------------------------
-- Table structure for ssc_bill_history
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bill_history`;
CREATE TABLE `ssc_bill_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL COMMENT '会员id',
  `username` char(20) NOT NULL COMMENT '会员帐号',
  `a_uid` int(11) NOT NULL DEFAULT '0' COMMENT '管理员id',
  `b_uid` int(11) NOT NULL DEFAULT '0' COMMENT '大股东id',
  `c_uid` int(11) NOT NULL DEFAULT '0' COMMENT '股东id',
  `d_uid` int(11) NOT NULL DEFAULT '0' COMMENT '总代理id',
  `e_uid` int(11) NOT NULL DEFAULT '0' COMMENT '代理id',
  `game_code` int(3) NOT NULL COMMENT '游戏代号',
  `type_code` int(6) NOT NULL COMMENT '下注类型代号',
  `happy8` int(6) NOT NULL COMMENT '类型的classid',
  `round` char(30) NOT NULL COMMENT '期数',
  `drop_money` double NOT NULL DEFAULT '0' COMMENT '下注金额',
  `drop_content` varchar(100) NOT NULL COMMENT '下注内容',
  `total` double NOT NULL DEFAULT '0' COMMENT '下注总额',
  `valid_money` double NOT NULL DEFAULT '0' COMMENT '有效金额',
  `user_win` double NOT NULL DEFAULT '0' COMMENT '会员输赢,不含退水',
  `user_cut` double NOT NULL DEFAULT '0' COMMENT '会员退水',
  `user_rate` double NOT NULL DEFAULT '0' COMMENT '赔率',
  `xq_rate` varchar(100) DEFAULT NULL COMMENT '小球過關賠率',
  `a_cut` double NOT NULL DEFAULT '0' COMMENT '管理员退水',
  `b_cut` double NOT NULL DEFAULT '0' COMMENT '大股东退水',
  `c_cut` double NOT NULL DEFAULT '0' COMMENT '股东退水',
  `d_cut` double NOT NULL DEFAULT '0' COMMENT '总代理退水',
  `e_cut` double NOT NULL DEFAULT '0' COMMENT '代理退水',
  `a_profit` double NOT NULL DEFAULT '0' COMMENT '管理员占成',
  `b_profit` double NOT NULL DEFAULT '0' COMMENT '大股东占成',
  `c_profit` double NOT NULL DEFAULT '0' COMMENT '股东占成',
  `d_profit` double NOT NULL DEFAULT '0' COMMENT '总代理占成',
  `e_profit` double NOT NULL DEFAULT '0' COMMENT '代理占成',
  `count_pay` int(3) NOT NULL DEFAULT '1' COMMENT '注数',
  `count` int(1) NOT NULL DEFAULT '0' COMMENT '是否结算',
  `cancel` int(1) NOT NULL DEFAULT '0' COMMENT '是否注销',
  `pankou` char(5) NOT NULL DEFAULT '' COMMENT '下注盘口',
  `cp_type` int(3) NOT NULL DEFAULT '0' COMMENT '注销理由',
  `bet_ip` varchar(20) NOT NULL COMMENT '下注ip',
  `bet_time` int(11) NOT NULL DEFAULT '0' COMMENT '下注时间',
  `replenishtype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '如果为0就不是补货，1代理补货，2总代补货，3股东补货，4分公司补货',
  `m_name` varchar(200) DEFAULT NULL,
  `xq_de_id` int(11) NOT NULL DEFAULT '0' COMMENT '對應小球賠率表id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0为没有反水，1为已经反水',
  `moneyf` double(11,2) NOT NULL DEFAULT '0.00' COMMENT '下注前余额',
  `count_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '注单状态:0,未结算;1,已结算;3,已注销;4,已恢复;5,已撤销结算;6,已二次结算;',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `ag_uid` (`a_uid`,`b_uid`,`c_uid`,`d_uid`,`e_uid`),
  KEY `bet_time` (`bet_time`),
  KEY `gameinfo` (`game_code`,`type_code`,`happy8`),
  KEY `round` (`round`),
  KEY `count` (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=144648945 DEFAULT CHARSET=utf8 COMMENT='注单表';

-- ----------------------------
-- Table structure for ssc_bill_log
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bill_log`;
CREATE TABLE `ssc_bill_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL COMMENT '会员id',
  `username` char(20) NOT NULL COMMENT '会员帐号',
  `a_uid` int(11) NOT NULL DEFAULT '0' COMMENT '管理员id',
  `b_uid` int(11) NOT NULL DEFAULT '0' COMMENT '大股东id',
  `c_uid` int(11) NOT NULL DEFAULT '0' COMMENT '股东id',
  `d_uid` int(11) NOT NULL DEFAULT '0' COMMENT '总代理id',
  `e_uid` int(11) NOT NULL DEFAULT '0' COMMENT '代理id',
  `game_code` int(3) NOT NULL COMMENT '游戏代号',
  `type_code` int(6) NOT NULL COMMENT '下注类型代号',
  `happy8` int(6) NOT NULL COMMENT '类型的classid',
  `round` char(30) NOT NULL COMMENT '期数',
  `drop_money` double NOT NULL DEFAULT '0' COMMENT '下注金额',
  `drop_content` varchar(100) NOT NULL COMMENT '下注内容',
  `total` double NOT NULL DEFAULT '0' COMMENT '下注总额',
  `valid_money` double NOT NULL DEFAULT '0' COMMENT '有效金额',
  `user_win` double NOT NULL DEFAULT '0' COMMENT '会员输赢,不含退水',
  `user_cut` double NOT NULL DEFAULT '0' COMMENT '会员退水',
  `user_rate` double NOT NULL DEFAULT '0' COMMENT '赔率',
  `xq_rate` varchar(100) DEFAULT NULL COMMENT '小球過關賠率',
  `a_cut` double NOT NULL DEFAULT '0' COMMENT '管理员退水',
  `b_cut` double NOT NULL DEFAULT '0' COMMENT '大股东退水',
  `c_cut` double NOT NULL DEFAULT '0' COMMENT '股东退水',
  `d_cut` double NOT NULL DEFAULT '0' COMMENT '总代理退水',
  `e_cut` double NOT NULL DEFAULT '0' COMMENT '代理退水',
  `a_profit` double NOT NULL DEFAULT '0' COMMENT '管理员占成',
  `b_profit` double NOT NULL DEFAULT '0' COMMENT '大股东占成',
  `c_profit` double NOT NULL DEFAULT '0' COMMENT '股东占成',
  `d_profit` double NOT NULL DEFAULT '0' COMMENT '总代理占成',
  `e_profit` double NOT NULL DEFAULT '0' COMMENT '代理占成',
  `count_pay` int(3) NOT NULL DEFAULT '1' COMMENT '注数',
  `count` int(1) NOT NULL DEFAULT '0' COMMENT '是否结算',
  `cancel` int(1) NOT NULL DEFAULT '0' COMMENT '是否注销',
  `pankou` char(5) NOT NULL DEFAULT '' COMMENT '下注盘口',
  `cp_type` int(3) NOT NULL DEFAULT '0' COMMENT '注销理由',
  `bet_ip` varchar(20) NOT NULL COMMENT '下注ip',
  `bet_time` int(11) NOT NULL DEFAULT '0' COMMENT '下注时间',
  `replenishtype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '如果为0就不是补货，1代理补货，2总代补货，3股东补货，4分公司补货',
  `m_name` varchar(200) NOT NULL,
  `xq_de_id` int(11) NOT NULL DEFAULT '0' COMMENT '對應小球賠率表id',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `ag_uid` (`a_uid`,`b_uid`,`c_uid`,`d_uid`,`e_uid`),
  KEY `bet_time` (`bet_time`),
  KEY `gameinfo` (`game_code`,`type_code`,`happy8`),
  KEY `round` (`round`),
  KEY `count` (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=14076052 DEFAULT CHARSET=utf8 COMMENT='注单表';

-- ----------------------------
-- Table structure for ssc_bill_sum
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bill_sum`;
CREATE TABLE `ssc_bill_sum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??ID',
  `utype` char(50) NOT NULL DEFAULT '' COMMENT '类型',
  `topusertype` tinyint(2) NOT NULL DEFAULT '99' COMMENT '用户类型',
  `topname` char(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `downtype` char(50) NOT NULL DEFAULT '' COMMENT '类型',
  `bet_mems` int(11) NOT NULL DEFAULT '0' COMMENT '下注总会员',
  `ruserid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `username` char(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `realname` char(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `usertype` tinyint(2) NOT NULL DEFAULT '99' COMMENT '用户类型',
  `rnums` int(11) NOT NULL DEFAULT '0' COMMENT '注单数',
  `mytuishui` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '实占退水',
  `usershui` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '用户退水',
  `totalmoney` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '有效金额',
  `user_win1` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '会员输赢',
  `mymoney` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '实占金额',
  `payforparent` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '应付上级',
  `realwin` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '实占输赢',
  `payfordown` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '应收下线',
  `payfordownshui` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '应收下线退水',
  `forparent` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '贡献上级',
  `getshui` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT '赚取退水',
  `memnums` int(11) NOT NULL DEFAULT '0' COMMENT '会员数',
  `hasadd` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否是直属会员',
  `q2_parentid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `q2_rnums` int(11) NOT NULL DEFAULT '0',
  `q2_totalmoney` decimal(14,2) NOT NULL DEFAULT '0.00',
  `q2_user_win1` decimal(14,2) NOT NULL DEFAULT '0.00',
  `q2_tuishui` decimal(14,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL DEFAULT '1970-01-01' COMMENT '日期',
  `created_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ruserid` (`ruserid`,`date`),
  KEY `index_username` (`username`),
  KEY `index_topname` (`topname`),
  KEY `index_date` (`date`),
  KEY `index_user_win1` (`user_win1`),
  KEY `index_created_time` (`created_time`),
  KEY `index_ruserid` (`ruserid`)
) ENGINE=MyISAM AUTO_INCREMENT=1176630 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_bill_tp
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bill_tp`;
CREATE TABLE `ssc_bill_tp` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL COMMENT '会员id',
  `game_code` int(3) NOT NULL COMMENT '游戏代号',
  `type_code` int(6) NOT NULL COMMENT '下注类型代号',
  `happy8` int(6) NOT NULL COMMENT '类型的classid',
  `round` char(30) NOT NULL COMMENT '期数',
  `drop_money` double NOT NULL DEFAULT '0' COMMENT '下注金额',
  `drop_content` varchar(100) NOT NULL COMMENT '下注内容',
  `total` double NOT NULL DEFAULT '0' COMMENT '下注总额',
  `valid_money` double NOT NULL DEFAULT '0' COMMENT '有效金额',
  `user_win` double NOT NULL DEFAULT '0' COMMENT '会员输赢,不含退水',
  `user_cut` double NOT NULL DEFAULT '0' COMMENT '会员退水',
  `user_rate` double NOT NULL DEFAULT '0' COMMENT '赔率',
  `xq_rate` varchar(100) DEFAULT NULL COMMENT '小球過關賠率',
  `count_pay` int(3) NOT NULL DEFAULT '1' COMMENT '注数',
  `count` int(1) NOT NULL DEFAULT '0' COMMENT '是否结算',
  `bet_time` int(11) NOT NULL DEFAULT '0' COMMENT '下注时间',
  `up_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dispose` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否处理',
  KEY `userid` (`userid`),
  KEY `bet_time` (`bet_time`),
  KEY `gameinfo` (`game_code`,`type_code`,`happy8`),
  KEY `round` (`round`),
  KEY `count` (`count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='注单表';

-- ----------------------------
-- Table structure for ssc_bribery_money_ali
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bribery_money_ali`;
CREATE TABLE `ssc_bribery_money_ali` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??id',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '此红包的总额',
  `total_last` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '剩余的总额',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '份数',
  `num_last` int(11) NOT NULL DEFAULT '1' COMMENT '剩余份数',
  `min` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '每份下限',
  `max` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '每份上限',
  `created_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `bonus_time` int(11) NOT NULL DEFAULT '0' COMMENT '活动时间',
  `modified_time` int(11) NOT NULL DEFAULT '0' COMMENT '最近一次被领取的时间',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_bribery_money_record_668
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bribery_money_record_668`;
CREATE TABLE `ssc_bribery_money_record_668` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??id',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT 'ssc_user表的id',
  `real_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户姓名',
  `inMoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '存款金额',
  `betMoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '下注金额',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `ip` varchar(20) NOT NULL DEFAULT '' COMMENT '用户IP',
  `startTime` int(11) NOT NULL DEFAULT '0' COMMENT '计算开始时间',
  `endTime` int(11) NOT NULL DEFAULT '0' COMMENT '计算结束时间',
  `created_time` int(11) NOT NULL DEFAULT '0' COMMENT '领取时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_bribery_money_record_ali
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bribery_money_record_ali`;
CREATE TABLE `ssc_bribery_money_record_ali` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??id',
  `bribery_money_id` int(11) NOT NULL DEFAULT '0' COMMENT 'bribery_money表的id',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT 'ssc_user表的id',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `created_time` int(11) NOT NULL DEFAULT '0' COMMENT '领取时间',
  `ip` varchar(20) NOT NULL DEFAULT '' COMMENT '用户IP',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `created_time` (`created_time`),
  KEY `bribery_money_id` (`bribery_money_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12918 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_bribery_money_record_bank
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bribery_money_record_bank`;
CREATE TABLE `ssc_bribery_money_record_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??id',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT 'ssc_user表的id',
  `bank_code` varchar(50) NOT NULL DEFAULT '' COMMENT '提款账号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_bribery_money_record_ly
-- ----------------------------
DROP TABLE IF EXISTS `ssc_bribery_money_record_ly`;
CREATE TABLE `ssc_bribery_money_record_ly` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??id',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT 'ssc_user表的id',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `total_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '存款总金额',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '领取金额',
  `created_time` int(11) NOT NULL DEFAULT '0' COMMENT '领取时间',
  `bank_code` varchar(50) NOT NULL DEFAULT '' COMMENT '提款账号',
  `ip` varchar(20) NOT NULL DEFAULT '' COMMENT '用户IP',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_cache_control
-- ----------------------------
DROP TABLE IF EXISTS `ssc_cache_control`;
CREATE TABLE `ssc_cache_control` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_code` int(11) NOT NULL DEFAULT '0' COMMENT '1为结算',
  `ltime` int(11) NOT NULL DEFAULT '0' COMMENT '最后开奖时间',
  PRIMARY KEY (`id`),
  KEY `game_code` (`game_code`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_cashpw
-- ----------------------------
DROP TABLE IF EXISTS `ssc_cashpw`;
CREATE TABLE `ssc_cashpw` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `cashpw` varchar(40) NOT NULL COMMENT '操作密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for ssc_changlog
-- ----------------------------
DROP TABLE IF EXISTS `ssc_changlog`;
CREATE TABLE `ssc_changlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chguserid` int(11) NOT NULL COMMENT '被修改人ID',
  `chgtype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '修改类型，0为退水，1为赔率，2为自动补货设置,4查看即使主单',
  `userid` int(11) NOT NULL COMMENT '修改人ID',
  `connect` varchar(255) NOT NULL COMMENT '变更内容',
  `chgtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `oldval` text NOT NULL COMMENT '原始值',
  `newval` text NOT NULL COMMENT '新设值',
  `ip` bigint(20) NOT NULL COMMENT 'ip地址',
  `ipaddr` varchar(255) NOT NULL COMMENT 'IP归属',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `chgtime` (`chgtime`)
) ENGINE=MyISAM AUTO_INCREMENT=852069 DEFAULT CHARSET=utf8 COMMENT='后台用户日志';

-- ----------------------------
-- Table structure for ssc_dandanopen
-- ----------------------------
DROP TABLE IF EXISTS `ssc_dandanopen`;
CREATE TABLE `ssc_dandanopen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round` varchar(100) NOT NULL DEFAULT '0' COMMENT '期数',
  `game_code` int(3) NOT NULL COMMENT '游戏代号',
  `endtime` int(11) NOT NULL COMMENT '结束时间',
  `roundtime` int(11) NOT NULL COMMENT '游戏时间',
  `number` varchar(255) NOT NULL DEFAULT '' COMMENT '开奖号码',
  `number_sec` varchar(255) DEFAULT NULL COMMENT '二次答案',
  `total` int(11) NOT NULL DEFAULT '0' COMMENT '总和',
  `passed` int(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `endtime` (`endtime`),
  KEY `round` (`game_code`,`round`(20))
) ENGINE=MyISAM AUTO_INCREMENT=79120 DEFAULT CHARSET=utf8 COMMENT='PC蛋蛋开奖';

-- ----------------------------
-- Table structure for ssc_defaultpower
-- ----------------------------
DROP TABLE IF EXISTS `ssc_defaultpower`;
CREATE TABLE `ssc_defaultpower` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usertype` tinyint(4) NOT NULL COMMENT '用户类型',
  `power` varchar(255) NOT NULL COMMENT '用户权限类型，如果用户表没有定义，以该表的权限为准，否则，以用户表为准',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='默认权限表，对应各个级别';

-- ----------------------------
-- Table structure for ssc_defaultusersetting
-- ----------------------------
DROP TABLE IF EXISTS `ssc_defaultusersetting`;
CREATE TABLE `ssc_defaultusersetting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL COMMENT '用户ID，对应ssc_user里面的管理员，如果为0，则对应总后台',
  `gamecode` int(11) NOT NULL,
  `gametype` int(11) NOT NULL,
  `ratea` varchar(150) NOT NULL COMMENT 'a盘赔率',
  `rateb` varchar(150) NOT NULL COMMENT 'b盘赔率',
  `ratec` varchar(150) NOT NULL COMMENT 'C盘赔率',
  `positiona` varchar(10) NOT NULL DEFAULT '0' COMMENT 'A盘退水',
  `positionb` varchar(10) NOT NULL DEFAULT '0' COMMENT 'B盘退水',
  `positionc` varchar(10) NOT NULL DEFAULT '0' COMMENT 'C盘退水',
  `gamemin` int(10) unsigned NOT NULL COMMENT '单注最高',
  `gamemax` int(10) unsigned NOT NULL COMMENT '单期限额',
  `rateamax` varchar(150) NOT NULL COMMENT 'A盘上限',
  `downrate` varchar(150) NOT NULL COMMENT '自动降赔率额度（实货）',
  `downvalue` varchar(150) NOT NULL COMMENT '每次降的赔率值',
  `onemin` int(11) NOT NULL DEFAULT '1' COMMENT '单注最低',
  `accessbet` int(11) NOT NULL COMMENT '公司接受注额（实货）',
  `maxpay` int(11) NOT NULL COMMENT '最高派彩',
  `alertmoney` int(11) NOT NULL COMMENT '负值超额警示',
  `ratebdown` varchar(150) NOT NULL DEFAULT '0' COMMENT 'B盘对应A盘的下降值，判断最高赔率的时候用',
  `ratecdown` varchar(150) NOT NULL DEFAULT '0' COMMENT 'C盘对应A盘的下降值，判断最高赔率的时候用',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`,`gametype`)
) ENGINE=MyISAM AUTO_INCREMENT=2346 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_dropmoney_count
-- ----------------------------
DROP TABLE IF EXISTS `ssc_dropmoney_count`;
CREATE TABLE `ssc_dropmoney_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `drop_date` date NOT NULL COMMENT '按日统计',
  `drop_money_count` double NOT NULL COMMENT '单日下注总和',
  `user_win_count` double(12,3) NOT NULL DEFAULT '0.000' COMMENT '统计用户每日输赢',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`,`drop_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_duanwuhongbao
-- ----------------------------
DROP TABLE IF EXISTS `ssc_duanwuhongbao`;
CREATE TABLE `ssc_duanwuhongbao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??ID',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `blacklist` text NOT NULL COMMENT '黑名单',
  `whitelist` text NOT NULL COMMENT '白名单',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开/关,1/0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_eleven_open
-- ----------------------------
DROP TABLE IF EXISTS `ssc_eleven_open`;
CREATE TABLE `ssc_eleven_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round` varchar(20) NOT NULL DEFAULT '0' COMMENT '期数',
  `game_code` int(3) NOT NULL COMMENT '游戏代号',
  `endtime` int(11) NOT NULL COMMENT '结束时间',
  `roundtime` int(11) NOT NULL COMMENT '游戏时间',
  `number` varchar(20) NOT NULL DEFAULT '' COMMENT '开奖号码',
  `number_sec` varchar(20) DEFAULT NULL COMMENT '二次答案',
  `total` int(3) NOT NULL DEFAULT '0' COMMENT '总和',
  `passed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `game_code` (`game_code`,`round`),
  KEY `endtime` (`endtime`),
  KEY `round` (`game_code`,`round`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广东11选5开奖';

-- ----------------------------
-- Table structure for ssc_feitingopen
-- ----------------------------
DROP TABLE IF EXISTS `ssc_feitingopen`;
CREATE TABLE `ssc_feitingopen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round` varchar(100) NOT NULL DEFAULT '0' COMMENT '期数',
  `game_code` int(3) NOT NULL COMMENT '游戏代号',
  `endtime` int(11) NOT NULL COMMENT '结束时间',
  `roundtime` int(11) NOT NULL COMMENT '游戏时间',
  `number` varchar(255) NOT NULL DEFAULT '' COMMENT '开奖答案',
  `number_sec` varchar(255) DEFAULT NULL COMMENT '二次答案',
  `total` int(11) NOT NULL DEFAULT '0' COMMENT '总和',
  `passed` int(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `endtime` (`endtime`),
  KEY `round` (`game_code`,`round`(20))
) ENGINE=MyISAM AUTO_INCREMENT=180 DEFAULT CHARSET=utf8 COMMENT='北京赛车开答';

-- ----------------------------
-- Table structure for ssc_fiveopen
-- ----------------------------
DROP TABLE IF EXISTS `ssc_fiveopen`;
CREATE TABLE `ssc_fiveopen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round` varchar(100) NOT NULL DEFAULT '0' COMMENT '期数',
  `game_code` int(3) NOT NULL COMMENT '游戏代号',
  `endtime` int(11) NOT NULL COMMENT '结束时间',
  `roundtime` int(11) NOT NULL COMMENT '游戏时间',
  `number` varchar(255) NOT NULL DEFAULT '' COMMENT '开奖答案',
  `number_sec` varchar(255) DEFAULT NULL COMMENT '二次答案',
  `total` int(11) NOT NULL DEFAULT '0' COMMENT '总和',
  `passed` int(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `endtime` (`endtime`),
  KEY `round` (`game_code`,`round`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='11选5开答';

-- ----------------------------
-- Table structure for ssc_follow
-- ----------------------------
DROP TABLE IF EXISTS `ssc_follow`;
CREATE TABLE `ssc_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mas_userid` int(11) NOT NULL COMMENT '主帐号的ID',
  `mas_username` varchar(30) NOT NULL COMMENT '主用户名',
  `follow_userid` int(11) NOT NULL COMMENT '从用户ID',
  `follow_username` varchar(30) NOT NULL COMMENT '从用户名',
  `follow_games` varchar(20) NOT NULL COMMENT '跟随的游戏',
  `probability` tinyint(4) NOT NULL DEFAULT '50' COMMENT '跟单概率，0-100',
  `delay_time` varchar(10) NOT NULL COMMENT '从用户下注延迟',
  `mas_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '主帐号状态',
  `follow_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '从帐号状态',
  `multiple` varchar(5) NOT NULL DEFAULT '1' COMMENT '倍数',
  `bet_url` varchar(50) NOT NULL DEFAULT 'http://111.svv8888.com' COMMENT '登录网址',
  `bet_ip` varchar(20) NOT NULL DEFAULT '222.101.10.8' COMMENT '下注ip',
  PRIMARY KEY (`id`),
  KEY `mas_userid` (`mas_userid`),
  KEY `mas_username` (`mas_username`),
  KEY `follow_userid` (`follow_userid`),
  KEY `follow_username` (`follow_username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_ip_allow
-- ----------------------------
DROP TABLE IF EXISTS `ssc_ip_allow`;
CREATE TABLE `ssc_ip_allow` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??ID',
  `ip` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '允许的IP',
  `opuserid` int(11) NOT NULL DEFAULT '0' COMMENT '操作人',
  `created_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `opuserid` (`opuserid`),
  KEY `created_time` (`created_time`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='允许的IP';

-- ----------------------------
-- Table structure for ssc_k8open
-- ----------------------------
DROP TABLE IF EXISTS `ssc_k8open`;
CREATE TABLE `ssc_k8open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round` varchar(100) NOT NULL DEFAULT '0' COMMENT '期数',
  `game_code` int(3) NOT NULL COMMENT '游戏代号',
  `endtime` int(11) NOT NULL COMMENT '结束时间',
  `roundtime` int(11) NOT NULL COMMENT '游戏时间',
  `number` varchar(255) NOT NULL DEFAULT '' COMMENT '开奖号码',
  `number_sec` varchar(255) DEFAULT NULL COMMENT '二次答案',
  `total` int(11) NOT NULL DEFAULT '0' COMMENT '总和',
  `passed` int(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `endtime` (`endtime`),
  KEY `round` (`game_code`,`round`(20))
) ENGINE=MyISAM AUTO_INCREMENT=35264 DEFAULT CHARSET=utf8 COMMENT='北京快乐8开奖';

-- ----------------------------
-- Table structure for ssc_kuaisanopen
-- ----------------------------
DROP TABLE IF EXISTS `ssc_kuaisanopen`;
CREATE TABLE `ssc_kuaisanopen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round` varchar(100) NOT NULL DEFAULT '0' COMMENT '期数',
  `game_code` int(3) NOT NULL COMMENT '游戏代号',
  `endtime` int(11) NOT NULL COMMENT '结束时间',
  `roundtime` int(11) NOT NULL COMMENT '游戏时间',
  `number` varchar(255) NOT NULL DEFAULT '' COMMENT '开奖号码',
  `number_sec` varchar(255) DEFAULT NULL COMMENT '二次答案',
  `total` int(11) NOT NULL DEFAULT '0' COMMENT '总和',
  `passed` int(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `endtime` (`endtime`),
  KEY `round` (`game_code`,`round`(20))
) ENGINE=MyISAM AUTO_INCREMENT=31407 DEFAULT CHARSET=utf8 COMMENT='快乐十分开答';

-- ----------------------------
-- Table structure for ssc_level
-- ----------------------------
DROP TABLE IF EXISTS `ssc_level`;
CREATE TABLE `ssc_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `levelname` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='层级';

-- ----------------------------
-- Table structure for ssc_loginlog
-- ----------------------------
DROP TABLE IF EXISTS `ssc_loginlog`;
CREATE TABLE `ssc_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL COMMENT 'ip的地址',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `logintime` (`logintime`)
) ENGINE=MyISAM AUTO_INCREMENT=9468434 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_maintenance
-- ----------------------------
DROP TABLE IF EXISTS `ssc_maintenance`;
CREATE TABLE `ssc_maintenance` (
  `id` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '维护状态:1维护中,0未维护',
  `bbin_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Bbin维护状态:1维护中,0未维护',
  `ag_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0,正常;1维护',
  `sports_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0,正常;1维护',
  `bbin_maintenance_manual` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'bbin当前维护状态是否是手动开启的,1:是,0,否',
  `mg_status` tinyint(4) NOT NULL DEFAULT '0',
  `bbin2cp_page` int(11) NOT NULL DEFAULT '0' COMMENT 'BBin资金归集当前页数,用于sql的limit',
  `last_saved_id` int(10) NOT NULL DEFAULT '0' COMMENT '上一次保存的ssc_bill.id',
  `saving` tinyint(1) NOT NULL DEFAULT '0' COMMENT '正在保存到html...',
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_menu
-- ----------------------------
DROP TABLE IF EXISTS `ssc_menu`;
CREATE TABLE `ssc_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT 'id of parent menu',
  `name` char(32) NOT NULL DEFAULT '' COMMENT 'menu name',
  `key` char(32) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url,example:/admin/menu/index',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_mg_games
-- ----------------------------
DROP TABLE IF EXISTS `ssc_mg_games`;
CREATE TABLE `ssc_mg_games` (
  `game_id` int(11) NOT NULL,
  `swa_id` int(11) NOT NULL,
  `game_name` varchar(30) NOT NULL,
  `game_type` varchar(30) NOT NULL,
  `game_type_id` tinyint(4) NOT NULL,
  `game_category` varchar(30) NOT NULL,
  `sub_category` varchar(30) NOT NULL,
  `name_cn` varchar(30) NOT NULL,
  `launch_id` varchar(30) NOT NULL,
  `game_img` varchar(50) NOT NULL,
  `is_cn` tinyint(1) NOT NULL DEFAULT '0',
  `is_html5` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`game_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_mg_games_cgs
-- ----------------------------
DROP TABLE IF EXISTS `ssc_mg_games_cgs`;
CREATE TABLE `ssc_mg_games_cgs` (
  `id` int(11) NOT NULL,
  `cgs_name` varchar(30) NOT NULL DEFAULT '',
  `game_ids` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_moneylog
-- ----------------------------
DROP TABLE IF EXISTS `ssc_moneylog`;
CREATE TABLE `ssc_moneylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `moneyf` double(12,3) NOT NULL DEFAULT '0.000',
  `money` double(12,3) NOT NULL DEFAULT '0.000' COMMENT '操作金额',
  `moneys` double(12,3) NOT NULL DEFAULT '0.000',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '0:下注,1:结算.2:上级加减.3:注销注单.4:注销恢复.5:撤销结算.6:二次结算',
  `bill_id` int(11) NOT NULL COMMENT '注单id',
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`,`type`,`bill_id`)
) ENGINE=MyISAM AUTO_INCREMENT=295742522 DEFAULT CHARSET=utf8 COMMENT='金额记录';

-- ----------------------------
-- Table structure for ssc_moneylog_history
-- ----------------------------
DROP TABLE IF EXISTS `ssc_moneylog_history`;
CREATE TABLE `ssc_moneylog_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `moneyf` double(12,3) NOT NULL DEFAULT '0.000',
  `money` double(12,3) NOT NULL DEFAULT '0.000' COMMENT '操作金额',
  `moneys` double(12,3) NOT NULL DEFAULT '0.000',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '0:下注,1:结算.2:上级加减.3:注销注单.4:注销恢复.5:撤销结算.6:二次结算',
  `bill_id` int(11) NOT NULL COMMENT '注单id',
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`,`type`,`bill_id`)
) ENGINE=MyISAM AUTO_INCREMENT=289144622 DEFAULT CHARSET=utf8 COMMENT='金额记录';

-- ----------------------------
-- Table structure for ssc_money_change
-- ----------------------------
DROP TABLE IF EXISTS `ssc_money_change`;
CREATE TABLE `ssc_money_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??ID',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '交易时间',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '交易金额',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12864 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_money_restore
-- ----------------------------
DROP TABLE IF EXISTS `ssc_money_restore`;
CREATE TABLE `ssc_money_restore` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `opuserid` int(11) NOT NULL DEFAULT '0' COMMENT '操作人用户ID',
  `created_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_online
-- ----------------------------
DROP TABLE IF EXISTS `ssc_online`;
CREATE TABLE `ssc_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `session_id` char(32) DEFAULT NULL COMMENT 'md5 加密 session_id',
  `usertype` tinyint(4) NOT NULL COMMENT '用户类型',
  `online` tinyint(4) NOT NULL DEFAULT '1',
  `ip` bigint(20) NOT NULL COMMENT '本次登录的ip地址',
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登录时间',
  `sesstime` int(11) NOT NULL DEFAULT '0' COMMENT '最后一次动作的时间',
  `website` varchar(50) NOT NULL COMMENT '域名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='在线用户表';

-- ----------------------------
-- Table structure for ssc_open_tmp
-- ----------------------------
DROP TABLE IF EXISTS `ssc_open_tmp`;
CREATE TABLE `ssc_open_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inused` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_op_log
-- ----------------------------
DROP TABLE IF EXISTS `ssc_op_log`;
CREATE TABLE `ssc_op_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??ID',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `content` text NOT NULL COMMENT '内容',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型',
  `op` tinyint(4) NOT NULL DEFAULT '0' COMMENT '操作:1,增;2,删;3,改;4,查;',
  `ip` varchar(100) NOT NULL DEFAULT '' COMMENT 'IP地址',
  `created_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=722474 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_order_allocate
-- ----------------------------
DROP TABLE IF EXISTS `ssc_order_allocate`;
CREATE TABLE `ssc_order_allocate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deposit` tinyint(4) NOT NULL COMMENT '存款分流计数',
  `withdrawals` tinyint(4) NOT NULL COMMENT '取款分流计数',
  `maxlevel_w` tinyint(4) NOT NULL,
  `maxlevel_d` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_pay
-- ----------------------------
DROP TABLE IF EXISTS `ssc_pay`;
CREATE TABLE `ssc_pay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_company` tinyint(1) NOT NULL DEFAULT '1' COMMENT '网银名称',
  `business_code` varchar(50) NOT NULL COMMENT '商户号',
  `business_pwd` text NOT NULL COMMENT '商户密匙',
  `url` varchar(200) NOT NULL COMMENT '支付地址',
  `baofooid` varchar(30) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '启用状态',
  `pay_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '支付类型:0 网银,1 支付宝,2 微信',
  `recharge_offer` decimal(4,2) NOT NULL DEFAULT '0.00' COMMENT '在线支付优惠百分比',
  `notify_url` varchar(255) NOT NULL DEFAULT '' COMMENT '通知地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=217 DEFAULT CHARSET=utf8 COMMENT='网银配置';

-- ----------------------------
-- Table structure for ssc_pay_amount_log
-- ----------------------------
DROP TABLE IF EXISTS `ssc_pay_amount_log`;
CREATE TABLE `ssc_pay_amount_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '代理名字',
  `userid` int(11) NOT NULL,
  `money` float NOT NULL,
  `addtime` int(10) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代理充值优惠表';

-- ----------------------------
-- Table structure for ssc_pay_order
-- ----------------------------
DROP TABLE IF EXISTS `ssc_pay_order`;
CREATE TABLE `ssc_pay_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??id',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '本次支付金额',
  `order_number` varchar(255) NOT NULL DEFAULT '' COMMENT '订单号',
  `created_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `pay_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '支付类型:0 网银,1 支付宝,2 微信',
  `pay_id` int(11) NOT NULL DEFAULT '0' COMMENT 'ssc_pay.id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `transfer` tinyint(2) NOT NULL DEFAULT '0' COMMENT '额度转换类型,0-不转换,1-AG,2-MG',
  PRIMARY KEY (`id`),
  KEY `order_number` (`order_number`)
) ENGINE=MyISAM AUTO_INCREMENT=1350924 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_pay_record
-- ----------------------------
DROP TABLE IF EXISTS `ssc_pay_record`;
CREATE TABLE `ssc_pay_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_code` varchar(50) NOT NULL COMMENT '订单号',
  `type_code` int(1) NOT NULL DEFAULT '0' COMMENT '类型,0存入,1提出',
  `pay_way` int(2) NOT NULL DEFAULT '0' COMMENT '付款方式',
  `account_company` varchar(50) NOT NULL COMMENT '商户号',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '交易时间',
  `date` date NOT NULL,
  `userid` int(11) NOT NULL COMMENT '交易会员id',
  `opuserid` int(11) NOT NULL COMMENT '操作人id',
  `money` double(11,2) NOT NULL COMMENT '交易金额',
  `moneyf` double(11,2) NOT NULL DEFAULT '0.00',
  `bank_id` tinyint(4) NOT NULL,
  `moneys` double(11,2) NOT NULL DEFAULT '0.00',
  `bank_account` varchar(50) NOT NULL COMMENT '银行账户',
  `bank_name` varchar(20) NOT NULL COMMENT '开户人名称',
  `bank_address` varchar(200) NOT NULL COMMENT '银行地址',
  `bank_code` varchar(50) NOT NULL COMMENT '银行名称',
  `memo` varchar(200) NOT NULL COMMENT '备注',
  `context` varchar(200) NOT NULL COMMENT '操作理由',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未处理1已处理',
  `is_clear` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0失败1成功',
  `allocate` int(10) NOT NULL DEFAULT '0' COMMENT '订单分流',
  `recharge_offer` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '存款优惠金额',
  `fuyan` varchar(10) NOT NULL COMMENT '附言,为自动入款服务',
  `xiafa` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0为手动出款，1为自动出款',
  `backwater` tinyint(1) DEFAULT '0' COMMENT '代理存款优惠状态，0为未下发，1为已下发',
  `last_ag_transfer_id` varchar(50) NOT NULL DEFAULT '' COMMENT '最后一次额度转换时的TransferID',
  `is_verified` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已审核,0:未审核,1:已审核',
  `verifier_id` int(11) NOT NULL DEFAULT '0' COMMENT '审核者id',
  `last_out_ssc_pay_id` int(4) NOT NULL DEFAULT '0' COMMENT 'ssc_pay.id',
  `has_sent` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已发送',
  `auto_withdraw` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否需要使用自动出款',
  `transfer` tinyint(2) NOT NULL DEFAULT '0' COMMENT '额度转换类型,0-不转换,1-AG,2-MG',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_code` (`order_code`,`type_code`,`pay_way`,`userid`),
  KEY `userid` (`userid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM AUTO_INCREMENT=1961176 DEFAULT CHARSET=utf8 COMMENT='汇款明细';

-- ----------------------------
-- Table structure for ssc_pay_youhui_log
-- ----------------------------
DROP TABLE IF EXISTS `ssc_pay_youhui_log`;
CREATE TABLE `ssc_pay_youhui_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '代理名字',
  `userid` int(11) NOT NULL,
  `money` float NOT NULL,
  `addtime` int(10) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='代理充值优惠表';

-- ----------------------------
-- Table structure for ssc_power
-- ----------------------------
DROP TABLE IF EXISTS `ssc_power`;
CREATE TABLE `ssc_power` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `powername` varchar(20) NOT NULL COMMENT '权限名称',
  `powerurl` varchar(255) NOT NULL COMMENT '权限地址',
  `paddtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `padduser` int(11) NOT NULL COMMENT '添加者',
  `admin_only` tinyint(1) NOT NULL DEFAULT '0' COMMENT '只有管理员才能有的权限',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否为js',
  `class` varchar(10) NOT NULL COMMENT 'CSS类名',
  `is_menu` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是菜单1为是',
  `dept` tinyint(4) NOT NULL COMMENT '深度0为顶级菜单，1为子菜单',
  `parentid` int(11) NOT NULL COMMENT '父级菜单的ID',
  `orders` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='权限表，保存后台权限及路径';

-- ----------------------------
-- Table structure for ssc_reg_ip
-- ----------------------------
DROP TABLE IF EXISTS `ssc_reg_ip`;
CREATE TABLE `ssc_reg_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??id',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `ip` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '注册IP',
  `created_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `domain` varchar(50) NOT NULL DEFAULT '' COMMENT '注册域名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55892 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_saicheopen
-- ----------------------------
DROP TABLE IF EXISTS `ssc_saicheopen`;
CREATE TABLE `ssc_saicheopen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round` varchar(100) NOT NULL DEFAULT '0' COMMENT '期数',
  `game_code` int(3) NOT NULL COMMENT '游戏代号',
  `endtime` int(11) NOT NULL COMMENT '结束时间',
  `roundtime` int(11) NOT NULL COMMENT '游戏时间',
  `number` varchar(255) NOT NULL DEFAULT '' COMMENT '开奖号码',
  `number_sec` varchar(255) DEFAULT NULL COMMENT '二次答案',
  `total` int(11) NOT NULL DEFAULT '0' COMMENT '总和',
  `passed` int(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `endtime` (`endtime`),
  KEY `round` (`game_code`,`round`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='北京赛车开答';

-- ----------------------------
-- Table structure for ssc_sound
-- ----------------------------
DROP TABLE IF EXISTS `ssc_sound`;
CREATE TABLE `ssc_sound` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??id',
  `swf` varchar(50) NOT NULL DEFAULT 's1.swf' COMMENT '声音文件名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_tenopen
-- ----------------------------
DROP TABLE IF EXISTS `ssc_tenopen`;
CREATE TABLE `ssc_tenopen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round` varchar(100) NOT NULL DEFAULT '0' COMMENT '期数',
  `game_code` int(3) NOT NULL COMMENT '游戏代号',
  `endtime` int(11) NOT NULL COMMENT '结束时间',
  `roundtime` int(11) NOT NULL COMMENT '游戏时间',
  `number` varchar(255) NOT NULL DEFAULT '' COMMENT '开奖号码',
  `number_sec` varchar(255) DEFAULT NULL COMMENT '二次答案',
  `total` int(11) NOT NULL DEFAULT '0' COMMENT '总和',
  `passed` int(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `endtime` (`endtime`),
  KEY `round` (`game_code`,`round`(20))
) ENGINE=MyISAM AUTO_INCREMENT=352044 DEFAULT CHARSET=utf8 COMMENT='快乐十分开答';

-- ----------------------------
-- Table structure for ssc_typeclass
-- ----------------------------
DROP TABLE IF EXISTS `ssc_typeclass`;
CREATE TABLE `ssc_typeclass` (
  `ClassID` int(11) NOT NULL DEFAULT '0',
  `ClassName` varchar(100) DEFAULT NULL COMMENT '名称',
  `ClassName_en` varchar(200) NOT NULL COMMENT '英文名称',
  `ParentID` int(11) NOT NULL COMMENT '父id',
  `ParentPath` varchar(50) NOT NULL DEFAULT '0' COMMENT '父路径',
  `Depth` int(5) NOT NULL DEFAULT '0' COMMENT '深度',
  `RootID` int(5) NOT NULL DEFAULT '0' COMMENT '首节点id',
  `ChildID` int(5) NOT NULL DEFAULT '0' COMMENT '子id',
  `PrevID` int(5) NOT NULL DEFAULT '0' COMMENT '前一个id',
  `NextID` int(5) NOT NULL DEFAULT '0' COMMENT '下一个id',
  `OrderID` int(11) NOT NULL DEFAULT '0' COMMENT '排序号码',
  `ParentName` varchar(100) DEFAULT NULL COMMENT '父名称',
  `RedirectOn` varchar(255) NOT NULL DEFAULT '0',
  `RedirectUrl` varchar(255) DEFAULT NULL COMMENT '跳转路径',
  `Description` text NOT NULL,
  `Content` text NOT NULL,
  `PhotoName` text,
  `Value` varchar(500) NOT NULL,
  PRIMARY KEY (`ClassID`),
  KEY `class_name` (`ClassName`),
  KEY `parent_id` (`ParentID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统配置表';

-- ----------------------------
-- Table structure for ssc_user
-- ----------------------------
DROP TABLE IF EXISTS `ssc_user`;
CREATE TABLE `ssc_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '鑷??ID',
  `username` varchar(20) NOT NULL COMMENT '帐号',
  `realname` varchar(20) NOT NULL COMMENT '帐号名称',
  `userpsw` varchar(32) NOT NULL COMMENT '帐号密码MD5加密',
  `parentid` int(11) NOT NULL DEFAULT '0' COMMENT '上级ID',
  `usertype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户类型，0会员1代理2总代理3股东4大股东5管理员6看盘7子帐号8总后台',
  `currency` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '信用额度',
  `lcurrency` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '剩余额度',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `accounting` int(11) NOT NULL DEFAULT '0' COMMENT '占成',
  `parentname` varchar(20) NOT NULL COMMENT '冗余，上级帐号',
  `power` varchar(255) NOT NULL COMMENT '用户权限，如果是会员参照game字段',
  `game` varchar(50) NOT NULL DEFAULT '2,3,45,47,51,69' COMMENT '用户开发游戏类型',
  `gameopen` varchar(50) NOT NULL DEFAULT '2,3,45,47,51,69' COMMENT '游戏开封盘',
  `a` int(11) NOT NULL DEFAULT '0' COMMENT '管理员',
  `b` int(11) NOT NULL DEFAULT '0' COMMENT '大股东',
  `c` int(11) NOT NULL DEFAULT '0' COMMENT '股东',
  `d` int(11) NOT NULL DEFAULT '0' COMMENT '总代理',
  `e` int(11) NOT NULL DEFAULT '0' COMMENT '代理',
  `status` tinyint(4) NOT NULL COMMENT '用户状态，0启用，1暂停，2停用',
  `stopuid` int(11) NOT NULL DEFAULT '0' COMMENT '暂停操作者',
  `position` enum('A','B','C') NOT NULL DEFAULT 'A' COMMENT '盘口',
  `position_xq` enum('A','B','C','D') NOT NULL DEFAULT 'A' COMMENT ' 小球盘口',
  `addtype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '直属会员类型，0不是直属，4为大股东，3为股东，2为总代，与usertype保持一致',
  `replenishment` tinyint(1) NOT NULL DEFAULT '1' COMMENT '补货功能，默认开启',
  `instantnote` tinyint(1) NOT NULL DEFAULT '1' COMMENT '即时注单，默认开启',
  `accountingtype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '下线占成类型，0是下线任意占成，1是限制下线最高占成downaccounting',
  `downaccounting` int(11) NOT NULL DEFAULT '0' COMMENT '下线最高占成',
  `statustime` int(11) NOT NULL DEFAULT '0' COMMENT '冻结时间',
  `accountingleft` tinyint(4) NOT NULL DEFAULT '0' COMMENT '剩余占成给管理员，1给分公司',
  `loginnums` int(11) NOT NULL DEFAULT '0' COMMENT '登录次数',
  `chgpsw` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否需要修改密码，0为需要',
  `realpsw` varchar(30) NOT NULL COMMENT '真实密码',
  `useip` bigint(20) NOT NULL DEFAULT '0' COMMENT '如果不为0，则登陆，日志等使用这个作为ip',
  `areport` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可查总监报表，只有分公司这个字段才有效',
  `lastlogin` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastip` bigint(20) NOT NULL DEFAULT '0',
  `tstype` tinyint(4) NOT NULL DEFAULT '1',
  `currencytype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '额度恢复类型，0为每天，1为每周,2为现金',
  `telphone` varchar(20) DEFAULT NULL COMMENT '电话',
  `paypasswd` varchar(32) DEFAULT NULL COMMENT '取款密码,md5',
  `bank_address` varchar(200) DEFAULT NULL COMMENT '银行地址',
  `bank_name` varchar(50) NOT NULL,
  `bank_code` varchar(30) DEFAULT NULL COMMENT '银行帐号',
  `emailaddress` varchar(200) DEFAULT NULL,
  `qqnumber` varchar(30) DEFAULT NULL COMMENT '通信工具帐号',
  `level` varchar(50) NOT NULL DEFAULT '0',
  `testflag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '测试帐号',
  `showad` tinyint(1) NOT NULL DEFAULT '0',
  `agopen` tinyint(4) NOT NULL DEFAULT '0',
  `authority` tinyint(4) NOT NULL DEFAULT '0' COMMENT '增加余额权限',
  `last_reptime` timestamp NOT NULL DEFAULT '1980-01-01 04:00:00' COMMENT '上次查询报表时间',
  `bbin_open` tinyint(1) NOT NULL DEFAULT '0',
  `sports_open` tinyint(1) NOT NULL DEFAULT '0',
  `limit_bet` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0可下注，1不可下注',
  `damaliang` int(10) NOT NULL,
  `outbeizhu` varchar(255) NOT NULL,
  `api_flag` tinyint(1) NOT NULL DEFAULT '0',
  `mgopen` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=69428 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Table structure for ssc_usersetting
-- ----------------------------
DROP TABLE IF EXISTS `ssc_usersetting`;
CREATE TABLE `ssc_usersetting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL COMMENT '鐢ㄦ埛ID',
  `a` int(11) NOT NULL DEFAULT '0' COMMENT '鎬荤洃ID',
  `b` int(11) NOT NULL DEFAULT '0' COMMENT '鍒嗗叕鍙窱D',
  `c` int(11) NOT NULL DEFAULT '0' COMMENT '鑲′笢ID',
  `d` int(11) NOT NULL DEFAULT '0' COMMENT '鎬讳唬ID',
  `e` int(11) NOT NULL DEFAULT '0' COMMENT '浠ｇ悊ID',
  `gamecode` int(11) NOT NULL COMMENT '娓告垙绫诲瀷',
  `gametype` int(11) NOT NULL COMMENT '娓告垙绫诲瀷',
  `ratea` varchar(150) NOT NULL DEFAULT '0' COMMENT 'A鐩樿禂鐜?',
  `rateb` varchar(150) NOT NULL DEFAULT '0' COMMENT 'B鐩樿禂鐜?',
  `ratec` varchar(150) NOT NULL DEFAULT '0' COMMENT 'C鐩樿禂鐜?',
  `positiona` varchar(30) NOT NULL DEFAULT '0' COMMENT '鐩樺彛A',
  `positionb` varchar(30) NOT NULL DEFAULT '0' COMMENT '鐩樺彛B',
  `positionc` varchar(30) NOT NULL DEFAULT '0' COMMENT '鐩樺彛C',
  `gamemin` int(10) unsigned NOT NULL,
  `gamemax` int(10) unsigned NOT NULL,
  `replenishtype` tinyint(4) NOT NULL DEFAULT '1' COMMENT '鑷?姩琛ヨ揣绫诲瀷',
  `replenishon` tinyint(1) NOT NULL DEFAULT '0' COMMENT '鑷?姩琛ヨ揣鏄?惁鍚?敤0涓轰笉鍚?敤',
  `replenishmoney` int(11) NOT NULL DEFAULT '0' COMMENT '鑷?姩琛ヨ揣鎺у埗棰濆害',
  `betmin` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '鍗曟敞鏈?灏忛檺鍒?',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `a` (`a`,`gametype`),
  KEY `d` (`d`),
  KEY `e` (`e`),
  KEY `b` (`b`,`gametype`),
  KEY `c` (`c`,`gametype`)
) ENGINE=MyISAM AUTO_INCREMENT=6329676 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_usersetting_tp
-- ----------------------------
DROP TABLE IF EXISTS `ssc_usersetting_tp`;
CREATE TABLE `ssc_usersetting_tp` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL COMMENT '鐢ㄦ埛ID',
  `gamecode` int(11) NOT NULL COMMENT '娓告垙绫诲瀷',
  `gametype` int(11) NOT NULL COMMENT '娓告垙绫诲瀷',
  `ratea` varchar(150) NOT NULL DEFAULT '0' COMMENT 'A鐩樿禂鐜?',
  `rateb` varchar(150) NOT NULL DEFAULT '0' COMMENT 'B鐩樿禂鐜?',
  `ratec` varchar(150) NOT NULL DEFAULT '0' COMMENT 'C鐩樿禂鐜?',
  `positiona` varchar(30) NOT NULL DEFAULT '0',
  `positionb` varchar(30) NOT NULL DEFAULT '0' COMMENT '鐩樺彛B',
  `positionc` varchar(30) NOT NULL DEFAULT '0' COMMENT '鐩樺彛C',
  `up_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鏈嶅姟鍣ㄧ郴缁熸椂闂?',
  `dispose` tinyint(4) NOT NULL DEFAULT '0' COMMENT '鏄?惁澶勭悊',
  KEY `userid` (`userid`),
  KEY `a` (`gametype`),
  KEY `b` (`gametype`),
  KEY `c` (`gametype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_user_accounting_tmp
-- ----------------------------
DROP TABLE IF EXISTS `ssc_user_accounting_tmp`;
CREATE TABLE `ssc_user_accounting_tmp` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL COMMENT '鐢ㄦ埛ID',
  `accounting_tmp` int(11) NOT NULL COMMENT '棰勬敼鍗犳垚',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_user_bk20160301
-- ----------------------------
DROP TABLE IF EXISTS `ssc_user_bk20160301`;
CREATE TABLE `ssc_user_bk20160301` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '鑷??ID',
  `username` varchar(20) NOT NULL COMMENT '甯愬彿',
  `realname` varchar(20) NOT NULL COMMENT '甯愬彿鍚嶇О',
  `userpsw` varchar(32) NOT NULL COMMENT '甯愬彿瀵嗙爜MD5鍔犲瘑',
  `parentid` int(11) NOT NULL DEFAULT '0' COMMENT '涓婄骇ID',
  `usertype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '鐢ㄦ埛绫诲瀷锛?0浼氬憳1浠ｇ悊2鎬讳唬鐞?3鑲′笢4澶ц偂涓?5绠＄悊鍛?6鐪嬬洏7瀛愬笎鍙?8鎬诲悗鍙?',
  `currency` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '淇＄敤棰濆害',
  `lcurrency` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '鍓╀綑棰濆害',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鏂板?鏃堕棿',
  `accounting` int(11) NOT NULL DEFAULT '0' COMMENT '鍗犳垚',
  `parentname` varchar(20) NOT NULL COMMENT '鍐椾綑锛屼笂绾у笎鍙?',
  `power` varchar(255) NOT NULL COMMENT '鐢ㄦ埛鏉冮檺锛屽?鏋滄槸浼氬憳鍙傜収game瀛楁?',
  `game` varchar(50) NOT NULL DEFAULT '2,3,45,47,51,69' COMMENT '鐢ㄦ埛寮?鍙戞父鎴忕被鍨?',
  `gameopen` varchar(50) NOT NULL DEFAULT '2,3,45,47,51,69' COMMENT '娓告垙寮?灏佺洏',
  `a` int(11) NOT NULL DEFAULT '0' COMMENT '绠＄悊鍛?',
  `b` int(11) NOT NULL DEFAULT '0' COMMENT '澶ц偂涓?',
  `c` int(11) NOT NULL DEFAULT '0' COMMENT '鑲′笢',
  `d` int(11) NOT NULL DEFAULT '0' COMMENT '鎬讳唬鐞?',
  `e` int(11) NOT NULL DEFAULT '0' COMMENT '浠ｇ悊',
  `status` tinyint(4) NOT NULL COMMENT '鐢ㄦ埛鐘舵?侊紝0鍚?敤锛?1鏆傚仠锛?2鍋滅敤',
  `stopuid` int(11) NOT NULL DEFAULT '0' COMMENT '鏆傚仠鎿嶄綔鑰?',
  `position` enum('A','B','C') NOT NULL DEFAULT 'A' COMMENT '鐩樺彛',
  `position_xq` enum('A','B','C','D') NOT NULL DEFAULT 'A' COMMENT ' 灏忕悆鐩樺彛',
  `addtype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '鐩村睘浼氬憳绫诲瀷锛?0涓嶆槸鐩村睘锛?4涓哄ぇ鑲′笢锛?3涓鸿偂涓滐紝2涓烘?讳唬锛屼笌usertype淇濇寔涓?鑷?',
  `replenishment` tinyint(1) NOT NULL DEFAULT '1' COMMENT '琛ヨ揣鍔熻兘锛岄粯璁ゅ紑鍚?',
  `instantnote` tinyint(1) NOT NULL DEFAULT '1' COMMENT '鍗虫椂娉ㄥ崟锛岄粯璁ゅ紑鍚?',
  `accountingtype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '涓嬬嚎鍗犳垚绫诲瀷锛?0鏄?笅绾夸换鎰忓崰鎴愶紝1鏄?檺鍒朵笅绾挎渶楂樺崰鎴恉ownaccounting',
  `downaccounting` int(11) NOT NULL DEFAULT '0' COMMENT '涓嬬嚎鏈?楂樺崰鎴?',
  `statustime` int(11) NOT NULL DEFAULT '0' COMMENT '鍐荤粨鏃堕棿',
  `accountingleft` tinyint(4) NOT NULL DEFAULT '0' COMMENT '鍓╀綑鍗犳垚缁欑?鐞嗗憳锛?1缁欏垎鍏?徃',
  `loginnums` int(11) NOT NULL DEFAULT '0' COMMENT '鐧诲綍娆℃暟',
  `chgpsw` tinyint(4) NOT NULL DEFAULT '0' COMMENT '鏄?惁闇?瑕佷慨鏀瑰瘑鐮侊紝0涓洪渶瑕?',
  `realpsw` varchar(30) NOT NULL COMMENT '鐪熷疄瀵嗙爜',
  `useip` bigint(20) NOT NULL DEFAULT '0' COMMENT '濡傛灉涓嶄负0锛屽垯鐧婚檰锛屾棩蹇楃瓑浣跨敤杩欎釜浣滀负ip',
  `areport` tinyint(1) NOT NULL DEFAULT '0' COMMENT '鏄?惁鍙?煡鎬荤洃鎶ヨ〃锛屽彧鏈夊垎鍏?徃杩欎釜瀛楁?鎵嶆湁鏁?',
  `lastlogin` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastip` bigint(20) NOT NULL DEFAULT '0',
  `tstype` tinyint(4) NOT NULL DEFAULT '1',
  `currencytype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '棰濆害鎭㈠?绫诲瀷锛?0涓烘瘡澶╋紝1涓烘瘡鍛?,2涓虹幇閲?',
  `telphone` varchar(20) DEFAULT NULL COMMENT '鐢佃瘽',
  `paypasswd` varchar(32) DEFAULT NULL COMMENT '鍙栨?瀵嗙爜,md5',
  `bank_address` varchar(200) DEFAULT NULL COMMENT '閾惰?鍦板潃',
  `bank_name` varchar(50) NOT NULL,
  `bank_code` varchar(30) DEFAULT NULL COMMENT '閾惰?甯愬彿',
  `emailaddress` varchar(200) DEFAULT NULL,
  `qqnumber` varchar(30) DEFAULT NULL COMMENT '閫氫俊宸ュ叿甯愬彿',
  `level` varchar(50) NOT NULL DEFAULT '0',
  `testflag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '娴嬭瘯甯愬彿',
  `showad` tinyint(1) NOT NULL DEFAULT '0',
  `agopen` tinyint(4) NOT NULL DEFAULT '0',
  `authority` tinyint(4) NOT NULL DEFAULT '0' COMMENT '澧炲姞浣欓?鏉冮檺',
  `last_reptime` timestamp NOT NULL DEFAULT '1979-12-31 20:00:00' COMMENT '涓婃?鏌ヨ?鎶ヨ〃鏃堕棿',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7916 DEFAULT CHARSET=utf8 COMMENT='鐢ㄦ埛琛?';

-- ----------------------------
-- Table structure for ssc_user_info
-- ----------------------------
DROP TABLE IF EXISTS `ssc_user_info`;
CREATE TABLE `ssc_user_info` (
  `userid` int(11) NOT NULL,
  `beizhu` varchar(200) DEFAULT NULL,
  `level` tinyint(11) NOT NULL DEFAULT '-1' COMMENT '鍙栨?娴佹按鍒嗗眰',
  `pwddate` date DEFAULT NULL COMMENT '鏈?鍚庝竴娆′慨鏀瑰瘑鐮佹椂闂?',
  `manual_level` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'level setted by admin',
  `birthday` char(8) NOT NULL DEFAULT '' COMMENT '鐢熸棩',
  `cashpw` varchar(255) NOT NULL COMMENT '鎿嶄綔瀵嗙爜',
  `pwd_times` int(11) NOT NULL DEFAULT '0' COMMENT '瀵嗙爜杈撻敊娆℃暟',
  `multi_login` tinyint(2) NOT NULL DEFAULT '0' COMMENT '鏄?惁鍏佽?澶氱粓绔?櫥褰?,0,涓嶅厑璁?;1,鍏佽?;',
  `manager_power` text NOT NULL COMMENT '绠＄悊鍛樻潈闄?',
  `duanwu_hongbao_ip` varchar(100) NOT NULL DEFAULT '' COMMENT '绔?崍绾㈠寘棰嗗彇鏃剁殑IP鍦板潃',
  `winning_days` int(3) NOT NULL DEFAULT '0' COMMENT '杩炶耽澶╂暟',
  `mobile_authorized` int(1) NOT NULL DEFAULT '0' COMMENT '鎵嬫満鍙锋槸鍚﹀凡楠岃瘉,0-娌℃湁,1-宸查獙璇?',
  `yesterday_water` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '鏄ㄦ棩娴佹按',
  `zhongqiu_hongbao_ip` varchar(100) NOT NULL DEFAULT '' COMMENT '涓??绾㈠寘棰嗗彇鏃剁殑IP鍦板潃',
  UNIQUE KEY `userid` (`userid`),
  UNIQUE KEY `userid_2` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_user_transaction_log
-- ----------------------------
DROP TABLE IF EXISTS `ssc_user_transaction_log`;
CREATE TABLE `ssc_user_transaction_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `deposit` int(11) NOT NULL DEFAULT '0' COMMENT '瀛樻?娆℃暟',
  `withdrawals` int(11) NOT NULL DEFAULT '0' COMMENT '鍙栨?娆℃暟',
  `money_d` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '瀛樻?鎬婚?',
  `money_w` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '鍙栨?鎬婚?',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=52414 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_webconfig
-- ----------------------------
DROP TABLE IF EXISTS `ssc_webconfig`;
CREATE TABLE `ssc_webconfig` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kefu` varchar(255) NOT NULL COMMENT '瀹㈡湇閾炬帴',
  `tuiguang` varchar(255) NOT NULL COMMENT '鐢佃剳鐗堜唬鐞嗘帹骞块摼鎺?',
  `tuiguangmobile` varchar(255) NOT NULL COMMENT '鎵嬫満鐗堜唬鐞嗘帹骞块摼鎺?',
  `denglu` varchar(255) NOT NULL COMMENT '浠ｇ悊鐧婚檰鍦板潃',
  `title` varchar(255) NOT NULL COMMENT '浠ｇ悊娉ㄥ唽鍚庢樉绀虹殑绔欑偣鍚嶅瓧',
  `kaijiang` varchar(255) NOT NULL COMMENT '寮?濂栫綉涓诲煙鍚?',
  `pk10` varchar(255) NOT NULL COMMENT '寮?濂栫綉鍖椾含璧涜溅缃戝潃',
  `ssc` varchar(255) NOT NULL COMMENT '寮?濂栫綉鏃舵椂褰╁紑濂栫綉鍧?',
  `gdten` varchar(255) NOT NULL COMMENT '寮?濂栫綉骞夸笢蹇?箰鍗佸垎寮?濂栫綉鍧?',
  `bankmin` int(10) NOT NULL COMMENT '缃戦摱鍦ㄧ嚎鏀?粯鏈?灏忛噾棰?',
  `bankmax` int(10) NOT NULL COMMENT '缃戦摱鍦ㄧ嚎鏀?粯鏈?澶ч噾棰?',
  `wechatmin` int(10) NOT NULL COMMENT '寰?俊鍦ㄧ嚎鏀?粯鏈?灏忛噾棰?',
  `wechatmax` int(10) NOT NULL COMMENT '寰?俊鍦ㄧ嚎鏀?粯鏈?澶ч噾棰?',
  `Recharge_amount` int(5) NOT NULL COMMENT '绾夸笅鏀?粯鏈?灏忛噾棰?',
  `level` varchar(255) NOT NULL COMMENT '鍑烘?灞傜骇',
  `alipaymin` int(10) NOT NULL DEFAULT '1' COMMENT '鏀?粯瀹濆湪绾挎敮浠樻渶灏忛噾棰?',
  `alipaymax` int(10) NOT NULL DEFAULT '100000' COMMENT '鏀?粯瀹濆湪绾挎敮浠樻渶澶ч噾棰?',
  `name` tinyint(1) DEFAULT '1' COMMENT '鏄?惁鍏佽?鍚屽悕閲嶅?娉ㄥ唽',
  `recharge_offer_open` tinyint(1) DEFAULT '0' COMMENT '鏄?惁鍚?敤鍏呭?间紭鎯?',
  `withdrawals_nums_limit` int(4) NOT NULL DEFAULT '0' COMMENT '姣忔棩鎻愭?娆℃暟涓婇檺',
  `withdrawal_interval` int(4) NOT NULL DEFAULT '0' COMMENT '鎻愭?闂撮殧鏃堕棿',
  `cqssc_index` tinyint(2) NOT NULL DEFAULT '0' COMMENT '閲嶅簡鏃舵椂褰╂帴鍙ｈ疆璇㈢殑褰撳墠绱㈠紩',
  `open_address` text NOT NULL COMMENT '寮?濂栧湴鍧?',
  `cqxync_index` tinyint(2) NOT NULL DEFAULT '0' COMMENT '閲嶅簡骞歌繍鍐滃満鎺ュ彛杞??鐨勫綋鍓嶇储寮?',
  `dandan_index` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'PC铔嬭泲鎺ュ彛杞??鐨勫綋鍓嶇储寮?',
  `gdklsf_index` tinyint(2) NOT NULL DEFAULT '0' COMMENT '骞夸笢蹇?箰鍗佸垎鎺ュ彛杞??鐨勫綋鍓嶇储寮?',
  `kuaisan_index` tinyint(2) NOT NULL DEFAULT '0' COMMENT '姹熻嫃蹇?笁鎺ュ彛杞??鐨勫綋鍓嶇储寮?',
  `pk10_index` tinyint(2) NOT NULL DEFAULT '0' COMMENT '鍖椾含璧涜溅鎺ュ彛杞??鐨勫綋鍓嶇储寮?',
  `xyft_index` tinyint(2) NOT NULL DEFAULT '0' COMMENT '骞歌繍椋炶墖鎺ュ彛杞??鐨勫綋鍓嶇储寮?',
  `bribery_money_max_ali` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '浠婃棩绾㈠寘涓婇檺',
  `bribery_money_open` tinyint(4) DEFAULT '0' COMMENT '鏄?惁寮?鍚?孩鍖呴洦',
  `allow_ip` text NOT NULL COMMENT '鍏佽?鐧诲綍鍚庡彴鐨処P',
  `bet_limit` text NOT NULL COMMENT '涓嬫敞闄愬埗',
  `in_sound_id` int(11) NOT NULL DEFAULT '1' COMMENT '鍏ユ?鎻愮ず闊?',
  `out_sound_id` int(11) NOT NULL DEFAULT '1' COMMENT '鍑烘?鎻愮ず闊?',
  `bonus_limit` text NOT NULL,
  `k8_index` tinyint(2) NOT NULL DEFAULT '0' COMMENT '鍖椾含蹇?箰8鎺ュ彛杞??鐨勫綋鍓嶇储寮?',
  `cftpaymin` int(10) NOT NULL DEFAULT '0' COMMENT '璐?粯閫氬湪绾挎敮浠樻渶浣庨噾棰?',
  `cftpaymax` int(10) NOT NULL DEFAULT '0' COMMENT '璐?粯閫氬湪绾挎敮浠樻渶澶ч噾棰?',
  `quickpaymin` int(10) NOT NULL DEFAULT '0' COMMENT '蹇?嵎鏀?粯鏈?浣庨噾棰?',
  `quickpaymax` int(10) NOT NULL DEFAULT '0' COMMENT '蹇?嵎鏀?粯鏈?澶ч噾棰?',
  `gd11xw_index` tinyint(2) NOT NULL DEFAULT '0' COMMENT '骞夸笢11閫?5鎺ュ彛杞??鐨勫綋鍓嶇储寮?',
  `disable_same_ip_reg` tinyint(1) NOT NULL DEFAULT '0' COMMENT '鏄?惁绂佹?鐩稿悓IP娉ㄥ唽',
  `auto_payment_cap` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '鑷?姩鍑烘?涓婇檺',
  `rate_version` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '璧旂巼鐗堟湰',
  `mobile_red_envelopes` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '缁戝畾鎵嬫満鍙峰彂绾㈠寘閲戦?',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='绔欑偣閰嶇疆';

-- ----------------------------
-- Table structure for ssc_weblog
-- ----------------------------
DROP TABLE IF EXISTS `ssc_weblog`;
CREATE TABLE `ssc_weblog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL COMMENT '鍏?憡鍐呭?',
  `adminid` varchar(50) NOT NULL DEFAULT '23,24,39' COMMENT '绠＄悊鍛樼殑ID',
  `jsalert` tinyint(4) NOT NULL DEFAULT '0' COMMENT '鏄?惁涓簀s鐨勫脊鍑哄叕鍛?',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '澧炲姞鏃堕棿',
  `affecttime` int(11) NOT NULL COMMENT 'jsalert瀛楁?鐨勬湁鏁堟椂闂村?鏋滀负0涓?鐩存湁鏁?',
  `status` tinyint(4) NOT NULL COMMENT '鍏?憡鏄?惁鏄剧ず',
  `adduser` int(11) NOT NULL DEFAULT '0' COMMENT '鍏?憡娣诲姞浜?',
  `affectlevel` varchar(30) NOT NULL DEFAULT '0,1,2,3,4,5' COMMENT '鍙?互鐪嬪埌鐨勭骇鍒?紝濡傛灉-1涓哄叏閮ㄥ彲瑙?',
  `userid` varchar(1000) NOT NULL,
  `readid` varchar(1000) NOT NULL,
  `level` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='鍏?憡琛?';

-- ----------------------------
-- Table structure for ssc_webseting
-- ----------------------------
DROP TABLE IF EXISTS `ssc_webseting`;
CREATE TABLE `ssc_webseting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '瀵瑰簲鍒皊sc_user鐨刬d锛岃繖涓?〃浠呬繚瀛樼?鐞嗗憳锛堟?荤洃锛夌殑璁惧畾',
  `loginmodel` tinyint(4) NOT NULL DEFAULT '0' COMMENT '鐧诲綍闄愬埗鏂瑰紡',
  `resetmodel` tinyint(4) NOT NULL DEFAULT '1' COMMENT '棰濆害鎭㈠?鏂瑰紡',
  `lmaxnum` int(11) NOT NULL DEFAULT '8' COMMENT '閫ｇ⒓鈥滃京寮忊?濆厑瑷辨渶澶氳櫉纰兼暩',
  `kenoclosetime` int(11) NOT NULL DEFAULT '90' COMMENT '寤ｆ澅蹇?▊鍗佸垎锛堝皝鐩ゆ彁鍓嶏級',
  `3dclosttime1` int(11) NOT NULL DEFAULT '90' COMMENT '閲嶆叾鏅傛檪褰?-鏃ュ牬锛堝皝鐩ゆ彁鍓嶏級',
  `3dclosttime2` int(11) NOT NULL DEFAULT '60' COMMENT '閲嶆叾鏅傛檪褰?-澶滃牬锛堝皝鐩ゆ彁鍓嶏級',
  `kenolm` text NOT NULL COMMENT '寤ｆ澅蹇?▊鍗佸垎 鈥樺叐闈⑩?欒嚜鍕曢檷璩犵巼',
  `kenoyl` text NOT NULL COMMENT '寤ｆ澅蹇?▊鍗佸垎 鈥橀伜婕忊?欒嚜鍕曢檷璩犵巼',
  `3dlm` text NOT NULL COMMENT '閲嶆叾鏅傛檪褰? 鈥樺叐闈⑩?欒嚜鍕曢檷璩犵巼',
  `menurl` varchar(255) NOT NULL COMMENT '浼氬憳鐧诲綍缃戝潃',
  `agurl` varchar(255) NOT NULL COMMENT '绠＄悊鐧诲綍鍦板潃',
  `adminurl` varchar(255) NOT NULL COMMENT '鍚庡彴鍦板潃',
  `kicktime` int(11) NOT NULL DEFAULT '30' COMMENT '韪㈢嚎鍚庨檺鍒剁櫥褰曟椂闂寸?',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ssc_xq_config
-- ----------------------------
DROP TABLE IF EXISTS `ssc_xq_config`;
CREATE TABLE `ssc_xq_config` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `m_number` varchar(250) DEFAULT NULL,
  `sx` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='灏忕悆鍩烘湰淇℃伅閰嶇疆琛?';

-- ----------------------------
-- Table structure for ssc_xq_defaultusersetting
-- ----------------------------
DROP TABLE IF EXISTS `ssc_xq_defaultusersetting`;
CREATE TABLE `ssc_xq_defaultusersetting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pl_id` int(11) NOT NULL COMMENT '璧旂巼id,鍞?竴',
  `ts_id` int(11) NOT NULL COMMENT '瀵瑰簲閫?姘磇d',
  `userid` int(11) NOT NULL,
  `gamecode` int(11) NOT NULL COMMENT '閬婃埐浠ｈ櫉',
  `rate` float NOT NULL DEFAULT '0' COMMENT '璩犵巼',
  `mrate` float NOT NULL DEFAULT '0' COMMENT '榛樿?璧旂巼',
  `locked` int(1) NOT NULL DEFAULT '1' COMMENT '1,姝ｅ父,0鍋滄?',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=11489 DEFAULT CHARSET=utf8 COMMENT='灏忕悆榛樿獚璧旂巼瑷?疆';

-- ----------------------------
-- Table structure for ssc_xq_defrate
-- ----------------------------
DROP TABLE IF EXISTS `ssc_xq_defrate`;
CREATE TABLE `ssc_xq_defrate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `showid` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `classid` int(11) NOT NULL COMMENT '瀵瑰簲閫?姘寸殑id',
  `class1` varchar(50) DEFAULT NULL,
  `class2` varchar(50) DEFAULT NULL,
  `class3` varchar(50) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `blrate` double DEFAULT NULL,
  `derate` double NOT NULL COMMENT '脛卢脠脧脜芒脗脢',
  `gold` double DEFAULT NULL,
  `xr` double DEFAULT NULL,
  `locked` int(11) DEFAULT '0',
  `adddate` timestamp NULL DEFAULT NULL,
  `mrate` double DEFAULT '0',
  `rate_step` double NOT NULL DEFAULT '0.5' COMMENT '脛卢脠脧脜芒脗脢',
  PRIMARY KEY (`id`),
  KEY `class1` (`class1`,`class2`)
) ENGINE=MyISAM AUTO_INCREMENT=11999 DEFAULT CHARSET=utf8 COMMENT='灏忕悆榛樿?璧旂巼淇℃伅';

-- ----------------------------
-- Table structure for ssc_xq_open
-- ----------------------------
DROP TABLE IF EXISTS `ssc_xq_open`;
CREATE TABLE `ssc_xq_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round` int(11) NOT NULL COMMENT '鏈熸暟',
  `startTime` int(11) NOT NULL DEFAULT '0' COMMENT '寮?鐩樻椂闂?',
  `endTime` int(11) NOT NULL DEFAULT '0' COMMENT '鑷?姩灏佺洏鏃堕棿',
  `openTime` int(11) NOT NULL DEFAULT '0' COMMENT '寮?濂栨椂闂?',
  `Tm_endTime` int(11) NOT NULL DEFAULT '0' COMMENT '鐗圭爜灏佺洏鏃堕棿',
  `Zm_endTime` int(11) NOT NULL DEFAULT '0' COMMENT '姝ｇ爜灏佺洏鏃堕棿',
  `Num1` int(2) NOT NULL DEFAULT '0' COMMENT '骞崇爜1',
  `Num2` int(2) NOT NULL DEFAULT '0' COMMENT '骞崇爜2',
  `Num3` int(2) NOT NULL DEFAULT '0' COMMENT '骞崇爜3',
  `Num4` int(2) NOT NULL DEFAULT '0' COMMENT '骞崇爜4',
  `Num5` int(2) NOT NULL DEFAULT '0' COMMENT '骞崇爜5',
  `Num6` int(2) NOT NULL DEFAULT '0' COMMENT '骞崇爜6',
  `NumTm` int(2) NOT NULL DEFAULT '0' COMMENT '鐗圭爜',
  `IsAuto` int(1) NOT NULL DEFAULT '1' COMMENT '鏄?惁鑷?姩寮?鐩?',
  `TmStatus` int(1) NOT NULL DEFAULT '0' COMMENT '鐗圭爜寮?灏佺洏鐘舵??',
  `ZtStatus` int(1) NOT NULL DEFAULT '0' COMMENT '姝ｇ壒寮?灏佺洏鐘舵??',
  `ZmStatus` int(1) NOT NULL DEFAULT '0' COMMENT '姝ｇ爜寮?灏佺洏鐘舵??',
  `WxStatus` int(1) NOT NULL DEFAULT '0' COMMENT '浜旇?寮?灏佺洏鐘舵??',
  `GgStatus` int(1) NOT NULL DEFAULT '0' COMMENT '杩囧叧寮?灏佺洏鐘舵??',
  `LmStatus` int(1) NOT NULL DEFAULT '0' COMMENT '杩炵爜寮?灏佺洏鐘舵??',
  `SxStatus` int(1) NOT NULL DEFAULT '0' COMMENT '鐢熻倴/姝ｇ壒灏炬暟寮?鐩樼姸鎬?',
  `SbStatus` int(1) NOT NULL DEFAULT '0' COMMENT '鍗婃尝/鍗婂崐娉?/姝ｈ倴涓冭壊娉?/寮?鐩樼姸鎬?',
  `TwStatus` int(1) NOT NULL DEFAULT '0' COMMENT '澶村熬鏁板紑鐩樼姸鎬?',
  `IsCount` int(1) NOT NULL DEFAULT '0' COMMENT '鏄?惁缁撶畻',
  `passed` int(1) NOT NULL DEFAULT '0' COMMENT '鐘舵??',
  PRIMARY KEY (`id`),
  UNIQUE KEY `round_2` (`round`),
  KEY `round` (`round`),
  KEY `startTime` (`startTime`),
  KEY `endTime` (`endTime`)
) ENGINE=MyISAM AUTO_INCREMENT=462 DEFAULT CHARSET=utf8 COMMENT='鍏?悎褰╁紑濂栫粨鏋滆〃';

-- ----------------------------
-- Table structure for ssc_xq_usersetting
-- ----------------------------
DROP TABLE IF EXISTS `ssc_xq_usersetting`;
CREATE TABLE `ssc_xq_usersetting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL COMMENT '鐢ㄦ埛ID',
  `a` int(11) NOT NULL DEFAULT '0' COMMENT '鎬荤洃ID',
  `b` int(11) NOT NULL DEFAULT '0' COMMENT '鍒嗗叕鍙窱D',
  `c` int(11) NOT NULL DEFAULT '0' COMMENT '鑲′笢ID',
  `d` int(11) NOT NULL DEFAULT '0' COMMENT '鎬讳唬ID',
  `e` int(11) NOT NULL DEFAULT '0' COMMENT '浠ｇ悊ID',
  `gamecode` int(11) NOT NULL COMMENT '娓告垙绫诲瀷',
  `gametype` int(11) NOT NULL COMMENT '娓告垙绫诲瀷',
  `positiona` float NOT NULL DEFAULT '0' COMMENT '鐩樺彛A',
  `positionb` float NOT NULL DEFAULT '0' COMMENT '鐩樺彛B',
  `positionc` float NOT NULL DEFAULT '0' COMMENT '鐩樺彛C',
  `positiond` float NOT NULL DEFAULT '0' COMMENT '鐩樺彛D',
  `gamemin` int(10) unsigned NOT NULL,
  `gamemax` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `a` (`a`,`gametype`),
  KEY `d` (`d`),
  KEY `e` (`e`),
  KEY `b` (`b`,`gametype`),
  KEY `c` (`c`,`gametype`)
) ENGINE=MyISAM AUTO_INCREMENT=5915224 DEFAULT CHARSET=utf8 COMMENT='甯愬彿閫?姘磋?缃?';

-- ----------------------------
-- Table structure for ssc_zhongqiu
-- ----------------------------
DROP TABLE IF EXISTS `ssc_zhongqiu`;
CREATE TABLE `ssc_zhongqiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '鑷??ID',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '寮?濮嬫椂闂?',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '缁撴潫鏃堕棿',
  `blacklist` text NOT NULL COMMENT '榛戝悕鍗?',
  `whitelist` text NOT NULL COMMENT '鐧藉悕鍗?',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '寮?/鍏?,1/0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `a` text NOT NULL,
  `sid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `similar` int(11) NOT NULL,
  `adjustment` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
