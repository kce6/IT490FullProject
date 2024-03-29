-- MySQL dump 10.13  Distrib 5.7.19, for Linux (i686)
--
-- Host: localhost    Database: Storms 2015
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
-- Table structure for table `ana2015`
--

DROP TABLE IF EXISTS `ana2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ana2015` (
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
-- Dumping data for table `ana2015`
--

LOCK TABLES `ana2015` WRITE;
/*!40000 ALTER TABLE `ana2015` DISABLE KEYS */;
INSERT INTO `ana2015` VALUES (1,31.5,-77.6,'05/08/00Z',40,1004,'SUBTROPICAL STORM'),(2,31.6,-77.8,'05/08/06Z',40,1004,'SUBTROPICAL STORM'),(3,31.5,-77.3,'05/08/12Z',40,1001,'SUBTROPICAL STORM'),(4,31.7,-77.4,'05/08/18Z',40,1001,'SUBTROPICAL STORM'),(5,32.1,-77.4,'05/09/00Z',50,998,'SUBTROPICAL STORM'),(6,32.4,-77.6,'05/09/06Z',50,998,'TROPICAL STORM'),(7,32.7,-77.9,'05/09/12Z',50,1001,'TROPICAL STORM'),(8,32.9,-78.3,'05/09/18Z',50,1001,'TROPICAL STORM'),(9,33.2,-78.3,'05/10/00Z',50,1000,'TROPICAL STORM'),(10,33.8,-78.7,'05/10/06Z',40,1002,'TROPICAL STORM'),(11,34.1,-78.9,'05/10/12Z',35,1004,'TROPICAL STORM'),(12,34.4,-78.6,'05/10/18Z',30,1007,'TROPICAL DEPRESSION'),(13,35.1,-78.2,'05/11/00Z',25,1010,'TROPICAL DEPRESSION'),(14,35.5,-78.4,'05/11/06Z',15,1012,'TROPICAL DEPRESSION'),(15,36,-76.8,'05/11/12Z',25,1014,'TROPICAL DEPRESSION'),(16,37.3,-75.9,'05/11/18Z',25,1012,'TROPICAL DEPRESSION');
/*!40000 ALTER TABLE `ana2015` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-10 23:10:40
