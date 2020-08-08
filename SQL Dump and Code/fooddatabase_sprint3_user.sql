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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `User_id` varchar(30) NOT NULL,
  `Passkey` varchar(50) NOT NULL,
  `First_name` varchar(45) NOT NULL,
  `Last_name` varchar(30) NOT NULL,
  `Mobile_no` varchar(40) DEFAULT NULL,
  `Email` varchar(40) NOT NULL,
  `Type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`User_id`),
  UNIQUE KEY `Email` (`Email`),
  KEY `User_id` (`User_id`),
  KEY `Name` (`First_name`,`Last_name`,`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('801167551','password1','Bill','john','7049057865','bill@uncc.edu',NULL),('801167552','password2','Priya','vikram','9704611477','priya23@uncc.edu',NULL),('801167553','password3','Ravi','Kumar','9049678765','ravikumar@uncc.edu',NULL),('801167554','password4','Mike','Hilton','7047082345','mike203@uncc.edu',NULL),('801167555','password5','Tom','joseph','7047026678','joseph@uncc.edu',NULL),('801167556','password6','Meju','Kyoko','7047055758','meju876@uncc.edu',NULL),('801167557','password7','Ali','sever','7057075678','Sadeqa@uncc.edu',NULL),('801167558','password8','jing','yang','6123731376','jing@uncc.edu',NULL),('801167559','password9','Michael','jackson','7047055678','michaelcook@uncc.edu',NULL),('801167560','password10','Roy','Kumar','2025550102','bradym@uncc.edu',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-07 18:24:13
