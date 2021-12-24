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
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach` (
  `coachid` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `coachinfo` text NOT NULL,
  `coachage` int NOT NULL,
  `coachgender` varchar(45) NOT NULL,
  `photo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`coachid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES (1,'daniel@xmu.edu.my','daniel123','Daniel','2020 graduated from XMUM, worked as a teaching assistant in xmum physical education department, and has a teacher qualification certificate.',28,'Male','resources/images/volleyballcoach.jpg'),(2,'jane@xmu.edu.my','jane123','Jane','Yoga teacher hired by XMUM physical department. Good at yoga, Pilates. Professional certificate of coach.',35,'Female','resources/images/yogacoach.jpg'),(3,'mike@xmu.edu.my','mike123','Mike','2020-2021 XMUM basketball teacher in the Department of physical education. Good at basketball. Led xmum basketball team to win the Malaysia cup.',32,'Male','resources/images/basketballcoach.jpg'),(4,'marry@xmu.edu.my','marry123','Marry','Marry is a new badminton teacher in 2021 and hopes to become good friends with her students.',26,'Female','resources/images/badmintoncoach.jpg'),(5,'Lucy@xmu.edu.my','lucy123','Lucy','Lucy has been a badminton teacher at XMUM since 2019 and is the coaching coach of the XMUM Badminton Club.',34,'Female','resources/images/badmintoncoach2.jpg');
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-24 17:42:19
