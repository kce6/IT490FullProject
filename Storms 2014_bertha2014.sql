-- MySQL dump 10.13  Distrib 5.7.19, for Linux (i686)
--
-- Host: localhost    Database: Storms 2014
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
-- Table structure for table `bertha2014`
--

DROP TABLE IF EXISTS `bertha2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bertha2014` (
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
-- Dumping data for table `bertha2014`
--

LOCK TABLES `bertha2014` WRITE;
/*!40000 ALTER TABLE `bertha2014` DISABLE KEYS */;
INSERT INTO `bertha2014` VALUES (1,9.6,-37.1,'07/29/06Z',25,1013,'LOW'),(2,9.5,-38.6,'07/29/12Z',30,1012,'LOW'),(3,9.5,-40.1,'07/29/18Z',30,1012,'LOW'),(4,9.6,-41.5,'07/30/00Z',30,1012,'LOW'),(5,9.7,-43,'07/30/06Z',30,1012,'LOW'),(6,9.8,-44.7,'07/30/12Z',30,1012,'LOW'),(7,10,-46.4,'07/30/18Z',30,1011,'LOW'),(8,10.4,-48,'07/31/00Z',35,1010,'LOW'),(9,10.7,-49.7,'07/31/06Z',35,1009,'LOW'),(10,11,-51.4,'07/31/12Z',40,1008,'LOW'),(11,11.5,-53.1,'07/31/18Z',40,1007,'LOW'),(12,12.2,-54.6,'08/01/00Z',40,1007,'TROPICAL STORM'),(13,13,-56.2,'08/01/06Z',40,1007,'TROPICAL STORM'),(14,13.8,-58.1,'08/01/12Z',45,1006,'TROPICAL STORM'),(15,14.5,-60.3,'08/01/18Z',45,1006,'TROPICAL STORM'),(16,15.2,-62.3,'08/02/00Z',45,1007,'TROPICAL STORM'),(17,15.9,-64.1,'08/02/06Z',40,1008,'TROPICAL STORM'),(18,16.7,-65.9,'08/02/12Z',40,1009,'TROPICAL STORM'),(19,17.9,-67.6,'08/02/18Z',40,1010,'TROPICAL STORM'),(20,19.2,-69,'08/03/00Z',40,1011,'TROPICAL STORM'),(21,20.3,-70.4,'08/03/06Z',40,1012,'TROPICAL STORM'),(22,21.4,-71.6,'08/03/12Z',40,1013,'TROPICAL STORM'),(23,21.8,-71.9,'08/03/14Z',40,1013,'TROPICAL STORM'),(24,22.7,-72.5,'08/03/18Z',45,1012,'TROPICAL STORM'),(25,24.1,-73.1,'08/04/00Z',55,1007,'TROPICAL STORM'),(26,25.4,-73.5,'08/04/06Z',60,1004,'TROPICAL STORM'),(27,26.8,-73.6,'08/04/12Z',70,998,'HURRICANE-1'),(28,28.5,-73.6,'08/04/18Z',70,999,'HURRICANE-1'),(29,30.5,-73.4,'08/05/00Z',65,1001,'HURRICANE-1'),(30,32.5,-73.2,'08/05/06Z',55,1003,'TROPICAL STORM'),(31,34.2,-72.7,'08/05/12Z',50,1005,'TROPICAL STORM'),(32,35.5,-71.2,'08/05/18Z',45,1006,'TROPICAL STORM'),(33,36.8,-69.3,'08/06/00Z',45,1007,'TROPICAL STORM'),(34,38.1,-66.9,'08/06/06Z',45,1007,'TROPICAL STORM'),(35,39.4,-64.1,'08/06/12Z',45,1006,'TROPICAL STORM'),(36,40.8,-61.3,'08/06/18Z',45,1002,'EXTRATROPICAL STORM'),(37,42.1,-58.4,'08/07/00Z',50,996,'EXTRATROPICAL STORM'),(38,43.4,-55.6,'08/07/06Z',45,998,'EXTRATROPICAL STORM'),(39,44.6,-52.5,'08/07/12Z',40,999,'EXTRATROPICAL STORM'),(40,46,-49.5,'08/07/18Z',40,1000,'EXTRATROPICAL STORM'),(41,47.4,-46.6,'08/08/00Z',35,1001,'EXTRATROPICAL STORM'),(42,47.9,-43,'08/08/06Z',35,1001,'EXTRATROPICAL STORM'),(43,47.5,-39.4,'08/08/12Z',35,1002,'EXTRATROPICAL STORM'),(44,46.9,-34.9,'08/08/18Z',35,1002,'EXTRATROPICAL STORM'),(45,47,-29,'08/09/00Z',35,1003,'EXTRATROPICAL STORM'),(46,47.1,-22,'08/09/06Z',35,1003,'EXTRATROPICAL STORM'),(47,47.5,-15,'08/09/12Z',35,1003,'EXTRATROPICAL STORM');
/*!40000 ALTER TABLE `bertha2014` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-10 23:10:39
