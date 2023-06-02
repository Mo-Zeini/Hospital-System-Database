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
-- Table structure for table `APPOINTMENT`
--

DROP TABLE IF EXISTS `APPOINTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `APPOINTMENT` (
  `AppointmentID` char(10) NOT NULL,
  `PatientID` char(10) NOT NULL,
  `DoctorID` char(10) NOT NULL,
  `AppointmentDate` date NOT NULL,
  `BloodPressure` smallint NOT NULL,
  `Weight` decimal(5,2) NOT NULL,
  `TreatmentNotes` varchar(300) NOT NULL,
  PRIMARY KEY (`AppointmentID`),
  UNIQUE KEY `uq_app` (`AppointmentID`),
  KEY `fk_doctor` (`DoctorID`),
  KEY `fk_patient` (`PatientID`),
  CONSTRAINT `fk_doctor` FOREIGN KEY (`DoctorID`) REFERENCES `Doctor` (`DoctorID`),
  CONSTRAINT `fk_patient` FOREIGN KEY (`PatientID`) REFERENCES `Patient` (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APPOINTMENT`
--

LOCK TABLES `APPOINTMENT` WRITE;
/*!40000 ALTER TABLE `APPOINTMENT` DISABLE KEYS */;
INSERT INTO `APPOINTMENT` VALUES ('A1','P1','D2','2019-07-01',80,65.00,'Dream to success'),('A10','P8','D3','2019-11-18',76,79.00,'New teeth'),('A11','P11','D9','2019-06-22',78,71.00,'Much better'),('A12','P2','D7','2020-02-21',82,86.00,'Early treatment'),('A13','P4','D2','2019-08-17',81,101.00,'Bad dreams'),('A14','P6','D6','2019-06-27',79,49.00,'Sun light spots'),('A15','P10','D7','2020-07-29',80,83.00,'Early treatment'),('A16','P7','D4','2020-08-01',78,79.00,'Good heart rate'),('A2','P13','D4','2019-01-04',77,88.00,'Good heart rate'),('A3','P11','D9','2019-03-22',82,95.00,'Many spots'),('A4','P7','D4','2020-02-01',85,74.00,'Fast heart rate'),('A5','P9','D5','2019-04-13',75,56.00,'Reports checked'),('A6','P3','D6','2019-11-12',81,96.00,'Sun light spots'),('A7','P10','D7','2020-01-29',80,87.00,'Early treatment'),('A8','P9','D5','2019-08-12',86,92.00,'Much better'),('A9','P14','D4','2019-05-18',75,75.00,'Good heart rate');
/*!40000 ALTER TABLE `APPOINTMENT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-02 16:52:25
