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
-- Table structure for table `peliculasseries`
--

DROP TABLE IF EXISTS `peliculasseries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculasseries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Imagen` text NOT NULL,
  `Titulo` text NOT NULL,
  `Fecha_creacion` date NOT NULL,
  `Calificacion` int NOT NULL,
  `Personajes` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `asociacion-peliculas_idx` (`Personajes`),
  CONSTRAINT `asociacion-peliculas` FOREIGN KEY (`Personajes`) REFERENCES `asociacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculasseries`
--

LOCK TABLES `peliculasseries` WRITE;
/*!40000 ALTER TABLE `peliculasseries` DISABLE KEYS */;
INSERT INTO `peliculasseries` VALUES (1,'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ3ksk9K-b2pT6OOczS4ucB5aH_l7hOGuIO7RUXMubkxOfbhmQX','Spider-Man: No Way Home','2021-12-16',5,NULL),(2,'https://m.media-amazon.com/images/I/51xSbFK7o7L._AC_.jpg','Spider-Man','2002-05-03',5,NULL),(3,'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSdTbhQGxTkYXcniXJGxkpG-LBAGZjyor4tARUP-HNSkcbHKC72','El sorprendente Hombre Arania','2012-07-05',3,NULL),(4,'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/b/bf/Iron_Man_1_Portada.png/revision/latest?cb=20191029194450&path-prefix=es','Iron Man: el hombre de hierro','2008-04-30',4,NULL),(5,'https://es.web.img3.acsta.net/pictures/15/12/04/10/48/099822.jpg','Deadpool','2016-02-11',3,NULL),(6,'https://pics.filmaffinity.com/Capitana_Marvel-457800899-large.jpg','Capitana Marvel','2019-03-07',2,NULL),(7,'https://es.web.img3.acsta.net/medias/nmedia/18/84/79/82/20099009.jpg','Capitan America: El primer vengador','2011-07-28',1,NULL),(8,'https://pics.filmaffinity.com/El_incre_ble_Hulk-175130941-large.jpg','El increible Hulk','2008-06-19',2,NULL),(9,'https://pics.filmaffinity.com/Black_Panther-992613805-large.jpg','Pantera Negra','2018-02-15',3,NULL),(10,'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/e/e1/Black_Widow_-_Nuevo_P%C3%B3ster.png/revision/latest?cb=20210629192802&path-prefix=es','Black Widow','2021-07-09',5,NULL),(11,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiC3mSrAdG2_Tkuz5CbCm2TA-wYikac3dOPVlzb5jCk1gqsHOD','Avengers: Endgame','2019-04-26',5,NULL),(12,'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSOV0JVW82VnxHBgHu1syHyD_cTSYAgLr76gw9ejI4cmySydjmw','Avengers: Infinity War','2018-04-26',4,NULL),(13,'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRkfTX9AfA_ztkMsrY4mmFBa7SbeR98NjU0uLiiiaMfhmKK8lsa','Deadpool 2 ','2018-05-01',3,NULL),(14,'https://pics.filmaffinity.com/El_incre_ble_Hulk-175130941-large.jpg','Hulk','2003-06-26',3,NULL);
/*!40000 ALTER TABLE `peliculasseries` ENABLE KEYS */;
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
