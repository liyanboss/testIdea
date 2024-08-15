-- MySQL dump 10.13  Distrib 5.6.11, for Win64 (x86_64)
--
-- Host: localhost    Database: pokermahjong
-- ------------------------------------------------------
-- Server version	5.6.11-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `accessmenu`
--

LOCK TABLES `accessmenu` WRITE;
/*!40000 ALTER TABLE `accessmenu` DISABLE KEYS */;
INSERT INTO `accessmenu` VALUES (110,'ACCOUNT',0,NULL,1,1),(120,'MEMBER',0,NULL,1,1),(125,'BONUS WALLET',0,NULL,1,1),(130,'OPERATOR',0,NULL,0,1),(135,'CURRENCY',0,NULL,1,1),(140,'FREE / CASH ROOM',0,NULL,1,1),(145,'GAME SETTING',0,NULL,1,1),(150,'TOURNAMENT ROOM',0,NULL,1,1),(160,'GAME MONITORING',0,NULL,1,1),(170,'ANNOUNCEMENT',0,NULL,1,1),(180,'REPORTS',0,NULL,1,1),(185,'FINANCE',0,NULL,1,1),(190,'SYSTEM MONITORING',0,NULL,0,1),(110110,'Open Account',110,'/bo/openAccount.xhtml',1,1),(110120,'Account List',110,'/bo/accountList.xhtml',1,1),(110130,'Account List Edit',110,'/bo/accountListEdit.xhtml',1,1),(110140,'Role Management',110,'/bo/roleManagement.xhtml',1,1),(120110,'Member List',120,'/member/memberList.xhtml',1,1),(120120,'Member Ticket',120,'/member/memberTicketList.xhtml',1,1),(120130,'Login Record',120,'/member/loginRecordList.xhtml',1,1),(120140,'Transaction Record',120,'/member/transactionRecordList.xhtml',1,1),(120145,'Transaction Record Details',120,'/member/transactionRecordDetail.xhtml',1,1),(120150,'VPP Rank',120,'/member/vppRankList.xhtml',1,1),(120160,'FPP Rank',120,'/member/fppRankList.xhtml',1,1),(120170,'VPP Record',120,'/member/vppRecordHistory.xhtml',1,1),(125110,'Bonus Wallet Transaction',125,'/member/bonusWalletHistory.xhtml',1,1),(125120,'Bonus Wallet Rollover List',125,'/member/bonusWalletRolloverList.xhtml',1,1),(125130,'Bonus Wallet Rollover List Edit',125,'/member/bonusWalletRolloverListEdit.xhtml',1,1),(125140,'Bonus Wallet Adjustment',125,'/member/bonusWalletAdjustment.xhtml',1,1),(130110,'Open Operator',130,'/operator/openOperator.xhtml',0,1),(130120,'Operator List',130,'/operator/operatorList.xhtml',0,1),(130130,'Operator List Edit',130,'/operator/operatorListEdit.xhtml',0,1),(135110,'Create Currency Exchange',135,'/currency/createCurrencyExchange.xhtml',0,1),(135120,'Currency Exchange List',135,'/currency/currencyExchangeList.xhtml',1,1),(135130,'Currency Exchange List Edit',135,'/currency/currencyExchangeListEdit.xhtml',0,1),(140110,'Create Table Type',140,'/fcroom/createTableType.xhtml',1,1),(140120,'Table Type List',140,'/fcroom/tableTypeList.xhtml',1,1),(140130,'Table Type List Edit',140,'/fcroom/tableTypeListEdit.xhtml',1,1),(140140,'Create Capped Rake',140,'/fcroom/createCappedStructure.xhtml',1,1),(140150,'Capped Rake List',140,'/fcroom/cappedRakeList.xhtml',1,1),(140160,'Capped Rake List Edit',140,'/fcroom/cappedRakeListEdit.xhtml',1,1),(145110,'VIP Level Management',145,'/game_setting/vipLevelManagement.xhtml',1,1),(145120,'Create Tile Template',145,'/game_setting/createTileTemplate.xhtml',1,1),(145130,'Tile Template List',145,'/game_setting/tileTemplateList.xhtml',1,1),(145140,'Tile Template List Edit',145,'/game_setting/tileTemplateListEdit.xhtml',1,1),(145150,'Create Dictionary',145,'/game_setting/createGameNameDictionary.xhtml',1,1),(145160,'Dictionary List Edit',145,'/game_setting/gameNameDictionaryListEdit.xhtml',1,1),(145170,'Create FPP Store',145,'/game_setting/createFPPStoreItem.xhtml',1,1),(145180,'FFP Store List Edit',145,'/game_setting/fppStoreItemListEdit.xhtml',1,1),(145190,'FFP Store History',145,'/game_setting/fppStoreHistory.xhtml',1,1),(150110,'Create Tournament',150,'/tournament/createTournament.xhtml',1,1),(150120,'Tournament List',150,'/tournament/tournamentList.xhtml',1,1),(150130,'Create Awards Structure',150,'/tournament/createAwardsStructure.xhtml',1,1),(150140,'Award Structure List',150,'/tournament/awardStructureList.xhtml',1,1),(150150,'Award Structure List Edit',150,'/tournament/awardStructureListEdit.xhtml',1,1),(150160,'Create Betting Structure',150,'/tournament/createBettingStructure.xhtml',1,1),(150170,'Betting Structure List',150,'/tournament/bettingStructureList.xhtml',1,1),(150175,'Betting Structure List Edit',150,'/tournament/bettingStructureListEdit.xhtml',1,1),(150180,'Create Ticket',150,'/tournament/createTicket.xhtml',1,1),(150190,'Ticket List',150,'/tournament/ticketList.xhtml',1,1),(150200,'Ticket List Edit',150,'/tournament/ticketListEdit.xhtml',1,1),(160110,'View Online Room',160,'/gmonitoring/viewOnlineRoom.xhtml',1,1),(160120,'View Online Player',160,'/gmonitoring/viewOnlinePlayer.xhtml',1,1),(160130,'View Facebook Disputes',160,'/gmonitoring/viewFacebookDisputes.xhtml',1,1),(160140,'View Gift List',160,'/gmonitoring/viewGiftTransactions.xhtml',1,1),(160150,'Tracking Report',160,'/gmonitoring/trackingReport.xhtml',1,1),(160160,'Winner Loser Report',160,'/gmonitoring/winnerLoserList.xhtml',1,1),(160170,'Alert Case',160,'/gmonitoring/alertCase.xhtml',1,1),(160180,'User Message',160,'/gmonitoring/userMessages.xhtml',1,1),(160190,'AI',160,'/gmonitoring/aiRobot.xhtml',1,1),(170110,'Create Announcement',170,'/announcement/createAnnouncement.xhtml',1,1),(170120,'Announcement List',170,'/announcement/announcementList.xhtml',1,1),(170130,'Announcement List Edit',170,'/announcement/announcementListEdit.xhtml',1,1),(170140,'Send Instant Message',170,'/announcement/sendInstantMessage.xhtml',1,1),(180110,'Table Rake Report',180,'/reports/tableRakeReport.xhtml',1,1),(180120,'Table Record Report',180,'/reports/tableRecordReport.xhtml',1,1),(180130,'Player Rake Report',180,'/reports/playerRakeReport.xhtml',1,1),(180140,'Operator Rake Report',180,'/reports/operatorRakeReport.xhtml',1,1),(180145,'Tournament Register List',180,'/reports/tournamentRegisterList.xhtml',1,1),(180150,'Tournament Award Report',180,'/reports/tournamentAwardReport.xhtml',1,1),(180155,'Tournament History Report',180,'/reports/tournamentHistoryReport.xhtml',1,1),(180160,'Tournament Record Report',180,'/reports/tournamentRecordList.xhtml',1,1),(180170,'Operator Statistic Report',180,'/reports/operatorStatistic.xhtml',1,1),(180180,'Player Statistic Report',180,'/reports/playerStatistic.xhtml',1,1),(180185,'Table Statistic Report',180,'/reports/tableStatistic.xhtml',1,1),(180190,'Merchant Transaction Report',180,'/reports/merchantTransactionRecord.xhtml',1,1),(180200,'Platform Report',180,'/reports/platformReport.xhtml',1,1),(180210,'VPP/FPP Adjustment Report',180,'/reports/vppFppAdjustmentReport.xhtml',1,1),(185110,'Create Settlement',185,'/finance/createSettlement.xhtml',1,1),(185120,'Settlement List',185,'/finance/settlementList.xhtml',1,1),(185130,'Clearing Report',185,'/finance/clearingReport.xhtml',1,1),(190120,'Server Structure Menu',190,'/system/serverStructureMenuList.xhtml',0,1),(190130,'System Logs',190,'/system/systemLogsList.xhtml',0,1),(120110110,'Whitelisted Tag',120110,'/member/gameUserProfile/whitelistedTag',1,0);
/*!40000 ALTER TABLE `accessmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `accessright`
--

LOCK TABLES `accessright` WRITE;
/*!40000 ALTER TABLE `accessright` DISABLE KEYS */;
INSERT INTO `accessright` VALUES (1,110,1,1),(2,110110,1,1),(3,110120,1,1),(4,110130,1,1),(5,110140,1,1),(6,120,1,1),(7,120110,1,1),(8,120120,1,1),(9,130,1,1),(10,130110,1,1),(11,130120,1,0),(12,130130,1,1),(13,135,1,1),(14,135110,1,1),(15,135120,1,1),(16,135130,1,1),(17,140,1,1),(18,140110,1,1),(19,140120,1,1),(20,140130,1,1),(21,140140,1,1),(22,140150,1,1),(23,140160,1,1),(24,145,1,1),(25,145110,1,1),(26,150,1,1),(27,150110,1,1),(28,150120,1,1),(29,150130,1,1),(30,150140,1,1),(31,150150,1,1),(32,150160,1,1),(33,150170,1,1),(34,150180,1,1),(35,150190,1,1),(36,150200,1,1),(37,160,1,1),(38,160110,1,1),(39,160120,1,1),(41,170,1,1),(42,170110,1,1),(43,170120,1,1),(44,170130,1,1),(45,180,1,1),(46,180110,1,1),(47,180120,1,1),(48,180130,1,1),(49,180140,1,1),(50,180150,1,1),(51,180160,1,1),(52,180170,1,1),(53,180180,1,1),(54,190,1,1),(56,190120,1,1),(57,180155,1,1),(58,190130,1,1),(59,120130,1,1),(60,120140,1,1),(61,120150,1,1),(62,120160,1,1),(63,150175,1,1),(64,160130,1,1),(65,160140,1,1),(66,180190,1,1),(67,145120,1,1),(68,145130,1,1),(69,145140,1,1),(70,180145,1,1),(71,160150,1,1),(72,170,2,1),(73,170110,2,1),(74,170120,2,1),(75,170130,2,1),(76,180,2,1),(77,180110,2,0),(78,180120,2,1),(79,180130,2,0),(80,180140,2,0),(81,180145,2,0),(82,180150,2,0),(83,180155,2,1),(84,180160,2,0),(85,180170,2,0),(86,180180,2,0),(87,180190,2,0),(88,135,2,0),(89,135110,2,0),(90,135120,2,0),(91,135130,2,0),(92,150,2,0),(93,150110,2,0),(94,150120,2,0),(95,150130,2,0),(96,150140,2,0),(97,150150,2,0),(98,150160,2,0),(99,150170,2,0),(100,150175,2,0),(101,150180,2,0),(102,150190,2,0),(103,150200,2,0),(104,145,2,0),(105,145110,2,0),(106,145120,2,0),(107,145130,2,0),(108,145140,2,0),(109,110,2,0),(110,110110,2,0),(111,110120,2,0),(112,110130,2,0),(113,110140,2,0),(114,160,2,0),(115,160110,2,0),(116,160120,2,0),(117,160130,2,0),(118,160140,2,0),(119,160150,2,0),(120,120,2,1),(121,120110,2,1),(122,120120,2,1),(123,120130,2,0),(124,120140,2,1),(125,120145,2,1),(126,120150,2,0),(127,120160,2,0),(128,140,2,0),(129,140110,2,0),(130,140120,2,0),(131,140130,2,0),(132,140140,2,0),(133,140150,2,0),(134,140160,2,0),(135,190,2,0),(137,190120,2,0),(138,190130,2,0),(139,130,2,0),(140,130110,2,0),(141,130120,2,0),(142,130130,2,0),(143,170,3,0),(144,170110,3,0),(145,170120,3,0),(146,170130,3,0),(147,180,3,1),(148,180110,3,1),(149,180120,3,1),(150,180130,3,1),(151,180140,3,1),(152,180145,3,1),(153,180150,3,1),(154,180155,3,1),(155,180160,3,1),(156,180170,3,1),(157,180180,3,1),(158,180190,3,1),(159,135,3,0),(160,135110,3,0),(161,135120,3,0),(162,135130,3,0),(163,150,3,0),(164,150110,3,0),(165,150120,3,0),(166,150130,3,0),(167,150140,3,0),(168,150150,3,0),(169,150160,3,0),(170,150170,3,0),(171,150175,3,0),(172,150180,3,0),(173,150190,3,0),(174,150200,3,0),(175,145,3,0),(176,145110,3,0),(177,145120,3,0),(178,145130,3,0),(179,145140,3,0),(180,110,3,0),(181,110110,3,0),(182,110120,3,0),(183,110130,3,0),(184,110140,3,0),(185,160,3,1),(186,160110,3,1),(187,160120,3,1),(188,160130,3,1),(189,160140,3,1),(190,160150,3,1),(191,120,3,1),(192,120110,3,1),(193,120120,3,1),(194,120130,3,1),(195,120140,3,1),(196,120145,3,1),(197,120150,3,1),(198,120160,3,1),(199,140,3,0),(200,140110,3,0),(201,140120,3,0),(202,140130,3,0),(203,140140,3,0),(204,140150,3,0),(205,140160,3,0),(206,190,3,0),(208,190120,3,0),(209,190130,3,0),(210,130,3,0),(211,130110,3,0),(212,130120,3,0),(213,130130,3,0),(214,160160,1,1),(215,160160,3,1),(216,170,4,1),(217,170110,4,1),(218,170120,4,1),(219,170130,4,1),(220,180,4,1),(221,180110,4,1),(222,180120,4,1),(223,180130,4,1),(224,180140,4,1),(225,180145,4,1),(226,180150,4,1),(227,180155,4,1),(228,180160,4,1),(229,180170,4,0),(230,180180,4,0),(231,180190,4,0),(232,135,4,1),(233,135110,4,1),(234,135120,4,1),(235,135130,4,1),(236,150,4,1),(237,150110,4,1),(238,150120,4,1),(239,150130,4,1),(240,150140,4,1),(241,150150,4,1),(242,150160,4,1),(243,150170,4,1),(244,150175,4,1),(245,150180,4,1),(246,150190,4,1),(247,150200,4,1),(248,145,4,0),(249,145110,4,0),(250,145120,4,0),(251,145130,4,0),(252,145140,4,0),(253,110,4,0),(254,110110,4,0),(255,110120,4,0),(256,110130,4,0),(257,110140,4,0),(258,160,4,1),(259,160110,4,1),(260,160120,4,1),(261,160130,4,0),(262,160140,4,0),(263,160150,4,0),(264,160160,4,0),(265,120,4,1),(266,120110,4,1),(267,120120,4,1),(268,120130,4,1),(269,120140,4,1),(270,120145,4,1),(271,120150,4,1),(272,120160,4,1),(273,140,4,1),(274,140110,4,1),(275,140120,4,1),(276,140130,4,1),(277,140140,4,1),(278,140150,4,1),(279,140160,4,1),(280,190,4,0),(282,190120,4,0),(283,190130,4,0),(284,130,4,0),(285,130110,4,0),(286,130120,4,0),(287,130130,4,0),(288,160160,2,0),(289,120145,1,1),(290,160170,1,1),(292,185,1,1),(293,185110,1,1),(294,185120,1,1),(295,185130,1,1),(296,170140,1,1),(297,120170,1,1),(298,125110,1,1),(299,125120,1,1),(300,125140,1,1),(301,125,1,1),(302,125130,1,1),(303,145150,1,1),(304,145160,1,1),(305,145170,1,1),(306,145180,1,1),(307,160180,1,1),(308,145190,1,1),(309,180200,1,1),(310,160190,1,1),(311,180210,1,1),(312,180185,1,1);
/*!40000 ALTER TABLE `accessright` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `accumulated_clearing_report`
--

LOCK TABLES `accumulated_clearing_report` WRITE;
/*!40000 ALTER TABLE `accumulated_clearing_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `accumulated_clearing_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `alert_case`
--

LOCK TABLES `alert_case` WRITE;
/*!40000 ALTER TABLE `alert_case` DISABLE KEYS */;
/*!40000 ALTER TABLE `alert_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `announcement`
--

LOCK TABLES `announcement` WRITE;
/*!40000 ALTER TABLE `announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `announcement_detail`
--

LOCK TABLES `announcement_detail` WRITE;
/*!40000 ALTER TABLE `announcement_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `announcement_operator`
--

LOCK TABLES `announcement_operator` WRITE;
/*!40000 ALTER TABLE `announcement_operator` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_operator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bettingconfig`
--

LOCK TABLES `bettingconfig` WRITE;
/*!40000 ALTER TABLE `bettingconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `bettingconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bonus_item_package`
--

LOCK TABLES `bonus_item_package` WRITE;
/*!40000 ALTER TABLE `bonus_item_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `bonus_item_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bonus_record`
--

LOCK TABLES `bonus_record` WRITE;
/*!40000 ALTER TABLE `bonus_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `bonus_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bonus_wallet`
--

LOCK TABLES `bonus_wallet` WRITE;
/*!40000 ALTER TABLE `bonus_wallet` DISABLE KEYS */;
/*!40000 ALTER TABLE `bonus_wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bonus_wallet_history`
--

LOCK TABLES `bonus_wallet_history` WRITE;
/*!40000 ALTER TABLE `bonus_wallet_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `bonus_wallet_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bonus_wallet_rollover`
--

LOCK TABLES `bonus_wallet_rollover` WRITE;
/*!40000 ALTER TABLE `bonus_wallet_rollover` DISABLE KEYS */;
/*!40000 ALTER TABLE `bonus_wallet_rollover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cappedrakeconfig`
--

LOCK TABLES `cappedrakeconfig` WRITE;
/*!40000 ALTER TABLE `cappedrakeconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `cappedrakeconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `currency_exchange_rate`
--

LOCK TABLES `currency_exchange_rate` WRITE;
/*!40000 ALTER TABLE `currency_exchange_rate` DISABLE KEYS */;
INSERT INTO `currency_exchange_rate` VALUES (1,'RMB','RMB',1.000000,NULL,'admin','2015-12-10 00:00:00','W88_MemberSite','1449-11-23 16:00:00',1.000000,'ACTIVATED'),(2,'RMB','THB',0.568182,NULL,'admin','2015-12-10 00:00:00','admin','2015-12-30 08:23:00',1.760000,'ACTIVATED'),(3,'RMB','IDR',1.754386,NULL,'admin','2015-12-10 00:00:00','admin','2015-12-30 08:24:00',0.570000,'ACTIVATED'),(4,'RMB','MYR',0.450450,NULL,'admin','2015-12-10 00:00:00','admin','2015-12-30 08:25:00',2.220000,'ACTIVATED'),(5,'RMB','VND',4.000000,NULL,'admin','2015-12-10 00:00:00','admin','2015-12-30 08:26:00',0.250000,'ACTIVATED'),(6,'RMB','USD',0.157729,NULL,'admin','2015-12-10 00:00:00','admin','2015-12-30 08:26:00',6.340000,'ACTIVATED'),(7,'RMB','JPY',16.666667,NULL,'admin','2015-12-10 00:00:00','admin','2015-12-30 08:27:00',0.060000,'ACTIVATED'),(8,'RMB','KRW',100.000000,NULL,'admin','2015-12-10 00:00:00','admin','2015-12-30 08:27:00',0.010000,'ACTIVATED'),(9,'RMB','UUS',1.000000,NULL,'admin','2015-12-10 00:00:00','admin','2100-01-01 00:00:00',1.000000,'DEACTIVATED'),(10,'RMB','AUD',0.180180,NULL,'admin','2015-12-10 00:00:00','admin','2015-12-30 08:28:00',5.550000,'ACTIVATED'),(11,'RMB','EUR',0.123916,NULL,'admin','2015-12-10 00:00:00','admin','2015-12-30 08:28:00',8.070000,'ACTIVATED'),(12,'RMB','RMB',0.100000,1.000000,'W88_MemberSite','1449-11-23 16:00:00','W88_MemberSite','1449-11-23 16:00:00',10.000000,'ACTIVATED'),(13,'RMB','RMB',0.090909,0.100000,'W88_MemberSite','1449-11-23 16:00:00','W88_MemberSite','2015-12-28 10:54:39',11.000000,'ACTIVATED'),(14,'RMB','RMB',0.090909,0.090909,'W88_MemberSite','2015-12-28 10:54:39','W88_MemberSite','2015-12-28 10:00:00',11.000000,'ACTIVATED'),(15,'RMB','RMB',0.090909,0.090909,'W88_MemberSite','2015-12-28 10:00:00','admin','2015-12-30 08:22:00',11.000000,'ACTIVATED'),(16,'RMB','RMB',1.000000,0.090909,'admin','2015-12-30 08:22:00',NULL,'2100-01-01 00:00:00',1.000000,'ACTIVATED'),(17,'RMB','THB',5.550406,0.568182,'admin','2015-12-30 08:23:00','W88_MemberSite','2016-01-11 04:00:00',0.180167,'ACTIVATED'),(18,'RMB','IDR',2.105432,1.754386,'admin','2015-12-30 08:24:00','W88_MemberSite','2016-01-11 04:00:00',0.474962,'ACTIVATED'),(19,'RMB','MYR',0.664291,0.450450,'admin','2015-12-30 08:25:00','W88_MemberSite','2016-01-11 04:00:00',1.505364,'ACTIVATED'),(20,'RMB','VND',3.486702,4.000000,'admin','2015-12-30 08:26:00','W88_MemberSite','2016-01-11 04:00:00',0.286804,'ACTIVATED'),(21,'RMB','USD',0.154740,0.157729,'admin','2015-12-30 08:26:00','W88_MemberSite','2016-01-11 04:00:00',6.462450,'ACTIVATED'),(22,'RMB','JPY',18.608113,16.666667,'admin','2015-12-30 08:27:00','W88_MemberSite','2016-01-11 04:00:00',0.053740,'ACTIVATED'),(23,'RMB','KRW',180.962722,100.000000,'admin','2015-12-30 08:27:00','W88_MemberSite','2016-01-11 04:00:00',0.005526,'ACTIVATED'),(24,'RMB','AUD',0.213273,0.180180,'admin','2015-12-30 08:28:00','W88_MemberSite','2016-01-11 04:00:00',4.688831,'ACTIVATED'),(25,'RMB','EUR',0.140981,0.123916,'admin','2015-12-30 08:28:00','W88_MemberSite','2016-01-11 04:00:00',7.093175,'ACTIVATED'),(26,'RMB','AUD',0.218140,0.213273,'W88_MemberSite','2016-01-11 04:00:00','W88_MemberSite','2016-01-18 04:00:00',4.584217,'ACTIVATED'),(27,'RMB','EUR',0.138824,0.140981,'W88_MemberSite','2016-01-11 04:00:00','W88_MemberSite','2016-01-18 04:00:00',7.203345,'ACTIVATED'),(28,'RMB','GBP',0.104472,NULL,'W88_MemberSite','2016-01-11 04:00:00','W88_MemberSite','2016-01-18 04:00:00',9.571935,'ACTIVATED'),(29,'RMB','IDR',2.100756,2.105432,'W88_MemberSite','2016-01-11 04:00:00','W88_MemberSite','2016-01-18 04:00:00',0.476019,'ACTIVATED'),(30,'RMB','ID2',2100.756041,NULL,'W88_MemberSite','2016-01-11 04:00:00','W88_MemberSite','2016-01-18 04:00:00',0.000476,'ACTIVATED'),(31,'RMB','INR',10.145378,NULL,'W88_MemberSite','2016-01-11 04:00:00','W88_MemberSite','2016-01-18 04:00:00',0.098567,'ACTIVATED'),(32,'RMB','JPY',17.783609,18.608113,'W88_MemberSite','2016-01-11 04:00:00','W88_MemberSite','2016-01-18 04:00:00',0.056232,'ACTIVATED'),(33,'RMB','KRW',183.281132,180.962722,'W88_MemberSite','2016-01-11 04:00:00','W88_MemberSite','2016-01-18 04:00:00',0.005456,'ACTIVATED'),(34,'RMB','MYR',0.670832,0.664291,'W88_MemberSite','2016-01-11 04:00:00','W88_MemberSite','2016-01-18 04:00:00',1.490685,'ACTIVATED'),(35,'RMB','THB',5.514961,5.550406,'W88_MemberSite','2016-01-11 04:00:00','W88_MemberSite','2016-01-18 04:00:00',0.181325,'ACTIVATED'),(36,'RMB','USD',0.151673,0.154740,'W88_MemberSite','2016-01-11 04:00:00','W88_MemberSite','2016-01-18 04:00:00',6.593150,'ACTIVATED'),(37,'RMB','VND',3.406842,3.486702,'W88_MemberSite','2016-01-11 04:00:00','W88_MemberSite','2016-01-18 04:00:00',0.293527,'ACTIVATED'),(38,'RMB','VN2',3406.841619,NULL,'W88_MemberSite','2016-01-11 04:00:00','W88_MemberSite','2016-01-18 04:00:00',0.000294,'ACTIVATED'),(39,'RMB','AUD',0.221386,0.218140,'W88_MemberSite','2016-01-18 04:00:00','W88_MemberSite','2016-01-25 04:00:00',4.517007,'ACTIVATED'),(40,'RMB','EUR',0.139212,0.138824,'W88_MemberSite','2016-01-18 04:00:00','W88_MemberSite','2016-01-25 04:00:00',7.183305,'ACTIVATED'),(41,'RMB','GBP',0.106611,0.104472,'W88_MemberSite','2016-01-18 04:00:00','W88_MemberSite','2016-01-25 04:00:00',9.379855,'ACTIVATED'),(42,'RMB','IDR',2.109304,2.100756,'W88_MemberSite','2016-01-18 04:00:00','W88_MemberSite','2016-01-25 04:00:00',0.474090,'ACTIVATED'),(43,'RMB','ID2',2109.303696,2100.756041,'W88_MemberSite','2016-01-18 04:00:00','W88_MemberSite','2016-01-25 04:00:00',0.000474,'ACTIVATED'),(44,'RMB','INR',10.300705,10.145378,'W88_MemberSite','2016-01-18 04:00:00','W88_MemberSite','2016-01-25 04:00:00',0.097081,'ACTIVATED'),(45,'RMB','JPY',17.770771,17.783609,'W88_MemberSite','2016-01-18 04:00:00','W88_MemberSite','2016-01-25 04:00:00',0.056272,'ACTIVATED'),(46,'RMB','KRW',184.601605,183.281132,'W88_MemberSite','2016-01-18 04:00:00','W88_MemberSite','2016-01-25 04:00:00',0.005417,'ACTIVATED'),(47,'RMB','MYR',0.672377,0.670832,'W88_MemberSite','2016-01-18 04:00:00','W88_MemberSite','2016-01-25 04:00:00',1.487262,'ACTIVATED'),(48,'RMB','THB',5.518095,5.514961,'W88_MemberSite','2016-01-18 04:00:00','W88_MemberSite','2016-01-25 04:00:00',0.181222,'ACTIVATED'),(49,'RMB','USD',0.151948,0.151673,'W88_MemberSite','2016-01-18 04:00:00','W88_MemberSite','2016-01-25 04:00:00',6.581200,'ACTIVATED'),(50,'RMB','VND',3.406142,3.406842,'W88_MemberSite','2016-01-18 04:00:00','W88_MemberSite','2016-01-25 04:00:00',0.293587,'ACTIVATED'),(51,'RMB','VN2',3406.141887,3406.841619,'W88_MemberSite','2016-01-18 04:00:00','W88_MemberSite','2016-01-25 04:00:00',0.000294,'ACTIVATED'),(52,'RMB','AUD',0.217066,0.221386,'W88_MemberSite','2016-01-25 04:00:00','W88_MemberSite','2016-02-01 04:00:00',4.606896,'ACTIVATED'),(53,'RMB','EUR',0.140758,0.139212,'W88_MemberSite','2016-01-25 04:00:00','W88_MemberSite','2016-02-01 04:00:00',7.104416,'ACTIVATED'),(54,'RMB','GBP',0.106517,0.106611,'W88_MemberSite','2016-01-25 04:00:00','W88_MemberSite','2016-02-01 04:00:00',9.388146,'ACTIVATED'),(55,'RMB','IDR',2.108551,2.109304,'W88_MemberSite','2016-01-25 04:00:00','W88_MemberSite','2016-02-01 04:00:00',0.474259,'ACTIVATED'),(56,'RMB','ID2',2108.550721,2109.303696,'W88_MemberSite','2016-01-25 04:00:00','W88_MemberSite','2016-02-01 04:00:00',0.000474,'ACTIVATED'),(57,'RMB','INR',10.271301,10.300705,'W88_MemberSite','2016-01-25 04:00:00','W88_MemberSite','2016-02-01 04:00:00',0.097359,'ACTIVATED'),(58,'RMB','JPY',18.047238,17.770771,'W88_MemberSite','2016-01-25 04:00:00','W88_MemberSite','2016-02-01 04:00:00',0.055410,'ACTIVATED'),(59,'RMB','KRW',182.037885,184.601605,'W88_MemberSite','2016-01-25 04:00:00','W88_MemberSite','2016-02-01 04:00:00',0.005493,'ACTIVATED'),(60,'RMB','MYR',0.649224,0.672377,'W88_MemberSite','2016-01-25 04:00:00','W88_MemberSite','2016-02-01 04:00:00',1.540301,'ACTIVATED'),(61,'RMB','THB',5.474810,5.518095,'W88_MemberSite','2016-01-25 04:00:00','W88_MemberSite','2016-02-01 04:00:00',0.182655,'ACTIVATED'),(62,'RMB','USD',0.151990,0.151948,'W88_MemberSite','2016-01-25 04:00:00','W88_MemberSite','2016-02-01 04:00:00',6.579400,'ACTIVATED'),(63,'RMB','VND',3.404021,3.406142,'W88_MemberSite','2016-01-25 04:00:00','W88_MemberSite','2016-02-01 04:00:00',0.293770,'ACTIVATED'),(64,'RMB','VN2',3404.021238,3406.141887,'W88_MemberSite','2016-01-25 04:00:00','W88_MemberSite','2016-02-01 04:00:00',0.000294,'ACTIVATED'),(65,'RMB','THB',5.425671,5.474810,'W88_MemberSite','2016-02-01 04:00:00',NULL,'2100-01-01 00:00:00',0.184309,'ACTIVATED'),(66,'RMB','IDR',2.107082,2.108551,'W88_MemberSite','2016-02-01 04:00:00',NULL,'2100-01-01 00:00:00',0.474590,'ACTIVATED'),(67,'RMB','ID2',2107.081902,2108.550721,'W88_MemberSite','2016-02-01 04:00:00',NULL,'2100-01-01 00:00:00',0.000475,'ACTIVATED'),(68,'RMB','MYR',0.629911,0.649224,'W88_MemberSite','2016-02-01 04:00:00',NULL,'2100-01-01 00:00:00',1.587527,'ACTIVATED'),(69,'RMB','VND',3.380285,3.404021,'W88_MemberSite','2016-02-01 04:00:00',NULL,'2100-01-01 00:00:00',0.295833,'ACTIVATED'),(70,'RMB','VN2',3380.285499,3404.021238,'W88_MemberSite','2016-02-01 04:00:00',NULL,'2100-01-01 00:00:00',0.000296,'ACTIVATED'),(71,'RMB','USD',0.152045,0.151990,'W88_MemberSite','2016-02-01 04:00:00',NULL,'2100-01-01 00:00:00',6.577000,'ACTIVATED'),(72,'RMB','JPY',18.424010,18.047238,'W88_MemberSite','2016-02-01 04:00:00',NULL,'2100-01-01 00:00:00',0.054277,'ACTIVATED'),(73,'RMB','KRW',183.789745,182.037885,'W88_MemberSite','2016-02-01 04:00:00',NULL,'2100-01-01 00:00:00',0.005441,'ACTIVATED'),(74,'RMB','EUR',0.140380,0.140758,'W88_MemberSite','2016-02-01 04:00:00',NULL,'2100-01-01 00:00:00',7.123516,'ACTIVATED'),(75,'RMB','GBP',0.106769,0.106517,'W88_MemberSite','2016-02-01 04:00:00',NULL,'2100-01-01 00:00:00',9.365976,'ACTIVATED'),(76,'RMB','AUD',0.214592,0.217066,'W88_MemberSite','2016-02-01 04:00:00',NULL,'2100-01-01 00:00:00',4.660001,'ACTIVATED'),(77,'RMB','INR',10.322368,10.271301,'W88_MemberSite','2016-02-01 04:00:00',NULL,'2100-01-01 00:00:00',0.096877,'ACTIVATED');
/*!40000 ALTER TABLE `currency_exchange_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `entryconfig`
--

LOCK TABLES `entryconfig` WRITE;
/*!40000 ALTER TABLE `entryconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `entryconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `fpp_store_history`
--

LOCK TABLES `fpp_store_history` WRITE;
/*!40000 ALTER TABLE `fpp_store_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `fpp_store_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `fpp_store_item`
--

LOCK TABLES `fpp_store_item` WRITE;
/*!40000 ALTER TABLE `fpp_store_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `fpp_store_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `game_server_info`
--

LOCK TABLES `game_server_info` WRITE;
/*!40000 ALTER TABLE `game_server_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_server_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `gamename_dictionary`
--

LOCK TABLES `gamename_dictionary` WRITE;
/*!40000 ALTER TABLE `gamename_dictionary` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamename_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `gamerecord`
--

LOCK TABLES `gamerecord` WRITE;
/*!40000 ALTER TABLE `gamerecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `gameuser`
--

LOCK TABLES `gameuser` WRITE;
/*!40000 ALTER TABLE `gameuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `gameuser_avatar`
--

LOCK TABLES `gameuser_avatar` WRITE;
/*!40000 ALTER TABLE `gameuser_avatar` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameuser_avatar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `gift_item_package`
--

LOCK TABLES `gift_item_package` WRITE;
/*!40000 ALTER TABLE `gift_item_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_item_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `gift_record`
--

LOCK TABLES `gift_record` WRITE;
/*!40000 ALTER TABLE `gift_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `gift_transaction_logs`
--

LOCK TABLES `gift_transaction_logs` WRITE;
/*!40000 ALTER TABLE `gift_transaction_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_transaction_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ip_domain_mapping`
--

LOCK TABLES `ip_domain_mapping` WRITE;
/*!40000 ALTER TABLE `ip_domain_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_domain_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `item_package`
--

LOCK TABLES `item_package` WRITE;
/*!40000 ALTER TABLE `item_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `lobby_server_info`
--

LOCK TABLES `lobby_server_info` WRITE;
/*!40000 ALTER TABLE `lobby_server_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `lobby_server_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `login_record`
--

LOCK TABLES `login_record` WRITE;
/*!40000 ALTER TABLE `login_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `online_player`
--

LOCK TABLES `online_player` WRITE;
/*!40000 ALTER TABLE `online_player` DISABLE KEYS */;
/*!40000 ALTER TABLE `online_player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `operator`
--

LOCK TABLES `operator` WRITE;
/*!40000 ALTER TABLE `operator` DISABLE KEYS */;
INSERT INTO `operator` VALUES (1,'W88','1','INTERNAL','c173d5ec50ea','http://127.0.0.1:80/pokermahjongstub/authenticate.api','http://127.0.0.1:80/pokermahjongstub/authuserpass.api',NULL,'m9PEM8jL','McjSIBDK2d',NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:80/pokermahjongstub/ms/getbalance','http://127.0.0.1:80/pokermahjongstub/ms/debit','http://127.0.0.1:80/pokermahjongstub/ms/credit','mahjong','0a55d231-97ce-4969-88bc-cababff91421','http://127.0.0.1:80/pokermahjongstub/op/credit','http://127.0.0.1:80/pokermahjongstub/op/debit','http://127.0.0.1:80/pokermahjongstub/op/getbalance');
/*!40000 ALTER TABLE `operator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `p2p_consolidate_progress`
--

LOCK TABLES `p2p_consolidate_progress` WRITE;
/*!40000 ALTER TABLE `p2p_consolidate_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `p2p_consolidate_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `p2p_game`
--

LOCK TABLES `p2p_game` WRITE;
/*!40000 ALTER TABLE `p2p_game` DISABLE KEYS */;
INSERT INTO `p2p_game` VALUES ('NIUNIU','Niu Niu',20,1),('PKMJ','Poker Mahjong',10,1);
/*!40000 ALTER TABLE `p2p_game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `p2p_leader_board_gmt_plus8`
--

LOCK TABLES `p2p_leader_board_gmt_plus8` WRITE;
/*!40000 ALTER TABLE `p2p_leader_board_gmt_plus8` DISABLE KEYS */;
/*!40000 ALTER TABLE `p2p_leader_board_gmt_plus8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `p2p_player_history_statistic_gmt_plus8`
--

LOCK TABLES `p2p_player_history_statistic_gmt_plus8` WRITE;
/*!40000 ALTER TABLE `p2p_player_history_statistic_gmt_plus8` DISABLE KEYS */;
/*!40000 ALTER TABLE `p2p_player_history_statistic_gmt_plus8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `p2p_tournament_history_statistic_gmt_plus8`
--

LOCK TABLES `p2p_tournament_history_statistic_gmt_plus8` WRITE;
/*!40000 ALTER TABLE `p2p_tournament_history_statistic_gmt_plus8` DISABLE KEYS */;
/*!40000 ALTER TABLE `p2p_tournament_history_statistic_gmt_plus8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payment_log`
--

LOCK TABLES `payment_log` WRITE;
/*!40000 ALTER TABLE `payment_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pkmj_global_config`
--

LOCK TABLES `pkmj_global_config` WRITE;
/*!40000 ALTER TABLE `pkmj_global_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `pkmj_global_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `player_history`
--

LOCK TABLES `player_history` WRITE;
/*!40000 ALTER TABLE `player_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `playerticket`
--

LOCK TABLES `playerticket` WRITE;
/*!40000 ALTER TABLE `playerticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `register_option`
--

LOCK TABLES `register_option` WRITE;
/*!40000 ALTER TABLE `register_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `register_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ADMIN',1,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
INSERT INTO `sequence` VALUES ('FUN_USER',0);
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `settlement`
--

LOCK TABLES `settlement` WRITE;
/*!40000 ALTER TABLE `settlement` DISABLE KEYS */;
/*!40000 ALTER TABLE `settlement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `systemlogs`
--

LOCK TABLES `systemlogs` WRITE;
/*!40000 ALTER TABLE `systemlogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `systemlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `table_history`
--

LOCK TABLES `table_history` WRITE;
/*!40000 ALTER TABLE `table_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tabletype`
--

LOCK TABLES `tabletype` WRITE;
/*!40000 ALTER TABLE `tabletype` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabletype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tile_template`
--

LOCK TABLES `tile_template` WRITE;
/*!40000 ALTER TABLE `tile_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `tile_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tournament`
--

LOCK TABLES `tournament` WRITE;
/*!40000 ALTER TABLE `tournament` DISABLE KEYS */;
/*!40000 ALTER TABLE `tournament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tournament_history`
--

LOCK TABLES `tournament_history` WRITE;
/*!40000 ALTER TABLE `tournament_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `tournament_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `transactionrecord`
--

LOCK TABLES `transactionrecord` WRITE;
/*!40000 ALTER TABLE `transactionrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactionrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_message`
--

LOCK TABLES `user_message` WRITE;
/*!40000 ALTER TABLE `user_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_vpp_record`
--

LOCK TABLES `user_vpp_record` WRITE;
/*!40000 ALTER TABLE `user_vpp_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_vpp_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `userprofile`
--

LOCK TABLES `userprofile` WRITE;
/*!40000 ALTER TABLE `userprofile` DISABLE KEYS */;
INSERT INTO `userprofile` VALUES (1,'admin','PokerBO1234',NULL,1,1,'SYSTEM','admin',NULL,'2014-07-25 02:27:36');
/*!40000 ALTER TABLE `userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vip_level`
--

LOCK TABLES `vip_level` WRITE;
/*!40000 ALTER TABLE `vip_level` DISABLE KEYS */;
INSERT INTO `vip_level` VALUES (1001,'Earth Dragon',0.00,1.00,'MONTHLY',10.00,0.00),(1002,'Fire Dragon',750.00,1.50,'MONTHLY',30.00,750.00),(1003,'Water Dragon',3000.00,2.00,'MONTHLY',300.00,2000.00),(1004,'Wind Dragon',7500.00,2.50,'MONTHLY',2000.00,5000.00),(1005,'Light Dragon',100000.00,3.50,'YEARLY',10000.00,70000.00),(1006,'Gold Dragon',1000000.00,5.00,'YEARLY',0.00,0.00);
/*!40000 ALTER TABLE `vip_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vpp_record_history`
--

LOCK TABLES `vpp_record_history` WRITE;
/*!40000 ALTER TABLE `vpp_record_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `vpp_record_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-17 15:43:00
