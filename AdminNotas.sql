CREATE DATABASE  IF NOT EXISTS `administrar_notas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `administrar_notas`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: administrar_notas
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `idcategories` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  PRIMARY KEY (`idcategories`),
  UNIQUE KEY `idcategories_UNIQUE` (`idcategories`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Deporte'),(2,'Economia'),(3,'Cultura'),(4,'Sociedad'),(5,'Ambientalismo'),(6,'Religion'),(7,'Psicologia'),(8,'Policial'),(9,'Comercio'),(10,'Farandula'),(11,'Moda');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `creation_date` date NOT NULL,
  `modification_date` date NOT NULL,
  `description` text NOT NULL,
  `remove` tinyint NOT NULL,
  `usersId` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idnotes_UNIQUE` (`id`),
  KEY `Fk_notes_users_idx` (`usersId`),
  CONSTRAINT `Fk_notes_users` FOREIGN KEY (`usersId`) REFERENCES `users` (`idUsers`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'Por la cerveza: causa y solucion de todos mis problemas','2021-01-04','2021-05-10','Sono, sono sono me llaman del bar del moe, en este buen lugar me gusta beber alcohol. Cuando bebo cerveza no entiendo porque todo da vueltas y vueltas. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Id consequuntur minus nobis minima dignissimos, accusamus, rem cum dolore hic eum quos architecto numquam earum nostrum illo magni. Perferendis, tempora tempore. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Delectus nam nesciunt at eveniet laboriosam soluta, fugit asperiores, similique itaque obcaecati numquam veritatis magnam laudantium nemo natus cum sequi! Illo, autem? Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi vero incidunt saepe esse similique aut asperiores deleniti aliquam labore. Ducimus aperiam animi, praesentium quam asperiores minus eaque optio adipisci distinctio. ',1,1),(2,'La abraza arboles','2020-06-01','2020-10-24','El tronco es nuestro,nos pertenece,si cae un rayo y desaparece. (Moe) Deje caer en mis pantalones las cebollitas. Antes un bello árbol fue, un beneficio que obtener. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Id consequuntur minus nobis minima dignissimos, accusamus, rem cum dolore hic eum quos architecto numquam earum nostrum illo magni. Perferendis, tempora tempore. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Delectus nam nesciunt at eveniet laboriosam soluta, fugit asperiores, similique itaque obcaecati numquam veritatis magnam laudantium nemo natus cum sequi! Illo, autem? Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi vero incidunt saepe esse similique aut asperiores deleniti aliquam labore. Ducimus aperiam animi, praesentium quam asperiores minus eaque optio adipisci distinctio.',1,2),(3,'Ay caramba!','2020-09-10','2020-12-17','Moe: ¡Taberna de Moe! Bart: ¿Está Empel? Moe: ¿Quién? Bart: De apellido Otas. Moe: Un momento, voy a ver.Empel Otas, que se ponga al telefono Empel Otas. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Id consequuntur minus nobis minima dignissimos, accusamus, rem cum dolore hic eum quos architecto numquam earum nostrum illo magni. Perferendis, tempora tempore. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Delectus nam nesciunt at eveniet laboriosam soluta, fugit asperiores, similique itaque obcaecati numquam veritatis magnam laudantium nemo natus cum sequi! Illo, autem? Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi vero incidunt saepe esse similique aut asperiores deleniti aliquam labore. Ducimus aperiam animi, praesentium quam asperiores minus eaque optio adipisci distinctio.',0,3),(4,'En un momento asi solo se puede reir','2022-08-12','2022-11-09','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Id consequuntur minus nobis minima dignissimos, accusamus, rem cum dolore hic eum quos architecto numquam earum nostrum illo magni. Perferendis, tempora tempore. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Delectus nam nesciunt at eveniet laboriosam soluta, fugit asperiores, similique itaque obcaecati numquam veritatis magnam laudantium nemo natus cum sequi! Illo, autem? Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi vero incidunt saepe esse similique aut asperiores deleniti aliquam labore. Ducimus aperiam animi, praesentium quam asperiores minus eaque optio adipisci distinctio.',1,4),(5,'Se siente como si no llevara nada puesto','2020-01-15','2020-08-28','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Id consequuntur minus nobis minima dignissimos, accusamus, rem cum dolore hic eum quos architecto numquam earum nostrum illo magni. Perferendis, tempora tempore. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Delectus nam nesciunt at eveniet laboriosam soluta, fugit asperiores, similique itaque obcaecati numquam veritatis magnam laudantium nemo natus cum sequi! Illo, autem? Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi vero incidunt saepe esse similique aut asperiores deleniti aliquam labore. Ducimus aperiam animi, praesentium quam asperiores minus eaque optio adipisci distinctio.',0,5),(6,'Volvio en forma de fichas','2020-02-05','2021-07-25','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Id consequuntur minus nobis minima dignissimos, accusamus, rem cum dolore hic eum quos architecto numquam earum nostrum illo magni. Perferendis, tempora tempore. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Delectus nam nesciunt at eveniet laboriosam soluta, fugit asperiores, similique itaque obcaecati numquam veritatis magnam laudantium nemo natus cum sequi! Illo, autem? Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi vero incidunt saepe esse similique aut asperiores deleniti aliquam labore. Ducimus aperiam animi, praesentium quam asperiores minus eaque optio adipisci distinctio.',1,6),(7,'No te golpees tú solo, toma uno: No te golpees tú solo, no te golpees tú solo, no te golpees tú solo','2021-08-02','2022-06-07','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Id consequuntur minus nobis minima dignissimos, accusamus, rem cum dolore hic eum quos architecto numquam earum nostrum illo magni. Perferendis, tempora tempore. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Delectus nam nesciunt at eveniet laboriosam soluta, fugit asperiores, similique itaque obcaecati numquam veritatis magnam laudantium nemo natus cum sequi! Illo, autem? Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi vero incidunt saepe esse similique aut asperiores deleniti aliquam labore. Ducimus aperiam animi, praesentium quam asperiores minus eaque optio adipisci distinctio.',1,7),(8,'¿Un dólar a cambio de la felicidad eterna? Mmm… Soy más feliz con el dólar','2022-03-03','2022-02-26','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Id consequuntur minus nobis minima dignissimos, accusamus, rem cum dolore hic eum quos architecto numquam earum nostrum illo magni. Perferendis, tempora tempore. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Delectus nam nesciunt at eveniet laboriosam soluta, fugit asperiores, similique itaque obcaecati numquam veritatis magnam laudantium nemo natus cum sequi! Illo, autem? Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi vero incidunt saepe esse similique aut asperiores deleniti aliquam labore. Ducimus aperiam animi, praesentium quam asperiores minus eaque optio adipisci distinctio.',1,8),(9,'Lee la placa, hijo: ¡Los sobornos son sólo en efectivo!','2021-09-28','2022-01-02','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Id consequuntur minus nobis minima dignissimos, accusamus, rem cum dolore hic eum quos architecto numquam earum nostrum illo magni. Perferendis, tempora tempore. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Delectus nam nesciunt at eveniet laboriosam soluta, fugit asperiores, similique itaque obcaecati numquam veritatis magnam laudantium nemo natus cum sequi! Illo, autem? Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi vero incidunt saepe esse similique aut asperiores deleniti aliquam labore. Ducimus aperiam animi, praesentium quam asperiores minus eaque optio adipisci distinctio.',1,9),(10,'Ya nos quiero vivir ,dame esa salchicha!','2022-11-14','2022-11-24','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Id consequuntur minus nobis minima dignissimos, accusamus, rem cum dolore hic eum quos architecto numquam earum nostrum illo magni. Perferendis, tempora tempore. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Delectus nam nesciunt at eveniet laboriosam soluta, fugit asperiores, similique itaque obcaecati numquam veritatis magnam laudantium nemo natus cum sequi! Illo, autem? Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi vero incidunt saepe esse similique aut asperiores deleniti aliquam labore. Ducimus aperiam animi, praesentium quam asperiores minus eaque optio adipisci distinctio.',0,10);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `notesId` int unsigned NOT NULL,
  `categoriesId` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `Fk_promotions_notes_idx` (`notesId`),
  KEY `Fk_promotions_categories_idx` (`categoriesId`),
  CONSTRAINT `Fk_promotions_categories` FOREIGN KEY (`categoriesId`) REFERENCES `categories` (`idcategories`),
  CONSTRAINT `Fk_promotions_notes` FOREIGN KEY (`notesId`) REFERENCES `notes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (1,1,4),(2,2,5),(3,3,10),(4,4,7),(5,5,11),(6,6,1),(7,7,1),(8,8,2),(9,9,8),(10,10,9);
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idUsers` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`idUsers`),
  UNIQUE KEY `idUsers_UNIQUE` (`idUsers`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Homero Simpson','homero@gmail.com'),(2,'Lisa Simpson','lisaS@gmail.com'),(3,'Marge Simpson','margebouvier@gmail.com'),(4,'Bart Simpson','elbarto@gmail.com'),(5,'Ned Flanders','diosirijillo@gmail.com'),(6,'Milhouse Van Houten','milhouse@gmail.com'),(7,'Nelson Muntz','haha@gmail.com'),(8,'Montgomery Burns','srburns@gmail.com'),(9,'Celso Gorgory','jefegorgory@gmail.com'),(10,'Apu Nahasapeemapetilon','apu@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-01 22:13:59
