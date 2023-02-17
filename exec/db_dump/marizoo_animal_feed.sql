-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 3.36.112.78    Database: marizoo
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

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
-- Table structure for table `animal_feed`
--

DROP TABLE IF EXISTS `animal_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal_feed` (
  `animal_feed_id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `animal_id` bigint DEFAULT NULL,
  `feed_id` bigint DEFAULT NULL,
  PRIMARY KEY (`animal_feed_id`),
  KEY `FKi6vlhlsugyhi8ov21vd8gkrxx` (`animal_id`),
  KEY `FK5ddnp0hvg7hq0rv5vjfrjxc7a` (`feed_id`),
  CONSTRAINT `FK5ddnp0hvg7hq0rv5vjfrjxc7a` FOREIGN KEY (`feed_id`) REFERENCES `feed` (`feed_id`),
  CONSTRAINT `FKi6vlhlsugyhi8ov21vd8gkrxx` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal_feed`
--

LOCK TABLES `animal_feed` WRITE;
/*!40000 ALTER TABLE `animal_feed` DISABLE KEYS */;
INSERT INTO `animal_feed` VALUES (1,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',3,1),(2,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',11,1),(3,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',12,1),(4,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',21,1),(5,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',22,1),(6,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',33,1),(7,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',34,1),(8,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',45,1),(9,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',46,1),(10,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',51,1),(11,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',3,6),(12,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',11,6),(13,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',12,6),(14,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',21,6),(15,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',22,6),(16,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',33,6),(17,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',34,6),(18,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',45,6),(19,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',46,6),(20,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',51,6),(21,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',3,10),(22,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',11,10),(23,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',12,10),(24,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',21,10),(25,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',22,10),(26,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',33,10),(27,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',34,10),(28,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',45,10),(29,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',46,10),(30,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',51,10),(31,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',3,11),(32,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',11,11),(33,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',22,11),(34,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',34,11),(35,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',51,11),(36,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',7,1),(37,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',16,1),(38,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',17,1),(39,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',27,1),(40,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',28,1),(41,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',29,1),(42,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',40,1),(43,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',49,1),(44,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',55,1),(45,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',56,1),(46,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',7,6),(47,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',16,6),(48,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',17,6),(49,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',27,6),(50,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',28,6),(51,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',29,6),(52,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',40,6),(53,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',49,6),(54,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',55,6),(55,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',56,6),(56,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',7,10),(57,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',16,10),(58,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',17,10),(59,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',27,10),(60,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',28,10),(61,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',29,10),(62,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',40,10),(63,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',49,10),(64,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',55,10),(65,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',56,10),(66,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',17,4),(67,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',27,4),(68,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',28,4),(69,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',49,4),(70,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',56,4),(71,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',7,11),(72,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',16,11),(73,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',40,11),(74,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',55,11),(75,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',1,1),(76,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',2,1),(77,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',9,1),(78,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',10,1),(79,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',19,1),(80,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',20,1),(81,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',32,1),(82,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',42,1),(83,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',43,1),(84,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',44,1),(85,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',1,6),(86,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',2,6),(87,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',9,6),(88,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',10,6),(89,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',19,6),(90,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',20,6),(91,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',32,6),(92,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',42,6),(93,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',43,6),(94,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',44,6),(95,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',1,12),(96,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',2,12),(97,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',9,12),(98,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',10,12),(99,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',19,12),(100,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',20,12),(101,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',32,12),(102,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',42,12),(103,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',43,12),(104,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',44,12),(105,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',1,7),(106,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',9,7),(107,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',19,7),(108,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',43,7),(109,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',4,8),(110,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',13,8),(111,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',14,8),(112,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',23,8),(113,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',24,8),(114,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',25,8),(115,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',35,8),(116,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',36,8),(117,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',47,8),(118,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',52,8),(119,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',4,11),(120,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',14,11),(121,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',24,11),(122,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',47,11),(123,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',35,11),(124,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',8,4),(125,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',18,4),(126,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',30,4),(127,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',31,4),(128,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',41,4),(129,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',50,4),(130,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',5,1),(131,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',6,1),(132,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',15,1),(133,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',26,1),(134,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',37,1),(135,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',38,1),(136,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',39,1),(137,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',48,1),(138,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',53,1),(139,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',54,1),(140,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',5,3),(141,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',6,3),(142,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',15,3),(143,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',26,3),(144,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',37,3),(145,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',38,3),(146,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',39,3),(147,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',48,3),(148,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',53,3),(149,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',54,3),(150,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',5,6),(151,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',6,6),(152,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',15,6),(153,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',26,6),(154,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',37,6),(155,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',38,6),(156,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',39,6),(157,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',48,6),(158,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',53,6),(159,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',54,6),(160,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',5,6),(161,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',6,5),(162,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',15,8),(163,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',26,8),(164,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',37,5),(165,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',38,8),(166,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',39,5),(167,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',48,8),(168,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',53,5),(169,'seunghee','2023-02-12 17:37:52.000000','seunghee','2023-02-12 17:38:06.000000',54,5),(170,'seunghee','2023-02-16 23:43:46.000000','seunghee','2023-02-16 23:43:46.000000',57,1),(171,'seunghee','2023-02-16 23:43:46.000000','seunghee','2023-02-16 23:43:46.000000',57,6),(172,'seunghee','2023-02-16 23:43:46.000000','seunghee','2023-02-16 23:43:46.000000',57,10),(173,'seunghee','2023-02-16 23:43:46.000000','seunghee','2023-02-16 23:43:46.000000',58,1),(174,'seunghee','2023-02-16 23:43:46.000000','seunghee','2023-02-16 23:43:46.000000',58,6),(175,'seunghee','2023-02-16 23:43:46.000000','seunghee','2023-02-16 23:43:46.000000',58,10),(176,'seunghee','2023-02-16 23:43:46.000000','seunghee','2023-02-16 23:43:46.000000',59,6),(177,'seunghee','2023-02-16 23:43:46.000000','seunghee','2023-02-16 23:43:46.000000',59,10),(178,'seunghee','2023-02-16 23:43:46.000000','seunghee','2023-02-16 23:43:46.000000',60,1),(179,'seunghee','2023-02-16 23:43:46.000000','seunghee','2023-02-16 23:43:46.000000',60,10),(180,'seunghee','2023-02-16 23:51:40.000000','seunghee','2023-02-16 23:51:40.000000',61,8),(181,'seunghee','2023-02-16 23:51:40.000000','seunghee','2023-02-16 23:51:40.000000',61,9),(182,'seunghee','2023-02-16 23:51:40.000000','seunghee','2023-02-16 23:51:40.000000',61,11),(183,'seunghee','2023-02-16 23:51:40.000000','seunghee','2023-02-16 23:51:40.000000',62,8),(184,'seunghee','2023-02-16 23:51:40.000000','seunghee','2023-02-16 23:51:40.000000',62,9),(185,'seunghee','2023-02-16 23:51:40.000000','seunghee','2023-02-16 23:51:40.000000',63,8),(186,'seunghee','2023-02-16 23:51:40.000000','seunghee','2023-02-16 23:51:40.000000',63,11);
/*!40000 ALTER TABLE `animal_feed` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 11:16:08