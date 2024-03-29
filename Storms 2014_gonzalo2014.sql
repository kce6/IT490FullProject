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
-- Table structure for table `gonzalo2014`
--

DROP TABLE IF EXISTS `gonzalo2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonzalo2014` (
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
-- Dumping data for table `gonzalo2014`
--

LOCK TABLES `gonzalo2014` WRITE;
/*!40000 ALTER TABLE `gonzalo2014` DISABLE KEYS */;
INSERT INTO `gonzalo2014` VALUES (1,16.4,-54.9,'10/11/18Z',25,1010,'LOW'),(2,16.4,-55.9,'10/12/00Z',30,1010,'TROPICAL DEPRESSION'),(3,16.4,-56.9,'10/12/06Z',30,1008,'TROPICAL DEPRESSION'),(4,16.4,-57.9,'10/12/12Z',35,1006,'TROPICAL STORM'),(5,16.4,-58.8,'10/12/18Z',40,1004,'TROPICAL STORM'),(6,16.5,-59.7,'10/13/00Z',45,1001,'TROPICAL STORM'),(7,16.7,-60.6,'10/13/06Z',55,996,'TROPICAL STORM'),(8,17,-61.5,'10/13/12Z',65,992,'HURRICANE-1'),(9,17.1,-61.8,'10/13/14Z',65,990,'HURRICANE-1'),(10,17.6,-62.4,'10/13/18Z',70,988,'HURRICANE-1'),(11,18.1,-63,'10/13/22Z',75,984,'HURRICANE-1'),(12,18.2,-63.1,'10/13/23Z',75,984,'HURRICANE-1'),(13,18.3,-63.2,'10/14/00Z',80,983,'HURRICANE-1'),(14,19.1,-64,'10/14/06Z',90,976,'HURRICANE-2'),(15,19.9,-64.8,'10/14/12Z',95,973,'HURRICANE-2'),(16,20.8,-65.5,'10/14/18Z',100,968,'HURRICANE-3'),(17,21.7,-66.2,'10/15/00Z',115,956,'HURRICANE-4'),(18,22.5,-67,'10/15/06Z',115,953,'HURRICANE-4'),(19,23.1,-67.7,'10/15/12Z',115,949,'HURRICANE-4'),(20,23.8,-68.3,'10/15/18Z',110,953,'HURRICANE-3'),(21,24.4,-68.6,'10/16/00Z',110,953,'HURRICANE-3'),(22,25,-68.7,'10/16/06Z',115,948,'HURRICANE-4'),(23,25.6,-68.7,'10/16/12Z',125,940,'HURRICANE-4'),(24,26.5,-68.3,'10/16/18Z',125,942,'HURRICANE-4'),(25,27.4,-67.8,'10/17/00Z',120,942,'HURRICANE-4'),(26,28.6,-67.2,'10/17/06Z',115,945,'HURRICANE-4'),(27,29.8,-66.5,'10/17/12Z',110,947,'HURRICANE-3'),(28,31,-65.7,'10/17/18Z',105,949,'HURRICANE-3'),(29,32.2,-64.9,'10/18/00Z',95,952,'HURRICANE-2'),(30,32.3,-64.8,'10/18/00Z',95,952,'HURRICANE-2'),(31,33.7,-63.9,'10/18/06Z',90,955,'HURRICANE-2'),(32,35.6,-62.6,'10/18/12Z',85,960,'HURRICANE-2'),(33,38.2,-60.9,'10/18/18Z',85,964,'HURRICANE-2'),(34,41.2,-58.3,'10/19/00Z',85,965,'HURRICANE-2'),(35,44.5,-54.8,'10/19/06Z',80,968,'HURRICANE-1'),(36,47.8,-50.1,'10/19/12Z',70,970,'HURRICANE-1'),(37,50.6,-44.8,'10/19/18Z',65,976,'EXTRATROPICAL STORM-1'),(38,52.6,-38.3,'10/20/00Z',55,982,'EXTRATROPICAL STORM'),(39,53.9,-30.9,'10/20/06Z',50,988,'EXTRATROPICAL STORM');
/*!40000 ALTER TABLE `gonzalo2014` ENABLE KEYS */;
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
