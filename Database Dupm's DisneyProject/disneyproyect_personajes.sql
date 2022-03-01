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
-- Table structure for table `personajes`
--

DROP TABLE IF EXISTS `personajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personajes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Imagen` text NOT NULL,
  `Nombre` text NOT NULL,
  `Edad` int NOT NULL,
  `Peso` int NOT NULL,
  `Historia` text NOT NULL,
  `Peliculas` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `asociacion-personaje_idx` (`Peliculas`),
  CONSTRAINT `asociacion-personaje` FOREIGN KEY (`Peliculas`) REFERENCES `asociacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personajes`
--

LOCK TABLES `personajes` WRITE;
/*!40000 ALTER TABLE `personajes` DISABLE KEYS */;
INSERT INTO `personajes` VALUES (1,'https://www.latercera.com/resizer/LGQUfJgrqUEtLYIEBHgKimeWacE=/900x600/filters:focal(391x125:401x115)/cloudfront-us-east-1.images.arcpublishing.com/copesa/QHUBCHRS4REGTI6D2OL4G2NGE4.jpg','Spiderman TH',25,76,'Tom Holland aparece como nuevo protagonista de la saga en lo que Stan Lee describe como Un grandioso Spider-Man.\"\"',NULL),(2,'https://scontent.faep15-2.fna.fbcdn.net/v/t1.6435-9/121614268_3641920162495594_4932650827856592508_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeG43d3n1YKK8-ZQtwJdrVem_VP-JgMklOz9U_4mAySU7F97wI6W_JylmuIEKeT51aA&_nc_ohc=qBHveyx0_QcAX_s7qQx&_nc_ht=scontent.faep15-2.fna&oh=00_AT-p2ATJS1Cacl8hkPMdKK6cThTtViLCkJ3sdSbe0z2t_Q&oe=623CCCCC','Spiderman TM',40,85,'Luego de sufrir la picadura de una araña geneticamente modificada, un estudiante de secundaria timido y torpe adquiere increibles capacidades como aracnido.',NULL),(3,'https://www.latercera.com/resizer/CEC9na1gILzScbqnLyryUG0oovI=/900x600/filters:focal(347x126:357x116)/cloudfront-us-east-1.images.arcpublishing.com/copesa/NIDVF3H3WBFJXNALRHZZ4DTRVY.jpg','Spiderman AG',28,80,'El joven compagina su tiempo luchando contra el mal convertido en Spider-Man y estudiando en el instituto junto con la chica a la que quiere, Gwen.',NULL),(4,'https://assets.megamediaradios.fm/2021/11/IRONMAN.jpg','Iron Man',37,102,'Tony Stark es un inventor. Unos terroristas lle obligan a construir una mÃ¡quina destructiva pero Tony se construira una armadura para poder enfrentarse a ellos y escapar.',NULL),(5,'https://hips.hearstapps.com/es.h-cdn.co/fotoes/images/peliculas/deadpool/deadpool-en-10-puntos-un-nuevo-super-heroe/97466017-1-esl-ES/Deadpool-en-10-puntos-Un-nuevo-super-heroe.jpg','Deadpool',32,81,'Wade Wilson, tras ser sometido a un cruel experimento cientifico, adquiere poderes especiales que le convierten en Deadpool.',NULL),(6,'https://www.quever.news/u/fotografias/m/2020/8/14/f608x342-463_30186_3.jpg','Capitana Marvel',35,56,'La guerrera Vers no recuerda su pasado, el cual vuelve a ella en sueños. A pesar de sus problemas para controlar sus emociones y, con ellas, sus poderes, la Inteligencia Suprema le permite participar en una mision.',NULL),(7,'https://i0.wp.com/hipertextual.com/wp-content/uploads/2019/05/hipertextual-avengers-endgame-futuro-capitan-america-2019781893-scaled.jpg?fit=1200%2C750&ssl=1','Capitan America',33,109,'Tras tres meses de someterse a un programa de entrenamiento fisico y ta¡ctico, Steve Rogers es encomendado su primera mision como Capita¡n America. Armado con un escudo indestructible, emprender la guerra contra el Mal como lider de los Vengadores.',NULL),(8,'https://www.quever.news/u/fotografias/m/2021/10/25/f638x638-17804_75971_5126.jpg','Hulk',36,635,'Bruce Banner recorre el mundo en busca de un antÃ­doto para librarse de su alter ego. AdemÃ¡s tendrÃ¡ que hacer frente a Emil, un nuevo enemigo, lo que convertio a Nueva York en el escenario de la ultima batalla entre las dos criaturas mas poderosas.',NULL),(9,'https://ichef.bbci.co.uk/news/640/cpsprodpb/1866/production/_99964260_mediaitem99964259.jpg','Black Panther',32,90,'Cuando llego la era del hombre, la mayorÃ­a de los habitantes de aquel territorio se unieron bajo el mando de un guerrero chaman que, gracias al vibranium, adquirio fuerza, velocidad e instinto sobrehumano, convirtienndose en el primer Black Panther.',NULL),(10,'https://i0.wp.com/www.sol915.com.ar/wp-content/uploads/2021/07/black-widow-2.jpeg?fit=750%2C668&ssl=1','Black Widow',38,59,'Una peligrosa conspiracion, relacionada con su pasado, persigue a Natasha Romanoff, tambienn conocida como Viuda Negra.',NULL),(11,'https://media.gq.com.mx/photos/5dec0db85b7e8300097bca15/16:9/w_1280,c_limit/thanos-bebe-marvel.jpg','Thanos',102,448,'Thanos nació en la luna Titán de Saturno como hijo de los Eternals A\'lars y Sui-San',NULL),(12,'img','a',1,100,'algo',NULL),(13,'img','a',1,100,'algo',NULL),(14,'img','a',1,100,'algo',NULL),(15,'img','a',1,100,'algo',NULL),(16,'img','a',1,100,'',NULL),(17,'imageeennnnn','asdasdads',720,10054,'algo',NULL),(18,'imageeennnnn','asdasdads',720,10054,'historieta',NULL),(19,'imageeennnnn','asdasdads',720,10054,'asdasd',NULL);
/*!40000 ALTER TABLE `personajes` ENABLE KEYS */;
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
