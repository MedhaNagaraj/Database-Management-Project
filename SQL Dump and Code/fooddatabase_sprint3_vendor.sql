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
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `Vendor_id` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Passkey` varchar(30) NOT NULL,
  `Vendor_name` varchar(30) NOT NULL,
  `Vendor_address` varchar(50) DEFAULT NULL,
  `Mobile_no` varchar(40) DEFAULT NULL,
  `Timing` varchar(50) DEFAULT NULL,
  `Email` varchar(40) NOT NULL,
  PRIMARY KEY (`Vendor_id`),
  UNIQUE KEY `Email` (`Email`),
  KEY `Vendor_id` (`Vendor_id`),
  KEY `Vendor_name` (`Vendor_name`,`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES ('V1','mickel','vendorpassword1','Bojangles','Studentunion ground floor','7806543451','9:00AM to 5:00PM','mick495@uncc.edu'),('V2','Steve','vendorpassword2','Crowns','student union first floor','9705669615','9:00AM to 10:00PM','steve@uncc.edu'),('V3','breyana','vendorpassword1','Subway','Studentunion ground floor','7806543451','9:00AM to 5:00PM','bryana@uncc.edu'),('V4','Sachin','vendorpassword3','Chickfila','Prospectus building near library','78647243451','9:00AM to 4:00PM','sachin.kulkarni@uncc.edu'),('V5','Larel','vendorpassword4','Wendy\'s','Studentunion ground floor','7806543451','9:00AM to 5:00PM','larel@uncc.edu'),('V6','Marcel','vendorpassword5','Sovi','South village deck','6785432144','11:00AM to 9:30PM','mcanfall@uncc.edu');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-07 18:24:12
