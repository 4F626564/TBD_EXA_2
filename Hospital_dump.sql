-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `hospital`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hospital`;

--
-- Table structure for table `cuartos`
--

DROP TABLE IF EXISTS `cuartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuartos` (
  `cuarto_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int NOT NULL,
  `numero_cuarto` int NOT NULL,
  `inicio_estadia` datetime NOT NULL,
  `fin_estadia` datetime DEFAULT NULL,
  PRIMARY KEY (`cuarto_id`),
  KEY `paciente_id` (`paciente_id`),
  CONSTRAINT `cuartos_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuartos`
--

LOCK TABLES `cuartos` WRITE;
/*!40000 ALTER TABLE `cuartos` DISABLE KEYS */;
INSERT INTO `cuartos` VALUES (1,22,121,'2017-04-10 00:00:00','2017-04-17 00:00:00'),(2,10,190,'2017-04-11 00:00:00','2017-04-13 00:00:00'),(3,42,108,'2017-04-12 00:00:00','2017-04-17 00:00:00'),(4,13,179,'2017-04-13 00:00:00','2017-04-18 00:00:00'),(5,32,158,'2017-04-14 00:00:00','2017-04-17 00:00:00'),(6,4,183,'2017-04-15 00:00:00','2017-04-16 00:00:00'),(7,52,142,'2017-04-16 00:00:00','2017-04-23 00:00:00'),(8,47,108,'2017-04-17 00:00:00','2017-04-24 00:00:00'),(9,50,100,'2017-04-18 00:00:00','2017-04-23 00:00:00'),(10,17,109,'2017-04-19 00:00:00','2017-04-24 00:00:00'),(11,36,116,'2017-04-20 00:00:00','2017-04-23 00:00:00'),(12,43,182,'2017-04-21 00:00:00','2017-04-24 00:00:00'),(13,19,180,'2017-04-22 00:00:00','2017-04-28 00:00:00'),(14,9,188,'2017-04-23 00:00:00','2017-04-25 00:00:00'),(15,24,173,'2017-04-24 00:00:00','2017-05-01 00:00:00'),(16,31,176,'2017-04-25 00:00:00','2017-04-30 00:00:00'),(17,14,122,'2017-04-26 00:00:00','2017-04-27 00:00:00'),(18,30,155,'2017-04-27 00:00:00','2017-05-07 00:00:00'),(19,33,181,'2017-04-28 00:00:00','2017-04-30 00:00:00'),(20,37,178,'2017-04-29 00:00:00','2017-05-05 00:00:00'),(21,46,139,'2017-04-30 00:00:00','2017-05-07 00:00:00'),(22,49,119,'2017-05-01 00:00:00','2017-05-10 00:00:00'),(23,11,193,'2017-05-02 00:00:00','2017-05-09 00:00:00'),(24,51,153,'2017-05-03 00:00:00','2017-05-04 00:00:00'),(25,45,168,'2017-05-04 00:00:00','2017-05-14 00:00:00'),(26,57,115,'2017-05-05 00:00:00','2017-05-12 00:00:00'),(27,15,140,'2017-05-06 00:00:00','2017-05-09 00:00:00'),(28,16,170,'2017-05-07 00:00:00','2017-05-14 00:00:00'),(29,41,153,'2017-05-08 00:00:00','2017-05-10 00:00:00'),(30,20,177,'2017-05-09 00:00:00','2017-05-14 00:00:00'),(31,29,101,'2017-05-10 00:00:00','2017-05-17 00:00:00'),(32,28,118,'2017-05-11 00:00:00','2017-05-21 00:00:00'),(33,5,120,'2017-05-12 00:00:00','2017-05-19 00:00:00'),(34,6,156,'2017-05-13 00:00:00','2017-05-19 00:00:00'),(35,2,174,'2017-05-14 00:00:00','2017-05-15 00:00:00'),(36,1,156,'2017-05-15 00:00:00','2017-05-19 00:00:00'),(37,44,397,'2017-05-16 00:00:00','2017-05-26 00:00:00'),(38,27,314,'2017-05-17 00:00:00','2017-05-18 00:00:00'),(39,3,385,'2017-05-18 00:00:00','2017-05-24 00:00:00'),(40,54,356,'2017-05-19 00:00:00','2017-05-26 00:00:00'),(41,53,317,'2017-05-20 00:00:00','2017-05-28 00:00:00'),(42,35,305,'2017-05-21 00:00:00','2017-05-29 00:00:00'),(43,56,363,'2017-05-22 00:00:00','2017-05-26 00:00:00'),(44,39,346,'2017-05-23 00:00:00','2017-06-02 00:00:00'),(45,40,396,'2017-05-24 00:00:00','2017-05-31 00:00:00'),(46,34,376,'2017-05-25 00:00:00','2017-06-03 00:00:00'),(47,58,353,'2017-05-26 00:00:00','2017-05-27 00:00:00'),(48,21,342,'2017-05-27 00:00:00','2017-06-06 00:00:00'),(49,7,382,'2017-05-28 00:00:00','2017-05-29 00:00:00'),(50,55,346,'2017-05-29 00:00:00','2017-05-30 00:00:00'),(51,26,349,'2017-05-30 00:00:00','2017-06-02 00:00:00'),(52,25,381,'2017-05-31 00:00:00','2017-06-08 00:00:00'),(53,48,383,'2017-06-01 00:00:00','2017-06-11 00:00:00'),(54,38,339,'2017-06-02 00:00:00','2017-06-07 00:00:00'),(55,23,326,'2017-06-03 00:00:00','2017-06-09 00:00:00'),(56,12,391,'2017-06-04 00:00:00','2017-06-12 00:00:00'),(57,18,377,'2017-06-05 00:00:00','2017-06-13 00:00:00'),(58,8,323,'2017-06-06 00:00:00','2017-06-13 00:00:00');
/*!40000 ALTER TABLE `cuartos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas_pacientes`
--

DROP TABLE IF EXISTS `cuentas_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas_pacientes` (
  `cuenta_paciente_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int NOT NULL,
  `forma_pago_pac_id` int DEFAULT NULL,
  `fecha_emision` datetime NOT NULL,
  `otros` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`cuenta_paciente_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `forma_pago_pac_id` (`forma_pago_pac_id`),
  CONSTRAINT `cuentas_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `cuentas_pacientes_ibfk_2` FOREIGN KEY (`forma_pago_pac_id`) REFERENCES `formas_pago_pacientes` (`forma_pago_pac_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes`
--

LOCK TABLES `cuentas_pacientes` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes` VALUES (1,22,NULL,'2017-04-20 00:00:00',NULL),(2,10,NULL,'2017-04-17 00:00:00',NULL),(3,42,8,'2017-04-20 00:00:00',NULL),(4,13,22,'2017-04-22 00:00:00',NULL),(5,32,29,'2017-04-21 00:00:00',NULL),(6,4,15,'2017-04-18 00:00:00',NULL),(7,52,1,'2017-04-24 00:00:00',NULL),(8,47,9,'2017-04-27 00:00:00',NULL),(9,50,23,'2017-04-28 00:00:00',NULL),(10,17,30,'2017-04-27 00:00:00',NULL),(11,36,16,'2017-04-28 00:00:00',NULL),(12,43,2,'2017-04-28 00:00:00',NULL),(13,19,NULL,'2017-04-29 00:00:00',NULL),(14,9,NULL,'2017-04-26 00:00:00',NULL),(15,24,NULL,'2017-05-05 00:00:00',NULL),(16,31,NULL,'2017-05-02 00:00:00',NULL),(17,14,10,'2017-05-01 00:00:00',NULL),(18,30,24,'2017-05-12 00:00:00',NULL),(19,33,31,'2017-05-03 00:00:00',NULL),(20,37,17,'2017-05-09 00:00:00',NULL),(21,46,3,'2017-05-08 00:00:00',NULL),(22,49,NULL,'2017-05-14 00:00:00',NULL),(23,11,NULL,'2017-05-12 00:00:00',NULL),(24,51,NULL,'2017-05-05 00:00:00',NULL),(25,45,NULL,'2017-05-19 00:00:00',NULL),(26,57,11,'2017-05-14 00:00:00',NULL),(27,15,25,'2017-05-12 00:00:00',NULL),(28,16,32,'2017-05-15 00:00:00',NULL),(29,41,18,'2017-05-13 00:00:00',NULL),(30,20,4,'2017-05-18 00:00:00',NULL),(31,29,NULL,'2017-05-20 00:00:00',NULL),(32,28,NULL,'2017-05-26 00:00:00',NULL),(33,5,NULL,'2017-05-22 00:00:00',NULL),(34,6,NULL,'2017-05-21 00:00:00',NULL),(35,2,NULL,'2017-05-16 00:00:00',NULL),(36,1,NULL,'2017-05-20 00:00:00',NULL),(37,44,12,'2017-05-27 00:00:00',NULL),(38,27,26,'2017-05-21 00:00:00',NULL),(39,3,33,'2017-05-26 00:00:00',NULL),(40,54,19,'2017-05-31 00:00:00',NULL),(41,53,5,'2017-05-31 00:00:00',NULL),(42,35,NULL,'2017-06-01 00:00:00',NULL),(43,56,NULL,'2017-05-27 00:00:00',NULL),(44,39,NULL,'2017-06-07 00:00:00',NULL),(45,40,NULL,'2017-06-04 00:00:00',NULL),(46,34,13,'2017-06-07 00:00:00',NULL),(47,58,27,'2017-05-31 00:00:00',NULL),(48,21,34,'2017-06-07 00:00:00',NULL),(49,7,20,'2017-05-31 00:00:00',NULL),(50,55,6,'2017-06-03 00:00:00',NULL),(51,26,NULL,'2017-06-03 00:00:00',NULL),(52,25,NULL,'2017-06-10 00:00:00',NULL),(53,48,14,'2017-06-14 00:00:00',NULL),(54,38,28,'2017-06-09 00:00:00',NULL),(55,23,35,'2017-06-14 00:00:00',NULL),(56,12,21,'2017-06-17 00:00:00',NULL),(57,18,7,'2017-06-16 00:00:00',NULL),(58,8,NULL,'2017-06-15 00:00:00',NULL);
/*!40000 ALTER TABLE `cuentas_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas_pacientes_detalles`
--

DROP TABLE IF EXISTS `cuentas_pacientes_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas_pacientes_detalles` (
  `cuenta_paciente_det_id` int NOT NULL AUTO_INCREMENT,
  `cuenta_paciente_id` int NOT NULL,
  `detalle` varchar(80) NOT NULL DEFAULT 'Diagnóstico',
  `cantidad` double NOT NULL,
  `costo_total` double NOT NULL,
  PRIMARY KEY (`cuenta_paciente_det_id`),
  KEY `cuenta_paciente_id` (`cuenta_paciente_id`),
  CONSTRAINT `cuentas_pacientes_detalles_ibfk_1` FOREIGN KEY (`cuenta_paciente_id`) REFERENCES `cuentas_pacientes` (`cuenta_paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes_detalles`
--

LOCK TABLES `cuentas_pacientes_detalles` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes_detalles` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes_detalles` VALUES (1,1,'Tratamiento',3,151347),(2,2,'Tratamiento',3,50299),(3,3,'Tratamiento',2,335363),(4,4,'Tratamiento',3,336904),(5,5,'Tratamiento',1,284730),(6,6,'Tratamiento',1,692302),(7,7,'Tratamiento',1,191741),(8,8,'Tratamiento',1,744675),(9,9,'Tratamiento',1,859558),(10,10,'Tratamiento',1,507315),(11,11,'Tratamiento',2,189576),(12,12,'Tratamiento',3,615740),(13,13,'Tratamiento',2,251751),(14,14,'Tratamiento',3,289314),(15,15,'Tratamiento',2,346244),(16,16,'Tratamiento',1,321521),(17,17,'Tratamiento',3,729192),(18,18,'Tratamiento',2,654777),(19,19,'Tratamiento',2,141906),(20,20,'Tratamiento',1,749107),(21,21,'Tratamiento',1,347804),(22,22,'Tratamiento',2,824953),(23,23,'Tratamiento',3,966042),(24,24,'Tratamiento',1,376164),(25,25,'Tratamiento',3,376236),(26,26,'Tratamiento',1,255123),(27,27,'Tratamiento',3,317412),(28,28,'Tratamiento',3,766565),(29,29,'Tratamiento',3,230187),(30,30,'Tratamiento',2,973681),(31,31,'Tratamiento',3,556224),(32,32,'Tratamiento',1,789826),(33,33,'Tratamiento',3,797003),(34,34,'Tratamiento',3,896987),(35,35,'Tratamiento',1,645401),(36,36,'Tratamiento',3,732868),(37,37,'Tratamiento',1,707681),(38,38,'Tratamiento',3,110331),(39,39,'Tratamiento',3,158256),(40,40,'Tratamiento',2,81944),(41,41,'Tratamiento',2,881690),(42,42,'Tratamiento',2,602980),(43,43,'Tratamiento',1,268138),(44,44,'Tratamiento',3,379874),(45,45,'Tratamiento',1,153311),(46,46,'Tratamiento',3,863400),(47,47,'Tratamiento',2,860995),(48,48,'Tratamiento',3,149290),(49,49,'Tratamiento',1,267026),(50,50,'Tratamiento',1,834540),(51,51,'Tratamiento',3,153439),(52,52,'Tratamiento',3,236628),(53,53,'Tratamiento',3,871864),(54,54,'Tratamiento',3,680413),(55,55,'Tratamiento',3,343354),(56,56,'Tratamiento',3,57805),(57,57,'Tratamiento',3,308184),(58,58,'Tratamiento',2,453174),(59,1,'Tratamiento',3,286210),(60,2,'Tratamiento',2,370053),(61,3,'Tratamiento',2,468092),(62,4,'Tratamiento',3,526929),(63,5,'Tratamiento',1,550774),(64,6,'Tratamiento',3,152954),(65,7,'Tratamiento',2,361733),(66,8,'Tratamiento',2,554900),(67,9,'Tratamiento',1,285060),(68,10,'Tratamiento',1,525974),(69,11,'Tratamiento',3,585548),(70,12,'Tratamiento',2,50663),(71,13,'Tratamiento',2,275709),(72,14,'Tratamiento',3,239682),(73,15,'Tratamiento',1,563209),(74,16,'Tratamiento',2,234213),(75,17,'Tratamiento',1,589304),(76,18,'Tratamiento',3,248645),(77,19,'Tratamiento',1,443071),(78,20,'Tratamiento',3,219624),(79,21,'Tratamiento',1,584960),(80,22,'Tratamiento',3,429701),(81,23,'Tratamiento',3,570861),(82,24,'Tratamiento',2,46589),(83,25,'Tratamiento',1,566074),(84,26,'Tratamiento',2,549895),(85,27,'Tratamiento',3,88233),(86,28,'Tratamiento',3,184519),(87,29,'Tratamiento',3,34939),(88,30,'Tratamiento',1,140167),(89,31,'Tratamiento',1,268348),(90,32,'Tratamiento',3,54824),(91,33,'Tratamiento',1,343220),(92,34,'Tratamiento',1,141859),(93,35,'Tratamiento',1,187645),(94,36,'Tratamiento',3,176937),(95,37,'Tratamiento',2,292454),(96,38,'Tratamiento',1,320878),(97,39,'Tratamiento',3,354925),(98,40,'Tratamiento',3,511089),(99,41,'Tratamiento',2,59643),(100,42,'Tratamiento',2,583011),(101,43,'Tratamiento',3,124520),(102,44,'Tratamiento',2,61608),(103,45,'Tratamiento',2,452630),(104,46,'Tratamiento',1,541120),(105,47,'Tratamiento',3,68985),(106,48,'Tratamiento',1,79515),(107,49,'Tratamiento',1,596734),(108,50,'Tratamiento',1,335679),(109,51,'Tratamiento',1,71023),(110,52,'Tratamiento',1,443391),(111,53,'Tratamiento',2,479401),(112,54,'Tratamiento',1,132635),(113,55,'Tratamiento',3,352489),(114,56,'Tratamiento',1,373220),(115,57,'Tratamiento',3,597900),(116,58,'Tratamiento',3,378332);
/*!40000 ALTER TABLE `cuentas_pacientes_detalles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones` (
  `direccion_id` int NOT NULL AUTO_INCREMENT,
  `calle` varchar(80) NOT NULL,
  `numero_exterior` int NOT NULL,
  `numero_interior` int DEFAULT NULL,
  `colonia` varchar(60) NOT NULL,
  `codigo_postal` varchar(7) NOT NULL,
  `ciudad` varchar(60) NOT NULL,
  `estado` varchar(60) NOT NULL,
  `pais` varchar(60) NOT NULL,
  `otros` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`direccion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,'1 rue Alsace-Lorraine',1,NULL,'No especifica','40620','Toulouse','No especifica','France',''),(2,'12 Orchestra Terrace',12,NULL,'No especifica','72299','Walla Walla','WA','USA',''),(3,'12, rue des Bouchers',12,NULL,'No especifica','10368','Marseille','No especifica','France',''),(4,'120 Hanover Sq.',120,NULL,'No especifica','60155','London','No especifica','UK',''),(5,'184, chausse de Tournai',184,NULL,'No especifica','55769','Lille','No especifica','France',''),(6,'187 Suffolk Ln.',187,NULL,'No especifica','78271','Boise','ID','USA',''),(7,'1900 Oak St.',1900,NULL,'No especifica','85240','Vancouver','BC','Canada',''),(8,'2, rue du Commerce',2,NULL,'No especifica','46913','Helsinki','No especifica','',''),(9,'23 Tsawassen Blvd.',23,NULL,'No especifica','31994','Tsawassen','BC','Canada',''),(10,'24, place Klber',24,NULL,'No especifica','72584','Strasbourg','No especifica','France',''),(11,'25, rue Lauriston',25,NULL,'No especifica','43635','Paris','No especifica','France',''),(12,'265, boulevard Charonne',265,NULL,'No especifica','26346','Paris','No especifica','France',''),(13,'2732 Baker Blvd.',2732,NULL,'No especifica','87535','Eugene','OR','USA',''),(14,'2743 Bering St.',2743,NULL,'No especifica','79901','Anchorage','AK','USA',''),(15,'2817 Milton Dr.',2817,NULL,'No especifica','85182','Albuquerque','NM','USA',''),(16,'305 - 14th Ave. S. Suite 3B',305,3,'No especifica','62245','Oulu','No especifica','Finland',''),(17,'35 King George',35,NULL,'No especifica','13216','London','No especifica','UK',''),(18,'43 rue St. Laurent',43,NULL,'No especifica','18465','Montral','Qubec','Canada',''),(19,'5 Ave. Los Palos Grandes',5,NULL,'No especifica','68441','Caracas','DF','Venezuela',''),(20,'54, rue Royale',54,NULL,'No especifica','63117','Nantes','No especifica','France',''),(21,'55 Grizzly Peak Rd.',55,NULL,'No especifica','39549','Butte','MT','USA',''),(22,'59 rue de l\'Abbaye',59,NULL,'No especifica','21955','Warszawa','No especifica','',''),(23,'67, avenue de l\'Europe',67,NULL,'No especifica','42768','Versailles','No especifica','France',''),(24,'67, rue des Cinquante Otages',67,NULL,'No especifica','56274','Nantes','No especifica','France',''),(25,'722 DaVinci Blvd.',722,NULL,'No especifica','13113','Kirkland','WA','USA',''),(26,'8 Johnstown Road',8,NULL,'No especifica','47847','Cork','Co. Cork','Ireland',''),(27,'87 Polk St. Suite 5',87,NULL,'No especifica','11981','San Francisco','CA','USA',''),(28,'89 Chiaroscuro Rd.',89,NULL,'No especifica','29410','Portland','OR','USA',''),(29,'89 Jefferson Way Suite 2',89,NULL,'No especifica','44919','Portland','OR','USA',''),(30,'90 Wadhurst Rd.',90,NULL,'No especifica','43827','London','No especifica','UK',''),(31,'Adenauerallee 900',900,NULL,'No especifica','86925','Lyon','No especifica','France',''),(32,'Alameda dos Canrios, 891',891,NULL,'No especifica','36965','Sao Paulo','SP','Brazil',''),(33,'Av. Brasil, 442',442,NULL,'No especifica','68328','Campinas','SP','Brazil',''),(34,'Av. Copacabana, 267',267,NULL,'No especifica','34941','Rio de Janeiro','RJ','Brazil',''),(35,'Av. del Libertador 900',900,NULL,'No especifica','71252','Buenos Aires','No especifica','Argentina',''),(36,'Av. dos Lusadas, 23',23,NULL,'No especifica','84473','Sao Paulo','SP','Brazil',''),(37,'Av. Ins de Castro, 414',414,NULL,'No especifica','14942','Sao Paulo','SP','Brazil',''),(38,'Avda. Azteca 123',123,NULL,'No especifica','78040','Mxico D.F.','Mxico D.F.','Mexico',''),(39,'Avda. de la Constitucin 2222',2222,NULL,'No especifica','71760','Mxico D.F.','Mxico D.F.','Mexico',''),(40,'Ave. 5 de Mayo Porlamar',5,NULL,'No especifica','20768','I. de Margarita','Nueva Esparta','Venezuela',''),(41,'Berguvsvgen  8',8,NULL,'No especifica','26468','Lule','No especifica','Sweden',''),(42,'Berkeley Gardens 12  Brewery',12,NULL,'No especifica','61775','London','No especifica','UK',''),(43,'Berliner Platz 43',43,NULL,'No especifica','21914','Mnchen','No especifica','Germany',''),(44,'Boulevard Tirou, 255',255,NULL,'No especifica','86215','Charleroi','No especifica','Belgium',''),(45,'C/ Araquil, 67',67,NULL,'No especifica','11697','Madrid','No especifica','Spain',''),(46,'C/ Moralzarzal, 86',86,NULL,'No especifica','77528','Madrid','No especifica','Spain',''),(47,'C/ Romero, 33',33,NULL,'No especifica','18057','Sevilla','No especifica','Spain',''),(48,'Calle Dr. Jorge Cash 321',321,NULL,'No especifica','19460','Mxico D.F.','Mxico D.F.','Mexico',''),(49,'Carrera 22 con Ave. Carlos Soublette #8-35',22,8,'No especifica','50156','San Cristbal','Tchira','Venezuela',''),(50,'Carrera 52 con Ave. Bolvar #65-98 Llano Largo',52,NULL,'No especifica','76914','Barquisimeto','Lara','Venezuela',''),(51,'Cerrito 333',333,NULL,'No especifica','41756','Buenos Aires','No especifica','Argentina',''),(52,'City Center Plaza 516 Main St.',516,NULL,'No especifica','47913','Elgin','OR','USA',''),(53,'Erling Skakkes gate 78',78,NULL,'No especifica','68136','Stavern','No especifica','Norway',''),(54,'Estrada da sade n. 58',58,NULL,'No especifica','11380','Lisboa','No especifica','Portugal',''),(55,'Fauntleroy Circus',100,NULL,'No especifica','12425','London','No especifica','UK',''),(56,'Forsterstr. 57',57,NULL,'No especifica','29719','Mannheim','No especifica','Germany',''),(57,'Garden House Crowther Way',5,NULL,'No especifica','52697','Cowes','Isle of Wight','UK',''),(58,'Geislweg 14',14,NULL,'No especifica','34435','Salzburg','No especifica','Austria',''),(59,'Gran Va, 1',1,NULL,'No especifica','61601','Madrid','No especifica','Spain',''),(60,'Grenzacherweg 237',237,NULL,'No especifica','83335','Genve','No especifica','Switzerland',''),(61,'Hauptstr. 29',29,NULL,'No especifica','23662','Bern','No especifica','Switzerland',''),(62,'Heerstr. 22',22,NULL,'No especifica','73900','Leipzig','No especifica','Germany',''),(63,'Ing. Gustavo Moncada 8585 Piso 20-A',8585,20,'No especifica','83428','Buenos Aires','No especifica','Argentina',''),(64,'Jardim das rosas n. 32',32,NULL,'No especifica','87099','Lisboa','No especifica','Portugal',''),(65,'kergatan 24',24,NULL,'No especifica','83154','Brcke','No especifica','Sweden',''),(66,'Keskuskatu 45',45,NULL,'No especifica','25873','Resende','SP','Brazil',''),(67,'Kirchgasse 6',6,NULL,'No especifica','59319','Graz','No especifica','Austria',''),(68,'Luisenstr. 48',78,NULL,'No especifica','32205','Mnster','No especifica','Germany',''),(69,'Magazinweg 7',7,NULL,'No especifica','69129','Frankfurt a.M.','','Germany',''),(70,'Mataderos  2312',2312,NULL,'No especifica','37179','Mxico D.F.','Mxico D.F.','Mexico',''),(71,'Maubelstr. 90',90,NULL,'No especifica','73705','Brandenburg','No especifica','Germany',''),(72,'Mehrheimerstr. 369',369,NULL,'No especifica','46012','Kln','No especifica','Germany',''),(73,'Obere Str. 57',57,NULL,'No especifica','30071','Berlin','No especifica','Germany',''),(74,'P.O. Box 555',555,NULL,'No especifica','26230','Lander','WY','USA',''),(75,'Rambla de Catalua, 23',23,NULL,'No especifica','38184','Barcelona','No especifica','Spain',''),(76,'Rua da Panificadora, 12',12,NULL,'No especifica','37964','Rio de Janeiro','RJ','Brazil',''),(77,'Rua do Mercado, 12',12,NULL,'No especifica','10549','Stuttgart','No especifica','Germany',''),(78,'Rua do Pao, 67',67,NULL,'No especifica','22071','Rio de Janeiro','RJ','Brazil',''),(79,'Rua Ors, 92',92,NULL,'No especifica','16799','Sao Paulo','SP','Brazil',''),(80,'Rue Joseph-Bens 532',532,NULL,'No especifica','32742','Bruxelles','No especifica','Belgium',''),(81,'Sierras de Granada 9993',9993,NULL,'No especifica','45792','Mxico D.F.','No especifica','Mexico',''),(82,'Smagsloget 45',45,NULL,'No especifica','88442','rhus','No especifica','Denmark',''),(83,'South House 300 Queensbridge',300,NULL,'No especifica','77552','London','No especifica','UK',''),(84,'Strada Provinciale 124',124,NULL,'No especifica','47511','Reggio Emilia','No especifica','Italy',''),(85,'Taucherstrae 10',10,NULL,'No especifica','86041','Cunewalde','No especifica','Germany',''),(86,'Torikatu 38',38,NULL,'No especifica','18047','Reims','No especifica','France',''),(87,'ul. Filtrowa 68',68,NULL,'No especifica','33192','Seattle','WA','USA',''),(88,'Via Ludovico il Moro 22',22,NULL,'No especifica','82459','Bergamo','No especifica','Italy',''),(89,'Via Monte Bianco 34',34,NULL,'No especifica','87116','Torino','No especifica','Italy',''),(90,'Vinbltet 34',34,NULL,'No especifica','59536','Kobenhavn','No especifica','Denmark',''),(91,'Walserweg 21',21,NULL,'No especifica','20796','Aachen','No especifica','Germany','');
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones_empleados`
--

DROP TABLE IF EXISTS `direcciones_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones_empleados` (
  `direccion_empleado_id` int NOT NULL AUTO_INCREMENT,
  `empleado_id` int NOT NULL,
  `direccion_id` int NOT NULL,
  PRIMARY KEY (`direccion_empleado_id`),
  KEY `empleado_id` (`empleado_id`),
  KEY `direccion_id` (`direccion_id`),
  CONSTRAINT `direcciones_empleados_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`empleado_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `direcciones_empleados_ibfk_2` FOREIGN KEY (`direccion_id`) REFERENCES `direcciones` (`direccion_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones_empleados`
--

LOCK TABLES `direcciones_empleados` WRITE;
/*!40000 ALTER TABLE `direcciones_empleados` DISABLE KEYS */;
INSERT INTO `direcciones_empleados` VALUES (1,1,58),(2,2,54),(3,3,76),(4,4,32),(5,5,85),(6,6,35),(7,7,15),(8,8,84),(9,9,34),(10,10,60),(11,11,59),(12,12,53),(13,13,6),(14,14,30),(15,15,90),(16,16,11),(17,17,74),(18,18,44),(19,19,29),(20,20,21),(21,21,68),(22,22,38),(23,23,37),(24,24,25),(25,25,82),(26,26,8),(27,27,22),(28,28,31),(29,29,86),(30,30,77);
/*!40000 ALTER TABLE `direcciones_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones_pacientes`
--

DROP TABLE IF EXISTS `direcciones_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones_pacientes` (
  `direccion_paciente_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int NOT NULL,
  `direccion_id` int NOT NULL,
  PRIMARY KEY (`direccion_paciente_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `direccion_id` (`direccion_id`),
  CONSTRAINT `direcciones_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `direcciones_pacientes_ibfk_2` FOREIGN KEY (`direccion_id`) REFERENCES `direcciones` (`direccion_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones_pacientes`
--

LOCK TABLES `direcciones_pacientes` WRITE;
/*!40000 ALTER TABLE `direcciones_pacientes` DISABLE KEYS */;
INSERT INTO `direcciones_pacientes` VALUES (1,22,73),(2,10,39),(3,42,70),(4,13,4),(5,32,41),(6,4,56),(7,52,10),(8,47,45),(9,50,3),(10,17,9),(11,36,55),(12,43,51),(13,19,81),(14,9,61),(15,24,36),(16,31,42),(17,14,91),(18,30,24),(19,33,17),(20,37,67),(21,46,79),(22,49,46),(23,11,5),(24,51,65),(25,45,43),(26,57,20),(27,15,89),(28,16,64),(29,41,75),(30,20,47),(31,29,33),(32,28,13),(33,5,19),(34,6,78),(35,2,49),(36,1,52),(37,44,26),(38,27,57),(39,3,71),(40,54,23),(41,53,1),(42,35,7),(43,56,2),(44,39,69),(45,40,27),(46,34,50),(47,58,40),(48,21,28),(49,7,88),(50,55,80),(51,26,18),(52,25,62),(53,48,83),(54,38,63),(55,23,14),(56,12,72),(57,18,12),(58,8,48),(59,22,73),(60,10,39),(61,42,70);
/*!40000 ALTER TABLE `direcciones_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `empleado_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `apellido_pat` varchar(60) NOT NULL,
  `apellido_mat` varchar(60) NOT NULL,
  `titulo` varchar(60) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `otros` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`empleado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Alejandro','McAlpine','McAlpine','Senior Engineer','1953-09-19',''),(2,'Breannda','Billingsley','Billingsley','Staff','1961-10-15',''),(3,'Tse','Herber','Herber','Senior Engineer','1962-10-19',''),(4,'Anoosh','Peyn','Peyn','Engineer','1961-11-02',''),(5,'Gino','Leonhardt','Leonhardt','Senior Engineer','1952-08-06',''),(6,'Udi','Jansch','Jansch','Senior Staff','1959-04-07',''),(7,'Satosi','Awdeh','Awdeh','Staff','1963-04-14',''),(8,'Kwee','Schusler','Schusler','Senior Engineer','1952-11-13',''),(9,'Claudi','Stavenow','Stavenow','Senior Staff','1953-01-07',''),(10,'Charlene','Brattka','Brattka','Staff','1962-11-26',''),(11,'Margareta','Bierman','Bierman','Assistant Engineer','1960-09-06',''),(12,'Reuven','Garigliano','Garigliano','Assistant Engineer','1955-08-20',''),(13,'Hisao','Lipner','Lipner','Engineer','1958-01-21',''),(14,'Hironoby','Sidou','Sidou','Senior Engineer','1952-05-15',''),(15,'Shir','McClurg','McClurg','Engineer','1954-02-23',''),(16,'Mokhtar','Bernatsky','Bernatsky','Staff','1955-08-28',''),(17,'Gao','Dolinsky','Dolinsky','Engineer','1960-03-09',''),(18,'Erez','Ritzmann','Ritzmann','Senior Engineer','1952-06-13',''),(19,'Mona','Azuma','Azuma','Senior Staff','1964-04-18',''),(20,'Danel','Mondadori','Mondadori','Engineer','1959-12-25',''),(21,'Kshitij','Gils','Gils','Senior Staff','1961-10-05',''),(22,'Premal','Baek','Baek','Staff','1957-12-03',''),(23,'Zhongwei','Rosen','Rosen','Senior Staff','1960-12-17',''),(24,'Parviz','Lortz','Lortz','Staff','1963-09-09',''),(25,'Vishv','Zockler','Zockler','Engineer','1959-07-23',''),(26,'Tuval','Kalloufi','Kalloufi','Senior Engineer','1960-05-25',''),(27,'Kenroku','Malabarba','Malabarba','Staff','1962-11-07',''),(28,'Somnath','Foote','Foote','Engineer','1962-11-19',''),(29,'Xinglin','Eugenio','Eugenio','Technique Leader','1959-07-23',''),(30,'Jungsoon','Syrzycki','Syrzycki','Engineer','1954-02-25','');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago`
--

DROP TABLE IF EXISTS `formas_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formas_pago` (
  `forma_pago_id` int NOT NULL AUTO_INCREMENT,
  `forma_pago` varchar(60) NOT NULL,
  PRIMARY KEY (`forma_pago_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago`
--

LOCK TABLES `formas_pago` WRITE;
/*!40000 ALTER TABLE `formas_pago` DISABLE KEYS */;
INSERT INTO `formas_pago` VALUES (1,'EFECTIVO'),(2,'TARJETA CREDITO'),(3,'TARJETA DEBITO'),(4,'SEGURO'),(5,'CHEQUE');
/*!40000 ALTER TABLE `formas_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago_pacientes`
--

DROP TABLE IF EXISTS `formas_pago_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formas_pago_pacientes` (
  `forma_pago_pac_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int NOT NULL,
  `forma_pago_id` int NOT NULL,
  `detalles` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`forma_pago_pac_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `forma_pago_id` (`forma_pago_id`),
  CONSTRAINT `formas_pago_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `formas_pago_pacientes_ibfk_2` FOREIGN KEY (`forma_pago_id`) REFERENCES `formas_pago` (`forma_pago_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago_pacientes`
--

LOCK TABLES `formas_pago_pacientes` WRITE;
/*!40000 ALTER TABLE `formas_pago_pacientes` DISABLE KEYS */;
INSERT INTO `formas_pago_pacientes` VALUES (1,52,5,NULL),(2,43,5,NULL),(3,46,5,NULL),(4,20,5,NULL),(5,53,5,NULL),(6,55,5,NULL),(7,18,5,NULL),(8,42,1,NULL),(9,47,1,NULL),(10,14,1,NULL),(11,57,1,NULL),(12,44,1,NULL),(13,34,1,NULL),(14,48,1,NULL),(15,4,4,NULL),(16,36,4,NULL),(17,37,4,NULL),(18,41,4,NULL),(19,54,4,NULL),(20,7,4,NULL),(21,12,4,NULL),(22,13,2,NULL),(23,50,2,NULL),(24,30,2,NULL),(25,15,2,NULL),(26,27,2,NULL),(27,58,2,NULL),(28,38,2,NULL),(29,32,3,NULL),(30,17,3,NULL),(31,33,3,NULL),(32,16,3,NULL),(33,3,3,NULL),(34,21,3,NULL),(35,23,3,NULL);
/*!40000 ALTER TABLE `formas_pago_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `paciente_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `apellido_pat` varchar(60) NOT NULL,
  `apellido_mat` varchar(60) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `peso` double NOT NULL,
  `altura` double NOT NULL,
  `numero_seguro_social` varchar(20) NOT NULL,
  `genero` enum('masculino','femenino') NOT NULL,
  `telefono_casa` varchar(12) DEFAULT NULL,
  `telefono_trabajo` varchar(12) DEFAULT NULL,
  `telefono_movil` varchar(12) DEFAULT NULL,
  `otros` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Adamantios','Portugali','Portugali','1961-09-01',62,1.99,'10036','masculino','','','',''),(2,'Alain','Chappelet','Chappelet','1956-06-06',57,1.55,'10035','masculino','','','',''),(3,'Alejandro','Brender','Brender','1959-10-01',92,1.78,'10039','masculino','','','',''),(4,'Anneke','Preusig','Preusig','1953-04-03',86,1.54,'10006','femenino','','','',''),(5,'Arif','Merlo','Merlo','1954-09-13',92,1.77,'10033','masculino','','','',''),(6,'Bader','Swan','Swan','1957-04-04',69,1.56,'10034','masculino','','','',''),(7,'Basil','Tramer','Tramer','1961-04-24',99,1.55,'10049','femenino','','','',''),(8,'Berhard','McFarlin','McFarlin','1954-10-01',99,1.96,'10058','masculino','','','',''),(9,'Berni','Genin','Genin','1962-12-29',67,1.74,'10014','masculino','','','',''),(10,'Bezalel','Simmel','Simmel','1952-07-08',88,1.69,'10002','femenino','','','',''),(11,'Bojan','Montemayor','Montemayor','1960-09-19',86,1.8,'10023','femenino','','','',''),(12,'Brendon','Bernini','Bernini','1961-09-01',91,1.63,'10056','femenino','','','',''),(13,'Chirstian','Koblick','Koblick','1958-09-05',93,1.84,'10004','masculino','','','',''),(14,'Cristinel','Bouloucos','Bouloucos','1963-07-22',66,1.91,'10017','femenino','','','',''),(15,'Divier','Reistad','Reistad','1952-06-29',57,1.6,'10027','femenino','','','',''),(16,'Domenick','Tempesti','Tempesti','1963-07-11',62,1.72,'10028','masculino','','','',''),(17,'Duangkaew','Piveteau','Piveteau','1958-07-14',92,1.71,'10010','femenino','','','',''),(18,'Ebbe','Callaway','Callaway','1954-05-30',91,1.96,'10057','femenino','','','',''),(19,'Eberhardt','Terkki','Terkki','1956-11-14',81,1.64,'10013','masculino','','','',''),(20,'Elvis','Demeyer','Demeyer','1958-05-21',93,1.64,'10030','masculino','','','',''),(21,'Florian','Syrotiuk','Syrotiuk','1963-07-11',76,1.58,'10048','masculino','','','',''),(22,'Georgi','Facello','Facello','1960-02-20',93,1.99,'10001','masculino','','','',''),(23,'Georgy','Dredge','Dredge','1956-06-06',97,1.61,'10055','masculino','','','',''),(24,'Guoxiang','Nooteboom','Nooteboom','1953-02-08',60,1.55,'10015','masculino','','','',''),(25,'Heping','Nitsch','Nitsch','1961-02-26',85,1.59,'10052','masculino','','','',''),(26,'Hidefumi','Caine','Caine','1953-07-28',54,1.84,'10051','masculino','','','',''),(27,'Huan','Lortz','Lortz','1954-10-01',97,1.88,'10038','masculino','','','',''),(28,'Jeong','Reistad','Reistad','1961-02-26',84,1.6,'10032','femenino','','','',''),(29,'Karsten','Joslin','Joslin','1953-07-28',95,1.52,'10031','masculino','','','',''),(30,'Kazuhide','Peha','Peha','1960-07-20',88,1.51,'10018','femenino','','','',''),(31,'Kazuhito','Cappelletti','Cappelletti','1959-08-10',97,1.71,'10016','masculino','','','',''),(32,'Kyoichi','Maliniak','Maliniak','1958-10-31',86,1.89,'10005','masculino','','','',''),(33,'Lillian','Haddadi','Haddadi','1959-10-01',85,1.61,'10019','masculino','','','',''),(34,'Lucien','Rosenbaum','Rosenbaum','1960-07-23',85,1.53,'10046','masculino','','','',''),(35,'Magy','Stamatiou','Stamatiou','1956-02-26',69,1.91,'10042','femenino','','','',''),(36,'Mary','Sluis','Sluis','1959-01-27',96,1.96,'10011','femenino','','','',''),(37,'Mayuko','Warwick','Warwick','1959-09-13',96,1.78,'10020','masculino','','','',''),(38,'Mayumi','Schueller','Schueller','1957-04-04',75,1.72,'10054','masculino','','','',''),(39,'Mingsen','Casley','Casley','1961-09-21',90,1.8,'10044','femenino','','','',''),(40,'Moss','Shanbhogue','Shanbhogue','1957-08-14',90,1.97,'10045','masculino','','','',''),(41,'Otmar','Herbst','Herbst','1961-04-24',77,1.6,'10029','masculino','','','',''),(42,'Parto','Bamford','Bamford','1953-09-29',62,1.88,'10003','masculino','','','',''),(43,'Patricio','Bridgland','Bridgland','1960-08-09',63,1.9,'10012','masculino','','','',''),(44,'Pradeep','Makrucki','Makrucki','1954-05-30',60,1.75,'10037','masculino','','','',''),(45,'Prasadram','Heyers','Heyers','1957-08-14',91,1.95,'10025','masculino','','','',''),(46,'Ramzi','Erde','Erde','1959-08-27',91,1.61,'10021','masculino','','','',''),(47,'Saniya','Kalloufi','Kalloufi','1963-11-26',78,1.82,'10008','masculino','','','',''),(48,'Sanjiv','Zschoche','Zschoche','1954-09-13',52,1.53,'10053','femenino','','','',''),(49,'Shahaf','Famili','Famili','1956-02-26',70,1.81,'10022','masculino','','','',''),(50,'Sumant','Peac','Peac','1956-12-13',85,1.64,'10009','femenino','','','',''),(51,'Suzette','Pettey','Pettey','1961-09-21',79,1.74,'10024','femenino','','','',''),(52,'Tzvetan','Zielinski','Zielinski','1962-07-10',56,1.77,'10007','femenino','','','',''),(53,'Uri','Lenart','Lenart','1959-08-27',80,1.9,'10041','femenino','','','',''),(54,'Weiyi','Meriste','Meriste','1959-09-13',97,1.84,'10040','femenino','','','',''),(55,'Yinghua','Dredge','Dredge','1958-05-21',78,1.54,'10050','masculino','','','',''),(56,'Yishay','Tzvieli','Tzvieli','1960-09-19',65,1.95,'10043','masculino','','','',''),(57,'Yongqiao','Berztiss','Berztiss','1960-07-23',75,1.91,'10026','masculino','','','',''),(58,'Zvonko','Nyanchama','Nyanchama','1952-06-29',78,1.65,'10047','masculino','','','','');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_pacientes`
--

DROP TABLE IF EXISTS `registro_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_pacientes` (
  `registro_paciente_id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int NOT NULL,
  `cuenta_paciente_id` int NOT NULL,
  `registrado_por` int NOT NULL,
  `fecha_admision` datetime NOT NULL,
  `condicion_medica` varchar(120) NOT NULL,
  `otros` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`registro_paciente_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `registrado_por` (`registrado_por`),
  KEY `cuenta_paciente_id` (`cuenta_paciente_id`),
  CONSTRAINT `registro_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `registro_pacientes_ibfk_2` FOREIGN KEY (`registrado_por`) REFERENCES `empleados` (`empleado_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `registro_pacientes_ibfk_3` FOREIGN KEY (`cuenta_paciente_id`) REFERENCES `cuentas_pacientes` (`cuenta_paciente_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_pacientes`
--

LOCK TABLES `registro_pacientes` WRITE;
/*!40000 ALTER TABLE `registro_pacientes` DISABLE KEYS */;
INSERT INTO `registro_pacientes` VALUES (1,22,1,1,'2017-04-08 00:00:00','Abdominal Aortic Aneurysm',NULL),(2,10,2,2,'2017-04-09 00:00:00','Abdominal Cramps (Heat Cramps)',NULL),(3,42,3,3,'2017-04-10 00:00:00','Abdominal Hernia (Hernia Overview)',NULL),(4,13,4,4,'2017-04-12 00:00:00','Bacterial Vaginosis (Causes, Symptoms, Treatment)',NULL),(5,32,5,5,'2017-04-12 00:00:00','Bad Breath',NULL),(6,4,6,6,'2017-04-14 00:00:00','Bad Cholesterol Test (Cholesterol Test)',NULL),(7,52,7,7,'2017-04-15 00:00:00','Baker Cyst',NULL),(8,47,8,8,'2017-04-15 00:00:00','Farting (Intestinal Gas (Belching, Bloating, Flatulence))',NULL),(9,50,9,9,'2017-04-16 00:00:00','Fast Heart Beat (Palpitations Overview)',NULL),(10,17,10,10,'2017-04-17 00:00:00','Fatigue',NULL),(11,36,11,11,'2017-04-18 00:00:00','Fatigue From Cancer (Cancer Fatigue',NULL),(12,43,12,12,'2017-04-19 00:00:00','Lambliasis (Giardia Lamblia)',NULL),(13,19,13,13,'2017-04-20 00:00:00','Lambliosis (Giardia Lamblia)',NULL),(14,9,14,14,'2017-04-22 00:00:00','Landau-Kleffner Syndrome',NULL),(15,24,15,15,'2017-04-22 00:00:00','Lap Band Surgery (Gastric Banding)',NULL),(16,31,16,16,'2017-04-24 00:00:00','Laparoscopic Liver Biopsy (Liver Biopsy)',NULL),(17,14,17,17,'2017-04-24 00:00:00','Omega-3 Fatty Acids',NULL),(18,30,18,18,'2017-04-25 00:00:00','Onchocerciasis',NULL),(19,33,19,19,'2017-04-27 00:00:00','Onychocryptosis (Ingrown Toenail)',NULL),(20,37,20,20,'2017-04-28 00:00:00','Scarlatina)',NULL),(21,46,21,21,'2017-04-28 00:00:00','Scars',NULL),(22,49,22,22,'2017-04-30 00:00:00','Schatzki Ring',NULL),(23,11,23,23,'2017-05-01 00:00:00','Scheuermann\'s Kyphosis (Kyphosis)',NULL),(24,51,24,24,'2017-05-01 00:00:00','Schistosoma guineensis (Schistosomiasis)',NULL),(25,45,25,25,'2017-05-02 00:00:00','Schistosoma haematobium (Schistosomiasis)',NULL),(26,57,26,26,'2017-05-04 00:00:00','Schistosoma japonicum (Schistosomiasis)',NULL),(27,15,27,27,'2017-05-04 00:00:00','Tachycardia (Heart Rhythm Disorders)',NULL),(28,16,28,28,'2017-05-06 00:00:00','Tachycardia, Paroxysmal Atrial (Paroxysmal Supraventricular Tachycardia (PSVT))',NULL),(29,41,29,29,'2017-05-07 00:00:00','Tachycardia, Paroxysmal Supraventricular (Paroxysmal Supraventricular Tachycardia (PSVT))',NULL),(30,20,30,30,'2017-05-07 00:00:00','Tailbone Pain (Coccydynia)',NULL),(31,29,31,1,'2017-05-09 00:00:00','Tailor\'s Bunion (Bunions)',NULL),(32,28,32,2,'2017-05-10 00:00:00','Takayasu Arteritis (Takayasu Disease)',NULL),(33,5,33,3,'2017-05-10 00:00:00','Takayasu Disease',NULL),(34,6,34,4,'2017-05-11 00:00:00','Taking Dental Medications',NULL),(35,2,35,5,'2017-05-13 00:00:00','Tarry Stools (Stool Color Changes)',NULL),(36,1,36,6,'2017-05-14 00:00:00','Abdominal Aortic Aneurysm',NULL),(37,44,37,7,'2017-05-14 00:00:00','Abdominal Cramps (Heat Cramps)',NULL),(38,27,38,8,'2017-05-15 00:00:00','Abdominal Hernia (Hernia Overview)',NULL),(39,3,39,9,'2017-05-16 00:00:00','Bacterial Vaginosis (Causes, Symptoms, Treatment)',NULL),(40,54,40,10,'2017-05-18 00:00:00','Bad Breath',NULL),(41,53,41,11,'2017-05-18 00:00:00','Bad Cholesterol Test (Cholesterol Test)',NULL),(42,35,42,12,'2017-05-20 00:00:00','Baker Cyst',NULL),(43,56,43,13,'2017-05-21 00:00:00','Farting (Intestinal Gas (Belching, Bloating, Flatulence))',NULL),(44,39,44,14,'2017-05-22 00:00:00','Fast Heart Beat (Palpitations Overview)',NULL),(45,40,45,15,'2017-05-23 00:00:00','Fatigue',NULL),(46,34,46,16,'2017-05-23 00:00:00','Fatigue From Cancer (Cancer Fatigue',NULL),(47,58,47,17,'2017-05-25 00:00:00','Lambliasis (Giardia Lamblia)',NULL),(48,21,48,18,'2017-05-25 00:00:00','Lambliosis (Giardia Lamblia)',NULL),(49,7,49,19,'2017-05-27 00:00:00','Landau-Kleffner Syndrome',NULL),(50,55,50,20,'2017-05-28 00:00:00','Lap Band Surgery (Gastric Banding)',NULL),(51,26,51,21,'2017-05-29 00:00:00','Laparoscopic Liver Biopsy (Liver Biopsy)',NULL),(52,25,52,22,'2017-05-29 00:00:00','Omega-3 Fatty Acids',NULL),(53,48,53,23,'2017-05-31 00:00:00','Onchocerciasis',NULL),(54,38,54,24,'2017-05-31 00:00:00','Onychocryptosis (Ingrown Toenail)',NULL),(55,23,55,25,'2017-06-01 00:00:00','Scarlatina)',NULL),(56,12,56,26,'2017-06-02 00:00:00','Scars',NULL),(57,18,57,27,'2017-06-04 00:00:00','Schatzki Ring',NULL),(58,8,58,28,'2017-06-05 00:00:00','Scheuermann\'s Kyphosis (Kyphosis)',NULL);
/*!40000 ALTER TABLE `registro_pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-04 23:16:40
