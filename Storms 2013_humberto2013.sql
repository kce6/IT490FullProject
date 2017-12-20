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
-- Table structure for table `humberto2013`
--

DROP TABLE IF EXISTS `humberto2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `humberto2013` (
  `ADV` text,
  `LAT` double DEFAULT NULL,
  `LON` double DEFAULT NULL,
  `TIME` text,
  `WIND` int(11) DEFAULT NULL,
  `PR` int(11) DEFAULT NULL,
  `STAT` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `humberto2013`
--

LOCK TABLES `humberto2013` WRITE;
/*!40000 ALTER TABLE `humberto2013` DISABLE KEYS */;
INSERT INTO `humberto2013` VALUES ('1',13.1,-20.7,'09/08/21Z',25,1007,'TROPICAL DEPRESSION'),('1A',13.1,-21.4,'09/09/00Z',25,1007,'TROPICAL DEPRESSION'),('2',13.2,-21.9,'09/09/03Z',30,1006,'TROPICAL DEPRESSION'),('2A',13.3,-22.3,'09/09/06Z',30,1005,'TROPICAL DEPRESSION'),('3',13.4,-22.8,'09/09/09Z',35,1005,'TROPICAL STORM'),('3A',13.4,-23.3,'09/09/12Z',35,1005,'TROPICAL STORM'),('4',13.6,-24.1,'09/09/15Z',40,1005,'TROPICAL STORM'),('4A',13.6,-24.8,'09/09/18Z',40,1005,'TROPICAL STORM'),('5',13.7,-25.3,'09/09/21Z',45,1002,'TROPICAL STORM'),('6',13.9,-25.9,'09/10/03Z',50,1000,'TROPICAL STORM'),('7',14.4,-26.6,'09/10/09Z',55,998,'TROPICAL STORM'),('8',14.6,-27.7,'09/10/15Z',55,998,'TROPICAL STORM'),('9',15,-28.1,'09/10/21Z',60,993,'TROPICAL STORM'),('10',15.4,-28.4,'09/11/03Z',60,995,'TROPICAL STORM'),('11',16,-28.9,'09/11/09Z',65,992,'HURRICANE-1'),('12',16.7,-29.1,'09/11/15Z',70,989,'HURRICANE-1'),('13',18,-29,'09/11/21Z',75,986,'HURRICANE-1'),('14',19.1,-29,'09/12/03Z',75,982,'HURRICANE-1'),('15',20.5,-28.7,'09/12/09Z',75,982,'HURRICANE-1'),('16',21.8,-29,'09/12/15Z',75,982,'HURRICANE-1'),('17',23.1,-29.2,'09/12/21Z',75,982,'HURRICANE-1'),('18',23.4,-29.7,'09/13/03Z',70,984,'HURRICANE-1'),('19',24.4,-30.2,'09/13/09Z',65,984,'HURRICANE-1'),('20',24.7,-31.3,'09/13/15Z',55,991,'TROPICAL STORM'),('21',25,-32.1,'09/13/21Z',45,996,'TROPICAL STORM'),('22',24.8,-33,'09/14/03Z',40,999,'TROPICAL STORM'),('23',25,-34,'09/14/09Z',35,1003,'TROPICAL STORM'),('25',27.2,-43.2,'09/16/15Z',35,1007,'TROPICAL STORM'),('26',27.3,-43.5,'09/16/21Z',40,1003,'TROPICAL STORM'),('27',27,-43.3,'09/17/03Z',35,1005,'TROPICAL STORM'),('28',27.8,-42.7,'09/17/09Z',35,1007,'TROPICAL STORM'),('29',29.4,-42.5,'09/17/15Z',40,1007,'TROPICAL STORM'),('30',30.3,-42.8,'09/17/21Z',40,1005,'TROPICAL STORM'),('31',30.8,-43.3,'09/18/03Z',35,1007,'TROPICAL STORM'),('32',31.4,-43.7,'09/18/09Z',35,1007,'TROPICAL STORM'),('33',31.3,-43.8,'09/18/15Z',35,1007,'TROPICAL STORM'),('34',31.8,-43.7,'09/18/21Z',35,1007,'TROPICAL STORM'),('35',32.5,-43.4,'09/19/03Z',30,1009,'TROPICAL DEPRESSION'),('36',33,-44.3,'09/19/09Z',30,1009,'TROPICAL DEPRESSION'),('37',32.8,-43.3,'09/19/15Z',30,1005,'TROPICAL DEPRESSION');
/*!40000 ALTER TABLE `humberto2013` ENABLE KEYS */;
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