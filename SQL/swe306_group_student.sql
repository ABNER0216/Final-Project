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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `studentid` int NOT NULL,
  `studentname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `studentpassword` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `studentdepartment` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `studentemail` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `courseid` varchar(45) DEFAULT NULL,
  `courseid2` int DEFAULT NULL,
  `courseid3` int DEFAULT NULL,
  `courseid1` int DEFAULT NULL,
  PRIMARY KEY (`studentid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1909100,'yihong','111','DMT','yihong@xmu.edu.my',NULL,NULL,NULL,NULL),(1909107,'wulong','101','DMT','wulong@xmu.edu.my',NULL,NULL,NULL,NULL),(1909204,'xiaoyihong','1016','SWE','xiaoyihong@xmu.edu.my',NULL,NULL,NULL,NULL),(1909213,'nihaoa','888','CST','nihaoa@xmu.edu.my',NULL,NULL,NULL,NULL),(1909222,'zhouzhilu','222','DMT','zhouzhilu@xmu.edu.my','800',NULL,211217202,NULL),(1909233,'hebe','345','SWE','hebe@xmu.edu.my','211213303,211217202',NULL,NULL,211220404),(1909301,'Weihao','457','EGE','wei@xmu.edu.my','211217202',211213303,800,NULL),(1909475,'bob','123','SWE','bob@xmu.edu.my','211217202',211213303,NULL,NULL),(2004191,'wuyu','444','ADT','wuyu@xmu.edu.my',NULL,NULL,NULL,NULL),(2009110,'huangwei','999','SWE','huangwei@xmu.edu.my',NULL,NULL,NULL,NULL),(2009111,'xiaobuhuo','090','MBT','xiaobuhuo@xmu.edu.my',NULL,NULL,NULL,NULL),(2109081,'juanwang','666','SWE','juanwang@xmu.edu.my',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
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
