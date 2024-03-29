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
-- Table structure for table `katia`
--

DROP TABLE IF EXISTS `katia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `katia` (
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
-- Dumping data for table `katia`
--

LOCK TABLES `katia` WRITE;
/*!40000 ALTER TABLE `katia` DISABLE KEYS */;
INSERT INTO `katia` VALUES (1,22.4,-96.7,'09/05/18Z',30,1008,'TROPICAL DEPRESSION'),(2,22.2,-96.4,'09/06/00Z',30,1008,'TROPICAL DEPRESSION'),(3,22.1,-96.3,'09/06/06Z',35,1006,'TROPICAL STORM'),(4,21.7,-95.9,'09/06/12Z',40,1004,'TROPICAL STORM'),(5,21.7,-95.1,'09/06/18Z',65,992,'HURRICANE-1'),(6,21.7,-94.8,'09/07/00Z',70,989,'HURRICANE-1'),(7,21.5,-94.5,'09/07/06Z',70,989,'HURRICANE-1'),(8,21.6,-94.6,'09/07/12Z',70,980,'HURRICANE-1'),(9,21.6,-94.6,'09/07/18Z',70,980,'HURRICANE-1'),(10,21.5,-95.1,'09/08/00Z',75,982,'HURRICANE-1'),(11,21.3,-95.4,'09/08/06Z',80,977,'HURRICANE-1'),(12,21,-95.8,'09/08/12Z',85,975,'HURRICANE-2'),(13,21,-96.5,'09/08/18Z',90,972,'HURRICANE-2'),(14,20.6,-97.2,'09/09/11Z',65,988,'HURRICANE-1'),(15,20.3,-97.5,'09/09/20Z',35,1001,'TROPICAL STORM');
/*!40000 ALTER TABLE `katia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-10 23:10:43
