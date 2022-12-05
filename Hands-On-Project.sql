-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: sports_booking
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `room_id` varchar(55) NOT NULL,
  `booked_date` date NOT NULL,
  `booked_time` time NOT NULL,
  `member_id` varchar(55) NOT NULL,
  `datetime_of_booking` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_status` varchar(55) NOT NULL DEFAULT 'Unpaid',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unic` (`room_id`,`booked_date`,`booked_time`),
  KEY `fk1` (`member_id`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'AR','2017-12-26','13:00:00','oreillys','2017-12-20 18:31:27','Paid'),(2,'MPF1','2017-12-30','17:00:00','noah51','2017-12-22 03:22:10','Paid'),(3,'T2','2017-12-31','16:00:00','macejkovic73','2017-12-28 16:14:23','Paid'),(4,'T1','2018-03-05','08:00:00','little31','2018-02-22 18:19:17','Unpaid'),(5,'MPF2','2018-03-02','11:00:00','marvin1','2018-03-01 14:13:45','Paid'),(6,'B1','2018-03-28','16:00:00','marvin1','2018-03-23 20:46:36','Paid'),(7,'B1','2018-04-15','14:00:00','macejkovic73','2018-04-12 19:23:20','Cancelled'),(8,'T2','2018-04-23','13:00:00','macejkovic73','2018-04-19 07:49:00','Cancelled'),(9,'T1','2018-05-25','10:00:00','marvin1','2018-05-21 08:20:46','Paid'),(10,'B2','2018-06-12','15:00:00','bbahringer','2018-05-30 11:40:23','Paid'),(12,'T1','2022-12-12','11:00:00','noah51','2022-11-28 20:02:01','Cancelled'),(13,'AR','2022-12-12','11:00:00','macejkovic73','2022-11-28 20:02:01','Cancelled');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `camere_si_pret`
--

