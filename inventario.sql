-- MySQL dump 10.13  Distrib 8.0.39, for macos14 (arm64)
--
-- Host: localhost    Database: db_inventario
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `TB_ARTICULOS`
--



--
-- Table structure for table `TB_CATEGORIAS`
--

DROP TABLE IF EXISTS `TB_CATEGORIAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TB_CATEGORIAS` (
  `codigo_ca` int NOT NULL AUTO_INCREMENT,
  `descripcion_ca` varchar(50) NOT NULL,
  `estado` tinyint NOT NULL,
  PRIMARY KEY (`codigo_ca`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TB_CATEGORIAS`
--

LOCK TABLES `TB_CATEGORIAS` WRITE;
/*!40000 ALTER TABLE `TB_CATEGORIAS` DISABLE KEYS */;
INSERT INTO `TB_CATEGORIAS` VALUES (1,'construccion',1),(2,'oficina',1),(3,'hogar',1);
/*!40000 ALTER TABLE `TB_CATEGORIAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TB_UNIDADES_MEDIDAS`
--

DROP TABLE IF EXISTS `TB_UNIDADES_MEDIDAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TB_UNIDADES_MEDIDAS` (
  `codigo_um` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  `estado` tinyint NOT NULL,
  PRIMARY KEY (`codigo_um`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TB_UNIDADES_MEDIDAS`
--

LOCK TABLES `TB_UNIDADES_MEDIDAS` WRITE;
/*!40000 ALTER TABLE `TB_UNIDADES_MEDIDAS` DISABLE KEYS */;
INSERT INTO `TB_UNIDADES_MEDIDAS` VALUES (1,'unidades',1),(2,'kilogramos',1),(3,'Metros',1),(4,'litrs',1),(5,'litrs',1);
/*!40000 ALTER TABLE `TB_UNIDADES_MEDIDAS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;


DROP TABLE IF EXISTS `TB_ARTICULOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TB_ARTICULOS` (
  `codigo_ar` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  `marca_ar` varchar(50) NOT NULL,
  `codigo_um` int NOT NULL,
  `codigo_ca` int NOT NULL,
  `estado` tinyint NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`codigo_ar`),
  KEY `codigo_um` (`codigo_um`),
  KEY `codigo_ca` (`codigo_ca`),
  CONSTRAINT `tb_articulos_ibfk_1` FOREIGN KEY (`codigo_um`) REFERENCES `TB_UNIDADES_MEDIDAS` (`codigo_um`),
  CONSTRAINT `tb_articulos_ibfk_2` FOREIGN KEY (`codigo_ca`) REFERENCES `TB_CATEGORIAS` (`codigo_ca`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TB_ARTICULOS`
--

LOCK TABLES `TB_ARTICULOS` WRITE;
/*!40000 ALTER TABLE `TB_ARTICULOS` DISABLE KEYS */;
INSERT INTO `TB_ARTICULOS` VALUES (1,'Escritorio','marca x',1,2,1,100),(2,'Silla','marca x',1,2,1,20),(3,'Ladrillos','marca y',2,1,1,23),(4,'Cementos','marca r',1,1,1,45),(5,'cocina','marca b',1,1,1,50);
/*!40000 ALTER TABLE `TB_ARTICULOS` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-13 13:44:47
