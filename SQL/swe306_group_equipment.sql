-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: swe306_group
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `EquipmentId` int NOT NULL,
  `BorrowedBy` int NOT NULL,
  `EquipmentType` varchar(45) NOT NULL,
  `BorrowStatus` varchar(45) NOT NULL,
  `BorrowDate` date NOT NULL,
  `ReturnDate` date NOT NULL,
  PRIMARY KEY (`EquipmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,1909475,'Basketball','invalid','0000-00-00','0000-00-00'),(2,0,'Football','valid','0000-00-00','0000-00-00'),(3,1909501,'Tennis','invalid','2021-12-17','2021-12-20'),(4,0,'Dumbbell','valid','0000-00-00','0000-00-00'),(5,1909233,'Basketball','invalid','2021-12-25','2021-12-28'),(6,0,'Basketball','valid','0000-00-00','0000-00-00'),(7,0,'Tennis','valid','0000-00-00','0000-00-00'),(8,0,'Tennis','valid','0000-00-00','0000-00-00'),(9,0,'Basketball','valid','0000-00-00','0000-00-00'),(10,0,'Dumbbell','valid','0000-00-00','0000-00-00'),(11,0,'Dumbbell','valid','0000-00-00','0000-00-00'),(12,0,'Skippingrope','valid','0000-00-00','0000-00-00'),(13,0,'Skippingrope','valid','0000-00-00','0000-00-00'),(14,0,'Football','valid','0000-00-00','0000-00-00'),(15,0,'Football','valid','0000-00-00','0000-00-00'),(16,0,'Skippingrope','valid','0000-00-00','0000-00-00'),(17,0,'Yogamat','valid','0000-00-00','0000-00-00'),(18,0,'Boxinggloves','valid','0000-00-00','0000-00-00'),(19,0,'Boxinggloves','valid','0000-00-00','0000-00-00'),(20,0,'Yogamat','valid','0000-00-00','0000-00-00'),(21,0,'Yogamat','valid','0000-00-00','0000-00-00'),(22,0,'Yogamat','valid','0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-24 17:42:20
