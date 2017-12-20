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
-- Table structure for table `ophelia`
--

DROP TABLE IF EXISTS `ophelia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ophelia` (
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
-- Dumping data for table `ophelia`
--

LOCK TABLES `ophelia` WRITE;
/*!40000 ALTER TABLE `ophelia` DISABLE KEYS */;
INSERT INTO `ophelia` VALUES (1,31.1,-39.9,'10/09/06Z',30,1008,'TROPICAL DEPRESSION'),(2,31.4,-39.9,'10/09/12Z',35,1008,'TROPICAL STORM'),(3,31.5,-39.6,'10/09/18Z',40,1005,'TROPICAL STORM'),(4,32.3,-39,'10/10/00Z',45,1002,'TROPICAL STORM'),(5,31.9,-38.8,'10/10/06Z',45,1002,'TROPICAL STORM'),(6,31.5,-38.3,'10/10/12Z',45,1002,'TROPICAL STORM'),(7,31.1,-38,'10/10/18Z',50,1001,'TROPICAL STORM'),(8,30.7,-37.6,'10/11/00Z',45,1002,'TROPICAL STORM'),(9,30.2,-37,'10/11/06Z',55,996,'TROPICAL STORM'),(10,30,-36.5,'10/11/12Z',60,992,'TROPICAL STORM'),(11,30,-36.1,'10/11/18Z',65,990,'HURRICANE-1'),(12,30,-35.7,'10/12/00Z',75,986,'HURRICANE-1'),(13,30.3,-35.6,'10/12/06Z',75,986,'HURRICANE-1'),(14,30.5,-35.6,'10/12/12Z',80,978,'HURRICANE-1'),(15,30.4,-35.5,'10/12/18Z',85,973,'HURRICANE-2'),(16,30.7,-34.7,'10/13/00Z',90,970,'HURRICANE-2'),(17,31.1,-33.9,'10/13/06Z',90,970,'HURRICANE-2'),(18,31.8,-32.9,'10/13/12Z',85,971,'HURRICANE-2'),(19,32.3,-31.8,'10/13/18Z',85,971,'HURRICANE-2'),(20,33,-30.6,'10/14/00Z',85,971,'HURRICANE-2'),(21,33.9,-28.6,'10/14/06Z',85,971,'HURRICANE-2'),(22,34.8,-26.6,'10/14/12Z',100,960,'HURRICANE-3'),(23,35.9,-23.7,'10/14/18Z',100,960,'HURRICANE-3'),(24,37.3,-21.5,'10/15/00Z',100,960,'HURRICANE-3'),(25,39,-18.3,'10/15/06Z',90,964,'HURRICANE-2'),(26,41.6,-16,'10/16/00Z',80,973,'HURRICANE-1'),(27,44.6,-13.3,'10/15/18Z',75,971,'HURRICANE-1');
/*!40000 ALTER TABLE `ophelia` ENABLE KEYS */;
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