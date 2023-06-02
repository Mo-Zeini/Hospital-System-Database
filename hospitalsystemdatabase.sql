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
-- Table structure for table `ALLERGY`
--

DROP TABLE IF EXISTS `ALLERGY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ALLERGY` (
  `AllergyID` char(10) NOT NULL,
  `AllergyName` varchar(40) NOT NULL,
  PRIMARY KEY (`AllergyID`),
  UNIQUE KEY `uq_allergy` (`AllergyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ALLERGY`
--

LOCK TABLES `ALLERGY` WRITE;
/*!40000 ALTER TABLE `ALLERGY` DISABLE KEYS */;
INSERT INTO `ALLERGY` VALUES ('AL1','Drug'),('AL2','Food'),('AL3','Skin'),('AL4','Asthma'),('AL5','Rhinitis');
/*!40000 ALTER TABLE `ALLERGY` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `DOCTOR`
--

DROP TABLE IF EXISTS `DOCTOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DOCTOR` (
  `DoctorID` char(10) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Phone` char(20) NOT NULL,
  `SpecialtyNumber` char(10) NOT NULL,
  `Supervisor` char(10) DEFAULT NULL,
  PRIMARY KEY (`DoctorID`),
  UNIQUE KEY `uq_doctor` (`DoctorID`),
  KEY `fk_spec` (`SpecialtyNumber`),
  CONSTRAINT `fk_spec` FOREIGN KEY (`SpecialtyNumber`) REFERENCES `Specialty` (`SpecialtyNumber`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DOCTOR`
--

LOCK TABLES `DOCTOR` WRITE;
/*!40000 ALTER TABLE `DOCTOR` DISABLE KEYS */;
INSERT INTO `DOCTOR` VALUES ('D1','Doctor Karen','555-1212','S6',''),('D2','Doctor John','555-2934','S2','D1'),('D3','Doctor Robert','555-6723','S6','D1'),('D4','Doctor David','555-1745','S4','D1'),('D5','Doctor Mary','555-6565','S5','D1'),('D6','Doctor Linda','555-4889','S1','D1'),('D7','Doctor Susan','555-4581','S3','D1'),('D8','Doctor Zeynep','555-7891','S4','D1'),('D9','Doctor Mat','555-7791','S1','D1');
/*!40000 ALTER TABLE `DOCTOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEDICINE`
--

DROP TABLE IF EXISTS `MEDICINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MEDICINE` (
  `MedicineID` char(10) NOT NULL,
  `MedicineName` varchar(40) NOT NULL,
  PRIMARY KEY (`MedicineID`),
  UNIQUE KEY `uq_medicine` (`MedicineID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEDICINE`
--

LOCK TABLES `MEDICINE` WRITE;
/*!40000 ALTER TABLE `MEDICINE` DISABLE KEYS */;
INSERT INTO `MEDICINE` VALUES ('M1','Ativan'),('M2','Ibuprofen'),('M3','Omeprazole'),('M4','Metoprolol'),('M5','Azithromycin'),('M6','Codeine');
/*!40000 ALTER TABLE `MEDICINE` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `PATIENT_ALLERGY`
--

DROP TABLE IF EXISTS `PATIENT_ALLERGY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PATIENT_ALLERGY` (
  `AllergyID` char(10) NOT NULL,
  `PatientID` char(10) NOT NULL,
  PRIMARY KEY (`AllergyID`,`PatientID`),
  UNIQUE KEY `uq_pat_all` (`AllergyID`,`PatientID`),
  KEY `fk_pat` (`PatientID`),
  CONSTRAINT `fk_aller` FOREIGN KEY (`AllergyID`) REFERENCES `Allergy` (`AllergyID`),
  CONSTRAINT `fk_pat` FOREIGN KEY (`PatientID`) REFERENCES `Patient` (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PATIENT_ALLERGY`
--

LOCK TABLES `PATIENT_ALLERGY` WRITE;
/*!40000 ALTER TABLE `PATIENT_ALLERGY` DISABLE KEYS */;
INSERT INTO `PATIENT_ALLERGY` VALUES ('AL4','P1'),('AL3','P11'),('AL2','P13'),('AL1','P3'),('AL4','P7'),('AL5','P9');
/*!40000 ALTER TABLE `PATIENT_ALLERGY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PATIENT_MEDICINE`
--

DROP TABLE IF EXISTS `PATIENT_MEDICINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PATIENT_MEDICINE` (
  `AppointmentID` char(10) NOT NULL,
  `MedicineID` char(10) NOT NULL,
  PRIMARY KEY (`AppointmentID`,`MedicineID`),
  UNIQUE KEY `uq_pat_med` (`AppointmentID`,`MedicineID`),
  KEY `fk_medic` (`MedicineID`),
  CONSTRAINT `fk_appo` FOREIGN KEY (`AppointmentID`) REFERENCES `Appointment` (`AppointmentID`),
  CONSTRAINT `fk_medic` FOREIGN KEY (`MedicineID`) REFERENCES `Medicine` (`MedicineID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PATIENT_MEDICINE`
--

LOCK TABLES `PATIENT_MEDICINE` WRITE;
/*!40000 ALTER TABLE `PATIENT_MEDICINE` DISABLE KEYS */;
INSERT INTO `PATIENT_MEDICINE` VALUES ('A15','M1'),('A1','M2'),('A10','M2'),('A15','M2'),('A6','M3'),('A8','M3'),('A3','M5'),('A4','M5'),('A10','M6'),('A2','M6');
/*!40000 ALTER TABLE `PATIENT_MEDICINE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SPECIALTY`
--

DROP TABLE IF EXISTS `SPECIALTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SPECIALTY` (
  `SpecialtyNumber` char(10) NOT NULL,
  `SpecialtyName` varchar(40) NOT NULL,
  PRIMARY KEY (`SpecialtyNumber`),
  UNIQUE KEY `uq_spec` (`SpecialtyNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPECIALTY`
--

LOCK TABLES `SPECIALTY` WRITE;
/*!40000 ALTER TABLE `SPECIALTY` DISABLE KEYS */;
INSERT INTO `SPECIALTY` VALUES ('S1','Dermatology'),('S2','Psychiatry'),('S3','Oncology'),('S4','Cardiology'),('S5','Urology'),('S6','Pediatrics');
/*!40000 ALTER TABLE `SPECIALTY` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-02 16:52:47
