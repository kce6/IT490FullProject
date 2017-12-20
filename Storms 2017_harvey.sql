-- MySQL dump 10.13  Distrib 5.7.19, for Linux (i686)
--
-- Host: localhost    Database: Storms 2017
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
-- Table structure for table `harvey`
--

DROP TABLE IF EXISTS `harvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `harvey` (
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
-- Dumping data for table `harvey`
--

LOCK TABLES `harvey` WRITE;
/*!40000 ALTER TABLE `harvey` DISABLE KEYS */;
INSERT INTO `harvey` VALUES (2,13,-55.8,'08/17/18Z',35,1004,'TROPICAL STORM'),(3,13,-57.4,'08/18/00Z',35,1005,'TROPICAL STORM'),(4,13.1,-59.1,'08/18/06Z',35,1004,'TROPICAL STORM'),(5,13.1,-61.3,'08/18/12Z',35,1005,'TROPICAL STORM'),(6,13.4,-62.9,'08/18/18Z',35,1005,'TROPICAL STORM'),(7,13.7,-64.1,'08/19/00Z',35,1005,'TROPICAL STORM'),(8,13.8,-65.9,'08/19/06Z',35,1005,'TROPICAL STORM'),(9,13.9,-68.1,'08/19/12Z',35,1007,'TROPICAL STORM'),(10,14.1,-70,'08/19/18Z',30,1007,'TROPICAL DEPRESSION'),(12,21.5,-92.5,'08/23/12Z',30,1006,'TROPICAL DEPRESSION'),(13,21.6,-92.6,'08/23/18Z',30,1005,'TROPICAL DEPRESSION'),(14,21.9,-92.6,'08/24/00Z',30,1002,'TROPICAL DEPRESSION'),(15,23.2,-92.8,'08/24/06Z',40,995,'TROPICAL STORM'),(16,24,-93.3,'08/24/12Z',55,982,'TROPICAL STORM'),(17,24.4,-93.6,'08/24/18Z',75,979,'HURRICANE-1'),(18,24.7,-93.9,'08/24/18Z',75,976,'HURRICANE-1'),(19,25.2,-94.6,'08/25/00Z',75,973,'HURRICANE-1'),(20,25.9,-95.4,'08/25/06Z',90,967,'HURRICANE-2'),(21,26.7,-96,'08/25/12Z',95,947,'HURRICANE-2'),(22,27.5,-96.5,'08/25/18Z',110,941,'HURRICANE-3'),(23,28,-97,'08/26/00Z',115,938,'HURRICANE-4'),(24,28.5,-97.2,'08/26/06Z',85,963,'HURRICANE-2'),(25,28.9,-97.3,'08/26/12Z',65,984,'HURRICANE-1'),(26,29.1,-97.6,'08/26/18Z',55,990,'TROPICAL STORM'),(27,29.3,-97.3,'08/27/00Z',45,994,'TROPICAL STORM'),(28,29.2,-97.7,'08/27/06Z',40,998,'TROPICAL STORM'),(29,29,-97.4,'08/27/12Z',35,1000,'TROPICAL STORM'),(30,29,-97,'08/27/18Z',35,1000,'TROPICAL STORM'),(31,28.8,-96.6,'08/28/00Z',35,1000,'TROPICAL STORM'),(32,28.6,-96.3,'08/28/06Z',35,998,'TROPICAL STORM'),(33,28.5,-96,'08/28/12Z',35,997,'TROPICAL STORM'),(34,28.5,-95.7,'08/28/18Z',40,997,'TROPICAL STORM'),(35,28.2,-95.3,'01/29/14Z',40,997,'TROPICAL STORM'),(36,28.1,-94.8,'08/29/06Z',40,997,'TROPICAL STORM'),(37,28.4,-94.3,'08/29/12Z',40,997,'TROPICAL STORM'),(38,29.2,-94.3,'08/29/18Z',45,994,'TROPICAL STORM'),(39,29,-93.6,'08/30/00Z',45,994,'TROPICAL STORM'),(40,29.8,-93.4,'08/30/06Z',40,990,'TROPICAL STORM'),(41,30.5,-93.3,'08/30/12Z',40,993,'TROPICAL STORM'),(42,30.8,-93.1,'08/30/18Z',35,998,'TROPICAL STORM'),(43,31.7,-92.3,'08/31/00Z',30,998,'TROPICAL DEPRESSION'),(44,32.3,-92,'08/31/09Z',25,998,'TROPICAL DEPRESSION'),(45,32.5,-91.4,'08/31/15Z',15,1002,'TROPICAL DEPRESSION'),(46,33.8,-90.5,'08/31/21Z',15,1000,'TROPICAL DEPRESSION'),(47,34.3,-89,'09/01/03Z',25,1000,'TROPICAL DEPRESSION'),(48,35.7,-87.2,'09/01/09Z',25,1001,'TROPICAL DEPRESSION');
/*!40000 ALTER TABLE `harvey` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-10 23:10:42