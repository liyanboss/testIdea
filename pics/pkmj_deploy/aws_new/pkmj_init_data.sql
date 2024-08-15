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
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('initPkmjTableSchema','lee','src/main/resources/dbchangelog-pkmj/iteration19/pkmj.schema.xml','2020-08-20 11:23:50',1,'EXECUTED','8:c64480230c83367626c0d0c7779d21c5','sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('initPkmjInitData','lee','src/main/resources/dbchangelog-pkmj/iteration19/pkmj.initdata.xml','2020-08-20 11:23:51',2,'EXECUTED','8:ee8e5f185c1955bf9a180c127b98e1a2','sqlFile; sqlFile; sqlFile; sqlFile; sqlFile; sqlFile; sqlFile; sqlFile; sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('create-next_val-FUNCTION','lee','src/main/resources/dbchangelog-pkmj/iteration19/routines/pkmj.next_val.func.xml','2020-08-20 11:23:51',3,'EXECUTED','8:e8ec0dee4795d0bd4db40709e62f77f1','sql; createProcedure','',NULL,'3.6.1',NULL,NULL,'7893813163'),('create-calc_leader_board-PROCEDURE','lee','src/main/resources/dbchangelog-pkmj/iteration19/routines/pkmj.calc_leader_board.proc.xml','2020-08-20 11:23:51',4,'EXECUTED','8:28870bf9271023de5622af26e9f73126','sql; createProcedure','',NULL,'3.6.1',NULL,NULL,'7893813163'),('create-calc_winner_daily-PROCEDURE','lee','src/main/resources/dbchangelog-pkmj/iteration19/routines/pkmj.calc_winner_daily.proc.xml','2020-08-20 11:23:51',5,'EXECUTED','8:e3ab23d1d47e3b3eae901eb4085b7ac6','sql; createProcedure','',NULL,'3.6.1',NULL,NULL,'7893813163'),('create-insert_accumulated_clearing_report-PROCEDURE','lee','src/main/resources/dbchangelog-pkmj/iteration19/routines/pkmj.insert_accumulated_clearing_report.proc.xml','2020-08-20 11:23:51',6,'EXECUTED','8:de0825e4aa2876ca03e52382a09a0eb4','sql; createProcedure','',NULL,'3.6.1',NULL,NULL,'7893813163'),('create-sp_consolidate_leader_board_from_player_history_gmt_plus8-PROCEDURE','lee','src/main/resources/dbchangelog-pkmj/iteration19/routines/pkmj.sp_consolidate_leader_board_from_player_history_gmt_plus8.proc.xml','2020-08-20 11:23:51',7,'EXECUTED','8:2b017e98233db5d7647e5fc5e7bc2ca0','sql; createProcedure','',NULL,'3.6.1',NULL,NULL,'7893813163'),('create-sp_consolidate_leader_board_from_tournament_history_gmt_plus8-PROCEDURE','lee','src/main/resources/dbchangelog-pkmj/iteration19/routines/pkmj.sp_consolidate_leader_board_from_tournament_history_gmt_plus8.proc.xml','2020-08-20 11:23:51',8,'EXECUTED','8:7e0e25519817b905a1619255a44fb927','sql; createProcedure','',NULL,'3.6.1',NULL,NULL,'7893813163'),('create-sp_consolidate_player_history_statistic_gmt_plus8-PROCEDURE','lee','src/main/resources/dbchangelog-pkmj/iteration19/routines/pkmj.sp_consolidate_player_history_statistic_gmt_plus8.proc.xml','2020-08-20 11:23:51',9,'EXECUTED','8:a30782d9760424939007410155f5b890','sql; createProcedure','',NULL,'3.6.1',NULL,NULL,'7893813163'),('create-sp_consolidate_tournament_history_statistic_gmt_plus8-PROCEDURE','lee','src/main/resources/dbchangelog-pkmj/iteration19/routines/pkmj.sp_consolidate_tournament_history_statistic_gmt_plus8.proc.xml','2020-08-20 11:23:51',10,'EXECUTED','8:55766017c5142918a04ed15bcb2e65f7','sql; createProcedure','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration20_schema_update','lee','src/main/resources/dbchangelog-pkmj/iteration20/pkmj.schema.xml','2020-08-20 11:23:53',11,'EXECUTED','8:000a92da63929981658c7101d866c815','sqlFile; sqlFile; sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration20_proddata_update','lee','src/main/resources/dbchangelog-pkmj/iteration20/pkmj.proddata.xml','2020-08-20 11:23:53',12,'EXECUTED','8:d95bed41f1e28f34fd2cb926a4d799f2','sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration21_schema_update','lee','src/main/resources/dbchangelog-pkmj/iteration21/pkmj.schema.xml','2020-08-20 11:23:53',13,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration21_proddata_update','lee','src/main/resources/dbchangelog-pkmj/iteration21/pkmj.proddata.xml','2020-08-20 11:23:53',14,'EXECUTED','8:2edec3bc6a973ac909997a215cde4e2c','sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration21_1_schema_update','lee','src/main/resources/dbchangelog-pkmj/iteration21_1/pkmj.schema.xml','2020-08-20 11:23:53',15,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration21_1_proddata_update','lee','src/main/resources/dbchangelog-pkmj/iteration21_1/pkmj.proddata.xml','2020-08-20 11:23:53',16,'EXECUTED','8:c94af38667d8d269df12e64eabb2e07e','sqlFile; sqlFile; sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration22_schema_update','lee','src/main/resources/dbchangelog-pkmj/iteration22/pkmj.schema.xml','2020-08-20 11:23:54',17,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration22_proddata_update','lee','src/main/resources/dbchangelog-pkmj/iteration22/pkmj.proddata.xml','2020-08-20 11:23:54',18,'EXECUTED','8:833b579796854aba48d60a7947219466','sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('create-calc_leader_board-PROCEDURE','lee','src/main/resources/dbchangelog-pkmj/iteration22/routines/pkmj.calc_leader_board.proc.xml','2020-08-20 11:23:54',19,'EXECUTED','8:2369bb951ff91f7c6744efe16f0165e7','sql; createProcedure','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration22_1_schema_update','jluna','src/main/resources/dbchangelog-pkmj/iteration22_1/pkmj.schema.xml','2020-08-20 11:23:54',20,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration22_1_proddata_update','jluna','src/main/resources/dbchangelog-pkmj/iteration22_1/pkmj.proddata.xml','2020-08-20 11:23:54',21,'EXECUTED','8:8cb3d1d583511ad8a67e40fab34b0b67','sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration23_schema_update','lee','src/main/resources/dbchangelog-pkmj/iteration23/pkmj.schema.xml','2020-08-20 11:23:58',22,'EXECUTED','8:0b7e0f00ff7bc1c5bc64934c3f7ab018','sqlFile; sqlFile; sqlFile; sqlFile; sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration23_proddata_update','lee','src/main/resources/dbchangelog-pkmj/iteration23/pkmj.proddata.xml','2020-08-20 11:23:58',23,'EXECUTED','8:04352bcb254f7d94660ec56e92be82d3','sqlFile; sqlFile; sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration24_schema_update','lee','src/main/resources/dbchangelog-pkmj/iteration24/pkmj.schema.xml','2020-08-20 11:23:58',24,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration24_proddata_update','lee','src/main/resources/dbchangelog-pkmj/iteration24/pkmj.proddata.xml','2020-08-20 11:23:58',25,'EXECUTED','8:e1dadd15197d4b41ac8977f63e6ddcb9','sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration25_schema_update','lee','src/main/resources/dbchangelog-pkmj/iteration25/pkmj.schema.xml','2020-08-20 11:24:00',26,'EXECUTED','8:58a3caafca475b0a9b783a0543f83a10','sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration25_proddata_update','lee','src/main/resources/dbchangelog-pkmj/iteration25/pkmj.proddata.xml','2020-08-20 11:24:00',27,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration26_schema_update','lee','src/main/resources/dbchangelog-pkmj/iteration26/pkmj.schema.xml','2020-08-20 11:24:00',28,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration26_proddata_update','lee','src/main/resources/dbchangelog-pkmj/iteration26/pkmj.proddata.xml','2020-08-20 11:24:00',29,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration26_0_schema_update','lee','src/main/resources/dbchangelog-pkmj/iteration26_0/pkmj.schema.xml','2020-08-20 11:24:00',30,'EXECUTED','8:c725f3e575b626e0dfb95b43489bab75','sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration26_0_proddata_update','lee','src/main/resources/dbchangelog-pkmj/iteration26_0/pkmj.proddata.xml','2020-08-20 11:24:00',31,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'3.6.1',NULL,NULL,'7893813163'),('update-sp_consolidate_player_history_statistic_gmt_plus8-PROCEDURE','lee','src/main/resources/dbchangelog-pkmj/iteration26_0/routines/pkmj.sp_consolidate_player_history_statistic_gmt_plus8.proc.xml','2020-08-20 11:24:00',32,'EXECUTED','8:583cc3b3f2fe4cad7b378d8ca62d50cf','sql; createProcedure','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration27_schema_update','lee','src/main/resources/dbchangelog-pkmj/iteration27/pkmj.schema.xml','2020-08-20 11:24:00',33,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration27_proddata_update','lee','src/main/resources/dbchangelog-pkmj/iteration27/pkmj.proddata.xml','2020-08-20 11:24:01',34,'EXECUTED','8:c989bd7e478e0771fa9840d6ca18215e','sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration28_schema_update','lee','src/main/resources/dbchangelog-pkmj/iteration28/pkmj.schema.xml','2020-08-20 11:24:01',35,'EXECUTED','8:8f6e53dfbaa4331718f9c13b05f6687d','sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration28_proddata_update','lee','src/main/resources/dbchangelog-pkmj/iteration28/pkmj.proddata.xml','2020-08-20 11:24:01',36,'EXECUTED','8:2446f2b26c75111546a4155d5b306b46','sqlFile; sqlFile; sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration28_1_proddata_update','jluna','src/main/resources/dbchangelog-pkmj/iteration28_1/pkmj.proddata.xml','2020-08-20 11:24:01',37,'EXECUTED','8:35c1327763cd0597323ae71c49536d86','sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration28_5_schema_update','lee','src/main/resources/dbchangelog-pkmj/iteration28_5/pkmj.schema.xml','2020-08-20 11:24:01',38,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration28_5_proddata_update','lee','src/main/resources/dbchangelog-pkmj/iteration28_5/pkmj.proddata.xml','2020-08-20 11:24:01',39,'EXECUTED','8:7367d0b0456ec145ecbab0f84829ebda','sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration29_schema_update','lee','src/main/resources/dbchangelog-pkmj/iteration29/pkmj.schema.xml','2020-08-20 11:24:02',40,'EXECUTED','8:c66bfc7e2f75261001a162607169164c','sqlFile; sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration29_proddata_update','lee','src/main/resources/dbchangelog-pkmj/iteration29/pkmj.proddata.xml','2020-08-20 11:24:02',41,'EXECUTED','8:d562f04604c9ffc46708274c047b3c26','sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration29_1_schema_update','lee','src/main/resources/dbchangelog-pkmj/iteration29_1/pkmj.schema.xml','2020-08-20 11:24:03',42,'EXECUTED','8:63a4f76b62b4a31427777371e0a31a40','sqlFile; sqlFile; sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('iteration29_1_proddata_update','lee','src/main/resources/dbchangelog-pkmj/iteration29_1/pkmj.proddata.xml','2020-08-20 11:24:03',43,'EXECUTED','8:4a0b11a428e7a5fddc737173734f20c2','sqlFile','',NULL,'3.6.1',NULL,NULL,'7893813163'),('update-sp_consolidate_player_history_statistic_gmt_plus8-PROCEDURE','lee','src/main/resources/dbchangelog-pkmj/iteration29_1/routines/pkmj.sp_consolidate_player_history_statistic_gmt_plus8.proc.xml','2020-08-20 11:24:03',44,'EXECUTED','8:f6dd39e8fe0bc5c21d6d872213f2f348','sql; createProcedure','',NULL,'3.6.1',NULL,NULL,'7893813163'),('update-sp_consolidate_leader_board_from_player_history_gmt_plus8-PROCEDURE','lee','src/main/resources/dbchangelog-pkmj/iteration29_1/routines/pkmj.sp_consolidate_leader_board_from_player_history_gmt_plus8.proc.xml','2020-08-20 11:24:03',45,'EXECUTED','8:96a08a2e236eceb9d8ac917121d91e83','sql; createProcedure','',NULL,'3.6.1',NULL,NULL,'7893813163');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,'\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `accessmenu`
--

LOCK TABLES `accessmenu` WRITE;
/*!40000 ALTER TABLE `accessmenu` DISABLE KEYS */;
INSERT INTO `accessmenu` VALUES (110,'ACCOUNT',0,NULL,1,1,NULL),(120,'MEMBER',0,NULL,1,1,NULL),(125,'BONUS WALLET',0,NULL,1,1,NULL),(130,'OPERATOR',0,NULL,0,1,NULL),(135,'CURRENCY',0,NULL,1,1,NULL),(140,'FREE / CASH ROOM',0,NULL,1,1,'/free-cash-room'),(145,'GAME SETTING',0,NULL,1,1,NULL),(150,'TOURNAMENT ROOM',0,NULL,1,1,NULL),(160,'GAME MONITORING',0,NULL,1,1,NULL),(170,'ANNOUNCEMENT',0,NULL,1,1,NULL),(180,'REPORTS',0,NULL,1,1,'/reports'),(185,'FINANCE',0,NULL,1,1,NULL),(190,'SYSTEM MONITORING',0,NULL,0,1,NULL),(110120,'Account List',110,'/bo/accountList.xhtml',1,1,NULL),(110130,'Account List Edit',110,'/bo/accountListEdit.xhtml',1,1,NULL),(110140,'Role Management',110,'/bo/roleManagement.xhtml',1,1,NULL),(120110,'Member List',120,'/member/memberList.xhtml',1,1,NULL),(120120,'Member Ticket',120,'/member/memberTicketList.xhtml',1,1,NULL),(120130,'Login Record',120,'/member/loginRecordList.xhtml',1,1,NULL),(120140,'Transaction Record',120,'/member/transactionRecordList.xhtml',1,1,NULL),(120145,'Transaction Record Details',120,'/member/transactionRecordDetail.xhtml',1,1,NULL),(120150,'VPP Rank',120,'/member/vppRankList.xhtml',1,1,NULL),(120160,'FPP Rank',120,'/member/fppRankList.xhtml',1,1,NULL),(120170,'VPP Record',120,'/member/vppRecordHistory.xhtml',1,1,NULL),(125110,'Bonus Wallet Transaction',125,'/member/bonusWalletHistory.xhtml',1,1,NULL),(125120,'Bonus Wallet Rollover List',125,'/member/bonusWalletRolloverList.xhtml',1,1,NULL),(125130,'Bonus Wallet Rollover List Edit',125,'/member/bonusWalletRolloverListEdit.xhtml',1,1,NULL),(125140,'Bonus Wallet Adjustment',125,'/member/bonusWalletAdjustment.xhtml',1,1,NULL),(130110,'Open Operator',130,'/operator/openOperator.xhtml',0,1,NULL),(130120,'Operator List',130,'/operator/operatorList.xhtml',0,1,NULL),(130130,'Operator List Edit',130,'/operator/operatorListEdit.xhtml',0,1,NULL),(135110,'Create Currency Exchange',135,'/currency/createCurrencyExchange.xhtml',0,1,NULL),(135120,'Currency Exchange List',135,'/currency/currencyExchangeList.xhtml',1,1,NULL),(135130,'Currency Exchange List Edit',135,'/currency/currencyExchangeListEdit.xhtml',0,1,NULL),(140110,'Create Table Type',140,'/fcroom/createTableType.xhtml',1,1,NULL),(140120,'Table Type List',140,'/fcroom/tableTypeList.xhtml',1,1,NULL),(140130,'Table Type List Edit',140,'/fcroom/tableTypeListEdit.xhtml',1,1,NULL),(140140,'Create Capped Rake',140,'/fcroom/createCappedStructure.xhtml',1,1,'/free-cash-room/capped-rake-create'),(140150,'Capped Rake List',140,'/fcroom/cappedRakeList.xhtml',1,1,'/free-cash-room/capped-rake-list'),(140160,'Capped Rake List Edit',140,'/fcroom/cappedRakeListEdit.xhtml',1,1,'/free-cash-room/capped-rake-list-edit'),(145110,'VIP Level Management',145,'/game_setting/vipLevelManagement.xhtml',1,1,NULL),(145120,'Create Tile Template',145,'/game_setting/createTileTemplate.xhtml',1,1,NULL),(145130,'Tile Template List',145,'/game_setting/tileTemplateList.xhtml',1,1,NULL),(145140,'Tile Template List Edit',145,'/game_setting/tileTemplateListEdit.xhtml',1,1,NULL),(145150,'Create Dictionary',145,'/game_setting/createGameNameDictionary.xhtml',1,1,NULL),(145160,'Dictionary List Edit',145,'/game_setting/gameNameDictionaryListEdit.xhtml',1,1,NULL),(145170,'Create FPP Store',145,'/game_setting/createFPPStoreItem.xhtml',1,1,NULL),(145180,'FFP Store List Edit',145,'/game_setting/fppStoreItemListEdit.xhtml',1,1,NULL),(145190,'FFP Store History',145,'/game_setting/fppStoreHistory.xhtml',1,1,NULL),(150110,'Create Tournament',150,'/tournament/createTournament.xhtml',1,1,NULL),(150120,'Tournament List',150,'/tournament/tournamentList.xhtml',1,1,NULL),(150130,'Create Awards Structure',150,'/tournament/createAwardsStructure.xhtml',1,1,NULL),(150140,'Award Structure List',150,'/tournament/awardStructureList.xhtml',1,1,NULL),(150150,'Award Structure List Edit',150,'/tournament/awardStructureListEdit.xhtml',1,1,NULL),(150160,'Create Betting Structure',150,'/tournament/createBettingStructure.xhtml',1,1,NULL),(150170,'Betting Structure List',150,'/tournament/bettingStructureList.xhtml',1,1,NULL),(150175,'Betting Structure List Edit',150,'/tournament/bettingStructureListEdit.xhtml',1,1,NULL),(150180,'Create Ticket',150,'/tournament/createTicket.xhtml',1,1,NULL),(150190,'Ticket List',150,'/tournament/ticketList.xhtml',1,1,NULL),(150200,'Ticket List Edit',150,'/tournament/ticketListEdit.xhtml',1,1,NULL),(160110,'View Online Room',160,'/gmonitoring/viewOnlineRoom.xhtml',1,1,NULL),(160120,'View Online Player',160,'/gmonitoring/viewOnlinePlayer.xhtml',1,1,NULL),(160130,'View Facebook Disputes',160,'/gmonitoring/viewFacebookDisputes.xhtml',1,1,NULL),(160140,'View Gift List',160,'/gmonitoring/viewGiftTransactions.xhtml',1,1,NULL),(160150,'Tracking Report',160,'/gmonitoring/trackingReport.xhtml',1,1,NULL),(160160,'Winner Loser Report',160,'/gmonitoring/winnerLoserList.xhtml',1,1,NULL),(160170,'Alert Case',160,'/gmonitoring/alertCase.xhtml',1,1,NULL),(160180,'User Message',160,'/gmonitoring/userMessages.xhtml',1,1,NULL),(160190,'AI',160,'/gmonitoring/aiRobot.xhtml',1,1,NULL),(170110,'Create Announcement',170,'/announcement/createAnnouncement.xhtml',1,1,NULL),(170120,'Announcement List',170,'/announcement/announcementList.xhtml',1,1,NULL),(170130,'Announcement List Edit',170,'/announcement/announcementListEdit.xhtml',1,1,NULL),(170140,'Send Instant Message',170,'/announcement/sendInstantMessage.xhtml',1,1,NULL),(180110,'Table Rake Report',180,'/reports/tableRakeReport.xhtml',1,1,'/reports/table-rake-report'),(180120,'Table Record Report',180,'/reports/tableRecordReport.xhtml',1,1,'/reports/table-record-report'),(180130,'Member Report',180,'/reports/playerRakeReport.xhtml',1,1,NULL),(180140,'Operator Rake Report',180,'/reports/operatorRakeReport.xhtml',1,1,NULL),(180145,'Tournament Register List',180,'/reports/tournamentRegisterList.xhtml',1,1,NULL),(180150,'Tournament Award Report',180,'/reports/tournamentAwardReport.xhtml',1,1,NULL),(180155,'Tournament History Report',180,'/reports/tournamentHistoryReport.xhtml',1,1,NULL),(180160,'Tournament Record Report',180,'/reports/tournamentRecordList.xhtml',1,1,NULL),(180170,'Operator Statistic Report',180,'/reports/operatorStatistic.xhtml',1,1,NULL),(180180,'Player Statistic Report',180,'/reports/playerStatistic.xhtml',1,1,NULL),(180185,'Table Statistic Report',180,'/reports/tableStatistic.xhtml',1,1,NULL),(180190,'Merchant Transaction Report',180,'/reports/merchantTransactionRecord.xhtml',1,1,NULL),(180200,'Platform Report',180,'/reports/platformReport.xhtml',1,1,NULL),(180210,'VPP/FPP Adjustment Report',180,'/reports/vppFppAdjustmentReport.xhtml',1,1,NULL),(185110,'Create Settlement',185,'/finance/createSettlement.xhtml',1,1,NULL),(185120,'Settlement List',185,'/finance/settlementList.xhtml',1,1,NULL),(185130,'Clearing Report',185,'/finance/clearingReport.xhtml',1,1,NULL),(190120,'Server Structure Menu',190,'/system/serverStructureMenuList.xhtml',0,1,NULL),(190130,'System Logs',190,'/system/systemLogsList.xhtml',0,1,NULL),(120110110,'Whitelisted Tag',120110,'/member/gameUserProfile/whitelistedTag',1,0,NULL);
/*!40000 ALTER TABLE `accessmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `accessright`
--

LOCK TABLES `accessright` WRITE;
/*!40000 ALTER TABLE `accessright` DISABLE KEYS */;
INSERT INTO `accessright` VALUES (1,110,1,1),(3,110120,1,1),(4,110130,1,1),(5,110140,1,1),(6,120,1,1),(7,120110,1,1),(8,120120,1,1),(9,130,1,1),(10,130110,1,1),(11,130120,1,0),(12,130130,1,1),(13,135,1,1),(14,135110,1,1),(15,135120,1,1),(16,135130,1,1),(17,140,1,1),(18,140110,1,1),(19,140120,1,1),(20,140130,1,1),(21,140140,1,1),(22,140150,1,1),(23,140160,1,1),(24,145,1,1),(25,145110,1,1),(26,150,1,1),(27,150110,1,1),(28,150120,1,1),(29,150130,1,1),(30,150140,1,1),(31,150150,1,1),(32,150160,1,1),(33,150170,1,1),(34,150180,1,1),(35,150190,1,1),(36,150200,1,1),(37,160,1,1),(38,160110,1,1),(39,160120,1,1),(41,170,1,1),(42,170110,1,1),(43,170120,1,1),(44,170130,1,1),(45,180,1,1),(46,180110,1,1),(47,180120,1,1),(48,180130,1,1),(49,180140,1,1),(50,180150,1,1),(51,180160,1,1),(52,180170,1,1),(53,180180,1,1),(54,190,1,1),(56,190120,1,1),(57,180155,1,1),(58,190130,1,1),(59,120130,1,1),(60,120140,1,1),(61,120150,1,1),(62,120160,1,1),(63,150175,1,1),(64,160130,1,1),(65,160140,1,1),(66,180190,1,1),(67,145120,1,1),(68,145130,1,1),(69,145140,1,1),(70,180145,1,1),(71,160150,1,1),(72,170,2,1),(73,170110,2,1),(74,170120,2,1),(75,170130,2,1),(76,180,2,1),(77,180110,2,0),(78,180120,2,1),(79,180130,2,0),(80,180140,2,0),(81,180145,2,0),(82,180150,2,0),(83,180155,2,1),(84,180160,2,0),(85,180170,2,0),(86,180180,2,0),(87,180190,2,0),(88,135,2,0),(89,135110,2,0),(90,135120,2,0),(91,135130,2,0),(92,150,2,0),(93,150110,2,0),(94,150120,2,0),(95,150130,2,0),(96,150140,2,0),(97,150150,2,0),(98,150160,2,0),(99,150170,2,0),(100,150175,2,0),(101,150180,2,0),(102,150190,2,0),(103,150200,2,0),(104,145,2,0),(105,145110,2,0),(106,145120,2,0),(107,145130,2,0),(108,145140,2,0),(109,110,2,0),(111,110120,2,0),(112,110130,2,0),(113,110140,2,0),(114,160,2,0),(115,160110,2,0),(116,160120,2,0),(117,160130,2,0),(118,160140,2,0),(119,160150,2,0),(120,120,2,1),(121,120110,2,1),(122,120120,2,1),(123,120130,2,0),(124,120140,2,1),(125,120145,2,1),(126,120150,2,0),(127,120160,2,0),(128,140,2,0),(129,140110,2,0),(130,140120,2,0),(131,140130,2,0),(132,140140,2,0),(133,140150,2,0),(134,140160,2,0),(135,190,2,0),(137,190120,2,0),(138,190130,2,0),(139,130,2,0),(140,130110,2,0),(141,130120,2,0),(142,130130,2,0),(143,170,3,0),(144,170110,3,0),(145,170120,3,0),(146,170130,3,0),(147,180,3,1),(148,180110,3,1),(149,180120,3,1),(150,180130,3,1),(151,180140,3,1),(152,180145,3,1),(153,180150,3,1),(154,180155,3,1),(155,180160,3,1),(156,180170,3,1),(157,180180,3,1),(158,180190,3,1),(159,135,3,0),(160,135110,3,0),(161,135120,3,0),(162,135130,3,0),(163,150,3,0),(164,150110,3,0),(165,150120,3,0),(166,150130,3,0),(167,150140,3,0),(168,150150,3,0),(169,150160,3,0),(170,150170,3,0),(171,150175,3,0),(172,150180,3,0),(173,150190,3,0),(174,150200,3,0),(175,145,3,0),(176,145110,3,0),(177,145120,3,0),(178,145130,3,0),(179,145140,3,0),(180,110,3,0),(182,110120,3,0),(183,110130,3,0),(184,110140,3,0),(185,160,3,1),(186,160110,3,1),(187,160120,3,1),(188,160130,3,1),(189,160140,3,1),(190,160150,3,1),(191,120,3,1),(192,120110,3,1),(193,120120,3,1),(194,120130,3,1),(195,120140,3,1),(196,120145,3,1),(197,120150,3,1),(198,120160,3,1),(199,140,3,0),(200,140110,3,0),(201,140120,3,0),(202,140130,3,0),(203,140140,3,0),(204,140150,3,0),(205,140160,3,0),(206,190,3,0),(208,190120,3,0),(209,190130,3,0),(210,130,3,0),(211,130110,3,0),(212,130120,3,0),(213,130130,3,0),(214,160160,1,1),(215,160160,3,1),(216,170,4,1),(217,170110,4,1),(218,170120,4,1),(219,170130,4,1),(220,180,4,1),(221,180110,4,1),(222,180120,4,1),(223,180130,4,1),(224,180140,4,1),(225,180145,4,1),(226,180150,4,1),(227,180155,4,1),(228,180160,4,1),(229,180170,4,0),(230,180180,4,0),(231,180190,4,0),(232,135,4,1),(233,135110,4,1),(234,135120,4,1),(235,135130,4,1),(236,150,4,1),(237,150110,4,1),(238,150120,4,1),(239,150130,4,1),(240,150140,4,1),(241,150150,4,1),(242,150160,4,1),(243,150170,4,1),(244,150175,4,1),(245,150180,4,1),(246,150190,4,1),(247,150200,4,1),(248,145,4,0),(249,145110,4,0),(250,145120,4,0),(251,145130,4,0),(252,145140,4,0),(253,110,4,0),(255,110120,4,0),(256,110130,4,0),(257,110140,4,0),(258,160,4,1),(259,160110,4,1),(260,160120,4,1),(261,160130,4,0),(262,160140,4,0),(263,160150,4,0),(264,160160,4,0),(265,120,4,1),(266,120110,4,1),(267,120120,4,1),(268,120130,4,1),(269,120140,4,1),(270,120145,4,1),(271,120150,4,1),(272,120160,4,1),(273,140,4,1),(274,140110,4,1),(275,140120,4,1),(276,140130,4,1),(277,140140,4,1),(278,140150,4,1),(279,140160,4,1),(280,190,4,0),(282,190120,4,0),(283,190130,4,0),(284,130,4,0),(285,130110,4,0),(286,130120,4,0),(287,130130,4,0),(288,160160,2,0),(289,120145,1,1),(290,160170,1,1),(292,185,1,1),(293,185110,1,1),(294,185120,1,1),(295,185130,1,1),(296,170140,1,1),(297,120170,1,1),(298,125110,1,1),(299,125120,1,1),(300,125140,1,1),(301,125,1,1),(302,125130,1,1),(303,145150,1,1),(304,145160,1,1),(305,145170,1,1),(306,145180,1,1),(307,160180,1,1),(308,145190,1,1),(309,180200,1,1),(310,160190,1,1),(311,180210,1,1),(312,180185,1,1);
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
INSERT INTO `currency_exchange_rate` VALUES (9,'RMB','UUS',1.000000,NULL,'admin','2015-12-10 00:00:00','admin','2100-01-01 00:00:00',1.000000,'DEACTIVATED'),(1098,'RMB','RMB',1.000000,1.000000,'W88_MemberSite','2017-01-09 04:00:00',NULL,'2100-01-01 00:00:00',1.000000,'ACTIVATED'),(11179,'RMB','ALL',15.315132,15.410458,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',0.065295,'ACTIVATED'),(11180,'RMB','AUD',0.208677,0.208592,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',4.792091,'ACTIVATED'),(11181,'RMB','BND',0.195479,0.195439,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',5.115632,'ACTIVATED'),(11182,'RMB','CAD',0.187736,0.187768,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',5.326621,'ACTIVATED'),(11183,'RMB','DKK',0.943080,0.949419,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',1.060356,'ACTIVATED'),(11184,'RMB','EUR',0.126290,0.127346,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',7.918269,'ACTIVATED'),(11185,'RMB','GBP',0.114769,0.115224,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',8.713165,'ACTIVATED'),(11186,'RMB','IDR',2.011263,2.008032,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',0.497200,'ACTIVATED'),(11187,'RMB','ID2',2011.263073,2008.032129,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',0.000497,'ACTIVATED'),(11188,'RMB','INR',10.116297,10.151439,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',0.098850,'ACTIVATED'),(11189,'RMB','JPY',14.854338,15.019728,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',0.067320,'ACTIVATED'),(11190,'RMB','KRW',171.004480,170.943093,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',0.005848,'ACTIVATED'),(11191,'RMB','KR1',0.171004,0.170943,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',5.847800,'ACTIVATED'),(11192,'RMB','MMK',213.890018,214.164864,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',0.004675,'ACTIVATED'),(11193,'RMB','MYR',0.590662,0.590594,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',1.693016,'ACTIVATED'),(11194,'RMB','NOK',1.263062,1.266514,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',0.791727,'ACTIVATED'),(11195,'RMB','PLN',0.553397,0.554973,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',1.807022,'ACTIVATED'),(11196,'RMB','RUB',9.304048,9.247435,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',0.107480,'ACTIVATED'),(11197,'RMB','SEK',1.352710,1.364539,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',0.739257,'ACTIVATED'),(11198,'RMB','THB',4.285704,4.340206,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',0.233334,'ACTIVATED'),(11199,'RMB','TRY',0.811683,0.813168,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',1.232008,'ACTIVATED'),(11200,'RMB','USD',0.140929,0.140952,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',7.095784,'ACTIVATED'),(11201,'RMB','VND',3.272251,3.269042,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',0.305600,'ACTIVATED'),(11202,'RMB','VN2',3272.251309,3269.042171,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',0.000306,'ACTIVATED'),(11203,'RMB','ZAR',2.148946,2.145632,'W88_MemberSite','2019-08-24 04:15:00','W88_MemberSite','2019-08-25 04:15:00',0.465344,'ACTIVATED'),(11204,'RMB','ALL',15.325036,15.315132,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',0.065253,'ACTIVATED'),(11205,'RMB','AUD',0.208988,0.208677,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',4.784975,'ACTIVATED'),(11206,'RMB','BND',0.195471,0.195479,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',5.115839,'ACTIVATED'),(11207,'RMB','CAD',0.187574,0.187736,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',5.331239,'ACTIVATED'),(11208,'RMB','DKK',0.943129,0.943080,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',1.060300,'ACTIVATED'),(11209,'RMB','EUR',0.125425,0.126290,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',7.972882,'ACTIVATED'),(11210,'RMB','GBP',0.114929,0.114769,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',8.700993,'ACTIVATED'),(11211,'RMB','IDR',1.997204,2.011263,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',0.500700,'ACTIVATED'),(11212,'RMB','ID2',1997.203915,2011.263073,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',0.000501,'ACTIVATED'),(11213,'RMB','INR',10.116369,10.116297,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',0.098850,'ACTIVATED'),(11214,'RMB','JPY',14.852573,14.854338,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',0.067328,'ACTIVATED'),(11215,'RMB','KRW',170.890510,171.004480,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',0.005852,'ACTIVATED'),(11216,'RMB','KR1',0.170891,0.171004,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',5.851700,'ACTIVATED'),(11217,'RMB','MMK',213.885443,213.890018,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',0.004675,'ACTIVATED'),(11218,'RMB','MYR',0.590863,0.590662,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',1.692439,'ACTIVATED'),(11219,'RMB','NOK',1.260623,1.263062,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',0.793259,'ACTIVATED'),(11220,'RMB','PLN',0.553546,0.553397,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',1.806534,'ACTIVATED'),(11221,'RMB','RUB',9.303875,9.304048,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',0.107482,'ACTIVATED'),(11222,'RMB','SEK',1.353104,1.352710,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',0.739042,'ACTIVATED'),(11223,'RMB','THB',4.315631,4.285704,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',0.231716,'ACTIVATED'),(11224,'RMB','TRY',0.811621,0.811683,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',1.232103,'ACTIVATED'),(11225,'RMB','USD',0.140926,0.140929,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',7.095901,'ACTIVATED'),(11226,'RMB','VND',3.281917,3.272251,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',0.304700,'ACTIVATED'),(11227,'RMB','VN2',3281.916639,3272.251309,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',0.000305,'ACTIVATED'),(11228,'RMB','ZAR',2.140433,2.148946,'W88_MemberSite','2019-08-25 04:15:00','W88_MemberSite','2019-08-26 04:15:00',0.467195,'ACTIVATED'),(11229,'RMB','ALL',15.213151,15.325036,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',0.065733,'ACTIVATED'),(11230,'RMB','AUD',0.207664,0.208988,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',4.815476,'ACTIVATED'),(11231,'RMB','BND',0.194457,0.195471,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',5.142523,'ACTIVATED'),(11232,'RMB','CAD',0.186160,0.187574,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',5.371726,'ACTIVATED'),(11233,'RMB','DKK',0.937148,0.943129,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',1.067067,'ACTIVATED'),(11234,'RMB','EUR',0.125683,0.125425,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',7.956517,'ACTIVATED'),(11235,'RMB','GBP',0.114109,0.114929,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',8.763553,'ACTIVATED'),(11236,'RMB','IDR',1.996805,1.997204,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',0.500800,'ACTIVATED'),(11237,'RMB','ID2',1996.805112,1997.203915,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',0.000501,'ACTIVATED'),(11238,'RMB','INR',10.078278,10.116369,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',0.099223,'ACTIVATED'),(11239,'RMB','JPY',14.766337,14.852573,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',0.067722,'ACTIVATED'),(11240,'RMB','KRW',170.450672,170.890510,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',0.005867,'ACTIVATED'),(11241,'RMB','KR1',0.170451,0.170891,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',5.866800,'ACTIVATED'),(11242,'RMB','MMK',212.517267,213.885443,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',0.004706,'ACTIVATED'),(11243,'RMB','MYR',0.588836,0.590863,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',1.698265,'ACTIVATED'),(11244,'RMB','NOK',1.257662,1.260623,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',0.795126,'ACTIVATED'),(11245,'RMB','PLN',0.550681,0.553546,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',1.815932,'ACTIVATED'),(11246,'RMB','RUB',9.276240,9.303875,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',0.107802,'ACTIVATED'),(11247,'RMB','SEK',1.348805,1.353104,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',0.741397,'ACTIVATED'),(11248,'RMB','THB',4.288064,4.315631,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',0.233206,'ACTIVATED'),(11249,'RMB','TRY',0.813659,0.811621,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',1.229016,'ACTIVATED'),(11250,'RMB','USD',0.140029,0.140926,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',7.141368,'ACTIVATED'),(11251,'RMB','VND',3.248863,3.281917,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',0.307800,'ACTIVATED'),(11252,'RMB','VN2',3248.862898,3281.916639,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',0.000308,'ACTIVATED'),(11253,'RMB','ZAR',2.144801,2.140433,'W88_MemberSite','2019-08-26 04:15:00','W88_MemberSite','2020-08-20 04:15:00',0.466244,'ACTIVATED'),(11254,'RMB','ALL',15.259138,15.213151,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',0.065535,'ACTIVATED'),(11255,'RMB','AUD',0.206518,0.207664,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',4.842198,'ACTIVATED'),(11256,'RMB','BND',0.194064,0.194457,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',5.152943,'ACTIVATED'),(11257,'RMB','CAD',0.184945,0.186160,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',5.407019,'ACTIVATED'),(11258,'RMB','DKK',0.938106,0.937148,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',1.065977,'ACTIVATED'),(11259,'RMB','EUR',0.125801,0.125683,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',7.949083,'ACTIVATED'),(11260,'RMB','GBP',0.114373,0.114109,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',8.743353,'ACTIVATED'),(11261,'RMB','IDR',1.989258,1.996805,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',0.502700,'ACTIVATED'),(11262,'RMB','ID2',1989.258007,1996.805112,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',0.000503,'ACTIVATED'),(11263,'RMB','INR',10.026872,10.078278,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',0.099732,'ACTIVATED'),(11264,'RMB','JPY',14.762348,14.766337,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',0.067740,'ACTIVATED'),(11265,'RMB','KRW',169.494398,170.450672,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',0.005900,'ACTIVATED'),(11266,'RMB','KR1',0.169494,0.170451,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',5.899900,'ACTIVATED'),(11267,'RMB','MMK',211.658130,212.517267,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',0.004725,'ACTIVATED'),(11268,'RMB','MYR',0.587727,0.588836,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',1.701472,'ACTIVATED'),(11269,'RMB','NOK',1.259776,1.257662,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',0.793792,'ACTIVATED'),(11270,'RMB','PLN',0.548785,0.550681,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',1.822206,'ACTIVATED'),(11271,'RMB','RUB',9.231880,9.276240,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',0.108320,'ACTIVATED'),(11272,'RMB','SEK',1.352020,1.348805,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',0.739634,'ACTIVATED'),(11273,'RMB','THB',4.272872,4.288064,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',0.234035,'ACTIVATED'),(11274,'RMB','TRY',0.814118,0.813659,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',1.228324,'ACTIVATED'),(11275,'RMB','USD',0.139673,0.140029,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',7.159582,'ACTIVATED'),(11276,'RMB','VND',3.242542,3.248863,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',0.308400,'ACTIVATED'),(11277,'RMB','VN2',3242.542153,3248.862898,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',0.000308,'ACTIVATED'),(11278,'RMB','ZAR',2.134052,2.144801,'W88_MemberSite','2020-08-20 04:15:00',NULL,'2100-01-01 00:00:00',0.468592,'ACTIVATED');
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
INSERT INTO `operator` VALUES (1,'W88','1','INTERNAL','c173d5ec50ea','http://127.0.0.1:8080/pokermahjongstub/authenticate.api','http://127.0.0.1:8080/pokermahjongstub/authuserpass.api',NULL,'m9PEM8jL','McjSIBDK2d',NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit','mahjong','0a55d231-97ce-4969-88bc-cababff91421','http://127.0.0.1:8080/pokermahjongstub/op/credit','http://127.0.0.1:8080/pokermahjongstub/op/debit','http://127.0.0.1:8080/pokermahjongstub/op/getbalance','ACTIVE'),(2,'FACEBOOK','fb2014','SPECIAL','9FkJNut7qlGx',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit','mahjong','0a55d231-97ce-4969-88bc-cababff91421','http://127.0.0.1:8080/pokermahjongstub/op/credit','http://127.0.0.1:8080/pokermahjongstub/op/debit','http://127.0.0.1:8080/pokermahjongstub/op/getbalance','ACTIVE'),(3,'MOBILE_DEVICE','md2015','SPECIAL','wbHDs88Dunn9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit','mahjong','0a55d231-97ce-4969-88bc-cababff91421','http://127.0.0.1:8080/pokermahjongstub/op/credit','http://127.0.0.1:8080/pokermahjongstub/op/debit','http://127.0.0.1:8080/pokermahjongstub/op/getbalance','ACTIVE'),(4,'IAHGAMES','IAH','SPECIAL','EKL5Xp9i5N0k',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit','mahjong','0a55d231-97ce-4969-88bc-cababff91421','http://127.0.0.1:8080/pokermahjongstub/op/credit','http://127.0.0.1:8080/pokermahjongstub/op/debit','http://127.0.0.1:8080/pokermahjongstub/op/getbalance','ACTIVE'),(5,'PLAY_PALACE','pp2015',NULL,'PL8LUjWPakXD','https://scmw.spiralworks-cloud.com/Fbmobile-Lobby-WebService-1.0.1/validatesession.php',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit','mahjong','0a55d231-97ce-4969-88bc-cababff91421','http://127.0.0.1:8080/pokermahjongstub/op/credit','http://127.0.0.1:8080/pokermahjongstub/op/debit','http://127.0.0.1:8080/pokermahjongstub/op/getbalance','ACTIVE'),(6,'DUMMY','dm2016','SPECIAL','B7VMYqrziSxD',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit','mahjong','0a55d231-97ce-4969-88bc-cababff91421','http://127.0.0.1:8080/pokermahjongstub/op/credit','http://127.0.0.1:8080/pokermahjongstub/op/debit','http://127.0.0.1:8080/pokermahjongstub/op/getbalance','ACTIVE'),(7,'SG8','SG8','EXTERNAL','zHe8E4iqqw50','http://api.sg8casino.com/api/gameplayvalidate.igX?ticket={token}',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit','mahjong','0a55d231-97ce-4969-88bc-cababff91421','http://127.0.0.1:8080/pokermahjongstub/op/credit','http://127.0.0.1:8080/pokermahjongstub/op/debit','http://127.0.0.1:8080/pokermahjongstub/op/getbalance','ACTIVE'),(8,'99UU','35','INTERNAL','S66n7y3rT9VU','http://127.0.0.1:8080/pokermahjongstub/authenticate.api','http://127.0.0.1:8080/pokermahjongstub/authuserpass.api',NULL,'m9PEM8jL','McjSIBDK2d',NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit','mahjong','0a55d231-97ce-4969-88bc-cababff91421','http://127.0.0.1:8080/pokermahjongstub/op/credit','http://127.0.0.1:8080/pokermahjongstub/op/debit','http://127.0.0.1:8080/pokermahjongstub/op/getbalance','ACTIVE'),(9,'NB88','37','INTERNAL','VBsF4phnmbYl','http://127.0.0.1:8080/pokermahjongstub/authenticate.api','http://127.0.0.1:8080/pokermahjongstub/authuserpass.api',NULL,'m9PEM8jL','McjSIBDK2d',NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit','mahjong','0a55d231-97ce-4969-88bc-cababff91421','http://127.0.0.1:8080/pokermahjongstub/op/credit','http://127.0.0.1:8080/pokermahjongstub/op/debit','http://127.0.0.1:8080/pokermahjongstub/op/getbalance','ACTIVE'),(10,'GPI','44','INTERNAL','e7XaHgO99ICW','http://127.0.0.1:8080/pokermahjongstub/authenticate.api','http://127.0.0.1:8080/pokermahjongstub/authuserpass.api',NULL,'m9PEM8jL','McjSIBDK2d',NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit','mahjong','0a55d231-97ce-4969-88bc-cababff91421','http://127.0.0.1:8080/pokermahjongstub/op/credit','http://127.0.0.1:8080/pokermahjongstub/op/debit','http://127.0.0.1:8080/pokermahjongstub/op/getbalance','ACTIVE'),(11,'BR88','48','INTERNAL','nSmkF91iAQA1','http://127.0.0.1:8080/pokermahjongstub/authenticate.api','http://127.0.0.1:8080/pokermahjongstub/authuserpass.api',NULL,'m9PEM8jL','McjSIBDK2d',NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit','mahjong','0a55d231-97ce-4969-88bc-cababff91421','http://127.0.0.1:8080/pokermahjongstub/op/credit','http://127.0.0.1:8080/pokermahjongstub/op/debit','http://127.0.0.1:8080/pokermahjongstub/op/getbalance','ACTIVE'),(12,'VN88','56','INTERNAL','6931Zn8aV7D7','http://127.0.0.1:8080/pokermahjongstub/authenticate.api','http://127.0.0.1:8080/pokermahjongstub/authuserpass.api',NULL,'6931Zn8aV7D7','McjSIBDK2d',NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit','mahjong','0a55d231-97ce-4969-88bc-cababff91421','http://127.0.0.1:8080/pokermahjongstub/op/credit','http://127.0.0.1:8080/pokermahjongstub/op/debit','http://127.0.0.1:8080/pokermahjongstub/op/getbalance','ACTIVE'),(13,'ASIAN','60','INTERNAL','2ccKnZQOVPVq','http://127.0.0.1:8080/pokermahjongstub/authenticate.api','http://127.0.0.1:8080/pokermahjongstub/authuserpass.api',NULL,'2e3b508f88','McjSIBDK2d',NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit','mahjong','0a55d231-97ce-4969-88bc-cababff91421','http://127.0.0.1:8080/pokermahjongstub/op/credit','http://127.0.0.1:8080/pokermahjongstub/op/debit','http://127.0.0.1:8080/pokermahjongstub/op/getbalance','ACTIVE'),(601,'LSM01','LSM01','EXTERNAL',NULL,'http://127.0.0.1:8080/pokermahjongstub/authenticate.api?token={token}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit',NULL,NULL,NULL,NULL,NULL,'ACTIVE'),(602,'LSM02','LSM02','EXTERNAL',NULL,'http://127.0.0.1:8080/pokermahjongstub/authenticate.api?token={token}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit',NULL,NULL,NULL,NULL,NULL,'ACTIVE'),(603,'LSM03','LSM03','EXTERNAL',NULL,'http://127.0.0.1:8080/pokermahjongstub/authenticate.api?token={token}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit',NULL,NULL,NULL,NULL,NULL,'ACTIVE'),(701,'TESTOP01','TESTOP01','EXTERNAL',NULL,'http://127.0.0.1:8080/pokermahjongstub/authenticate.api?token={token}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit',NULL,NULL,NULL,NULL,NULL,'ACTIVE'),(702,'TESTOP02','TESTOP02','EXTERNAL',NULL,'http://127.0.0.1:8080/pokermahjongstub/authenticate.api?token={token}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit',NULL,NULL,NULL,NULL,NULL,'ACTIVE'),(703,'TESTOP03','TESTOP03','EXTERNAL',NULL,'http://127.0.0.1:8080/pokermahjongstub/authenticate.api?token={token}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit',NULL,NULL,NULL,NULL,NULL,'ACTIVE'),(711,'DUMMY_TESTOP','dm2016_TESTOP','SPECIAL','ZJ6796Z6P41c',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'http://127.0.0.1:8080/pokermahjongstub/ms/getbalance','http://127.0.0.1:8080/pokermahjongstub/ms/debit','http://127.0.0.1:8080/pokermahjongstub/ms/credit','mahjong','0a55d231-97ce-4969-88bc-cababff91421',NULL,NULL,NULL,'ACTIVE');
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
INSERT INTO `p2p_game` VALUES ('BCMN','Bai Cao',70,1),('DMQQ','Domino QQ',30,1),('GGTH','Gao Gae',100,1),('NIUNIU','Niu Niu',20,1),('OMPK','Omaha Poker',80,1),('PKDN','Pok Deng',60,1),('PKMJ','Poker Mahjong',10,1),('PKPRO','Poker Pro',90,1),('RMIN','Indian Rummy',110,1),('TLMN','Tien Len Mien Nam',50,1),('TXHD','Texas Holdem',40,1);
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
-- Dumping data for table `player_history_ex`
--

LOCK TABLES `player_history_ex` WRITE;
/*!40000 ALTER TABLE `player_history_ex` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_history_ex` ENABLE KEYS */;
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
INSERT INTO `role` VALUES (1,'ADMIN',1,NULL,NULL,NULL,NULL,1),(2,'CS/VIP/Pay/QA Lead',1,'avatar','nigel','2015-12-06 09:39:23','2015-12-29 06:52:09',1),(3,'Compliance',1,'nigel',NULL,'2015-12-19 08:31:16',NULL,1),(4,'P2P OPS',1,'avatar',NULL,'2015-12-23 05:28:16',NULL,1);
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
-- Dumping data for table `table_history_ex`
--

LOCK TABLES `table_history_ex` WRITE;
/*!40000 ALTER TABLE `table_history_ex` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_history_ex` ENABLE KEYS */;
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
INSERT INTO `userprofile` VALUES (1,'admin','',NULL,0,1,'SYSTEM','admin',NULL,'2014-07-25 02:27:36'),(2,'avatar','','avatar@gmail.com',1,1,'admin',NULL,'2015-11-30 08:56:11',NULL),(3,'nigel','','nigel@gmail.com',1,1,'avatar',NULL,'2015-12-01 02:34:20',NULL),(4,'TEAMQA','','TEAMQA@gmail.com',1,1,'avatar',NULL,'2015-12-03 06:01:26',NULL),(5,'Leon','','Leon@gmail.com',1,1,'avatar','Leon','2015-12-04 03:58:00','2015-12-04 04:00:29'),(6,'TEAMCS','','TEAMCS@gmail.com',1,2,'avatar',NULL,'2015-12-06 09:45:05',NULL),(7,'Jhona','','Jhona@gmail.com',0,3,'nigel','nigel','2015-12-19 08:49:41','2015-12-19 08:53:03'),(8,'CompliaceJhona','','Jhona@gmail.com',0,3,'nigel','nigel','2015-12-23 04:12:28','2015-12-23 05:41:14'),(9,'ComplianceMerryl','','Merryl@gmail.com',1,3,'nigel','ComplianceMerryl','2015-12-23 04:12:53','2015-12-24 05:00:40'),(10,'ComplianceKhai','','Khai@gmail.com',1,3,'nigel','ComplianceKhai','2015-12-23 04:13:17','2015-12-24 03:22:45'),(11,'ComplianceAhby','','Ahby@gmail.com',1,3,'nigel','ComplianceAhby','2015-12-23 04:13:34','2015-12-23 05:25:11'),(12,'ComplianceVenz','','Venz@gmail.com',1,3,'nigel','ComplianceVenz','2015-12-23 04:13:53','2015-12-23 05:25:11'),(13,'ComplianceCarol','','Carol@gmail.com',1,3,'nigel','avatar','2015-12-23 04:14:13','2015-12-23 05:24:27'),(14,'ComplianceVeronica','','Veronica@gmail.com',1,3,'nigel','ComplianceVeronica','2015-12-23 04:14:36','2015-12-23 05:39:14'),(15,'OperationRico','','Rico@gmail.com',1,4,'avatar',NULL,'2015-12-23 05:30:59',NULL),(16,'ComplianceJhona','','Jhona@gmail.com',1,3,'nigel','ComplianceJhona','2015-12-23 05:40:53','2015-12-23 06:22:11'),(17,'ComplianceRico','','rico@gmail.com',1,4,'avatar','ComplianceRico','2015-12-24 05:25:20','2015-12-24 11:24:13'),(18,'CSLEAD01','','Ruby@gmail.com',1,2,'nigel',NULL,'2015-12-28 03:37:13',NULL),(19,'CSLEAD02','','Lola@gmail.com',1,2,'nigel',NULL,'2015-12-28 03:37:42',NULL),(20,'CSLEAD03','','Suka@gmail.com',1,2,'nigel',NULL,'2015-12-28 03:45:55',NULL),(21,'CSLEAD04','','Narith@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:17:05',NULL),(22,'CSLEAD05','','Jerome@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:18:02',NULL),(23,'CSLEAD06','','Mandy@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:18:18',NULL),(24,'CSLEAD07','','Samantha@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:18:39',NULL),(25,'CSLEAD08','','Yudo@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:18:57',NULL),(26,'CSLEAD09','','Lie@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:19:16',NULL),(27,'CSLEAD10','','Melody@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:19:41',NULL),(28,'CSLEAD11','','Bruce@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:20:02',NULL),(29,'CSLEAD12','','Paitoon@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:20:22',NULL),(30,'CSLEAD13','','Tehja@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:21:08',NULL),(31,'CSLEAD14','','Thawat@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:21:22',NULL),(32,'VIPLEAD01','','Kary@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:21:44',NULL),(33,'VIPLEAD02','','YiLing@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:22:12',NULL),(34,'VIPLEAD03','','Cherry@Gmail.com',1,2,'nigel',NULL,'2015-12-28 06:22:33',NULL),(35,'VIPLEAD04','','Priska@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:23:02',NULL),(36,'VIPLEAD05','','Fon@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:23:21',NULL),(37,'VIPLEAD06','','Zheng@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:23:47',NULL),(38,'PAYMENTLEAD01','','Raymond@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:46:03',NULL),(39,'PAYMENTLEAD02','','Mon@gmail.com',1,2,'nigel','PAYMENTLEAD02','2015-12-28 06:46:37','2015-12-28 08:32:51'),(40,'PAYMENTLEAD03','','Rochelle@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:47:03',NULL),(41,'PAYMENTLEAD04','','Katie@gmail.com',1,2,'nigel','PAYMENTLEAD04','2015-12-28 06:48:07','2015-12-28 08:28:56'),(42,'PAYMENTLEAD05','','Jacy@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:48:30',NULL),(43,'PAYMENTLEAD06','','Candy@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:48:51',NULL),(44,'PAYMENTLEAD07','','Crystal@gmail.com',1,2,'nigel','PAYMENTLEAD07','2015-12-28 06:49:10','2015-12-28 08:32:07'),(45,'PAYMENTLEAD08','','Ling@gmail.com',1,2,'nigel','PAYMENTLEAD08','2015-12-28 06:50:23','2015-12-28 09:48:41'),(46,'PAYMENTLEAD09','','Jennie@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:50:42',NULL),(47,'PAYMENTLEAD10','','Panha@gmail.com',1,2,'nigel','PAYMENTLEAD10','2015-12-28 06:51:04','2015-12-28 08:19:24'),(48,'PAYMENTLEAD11','','Frans@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:51:21',NULL),(49,'QA01','','Steven@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:52:02',NULL),(50,'QA02','','Ricky@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:52:19',NULL),(51,'QA03','','Hana@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:52:37',NULL),(52,'QA04','','Lucy@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:52:52',NULL),(53,'QA05','','Ken@gmail.com',1,2,'nigel',NULL,'2015-12-28 06:53:06',NULL),(54,'HikaruC','','HikaruC@gmail.com',1,1,'avatar',NULL,'2015-12-30 03:31:20',NULL);
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

-- Dump completed on 2020-08-20 11:35:02
