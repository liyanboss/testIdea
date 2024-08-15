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
-- Table structure for table `accessmenu`
--

DROP TABLE IF EXISTS `accessmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessmenu` (
  `ACCESSMENU_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ACCESSMENU_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FK_PARENTACCESSMENU_ID` bigint(20) NOT NULL,
  `PATH` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_ACCESSABLE` tinyint(1) DEFAULT NULL,
  `IS_MENU` tinyint(1) DEFAULT NULL,
  `ROUTE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ACCESSMENU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=120110111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accessright`
--

DROP TABLE IF EXISTS `accessright`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessright` (
  `ACCESSRIGHT_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FK_ACCESSMENU_ID` bigint(20) NOT NULL,
  `FK_ROLE_ID` bigint(20) NOT NULL,
  `STATUS` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ACCESSRIGHT_ID`),
  KEY `FK26E773182287DA21` (`FK_ACCESSMENU_ID`),
  KEY `FK26E7731850119A81` (`FK_ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accumulated_clearing_report`
--

DROP TABLE IF EXISTS `accumulated_clearing_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accumulated_clearing_report` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `OPERATOR_ID` bigint(20) DEFAULT NULL,
  `ACCUMULATED_END_TIME` datetime DEFAULT NULL,
  `ACCUMULATED_AMOUNT` decimal(19,2) NOT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ACCUMULATED_CLEARING_REPORT_TO_OPERATOR` (`OPERATOR_ID`),
  KEY `ACCUMULATED_DATE_INDEX` (`ACCUMULATED_END_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `alert_case`
--

DROP TABLE IF EXISTS `alert_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alert_case` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FK_GAMEUSER_ID` bigint(20) NOT NULL,
  `STATUS` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FK_TOURNAMENT_ID` bigint(20) DEFAULT NULL,
  `COMMENT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_TIME` datetime NOT NULL,
  `UPDATED_TIME` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REPEATED_NUMBER` bigint(20) NOT NULL,
  `FK_GAME_RECORD_ID` bigint(20) DEFAULT NULL,
  `FK_TABLE_CONFIG_ID` bigint(20) DEFAULT NULL,
  `FK_GENERATE_TABLE_ID` bigint(20) DEFAULT NULL,
  `GAMEUSER_IP` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `P2P_GAME_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ALERTCASETOGAMEUSER` (`FK_GAMEUSER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FK_OPERATOR_ID` bigint(20) NOT NULL,
  `VALID_FROM` datetime DEFAULT NULL,
  `VALID_TO` datetime DEFAULT NULL,
  `CATEGORY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `announcement_detail`
--

DROP TABLE IF EXISTS `announcement_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement_detail` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FK_ANNOUNCEMENT_ID` bigint(20) NOT NULL,
  `LANGUAGE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `announcement_operator`
--

DROP TABLE IF EXISTS `announcement_operator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement_operator` (
  `FK_ANNOUNCEMENT_ID` bigint(20) NOT NULL,
  `FK_OPERATOR_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bettingconfig`
--

DROP TABLE IF EXISTS `bettingconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bettingconfig` (
  `BETTING_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FK_OPERATOR_ID` bigint(20) NOT NULL,
  `BETTING_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BETTING_STRUCTURE` longtext COLLATE utf8_unicode_ci,
  `STATUS` tinyint(1) DEFAULT NULL,
  `P2P_GAME_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`BETTING_ID`),
  KEY `FK26F4963E91E856` (`FK_OPERATOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bonus_item_package`
--

DROP TABLE IF EXISTS `bonus_item_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bonus_item_package` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ITEM_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ORIGINAL_PRICE` decimal(19,2) DEFAULT NULL,
  `DISCOUNT_PRICE` decimal(19,2) DEFAULT NULL,
  `ENABLE` tinyint(1) DEFAULT NULL,
  `FB_OBJECT_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_AMOUNT` int(11) DEFAULT NULL,
  `BONUS_ITEM_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bonus_record`
--

DROP TABLE IF EXISTS `bonus_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bonus_record` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MEMBERSHIP_ID` varchar(50) NOT NULL,
  `BONUS_ID` bigint(20) DEFAULT NULL,
  `LAST_CLAIM_TIME` datetime DEFAULT NULL,
  `ACTION_TYPE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bonus_wallet`
--

DROP TABLE IF EXISTS `bonus_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bonus_wallet` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `GAMEUSER_ID` bigint(20) NOT NULL,
  `BALANCE` decimal(19,2) DEFAULT NULL,
  `ENABLE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `GAMEUSER_ID` (`GAMEUSER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bonus_wallet_history`
--

DROP TABLE IF EXISTS `bonus_wallet_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bonus_wallet_history` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `GAMEUSER_ID` bigint(20) DEFAULT NULL,
  `AMOUNT` decimal(19,2) DEFAULT NULL,
  `TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MARK` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `BEFORE_AMOUNT` decimal(19,2) DEFAULT NULL,
  `AFTER_AMOUNT` decimal(19,2) DEFAULT NULL,
  `BONUS_ROLLOVER_ID` bigint(20) DEFAULT NULL,
  `TABLE_CONFIG_ID` bigint(20) DEFAULT NULL,
  `GENERATE_TABLE_ID` bigint(20) DEFAULT NULL,
  `GAME_RECORD_ID` bigint(20) DEFAULT NULL,
  `TOURNAMENT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bonus_wallet_rollover`
--

DROP TABLE IF EXISTS `bonus_wallet_rollover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bonus_wallet_rollover` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `GAMEUSER_ID` bigint(20) DEFAULT NULL,
  `BONUS_FROM` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ROLLOVER_AMOUNT` decimal(19,2) DEFAULT NULL,
  `ROLLOVER_NUMBER` int(11) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `EXPIRE_TIME` datetime DEFAULT NULL,
  `FPP_REQUIRED` decimal(19,2) DEFAULT NULL,
  `FPP_COLLECTED` decimal(19,2) DEFAULT NULL,
  `STATUS_CODE` int(11) DEFAULT NULL,
  `TOURNAMENT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cappedrakeconfig`
--

DROP TABLE IF EXISTS `cappedrakeconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cappedrakeconfig` (
  `CAPPEDRAKE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SMALL_BLIND` decimal(19,2) DEFAULT NULL,
  `BIG_BLIND` decimal(19,2) DEFAULT NULL,
  `ANTE` decimal(19,2) DEFAULT NULL,
  `RAKE` decimal(19,6) DEFAULT NULL,
  `FK_OPERATOR_ID` bigint(20) NOT NULL,
  `CAPPEDRAKE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CAPPEDRAKE_STRUCTURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS` tinyint(1) DEFAULT NULL,
  `P2P_GAME_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CAPPEDRAKE_ID`),
  KEY `FK26F4963E91E855` (`FK_OPERATOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `currency_exchange_rate`
--

DROP TABLE IF EXISTS `currency_exchange_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency_exchange_rate` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CURRENCY_FROM` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CURRENCY_TO` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXCHANGE_RATE` decimal(20,6) DEFAULT NULL,
  `FORMER_RATE` decimal(20,6) DEFAULT NULL,
  `START_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `INVERSE_EXCHANGE_RATE` decimal(20,6) DEFAULT NULL,
  `STATUS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `databasechangelog`
--

DROP TABLE IF EXISTS `databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databasechangelog` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `AUTHOR` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FILENAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MD5SUM` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIQUIBASE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEXTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LABELS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `databasechangeloglock`
--

DROP TABLE IF EXISTS `databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entryconfig`
--

DROP TABLE IF EXISTS `entryconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entryconfig` (
  `ENTRY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FK_OPERATOR_ID` bigint(20) NOT NULL,
  `ENTRY_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENTRY_STRUCTURE` longtext COLLATE utf8_unicode_ci,
  `STATUS` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ENTRY_ID`),
  KEY `FK26F4963E91E857` (`FK_OPERATOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fpp_store_history`
--

DROP TABLE IF EXISTS `fpp_store_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fpp_store_history` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `GAMEUSER_ID` bigint(20) DEFAULT NULL,
  `FPP_STORE_ITEM_ID` bigint(20) DEFAULT NULL,
  `BEFORE_AMOUNT` decimal(19,2) DEFAULT NULL,
  `AFTER_AMOUNT` decimal(19,2) DEFAULT NULL,
  `EXCHANGE_RATE` decimal(19,6) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `VIP_LEVEL_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_fpp_store_history_1` (`FPP_STORE_ITEM_ID`,`GAMEUSER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fpp_store_item`
--

DROP TABLE IF EXISTS `fpp_store_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fpp_store_item` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUIRED_FPP` decimal(19,2) DEFAULT NULL,
  `REWARD_EXPIRED_TIME` datetime DEFAULT NULL,
  `VIP_LEVEL_DOWNBOUND` bigint(20) DEFAULT NULL,
  `VIP_LEVEL_UPBOUND` bigint(20) DEFAULT NULL,
  `VALUE_AMOUNT` decimal(19,2) DEFAULT NULL,
  `TICKET_ID` bigint(20) DEFAULT NULL,
  `ITEM_EXPIRED_TIME` datetime DEFAULT NULL,
  `LIMIT_PER_DAY` int(11) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `CREATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATED_TIME` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_server_info`
--

DROP TABLE IF EXISTS `game_server_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_server_info` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `SERVER_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `INTERNAL_IP` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NO_OF_ACTORS` bigint(20) DEFAULT NULL,
  `ACTIVE` tinyint(1) DEFAULT NULL,
  `AKKA_PORT` int(11) DEFAULT '25527',
  `INTERNAL_DR_IP` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RUNNING_ON_DR` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gamename_dictionary`
--

DROP TABLE IF EXISTS `gamename_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamename_dictionary` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `EN_NAME` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ZH_NAME` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENABLE` tinyint(1) DEFAULT NULL,
  `TH_NAME` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VI_NAME` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KM_NAME` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID_NAME` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KO_NAME` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `JA_NAME` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EN_NAME` (`EN_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gamerecord`
--

DROP TABLE IF EXISTS `gamerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamerecord` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `LOG` longtext COLLATE utf8_unicode_ci,
  `START_TIME` datetime DEFAULT NULL,
  `FINISH_TIME` datetime DEFAULT NULL,
  `BELONG_TO_TYPE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BELONG_TO_ID` bigint(20) DEFAULT NULL,
  `P2P_GAME_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_gamerecord_1` (`BELONG_TO_TYPE`,`BELONG_TO_ID`,`FINISH_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gameuser`
--

DROP TABLE IF EXISTS `gameuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameuser` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MEMBERSHIP_ID` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NICKNAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PLAY_MONEY` decimal(19,2) DEFAULT NULL,
  `CURRENCY_NAME` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FK_OPERATOR_ID` bigint(20) NOT NULL,
  `TOTAL_MONTHLY_VPP` decimal(19,2) DEFAULT NULL,
  `TOTAL_FPP` decimal(19,2) DEFAULT NULL,
  `LANGUAGE` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_LOGIN_TIME` datetime DEFAULT NULL,
  `GAMEUSER_CREATED_TIME` datetime DEFAULT NULL,
  `GAMEUSER_UPDATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GAMEUSER_UPDATED_TIME` datetime DEFAULT NULL,
  `TEST_USER` tinyint(1) DEFAULT NULL,
  `AVATAR_INDEX` bigint(20) DEFAULT NULL,
  `LAST_LOGIN_IP` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_LOGIN_COUNTRY_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `LAST_LOGIN_PLATFORM` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VPP_LAST_UPDATE_TIME` datetime DEFAULT NULL,
  `BACKGROUND_INDEX` bigint(20) DEFAULT NULL,
  `USER_AVAILABILITY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MARK_LEVEL` int(11) DEFAULT NULL,
  `MARK_INFO` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MEMBER_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FK_VIP_LEVEL_ID` bigint(20) DEFAULT NULL,
  `INTERNAL_TOKEN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOBBY_SERVER_ID` bigint(20) DEFAULT NULL,
  `TRIAL_USER_TAG` int(11) DEFAULT NULL,
  `TOTAL_YEARLY_VPP` decimal(19,2) DEFAULT NULL,
  `HIGHEST_VIP_LEVEL_ID` bigint(20) DEFAULT NULL,
  `VIP_ALERT_STATUS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WHITELISTED_USER` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NICKNAME` (`NICKNAME`),
  UNIQUE KEY `UK_OPERATOR_ID_MEMBERSHIP_ID` (`FK_OPERATOR_ID`,`MEMBERSHIP_ID`),
  KEY `FK8EA38701999A1521` (`CURRENCY_NAME`),
  KEY `FK8EA387013E91E841` (`FK_OPERATOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gameuser_avatar`
--

DROP TABLE IF EXISTS `gameuser_avatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameuser_avatar` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `GAMEUSER_ID` bigint(20) DEFAULT NULL,
  `AVATAR_ID` bigint(20) DEFAULT NULL,
  `EXPIRED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gift_item_package`
--

DROP TABLE IF EXISTS `gift_item_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_item_package` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ITEM_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ORIGINAL_PRICE` decimal(19,2) DEFAULT NULL,
  `DISCOUNT_PRICE` decimal(19,2) DEFAULT NULL,
  `ENABLE` tinyint(1) DEFAULT NULL,
  `FB_OBJECT_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_AMOUNT` int(11) DEFAULT NULL,
  `GIFT_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gift_record`
--

DROP TABLE IF EXISTS `gift_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_record` (
  `MEMBERSHIP_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GIFT_ID` bigint(20) NOT NULL,
  `RECEIPIENTS` text COLLATE utf8_unicode_ci,
  `ACTION_TYPE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gift_transaction_logs`
--

DROP TABLE IF EXISTS `gift_transaction_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_transaction_logs` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FK_SENDER_ID` bigint(20) NOT NULL,
  `SENDER_NAME` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FK_RECIPIENT_ID` bigint(20) NOT NULL,
  `RECIPIENT_NAME` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FK_OPERATOR_ID` bigint(20) NOT NULL,
  `ACTOION_TYPE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FK_GIFT_ID` bigint(20) NOT NULL,
  `REQUEST_ID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `BEFORE_AMOUNT` decimal(19,2) DEFAULT NULL,
  `AFTER_AMOUNT` decimal(19,2) DEFAULT NULL,
  `TRX_STATUS` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ip_domain_mapping`
--

DROP TABLE IF EXISTS `ip_domain_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_domain_mapping` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `INTERNAL_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FOR_WEB_SOCKET` tinyint(1) DEFAULT NULL,
  `HAS_BANNED` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `item_package`
--

DROP TABLE IF EXISTS `item_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_package` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ITEM_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ORIGINAL_PRICE` decimal(19,2) NOT NULL,
  `CHIP_AMOUNT` int(11) DEFAULT NULL,
  `DISCOUNT_PRICE` decimal(19,2) DEFAULT NULL,
  `ENABLE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lobby_server_info`
--

DROP TABLE IF EXISTS `lobby_server_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lobby_server_info` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SERVER_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NO_OF_CONNECTIONS` bigint(20) DEFAULT NULL,
  `INTERNAL_IP` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` tinyint(1) DEFAULT NULL,
  `SOCKET_PORT` int(11) DEFAULT '10010',
  `WEB_SOCKET_PORT` int(11) DEFAULT NULL,
  `AKKA_PORT` int(11) DEFAULT '25523',
  `WEB_SOCKET_INTERNAL_PORT` int(11) DEFAULT NULL,
  `INTERNAL_DR_IP` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RUNNING_ON_DR` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `login_record`
--

DROP TABLE IF EXISTS `login_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_record` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FK_GAMEUSER_ID` bigint(20) NOT NULL,
  `IP_ADDRESS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN_TIME` datetime DEFAULT NULL,
  `LOGOUT_TIME` datetime DEFAULT NULL,
  `PLATFORM` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COUNTRY_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `LOGIN_RECORD_TO_GAMEUSER_FK` (`FK_GAMEUSER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `online_player`
--

DROP TABLE IF EXISTS `online_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `online_player` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PLAYER_ID` bigint(20) NOT NULL,
  `LOBBY_ID` bigint(20) NOT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operator`
--

DROP TABLE IF EXISTS `operator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operator` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `OPERATOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OPERATOR_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OPERATOR_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WALLET_IDENTITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTH_TOKEN_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTH_PASS_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LEAVE_GAME_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTH_TOKEN_SECRET_KEY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTH_PASS_SECRET_KEY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LEAVE_GAME_SECRET_KEY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OP_CREATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OP_UPDATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OP_CREATED_TIME` datetime DEFAULT NULL,
  `OP_UPDATED_TIME` datetime DEFAULT NULL,
  `CASH_CHECK_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CASH_DEBIT_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CASH_CREDIT_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CASH_MERCH_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CASH_MERCH_PWD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FUND_TRANSFER_CREDIT_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FUND_TRANSFER_DEBIT_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FUND_TRANSFER_GET_BALANCE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OPERATOR_NAME` (`OPERATOR_NAME`),
  UNIQUE KEY `OPERATOR_CODE` (`OPERATOR_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `p2p_consolidate_progress`
--

DROP TABLE IF EXISTS `p2p_consolidate_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p2p_consolidate_progress` (
  `TYPE_ID` bigint(20) NOT NULL,
  `LAST_ID` bigint(20) DEFAULT NULL,
  `LAST_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `p2p_game`
--

DROP TABLE IF EXISTS `p2p_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p2p_game` (
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RANK` bigint(20) DEFAULT NULL,
  `ENABLE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `p2p_leader_board_gmt_plus8`
--

DROP TABLE IF EXISTS `p2p_leader_board_gmt_plus8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p2p_leader_board_gmt_plus8` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `GAMEUSER_ID` bigint(20) DEFAULT NULL,
  `TRANSACTION_DATE` date DEFAULT NULL,
  `P2P_GAME_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GAME_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WIN_AMOUNT` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_LEADER_BOARD_1` (`GAMEUSER_ID`,`TRANSACTION_DATE`,`P2P_GAME_CODE`,`GAME_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `p2p_player_history_statistic_gmt_plus8`
--

DROP TABLE IF EXISTS `p2p_player_history_statistic_gmt_plus8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p2p_player_history_statistic_gmt_plus8` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `GAMEUSER_ID` bigint(20) DEFAULT NULL,
  `OPERATOR_ID` bigint(20) DEFAULT NULL,
  `TABLE_CONFIG_ID` bigint(20) DEFAULT NULL,
  `P2P_GAME_CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CURRENCY_NAME` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TRANSACTION_DATETIME` datetime DEFAULT NULL,
  `MATCH_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CASH_RAKE_RMB` decimal(19,6) DEFAULT NULL,
  `CASH_WINLOSE_RMB` decimal(19,6) DEFAULT NULL,
  `CASH_RAKE` decimal(19,6) DEFAULT NULL,
  `CASH_WINLOSE` decimal(19,6) DEFAULT NULL,
  `TOTAL_RECORD_ID` bigint(20) DEFAULT NULL,
  `CASH_BET_RMB` decimal(19,6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_player_history_statistic_1` (`GAMEUSER_ID`,`OPERATOR_ID`,`TABLE_CONFIG_ID`,`P2P_GAME_CODE`,`CURRENCY_NAME`,`TRANSACTION_DATETIME`,`MATCH_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `p2p_tournament_history_statistic_gmt_plus8`
--

DROP TABLE IF EXISTS `p2p_tournament_history_statistic_gmt_plus8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p2p_tournament_history_statistic_gmt_plus8` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `GAMEUSER_ID` bigint(20) DEFAULT NULL,
  `OPERATOR_ID` bigint(20) DEFAULT NULL,
  `P2P_GAME_CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CURRENCY_NAME` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TRANSACTION_DATETIME` datetime DEFAULT NULL,
  `SITGO_BUYIN_REGIST_RMB` decimal(19,6) DEFAULT NULL,
  `SITGO_BUYIN_ADMIN_RMB` decimal(19,6) DEFAULT NULL,
  `SITGO_REWARD_MONEY_RMB` decimal(19,6) DEFAULT NULL,
  `SITGO_TICKET_BUYIN_REGIST_RMB` decimal(19,6) DEFAULT NULL,
  `SITGO_TICKET_BUYIN_ADMIN_RMB` decimal(19,6) DEFAULT NULL,
  `SITGO_TICKET_REWARD_REGIST_RMB` decimal(19,6) DEFAULT NULL,
  `SITGO_TICKET_REWARD_ADMIN_RMB` decimal(19,6) DEFAULT NULL,
  `SITGO_DEDUCT_RMB` decimal(19,6) DEFAULT NULL,
  `TOUR_BUYIN_REGIST_RMB` decimal(19,6) DEFAULT NULL,
  `TOUR_BUYIN_ADMIN_RMB` decimal(19,6) DEFAULT NULL,
  `TOUR_REWARD_MONEY_RMB` decimal(19,6) DEFAULT NULL,
  `TOUR_TICKET_BUYIN_REGIST_RMB` decimal(19,6) DEFAULT NULL,
  `TOUR_TICKET_BUYIN_ADMIN_RMB` decimal(19,6) DEFAULT NULL,
  `TOUR_TICKET_REWARD_REGIST_RMB` decimal(19,6) DEFAULT NULL,
  `TOUR_TICKET_REWARD_ADMIN_RMB` decimal(19,6) DEFAULT NULL,
  `TOUR_DEDUCT_RMB` decimal(19,6) DEFAULT NULL,
  `SITGO_BUYIN_REGIST` decimal(19,6) DEFAULT NULL,
  `SITGO_BUYIN_ADMIN` decimal(19,6) DEFAULT NULL,
  `SITGO_REWARD_MONEY` decimal(19,6) DEFAULT NULL,
  `SITGO_TICKET_BUYIN_REGIST` decimal(19,6) DEFAULT NULL,
  `SITGO_TICKET_BUYIN_ADMIN` decimal(19,6) DEFAULT NULL,
  `SITGO_TICKET_REWARD_REGIST` decimal(19,6) DEFAULT NULL,
  `SITGO_TICKET_REWARD_ADMIN` decimal(19,6) DEFAULT NULL,
  `SITGO_DEDUCT` decimal(19,6) DEFAULT NULL,
  `TOUR_BUYIN_REGIST` decimal(19,6) DEFAULT NULL,
  `TOUR_BUYIN_ADMIN` decimal(19,6) DEFAULT NULL,
  `TOUR_REWARD_MONEY` decimal(19,6) DEFAULT NULL,
  `TOUR_TICKET_BUYIN_REGIST` decimal(19,6) DEFAULT NULL,
  `TOUR_TICKET_BUYIN_ADMIN` decimal(19,6) DEFAULT NULL,
  `TOUR_TICKET_REWARD_REGIST` decimal(19,6) DEFAULT NULL,
  `TOUR_TICKET_REWARD_ADMIN` decimal(19,6) DEFAULT NULL,
  `TOUR_DEDUCT` decimal(19,6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_tournament_history_statistic_1` (`GAMEUSER_ID`,`OPERATOR_ID`,`P2P_GAME_CODE`,`CURRENCY_NAME`,`TRANSACTION_DATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_log`
--

DROP TABLE IF EXISTS `payment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_log` (
  `PAYMENT_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `GAMEUSER_ID` bigint(20) NOT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,2) DEFAULT NULL,
  `CURRENCY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXCHANGE_RATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTION_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTION_STATUS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPUTE_STATUS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPUTE_COMMENT` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPUTE_TIME` datetime DEFAULT NULL,
  `DISPUTE_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPUTE_REASON` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pkmj_global_config`
--

DROP TABLE IF EXISTS `pkmj_global_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pkmj_global_config` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `KEY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `OLD_VALUE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENABLE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `player_history`
--

DROP TABLE IF EXISTS `player_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_history` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FK_RECORD_ID` bigint(20) NOT NULL,
  `FK_OPERATOR_ID` bigint(20) NOT NULL,
  `FK_PLAYER_ID` bigint(20) NOT NULL,
  `CURRENCY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BET_AMOUNT` decimal(19,2) DEFAULT NULL,
  `WIN_FROM_POT` decimal(19,2) DEFAULT NULL,
  `WIN_LOSE` decimal(19,2) DEFAULT NULL,
  `COLLECTED_RAKE` decimal(19,6) DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `TABLE_NAME` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POSITION` int(11) DEFAULT NULL,
  `MUCK_CARD` tinyint(1) DEFAULT NULL,
  `TILE_RESULT` longtext COLLATE utf8_unicode_ci,
  `VPP` decimal(19,2) DEFAULT NULL,
  `FPP` decimal(19,2) DEFAULT NULL,
  `EXCHANGE_RATE` decimal(19,6) DEFAULT NULL,
  `TABLE_CONFIG_ID` bigint(20) DEFAULT NULL,
  `GENERATE_TABLE_ID` bigint(20) DEFAULT NULL,
  `TOURNAMENT_ID` bigint(20) DEFAULT NULL,
  `ROOM_CATEGORY_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MATCH_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `P2P_GAME_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK4F061923E26H88D5` (`FK_RECORD_ID`),
  KEY `FK4F0619233E91Z845` (`FK_OPERATOR_ID`),
  KEY `FK4F0619233E91Z867` (`FK_PLAYER_ID`),
  KEY `ix_player_history_2` (`FK_PLAYER_ID`,`MATCH_TYPE`,`END_TIME`),
  KEY `idx_player_history_1` (`WIN_LOSE`,`MATCH_TYPE`,`END_TIME`,`FK_PLAYER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `playerticket`
--

DROP TABLE IF EXISTS `playerticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playerticket` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint(20) NOT NULL,
  `TICKET_ID` bigint(20) NOT NULL,
  `STATE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXPIRE_TIME` datetime DEFAULT NULL,
  `CREATED_BY` int(1) DEFAULT NULL,
  `CREATOR_REF_ID` bigint(20) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `register_option`
--

DROP TABLE IF EXISTS `register_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register_option` (
  `OPTION_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TOURNAMENT_ID` bigint(20) NOT NULL,
  `FEE_TYPE` varchar(255) DEFAULT NULL,
  `REGISTER_FEE` decimal(19,2) DEFAULT NULL,
  `ADMIN_FEE` decimal(19,2) DEFAULT NULL,
  `TICKET_ID` bigint(20) DEFAULT NULL,
  `TICKET_AMOUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`OPTION_ID`),
  KEY `idx_tournament_id` (`TOURNAMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `ROLE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FK_OPERATOR_ID` bigint(20) NOT NULL,
  `ROLE_CREATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ROLE_UPDATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ROLE_CREATED_TIME` datetime DEFAULT NULL,
  `ROLE_UPDATED_TIME` datetime DEFAULT NULL,
  `STATUS` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`),
  KEY `FK26F4963E91E841` (`FK_OPERATOR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequence` (
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VAL` bigint(20) NOT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `settlement`
--

DROP TABLE IF EXISTS `settlement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settlement` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `OPERATOR_ID` bigint(20) DEFAULT NULL,
  `SETTLEMENT_AMOUNT` decimal(19,2) NOT NULL,
  `MEMO` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `CREATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FINANCE_SETTLEMENT_TO_OPERATOR` (`OPERATOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `systemlogs`
--

DROP TABLE IF EXISTS `systemlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemlogs` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` longtext COLLATE utf8_unicode_ci,
  `OPERATOR_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `IP` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REASON` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `table_history`
--

DROP TABLE IF EXISTS `table_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_history` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FK_RECORD_ID` bigint(20) NOT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CURRENCY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEATS_PER_TABLE` int(11) DEFAULT NULL,
  `RAKE` decimal(19,6) DEFAULT NULL,
  `SMALL_BLIND` decimal(19,2) DEFAULT NULL,
  `BIG_BLIND` decimal(19,2) DEFAULT NULL,
  `MIN_BUY_IN_AMOUNT` decimal(19,2) DEFAULT NULL,
  `MAX_BUY_IN_AMOUNT` decimal(19,2) DEFAULT NULL,
  `COLLECTED_RAKE` decimal(19,6) DEFAULT NULL,
  `TOTAL_POT` decimal(19,2) DEFAULT NULL,
  `TABLE_CONFIG_ID` bigint(20) DEFAULT NULL,
  `GENERATE_TABLE_ID` bigint(20) DEFAULT NULL,
  `OPERATOR_LIST` longtext COLLATE utf8_unicode_ci,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `ROOM_CATEGORY_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FK_DEALER_ID` bigint(20) DEFAULT NULL,
  `P2P_GAME_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK4F061923E26H47D3` (`FK_RECORD_ID`),
  KEY `ix_table_history_2` (`START_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tabletype`
--

DROP TABLE IF EXISTS `tabletype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabletype` (
  `TABLE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ROOM_CATEGORY_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_CREATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_UPDATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_CREATED_TIME` datetime DEFAULT NULL,
  `TABLE_UPDATED_TIME` datetime DEFAULT NULL,
  `MIN_PLAYER` int(11) DEFAULT NULL,
  `SMALL_BLIND` decimal(19,2) DEFAULT NULL,
  `BIG_BLIND` decimal(19,2) DEFAULT NULL,
  `RAKE` decimal(19,6) DEFAULT NULL,
  `CAPPED_RAKE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GAMEUSER_BETTINGTIME` int(11) DEFAULT NULL,
  `STATUS` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'DISABLED',
  `PLAYER_HAND_SIZE` int(11) DEFAULT NULL,
  `MIN_BUY_IN_AMOUNT` decimal(19,2) DEFAULT NULL,
  `MAX_BUY_IN_AMOUNT` decimal(19,2) DEFAULT NULL,
  `GAMEUSER_DISCARDTIME` int(11) DEFAULT NULL,
  `TABLE_AUTOGENERATE` tinyint(1) DEFAULT NULL,
  `TABLE_CURRENCY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEATS_PER_TABLE` int(11) DEFAULT NULL,
  `ANTE` decimal(19,2) DEFAULT NULL,
  `FK_OPERATOR_ID` bigint(20) NOT NULL,
  `CAPPEDRAKE_KEY_ID` int(11) DEFAULT NULL,
  `BET_TYPE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INIT_NUMBER` int(11) DEFAULT NULL,
  `VIP_LEVEL_UPBOUND` bigint(20) DEFAULT NULL,
  `OPERATOR_LIST` longtext COLLATE utf8_unicode_ci,
  `VIP_LEVEL_DOWNBOUND` bigint(20) DEFAULT NULL,
  `GAMESERVER_ID` bigint(10) DEFAULT NULL,
  `TILE_TEMPLATE_ID` bigint(20) DEFAULT NULL,
  `COLOR_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NUMBER_OF_DISCARD` int(11) DEFAULT NULL,
  `MIN_BET_AMOUNT` decimal(19,2) DEFAULT NULL,
  `P2P_GAME_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEST_USER_ONLY` tinyint(1) DEFAULT NULL,
  `GAMEUSER_ID` bigint(20) DEFAULT NULL,
  `JOIN_PASS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TABLE_ID`),
  KEY `FK54902CE865F8D2` (`ROOM_CATEGORY_ID`),
  KEY `FK26F4963E91E859` (`FK_OPERATOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `TICKET_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FK_OPERATOR_ID` bigint(20) NOT NULL,
  `TICKET_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REGISTER_FEE` decimal(19,2) DEFAULT NULL,
  `ADMIN_FEE` decimal(19,2) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TICKET_CREATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TICKET_CREATED_TIME` datetime DEFAULT NULL,
  `TICKET_UPDATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TICKET_UPDATED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`TICKET_ID`),
  KEY `FK26F4963E91E858` (`FK_OPERATOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tile_template`
--

DROP TABLE IF EXISTS `tile_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tile_template` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `STONE` int(11) DEFAULT NULL,
  `BAMBOO` int(11) DEFAULT NULL,
  `CHARACTER` int(11) DEFAULT NULL,
  `WIND` int(11) DEFAULT NULL,
  `DRAGON` int(11) DEFAULT NULL,
  `JOKER` int(11) DEFAULT NULL,
  `ENABLE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tournament`
--

DROP TABLE IF EXISTS `tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournament` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MAX_PLAYER` int(11) DEFAULT NULL,
  `MIN_PLAYER` int(11) DEFAULT NULL,
  `REGISTER_TIME` datetime DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `REWARD` longtext COLLATE utf8_unicode_ci,
  `ADDITIONAL_CONFIG` longtext COLLATE utf8_unicode_ci,
  `DISPLAY_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ROOM_CATEGORY_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TOURNAMENT_TYPE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BETTING_STRUCTURE` longtext COLLATE utf8_unicode_ci,
  `SEATS_PER_TABLE` int(11) DEFAULT NULL,
  `TOUR_DESCRIPTION` longtext COLLATE utf8_unicode_ci,
  `STARTING_CHIPS` decimal(19,2) DEFAULT NULL,
  `DISCARD_TIME` int(11) DEFAULT NULL,
  `BET_TIME` int(11) DEFAULT NULL,
  `PLAYER_HAND_SIZE` int(11) DEFAULT NULL,
  `STATE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FK_OPERATOR_ID` bigint(20) NOT NULL,
  `ACTUAL_START_TIME` datetime DEFAULT NULL,
  `ACTUAL_PLAYER_COUNT` int(11) DEFAULT NULL,
  `VIP_LEVEL_UPBOUND` bigint(20) DEFAULT NULL,
  `REGISTER_FEE_TO_POD_TYPE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REGISTER_FEE_TO_POD_AMOUNT` decimal(19,2) DEFAULT NULL,
  `FINISH_TIME` datetime DEFAULT NULL,
  `OPERATOR_LIST` longtext COLLATE utf8_unicode_ci,
  `TICKET_EXPIRE_TIME` datetime DEFAULT NULL,
  `VIP_LEVEL_DOWNBOUND` bigint(20) DEFAULT NULL,
  `GAMESERVER_ID` bigint(10) DEFAULT NULL,
  `TILE_TEMPLATE_ID` bigint(20) DEFAULT NULL,
  `SNAPSHOT` longtext COLLATE utf8_unicode_ci,
  `SUSPEND_START_TIME` datetime DEFAULT NULL,
  `SUSPEND_FINISH_TIME` datetime DEFAULT NULL,
  `RESUME_TIME` datetime DEFAULT NULL,
  `COLOR_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GPI_SPONSORED` tinyint(1) DEFAULT NULL,
  `REWARD_BONUS_WALLET` tinyint(1) DEFAULT NULL,
  `NUMBER_OF_DISCARD` int(11) DEFAULT NULL,
  `P2P_GAME_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEST_USER_ONLY` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKE79FB03E91ABC81` (`FK_OPERATOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tournament_history`
--

DROP TABLE IF EXISTS `tournament_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournament_history` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FK_GAMEUSER_ID` bigint(20) NOT NULL,
  `FK_TOURNAMENT_ID` bigint(20) NOT NULL,
  `REGISTER_OPTION` int(11) DEFAULT NULL,
  `REGISTER_TIME` datetime DEFAULT NULL,
  `REGISTER_IP` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FINAL_STANDING` int(11) DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `BUYIN_EXCHANGE_RATE` decimal(20,6) DEFAULT NULL,
  `BUYIN_REGIST_FEE` decimal(19,2) DEFAULT NULL,
  `BUYIN_ADMIN_FEE` decimal(19,2) DEFAULT NULL,
  `BUYIN_TICKET_ID` bigint(20) DEFAULT NULL,
  `BUYIN_TICKET_AMOUNT` int(11) DEFAULT NULL,
  `BUYIN_TICKET_REGIST_FEE` decimal(19,2) DEFAULT NULL,
  `BUYIN_TICKET_ADMIN_FEE` decimal(19,2) DEFAULT NULL,
  `DEDUCTION_FEE` decimal(21,4) DEFAULT NULL,
  `REWARD_EXCHANGE_RATE` decimal(20,6) DEFAULT NULL,
  `REWARD_AMOUNT` decimal(19,2) DEFAULT NULL,
  `REWARD_TICKET_ID` bigint(20) DEFAULT NULL,
  `REWARD_TICKET_AMOUNT` int(11) DEFAULT NULL,
  `REWARD_TICKET_REGIST_FEE` decimal(19,2) DEFAULT NULL,
  `REWARD_TICKET_ADMIN_FEE` decimal(19,2) DEFAULT NULL,
  `P2P_GAME_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `TOURNAMENTHISTORYTOGAMEUSER` (`FK_GAMEUSER_ID`),
  KEY `TOURNAMENTHISTORYTOTOURNAMENT` (`FK_TOURNAMENT_ID`),
  KEY `idx_tournament_history_1` (`REWARD_AMOUNT`,`END_TIME`,`FK_GAMEUSER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transactionrecord`
--

DROP TABLE IF EXISTS `transactionrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactionrecord` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FK_OPERATOR_ID` bigint(20) NOT NULL,
  `FK_USER_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,2) DEFAULT NULL,
  `CURRENCY` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MARK` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATOR_NAME` longtext COLLATE utf8_unicode_ci,
  `REQUEST_TIME` datetime DEFAULT NULL,
  `REQUEST_RECORD` longtext COLLATE utf8_unicode_ci,
  `RESPONSE_TIME` datetime DEFAULT NULL,
  `RESPONSE_RECORD` longtext COLLATE utf8_unicode_ci,
  `PROCESS_TIME` datetime DEFAULT NULL,
  `TABLE_CONFIG_ID` bigint(20) DEFAULT NULL,
  `GENERATE_TABLE_ID` bigint(20) DEFAULT NULL,
  `TOURNAMENT_ID` bigint(20) DEFAULT NULL,
  `ROOM_CATEGORY_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BEFORE_AMOUNT` decimal(19,2) DEFAULT NULL,
  `AFTER_AMOUNT` decimal(19,2) DEFAULT NULL,
  `TRX_STATUS` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WALLET_TRX_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MERCHANT_TXN_ID` bigint(20) DEFAULT NULL,
  `GAME_RECORD_ID` bigint(20) DEFAULT NULL,
  `PLATFORM_SHOOT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GAME_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BONUS_ROLLOVER_ID` bigint(20) DEFAULT NULL,
  `FPP_STORE_ITEM_ID` bigint(20) DEFAULT NULL,
  `EXCHANGE_RATE` decimal(20,6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_transactionrecord_1` (`FK_USER_ID`,`FK_OPERATOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_message`
--

DROP TABLE IF EXISTS `user_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_message` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `GAMEUSER_ID` bigint(20) DEFAULT NULL,
  `TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_vpp_record`
--

DROP TABLE IF EXISTS `user_vpp_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_vpp_record` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VALUE` decimal(19,2) DEFAULT NULL,
  `FK_GAMEUSER_ID` bigint(20) NOT NULL,
  `MONTH` int(11) DEFAULT NULL,
  `YEAR` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `USERVPPRECORDTOGAMEUSER` (`FK_GAMEUSER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userprofile`
--

DROP TABLE IF EXISTS `userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userprofile` (
  `USERPROFILE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USERPROFILE_NAME` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS` tinyint(1) DEFAULT NULL,
  `FK_ROLE_ID` bigint(20) NOT NULL,
  `USP_CREATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USP_UPDATED_BY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USP_CREATED_TIME` datetime DEFAULT NULL,
  `USP_UPDATED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`USERPROFILE_ID`),
  KEY `FKDBC17B5E50119A81` (`FK_ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip_level`
--

DROP TABLE IF EXISTS `vip_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_level` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VIP_LEVEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VPP_REQUIRED` decimal(19,2) DEFAULT NULL,
  `FPP_PER_VPP` decimal(4,2) DEFAULT NULL,
  `MONTHLY_YEARLY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LEVEL_UP_FPP` decimal(19,2) DEFAULT NULL,
  `RETENTION_POINT` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vpp_record_history`
--

DROP TABLE IF EXISTS `vpp_record_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vpp_record_history` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `GAMEUSER_ID` bigint(20) DEFAULT NULL,
  `BEFORE_VIP_LEVEL_ID` bigint(20) DEFAULT NULL,
  `AFTER_VIP_LEVEL_ID` bigint(20) DEFAULT NULL,
  `MONTHLY_VPP_VALUE` decimal(19,2) DEFAULT NULL,
  `YEARLY_VPP_VALUE` decimal(19,2) DEFAULT NULL,
  `FPP_VALUE` decimal(19,2) DEFAULT NULL,
  `VIP_ALERT_STATUS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VPP_LAST_UPDATE_TIME` datetime DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-17 10:05:39
