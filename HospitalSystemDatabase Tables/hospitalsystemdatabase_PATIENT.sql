-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (x86_64)
--
-- Host: 127.0.0.1    Database: hospitalsystemdatabase
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `PATIENT`
--

DROP TABLE IF EXISTS `PATIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PATIENT` (
  `PatientID` char(10) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Phone` char(20) NOT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Address` varchar(100) NOT NULL,
  `AddedDate` date NOT NULL,
  `DoctorID` char(10) NOT NULL,
  PRIMARY KEY (`PatientID`),
  UNIQUE KEY `uq_pat` (`PatientID`),
  KEY `fk_doc` (`DoctorID`),
  CONSTRAINT `fk_doc` FOREIGN KEY (`DoctorID`) REFERENCES `Doctor` (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PATIENT`
--

LOCK TABLES `PATIENT` WRITE;
/*!40000 ALTER TABLE `PATIENT` DISABLE KEYS */;
INSERT INTO `PATIENT` VALUES ('P1','Patient Dana','444-1212','P1@email.com','123 Home St.','2019-02-01','D2'),('P10','Patient Nick','123-1212','P10@email.com','335 Bay St.','2011-07-13','D7'),('P11','Patient Kyle','123-2934','P11@email.com','216 Baker St.','2016-05-10','D9'),('P12','Patient Garcia','123-6723','P12@email.com','176 Right St.','2010-06-20','D9'),('P13','Patient Alicia','123-1745','P13@email.com','823 Left St.','2015-05-18','D4'),('P14','Patient Dan','123-6565','P14@email.com','534 High St.','2018-03-15','D4'),('P2','Patient Harry','444-2934','P2@email.com','3435 Main St.','2011-07-13','D7'),('P3','Patient Karl','444-6723','P3@email.com','2176 Baker St.','2009-05-10','D6'),('P4','Patient Sid','444-1745','P4@email.com','176 Right St.','2010-06-20','D2'),('P5','Patient Marry','444-6565','P5@email.com','435 Main St.','2014-05-18','D8'),('P6','Patient Kim','444-4889','P6@email.com','34 Home St.','2018-03-05','D6'),('P7','Patient Susan','444-4581','P7@email.com','65 Water St.','2011-09-07','D4'),('P8','Patient Sam','444-7891','P8@email.com','23 Hill Drive','2010-11-23','D3'),('P9','Patient Peter','444-7791','P9@email.com','12 River St.','2008-02-01','D5');
/*!40000 ALTER TABLE `PATIENT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-02 16:52:26
