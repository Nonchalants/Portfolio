-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: student_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `assignment_tbl`
--

DROP TABLE IF EXISTS `assignment_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment_tbl` (
  `shortname` varchar(50) NOT NULL,
  `due_date` date NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`shortname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment_tbl`
--

LOCK TABLES `assignment_tbl` WRITE;
/*!40000 ALTER TABLE `assignment_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignment_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_tbl`
--

DROP TABLE IF EXISTS `student_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_tbl` (
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_tbl`
--

LOCK TABLES `student_tbl` WRITE;
/*!40000 ALTER TABLE `student_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_tbl`
--

DROP TABLE IF EXISTS `submission_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submission_tbl` (
  `version` int(11) NOT NULL,
  `submit_date` date NOT NULL,
  `raw_data` text DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`version`),
  KEY `fk_username` (`username`),
  KEY `fk_shortname` (`shortname`),
  CONSTRAINT `fk_shortname` FOREIGN KEY (`shortname`) REFERENCES `assignment_tbl` (`shortname`),
  CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `student_tbl` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_tbl`
--

LOCK TABLES `submission_tbl` WRITE;
/*!40000 ALTER TABLE `submission_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-21 16:46:00
