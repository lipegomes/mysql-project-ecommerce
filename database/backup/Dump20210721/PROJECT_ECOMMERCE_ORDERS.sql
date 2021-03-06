-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: PROJECT_ECOMMERCE
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `ORDERS`
--

DROP TABLE IF EXISTS `ORDERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDERS` (
  `ORDER_ID` int NOT NULL AUTO_INCREMENT,
  `DEVICE` varchar(45) NOT NULL,
  `PRODUCT_ID` int NOT NULL,
  `CUSTOMER_ID` int NOT NULL,
  `PAYMENT_ID` int NOT NULL,
  `SHIPPING_ADDRESS` varchar(45) NOT NULL,
  `SHIPPING_CITY` varchar(45) NOT NULL,
  `SHIPPING_STATE` char(2) NOT NULL,
  `SHIPPING_COUNTRY` varchar(45) NOT NULL,
  `DELIVERED` char(1) DEFAULT 'N',
  PRIMARY KEY (`ORDER_ID`),
  KEY `PRODUCT_ID_FK1_idx` (`PRODUCT_ID`),
  KEY `CUSTOMER_ID_FK2_idx` (`CUSTOMER_ID`),
  KEY `PAYMENT_ID_FK1_idx` (`PAYMENT_ID`),
  CONSTRAINT `CUSTOMER_ID_FK2` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `CUSTOMERS` (`CUSTOMER_ID`),
  CONSTRAINT `PAYMENT_ID_FK1` FOREIGN KEY (`PAYMENT_ID`) REFERENCES `PAYMENTS` (`PAYMENT_ID`),
  CONSTRAINT `PRODUCT_ID_FK1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `PRODUCTS` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDERS`
--

LOCK TABLES `ORDERS` WRITE;
/*!40000 ALTER TABLE `ORDERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `ORDERS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-21 12:32:33
