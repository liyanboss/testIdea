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
-- Dumping routines for database 'pokermahjong'
--
/*!50003 DROP FUNCTION IF EXISTS `get_value` */;
ALTER DATABASE `pokermahjong` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE FUNCTION `get_value`(json text, prop text) RETURNS text CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
BEGIN
declare index_a int;
declare index_b int;
declare index_c int;
declare index_d int;
declare index_e int;
declare sub_str text;
declare key_value_pair text;
declare return_str text;

set prop = concat('"',prop,'"');
set index_a = locate(prop, json);

if index_a > 0 then
set sub_str = substring(json, index_a + char_length(prop));
set index_b = locate(',', sub_str);
set index_c = locate('}', sub_str);

if index_b = 0 then
set index_d = index_c;
else
set index_d = least(index_b, index_c);
end if;

set key_value_pair = substring(sub_str, 1, index_d - 1);
set index_e = locate(':', key_value_pair);
set return_str = substring(key_value_pair, index_e + 1);
set return_str = trim(return_str);
set return_str = trim(both '"' from return_str);
set return_str = trim(return_str);
end if;

return return_str;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `pokermahjong` CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
/*!50003 DROP FUNCTION IF EXISTS `next_val` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE FUNCTION `next_val`(seq_name char(255)) RETURNS bigint(20)
    READS SQL DATA
    DETERMINISTIC
BEGIN
update sequence set VAL=LAST_INSERT_ID(VAL+1) where NAME=seq_name;
return LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calc_leader_board` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `calc_leader_board`(fromDate varchar(255), toDate varchar(255), p2pGameCode varchar(255))
BEGIN

  select
    a.GAMEUSER_ID as USER_ID,
    case b.NICKNAME when concat(b.CURRENCY_NAME, '_', b.MEMBERSHIP_ID) then b.MEMBER_CODE else b.NICKNAME end as NICKNAME,
    b.CURRENCY_NAME,b.AVATAR_INDEX,
    b.LAST_LOGIN_COUNTRY_CODE,
    sum(a.WIN_AMOUNT) as TOTAL_AMOUNT
  from p2p_leader_board_gmt_plus8 as a
  inner join gameuser as b on a.GAMEUSER_ID=b.ID
  where 1=1
  and a.TRANSACTION_DATE>=fromDate and a.TRANSACTION_DATE<=toDate
  and a.P2P_GAME_CODE=(ifnull(nullif(p2pGameCode COLLATE utf8_unicode_ci,''), a.P2P_GAME_CODE))
  group by a.GAMEUSER_ID
  order by TOTAL_AMOUNT desc,USER_ID asc
  limit 0,10;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calc_leader_board_all` */;
ALTER DATABASE `pokermahjong` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `calc_leader_board_all`()
BEGIN

	select
		a.USER_ID,
		case b.NICKNAME when CONCAT(b.CURRENCY_NAME,'_', b.MEMBERSHIP_ID) then b.MEMBER_CODE else b.NICKNAME end as NICKNAME,
		SUM(a.AMOUNT) as TOTAL_AMOUNT
	from 
	(
		(
		select 
			FK_PLAYER_ID as USER_ID, SUM(WIN_LOSE) as AMOUNT
		from `player_history` 
		where WIN_LOSE is not null and WIN_LOSE > 0
		group by FK_PLAYER_ID
		order by SUM(WIN_LOSE) desc limit 1000
		)
		union all
		(
		select
			FK_GAMEUSER_ID as USER_ID, SUM(REWARD_AMOUNT) as AMOUNT
		from `tournament_history`
		where REWARD_AMOUNT is not null and REWARD_AMOUNT > 0
		group by FK_GAMEUSER_ID
		order by SUM(REWARD_AMOUNT) desc limit 1000
		)
	) as a
	inner join `gameuser` as b on a.USER_ID=b.ID
	where a.AMOUNT is not null and a.AMOUNT > 0
	group by a.USER_ID
	order by TOTAL_AMOUNT desc,a.USER_ID asc
	limit 0,10;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `pokermahjong` CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `calc_leader_board_daily` */;
ALTER DATABASE `pokermahjong` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `calc_leader_board_daily`(fromTime datetime, toTime datetime)
BEGIN

	select
		a.USER_ID,
		case b.NICKNAME when CONCAT(b.CURRENCY_NAME,'_', b.MEMBERSHIP_ID) then b.MEMBER_CODE else b.NICKNAME end as NICKNAME,
		SUM(a.AMOUNT) as TOTAL_AMOUNT
	from 
	(
		(
		select 
			FK_PLAYER_ID as USER_ID, SUM(WIN_LOSE) as AMOUNT
		from `player_history` 
		where WIN_LOSE is not null and WIN_LOSE > 0 and END_TIME >= fromTime and END_TIME < toTime
		group by FK_PLAYER_ID
		order by SUM(WIN_LOSE) desc limit 1000
		)
		union all
		(
		select
			FK_GAMEUSER_ID as USER_ID, SUM(REWARD_AMOUNT) as AMOUNT
		from `tournament_history`
		where REWARD_AMOUNT is not null and REWARD_AMOUNT > 0 and END_TIME >= fromTime and END_TIME < toTime
		group by FK_GAMEUSER_ID
		order by SUM(REWARD_AMOUNT) desc limit 1000
		)
	) as a
	inner join `gameuser` as b on a.USER_ID=b.ID
	where a.AMOUNT is not null and a.AMOUNT > 0
	group by a.USER_ID
	order by TOTAL_AMOUNT desc,a.USER_ID asc
	limit 0,10;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `pokermahjong` CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `calc_winner_daily` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `calc_winner_daily`(fromTime datetime, toTime datetime, p2pGameCode varchar(255))
