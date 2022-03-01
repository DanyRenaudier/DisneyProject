CREATE DATABASE  IF NOT EXISTS `disneyproyect` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `disneyproyect`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: disneyproyect
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asociacion`
--

DROP TABLE IF EXISTS `asociacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asociacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Pelicula_PeliculasId` int NOT NULL,
  `Personaje_PersonajeId` int NOT NULL,
  `Genero_GenerosId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `personaje-asociacion_idx` (`Personaje_PersonajeId`),
  KEY `peliculas-asociacion_idx` (`Pelicula_PeliculasId`),
  KEY `generos-asociacion_idx` (`Genero_GenerosId`),
  CONSTRAINT `generos-asociacion` FOREIGN KEY (`Genero_GenerosId`) REFERENCES `generos` (`id`),
  CONSTRAINT `peliculas-asociacion` FOREIGN KEY (`Pelicula_PeliculasId`) REFERENCES `peliculasseries` (`id`),
  CONSTRAINT `personaje-asociacion` FOREIGN KEY (`Personaje_PersonajeId`) REFERENCES `personajes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asociacion`
--

LOCK TABLES `asociacion` WRITE;
/*!40000 ALTER TABLE `asociacion` DISABLE KEYS */;
INSERT INTO `asociacion` VALUES (94,1,1,2),(95,11,1,2),(96,12,1,2),(97,2,2,2),(98,11,2,2),(99,3,3,2),(100,11,3,2),(101,4,4,1),(102,11,4,2),(103,12,4,2),(104,5,5,3),(105,13,5,3),(106,6,6,1),(107,11,6,2),(108,12,6,2),(109,7,7,2),(110,11,7,2),(111,12,7,2),(112,8,8,2),(113,11,8,2),(114,12,8,2),(115,14,8,2),(116,9,9,1),(117,11,9,2),(118,12,9,2),(119,10,10,2),(120,11,10,2),(121,12,10,2),(122,11,11,2),(123,12,11,2),(124,1,2,2),(125,1,3,2);
/*!40000 ALTER TABLE `asociacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-01  0:07:10
