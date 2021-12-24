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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `courseid` int NOT NULL,
  `coursename` varchar(45) NOT NULL,
  `coursetime` varchar(45) NOT NULL,
  `coach` varchar(45) NOT NULL,
  `feedback` text,
  `attendance` varchar(45) NOT NULL,
  `courseinfo` text,
  `feedbackreply` varchar(45) DEFAULT NULL,
  `day` varchar(45) NOT NULL,
  `courseicon` varchar(45) NOT NULL DEFAULT 'resources/images/icon.jpg',
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (211213303,'basketball','2021-12-13 8:00-9:30','Mike','so active.','Attend','The main course contents include introduction to the origin and development of basketball, basic knowledge of basketball, basketball technology, basketball tactics, basketball fitness methods, basketball games and referee rules.','yesss!!','Monday','resources/images/icon.jpg'),(211213505,'badminton2','2021-12-13 10:00-12:00','Lucy',NULL,'Attend','Badminton2 class is a traditional badminton teaching course, teaching to further stimulate students\' interest in badminton, so that students can master the basic skills and skills of badminton, and understand the relevant knowledge and development of badminton.',NULL,'Monday','resources/images/icon.jpg'),(211215202,'yoga','2021-12-15 10:00-12:00','Marry',NULL,'Attend','Yoga for college students includes 11 weeks of teaching content. Among them, the first and second weeks introduce the theory part, which is the basic understanding and experience of yoga; From the third week to the tenth week, the weekly class will focus on a core theme and teach three main movements in detail, followed by 30 ~ 45 minutes of combined practice. Yoga meditation will be carried out before the practice of combined posture in each class',NULL,'Wednesday','resources/images/icon.jpg'),(211215404,'volleyball','2012-12-15 10:00-12:00','Daniel','A really good class.','Attend','Volleyball is geared to the needs of all our students interest courses, the main task is to strengthen students\' physique, raises the student good sports consciousness, quality of temper, according to the physiological and psychological characteristics of students, has a purpose, in a planned way to actively participate in sports activities, to master the basic skills of volleyball, through volleyball improve students of various bodily functions, To promote the overall development of students\' physical and mental quality and form lifelong sports consciousness.','good job','Wednesday','resources/images/icon.jpg'),(211217202,'yoga','2012-12-17 20:00-21:00','Jane','good job','Attend','Yoga for college students includes 11 weeks of teaching content. Among them, the first and second weeks introduce the theory part, which is the basic understanding and experience of yoga; From the third week to the tenth week, the weekly class will focus on a core theme and teach three main movements in detail, followed by 30 ~ 45 minutes of combined practice. Yoga meditation will be carried out before the practice of combined posture in each class',NULL,'Friday','resources/images/icon.jpg'),(211218303,'basketball','2021-12-18 9:00-10:00','Mike','so good','Attend','The main course contents include introduction to the origin and development of basketball, basic knowledge of basketball, basketball technology, basketball tactics, basketball fitness methods, basketball games and referee rules.',NULL,'Saturday','resources/images/icon.jpg'),(211220404,'volleyball','2021-12-20 18:00-19:40','Daniel',NULL,'To be attend','Volleyball is geared to the needs of all our students interest courses, the main task is to strengthen students\' physique, raises the student good sports consciousness, quality of temper, according to the physiological and psychological characteristics of students, has a purpose, in a planned way to actively participate in sports activities, to master the basic skills of volleyball, through volleyball improve students of various bodily functions, To promote the overall development of students\' physical and mental quality and form lifelong sports consciousness.',NULL,'Monday','resources/images/icon.jpg'),(211220505,'badminton2','2021-12-31 20:00-21:30','Marry',NULL,'To be attend','Badminton2 class is a traditional badminton teaching course, teaching to further stimulate students\' interest in badminton, so that students can master the basic skills and skills of badminton, and understand the relevant knowledge and development of badminton.',NULL,'Friday','resources/images/icon.jpg'),(211230202,'yoga1','2021-12-30 20:00-21:00','Jane',NULL,'To be attend','Yoga for college students includes 11 weeks of teaching content. Among them, the first and second weeks introduce the theory part, which is the basic understanding and experience of yoga; From the third week to the tenth week, the weekly class will focus on a core theme and teach three main movements in detail, followed by 30 ~ 45 minutes of combined practice. Yoga meditation will be carried out before the practice of combined posture in each class',NULL,'Thusrday','resources/images/icon.jpg'),(211231101,'badminton1','2021-12-31 14:00-15:30','Lucy',NULL,'To be attend','Badminton1 class is a traditional badminton teaching course, teaching to further stimulate students\' interest in badminton, so that students can master the basic skills and skills of badminton, and understand the relevant knowledge and development of badminton.',NULL,'Friday','resources/images/icon.jpg');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
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