BEGIN
  SELECT   t.ID tourId, t.DISPLAY_NAME tourName, t.START_TIME startTime, g.NICKNAME nickname, th.REWARD_AMOUNT amount,
           th.FINAL_STANDING position
  FROM     `tournament_history` th
           INNER JOIN `tournament` t
             ON th.FK_TOURNAMENT_ID = t.ID AND t.TOURNAMENT_TYPE = 'MultiTable' AND t.FINISH_TIME >= fromTime AND t.FINISH_TIME < toTime 
                AND th.P2P_GAME_CODE = (IFNULL(NULLIF(p2pGameCode COLLATE utf8_unicode_ci,''), th.P2P_GAME_CODE))
           INNER JOIN `gameuser` AS g ON th.FK_GAMEUSER_ID = g.ID
  WHERE    th.REWARD_AMOUNT IS NOT NULL AND th.REWARD_AMOUNT > 0
  GROUP BY th.FK_GAMEUSER_ID, th.FK_TOURNAMENT_ID
  ORDER BY th.FK_TOURNAMENT_ID, th.FINAL_STANDING;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getFailedTransactionRecordCount` */;
ALTER DATABASE `pokermahjong` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `getFailedTransactionRecordCount`(IN member_id VARCHAR(250), IN member_code VARCHAR(255),
	IN nickname VARCHAR(255),
	IN from_date_time datetime, IN to_date_time datetime,
	OUT total_row INT)
BEGIN
		SELECT count(*) into total_row
		FROM transactionrecord tr
		INNER JOIN gameuser as gu on tr.FK_USER_ID=gu.ID
		WHERE tr.trx_status not like 'SUCCESS'
		AND
		(member_id IS NULL or
		gu.MEMBERSHIP_ID like member_id COLLATE utf8_unicode_ci)
		AND
		(member_code IS NULL or
		gu.MEMBER_CODE like member_code COLLATE utf8_unicode_ci)
		AND
		(nickname IS NULL or
		gu.NICKNAME like nickname COLLATE utf8_unicode_ci)
		AND
		(currency IS NULL or
		tr.CURRENCY like currency COLLATE utf8_unicode_ci)
		AND
		(from_date_time IS NULL or
		tr.REQUEST_TIME >= from_date_time)
		AND
		(to_date_time IS NULL or
		tr.REQUEST_TIME >= to_date_time);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `pokermahjong` CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `GetFailedTransactionRecords` */;
ALTER DATABASE `pokermahjong` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `GetFailedTransactionRecords`(IN member_id VARCHAR(250), IN member_code VARCHAR(255),
	IN nickname VARCHAR(255),IN from_date_time datetime, IN to_date_time datetime,
	IN record_num INT, IN page_size INT, IN sort_field VARCHAR(255), IN order_dir VARCHAR(10) )
    READS SQL DATA
BEGIN
		set @row_num = 0; 
		SELECT T.MEMBERSHIP_ID, T.MEMBER_CODE, T.NICKNAME, T.CURRENCY, T.RESPONSE_RECORD, T.REQUEST_TIME
		FROM (
			SELECT @row_num := @row_num + 1 as row_number,
			gu.MEMBERSHIP_ID, gu.MEMBER_CODE, gu.NICKNAME, 
			tr.CURRENCY, tr.RESPONSE_RECORD , tr.REQUEST_TIME
			FROM transactionrecord tr
			INNER JOIN gameuser as gu on tr.FK_USER_ID=gu.ID
			WHERE tr.trx_status not like 'SUCCESS'
			AND
			(member_id IS NULL or
			gu.MEMBERSHIP_ID like member_id COLLATE utf8_unicode_ci)
			AND
			(member_code IS NULL or
			gu.MEMBER_CODE like member_code COLLATE utf8_unicode_ci)
			AND
			(nickname IS NULL or
			gu.NICKNAME like nickname COLLATE utf8_unicode_ci)
			AND
			(from_date_time IS NULL or
			tr.REQUEST_TIME >= from_date_time)
			AND
			(to_date_time IS NULL or
			tr.REQUEST_TIME >= to_date_time)
			ORDER BY
				CASE WHEN sort_field='NICKNAME' AND order_dir='DESC' THEN gu.NICKNAME END DESC,
				CASE WHEN sort_field='NICKNAME' AND order_dir='ASC' THEN gu.NICKNAME END ASC,
				CASE WHEN sort_field='MEMBERSHIP_ID' AND order_dir='DESC' THEN gu.MEMBERSHIP_ID END DESC,
				CASE WHEN sort_field='MEMBERSHIP_ID' AND order_dir='ASC' THEN gu.MEMBERSHIP_ID END ASC,
				CASE WHEN sort_field='MEMBER_CODE' AND order_dir='DESC' THEN gu.MEMBER_CODE END DESC,
				CASE WHEN sort_field='MEMBER_CODE' AND order_dir='ASC' THEN gu.MEMBER_CODE END ASC,
				CASE WHEN sort_field='CURRENCY' AND order_dir='DESC' THEN tr.CURRENCY END DESC,
				CASE WHEN sort_field='CURRENCY' AND order_dir='ASC' THEN tr.CURRENCY END ASC,
				CASE WHEN sort_field='REQUEST_TIME' AND order_dir='DESC' THEN tr.REQUEST_TIME END DESC,
				CASE WHEN sort_field='REQUEST_TIME' AND order_dir='ASC' THEN tr.REQUEST_TIME END ASC
		) AS T
		WHERE
			(record_num IS NULL or
			T.row_number > record_num)
		AND
			(page_size IS NULL or
			T.row_number <= record_num+page_size)
		;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `pokermahjong` CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_accumulated_clearing_report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `insert_accumulated_clearing_report`(p_from_date datetime, p_to_date datetime)
BEGIN
  DECLARE v_done_cur1           INT DEFAULT FALSE;
  DECLARE v_operator_id         bigint(20) DEFAULT NULL;
  DECLARE v_end_time            datetime DEFAULT NULL;
  DECLARE v_chb                 decimal(19, 2) DEFAULT 0;
  DECLARE v_accumulated_chb     decimal(19, 2) DEFAULT 0;
  DECLARE v_settlement_amount   decimal(19, 2) DEFAULT 0;
  DECLARE v_clearing_report_cnt INT DEFAULT 0;
  DECLARE v_latest_accumulated_amount  decimal(19, 2) DEFAULT 0;
  DECLARE v_prev_operator_id bigint(20) DEFAULT NULL;

  DECLARE cur1 CURSOR FOR
      SELECT T.OPERATOR_ID
             , MAX(T.END_TIME) AS END_TIME
             , round(sum((T.CASH_WINLOSE_RMB) + (T.REWARD_MONEY_RMB + T.TICKET_REWARD_REGIST_RMB + T.TICKET_REWARD_ADMIN_RMB - T.BUYIN_REGIST_RMB - T.BUYIN_ADMIN_RMB - T.TICKET_BUYIN_REGIST_RMB - T.TICKET_BUYIN_ADMIN_RMB)) + sum((T.CASH_RAKE_RMB) + (T.BUYIN_ADMIN_RMB + T.TICKET_BUYIN_ADMIN_RMB)) - sum(DEDUCTION_FEE_RMB) + sum(T.BUYIN_REGIST_FEE_RMB + T.BUYIN_TICKET_REGIST_FEE_RMB) - sum(BONUS_WALLET_FORFEIT_AMOUNT), 2) AS CHB
             , sum(SETTLEMENT_AMOUNT) AS SETTLEMENT_AMOUNT
      FROM (SELECT op.OPERATOR_NAME AS OPERATOR_NAME
                     , xh.FK_GAMEUSER_ID AS PLAYER_ID
                     , xh.END_TIME AS END_TIME
                     , '0' AS CASH_RAKE_RMB
                     , '0' AS CASH_WINLOSE_RMB
                     , ifnull(xh.BUYIN_REGIST_FEE, '0') AS BUYIN_REGIST_RMB
                     , ifnull(xh.BUYIN_ADMIN_FEE, '0') AS BUYIN_ADMIN_RMB
                     , ifnull(xh.REWARD_AMOUNT, '0') AS REWARD_MONEY_RMB
                     , ifnull(xh.BUYIN_TICKET_REGIST_FEE, '0') AS TICKET_BUYIN_REGIST_RMB
                     , ifnull(xh.BUYIN_TICKET_ADMIN_FEE, '0') AS TICKET_BUYIN_ADMIN_RMB
                     , ifnull(xh.REWARD_TICKET_REGIST_FEE, '0') AS TICKET_REWARD_REGIST_RMB
                     , ifnull(xh.REWARD_TICKET_ADMIN_FEE, '0') AS TICKET_REWARD_ADMIN_RMB
                     , xh.DEDUCTION_FEE AS DEDUCTION_FEE_RMB
                     , CASE WHEN tn.GPI_SPONSORED = 1 THEN ifnull(xh.BUYIN_REGIST_FEE, '0') ELSE '0' END AS BUYIN_REGIST_FEE_RMB
                     , CASE WHEN tn.GPI_SPONSORED = 1 THEN ifnull(xh.BUYIN_TICKET_REGIST_FEE, '0') ELSE '0' END AS BUYIN_TICKET_REGIST_FEE_RMB
                     , op.ID AS OPERATOR_ID,
                     '0' SETTLEMENT_AMOUNT, '0' AS BONUS_WALLET_FORFEIT_AMOUNT
              FROM   tournament_history AS xh
                     INNER JOIN tournament AS tn ON xh.FK_TOURNAMENT_ID = tn.ID
                     INNER JOIN gameuser AS gu ON xh.FK_GAMEUSER_ID = gu.ID
                     INNER JOIN operator AS op ON gu.FK_OPERATOR_ID = op.ID
              WHERE  tn.STATE = 'FINISHED' AND xh.END_TIME >= p_from_date AND xh.END_TIME <= p_to_date
              UNION ALL
              SELECT op.OPERATOR_NAME AS OPERATOR_NAME, xh.FK_PLAYER_ID AS PLAYER_ID, xh.END_TIME AS END_TIME,
                     xh.COLLECTED_RAKE AS CASH_RAKE_RMB, xh.WIN_LOSE AS CASH_WINLOSE_RMB, '0' AS BUYIN_REGIST_RMB,
                     '0' AS BUYIN_ADMIN_RMB, '0' AS REWARD_MONEY_RMB, '0' AS TICKET_BUYIN_REGIST_RMB,
                     '0' AS TICKET_BUYIN_ADMIN_RMB, '0' AS TICKET_REWARD_REGIST_RMB, '0' AS TICKET_REWARD_ADMIN_RMB,
                     '0' AS DEDUCTION_FEE_RMB, '0' AS BUYIN_REGIST_FEE_RMB, '0' AS BUYIN_TICKET_REGIST_FEE_RMB,
                     op.ID AS OPERATOR_ID, '0' SETTLEMENT_AMOUNT, '0' AS BONUS_WALLET_FORFEIT_AMOUNT
              FROM   player_history AS xh
                     INNER JOIN gameuser AS gu ON xh.FK_PLAYER_ID = gu.ID
                     INNER JOIN operator AS op ON gu.FK_OPERATOR_ID = op.ID
              WHERE  xh.MATCH_TYPE = 'CASH' AND xh.END_TIME >= p_from_date AND xh.END_TIME <= p_to_date
              UNION ALL
              SELECT op.OPERATOR_NAME AS OPERATOR_NAME, '' AS PLAYER_ID, s.CREATED_TIME AS END_TIME,
                     '0' AS CASH_RAKE_RMB, '0' AS CASH_WINLOSE_RMB, '0' AS BUYIN_REGIST_RMB,
                     '0' AS BUYIN_ADMIN_RMB, '0' AS REWARD_MONEY_RMB, '0' AS TICKET_BUYIN_REGIST_RMB,
                     '0' AS TICKET_BUYIN_ADMIN_RMB, '0' AS TICKET_REWARD_REGIST_RMB, '0' AS TICKET_REWARD_ADMIN_RMB,
                     '0' AS DEDUCTION_FEE_RMB, '0' AS BUYIN_REGIST_FEE_RMB, '0' AS BUYIN_TICKET_REGIST_FEE_RMB,
                     op.ID AS OPERATOR_ID, s.SETTLEMENT_AMOUNT, '0' AS BONUS_WALLET_FORFEIT_AMOUNT
              FROM settlement AS s INNER JOIN operator AS op ON s.OPERATOR_ID = op.ID
              WHERE s.CREATED_TIME >= p_from_date AND s.CREATED_TIME <= p_to_date
              UNION ALL
              SELECT op.OPERATOR_NAME AS OPERATOR_NAME, xh.GAMEUSER_ID AS PLAYER_ID, xh.CREATED_TIME AS END_TIME,
                     '0' AS CASH_RAKE_RMB, '0' AS CASH_WINLOSE_RMB, '0' AS BUYIN_REGIST_RMB,
                     '0' AS BUYIN_ADMIN_RMB, '0' AS REWARD_MONEY_RMB, '0' AS TICKET_BUYIN_REGIST_RMB,
                     '0' AS TICKET_BUYIN_ADMIN_RMB, '0' AS TICKET_REWARD_REGIST_RMB, '0' AS TICKET_REWARD_ADMIN_RMB,
                     '0' AS DEDUCTION_FEE_RMB, '0' AS BUYIN_REGIST_FEE_RMB, '0' AS BUYIN_TICKET_REGIST_FEE_RMB,
                     op.ID AS OPERATOR_ID, '0' SETTLEMENT_AMOUNT, xh.AMOUNT AS BONUS_WALLET_FORFEIT_AMOUNT
              FROM   bonus_wallet_history AS xh
                     INNER JOIN gameuser AS gu ON xh.GAMEUSER_ID = gu.ID
                     INNER JOIN operator AS op ON gu.FK_OPERATOR_ID = op.ID
              WHERE  (xh.MARK = 'manualBonusForfeit' or xh.MARK = 'bonusWalletForfeit') AND xh.CREATED_TIME >= p_from_date AND xh.CREATED_TIME <= p_to_date
              ) AS T
      GROUP BY T.OPERATOR_ID, DATE_FORMAT(CONVERT_TZ(T.END_TIME, '+00:00', '+08:00'), '%Y-%m-%d')
      ORDER BY T.OPERATOR_ID, MAX(T.END_TIME);

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done_cur1 = TRUE;

  SELECT count(*) INTO v_clearing_report_cnt FROM accumulated_clearing_report;

  OPEN cur1;

 read_loop:
  LOOP
    FETCH cur1 INTO v_operator_id, v_end_time, v_chb, v_settlement_amount;

    IF v_done_cur1
    THEN
      LEAVE read_loop;
    END IF;

    IF v_clearing_report_cnt > 0
    THEN
      SELECT   a.ACCUMULATED_AMOUNT
      INTO     v_latest_accumulated_amount
      FROM     accumulated_clearing_report a
      WHERE    a.OPERATOR_ID = v_operator_id
      ORDER BY a.ACCUMULATED_END_TIME DESC
      LIMIT    1;

      SET v_accumulated_chb           = v_latest_accumulated_amount + v_chb + v_settlement_amount;
      SET v_latest_accumulated_amount = 0;
    ELSE
      IF v_prev_operator_id <> v_operator_id
      THEN
        SET v_accumulated_chb = 0;
      END IF;

      SET v_accumulated_chb = v_accumulated_chb + v_chb + v_settlement_amount;
    END IF;

    SET v_prev_operator_id = v_operator_id;

    INSERT INTO accumulated_clearing_report(OPERATOR_ID, ACCUMULATED_AMOUNT, ACCUMULATED_END_TIME, CREATED_TIME)
    VALUES      (v_operator_id, v_accumulated_chb, v_end_time, UTC_TIMESTAMP());
  END LOOP;

  CLOSE cur1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consolidate_leader_board_from_player_history_gmt_plus8` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `sp_consolidate_leader_board_from_player_history_gmt_plus8`(consolidateTypeId int, maxCount int)
