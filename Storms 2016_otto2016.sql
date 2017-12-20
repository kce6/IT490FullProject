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
-- Table structure for table `otto2016`
--

DROP TABLE IF EXISTS `otto2016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otto2016` (
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
-- Dumping data for table `otto2016`
--

LOCK TABLES `otto2016` WRITE;
/*!40000 ALTER TABLE `otto2016` DISABLE KEYS */;
INSERT INTO `otto2016` VALUES (1,11.5,-79.4,'11/21/09Z',30,1002,'TROPICAL DEPRESSION'),(2,11.5,-79.3,'11/21/15Z',30,1002,'TROPICAL DEPRESSION'),(3,11.5,-79.3,'11/21/18Z',45,1000,'TROPICAL STORM'),(4,11.3,-79.2,'11/21/21Z',45,1000,'TROPICAL STORM'),(5,10.9,-79.1,'11/22/03Z',50,998,'TROPICAL STORM'),(6,10.7,-79,'11/22/09Z',50,998,'TROPICAL STORM'),(7,10.4,-79.2,'11/22/15Z',60,986,'TROPICAL STORM'),(8,10.5,-79.6,'11/22/21Z',65,984,'HURRICANE-1'),(9,10.7,-79.8,'11/23/03Z',65,988,'HURRICANE-1'),(10,10.9,-80.4,'11/23/09Z',65,988,'HURRICANE-1'),(11,11.1,-80.7,'11/23/15Z',60,994,'TROPICAL STORM'),(12,11.2,-81.3,'11/23/21Z',60,994,'TROPICAL STORM'),(13,11.2,-82.2,'11/24/03Z',75,981,'HURRICANE-1'),(14,11.2,-82.9,'11/24/09Z',75,981,'HURRICANE-1'),(15,11,-83.4,'11/24/15Z',95,975,'HURRICANE-2'),(16,11,-84.3,'11/24/21Z',85,979,'HURRICANE-2'),(17,10.9,-85.6,'11/25/03Z',60,990,'TROPICAL STORM');
/*!40000 ALTER TABLE `otto2016` ENABLE KEYS */;
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