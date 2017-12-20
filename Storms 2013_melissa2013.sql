-- MySQL dump 10.13  Distrib 5.7.19, for Linux (i686)
--
-- Host: localhost    Database: Storms 2013
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
-- Table structure for table `melissa2013`
--

DROP TABLE IF EXISTS `melissa2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `melissa2013` (
  `ADV` int(11) DEFAULT NULL,
  `LAT` double DEFAULT NULL,
  `LON` double DEFAULT NULL,
  `TIME` text,
  `WIND` int(11) DEFAULT NULL,
  `PR` int(11) DEFAULT NULL,
  `STAT` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `melissa2013`
--

LOCK TABLES `melissa2013` WRITE;
/*!40000 ALTER TABLE `melissa2013` DISABLE KEYS */;
INSERT INTO `melissa2013` VALUES (1,29.3,-53.6,'11/18/15Z',45,987,'SUBTROPICAL STORM'),(2,29.8,-54.2,'11/18/21Z',50,987,'SUBTROPICAL STORM'),(3,30.3,-54.7,'11/19/03Z',50,985,'SUBTROPICAL STORM'),(4,31.2,-54.6,'11/19/09Z',55,982,'SUBTROPICAL STORM'),(5,31.9,-54.6,'11/19/15Z',55,982,'SUBTROPICAL STORM'),(6,33,-53.7,'11/19/21Z',55,982,'SUBTROPICAL STORM'),(7,33.6,-52.4,'11/20/03Z',45,988,'SUBTROPICAL STORM'),(8,34.8,-50.2,'11/20/09Z',45,988,'SUBTROPICAL STORM'),(9,35.6,-47.7,'11/20/15Z',50,988,'TROPICAL STORM'),(10,37.2,-44.9,'11/20/21Z',45,988,'TROPICAL STORM'),(11,38.1,-42.1,'11/21/03Z',45,984,'TROPICAL STORM'),(12,39.1,-38.5,'11/21/09Z',45,984,'TROPICAL STORM'),(13,40,-34.8,'11/21/15Z',45,984,'TROPICAL STORM'),(14,40.9,-32.1,'11/21/21Z',55,980,'TROPICAL STORM');
/*!40000 ALTER TABLE `melissa2013` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-10 23:10:38