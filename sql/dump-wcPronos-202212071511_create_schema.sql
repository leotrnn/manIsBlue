-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: wcPronos
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.34-MariaDB-0ubuntu0.20.04.1

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
-- Table structure for table `BETS`
--

DROP TABLE IF EXISTS `BETS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BETS` (
  `idBet` int(11) NOT NULL AUTO_INCREMENT,
  `idMatch` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idStatus` int(11) NOT NULL DEFAULT 4,
  `scoreHost` int(11) NOT NULL,
  `scoreGuest` int(11) NOT NULL,
  PRIMARY KEY (`idBet`),
  KEY `BETS_FK` (`idMatch`),
  KEY `BETS_FK_1` (`idUser`),
  KEY `BETS_FK_2` (`idStatus`),
  CONSTRAINT `BETS_FK` FOREIGN KEY (`idMatch`) REFERENCES `MATCHES` (`idMatch`),
  CONSTRAINT `BETS_FK_1` FOREIGN KEY (`idUser`) REFERENCES `USERS` (`idUser`),
  CONSTRAINT `BETS_FK_2` FOREIGN KEY (`idStatus`) REFERENCES `STATUS` (`idStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BETS`
--

LOCK TABLES `BETS` WRITE;
/*!40000 ALTER TABLE `BETS` DISABLE KEYS */;
/*!40000 ALTER TABLE `BETS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GROUPS`
--

DROP TABLE IF EXISTS `GROUPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GROUPS` (
  `idGroup` int(11) NOT NULL AUTO_INCREMENT,
  `nameGroup` varchar(100) NOT NULL,
  `codeAccess` varchar(100) NOT NULL,
  `idOwner` int(11) NOT NULL,
  PRIMARY KEY (`idGroup`),
  KEY `GROUPS_FK` (`idOwner`),
  CONSTRAINT `GROUPS_FK` FOREIGN KEY (`idOwner`) REFERENCES `USERS` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUPS`
--

LOCK TABLES `GROUPS` WRITE;
/*!40000 ALTER TABLE `GROUPS` DISABLE KEYS */;
INSERT INTO `GROUPS` VALUES (22,'test','63876d8f00031',6),(23,'test2','63876ddbccf1b',6);
/*!40000 ALTER TABLE `GROUPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MATCHES`
--

DROP TABLE IF EXISTS `MATCHES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MATCHES` (
  `idMatch` int(11) NOT NULL AUTO_INCREMENT,
  `finalScoreHost` int(11) DEFAULT NULL,
  `finalScoreGuest` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `idFirstTeam` int(11) NOT NULL,
  `idSecondTeam` int(11) NOT NULL,
  `idApiMatch` int(11) NOT NULL,
  PRIMARY KEY (`idMatch`),
  KEY `MATCHES_FK` (`idFirstTeam`),
  KEY `MATCHES_FK_1` (`idSecondTeam`),
  CONSTRAINT `MATCHES_FK` FOREIGN KEY (`idFirstTeam`) REFERENCES `TEAMS` (`idTeam`),
  CONSTRAINT `MATCHES_FK_1` FOREIGN KEY (`idSecondTeam`) REFERENCES `TEAMS` (`idTeam`)
) ENGINE=InnoDB AUTO_INCREMENT=612 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MATCHES`
--

LOCK TABLES `MATCHES` WRITE;
/*!40000 ALTER TABLE `MATCHES` DISABLE KEYS */;
INSERT INTO `MATCHES` VALUES (552,0,2,'2022-11-21 17:00:00',3,4,855734),(553,6,2,'2022-11-21 14:00:00',5,6,855735),(554,0,2,'2022-11-20 17:00:00',1,2,855736),(555,1,2,'2022-11-22 11:00:00',9,10,855737),(556,0,0,'2022-11-22 14:00:00',15,16,855738),(557,0,0,'2022-11-22 17:00:00',11,12,855739),(558,0,0,'2022-11-23 11:00:00',23,24,855740),(559,1,2,'2022-11-23 14:00:00',19,20,855741),(560,1,0,'2022-11-23 20:00:00',21,22,855742),(561,1,0,'2022-11-24 11:00:00',27,28,855743),(562,0,0,'2022-11-24 14:00:00',31,32,855744),(563,3,2,'2022-11-24 17:00:00',29,30,855745),(564,2,0,'2022-11-24 20:00:00',25,26,855746),(565,1,3,'2022-11-25 14:00:00',1,3,855747),(566,1,1,'2022-11-25 17:00:00',4,2,855748),(567,0,0,'2022-11-25 20:00:00',5,7,855749),(568,2,0,'2022-11-26 14:00:00',12,10,855750),(569,2,1,'2022-11-26 17:00:00',13,15,855751),(570,2,0,'2022-11-26 20:00:00',9,11,855752),(571,0,2,'2022-11-27 14:00:00',21,23,855753),(572,4,1,'2022-11-27 17:00:00',24,22,855754),(573,1,1,'2022-11-27 20:00:00',17,19,855755),(574,3,3,'2022-11-28 11:00:00',28,26,855756),(575,2,3,'2022-11-28 14:00:00',32,30,855757),(576,1,0,'2022-11-28 17:00:00',25,27,855758),(577,2,0,'2022-11-28 20:00:00',29,31,855759),(578,2,0,'2022-11-29 16:00:00',4,1,855760),(579,1,2,'2022-11-29 16:00:00',2,3,855761),(580,0,1,'2022-11-29 20:00:00',6,7,855762),(581,1,0,'2022-11-30 16:00:00',16,13,855763),(582,0,2,'2022-11-30 20:00:00',12,9,855764),(583,1,2,'2022-11-30 20:00:00',10,11,855765),(584,0,0,'2022-12-01 16:00:00',24,21,855766),(585,1,2,'2022-12-01 16:00:00',22,23,855767),(586,2,1,'2022-12-01 20:00:00',20,17,855768),(587,2,1,'2022-12-02 16:00:00',32,29,855769),(588,0,2,'2022-12-02 16:00:00',30,31,855770),(589,1,0,'2022-12-02 20:00:00',28,25,855771),(590,2,3,'2022-12-02 20:00:00',26,27,855772),(591,1,1,'2022-11-21 20:00:00',7,8,866681),(592,0,2,'2022-11-25 11:00:00',8,6,866682),(593,0,3,'2022-11-29 20:00:00',8,5,866683),(594,4,1,'2022-11-22 20:00:00',13,14,871850),(595,7,0,'2022-11-23 17:00:00',17,18,871851),(596,0,1,'2022-11-26 11:00:00',16,14,871852),(597,0,1,'2022-11-27 11:00:00',20,18,871853),(598,1,0,'2022-11-30 16:00:00',14,15,871854),(599,2,4,'2022-12-01 20:00:00',18,19,871855),(600,3,1,'2022-12-03 16:00:00',4,7,976533),(601,3,0,'2022-12-04 20:00:00',5,3,976534),(602,2,1,'2022-12-03 20:00:00',9,14,976642),(603,3,1,'2022-12-04 16:00:00',13,12,976643),(604,1,1,'2022-12-05 16:00:00',20,24,977344),(605,0,0,'2022-12-06 16:00:00',23,17,977345),(606,4,1,'2022-12-05 20:00:00',25,32,977705),(607,6,1,'2022-12-06 20:00:00',29,27,977706),(608,NULL,NULL,'2022-12-09 20:00:00',4,9,977794),(609,NULL,NULL,'2022-12-10 20:00:00',5,13,978036),(610,NULL,NULL,'2022-12-09 16:00:00',24,25,978072),(611,NULL,NULL,'2022-12-10 16:00:00',23,29,978088);
/*!40000 ALTER TABLE `MATCHES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STATUS`
--

DROP TABLE IF EXISTS `STATUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STATUS` (
  `idStatus` int(11) NOT NULL AUTO_INCREMENT,
  `nameStatus` varchar(100) NOT NULL,
  PRIMARY KEY (`idStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STATUS`
--

LOCK TABLES `STATUS` WRITE;
/*!40000 ALTER TABLE `STATUS` DISABLE KEYS */;
INSERT INTO `STATUS` VALUES (1,'PARFAIT'),(2,'INEXACT'),(3,'PERDANT'),(4,'EN COURS');
/*!40000 ALTER TABLE `STATUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TEAMS`
--

DROP TABLE IF EXISTS `TEAMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TEAMS` (
  `idTeam` int(11) NOT NULL AUTO_INCREMENT,
  `nameTeam` varchar(100) NOT NULL,
  `pathLogoTeam` varchar(100) NOT NULL,
  `coachTeam` varchar(100) DEFAULT NULL,
  `nbWorldCupWon` int(11) DEFAULT 0,
  `idApi` int(11) NOT NULL,
  PRIMARY KEY (`idTeam`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TEAMS`
--

LOCK TABLES `TEAMS` WRITE;
/*!40000 ALTER TABLE `TEAMS` DISABLE KEYS */;
INSERT INTO `TEAMS` VALUES (1,'Qatar','qatar.png','Félix Sánchez Bas',0,1569),(2,'Équateur','equateur.png','Gustavo Alfaro',0,2382),(3,'Sénégal','senegal.png','Aliou Cissé',0,13),(4,'Pays-Bas','paysbas.png','Louis van Gaal',0,1118),(5,'Angleterre','angleterre.png','Gareth Southgate',1,10),(6,'Iran','iran.png','Carlos Queiroz',0,22),(7,'États-Unis','usa.png','Gregg Berhalter',0,2384),(8,'Pays de Galles','galles.png','Rob Page',0,767),(9,'Argentine','argentine.png','Lionel Scaloni',2,26),(10,'Arabie Saoudite','arabie.png','Hervé Renard',0,23),(11,'Mexique','mexique.png','Gerardo Martino',0,16),(12,'Pologne','pologne.png','Czesław Michniewicz',0,24),(13,'France','france.png','Didier Deschamps',2,2),(14,'Australie','australie.png','Tony Gustavsson',0,20),(15,'Danemark','danemark.png','Kasper Hjulmand',0,21),(16,'Tunisie','tunisie.png','Jalel Kadri',0,28),(17,'Espagne','espagne.png','Luis Enrique',1,9),(18,'Costa Rica','costarica.png','Luis Fernando Suárez',0,29),(19,'Allemagne','allemagne.png','Hans-Dieter Flick',4,25),(20,'Japon','japon.png','Hajime Moriyasu',0,12),(21,'Belgique','belgique.png','Roberto Martínez',0,1),(22,'Canada','canada.png','John Herdman',0,5529),(23,'Maroc','maroc.png','Walid Regragui',0,31),(24,'Croatie ','croatie.png','Zlatko Dalić',0,3),(25,'Brésil','bresil.png','Tite',5,6),(26,'Serbie','serbie.png','Dragan Stojković',0,14),(27,'Suisse','suisse.png','Murat Yakın',0,15),(28,'Cameroun','cameroun.png','Rigobert Song',0,1530),(29,'Portugal','portugal.png','Fernando Santos',0,27),(30,'Ghana','ghana.png','Otto Addo',0,1504),(31,'Uruguay','uruguay.png','Diego Alonso',2,7),(32,'Corée du Sud','coree.png','Paulo Bento',0,17);
/*!40000 ALTER TABLE `TEAMS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERS`
--

DROP TABLE IF EXISTS `USERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERS` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `nameUser` varchar(250) NOT NULL,
  `emailUser` varchar(100) NOT NULL,
  `passwordHash` varchar(255) NOT NULL,
  `scoreUser` int(11) NOT NULL DEFAULT 0,
  `supportedTeam` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUser`),
  KEY `USERS_FK` (`supportedTeam`),
  CONSTRAINT `USERS_FK` FOREIGN KEY (`supportedTeam`) REFERENCES `TEAMS` (`idTeam`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS`
--

LOCK TABLES `USERS` WRITE;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
INSERT INTO `USERS` VALUES (4,'yooo','yooo@gmail.com','$2y$10$7I1EPMGDBz68lJFNEkZEueDGCPex2Kj9tVCBknB.jO3lN8Ipe38Q.',0,4),(5,'Kurei','kurei@gmail.com','$2y$10$29P097uEgmcJAzyYpRPyG.LqVcBBLXsdPqM3kXPofFco7xxw7IRn2',0,17),(6,'Emir Ahmetovic','emir@gmail.com','$2y$10$M0rahx3O2x.3.27vcyiMkO4ED8JZ94n34kInfsyp6vA9M3J6KHBRm',0,27),(9,'Emir le Footix','EmirLeFootix@gmail.com','$2y$10$UPRu3e0MqUjz8wjd8I/mI.qExQtclPAoG7C0bpZkfnip3DCufsuzq',0,6),(10,'Emir le footeux','EmirLeFooteux@gmail.com','$2y$10$aurrlDfNDoYkXU6D25b8Pu5ha5WrPf9xkZSuo2ICUik17kgGgXbiO',0,19),(11,'test','test@gmail.com','$2y$10$gJWx8bw7TNmutf7Dsj2bBeUColBVMszK8DO1BOy/kpgnbM3F.QVES',0,30),(12,'03ugo','ugo@gmail.com','$2y$10$BYbOxojn3g4kycZJRDhYi.8b9ZKWUW8T7GvwlBKak9nBVtEYtirBm',0,15);
/*!40000 ALTER TABLE `USERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERS_IN_GROUPS`
--

DROP TABLE IF EXISTS `USERS_IN_GROUPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERS_IN_GROUPS` (
  `idGroup` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`idGroup`,`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS_IN_GROUPS`
--

LOCK TABLES `USERS_IN_GROUPS` WRITE;
/*!40000 ALTER TABLE `USERS_IN_GROUPS` DISABLE KEYS */;
INSERT INTO `USERS_IN_GROUPS` VALUES (22,6),(23,6);
/*!40000 ALTER TABLE `USERS_IN_GROUPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'wcPronos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-07 15:11:03