DROP TABLE IF EXISTS `camere_si_pret`;
/*!50001 DROP VIEW IF EXISTS `camere_si_pret`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `camere_si_pret` AS SELECT 
 1 AS `id`,
 1 AS `room_id`,
 1 AS `roomtype`,
 1 AS `booked_date`,
 1 AS `booked_time`,
 1 AS `member_id`,
 1 AS `datetime_of_booking`,
 1 AS `price`,
 1 AS `payment_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `member_since` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_due` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('amely_18','iuteiute','Amely_18_18@gmail.com','2022-11-28 20:17:20',0.00),('angelolott','1234abcd','AngeloNLott@gmail.com','2022-11-28 19:44:39',0.00),('bbahringer','iambeau17','Beaulah_Bahringer@yahoo.com','2017-12-28 03:36:50',0.00),('little31','whocares31','Anthony_Little31@gmail.com','2017-06-01 18:12:11',10.00),('macejkovic73','jadajeda12','Jada.Macejkovic73@gmail.com','2017-05-30 14:30:22',10.00),('marvin1','if0909mar','Marvin_Schulist@gmail.com','2017-09-08 23:30:49',0.00),('nitzsche77','bret77@#','Bret_Nitzsche77@gmail.com','2018-01-09 15:36:49',0.00),('noah51','18Oct1976','noah51@hotmail.com','2017-12-16 20:59:46',0.00),('oreillys','reallycool#1','Martine_OReilly@yahoo.com','2017-10-12 02:39:20',0.00),('wyattgreat','wyatt111','Wyatt_Wisozk2@gmail.com','2017-07-18 13:28:35',0.00);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `payment_check` BEFORE DELETE ON `members` FOR EACH ROW BEGIN

DECLARE v_payment_due decimal(6,2);

SELECT payment_due INTO v_payment_due FROM members  WHERE id = OLD.id;

IF v_payment_due > 0 THEN 
INSERT INTO pending_termination (id, email, payment_due) VALUES (old.id, old.email, old.payment_due);
END IF;


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pending_termination`
--

DROP TABLE IF EXISTS `pending_termination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_termination` (
  `id` varchar(55) NOT NULL,
  `email` varchar(255) NOT NULL,
  `request_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_due` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_termination`
--

LOCK TABLES `pending_termination` WRITE;
/*!40000 ALTER TABLE `pending_termination` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_termination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` varchar(55) NOT NULL,
  `roomtype` varchar(50) DEFAULT NULL,
  `price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES ('AR','Archery Range',120.00),('B1','Badminton Court',8.00),('B2','Badminton Court',8.00),('MPF1','Multi Purpose Field',50.00),('MPF2','Multi Purpose Field',60.00),('T1','Tennis Court',10.00),('T2','Tennis Court',10.00);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sports_booking'
--

--
-- Dumping routines for database 'sports_booking'
--
/*!50003 DROP FUNCTION IF EXISTS `check_cancellation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `check_cancellation`(p_booking_id INT) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE v_done INT;
DECLARE v_cancellation INT;
DECLARE v_current_payment_status VARCHAR(255);
DECLARE cur CURSOR FOR
SELECT payment_status FROM bookings WHERE member_id =
(SELECT member_id FROM bookings WHERE id = p_booking_id) ORDER BY
datetime_of_booking DESC;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = 1;
SET v_done = 0;
SET v_cancellation = 0;
OPEN cur;
cancellation_loop : LOOP
FETCH cur INTO v_current_payment_status;
IF v_current_payment_status != 'Cancelled' OR v_done =
1 THEN LEAVE cancellation_loop;
ELSE SET v_cancellation = v_cancellation + 1;
END IF;
      END LOOP;
      CLOSE cur;
	  RETURN v_cancellation;
    
    
    
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cancel_booking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cancel_booking`(IN p_booking_id INT, OUT p_message VARCHAR(255))
BEGIN	
   DECLARE v_cancellation INT;
   DECLARE v_member_id varchar(55);
   DECLARE v_payment_status varchar(55);
   DECLARE v_booked_date date;
   DECLARE v_price decimal(6,2);
   DECLARE v_payment_due decimal(6,2);	
   
   SET @v_cancellation = 0;
    
   SELECT member_id, booked_date, price, payment_status INTO v_member_id, v_booked_date,
v_price, v_payment_status FROM camere_si_pret
   WHERE id = p_booking_id;
   
   SELECT payment_due INTO v_payment_due FROM members 
   WHERE id = v_member_id;
    
    IF curdate() >= v_booked_date THEN
SELECT 'Cancellation cannot be done on/after the booked
date' INTO p_message;
ELSEIF v_payment_status = 'Cancelled' OR v_payment_status =
'Paid' THEN
SELECT 'Booking has already been cancelled or paid'
INTO p_message;
ELSE
   UPDATE bookings 
   SET payment_status = 'Cancelled'
   WHERE id = p_booking_id;
   
   SET v_payment_due = v_payment_due - v_price;
   SET v_cancellation = check_cancellation
(p_booking_id);
   IF v_cancellation >= 2 THEN SET v_payment_due = v_payment_due + 10;
END IF;

UPDATE members
SET payment_due = v_payment_due
WHERE id = v_member_id;

SELECT "Booking Cancelled" into p_message;
END IF;
    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_member` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_member`(IN p_id VARCHAR(55))
BEGIN
     DELETE FROM members
     WHERE members.id = p_id;
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_new_member` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_new_member`(IN p_id VARCHAR(55), IN p_password VARCHAR(255), IN p_email VARCHAR(255))
BEGIN
     INSERT INTO members(id, password, email) VALUES (p_id, p_password, p_email);
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `make_booking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `make_booking`(IN p_room_id varchar(55), IN p_booked_date date, IN p_booked_time time, IN p_member_id varchar(55))
BEGIN
DECLARE v_price decimal(6,2);
DECLARE v_payment_due decimal(6,2);

SELECT price INTO v_price FROM rooms WHERE id = p_room_id;

INSERT INTO bookings (room_id, booked_date, booked_time, member_id) VALUES
(p_room_id, p_booked_date, p_booked_time, p_member_id);

SELECT payment_due INTO v_payment_due FROM members WHERE id = p_member_id;

UPDATE members
SET payment_due = v_payment_due + v_price
WHERE id = p_member_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_room` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_room`(IN p_room_type varchar(50), IN p_booked_date DATE, IN p_booked_time TIME)
BEGIN	
     SELECT * FROM rooms
WHERE id NOT IN (SELECT room_id FROM bookings WHERE booked_date = p_booked_date AND booked_time = p_booked_time AND
payment_status != 'Cancelled')
AND roomtype = p_room_type;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_member_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_member_email`(IN p_id VARCHAR(55), IN p_email VARCHAR(255))
BEGIN
   UPDATE members 
   SET email = p_email
   WHERE members.id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_member_password` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_member_password`(IN p_id VARCHAR(55), IN p_password VARCHAR(255))
BEGIN
   UPDATE members 
   SET password = p_password
   WHERE members.id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_payment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_payment`(IN p_id INT)
BEGIN
DECLARE v_member_id VARCHAR(55);
DECLARE v_payment_due DECIMAL(6, 2);
DECLARE v_price DECIMAL(6, 2);
UPDATE bookings SET payment_status = 'Paid' WHERE id =
p_id;
SELECT member_id, price INTO v_member_id, v_price FROM
camere_si_pret WHERE id = p_id;
SELECT payment_due INTO v_payment_due FROM members WHERE id
= v_member_id;
UPDATE members SET payment_due = v_payment_due - v_price
WHERE id = v_member_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_bookings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_bookings`(IN p_id int)
BEGIN	
     SELECT * FROM member_bookings;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `camere_si_pret`
--

/*!50001 DROP VIEW IF EXISTS `camere_si_pret`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `camere_si_pret` AS select `b`.`id` AS `id`,`b`.`room_id` AS `room_id`,`r`.`roomtype` AS `roomtype`,`b`.`booked_date` AS `booked_date`,`b`.`booked_time` AS `booked_time`,`b`.`member_id` AS `member_id`,`b`.`datetime_of_booking` AS `datetime_of_booking`,`r`.`price` AS `price`,`b`.`payment_status` AS `payment_status` from (`bookings` `b` join `rooms` `r` on((`b`.`room_id` = `r`.`id`))) order by `b`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-04 19:44:04
