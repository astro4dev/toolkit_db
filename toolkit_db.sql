-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: dbint.astro4dev.org    Database: toolkit_db
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `assessments`
--

DROP TABLE IF EXISTS `assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assessments` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) DEFAULT NULL,
  `links` varchar(512) DEFAULT NULL,
  `language` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessments`
--

LOCK TABLES `assessments` WRITE;
/*!40000 ALTER TABLE `assessments` DISABLE KEYS */;
INSERT INTO `assessments` VALUES (1,'2017-05-23 08:59:39','Python Assessment','https://github.com/astro4dev/OAD-Data-Science-Toolkit/tree/master/Teaching%20Materials/Programming/Python/Assessments','EN');
/*!40000 ALTER TABLE `assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `affiliation` varchar(255) DEFAULT NULL,
  `author_link` varchar(512) DEFAULT NULL,
  `author_img` varchar(512) DEFAULT NULL,
  `about` varchar(4096) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Dr. Rob Lyon','University of Manchester, UK','https://github.com/scienceguyrob','',NULL,NULL),(2,'Dr. Paul A. Wilson','OAD, South Africa','https://www.paulanthonywilson.com','http://www.astro4dev.org/wp-content/uploads/2011/02/paul_anthony_wilson.jpg','<p>\r\nPaul is a visiting fellow who is leading the development of the OAD Data Science Toolkit aimed at teaching data science with astronomy. He is a professional astronomer by training, having obtained his PhD in astronomy from the University of Exeter. Paul has done research in several fields including exoplanet atmospheres, brown dwarfs, debris disks and exocomets. At the OAD Paul is developing this toolkit, aimed at helping astronomers identify and learn skills within astronomy that also comprise important data science skills. Paul is also working on providing people outside of astronomy with teaching materials which use astronomy applications to introduce data science skills.\r\n</p>','paul@astro4dev.org'),(3,'Dr. Arun Aniyan','AIMS, South Africa','https://github.com/ArunAniyan','https://avatars3.githubusercontent.com/u/5010454?v=4&s=460','<p>Arun is a machine learning researcher who focuses on using the latest advancements in machine learning for radio interferometric data. Arun collaborates with the Square Kilometre Array (SKA) office in Cape Town to build sophisticated machine learning algorithms  to make new discoveries from large amounts of data.</p>\r\n',NULL),(4,'Dr. Anna Scaife','University of Manchester, UK','http://www.manchester.ac.uk/research/anna.scaife/','',NULL,NULL),(5,'Dr. Vanessa McBride','OAD, South Africa','http://www.ast.uct.ac.za/~vanessa/vanessa/Home.html','http://www.ast.uct.ac.za/~vanessa/vanessa/Home_files/vanessa_meerlichtdome.jpg','<p>Vanessa is an astronomer working at the <a href=\"http://www.iau.org\" target=\"_blank\">IAU</a>\'s <a href=\"http://www.astro4dev.org\" target=\"_blank\">Office of Astronomy for Development</a> at the interface between the astronomy and the development community. She is available to assist with project conceptualisation, design and assessment.\r\n</p>\r\n<p>\r\nVanessa\'s astronomy research interests lie in the field of massive X-ray binaries. She has an honorary research associateship at the <a href=\"http://www.uct.ac.za\" target=\"_blank\">University of Cape Town</a>, in the <a href=\"http://www.ast.uct.ac.za\" target=\"_blank\">Department of Astronomy</a>.\r\n</p>',NULL),(6,'Dr. Shea Brown','University of Iowa, USA','http://astro.physics.uiowa.edu/~sbrown/','http://astro.physics.uiowa.edu/~sbrown/shea_tie.png','<p>Shea is currently a Visiting Assistant Professor at the University of Iowa Department of Physics and Astronomy. Prior to coming to Iowa, he was a Bolton Postdoctoral Fellow at CSIRO Astronomy & Space Science, and his interests are Cosmology and Extragalactic astrophysics. Shea works mainly as a radio astronomer, using powerful telescopes such as the Australia Telescope Compact Array, the Very Large Array, the Greenbank Telescope, and the Westerbork Synthesis Radio Telescope array</p>',NULL),(7,'Dr. Sean February','CHPC, South Africa','https://www.chpc.ac.za/','https://www.chpc.ac.za/images/images/staff/SeanFebruary.jpg',NULL,NULL),(8,'Dr. Pierre-Yves Lablanche','AIMS, South Africa','https://github.com/pylablanche','http://www.astro4dev.org/wp-content/uploads/2011/06/20151002-PP-Pierre-Yves-Lablanche-001_small.jpg','<p>Pierre is currently a post-doctoral fellow at the African Institute for Mathematical Sciences working on machine learning techniques for astronomy and astrophysics. He used to be a scientific educator for an astronomy club in France for several years and has always been involved in public engagement activities for science everywhere Pierre has been, from France and Germany to Tanzania and South Africa. Lately he has been focusing on how to make astronomy available to people with any kind of disability.</p>',NULL),(9,'Dr. Jake Vanderplas','University of Washington, USA','https://staff.washington.edu/jakevdp/','https://avatars2.githubusercontent.com/u/781659?v=4&s=460','<p>Jake is a Senior Data Science Fellow at the University of\r\nWashington\'s <a href=\"http://escience.washington.edu/\" target=\"_blank\">eScience institute</a>.\r\nHe researches and teaches in a variety of areas, including Astronomy, Astrostatistics, Machine Learning, and Scalable Computation.</p>',NULL);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors__assessments`
