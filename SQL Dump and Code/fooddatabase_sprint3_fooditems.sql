-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fooddatabase_sprint3
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `fooditems`
--

DROP TABLE IF EXISTS `fooditems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fooditems` (
  `Order_id` varchar(50) NOT NULL,
  `Food_id` varchar(20) NOT NULL,
  `Quantity` int DEFAULT NULL,
  `User_id` varchar(30) NOT NULL,
  `Vendor_id` varchar(50) NOT NULL,
  PRIMARY KEY (`Order_id`,`Food_id`),
  KEY `Food_id` (`Food_id`),
  KEY `User_id` (`User_id`),
  KEY `Vendor_id` (`Vendor_id`),
  CONSTRAINT `fooditems_ibfk_1` FOREIGN KEY (`Food_id`) REFERENCES `food` (`Food_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fooditems_ibfk_2` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fooditems_ibfk_3` FOREIGN KEY (`Vendor_id`) REFERENCES `vendor` (`Vendor_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fooditems`
--

LOCK TABLES `fooditems` WRITE;
/*!40000 ALTER TABLE `fooditems` DISABLE KEYS */;
INSERT INTO `fooditems` VALUES ('ORD1','F1',2,'801167555','V1'),('ORD2','F10',2,'801167553','V4'),('ORD3','F2',2,'801167557','V3'),('ORD4','F3',2,'801167555','V1');
/*!40000 ALTER TABLE `fooditems` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ORDERS` AFTER INSERT ON `fooditems` FOR EACH ROW BEGIN
 declare total_price int;
 declare user varchar(30);
 declare vendor varchar(30);
 select Sum(Quantity*Price),User_id,ft.Vendor_id into total_price,user,vendor from fooditems ft
 inner join food f using(Food_id)
 where Order_id=new.Order_id
 group by Order_id;
IF EXISTS(select Order_id from order_details where Order_id=new.Order_id) THEN
 UPDATE order_details SET total=total_price where Order_id=new.Order_id;
else
INSERT INTO order_details(Order_id,User_id,Vendor_id,Payment_type,Preparation_time,Tracking,total)
 VALUES (new.Order_id,user,vendor,'cash','00:10:00','ready to pickup',total_price);
 
END IF;
END */;;
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

-- Dump completed on 2020-05-07 18:24:13
