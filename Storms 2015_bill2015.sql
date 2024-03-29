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
-- Table structure for table `bill2015`
--

DROP TABLE IF EXISTS `bill2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill2015` (
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
-- Dumping data for table `bill2015`
--

LOCK TABLES `bill2015` WRITE;
/*!40000 ALTER TABLE `bill2015` DISABLE KEYS */;
INSERT INTO `bill2015` VALUES (1,27.1,-94.2,'06/16/00Z',45,1005,'TROPICAL STORM'),(2,27.9,-95.7,'06/16/06Z',45,1004,'TROPICAL STORM'),(3,28.2,-96.4,'06/16/12Z',50,997,'TROPICAL STORM'),(4,28.4,-96.8,'06/16/18Z',45,999,'TROPICAL STORM'),(5,29.5,-97,'06/17/00Z',35,1000,'TROPICAL STORM'),(6,31,-97.1,'06/17/06Z',30,1000,'TROPICAL DEPRESSION'),(7,32.2,-97.4,'06/17/15Z',30,1002,'TROPICAL DEPRESSION'),(8,32.8,-97.4,'06/17/21Z',30,1001,'TROPICAL DEPRESSION'),(9,33.7,-97.3,'06/18/03Z',30,999,'TROPICAL DEPRESSION'),(10,34.5,-96.4,'06/18/09Z',30,1002,'TROPICAL DEPRESSION'),(11,34.9,-96.2,'06/18/15Z',20,1002,'TROPICAL DEPRESSION'),(12,35.6,-94.6,'06/18/21Z',15,1004,'TROPICAL DEPRESSION'),(13,35.9,-93.8,'06/19/03Z',15,1005,'TROPICAL DEPRESSION'),(14,36.1,-93,'06/19/09Z',15,1006,'TROPICAL DEPRESSION'),(15,36.3,-91.4,'06/19/15Z',20,1006,'TROPICAL DEPRESSION'),(16,37.1,-90.1,'06/19/21Z',20,1004,'TROPICAL DEPRESSION'),(17,37.3,-88.2,'06/20/03Z',15,1002,'TROPICAL DEPRESSION'),(18,37.8,-87.1,'06/20/09Z',15,1001,'TROPICAL DEPRESSION'),(19,38.2,-84.9,'06/20/15Z',15,1002,'TROPICAL DEPRESSION');
/*!40000 ALTER TABLE `bill2015` ENABLE KEYS */;
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