BEGIN

  declare maxHistoryId bigint(20);
  declare lastId bigint(20);
  declare toId bigint(20);

  select ID from player_history order by ID desc limit 1 into maxHistoryId;
  select ifnull((select LAST_ID from p2p_consolidate_progress where TYPE_ID=consolidateTypeId limit 1),0) into lastId;
  select case when maxHistoryId>(lastId+maxCount) then lastId+maxCount else maxHistoryId end into toId;

  if toId>lastId then
    insert into p2p_leader_board_gmt_plus8(GAMEUSER_ID,TRANSACTION_DATE,P2P_GAME_CODE,GAME_TYPE,WIN_AMOUNT)
    (
     select
       FK_PLAYER_ID,date_add(END_TIME, interval 8 hour) as TRANS_DATE,P2P_GAME_CODE,'CASH_TABLE',sum(WIN_LOSE) as TOTAL_WIN
     from player_history
     where WIN_LOSE is not null and WIN_LOSE>0 and MATCH_TYPE='CASH' and ID>lastId and ID<=toId
     group by FK_PLAYER_ID,TRANS_DATE,P2P_GAME_CODE
    ) on duplicate key update
    p2p_leader_board_gmt_plus8.WIN_AMOUNT=p2p_leader_board_gmt_plus8.WIN_AMOUNT+values(WIN_AMOUNT);
    insert into p2p_consolidate_progress(TYPE_ID,LAST_ID) values(consolidateTypeId,toId) on duplicate key update p2p_consolidate_progress.LAST_ID=toId;
  end if;

  select greatest(toId-lastId,0);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consolidate_leader_board_from_tournament_history_gmt_plus8` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `sp_consolidate_leader_board_from_tournament_history_gmt_plus8`(consolidateTypeId int, startDateTime datetime, periodTime int, delayTime int)
BEGIN

	declare lastConsolidateTime datetime;
    declare nextConsolidateTime datetime;
    declare nextConsolidateTimeAppendDelayTime datetime;
    declare currentDateTime datetime;
    
	select ifnull((select LAST_TIME from p2p_consolidate_progress where TYPE_ID = consolidateTypeId limit 1), startDateTime) into lastConsolidateTime;
	select date_add(lastConsolidateTime, interval periodTime second) into nextConsolidateTime;
	select date_add(nextConsolidateTime, interval delayTime second) into nextConsolidateTimeAppendDelayTime;
    select UTC_TIMESTAMP() into currentDateTime;
	
    if currentDateTime > nextConsolidateTimeAppendDelayTime then
		insert into p2p_leader_board_gmt_plus8(GAMEUSER_ID, TRANSACTION_DATE, P2P_GAME_CODE, GAME_TYPE, WIN_AMOUNT)
        (
			select
				FK_GAMEUSER_ID, date_add(END_TIME, interval 8 hour) as TRANS_DATE, P2P_GAME_CODE, 'TOURNAMENT', sum(REWARD_AMOUNT) as TOTAL_WIN
			from tournament_history
            where REWARD_AMOUNT is not null and REWARD_AMOUNT > 0 and END_TIME >= lastConsolidateTime and END_TIME < nextConsolidateTime
            group by FK_GAMEUSER_ID, TRANS_DATE, P2P_GAME_CODE
		) on duplicate key update
        p2p_leader_board_gmt_plus8.WIN_AMOUNT = p2p_leader_board_gmt_plus8.WIN_AMOUNT + values(WIN_AMOUNT);
        insert into p2p_consolidate_progress(TYPE_ID, LAST_TIME) values 
		(
			consolidateTypeId, nextConsolidateTime
		) on duplicate key update 
		p2p_consolidate_progress.LAST_TIME = nextConsolidateTime;
        select 1;
    else
		select 0;
    end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consolidate_player_history_statistic_gmt_plus8` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `sp_consolidate_player_history_statistic_gmt_plus8`(consolidateTypeId int, maxCount int)
