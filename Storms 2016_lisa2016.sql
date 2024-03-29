-- MySQL dump 10.13  Distrib 5.7.19, for Linux (i686)
--
-- Host: localhost    Database: Storms 2016
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
-- Table structure for table `lisa2016`
--

DROP TABLE IF EXISTS `lisa2016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lisa2016` (
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
-- Dumping data for table `lisa2016`
--

LOCK TABLES `lisa2016` WRITE;
/*!40000 ALTER TABLE `lisa2016` DISABLE KEYS */;
INSERT INTO `lisa2016` VALUES (1,13.6,-28.6,'09/19/21Z',30,1007,'TROPICAL DEPRESSION'),(2,14.2,-29,'09/20/03Z',30,1007,'TROPICAL DEPRESSION'),(3,14.4,-29.6,'09/20/09Z',30,1007,'TROPICAL DEPRESSION'),(4,15.3,-30.4,'09/20/15Z',35,1007,'TROPICAL STORM'),(5,16.4,-31,'09/20/21Z',40,1004,'TROPICAL STORM'),(6,17.1,-31.7,'09/21/03Z',40,1004,'TROPICAL STORM'),(7,17.5,-32.2,'09/21/09Z',45,1002,'TROPICAL STORM'),(8,18,-32.5,'09/21/15Z',45,1002,'TROPICAL STORM'),(9,18.5,-32.5,'09/21/21Z',40,1004,'TROPICAL STORM'),(10,19.2,-32.8,'09/22/03Z',40,1004,'TROPICAL STORM'),(11,19.9,-34,'09/22/09Z',40,1004,'TROPICAL STORM'),(12,20,-34,'09/22/15Z',45,999,'TROPICAL STORM'),(13,20.7,-34.5,'09/22/21Z',45,999,'TROPICAL STORM'),(14,21.3,-35.2,'09/23/03Z',40,1003,'TROPICAL STORM'),(15,21.8,-35.7,'09/23/09Z',35,1008,'TROPICAL STORM'),(16,22.2,-36.3,'09/23/15Z',35,1008,'TROPICAL STORM'),(17,22.5,-36.5,'09/23/21Z',30,1009,'TROPICAL DEPRESSION'),(18,23.2,-37.3,'09/24/03Z',30,1009,'TROPICAL DEPRESSION'),(19,23.8,-37.9,'09/24/09Z',30,1010,'TROPICAL DEPRESSION'),(20,24.7,-38.8,'09/24/15Z',35,1008,'TROPICAL STORM');
/*!40000 ALTER TABLE `lisa2016` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-10 23:10:41
