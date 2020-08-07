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
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `Food_id` varchar(30) NOT NULL,
  `Food_Category` varchar(50) NOT NULL,
  `Food_Name` varchar(30) NOT NULL,
  `Price` int NOT NULL,
  `Ingredients` varchar(80) DEFAULT NULL,
  `Image` longblob NOT NULL,
  `Vendor_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Food_id`),
  KEY `Food_id` (`Food_id`),
  KEY `Food_name` (`Food_Category`,`Food_Name`),
  KEY `Vendor_id` (`Vendor_id`),
  CONSTRAINT `food_ibfk_1` FOREIGN KEY (`Vendor_id`) REFERENCES `vendor` (`Vendor_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES ('F1','NonVeg','Buffalo Chicken',11,'Chicken,Buffalo Chicken, Ranch',_binary 'C:UsersAdminDesktopmasters sem 1database systemsprojectimagesuffalo-chicken-wings-.jpg','V1'),('F10','Veg','veg nuggets',11,'veg,vegtables, Ranch',_binary 'C:UsersAdminDesktopmasters sem 1database systemsprojectimagesuffalo-chicken-wings-.jpg','V4'),('F2','Veg','Chocolate pudding',3,'Chocolate, Coffee, Sugar',_binary 'C:UsersAdminDesktopmasters sem 1database systemsprojectimageschocolate pudding.jpg','V3'),('F3','NonVeg','Spicy Sandwich',5,'Chicken,Barbeque Sauce',_binary 'C:UsersAdminDesktopmasters sem 1database systemsprojectimagesspicy-sandwich.jpg','V1'),('F4','Veg','Macroni and Cheese',2,'Macroni, Cheese, Mayonnaise',_binary 'C:UsersAdminDesktopmasters sem 1database systemsprojectimagesmacroni chesse.jpg','V2'),('F5','NonVeg','Chicken wrap',4,'Chicken,tortilla,creamy queso, tomatoes',_binary 'C:UsersAdminDesktopmasters sem 1database systemsprojectimagesChicken-wrap.jpg','V4'),('F6','NonVeg','Chicken biryani',6,'chicken, Tomato, Onion',_binary 'C:UsersAdminDesktopmasters sem 1database systemsprojectimageschicken biryani .jpg','V5'),('F7','NonVeg','Chicken',11,'Chicken,Buffalo Chicken, Ranch',_binary 'C:UsersAdminDesktopmasters sem 1database systemsprojectimagesuffalo-chicken-wings-.jpg','V1'),('F8','Veg','veg nuggets',11,'veg,vegtables, Ranch',_binary 'C:UsersAdminDesktopmasters sem 1database systemsprojectimagesuffalo-chicken-wings-.jpg','V2'),('F9','Veg','veg nuggets',11,'veg,vegtables, Ranch',_binary 'C:UsersAdminDesktopmasters sem 1database systemsprojectimagesuffalo-chicken-wings-.jpg','V3');
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
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