--

DROP TABLE IF EXISTS `authors__assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors__assessments` (
  `author_id` int(11) NOT NULL DEFAULT '0',
  `assessment_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`author_id`,`assessment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors__assessments`
--

LOCK TABLES `authors__assessments` WRITE;
/*!40000 ALTER TABLE `authors__assessments` DISABLE KEYS */;
INSERT INTO `authors__assessments` VALUES (2,1);
/*!40000 ALTER TABLE `authors__assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors__courses`
--

DROP TABLE IF EXISTS `authors__courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors__courses` (
  `author_id` int(11) NOT NULL DEFAULT '0',
  `course_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`author_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors__courses`
--

LOCK TABLES `authors__courses` WRITE;
/*!40000 ALTER TABLE `authors__courses` DISABLE KEYS */;
INSERT INTO `authors__courses` VALUES (2,1),(2,3),(6,2),(9,4);
/*!40000 ALTER TABLE `authors__courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors__examples`
--

DROP TABLE IF EXISTS `authors__examples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors__examples` (
  `author_id` int(11) NOT NULL DEFAULT '0',
  `example_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`author_id`,`example_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors__examples`
--

LOCK TABLES `authors__examples` WRITE;
/*!40000 ALTER TABLE `authors__examples` DISABLE KEYS */;
INSERT INTO `authors__examples` VALUES (1,1),(3,3),(5,4),(8,2);
/*!40000 ALTER TABLE `authors__examples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) DEFAULT NULL,
  `links` varchar(512) DEFAULT NULL,
  `language` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'2017-05-23 08:54:57','An Introduction to SQL','https://github.com/astro4dev/OAD-Data-Science-Toolkit/tree/master/Teaching%20Materials/Data%20Wrangling/Courses/An%20Introduction%20to%20SQL','EN'),(2,'2017-05-23 08:54:57','Astrophysical Machine Learning','https://github.com/astro4dev/OAD-Data-Science-Toolkit/tree/master/Teaching%20Materials/Machine%20Learning/Supervised%20Learning/Courses/Astrophysical%20Machine%20Learning','EN'),(3,'2017-05-23 08:55:37','Introduction to Python','https://github.com/astro4dev/OAD-Data-Science-Toolkit/tree/master/Teaching%20Materials/Programming/Python','EN'),(4,'2017-05-31 08:24:53','Scikit-learn Tutorial','https://github.com/astro4dev/OAD-Data-Science-Toolkit/tree/master/Teaching%20Materials/Machine%20Learning/Supervised%20Learning/Courses/sklearn_tutorial','EN');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examples`
--

DROP TABLE IF EXISTS `examples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examples` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) DEFAULT NULL,
  `links` varchar(512) DEFAULT NULL,
  `language` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examples`
--

LOCK TABLES `examples` WRITE;
/*!40000 ALTER TABLE `examples` DISABLE KEYS */;
INSERT INTO `examples` VALUES (1,'2017-05-23 14:27:13','Predicting Pulsar Candidates','https://github.com/astro4dev/OAD-Data-Science-Toolkit/tree/master/Teaching%20Materials/Machine%20Learning/Supervised%20Learning/Examples','EN'),(2,'2017-05-23 08:52:58','Gaussian Mixture Model for Unsupervised Galaxy Classification','https://github.com/astro4dev/OAD-Data-Science-Toolkit/tree/master/Teaching%20Materials/Machine%20Learning/Unsupervised%20Learning/Examples','EN'),(3,'2017-05-23 08:53:25','Simple Neural Network','https://github.com/astro4dev/OAD-Data-Science-Toolkit/tree/master/Teaching%20Materials/Machine%20Learning/Supervised%20Learning/Examples','EN'),(4,'2017-05-23 08:53:25','Exoplanet properties','https://github.com/astro4dev/OAD-Data-Science-Toolkit/blob/master/Teaching%20Materials/Data%20Wrangling/Examples/Exoplanets_sort_and_plot/Exoplanets_sort_and_plot.ipynb','EN');
/*!40000 ALTER TABLE `examples` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'2017-05-19 12:53:40','Data Wrangling'),(2,'2017-05-19 12:53:40','Python'),(4,'2017-05-19 12:53:40','Machine Learning'),(5,'2017-05-19 12:53:40','R'),(6,'2017-05-19 12:53:40','More topics coming...');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills__assessments`
--

DROP TABLE IF EXISTS `skills__assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills__assessments` (
  `skill_id` int(11) NOT NULL DEFAULT '0',
  `assessment_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`skill_id`,`assessment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills__assessments`
--

LOCK TABLES `skills__assessments` WRITE;
/*!40000 ALTER TABLE `skills__assessments` DISABLE KEYS */;
INSERT INTO `skills__assessments` VALUES (2,1);
/*!40000 ALTER TABLE `skills__assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills__courses`
--

DROP TABLE IF EXISTS `skills__courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills__courses` (
  `skill_id` int(11) NOT NULL DEFAULT '0',
  `course_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`skill_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills__courses`
--

LOCK TABLES `skills__courses` WRITE;
/*!40000 ALTER TABLE `skills__courses` DISABLE KEYS */;
INSERT INTO `skills__courses` VALUES (1,1),(2,2),(2,3),(2,4),(4,2),(4,4);
/*!40000 ALTER TABLE `skills__courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills__examples`
--

DROP TABLE IF EXISTS `skills__examples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills__examples` (
  `skill_id` int(11) NOT NULL DEFAULT '0',
  `example_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`skill_id`,`example_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills__examples`
--

LOCK TABLES `skills__examples` WRITE;
/*!40000 ALTER TABLE `skills__examples` DISABLE KEYS */;
INSERT INTO `skills__examples` VALUES (1,4),(2,1),(2,2),(2,3),(4,1),(4,2),(4,3),(5,4);
/*!40000 ALTER TABLE `skills__examples` ENABLE KEYS */;
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
INSERT INTO `subtopics_astr` VALUES (1,'2017-05-19 12:53:40','Pulsars'),(2,'2017-05-19 12:53:40','Galaxy Morphology');
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
  `topics_astr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics_astr`
--

LOCK TABLES `topics_astr` WRITE;
/*!40000 ALTER TABLE `topics_astr` DISABLE KEYS */;
INSERT INTO `topics_astr` VALUES (1,'Galaxies'),(5,'Solar & Stellar'),(6,'Planetary science'),(7,'no_topic');
/*!40000 ALTER TABLE `topics_astr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics_astr__assessments`
--

DROP TABLE IF EXISTS `topics_astr__assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics_astr__assessments` (
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `assessment_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`assessment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics_astr__assessments`
--

LOCK TABLES `topics_astr__assessments` WRITE;
/*!40000 ALTER TABLE `topics_astr__assessments` DISABLE KEYS */;
INSERT INTO `topics_astr__assessments` VALUES (7,1);
/*!40000 ALTER TABLE `topics_astr__assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics_astr__courses`
--

DROP TABLE IF EXISTS `topics_astr__courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics_astr__courses` (
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `course_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics_astr__courses`
--

LOCK TABLES `topics_astr__courses` WRITE;
/*!40000 ALTER TABLE `topics_astr__courses` DISABLE KEYS */;
INSERT INTO `topics_astr__courses` VALUES (1,2),(2,2),(3,2),(7,1),(7,3),(7,4);
/*!40000 ALTER TABLE `topics_astr__courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics_astr__examples`
--

DROP TABLE IF EXISTS `topics_astr__examples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics_astr__examples` (
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `example_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`example_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics_astr__examples`
--

LOCK TABLES `topics_astr__examples` WRITE;
/*!40000 ALTER TABLE `topics_astr__examples` DISABLE KEYS */;
INSERT INTO `topics_astr__examples` VALUES (1,2),(5,1),(6,4),(7,3);
/*!40000 ALTER TABLE `topics_astr__examples` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-04 17:16:41