BEGIN
  DECLARE maxHistoryId bigint(20);
  DECLARE lastId       bigint(20);
  DECLARE toId         bigint(20);

  SELECT MAX(ID) FROM player_history INTO maxHistoryId;
  SELECT ifnull((SELECT LAST_ID FROM p2p_consolidate_progress WHERE TYPE_ID = consolidateTypeId LIMIT 1), 0) INTO lastId;
  SELECT CASE WHEN maxHistoryId > (lastId + maxCount) THEN lastId + maxCount ELSE maxHistoryId END INTO toId;

  IF toId > lastId
  THEN
    INSERT INTO p2p_player_history_statistic_gmt_plus8(GAMEUSER_ID, OPERATOR_ID, TABLE_CONFIG_ID, P2P_GAME_CODE, CURRENCY_NAME, TRANSACTION_DATETIME, MATCH_TYPE, CASH_RAKE_RMB, CASH_WINLOSE_RMB, CASH_BET_RMB, CASH_RAKE, CASH_WINLOSE, TOTAL_RECORD_ID)
      (SELECT   xh.FK_PLAYER_ID AS GAMEUSER_ID,
                 xh.FK_OPERATOR_ID AS OPERATOR_ID,
                 xh.TABLE_CONFIG_ID AS TABLE_CONFIG_ID,
                 xh.P2P_GAME_CODE AS P2P_GAME_CODE,
                 xh.CURRENCY AS CURRENCY_NAME,
                 DATE_FORMAT(CONVERT_TZ(xh.END_TIME, '+00:00', '+08:00'), '%Y-%m-%d %H:00:00') AS TRANSACTION_DATETIME,
                 xh.MATCH_TYPE AS MATCH_TYPE,
                 sum(xh.COLLECTED_RAKE) AS CASH_RAKE_RMB,
                 sum(xh.WIN_LOSE) AS CASH_WINLOSE_RMB,
                 sum(xh.BET_AMOUNT) AS CASH_BET_RMB,
                 sum(xh.COLLECTED_RAKE * xh.EXCHANGE_RATE) AS CASH_RAKE,
                 sum(xh.WIN_LOSE * xh.EXCHANGE_RATE) AS CASH_WINLOSE,
                 count(xh.FK_RECORD_ID) AS TOTAL_RECORD_ID
        FROM     player_history AS xh
        WHERE    xh.MATCH_TYPE = 'CASH' AND xh.ID > lastId AND xh.ID <= toId
        GROUP BY GAMEUSER_ID, P2P_GAME_CODE, OPERATOR_ID, CURRENCY_NAME, TABLE_CONFIG_ID, TRANSACTION_DATETIME)
    ON DUPLICATE KEY UPDATE p2p_player_history_statistic_gmt_plus8.CASH_RAKE_RMB = p2p_player_history_statistic_gmt_plus8.CASH_RAKE_RMB + values(CASH_RAKE_RMB),
                          	p2p_player_history_statistic_gmt_plus8.CASH_WINLOSE_RMB = p2p_player_history_statistic_gmt_plus8.CASH_WINLOSE_RMB + values(CASH_WINLOSE_RMB), 
                          	p2p_player_history_statistic_gmt_plus8.CASH_BET_RMB = p2p_player_history_statistic_gmt_plus8.CASH_BET_RMB + values(CASH_BET_RMB), 
                          	p2p_player_history_statistic_gmt_plus8.CASH_RAKE = p2p_player_history_statistic_gmt_plus8.CASH_RAKE + values(CASH_RAKE), 
                          	p2p_player_history_statistic_gmt_plus8.CASH_WINLOSE = p2p_player_history_statistic_gmt_plus8.CASH_WINLOSE + values(CASH_WINLOSE), 
                          	p2p_player_history_statistic_gmt_plus8.TOTAL_RECORD_ID = p2p_player_history_statistic_gmt_plus8.TOTAL_RECORD_ID + values(TOTAL_RECORD_ID);
	
    INSERT INTO p2p_consolidate_progress(TYPE_ID,LAST_ID) values(consolidateTypeId,toId) ON DUPLICATE KEY UPDATE p2p_consolidate_progress.LAST_ID=toId;
  END IF;
  
  SELECT GREATEST(toId-lastId,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_consolidate_tournament_history_statistic_gmt_plus8` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `sp_consolidate_tournament_history_statistic_gmt_plus8`(consolidateTypeId int, startDateTime datetime, periodTime int, delayTime int)
BEGIN

	declare lastConsolidateTime datetime;
    declare nextConsolidateTime datetime;
    declare nextConsolidateTimeAppendDelayTime datetime;
    declare currentDateTime datetime;
    
	select ifnull((select LAST_TIME from p2p_consolidate_progress where TYPE_ID = consolidateTypeId limit 1), startDateTime) into lastConsolidateTime;
	select date_add(lastConsolidateTime, interval periodTime second) into nextConsolidateTime;
	select date_add(nextConsolidateTime, interval delayTime second) into nextConsolidateTimeAppendDelayTime;
    select UTC_TIMESTAMP() into currentDateTime;
	
    if currentDateTime > nextConsolidateTimeAppendDelayTime then
		insert into p2p_tournament_history_statistic_gmt_plus8(
			GAMEUSER_ID, OPERATOR_ID, P2P_GAME_CODE, CURRENCY_NAME, TRANSACTION_DATETIME,
            SITGO_BUYIN_REGIST_RMB, SITGO_BUYIN_ADMIN_RMB, SITGO_REWARD_MONEY_RMB, 
            SITGO_TICKET_BUYIN_REGIST_RMB, SITGO_TICKET_BUYIN_ADMIN_RMB, SITGO_TICKET_REWARD_REGIST_RMB, SITGO_TICKET_REWARD_ADMIN_RMB,
            SITGO_DEDUCT_RMB,
            TOUR_BUYIN_REGIST_RMB, TOUR_BUYIN_ADMIN_RMB, TOUR_REWARD_MONEY_RMB,
            TOUR_TICKET_BUYIN_REGIST_RMB, TOUR_TICKET_BUYIN_ADMIN_RMB, TOUR_TICKET_REWARD_REGIST_RMB, TOUR_TICKET_REWARD_ADMIN_RMB,
            TOUR_DEDUCT_RMB,
            SITGO_BUYIN_REGIST, SITGO_BUYIN_ADMIN, SITGO_REWARD_MONEY,
            SITGO_TICKET_BUYIN_REGIST, SITGO_TICKET_BUYIN_ADMIN, SITGO_TICKET_REWARD_REGIST, SITGO_TICKET_REWARD_ADMIN,
            SITGO_DEDUCT,
            TOUR_BUYIN_REGIST, TOUR_BUYIN_ADMIN, TOUR_REWARD_MONEY,
            TOUR_TICKET_BUYIN_REGIST, TOUR_TICKET_BUYIN_ADMIN, TOUR_TICKET_REWARD_REGIST, TOUR_TICKET_REWARD_ADMIN,
            TOUR_DEDUCT
		) (
			select
				xh.FK_GAMEUSER_ID as GAMEUSER_ID,
                gu.FK_OPERATOR_ID as OPERATOR_ID,
                xh.P2P_GAME_CODE as P2P_GAME_CODE,
                gu.CURRENCY_NAME as CURRENCY_NAME,
                DATE_FORMAT(CONVERT_TZ(xh.END_TIME, '+00:00', '+08:00'), '%Y-%m-%d %H:00:00') as TRANSACTION_DATETIME,
                sum(CASE WHEN tn.TOURNAMENT_TYPE = 'SitAndGo' THEN ifnull(xh.BUYIN_REGIST_FEE, 0) ELSE 0 END) as SITGO_BUYIN_REGIST_RMB,
                sum(CASE WHEN tn.TOURNAMENT_TYPE = 'SitAndGo' THEN ifnull(xh.BUYIN_ADMIN_FEE, 0) ELSE 0 END) as SITGO_BUYIN_ADMIN_RMB,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'SitAndGo' THEN ifnull(xh.REWARD_AMOUNT, 0) ELSE 0 END) as SITGO_REWARD_MONEY_RMB,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'SitAndGo' THEN ifnull(xh.BUYIN_TICKET_REGIST_FEE, 0) ELSE 0 END) as SITGO_TICKET_BUYIN_REGIST_RMB,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'SitAndGo' THEN ifnull(xh.BUYIN_TICKET_ADMIN_FEE, 0) ELSE 0 END) as SITGO_TICKET_BUYIN_ADMIN_RMB,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'SitAndGo' THEN ifnull(xh.REWARD_TICKET_REGIST_FEE, 0) ELSE 0 END) as SITGO_TICKET_REWARD_REGIST_RMB,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'SitAndGo' THEN ifnull(xh.REWARD_TICKET_ADMIN_FEE, 0) ELSE 0 END) as SITGO_TICKET_REWARD_ADMIN_RMB,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'SitAndGo' THEN ifnull(xh.DEDUCTION_FEE, 0) ELSE 0 END) as SITGO_DEDUCT_RMB,
                sum(CASE WHEN tn.TOURNAMENT_TYPE = 'MultiTable' THEN ifnull(xh.BUYIN_REGIST_FEE, 0) ELSE 0 END) as TOUR_BUYIN_REGIST_RMB,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'MultiTable' THEN ifnull(xh.BUYIN_ADMIN_FEE, 0) ELSE 0 END) as TOUR_BUYIN_ADMIN_RMB,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'MultiTable' THEN ifnull(xh.REWARD_AMOUNT, 0) ELSE 0 END) as TOUR_REWARD_MONEY_RMB,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'MultiTable' THEN ifnull(xh.BUYIN_TICKET_REGIST_FEE, 0) ELSE 0 END) as TOUR_TICKET_BUYIN_REGIST_RMB,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'MultiTable' THEN ifnull(xh.BUYIN_TICKET_ADMIN_FEE, 0) ELSE 0 END) as TOUR_TICKET_BUYIN_ADMIN_RMB,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'MultiTable' THEN ifnull(xh.REWARD_TICKET_REGIST_FEE, 0) ELSE 0 END) as TOUR_TICKET_REWARD_REGIST_RMB,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'MultiTable' THEN ifnull(xh.REWARD_TICKET_ADMIN_FEE, 0) ELSE 0 END) as TOUR_TICKET_REWARD_ADMIN_RMB,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'MultiTable' THEN ifnull(xh.DEDUCTION_FEE, 0) ELSE 0 END) as TOUR_DEDUCT_RMB,
                sum(CASE WHEN tn.TOURNAMENT_TYPE = 'SitAndGo' THEN (ifnull(xh.BUYIN_REGIST_FEE, 0) * xh.BUYIN_EXCHANGE_RATE) ELSE 0 END) as SITGO_BUYIN_REGIST,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'SitAndGo' THEN (ifnull(xh.BUYIN_ADMIN_FEE, 0) * xh.BUYIN_EXCHANGE_RATE) ELSE 0 END) as SITGO_BUYIN_ADMIN,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'SitAndGo' THEN (ifnull(xh.REWARD_AMOUNT, 0) * xh.REWARD_EXCHANGE_RATE) ELSE 0 END) as SITGO_REWARD_MONEY,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'SitAndGo' THEN (ifnull(xh.BUYIN_TICKET_REGIST_FEE, 0) * xh.BUYIN_EXCHANGE_RATE) ELSE 0 END) as SITGO_TICKET_BUYIN_REGIST,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'SitAndGo' THEN (ifnull(xh.BUYIN_TICKET_ADMIN_FEE, 0) * xh.BUYIN_EXCHANGE_RATE) ELSE 0 END) as SITGO_TICKET_BUYIN_ADMIN,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'SitAndGo' THEN (ifnull(xh.REWARD_TICKET_REGIST_FEE, 0) * xh.BUYIN_EXCHANGE_RATE) ELSE 0 END) as SITGO_TICKET_REWARD_REGIST,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'SitAndGo' THEN (ifnull(xh.REWARD_TICKET_ADMIN_FEE, 0) * xh.BUYIN_EXCHANGE_RATE) ELSE 0 END) as SITGO_TICKET_REWARD_ADMIN,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'SitAndGo' THEN (ifnull(xh.DEDUCTION_FEE, 0) * xh.REWARD_EXCHANGE_RATE) ELSE 0 END) as SITGO_DEDUCT,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'MultiTable' THEN (ifnull(xh.BUYIN_REGIST_FEE, 0) * xh.BUYIN_EXCHANGE_RATE) ELSE 0 END) as TOUR_BUYIN_REGIST,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'MultiTable' THEN (ifnull(xh.BUYIN_ADMIN_FEE, 0) * xh.BUYIN_EXCHANGE_RATE) ELSE 0 END) as TOUR_BUYIN_ADMIN,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'MultiTable' THEN (ifnull(xh.REWARD_AMOUNT, 0) * xh.REWARD_EXCHANGE_RATE) ELSE 0 END) as TOUR_REWARD_MONEY,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'MultiTable' THEN (ifnull(xh.BUYIN_TICKET_REGIST_FEE, 0) * xh.BUYIN_EXCHANGE_RATE) ELSE 0 END) as TOUR_TICKET_BUYIN_REGIST,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'MultiTable' THEN (ifnull(xh.BUYIN_TICKET_ADMIN_FEE, 0) * xh.BUYIN_EXCHANGE_RATE) ELSE 0 END) as TOUR_TICKET_BUYIN_ADMIN,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'MultiTable' THEN (ifnull(xh.REWARD_TICKET_REGIST_FEE, 0) * xh.BUYIN_EXCHANGE_RATE) ELSE 0 END) as TOUR_TICKET_REWARD_REGIST,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'MultiTable' THEN (ifnull(xh.REWARD_TICKET_ADMIN_FEE, 0) * xh.BUYIN_EXCHANGE_RATE) ELSE 0 END) as TOUR_TICKET_REWARD_ADMIN,
				sum(CASE WHEN tn.TOURNAMENT_TYPE = 'MultiTable' THEN (ifnull(xh.DEDUCTION_FEE, 0) * xh.REWARD_EXCHANGE_RATE) ELSE 0 END) as TOUR_DEDUCT
			from tournament_history as xh
            inner join tournament as tn on xh.FK_TOURNAMENT_ID = tn.ID
            inner join gameuser as gu on xh.FK_GAMEUSER_ID = gu.ID
            where xh.END_TIME is not null and xh.END_TIME >= lastConsolidateTime and xh.END_TIME < nextConsolidateTime
            group by GAMEUSER_ID, OPERATOR_ID, P2P_GAME_CODE, CURRENCY_NAME, TRANSACTION_DATETIME
        ) on duplicate key update
        p2p_tournament_history_statistic_gmt_plus8.SITGO_BUYIN_REGIST_RMB = p2p_tournament_history_statistic_gmt_plus8.SITGO_BUYIN_REGIST_RMB + values(SITGO_BUYIN_REGIST_RMB),
        p2p_tournament_history_statistic_gmt_plus8.SITGO_BUYIN_ADMIN_RMB = p2p_tournament_history_statistic_gmt_plus8.SITGO_BUYIN_ADMIN_RMB + values(SITGO_BUYIN_ADMIN_RMB),							
		p2p_tournament_history_statistic_gmt_plus8.SITGO_REWARD_MONEY_RMB = p2p_tournament_history_statistic_gmt_plus8.SITGO_REWARD_MONEY_RMB + values(SITGO_REWARD_MONEY_RMB), 		
		p2p_tournament_history_statistic_gmt_plus8.SITGO_TICKET_BUYIN_REGIST_RMB = p2p_tournament_history_statistic_gmt_plus8.SITGO_TICKET_BUYIN_REGIST_RMB + values(SITGO_TICKET_BUYIN_REGIST_RMB), 
		p2p_tournament_history_statistic_gmt_plus8.SITGO_TICKET_BUYIN_ADMIN_RMB = p2p_tournament_history_statistic_gmt_plus8.SITGO_TICKET_BUYIN_ADMIN_RMB + values(SITGO_TICKET_BUYIN_ADMIN_RMB), 	
		p2p_tournament_history_statistic_gmt_plus8.SITGO_TICKET_REWARD_REGIST_RMB = p2p_tournament_history_statistic_gmt_plus8.SITGO_TICKET_REWARD_REGIST_RMB + values(SITGO_TICKET_REWARD_REGIST_RMB),
		p2p_tournament_history_statistic_gmt_plus8.SITGO_TICKET_REWARD_ADMIN_RMB = p2p_tournament_history_statistic_gmt_plus8.SITGO_TICKET_REWARD_ADMIN_RMB + values(SITGO_TICKET_REWARD_ADMIN_RMB), 
		p2p_tournament_history_statistic_gmt_plus8.SITGO_DEDUCT_RMB = p2p_tournament_history_statistic_gmt_plus8.SITGO_DEDUCT_RMB + values(SITGO_DEDUCT_RMB), 				
		p2p_tournament_history_statistic_gmt_plus8.TOUR_BUYIN_REGIST_RMB = p2p_tournament_history_statistic_gmt_plus8.TOUR_BUYIN_REGIST_RMB + values(TOUR_BUYIN_REGIST_RMB), 		
		p2p_tournament_history_statistic_gmt_plus8.TOUR_BUYIN_ADMIN_RMB = p2p_tournament_history_statistic_gmt_plus8.TOUR_BUYIN_ADMIN_RMB + values(TOUR_BUYIN_ADMIN_RMB), 			
		p2p_tournament_history_statistic_gmt_plus8.TOUR_REWARD_MONEY_RMB = p2p_tournament_history_statistic_gmt_plus8.TOUR_REWARD_MONEY_RMB + values(TOUR_REWARD_MONEY_RMB), 		
		p2p_tournament_history_statistic_gmt_plus8.TOUR_TICKET_BUYIN_REGIST_RMB = p2p_tournament_history_statistic_gmt_plus8.TOUR_TICKET_BUYIN_REGIST_RMB + values(TOUR_TICKET_BUYIN_REGIST_RMB), 	
		p2p_tournament_history_statistic_gmt_plus8.TOUR_TICKET_BUYIN_ADMIN_RMB = p2p_tournament_history_statistic_gmt_plus8.TOUR_TICKET_BUYIN_ADMIN_RMB + values(TOUR_TICKET_BUYIN_ADMIN_RMB), 	
		p2p_tournament_history_statistic_gmt_plus8.TOUR_TICKET_REWARD_REGIST_RMB = p2p_tournament_history_statistic_gmt_plus8.TOUR_TICKET_REWARD_REGIST_RMB + values(TOUR_TICKET_REWARD_REGIST_RMB), 
		p2p_tournament_history_statistic_gmt_plus8.TOUR_TICKET_REWARD_ADMIN_RMB = p2p_tournament_history_statistic_gmt_plus8.TOUR_TICKET_REWARD_ADMIN_RMB + values(TOUR_TICKET_REWARD_ADMIN_RMB), 	
		p2p_tournament_history_statistic_gmt_plus8.TOUR_DEDUCT_RMB = p2p_tournament_history_statistic_gmt_plus8.TOUR_DEDUCT_RMB + values(TOUR_DEDUCT_RMB), 				
		p2p_tournament_history_statistic_gmt_plus8.SITGO_BUYIN_REGIST = p2p_tournament_history_statistic_gmt_plus8.SITGO_BUYIN_REGIST + values(SITGO_BUYIN_REGIST), 			
		p2p_tournament_history_statistic_gmt_plus8.SITGO_BUYIN_ADMIN = p2p_tournament_history_statistic_gmt_plus8.SITGO_BUYIN_ADMIN + values(SITGO_BUYIN_ADMIN), 			
		p2p_tournament_history_statistic_gmt_plus8.SITGO_REWARD_MONEY = p2p_tournament_history_statistic_gmt_plus8.SITGO_REWARD_MONEY + values(SITGO_REWARD_MONEY), 			
		p2p_tournament_history_statistic_gmt_plus8.SITGO_TICKET_BUYIN_REGIST = p2p_tournament_history_statistic_gmt_plus8.SITGO_TICKET_BUYIN_REGIST + values(SITGO_TICKET_BUYIN_REGIST), 	
		p2p_tournament_history_statistic_gmt_plus8.SITGO_TICKET_BUYIN_ADMIN = p2p_tournament_history_statistic_gmt_plus8.SITGO_TICKET_BUYIN_ADMIN + values(SITGO_TICKET_BUYIN_ADMIN), 		
		p2p_tournament_history_statistic_gmt_plus8.SITGO_TICKET_REWARD_REGIST = p2p_tournament_history_statistic_gmt_plus8.SITGO_TICKET_REWARD_REGIST + values(SITGO_TICKET_REWARD_REGIST), 	
		p2p_tournament_history_statistic_gmt_plus8.SITGO_TICKET_REWARD_ADMIN = p2p_tournament_history_statistic_gmt_plus8.SITGO_TICKET_REWARD_ADMIN + values(SITGO_TICKET_REWARD_ADMIN), 	
		p2p_tournament_history_statistic_gmt_plus8.SITGO_DEDUCT = p2p_tournament_history_statistic_gmt_plus8.SITGO_DEDUCT + values(SITGO_DEDUCT), 					
		p2p_tournament_history_statistic_gmt_plus8.TOUR_BUYIN_REGIST = p2p_tournament_history_statistic_gmt_plus8.TOUR_BUYIN_REGIST + values(TOUR_BUYIN_REGIST), 			
		p2p_tournament_history_statistic_gmt_plus8.TOUR_BUYIN_ADMIN = p2p_tournament_history_statistic_gmt_plus8.TOUR_BUYIN_ADMIN + values(TOUR_BUYIN_ADMIN), 				
		p2p_tournament_history_statistic_gmt_plus8.TOUR_REWARD_MONEY = p2p_tournament_history_statistic_gmt_plus8.TOUR_REWARD_MONEY + values(TOUR_REWARD_MONEY), 			
		p2p_tournament_history_statistic_gmt_plus8.TOUR_TICKET_BUYIN_REGIST = p2p_tournament_history_statistic_gmt_plus8.TOUR_TICKET_BUYIN_REGIST + values(TOUR_TICKET_BUYIN_REGIST), 		
		p2p_tournament_history_statistic_gmt_plus8.TOUR_TICKET_BUYIN_ADMIN = p2p_tournament_history_statistic_gmt_plus8.TOUR_TICKET_BUYIN_ADMIN + values(TOUR_TICKET_BUYIN_ADMIN), 		
		p2p_tournament_history_statistic_gmt_plus8.TOUR_TICKET_REWARD_REGIST = p2p_tournament_history_statistic_gmt_plus8.TOUR_TICKET_REWARD_REGIST + values(TOUR_TICKET_REWARD_REGIST), 	
		p2p_tournament_history_statistic_gmt_plus8.TOUR_TICKET_REWARD_ADMIN = p2p_tournament_history_statistic_gmt_plus8.TOUR_TICKET_REWARD_ADMIN + values(TOUR_TICKET_REWARD_ADMIN),
        p2p_tournament_history_statistic_gmt_plus8.TOUR_DEDUCT = p2p_tournament_history_statistic_gmt_plus8.TOUR_DEDUCT + values(TOUR_DEDUCT);
		insert into p2p_consolidate_progress(TYPE_ID, LAST_TIME) values 
		(
			consolidateTypeId, nextConsolidateTime
		) on duplicate key update 
		p2p_consolidate_progress.LAST_TIME = nextConsolidateTime;
		select 1;
    else
		select 0;
    end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-17 10:06:12
