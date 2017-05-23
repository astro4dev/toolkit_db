-- MySQL dump 10.13  Distrib 5.5.55, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: toolkit_db
-- ------------------------------------------------------
-- Server version	5.5.55-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `skills` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'2017-05-11 12:33:21','Data Wrangling'),(2,'2017-05-11 12:33:21','Python'),(3,'2017-05-11 12:33:21','R'),(4,'2017-05-11 12:33:21','Machine Learning');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subtopics_astr`
--

DROP TABLE IF EXISTS `subtopics_astr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subtopics_astr` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subtopics_astr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subtopics_astr`
--

LOCK TABLES `subtopics_astr` WRITE;
/*!40000 ALTER TABLE `subtopics_astr` DISABLE KEYS */;
INSERT INTO `subtopics_astr` VALUES (1,'2017-05-11 12:33:21','Pulsars'),(2,'2017-05-11 12:33:21','Galaxy Morphology');
/*!40000 ALTER TABLE `subtopics_astr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics_astr`
--

DROP TABLE IF EXISTS `topics_astr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics_astr` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `topics_astr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics_astr`
--

LOCK TABLES `topics_astr` WRITE;
/*!40000 ALTER TABLE `topics_astr` DISABLE KEYS */;
INSERT INTO `topics_astr` VALUES (1,'2017-05-11 12:33:21','Galaxies'),(2,'2017-05-11 12:33:21','Cosmology'),(3,'2017-05-11 12:33:21','Planetary'),(4,'2017-05-11 12:33:21','High Energy'),(5,'2017-05-11 12:33:21','Solar & Stellar');
/*!40000 ALTER TABLE `topics_astr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-11 15:57:54
