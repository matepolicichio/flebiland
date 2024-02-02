-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: flebiland
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add contact',7,'add_contact'),(26,'Can change contact',7,'change_contact'),(27,'Can delete contact',7,'delete_contact'),(28,'Can view contact',7,'view_contact'),(29,'Can add profile',8,'add_profile'),(30,'Can change profile',8,'change_profile'),(31,'Can delete profile',8,'delete_profile'),(32,'Can view profile',8,'view_profile'),(33,'Can add category',9,'add_category'),(34,'Can change category',9,'change_category'),(35,'Can delete category',9,'delete_category'),(36,'Can view category',9,'view_category'),(37,'Can add page',10,'add_page'),(38,'Can change page',10,'change_page'),(39,'Can delete page',10,'delete_page'),(40,'Can view page',10,'view_page'),(41,'Can add tag',11,'add_tag'),(42,'Can change tag',11,'change_tag'),(43,'Can delete tag',11,'delete_tag'),(44,'Can view tag',11,'view_tag'),(45,'Can add post',12,'add_post'),(46,'Can change post',12,'change_post'),(47,'Can delete post',12,'delete_post'),(48,'Can view post',12,'view_post'),(49,'Can add comment',13,'add_comment'),(50,'Can change comment',13,'change_comment'),(51,'Can delete comment',13,'delete_comment'),(52,'Can view comment',13,'view_comment'),(53,'Can add category',14,'add_category'),(54,'Can change category',14,'change_category'),(55,'Can delete category',14,'delete_category'),(56,'Can view category',14,'view_category'),(57,'Can add page',15,'add_page'),(58,'Can change page',15,'change_page'),(59,'Can delete page',15,'delete_page'),(60,'Can view page',15,'view_page'),(61,'Can add tag',16,'add_tag'),(62,'Can change tag',16,'change_tag'),(63,'Can delete tag',16,'delete_tag'),(64,'Can view tag',16,'view_tag'),(65,'Can add post',17,'add_post'),(66,'Can change post',17,'change_post'),(67,'Can delete post',17,'delete_post'),(68,'Can view post',17,'view_post'),(69,'Can add comment',18,'add_comment'),(70,'Can change comment',18,'change_comment'),(71,'Can delete comment',18,'delete_comment'),(72,'Can view comment',18,'view_comment'),(73,'Can add call to action',19,'add_calltoaction'),(74,'Can change call to action',19,'change_calltoaction'),(75,'Can delete call to action',19,'delete_calltoaction'),(76,'Can view call to action',19,'view_calltoaction'),(77,'Can add page enabled',20,'add_pageenabled'),(78,'Can change page enabled',20,'change_pageenabled'),(79,'Can delete page enabled',20,'delete_pageenabled'),(80,'Can view page enabled',20,'view_pageenabled'),(81,'Can add section enabled',21,'add_sectionenabled'),(82,'Can change section enabled',21,'change_sectionenabled'),(83,'Can delete section enabled',21,'delete_sectionenabled'),(84,'Can view section enabled',21,'view_sectionenabled'),(85,'Can add section selection',22,'add_sectionselection'),(86,'Can change section selection',22,'change_sectionselection'),(87,'Can delete section selection',22,'delete_sectionselection'),(88,'Can view section selection',22,'view_sectionselection'),(89,'Can add hero',23,'add_hero'),(90,'Can change hero',23,'change_hero'),(91,'Can delete hero',23,'delete_hero'),(92,'Can view hero',23,'view_hero'),(93,'Can add header',24,'add_header'),(94,'Can change header',24,'change_header'),(95,'Can delete header',24,'delete_header'),(96,'Can view header',24,'view_header'),(97,'Can add post card',25,'add_postcard'),(98,'Can change post card',25,'change_postcard'),(99,'Can delete post card',25,'delete_postcard'),(100,'Can view post card',25,'view_postcard'),(101,'Can add footer',26,'add_footer'),(102,'Can change footer',26,'change_footer'),(103,'Can delete footer',26,'delete_footer'),(104,'Can view footer',26,'view_footer');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$0PUdGFgsFf52z9OMfGPE6O$09UPRkmuhqK/ru3tvnM2tV1EhZfGGkVBW2mGWYc1DmU=','2024-01-30 15:54:26.481431',1,'martin','','','martinpolicichio@yahoo.com.ar',1,1,'2024-01-11 20:23:52.874666'),(2,'pbkdf2_sha256$600000$YBI7UXBWNTUstTgLsmEF0V$dGp8SHOy5JUbkOqsBNYrwj5oaAIKQvf3lS1nqMubBb0=','2024-02-01 17:22:29.902212',1,'mateo','','','mateopolicichio@gmail.com',1,1,'2024-01-11 20:24:32.824513');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calltoaction_calltoaction`
--

DROP TABLE IF EXISTS `calltoaction_calltoaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calltoaction_calltoaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `whatsapp_number` varchar(20) DEFAULT NULL,
  `whatsapp_message` longtext,
  `btn_text` varchar(50) NOT NULL,
  `background_image` varchar(100) DEFAULT NULL,
  `is_mainpage_enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calltoaction_calltoaction`
--

LOCK TABLES `calltoaction_calltoaction` WRITE;
/*!40000 ALTER TABLE `calltoaction_calltoaction` DISABLE KEYS */;
INSERT INTO `calltoaction_calltoaction` VALUES (1,'Transforma tu Belleza','Hola, me gustaría recibir más información sobre las *Promociones y Tratamientos de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamientos: https://flebiland.flebella.com/services\r\nPromociones: https://flebiland.flebella.com/promociones\r\n\r\nMuchas Gracias,','5491168653898','Hola, me gustaría recibir más información.\r\n* Nombre:\r\n* Correo:\r\nEnviado desde mi página web: https://flebiland.ingenios.com.ar/','¡Comienza ahora!','images/promociones/call2action/pexels-john-petalcurin-1603891.jpg',1),(2,'Asesorate con Profesionales','¿Dudas sobre qué tratamiento es adecuado para ti? Nuestros profesionales están disponibles para ofrecerte asesoramiento personalizado. Da el primer paso hacia la confianza y belleza.','5491168653898','Hola, me gustaría recibir más información sobre las *Promociones y Tratamientos de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamientos: https://flebiland.flebella.com/services\r\nPromociones: https://flebiland.flebella.com/promociones\r\n\r\nMuchas Gracias,','¡Contáctanos hoy!','images/promociones/call2action/pexels-nick-collins-1293125.jpg',1),(3,'Descubre tu Potencial de Belleza','Explora los tratamientos personalizados de Flebella que resaltan tu belleza natural. ¿Listo para revelar tu mejor versión?','5491168653898','Hola, me gustaría recibir más información sobre las *Promociones y Tratamientos de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamientos: https://flebiland.flebella.com/services\r\nPromociones: https://flebiland.flebella.com/promociones\r\n\r\nMuchas Gracias,','¡Agenda tu cita!','images/promociones/call2action/pexels-anni-roenkae-3109812.jpg',1),(4,'Recupera Tu Juventud con Fillers','Experimenta la magia de los Fillers en Flebella, diseñados para restaurar la juventud y vitalidad de tu rostro. La Dra. Policichio personalizará tu tratamiento para resultados naturales. ¿Listo para resplandecer?','5491168653898','Hola, me gustaría recibir más información sobre este *Tratamiento de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamiento de referencia: *Fillers*\r\nhttps://flebiland.flebella.com/services/article/1\r\n\r\nMuchas Gracias,','¡Consulta de Fillers!','images/promociones/call2action/pexels-youssef-labib-9157201_TUFEFYk.jpg',0),(5,'Descubre la Frescura de tu Rostro con Toxina Botulínica','Transforma tu rostro con la relajación precisa de la Toxina Botulínica en Flebella. Personalizamos cada tratamiento para resaltar tu belleza natural. ¿Listo para rejuvenecer tu expresión facial?','5491168653898','Hola, me gustaría recibir más información sobre este *Tratamiento de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamiento de referencia: *Toxina Botulínica*\r\nhttps://flebiland.flebella.com/services/article/5\r\n\r\nMuchas Gracias,','¡Consulta de Toxina Botulínica!','',0),(6,'Transforma tu Piel con Alquimia Diamond','Experimenta el lujo de una piel rejuvenecida con Alquimia Diamond en Flebella. Sin dolor, solo resultados notables. ¿Listo para una piel radiante?','5491168653898','Hola, me gustaría recibir más información sobre este *Tratamiento de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamiento de referencia: *Alquimia Diamond*\r\nhttps://flebiland.flebella.com/services/article/7\r\n\r\nMuchas Gracias,','¡Consulta de Alquimia Diamond!','',0),(7,'Descubre una Piel Renovada con Mesoterapia y Fosfatidilcolina','Transforma tu belleza para revitalizar tu piel y remodelar tu figura, con sesiones rápidas y resultados duraderos.','5491168653898','Hola, me gustaría recibir más información sobre este *Tratamiento de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamiento de referencia: *Mesoterapia y Fosfatidilcolina*\r\nhttps://flebiland.flebella.com/services/article/8\r\n\r\nMuchas Gracias,','¡Consulta de Mesoterapia!','',0),(8,'Experimenta UNYQUE: La Revolución Estética','Descubre la potencia de UNYQUE en Flebella, la tecnología más completa del mercado para combatir celulitis, adiposidad y flacidez.','5491168653898','Hola, me gustaría recibir más información sobre este *Tratamiento de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamiento de referencia: *UNYQUE*\r\nhttps://flebiland.flebella.com/services/article/9\r\n\r\nMuchas Gracias,','¡Consulta de UNYQUE!','',0),(9,'Descubre la Juventud en 3D con ENDYMED','Rejuvenece tu rostro y párpados con ENDYMED 3DEEP en Flebella. Tensa la piel, elimina arrugas y recupera una apariencia fresca.','5491168653898','Hola, me gustaría recibir más información sobre este *Tratamiento de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamiento de referencia: *EndyMed Facial y Párpados*\r\nhttps://flebiland.flebella.com/services/article/10\r\n\r\nMuchas Gracias,','¡Consulta de ENDYMED!','',0),(10,'Eleva tu Belleza con HIFU 7D','Descubre la tecnología de ultrasonido focalizado de alta intensidad en Flebella. Rejuvenece tu rostro y cuerpo, redefine tu contorno y experimenta resultados duraderos. ¡Consulta ahora!','5491168653898','Hola, me gustaría recibir más información sobre este *Tratamiento de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamiento de referencia: *HIFU 7D*\r\nhttps://flebiland.flebella.com/services/article/11\r\n\r\nMuchas Gracias,','¡Consulta de HIFU!','',0),(11,'Renueva tu Piel con Dermapen','Descubre la revolucionaria técnica de Dermapen en Flebella para una piel suave y luminosa. Personalizado para tu piel, este tratamiento facial y corporal renueva, revitaliza y disminuye imperfecciones. ¡Consulta ahora!','5491168653898','Hola, me gustaría recibir más información sobre este *Tratamiento de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamiento de referencia: *Dermapen*\r\nhttps://flebiland.flebella.com/services/article/12\r\n\r\nMuchas Gracias,','¡Consulta de Dermapen!','',0),(12,'Renueva tu Piel con Nuestras Limpezas de Cutis','Descubre la gama completa de limpiezas de cutis en Flebella, desde pulidos sutiles hasta limpiezas profundas. Nuestros tratamientos adaptados y realizados por profesionales te brindarán una piel radiante. ¡Agenda tu limpieza ahora!','5491168653898','Hola, me gustaría recibir más información sobre este *Tratamiento de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamiento de referencia: *Limpieza de Cutis*\r\nhttps://flebiland.flebella.com/services/article/13\r\n\r\nMuchas Gracias,','¡Consulta por tu Limpieza!','',0),(13,'Recupera la Belleza y Salud con Escleroterapia','En Flebella, ofrecemos la avanzada técnica de escleroterapia para tratar várices, venectasias y arañitas vasculares. Experimenta alivio de síntomas y mejora estética con un tratamiento ambulatorio, sin dolor y de rápida duración.','5491168653898','Hola, me gustaría recibir más información sobre este *Tratamiento de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamiento de referencia: *Escleroterápia*\r\nhttps://flebiland.flebella.com/services/article/14\r\n\r\nMuchas Gracias,','¡Consulta de Escleroterapia!','',0),(14,'Logra una Piel Radiante con Nuestra Dermatología Integral en Flebella','Descubre soluciones personalizadas para acné, rosácea, poros dilatados, hiperpigmentaciones, control de lunares, cáncer de piel y alopecia. Nuestra dermatóloga especializada te brindará atención integral para una piel saludable.','5491168653898','Hola, me gustaría recibir más información sobre este *Tratamiento de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamiento de referencia: *Dermatología*\r\n-Distintivos: Acné, Rosácea, Poros Dilatados, Hiperpegmentaciones y Melasma, Control de Lunares y Cancer de Piel, Alopecia  \r\nhttps://flebiland.flebella.com/services/article/15\r\n\r\nMuchas Gracias,','¡Agenda tu Consulta Dermatológica Hoy!','',0),(15,'Descubre la Calma  Bienestar con el Drenaje Linfático Manual','Agenda tu sesión de Drenaje Linfático Manual y revitaliza tu cuerpo. ¡Tu bienestar nos importa!','5491168653898','Hola, me gustaría recibir más información sobre este *Tratamiento de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamiento de referencia: *Drenaje Linfático*\r\nhttps://flebiland.flebella.com/services/article/16\r\n\r\nMuchas Gracias,','¡Consulta sobre Drenaje Linfático!','',0),(16,'Revitaliza tu Piel con Bioestimuladores','Transforma tu apariencia y redescubre una piel más joven y saludable. ¡Consulta ahora para conocer más sobre estos tratamientos avanzados y programa tu sesión hoy mismo!','5491168653898','Hola, me gustaría recibir más información sobre este *Tratamiento de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamiento: *Bioestimuladores*\r\nhttps://flebiland.flebella.com/services/article/6\r\n\r\nMuchas Gracias,','¡Saber más sobre Biostimuladores !','',0);
/*!40000 ALTER TABLE `calltoaction_calltoaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=586 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-01-15 18:44:04.721194','1','hero',1,'[{\"added\": {}}]',21,2),(2,'2024-01-15 18:44:18.805363','2','main - nosotros',1,'[{\"added\": {}}]',21,2),(3,'2024-01-15 18:46:03.883208','3','servicios - listado',1,'[{\"added\": {}}]',21,2),(4,'2024-01-15 18:46:16.875323','4','promociones - listado',1,'[{\"added\": {}}]',21,2),(5,'2024-01-15 18:46:53.642898','5','main - estadísticas',1,'[{\"added\": {}}]',21,2),(6,'2024-01-15 18:47:12.943649','6','main - distintivos',1,'[{\"added\": {}}]',21,2),(7,'2024-01-15 18:47:24.955188','7','main - experiencia',1,'[{\"added\": {}}]',21,2),(8,'2024-01-15 18:48:44.665553','8','main - equipo',1,'[{\"added\": {}}]',21,2),(9,'2024-01-15 18:49:02.514861','9','calltoaction',1,'[{\"added\": {}}]',21,2),(10,'2024-01-15 18:49:23.297464','10','main - contacto',1,'[{\"added\": {}}]',21,2),(11,'2024-01-15 18:49:33.382667','11','main - testimonios',1,'[{\"added\": {}}]',21,2),(12,'2024-01-15 18:51:48.308003','1','flebi - mainpage',1,'[{\"added\": {}}]',20,2),(13,'2024-01-15 18:52:05.545685','2','servicios - listado',1,'[{\"added\": {}}]',20,2),(14,'2024-01-15 18:52:13.465928','3','servicios - detalle',1,'[{\"added\": {}}]',20,2),(15,'2024-01-15 18:52:20.782394','4','promociones - listado',1,'[{\"added\": {}}]',20,2),(16,'2024-01-15 18:52:27.477334','5','promociones - detalle',1,'[{\"added\": {}}]',20,2),(17,'2024-01-15 18:53:47.477371','1','SectionSelection object (1)',1,'[{\"added\": {}}]',22,2),(18,'2024-01-15 18:58:38.121153','1','Donde la Estética es un Arte',1,'[{\"added\": {}}]',23,2),(19,'2024-01-15 19:00:55.062965','1','Transformando Sueños en Realidad Estética',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',23,2),(20,'2024-01-15 19:02:32.628576','1','Donde la Belleza se Convierte en Arte',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',23,2),(21,'2024-01-15 19:56:57.733419','2','Descubre el Equilibrio Perfecto entre Ciencia y Estética.',1,'[{\"added\": {}}]',23,2),(22,'2024-01-15 20:02:44.042403','3','Transformando Sueños, Creando Belleza',1,'[{\"added\": {}}]',23,2),(23,'2024-01-15 20:03:08.401432','2','Descubre el Equilibrio Perfecto entre Ciencia y Estética.',2,'[{\"changed\": {\"fields\": [\"Is whatsapp enabled\"]}}]',23,2),(24,'2024-01-15 20:03:12.680980','3','Transformando Sueños, Creando Belleza',2,'[{\"changed\": {\"fields\": [\"Is whatsapp enabled\"]}}]',23,2),(25,'2024-01-15 20:03:15.506069','3','Transformando Sueños, Creando Belleza',2,'[{\"changed\": {\"fields\": [\"Is whatsapp enabled\"]}}]',23,2),(26,'2024-01-15 20:19:50.125193','2','SectionSelection object (2)',1,'[{\"added\": {}}]',22,2),(27,'2024-01-15 20:26:11.009174','3','SectionSelection object (3)',1,'[{\"added\": {}}]',22,2),(28,'2024-01-15 20:29:30.256916','1','Tratamientos',1,'[{\"added\": {}}]',15,2),(29,'2024-01-15 22:11:55.813933','1','Medicina Facial | mateo',1,'[{\"added\": {}}]',17,2),(30,'2024-01-15 22:15:14.361829','1','Medicina Facial | mateo',2,'[{\"changed\": {\"fields\": [\"Snippet\"]}}]',17,2),(31,'2024-01-15 22:17:40.615745','2','Medicina Corporal | mateo',1,'[{\"added\": {}}]',17,2),(32,'2024-01-15 22:17:55.427817','1','Medicina Facial | mateo',2,'[{\"changed\": {\"fields\": [\"Title tag\"]}}]',17,2),(33,'2024-01-15 22:26:45.956311','3','Estetica Facial | mateo',1,'[{\"added\": {}}]',17,2),(34,'2024-01-15 22:27:26.256582','4','Estética Corporal | mateo',1,'[{\"added\": {}}]',17,2),(35,'2024-01-15 22:32:27.337889','1','Tratamientos',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',15,2),(36,'2024-01-15 22:33:45.193123','1','Promociones',1,'[{\"added\": {}}]',10,2),(37,'2024-01-15 22:34:21.096017','4','SectionSelection object (4)',1,'[{\"added\": {}}]',22,2),(38,'2024-01-15 22:36:35.628748','1','Renueva tu Rostro | mateo',1,'[{\"added\": {}}]',12,2),(39,'2024-01-15 22:37:08.937539','2','Esculpe tu Figura | mateo',1,'[{\"added\": {}}]',12,2),(40,'2024-01-15 22:37:35.296648','3','Juventud Radiante | mateo',1,'[{\"added\": {}}]',12,2),(41,'2024-01-15 22:41:18.456586','4','Piel Firme, Cuerpo Esbelto | mateo',1,'[{\"added\": {}}]',12,2),(42,'2024-01-15 22:41:42.468132','5','Pack Belleza Completa | mateo',1,'[{\"added\": {}}]',12,2),(43,'2024-01-15 22:42:22.665203','6','Descubre la Armonía Facial | mateo',1,'[{\"added\": {}}]',12,2),(44,'2024-01-15 22:43:15.151048','4','SectionSelection object (4)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',22,2),(45,'2024-01-15 22:43:29.610393','5','SectionSelection object (5)',1,'[{\"added\": {}}]',22,2),(46,'2024-01-16 00:31:10.717663','1','Transforma tu Belleza',1,'[{\"added\": {}}]',19,2),(47,'2024-01-16 00:33:41.007410','2','Asesorate con Expertos',1,'[{\"added\": {}}]',19,2),(48,'2024-01-16 00:33:48.798360','1','Transforma tu Belleza',2,'[]',19,2),(49,'2024-01-16 00:33:53.853158','2','Asesorate con Expertos',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,2),(50,'2024-01-16 00:34:52.730791','3','Descubre tu Potencial de Belleza',1,'[{\"added\": {}}]',19,2),(51,'2024-01-16 00:34:58.476812','2','Asesorate con Expertos',2,'[]',19,2),(52,'2024-01-16 00:35:04.037566','3','Descubre tu Potencial de Belleza',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,2),(53,'2024-01-16 16:37:37.502690','3','Transformando Sueños, Creando Belleza',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',23,2),(54,'2024-01-16 16:38:00.997514','3','Transformando Sueños, Creando Belleza',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',23,2),(55,'2024-01-16 16:48:58.299113','3','Transformando Sueños, Creando Belleza',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',23,2),(56,'2024-01-16 16:49:58.994089','3','Transformando Sueños, Creando Belleza',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',23,2),(57,'2024-01-16 17:07:46.816604','3','Transformando Sueños, Creando Belleza',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',23,2),(58,'2024-01-16 17:09:39.334935','3','Transformando Sueños, Creando Belleza',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',23,2),(59,'2024-01-16 17:13:57.819594','3','Transformando Sueños, Creando Belleza',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',23,2),(60,'2024-01-16 19:33:05.396085','1','Header',1,'[{\"added\": {}}]',24,2),(61,'2024-01-16 19:34:18.335657','1','Header',2,'[{\"changed\": {\"fields\": [\"Logo text\"]}}]',24,2),(62,'2024-01-16 19:34:46.382812','1','Header',2,'[{\"changed\": {\"fields\": [\"Logo text\"]}}]',24,2),(63,'2024-01-16 19:35:18.935049','1','Header',2,'[{\"changed\": {\"fields\": [\"Logo text\"]}}]',24,2),(64,'2024-01-16 19:36:16.066914','1','Header',2,'[{\"changed\": {\"fields\": [\"Is whatsapp enabled\", \"Whats number\", \"Whats message\"]}}]',24,2),(65,'2024-01-16 19:36:25.034533','1','Header',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',24,2),(66,'2024-01-16 19:36:46.455916','1','Header',2,'[{\"changed\": {\"fields\": [\"Logo image\"]}}]',24,2),(67,'2024-01-16 19:37:28.228302','1','Header',2,'[]',24,2),(68,'2024-01-16 19:38:53.878050','6','SectionSelection object (6)',1,'[{\"added\": {}}]',22,2),(69,'2024-01-16 19:38:58.719638','6','SectionSelection object (6)',2,'[]',22,2),(70,'2024-01-16 19:39:11.180844','7','SectionSelection object (7)',1,'[{\"added\": {}}]',22,2),(71,'2024-01-16 19:39:27.457258','8','SectionSelection object (8)',1,'[{\"added\": {}}]',22,2),(72,'2024-01-16 19:39:43.437615','9','SectionSelection object (9)',1,'[{\"added\": {}}]',22,2),(73,'2024-01-16 19:39:58.254730','10','SectionSelection object (10)',1,'[{\"added\": {}}]',22,2),(74,'2024-01-16 19:40:09.180355','11','SectionSelection object (11)',1,'[{\"added\": {}}]',22,2),(75,'2024-01-16 19:40:52.577446','3','Descubre tu Potencial de Belleza',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',19,2),(76,'2024-01-16 19:47:22.917276','1','Header',2,'[{\"changed\": {\"fields\": [\"Logo image\"]}}]',24,2),(77,'2024-01-16 20:00:25.368716','1','Header',2,'[{\"changed\": {\"fields\": [\"Logo image\"]}}]',24,2),(78,'2024-01-19 18:19:39.806637','3','Transformando Sueños, Creando Belleza',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',23,2),(79,'2024-01-19 18:33:33.523921','2','SectionSelection object (2)',2,'[{\"changed\": {\"fields\": [\"Is visible\"]}}]',22,2),(80,'2024-01-19 19:22:23.535813','2','Asesorate con Profesionales',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',19,2),(81,'2024-01-19 19:22:45.765296','3','Descubre tu Potencial de Belleza',2,'[]',19,2),(82,'2024-01-19 19:23:13.544912','1','Transforma tu Belleza',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',19,2),(83,'2024-01-19 19:23:22.251550','2','Asesorate con Profesionales',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',19,2),(84,'2024-01-19 19:23:40.821176','1','Transforma tu Belleza',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',19,2),(85,'2024-01-19 19:29:28.700823','1','Transforma tu Belleza',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',19,2),(86,'2024-01-19 19:31:22.760388','2','Asesorate con Profesionales',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',19,2),(87,'2024-01-19 19:31:47.260969','2','Asesorate con Profesionales',2,'[{\"changed\": {\"fields\": [\"Is mainpage enabled\"]}}]',19,2),(88,'2024-01-19 19:34:37.066963','1','Transforma tu Belleza',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',19,2),(89,'2024-01-19 19:34:48.462844','3','Descubre tu Potencial de Belleza',2,'[{\"changed\": {\"fields\": [\"Background image\", \"Is mainpage enabled\"]}}]',19,2),(90,'2024-01-20 03:18:42.733741','12','section - promociones - detalle',1,'[{\"added\": {}}]',21,1),(91,'2024-01-20 03:19:05.014375','13','section - servicios - detalle',1,'[{\"added\": {}}]',21,1),(92,'2024-01-20 03:19:56.786069','2','SectionSelection object (2)',2,'[{\"changed\": {\"fields\": [\"Nav enabled\"]}}]',22,1),(93,'2024-01-20 03:21:08.332860','12','SectionSelection object (12)',1,'[{\"added\": {}}]',22,1),(94,'2024-01-20 03:21:26.315310','12','SectionSelection object (12)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',22,1),(95,'2024-01-20 03:21:42.508784','13','SectionSelection object (13)',1,'[{\"added\": {}}]',22,1),(96,'2024-01-20 03:24:21.938264','6','SectionSelection object (6)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',22,1),(97,'2024-01-20 03:24:32.841762','9','SectionSelection object (9)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',22,1),(98,'2024-01-20 03:25:46.065378','3','Descubre tu Potencial de Belleza',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(99,'2024-01-20 03:26:04.181623','2','Asesorate con Profesionales',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(100,'2024-01-20 03:26:20.583865','1','Transforma tu Belleza',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(101,'2024-01-20 03:31:33.467794','5','Pack Belleza Completa | mateo',2,'[{\"changed\": {\"fields\": [\"Call2action\"]}}]',12,1),(102,'2024-01-20 04:20:09.163932','3','SectionSelection object (3)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',22,1),(103,'2024-01-20 04:20:21.807206','4','SectionSelection object (4)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',22,1),(104,'2024-01-20 13:22:07.566451','1','Medicina Facial | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',17,2),(105,'2024-01-20 15:16:13.117789','1','Medicina Facial | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\", \"Call2action\"]}}]',17,2),(106,'2024-01-20 15:21:59.837053','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',12,2),(107,'2024-01-20 16:14:58.016966','1','Donde la Belleza se Convierte en Arte',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',23,2),(108,'2024-01-20 16:23:50.291238','2','SectionSelection object (2)',2,'[{\"changed\": {\"fields\": [\"Is visible\"]}}]',22,2),(109,'2024-01-20 16:24:09.740770','2','SectionSelection object (2)',2,'[{\"changed\": {\"fields\": [\"Nav enabled\"]}}]',22,2),(110,'2024-01-20 16:24:27.944549','2','SectionSelection object (2)',2,'[{\"changed\": {\"fields\": [\"Is visible\", \"Nav enabled\"]}}]',22,2),(111,'2024-01-20 16:24:34.990410','1','SectionSelection object (1)',2,'[]',22,2),(112,'2024-01-20 18:54:45.172739','1','Facial',1,'[{\"added\": {}}]',14,2),(113,'2024-01-20 18:54:51.059543','2','Corporal',1,'[{\"added\": {}}]',14,2),(114,'2024-01-20 18:55:10.046478','1','Facial',1,'[{\"added\": {}}]',16,2),(115,'2024-01-20 18:55:15.603809','2','Corporal',1,'[{\"added\": {}}]',16,2),(116,'2024-01-20 18:56:14.433667','1','FIllers | mateo',2,'[{\"changed\": {\"fields\": [\"Title\", \"Title tag\", \"Category\", \"Tags\"]}}]',17,2),(117,'2024-01-20 18:56:22.457485','3','Estetica Facial | mateo',3,'',17,2),(118,'2024-01-20 18:56:28.871514','2','Medicina Corporal | mateo',3,'',17,2),(119,'2024-01-20 18:56:33.913993','4','Estética Corporal | mateo',3,'',17,2),(120,'2024-01-20 18:56:46.535799','1','Facial',3,'',14,2),(121,'2024-01-20 18:56:51.486056','2','Corporal',3,'',14,2),(122,'2024-01-20 18:56:53.352001','1','FIllers | mateo',2,'[]',17,2),(123,'2024-01-20 18:57:13.506680','1','Fillers | mateo',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',17,2),(124,'2024-01-20 19:59:14.588316','3','Facial',1,'[{\"added\": {}}]',14,2),(125,'2024-01-20 20:00:28.182105','2','Flacidez',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',16,2),(126,'2024-01-20 20:00:31.991386','1','Facial',3,'',16,2),(127,'2024-01-20 20:04:24.247251','1','Arrugas y Surcos | mateo',2,'[{\"changed\": {\"fields\": [\"Title\", \"Title tag\", \"Category\"]}}]',17,2),(128,'2024-01-20 20:07:21.711934','3','Manchas',1,'[{\"added\": {}}]',16,2),(129,'2024-01-20 20:07:48.326296','5','Manchas | mateo',1,'[{\"added\": {}}]',17,2),(130,'2024-01-20 20:08:06.668247','5','Manchas | mateo',2,'[]',17,2),(131,'2024-01-20 20:08:12.536934','1','Arrugas y Surcos | mateo',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',17,2),(132,'2024-01-20 20:08:23.742022','5','Manchas | mateo',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',17,2),(133,'2024-01-20 20:08:36.618505','1','Arrugas y Surcos | mateo',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',17,2),(134,'2024-01-20 20:09:14.515161','1','Arrugas y Surcos | mateo',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',17,2),(135,'2024-01-20 20:11:05.170180','2','Flacidez',3,'',16,2),(136,'2024-01-20 20:11:08.884983','3','Manchas',3,'',16,2),(137,'2024-01-20 20:12:00.872351','4','Corporal',1,'[{\"added\": {}}]',14,2),(138,'2024-01-20 20:12:37.588069','4','Flaccidez',1,'[{\"added\": {}}]',16,2),(139,'2024-01-20 20:13:11.397794','6','Flaccidez | mateo',1,'[{\"added\": {}}]',17,2),(140,'2024-01-20 20:13:24.002370','5','Manchas',1,'[{\"added\": {}}]',16,2),(141,'2024-01-20 20:13:26.466546','5','Manchas | mateo',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',17,2),(142,'2024-01-20 20:13:41.747649','1','Arrugas y Surcos | mateo',2,'[]',17,2),(143,'2024-01-20 20:14:02.213360','6','Arrugas',1,'[{\"added\": {}}]',16,2),(144,'2024-01-20 20:14:06.712980','7','Surcos',1,'[{\"added\": {}}]',16,2),(145,'2024-01-20 20:14:09.740388','1','Arrugas y Surcos | mateo',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',17,2),(146,'2024-01-20 20:14:19.504159','1','Arrugas y Surcos | mateo',2,'[]',17,2),(147,'2024-01-20 20:21:09.446577','8','Inyectables',1,'[{\"added\": {}}]',16,2),(148,'2024-01-20 20:21:25.757248','1','Fillers | mateo',2,'[{\"changed\": {\"fields\": [\"Title\", \"Title tag\", \"Body\", \"Tags\"]}}]',17,2),(149,'2024-01-20 20:24:17.177650','5','Toxina Botulínica | mateo',2,'[{\"changed\": {\"fields\": [\"Title\", \"Title tag\", \"Tags\", \"Call2action\"]}}]',17,2),(150,'2024-01-20 20:25:25.379204','9','Sudoración Excesiva',1,'[{\"added\": {}}]',16,2),(151,'2024-01-20 20:25:50.772683','5','Toxina Botulínica | mateo',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',17,2),(152,'2024-01-20 20:26:34.112419','10','Calidad de la Piel',1,'[{\"added\": {}}]',16,2),(153,'2024-01-20 20:26:55.371685','10','Calidad de la Piel',3,'',16,2),(154,'2024-01-20 20:27:41.560800','11','Remodelación Facial',1,'[{\"added\": {}}]',16,2),(155,'2024-01-20 20:28:08.377606','12','Calidad de la Piel',1,'[{\"added\": {}}]',16,2),(156,'2024-01-20 20:28:22.877131','6','Bioestimuladores | mateo',2,'[{\"changed\": {\"fields\": [\"Title\", \"Title tag\", \"Tags\"]}}]',17,2),(157,'2024-01-20 20:28:53.994830','6','Bioestimuladores | mateo',2,'[]',17,2),(158,'2024-01-20 20:29:21.502738','1','Fillers | mateo',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',17,2),(159,'2024-01-20 20:29:43.234277','13','Contorno Facial',1,'[{\"added\": {}}]',16,2),(160,'2024-01-20 20:29:54.586769','1','Fillers | mateo',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',17,2),(161,'2024-01-20 20:30:16.779744','1','Fillers | mateo',2,'[]',17,2),(162,'2024-01-20 20:30:44.770584','6','Bioestimuladores | mateo',2,'[]',17,2),(163,'2024-01-20 20:34:17.679312','6','Bioestimuladores | mateo',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',17,2),(164,'2024-01-20 20:37:37.595059','14','Estética',1,'[{\"added\": {}}]',16,2),(165,'2024-01-20 20:37:49.684018','15','Facial',1,'[{\"added\": {}}]',16,2),(166,'2024-01-20 20:37:53.762848','16','Corporal',1,'[{\"added\": {}}]',16,2),(167,'2024-01-20 20:38:06.050031','7','Alquimia | mateo',1,'[{\"added\": {}}]',17,2),(168,'2024-01-20 20:39:34.006056','17','Capilar',1,'[{\"added\": {}}]',16,2),(169,'2024-01-20 20:39:43.344907','18','Medicina',1,'[{\"added\": {}}]',16,2),(170,'2024-01-20 20:39:59.598011','19','Adiposidad Localizada',1,'[{\"added\": {}}]',16,2),(171,'2024-01-20 20:40:05.198454','20','Celulitis',1,'[{\"added\": {}}]',16,2),(172,'2024-01-20 20:40:08.419764','21','Celulitis',1,'[{\"added\": {}}]',16,2),(173,'2024-01-20 20:40:30.687931','22','Alopecia',1,'[{\"added\": {}}]',16,2),(174,'2024-01-20 20:40:42.441534','8','Mesoterapia y Fosfatidilcolina | mateo',1,'[{\"added\": {}}]',17,2),(175,'2024-01-20 20:40:49.486194','23','Acne',1,'[{\"added\": {}}]',16,2),(176,'2024-01-20 20:41:09.855922','24','Poros dilatados',1,'[{\"added\": {}}]',16,2),(177,'2024-01-20 20:41:41.541135','7','Alquimia | mateo',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',17,2),(178,'2024-01-20 20:41:54.184844','24','Poros Dilatados',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',16,2),(179,'2024-01-20 20:43:37.214632','25','Modelado Corporal',1,'[{\"added\": {}}]',16,2),(180,'2024-01-20 20:43:50.778133','9','Unyque | mateo',1,'[{\"added\": {}}]',17,2),(181,'2024-01-20 20:45:17.150926','8','Mesoterapia y Fosfatidilcolina | mateo',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',17,2),(182,'2024-01-20 20:45:24.915431','20','Celulitis',3,'',16,2),(183,'2024-01-20 20:46:53.247455','10','Endymed Facial y Parpados | mateo',1,'[{\"added\": {}}]',17,2),(184,'2024-01-20 20:48:20.470405','11','HIFU | mateo',1,'[{\"added\": {}}]',17,2),(185,'2024-01-20 20:49:18.746525','26','Cicatrices',1,'[{\"added\": {}}]',16,2),(186,'2024-01-20 20:49:29.115991','27','Estrías',1,'[{\"added\": {}}]',16,2),(187,'2024-01-20 20:50:06.241241','12','Dermapen | mateo',1,'[{\"added\": {}}]',17,2),(188,'2024-01-20 20:50:29.596603','8','Mesoterapia y Fosfatidilcolina | mateo',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',17,2),(189,'2024-01-20 20:51:14.835247','28','Rosácea',1,'[{\"added\": {}}]',16,2),(190,'2024-01-20 20:52:29.776143','13','Limpieza de Cutis | mateo',1,'[{\"added\": {}}]',17,2),(191,'2024-01-20 20:52:41.692887','5','Toxina Botulínica | mateo',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',17,2),(192,'2024-01-20 20:53:47.166350','29','Flebologia',1,'[{\"added\": {}}]',16,2),(193,'2024-01-20 20:54:44.950164','30','Arañitas',1,'[{\"added\": {}}]',16,2),(194,'2024-01-20 20:54:49.295472','14','Escleroterapia | mateo',1,'[{\"added\": {}}]',17,2),(195,'2024-01-20 20:55:49.022029','31','Control de Lunares',1,'[{\"added\": {}}]',16,2),(196,'2024-01-20 20:55:53.570720','15','Dermatología | mateo',1,'[{\"added\": {}}]',17,2),(197,'2024-01-20 20:56:26.991786','32','Embarazadas',1,'[{\"added\": {}}]',16,2),(198,'2024-01-20 20:56:46.800102','33','Pre y Post Quirúrgico',1,'[{\"added\": {}}]',16,2),(199,'2024-01-20 20:56:52.087521','16','Drenaje Linfático Manual | mateo',1,'[{\"added\": {}}]',17,2),(200,'2024-01-20 20:57:34.013277','1','Fillers | mateo',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',17,2),(201,'2024-01-20 20:58:22.027123','13','Limpieza de Cutis✨ | mateo',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',17,2),(202,'2024-01-20 20:59:03.807572','13','Limpieza de Cutis | mateo',2,'[{\"changed\": {\"fields\": [\"Title\", \"Body\", \"Snippet\"]}}]',17,2),(203,'2024-01-20 21:00:05.739463','13','Limpieza de Cutis | mateo',2,'[{\"changed\": {\"fields\": [\"Snippet\"]}}]',17,2),(204,'2024-01-20 21:00:24.585732','13','Limpieza de Cutis | mateo',2,'[{\"changed\": {\"fields\": [\"Snippet\"]}}]',17,2),(205,'2024-01-21 12:47:42.494432','1','Facial',1,'[{\"added\": {}}]',9,1),(206,'2024-01-21 15:25:01.539620','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Body\", \"Snippet\"]}}]',12,2),(207,'2024-01-21 15:27:56.633616','2','Esculpe tu Figura | mateo',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',12,2),(208,'2024-01-21 15:28:06.270211','2','Esculpe tu Figura | mateo',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',12,2),(209,'2024-01-21 15:29:18.220414','2','Esculpe tu Figura | mateo',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',12,2),(210,'2024-01-21 17:41:55.312991','2','Esculpe tu Figura | mateo',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',12,2),(211,'2024-01-21 17:43:51.147209','3','Juventud Radiante | mateo',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',12,2),(212,'2024-01-21 17:44:07.637529','3','Juventud Radiante | mateo',2,'[]',12,2),(213,'2024-01-21 17:45:52.369851','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',12,2),(214,'2024-01-21 17:46:05.727636','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[]',12,2),(215,'2024-01-21 17:48:17.241983','5','Pack Belleza Completa | mateo',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',12,2),(216,'2024-01-21 19:09:37.332997','1','Renueva tu Rostro | mateo',2,'[]',12,2),(217,'2024-01-21 19:10:37.927275','4','Corporal',3,'',14,2),(218,'2024-01-21 19:10:37.977225','3','Facial',3,'',14,2),(219,'2024-01-21 19:10:44.805736','5','Medicina',1,'[{\"added\": {}}]',14,2),(220,'2024-01-21 19:10:53.997729','6','Estética',1,'[{\"added\": {}}]',14,2),(221,'2024-01-21 19:10:58.960876','7','Facial',1,'[{\"added\": {}}]',14,2),(222,'2024-01-21 19:11:01.965245','8','Corporal',1,'[{\"added\": {}}]',14,2),(223,'2024-01-21 19:11:45.863779','1','Fillers | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\"]}}]',17,2),(224,'2024-01-21 19:12:05.478048','5','Toxina Botulínica | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\"]}}]',17,2),(225,'2024-01-21 19:12:58.587316','6','Bioestimuladores | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\"]}}]',17,2),(226,'2024-01-21 19:15:27.224089','7','Alquimia | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\", \"Tags\"]}}]',17,2),(227,'2024-01-21 19:16:28.911023','8','Mesoterapia y Fosfatidilcolina | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\", \"Tags\"]}}]',17,2),(228,'2024-01-21 19:17:05.783114','9','Unyque | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\", \"Tags\"]}}]',17,2),(229,'2024-01-21 19:17:31.212413','10','Endymed Facial y Parpados | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\", \"Tags\"]}}]',17,2),(230,'2024-01-21 19:17:51.335684','11','HIFU | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\", \"Tags\"]}}]',17,2),(231,'2024-01-21 19:18:18.703073','12','Dermapen | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\", \"Tags\"]}}]',17,2),(232,'2024-01-21 19:18:37.179938','13','Limpieza de Cutis | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\", \"Tags\"]}}]',17,2),(233,'2024-01-21 19:19:05.475654','14','Escleroterapia | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\", \"Tags\"]}}]',17,2),(234,'2024-01-21 19:19:43.927006','15','Dermatología | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\"]}}]',17,2),(235,'2024-01-21 19:20:04.838201','16','Drenaje Linfático Manual | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\", \"Tags\"]}}]',17,2),(236,'2024-01-22 22:59:59.253165','6','Descubre la Armonía Facial | mateo',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',12,2),(237,'2024-01-23 19:48:51.365304','12','SectionSelection object (12)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',22,2),(238,'2024-01-23 19:48:58.496704','8','SectionSelection object (8)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',22,2),(239,'2024-01-23 19:50:51.989865','1','Fillers | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',17,2),(240,'2024-01-23 19:55:36.294712','4','Recupera Tu Juventud con Fillers',1,'[{\"added\": {}}]',19,2),(241,'2024-01-23 19:55:57.837376','1','Fillers | mateo',2,'[{\"changed\": {\"fields\": [\"Body\", \"Snippet\", \"Call2action\"]}}]',17,2),(242,'2024-01-23 20:07:14.183380','5','Descubre la Frescura de tu Rostro con Toxina Botulínica',1,'[{\"added\": {}}]',19,2),(243,'2024-01-23 20:07:18.943386','5','Toxina Botulínica | mateo',2,'[{\"changed\": {\"fields\": [\"Body\", \"Snippet\", \"Call2action\"]}}]',17,2),(244,'2024-01-23 20:12:34.022639','6','Bioestimuladores | mateo',2,'[]',17,2),(245,'2024-01-23 20:36:58.569709','6','Transforma tu Piel con Alquimia Diamond',1,'[{\"added\": {}}]',19,2),(246,'2024-01-23 20:37:06.160119','7','Alquimia | mateo',2,'[{\"changed\": {\"fields\": [\"Body\", \"Snippet\", \"Call2action\"]}}]',17,2),(247,'2024-01-23 21:33:41.075863','8','Mesoterapia | mateo',2,'[{\"changed\": {\"fields\": [\"Title\", \"Title tag\"]}}]',17,2),(248,'2024-01-23 21:34:05.009178','17','Fosfatidilcolina | mateo',1,'[{\"added\": {}}]',17,2),(249,'2024-01-23 21:39:33.909165','7','Transforma tu Piel y Cabello con Mesoterapia',1,'[{\"added\": {}}]',19,2),(250,'2024-01-23 21:39:45.659812','8','Mesoterapia | mateo',2,'[{\"changed\": {\"fields\": [\"Body\", \"Snippet\", \"Call2action\"]}}]',17,2),(251,'2024-01-23 21:55:36.384945','8','Experimenta UNYQUE: La Revolución Estética',1,'[{\"added\": {}}]',19,2),(252,'2024-01-23 21:57:54.177865','9','UNYQUE | mateo',2,'[{\"changed\": {\"fields\": [\"Title\", \"Title tag\", \"Body\", \"Snippet\", \"Call2action\"]}}]',17,2),(253,'2024-01-23 21:58:40.337191','8','SectionSelection object (8)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',22,2),(254,'2024-01-23 21:58:51.161164','12','SectionSelection object (12)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',22,2),(255,'2024-01-23 22:18:05.623886','9','Descubre la Juventud en 3D con ENDYMED',1,'[{\"added\": {}}]',19,2),(256,'2024-01-23 22:18:16.715266','9','Descubre la Juventud en 3D con ENDYMED',2,'[]',19,2),(257,'2024-01-23 22:18:18.089885','10','Endymed Facial y Parpados | mateo',2,'[{\"changed\": {\"fields\": [\"Body\", \"Snippet\", \"Call2action\"]}}]',17,2),(258,'2024-01-23 22:46:22.698247','11','HIFU (Ultrasonido Focalizado de Alta Intensidad) | mateo',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',17,2),(259,'2024-01-23 22:49:02.300481','10','Eleva tu Belleza con HIFU 7D',1,'[{\"added\": {}}]',19,2),(260,'2024-01-23 22:49:06.863471','11','HIFU | mateo',2,'[{\"changed\": {\"fields\": [\"Title\", \"Body\", \"Snippet\", \"Call2action\"]}}]',17,2),(261,'2024-01-23 23:17:44.777281','11','Renueva tu Piel con Dermapen',1,'[{\"added\": {}}]',19,2),(262,'2024-01-23 23:17:48.354104','12','Dermapen | mateo',2,'[{\"changed\": {\"fields\": [\"Body\", \"Snippet\", \"Call2action\"]}}]',17,2),(263,'2024-01-23 23:44:18.006010','12','Renueva tu Piel con Nuestras Limpezas de Cutis',1,'[{\"added\": {}}]',19,2),(264,'2024-01-23 23:44:21.520725','13','Limpieza de Cutis | mateo',2,'[{\"changed\": {\"fields\": [\"Body\", \"Snippet\", \"Call2action\"]}}]',17,2),(265,'2024-01-23 23:45:06.257390','13','Limpieza de Cutis | mateo',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',17,2),(266,'2024-01-24 01:44:20.337737','13','¡Recupera la Belleza y Salud con Escleroterapia!',1,'[{\"added\": {}}]',19,2),(267,'2024-01-24 01:44:24.072561','14','Escleroterapia | mateo',2,'[{\"changed\": {\"fields\": [\"Body\", \"Snippet\", \"Call2action\"]}}]',17,2),(268,'2024-01-24 01:45:07.524590','13','Recupera la Belleza y Salud con Escleroterapia',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',19,2),(269,'2024-01-24 01:45:35.385596','14','Escleroterapia | mateo',2,'[]',17,2),(270,'2024-01-24 13:28:15.991498','14','Logra una Piel Radiante con Nuestra Dermatología Integral en Flebella',1,'[{\"added\": {}}]',19,2),(271,'2024-01-24 13:28:24.697614','15','Dermatología | mateo',2,'[{\"changed\": {\"fields\": [\"Body\", \"Snippet\", \"Call2action\"]}}]',17,2),(272,'2024-01-24 14:05:05.584115','15','Descubre la Calma  Bienestar con el Drenaje Linfático Manual',1,'[{\"added\": {}}]',19,2),(273,'2024-01-24 14:05:12.403532','16','Drenaje Linfático Manual | mateo',2,'[{\"changed\": {\"fields\": [\"Body\", \"Snippet\", \"Call2action\"]}}]',17,2),(274,'2024-01-24 14:23:42.145842','17','Fosfatidilcolina | mateo',2,'[]',17,2),(275,'2024-01-24 14:24:10.464552','1','Fillers | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',17,2),(276,'2024-01-24 14:24:17.328835','1','Fillers | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',17,2),(277,'2024-01-24 14:28:39.389257','4','Recupera Tu Juventud con Fillers',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',19,2),(278,'2024-01-24 14:28:43.013845','1','Fillers | mateo',2,'[]',17,2),(279,'2024-01-24 14:31:17.695699','4','Recupera Tu Juventud con Fillers',2,'[{\"changed\": {\"fields\": [\"Background image\"]}}]',19,2),(280,'2024-01-24 14:31:22.884709','1','Fillers | mateo',2,'[]',17,2),(281,'2024-01-24 14:33:15.137182','1','Fillers | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',17,2),(282,'2024-01-24 14:34:05.618597','1','Fillers | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',17,2),(283,'2024-01-24 15:44:18.741716','17','Fosfatidilcolina | mateo',3,'',17,2),(284,'2024-01-24 16:01:34.551522','7','Descubre una Piel Renovada con Mesoterapia y Fosfatidilcolina',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',19,2),(285,'2024-01-24 16:01:55.748738','8','Mesoterapia y Fosfatidilcolina | mateo',2,'[{\"changed\": {\"fields\": [\"Title\", \"Title tag\", \"Body\", \"Snippet\"]}}]',17,2),(286,'2024-01-24 16:48:52.372319','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Show title\"]}}]',12,1),(287,'2024-01-24 16:50:54.599941','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Show meta top\", \"Show meta bottom\"]}}]',12,1),(288,'2024-01-24 16:52:25.459784','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Show header image\"]}}]',12,1),(289,'2024-01-24 16:53:31.896087','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Show description\"]}}]',12,1),(290,'2024-01-24 17:01:54.122143','1','<h3>Radiofrecuencia + Diamond Peel</h3>',1,'[{\"added\": {}}]',25,1),(291,'2024-01-24 17:06:11.693166','2','<h3Alquimia Diamond + Flebicare</h3>',1,'[{\"added\": {}}]',25,1),(292,'2024-01-24 17:08:14.050950','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Is postcard enabled\", \"Postcard\", \"Category2\"]}}]',12,1),(293,'2024-01-24 17:11:12.264881','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Show title\", \"Show meta top\", \"Show description\"]}}]',12,1),(294,'2024-01-24 17:13:00.464829','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Call2action\"]}}]',12,1),(295,'2024-01-24 17:17:45.585275','13','Recupera la Belleza y Salud con Escleroterapia',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(296,'2024-01-24 17:21:13.211422','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Show meta top\", \"Show meta bottom\"]}}]',12,1),(297,'2024-01-24 17:22:49.006978','2','...',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',25,1),(298,'2024-01-24 17:23:06.018008','1','...',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',25,1),(299,'2024-01-24 17:23:55.782963','2','...',2,'[{\"changed\": {\"fields\": [\"Show meta bottom\"]}}]',25,1),(300,'2024-01-24 17:24:05.067930','1','...',2,'[{\"changed\": {\"fields\": [\"Show meta bottom\"]}}]',25,1),(301,'2024-01-24 17:28:21.258031','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Is postcard enabled\"]}}]',12,1),(302,'2024-01-24 17:28:39.329339','13','Limpieza de Cutis | mateo',2,'[]',17,2),(303,'2024-01-24 17:29:27.460462','14','Escleroterapia | mateo',2,'[]',17,2),(304,'2024-01-24 17:29:36.895004','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Is postcard enabled\", \"Postcard\"]}}]',12,1),(305,'2024-01-24 17:31:46.030638','15','Dermatología | mateo',2,'[]',17,2),(306,'2024-01-24 17:35:45.563742','16','Drenaje Linfático Manual | mateo',2,'[]',17,2),(307,'2024-01-24 18:44:22.829808','16','Revitaliza tu Piel con Bioestimuladores',1,'[{\"added\": {}}]',19,2),(308,'2024-01-24 18:48:23.764456','6','Bioestimuladores | mateo',2,'[{\"changed\": {\"fields\": [\"Body\", \"Snippet\", \"Call2action\"]}}]',17,2),(309,'2024-01-25 02:26:02.506730','2','Opción 1',2,'[{\"changed\": {\"fields\": [\"Title\", \"Show title\"]}}]',25,1),(310,'2024-01-25 02:26:43.751648','1','Opción 2',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',25,1),(311,'2024-01-25 02:30:43.702620','2','Opción 1',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,1),(312,'2024-01-25 02:31:02.402588','1','Opción 2',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,1),(313,'2024-01-25 02:31:53.733132','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,1),(314,'2024-01-25 13:50:43.967645','11','SectionSelection object (11)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',22,2),(315,'2024-01-25 13:50:53.465057','11','SectionSelection object (11)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',22,2),(316,'2024-01-25 13:51:34.529129','11','SectionSelection object (11)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',22,2),(317,'2024-01-25 13:51:46.507938','13','SectionSelection object (13)',2,'[{\"changed\": {\"fields\": [\"Sort order\"]}}]',22,2),(318,'2024-01-25 13:59:55.935883','2','Opción 1',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',25,2),(319,'2024-01-25 14:02:52.739458','2','Limpieza de Cutis ✨flebideep✨',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',25,2),(320,'2024-01-25 14:06:08.428833','2','Limpieza de Cutis ✨flebideep✨',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,2),(321,'2024-01-26 19:18:00.550840','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Show header image\"]}}]',12,2),(322,'2024-01-26 19:18:37.535333','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\", \"Show header image\"]}}]',12,2),(323,'2024-01-26 19:19:45.130206','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Show header image\"]}}]',12,2),(324,'2024-01-26 19:20:07.411497','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Show header image\"]}}]',12,2),(325,'2024-01-26 19:21:58.632494','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',12,2),(326,'2024-01-26 19:24:50.316119','5','Toxina Botulínica | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',17,2),(327,'2024-01-26 19:26:08.408373','1','Fillers | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',17,2),(328,'2024-01-26 19:31:13.908395','1','Header',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',24,1),(329,'2024-01-26 19:40:09.914749','5','Toxina Botulínica | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',17,2),(330,'2024-01-26 19:41:33.649903','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',12,2),(331,'2024-01-26 19:45:37.085972','13','Limpieza de Cutis | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',17,2),(332,'2024-01-26 19:47:19.840310','15','Dermatología | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',17,2),(333,'2024-01-26 19:54:05.178966','1','Fillers | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',17,2),(334,'2024-01-26 20:18:22.267894','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',12,2),(335,'2024-01-26 20:18:49.160256','6','Descubre la Armonía Facial | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\", \"Show header image\"]}}]',12,2),(336,'2024-01-26 20:21:48.464530','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',12,2),(337,'2024-01-26 20:22:59.451880','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',12,2),(338,'2024-01-26 20:23:24.492621','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',12,2),(339,'2024-01-26 20:31:57.426822','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',12,2),(340,'2024-01-26 20:39:31.551561','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',12,2),(341,'2024-01-26 20:45:33.446556','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',12,2),(342,'2024-01-26 20:49:46.859121','2','Esculpe tu Figura | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\", \"Show header image\"]}}]',12,2),(343,'2024-01-26 20:54:33.791470','3','Juventud Radiante | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',12,2),(344,'2024-01-26 20:55:41.072952','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',12,2),(345,'2024-01-26 20:55:54.268134','3','Juventud Radiante | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',12,2),(346,'2024-01-26 20:59:51.477057','5','Pack Belleza Completa | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\", \"Show header image\"]}}]',12,2),(347,'2024-01-26 21:00:55.981114','5','Pack Belleza Completa | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',12,2),(348,'2024-01-26 21:08:37.048441','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[{\"changed\": {\"fields\": [\"Header image\", \"Show header image\"]}}]',12,2),(349,'2024-01-28 14:50:06.210407','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[{\"changed\": {\"fields\": [\"Show meta top\", \"Show description\", \"Is postcard enabled\"]}}]',12,2),(350,'2024-01-28 14:53:18.771270','3','HIFU 7D',1,'[{\"added\": {}}]',25,2),(351,'2024-01-28 14:53:45.498302','3','HIFU 7D',2,'[]',25,2),(352,'2024-01-28 14:54:28.315310','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,2),(353,'2024-01-28 14:55:28.786507','3','HIFU 7D',2,'[]',25,2),(354,'2024-01-28 14:55:43.674107','2','Limpieza de Cutis ✨flebideep✨',2,'[]',25,2),(355,'2024-01-28 14:57:58.140173','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[{\"changed\": {\"fields\": [\"Show title\", \"Category2\"]}}]',12,2),(356,'2024-01-28 14:58:36.222318','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,2),(357,'2024-01-28 14:59:10.917280','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,2),(358,'2024-01-28 14:59:53.018818','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,2),(359,'2024-01-28 18:44:23.959099','4','Diamond Peel + Radiofrecuencia',1,'[{\"added\": {}}]',25,2),(360,'2024-01-28 18:46:21.183144','5','Pack Belleza Completa | mateo',2,'[{\"changed\": {\"fields\": [\"Show title\", \"Show meta top\", \"Show description\", \"Is postcard enabled\", \"Postcard\", \"Call2action\"]}}]',12,2),(361,'2024-01-28 19:01:17.913034','4','Diamond + Radiofrecuencia Facial',2,'[{\"changed\": {\"fields\": [\"Title\", \"Header image\"]}}]',25,2),(362,'2024-01-28 19:01:45.166342','4','Diamond + Radiofrecuencia Facial',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,2),(363,'2024-01-28 19:02:40.872295','4','Diamond + Radiofrecuencia Facial',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,2),(364,'2024-01-28 19:04:15.654152','3','HIFU 7D',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,2),(365,'2024-01-28 19:04:46.582281','2','Limpieza de Cutis ✨flebideep✨',3,'',25,2),(366,'2024-01-28 19:04:53.889990','1','Opción 2',3,'',25,2),(367,'2024-01-28 19:26:56.057116','5','EndyMed Parpados',1,'[{\"added\": {}}]',25,2),(368,'2024-01-28 19:28:55.637956','5','Pack Belleza Completa | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,2),(369,'2024-01-28 19:29:47.036927','5','EndyMed Parpados',2,'[{\"changed\": {\"fields\": [\"Available quantity\", \"Background color\"]}}]',25,2),(370,'2024-01-28 19:34:39.509844','3','HIFU 7D',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',25,2),(371,'2024-01-28 20:09:53.181174','6','UNYQUE HImFU o CRIO',1,'[{\"added\": {}}]',25,2),(372,'2024-01-28 20:11:04.971898','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,2),(373,'2024-01-28 20:11:22.143372','2','Esculpe tu Figura | mateo',2,'[{\"changed\": {\"fields\": [\"Show title\", \"Show meta top\", \"Show description\", \"Is postcard enabled\", \"Postcard\"]}}]',12,2),(374,'2024-01-28 20:11:29.598095','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[]',12,2),(375,'2024-01-28 20:12:20.153640','6','UNYQUE HImFU o CRIO',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,2),(376,'2024-01-28 20:39:36.784718','7','Lipocavitacion + Radiofrecuencia Tripolar',1,'[{\"added\": {}}]',25,2),(377,'2024-01-28 20:39:56.610071','2','Esculpe tu Figura | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,2),(378,'2024-01-28 20:40:49.548628','7','Lipocavitacion + Radiofrecuencia Tripolar',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,2),(379,'2024-01-28 21:37:53.008089','8','Masaje Reductor Completo',1,'[{\"added\": {}}]',25,2),(380,'2024-01-28 21:38:16.147803','3','Juventud Radiante | mateo',2,'[{\"changed\": {\"fields\": [\"Show title\", \"Show meta top\", \"Show header image\"]}}]',12,2),(381,'2024-01-28 21:38:37.377348','2','Esculpe tu Figura | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,2),(382,'2024-01-28 21:39:32.049460','8','Masaje Reductor Completo',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,2),(383,'2024-01-28 21:56:21.037429','9','Alquimia + Limpieza de Cutis Express',1,'[{\"added\": {}}]',25,2),(384,'2024-01-28 21:57:00.063529','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Show title\", \"Show description\", \"Postcard\", \"Call2action\"]}}]',12,2),(385,'2024-01-28 22:00:16.384408','9','Alquimia + Limpieza de Cutis Express',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,2),(386,'2024-01-28 22:15:35.715340','10','Radiofrecuencia Húmeda o Tripolar',1,'[{\"added\": {}}]',25,2),(387,'2024-01-28 22:16:10.267024','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,2),(388,'2024-01-28 22:17:00.741994','10','Radiofrecuencia Húmeda o Tripolar',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,2),(389,'2024-01-28 22:27:10.870160','11','HIFU 7D en Peribucal o Parpados',1,'[{\"added\": {}}]',25,2),(390,'2024-01-28 22:27:26.278349','5','Pack Belleza Completa | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,2),(391,'2024-01-28 22:28:30.652794','11','HIFU 7D en Peribucal o Parpados',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,2),(392,'2024-01-28 22:43:37.770055','12','UNYQUE Refreeze Gluteos y Bitro',1,'[{\"added\": {}}]',25,2),(393,'2024-01-28 22:43:53.314148','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,2),(394,'2024-01-28 22:44:04.341950','2','Esculpe tu Figura | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,2),(395,'2024-01-28 22:44:11.583836','6','Descubre la Armonía Facial | mateo',2,'[]',12,2),(396,'2024-01-28 22:45:44.084577','12','UNYQUE Refreeze Gluteos y Bitro',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,2),(397,'2024-01-29 18:30:36.158415','13','Drenaje Linfático Manual',1,'[{\"added\": {}}]',25,2),(398,'2024-01-29 18:32:50.240254','2','Esculpe tu Figura | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,2),(399,'2024-01-29 18:45:48.861563','13','Drenaje Linfático Manual',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,2),(400,'2024-01-29 18:56:59.306048','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[]',12,2),(401,'2024-01-29 18:57:37.801082','14','HIFU Glúteos',1,'[{\"added\": {}}]',25,2),(402,'2024-01-29 18:58:17.118816','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,2),(403,'2024-01-29 18:59:12.963731','14','HIFU Glúteos',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,2),(404,'2024-01-29 19:16:27.483022','15','Onda de Choque',1,'[{\"added\": {}}]',25,2),(405,'2024-01-29 19:17:05.326541','2','Esculpe tu Figura | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,2),(406,'2024-01-29 19:17:48.626132','15','Onda de Choque',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,2),(407,'2024-01-29 19:49:31.487166','16','Filler Day',1,'[{\"added\": {}}]',25,2),(408,'2024-01-29 19:50:09.489868','3','Juventud Radiante | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,2),(409,'2024-01-29 19:50:46.307353','3','Juventud Radiante | mateo',2,'[]',12,2),(410,'2024-01-29 19:51:02.654466','3','Juventud Radiante | mateo',2,'[{\"changed\": {\"fields\": [\"Is postcard enabled\"]}}]',12,2),(411,'2024-01-29 19:51:21.942890','3','Juventud Radiante | mateo',2,'[{\"changed\": {\"fields\": [\"Show description\"]}}]',12,2),(412,'2024-01-29 19:51:51.537660','16','Filler Day',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,2),(413,'2024-01-29 19:59:50.646097','17','Xeomin Day',1,'[{\"added\": {}}]',25,2),(414,'2024-01-29 20:00:48.536760','3','Juventud Radiante | mateo',2,'[{\"changed\": {\"fields\": [\"Postcard\"]}}]',12,2),(415,'2024-01-29 20:01:23.618436','17','Xeomin Day',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',25,2),(416,'2024-01-30 13:16:55.432714','17','Xeomin Day',2,'[{\"changed\": {\"fields\": [\"Text color\"]}}]',25,2),(417,'2024-01-30 15:50:23.492661','1','Header',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',24,1),(418,'2024-01-30 15:52:19.781337','1','Donde la Belleza se Convierte en Arte',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',23,1),(419,'2024-01-30 15:53:03.195754','1','Donde la Belleza se Convierte en Arte',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',23,1),(420,'2024-01-30 17:09:23.248277','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Show title\"]}}]',12,1),(421,'2024-01-30 17:17:48.533271','7','Lipocavitacion + Radiofrecuencia Tripolar',2,'[{\"changed\": {\"fields\": [\"Whats message\", \"Text color\"]}}]',25,1),(422,'2024-01-30 17:20:22.678175','10','Radiofrecuencia Húmeda o Tripolar',2,'[{\"changed\": {\"fields\": [\"Whats message\", \"Text color\"]}}]',25,1),(423,'2024-01-30 17:23:02.277949','9','Alquimia + Limpieza de Cutis Express',2,'[{\"changed\": {\"fields\": [\"Whats message\", \"Text color\"]}}]',25,1),(424,'2024-01-30 17:28:39.552554','6','UNYQUE HImFU o CRIO',2,'[{\"changed\": {\"fields\": [\"Whats message\", \"Text color\"]}}]',25,1),(425,'2024-01-30 17:30:01.284675','7','Lipocavitacion + Radiofrecuencia Tripolar',2,'[{\"changed\": {\"fields\": [\"Whats message\", \"Text color\"]}}]',25,1),(426,'2024-01-30 17:32:17.180174','8','Masaje Reductor Completo',2,'[{\"changed\": {\"fields\": [\"Whats message\", \"Text color\"]}}]',25,1),(427,'2024-01-30 17:33:51.027841','12','UNYQUE Refreeze Gluteos y Bitro',2,'[{\"changed\": {\"fields\": [\"Whats message\", \"Text color\"]}}]',25,1),(428,'2024-01-30 17:34:57.705363','13','Drenaje Linfático Manual',2,'[{\"changed\": {\"fields\": [\"Whats message\", \"Text color\"]}}]',25,1),(429,'2024-01-30 17:35:53.470363','15','Onda de Choque',2,'[{\"changed\": {\"fields\": [\"Whats message\", \"Text color\"]}}]',25,1),(430,'2024-01-30 17:37:27.795547','16','Filler Day',2,'[{\"changed\": {\"fields\": [\"Whats message\", \"Text color\"]}}]',25,1),(431,'2024-01-30 17:38:56.373590','17','Xeomin Day',2,'[{\"changed\": {\"fields\": [\"Whats message\", \"Text color\"]}}]',25,1),(432,'2024-01-30 17:41:07.322723','3','HIFU 7D',2,'[{\"changed\": {\"fields\": [\"Whats message\", \"Text color\"]}}]',25,1),(433,'2024-01-30 17:44:55.872620','6','UNYQUE HImFU o CRIO',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,1),(434,'2024-01-30 17:46:23.888635','12','UNYQUE Refreeze Gluteos y Bitro',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,1),(435,'2024-01-30 17:48:09.318362','14','HIFU Glúteos',2,'[{\"changed\": {\"fields\": [\"Whats message\", \"Text color\"]}}]',25,1),(436,'2024-01-30 17:50:36.824019','4','Diamond + Radiofrecuencia Facial',2,'[{\"changed\": {\"fields\": [\"Whats message\", \"Text color\"]}}]',25,1),(437,'2024-01-30 17:52:32.394368','5','EndyMed Parpados',2,'[{\"changed\": {\"fields\": [\"Whats message\", \"Text color\"]}}]',25,1),(438,'2024-01-30 17:53:56.329481','11','HIFU 7D en Peribucal o Parpados',2,'[{\"changed\": {\"fields\": [\"Whats message\", \"Text color\"]}}]',25,1),(439,'2024-01-30 18:03:11.013963','16','Revitaliza tu Piel con Bioestimuladores',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(440,'2024-01-30 18:05:00.194698','15','Descubre la Calma  Bienestar con el Drenaje Linfático Manual',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(441,'2024-01-30 18:08:19.582093','14','Logra una Piel Radiante con Nuestra Dermatología Integral en Flebella',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(442,'2024-01-30 18:09:40.355423','16','Revitaliza tu Piel con Bioestimuladores',2,'[{\"changed\": {\"fields\": [\"Btn text\"]}}]',19,1),(443,'2024-01-30 18:09:57.256987','16','Revitaliza tu Piel con Bioestimuladores',2,'[{\"changed\": {\"fields\": [\"Btn text\"]}}]',19,1),(444,'2024-01-30 18:11:08.415928','13','Recupera la Belleza y Salud con Escleroterapia',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(445,'2024-01-30 18:11:56.747265','12','Renueva tu Piel con Nuestras Limpezas de Cutis',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(446,'2024-01-30 18:12:36.949469','11','Renueva tu Piel con Dermapen',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(447,'2024-01-30 18:13:43.216468','10','Eleva tu Belleza con HIFU 7D',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(448,'2024-01-30 18:14:56.995074','9','Descubre la Juventud en 3D con ENDYMED',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(449,'2024-01-30 18:15:50.777551','8','Experimenta UNYQUE: La Revolución Estética',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(450,'2024-01-30 18:16:41.144665','7','Descubre una Piel Renovada con Mesoterapia y Fosfatidilcolina',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(451,'2024-01-30 18:17:46.870685','6','Transforma tu Piel con Alquimia Diamond',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(452,'2024-01-30 18:19:04.731201','5','Descubre la Frescura de tu Rostro con Toxina Botulínica',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(453,'2024-01-30 18:19:45.725843','4','Recupera Tu Juventud con Fillers',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(454,'2024-01-30 18:21:48.657145','3','Descubre tu Potencial de Belleza',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(455,'2024-01-30 18:21:58.680436','2','Asesorate con Profesionales',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(456,'2024-01-30 18:22:12.096115','1','Transforma tu Belleza',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',19,1),(457,'2024-01-30 18:22:39.031934','1','Header',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',24,1),(458,'2024-01-30 18:23:03.448080','3','Transformando Sueños, Creando Belleza',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',23,1),(459,'2024-01-30 18:23:12.126232','2','Descubre el Equilibrio Perfecto entre Ciencia y Estética.',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',23,1),(460,'2024-01-30 18:23:51.065917','1','Donde la Belleza se Convierte en Arte',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',23,1),(461,'2024-01-30 18:24:25.523157','2','Descubre el Equilibrio Perfecto entre Ciencia y Estética.',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',23,1),(462,'2024-01-30 18:25:28.222072','3','Transformando Sueños, Creando Belleza',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',23,1),(463,'2024-01-30 18:38:39.508600','17','Xeomin Day',2,'[{\"changed\": {\"fields\": [\"Header image\"]}}]',25,2),(464,'2024-01-30 18:40:17.428700','17','Xeomin Day',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,1),(465,'2024-01-30 18:40:36.390916','17','Xeomin Day',2,'[{\"changed\": {\"fields\": [\"Whats message\", \"Text color\"]}}]',25,2),(466,'2024-01-30 18:40:52.292542','16','Filler Day',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,1),(467,'2024-01-30 18:40:53.798443','17','Xeomin Day',2,'[]',25,2),(468,'2024-01-30 18:42:23.424688','17','Xeomin Day',2,'[{\"changed\": {\"fields\": [\"Text color\"]}}]',25,1),(469,'2024-01-30 18:43:07.050909','17','Xeomin Day',2,'[]',25,1),(470,'2024-01-30 18:45:23.029741','15','Onda de Choque',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,1),(471,'2024-01-30 18:45:29.159326','17','Xeomin Day',2,'[{\"changed\": {\"fields\": [\"Text color\"]}}]',25,2),(472,'2024-01-30 18:45:54.646652','14','HIFU Glúteos',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,1),(473,'2024-01-30 18:47:22.983975','17','Xeomin Day',2,'[]',25,2),(474,'2024-01-30 18:48:42.973459','17','Xeomin Day',2,'[{\"changed\": {\"fields\": [\"Whats number\"]}}]',25,1),(475,'2024-01-30 18:55:17.094090','17','Xeomin Day',2,'[{\"changed\": {\"fields\": [\"Whats number\"]}}]',25,1),(476,'2024-01-30 18:57:20.082561','12','UNYQUE Refreeze Gluteos y Bitro',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,1),(477,'2024-01-30 18:59:42.982647','6','UNYQUE HImFU o CRIO',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,1),(478,'2024-01-30 19:00:39.785760','6','UNYQUE HImFU o CRIO',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,1),(479,'2024-01-30 19:01:31.553894','6','UNYQUE HImFU o CRIO',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,1),(480,'2024-01-30 19:02:01.368837','12','UNYQUE Refreeze Gluteos y Bitro',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,1),(481,'2024-01-30 19:02:53.130990','12','UNYQUE Refreeze Gluteos y Bitro',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,1),(482,'2024-01-30 19:03:19.094928','6','Descubre la Armonía Facial | mateo',2,'[{\"changed\": {\"fields\": [\"Is visible\"]}}]',12,2),(483,'2024-01-30 19:04:15.160078','16','Revitaliza tu Piel con Bioestimuladores',2,'[{\"changed\": {\"fields\": [\"Whatsapp message\"]}}]',19,1),(484,'2024-01-31 19:39:18.083424','16','Filler Day',2,'[{\"changed\": {\"fields\": [\"Text color\"]}}]',25,2),(485,'2024-01-31 19:42:27.214474','9','Alquimia + Limpieza de Cutis Express',2,'[{\"changed\": {\"fields\": [\"Text color\"]}}]',25,2),(486,'2024-01-31 19:44:15.134614','10','Radiofrecuencia Húmeda o Tripolar',2,'[{\"changed\": {\"fields\": [\"Text color\"]}}]',25,2),(487,'2024-01-31 19:48:44.164296','12','UNYQUE Refreeze Gluteos y Bitro',2,'[{\"changed\": {\"fields\": [\"Text color\"]}}]',25,2),(488,'2024-01-31 19:52:47.273226','3','HIFU 7D Abdomen',2,'[{\"changed\": {\"fields\": [\"Title\", \"Text color\"]}}]',25,2),(489,'2024-01-31 19:53:37.673742','14','HIFU Glúteos',2,'[{\"changed\": {\"fields\": [\"Text color\"]}}]',25,2),(490,'2024-01-31 19:54:57.134832','4','Diamond + Radiofrecuencia Facial',2,'[{\"changed\": {\"fields\": [\"Text color\"]}}]',25,2),(491,'2024-01-31 19:55:37.370074','11','HIFU 7D en Peribucal o Parpados',2,'[{\"changed\": {\"fields\": [\"Text color\"]}}]',25,2),(492,'2024-01-31 20:58:51.627257','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Snippet\"]}}]',12,2),(493,'2024-01-31 21:05:02.555225','2','Esculpe tu Figura | mateo',2,'[{\"changed\": {\"fields\": [\"Snippet\"]}}]',12,2),(494,'2024-01-31 21:58:56.702153','2','Descubre el Equilibrio Perfecto entre Ciencia y Estética.',2,'[]',23,2),(495,'2024-01-31 22:00:08.484879','2','Descubre el Equilibrio Perfecto entre Ciencia y Estética.',2,'[]',23,2),(496,'2024-01-31 22:00:25.675352','2','Descubre el Equilibrio Perfecto entre Ciencia y Estética.',2,'[{\"changed\": {\"fields\": [\"Is enabled\"]}}]',23,2),(497,'2024-01-31 22:00:56.227615','3','Transformando Sueños, Creando Belleza',2,'[{\"changed\": {\"fields\": [\"Is enabled\"]}}]',23,2),(498,'2024-02-01 17:37:35.722518','5','Pack Belleza Completa | mateo',2,'[{\"changed\": {\"fields\": [\"Show title\"]}}]',12,2),(499,'2024-02-01 17:46:51.934801','3','Juventud Radiante | mateo',2,'[{\"changed\": {\"fields\": [\"Show title\", \"Snippet\"]}}]',12,2),(500,'2024-02-01 17:47:53.634052','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[{\"changed\": {\"fields\": [\"Show title\"]}}]',12,2),(501,'2024-02-01 18:46:41.057252','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[{\"changed\": {\"fields\": [\"Snippet\"]}}]',12,2),(502,'2024-02-01 19:43:24.534264','5','Pack Belleza Completa | mateo',2,'[{\"changed\": {\"fields\": [\"Snippet\"]}}]',12,2),(503,'2024-02-01 19:43:54.686736','5','Pack Belleza Completa | mateo',2,'[{\"changed\": {\"fields\": [\"Snippet\"]}}]',12,2),(504,'2024-02-01 20:23:22.210747','3','HIFU 7D Abdomen',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(505,'2024-02-01 20:23:49.939117','17','Xeomin Day',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(506,'2024-02-01 20:23:58.868030','16','Filler Day',2,'[]',25,2),(507,'2024-02-01 20:24:07.529123','14','HIFU Glúteos',2,'[]',25,2),(508,'2024-02-01 20:24:15.023232','13','Drenaje Linfático Manual',2,'[]',25,2),(509,'2024-02-01 20:24:51.875684','12','UNYQUE Refreeze Gluteos y Bitro',2,'[]',25,2),(510,'2024-02-01 20:26:21.101915','17','Xeomin Day',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(511,'2024-02-01 20:26:53.220077','16','Filler Day',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(512,'2024-02-01 20:26:59.800747','17','Xeomin Day',2,'[]',25,2),(513,'2024-02-01 20:28:55.570919','15','Onda de Choque',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(514,'2024-02-01 20:29:47.473580','14','HIFU Glúteos',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(515,'2024-02-01 20:31:05.177786','13','Drenaje Linfático Manual',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(516,'2024-02-01 20:32:20.684003','12','UNYQUE Refreeze Gluteos y Bitro',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(517,'2024-02-01 20:32:31.045282','12','UNYQUE Refreeze Gluteos y Bitro',2,'[]',25,2),(518,'2024-02-01 20:33:49.734066','11','HIFU 7D en Peribucal o Párpados',2,'[{\"changed\": {\"fields\": [\"Title\", \"Whats message\"]}}]',25,2),(519,'2024-02-01 20:35:10.891868','10','Radiofrecuencia Húmeda o Tripolar',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(520,'2024-02-01 20:35:43.568816','9','Alquimia + Limpieza de Cutis Express',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(521,'2024-02-01 20:36:00.357385','10','Radiofrecuencia Húmeda o Tripolar',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(522,'2024-02-01 20:36:11.421605','11','HIFU 7D en Peribucal o Párpados',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(523,'2024-02-01 20:36:19.726642','11','HIFU 7D en Peribucal o Párpados',2,'[]',25,2),(524,'2024-02-01 20:36:23.640356','11','HIFU 7D en Peribucal o Párpados',2,'[]',25,2),(525,'2024-02-01 20:36:31.089364','12','UNYQUE Refreeze Gluteos y Bitro',2,'[]',25,2),(526,'2024-02-01 20:36:37.040050','13','Drenaje Linfático Manual',2,'[]',25,2),(527,'2024-02-01 20:36:45.477905','13','Drenaje Linfático Manual',2,'[]',25,2),(528,'2024-02-01 20:36:50.922107','14','HIFU Glúteos',2,'[]',25,2),(529,'2024-02-01 20:36:55.853251','15','Onda de Choque',2,'[]',25,2),(530,'2024-02-01 20:37:00.131799','16','Filler Day',2,'[]',25,2),(531,'2024-02-01 20:37:04.576932','17','Xeomin Day',2,'[]',25,2),(532,'2024-02-01 20:38:00.666037','8','Masaje Reductor Completo',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(533,'2024-02-01 20:38:01.508277','8','Masaje Reductor Completo',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(534,'2024-02-01 20:38:39.251911','7','Lipocavitacion + Radiofrecuencia Tripolar',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(535,'2024-02-01 20:41:11.669894','6','UNYQUE HImFU o CRIO',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(536,'2024-02-01 20:41:42.960560','5','EndyMed Parpados',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(537,'2024-02-01 20:42:30.827598','4','Diamond + Radiofrecuencia Facial',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(538,'2024-02-01 20:42:46.369288','3','HIFU 7D Abdomen',2,'[]',25,2),(539,'2024-02-01 21:18:59.980314','12','UNYQUE Refreeze Gluteos y Bitro',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(540,'2024-02-01 21:19:14.065924','6','UNYQUE HImFU o CRIO',2,'[]',25,2),(541,'2024-02-01 21:20:12.065663','12','UNYQUE Refreeze Gluteos y Bitro',2,'[{\"changed\": {\"fields\": [\"Whats message\"]}}]',25,2),(542,'2024-02-01 22:04:58.346328','1','Footer',1,'[{\"added\": {}}]',26,2),(543,'2024-02-02 02:20:14.155071','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\"]}}]',12,1),(544,'2024-02-02 02:20:34.400126','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\"]}}]',12,1),(545,'2024-02-02 02:20:48.150217','1','Facial',3,'',9,1),(546,'2024-02-02 02:21:26.832078','2','Medicina',1,'[{\"added\": {}}]',9,1),(547,'2024-02-02 02:21:35.425996','3','Estética',1,'[{\"added\": {}}]',9,1),(548,'2024-02-02 02:21:42.551392','4','Facial',1,'[{\"added\": {}}]',9,1),(549,'2024-02-02 02:21:50.059551','5','Corporal',1,'[{\"added\": {}}]',9,1),(550,'2024-02-02 02:24:51.438928','1','Arrugas',1,'[{\"added\": {}}]',11,1),(551,'2024-02-02 02:25:00.430750','2','Flaccidez',1,'[{\"added\": {}}]',11,1),(552,'2024-02-02 02:25:07.237145','3','Manchas',1,'[{\"added\": {}}]',11,1),(553,'2024-02-02 02:25:18.269102','4','Acné',1,'[{\"added\": {}}]',11,1),(554,'2024-02-02 02:25:23.886429','5','Poros Dilatados',1,'[{\"added\": {}}]',11,1),(555,'2024-02-02 02:25:29.502357','6','Remodelación Facial',1,'[{\"added\": {}}]',11,1),(556,'2024-02-02 02:25:34.495090','7','Rosácea',1,'[{\"added\": {}}]',11,1),(557,'2024-02-02 02:25:39.536470','8','Calidad de la Piel',1,'[{\"added\": {}}]',11,1),(558,'2024-02-02 02:25:44.818756','9','Adiposidad Localizada',1,'[{\"added\": {}}]',11,1),(559,'2024-02-02 02:25:51.176375','10','Contorno Facial',1,'[{\"added\": {}}]',11,1),(560,'2024-02-02 02:25:56.112426','11','Surcos',1,'[{\"added\": {}}]',11,1),(561,'2024-02-02 02:26:00.930515','12','Alopecia',1,'[{\"added\": {}}]',11,1),(562,'2024-02-02 02:26:05.861161','13','Estrías',1,'[{\"added\": {}}]',11,1),(563,'2024-02-02 02:26:10.116476','14','Cicatrices',1,'[{\"added\": {}}]',11,1),(564,'2024-02-02 02:26:17.148506','15','Sudoración Excesiva',1,'[{\"added\": {}}]',11,1),(565,'2024-02-02 02:26:23.689252','16','Control de Lunares',1,'[{\"added\": {}}]',11,1),(566,'2024-02-02 02:26:28.395239','17','Arañitas',1,'[{\"added\": {}}]',11,1),(567,'2024-02-02 02:26:39.828445','18','Flebología',1,'[{\"added\": {}}]',11,1),(568,'2024-02-02 02:26:45.560436','19','Capilar',1,'[{\"added\": {}}]',11,1),(569,'2024-02-02 02:26:50.080000','20','Modelado Corporal',1,'[{\"added\": {}}]',11,1),(570,'2024-02-02 02:26:55.009703','21','Pre y Post Quirúrgico',1,'[{\"added\": {}}]',11,1),(571,'2024-02-02 02:27:00.008058','22','Embarazadas',1,'[{\"added\": {}}]',11,1),(572,'2024-02-02 02:27:04.881976','23','Celulitis',1,'[{\"added\": {}}]',11,1),(573,'2024-02-02 02:33:53.230805','1','Renueva tu Rostro | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\", \"Tags\"]}}]',12,1),(574,'2024-02-02 02:35:28.417243','2','Esculpe tu Figura | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\", \"Tags\"]}}]',12,1),(575,'2024-02-02 02:37:09.942133','3','Juventud Radiante | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\", \"Tags\"]}}]',12,1),(576,'2024-02-02 02:38:21.191288','4','Piel Firme, Cuerpo Esbelto | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\", \"Tags\"]}}]',12,1),(577,'2024-02-02 02:41:31.550577','5','Pack Belleza Completa | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\", \"Tags\"]}}]',12,1),(578,'2024-02-02 02:46:56.978897','1','Footer',2,'[{\"changed\": {\"fields\": [\"Address description\", \"Contacto description\", \"Whats message\", \"Is facebook enabled\", \"Facebook url\", \"Is instagram enabled\", \"Instagram url\"]}}]',26,1),(579,'2024-02-02 02:50:07.676864','18','Medicina',3,'',16,1),(580,'2024-02-02 02:50:07.767722','16','Corporal',3,'',16,1),(581,'2024-02-02 02:50:07.834547','15','Facial',3,'',16,1),(582,'2024-02-02 02:50:07.912472','14','Estética',3,'',16,1),(583,'2024-02-02 02:50:08.090728','8','Inyectables',3,'',16,1),(584,'2024-02-02 02:50:41.147140','16','Drenaje Linfático Manual | mateo',2,'[{\"changed\": {\"fields\": [\"Category2\"]}}]',17,1),(585,'2024-02-02 03:04:37.054635','1','Donde la Belleza se Convierte en Arte',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',23,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(19,'calltoaction','calltoaction'),(5,'contenttypes','contenttype'),(7,'flebi','contact'),(26,'flebi','footer'),(24,'flebi','header'),(23,'hero','hero'),(8,'members','profile'),(9,'promociones','category'),(13,'promociones','comment'),(10,'promociones','page'),(12,'promociones','post'),(25,'promociones','postcard'),(11,'promociones','tag'),(20,'sectionselection','pageenabled'),(21,'sectionselection','sectionenabled'),(22,'sectionselection','sectionselection'),(14,'services','category'),(18,'services','comment'),(15,'services','page'),(17,'services','post'),(16,'services','tag'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-01-11 20:18:01.863764'),(2,'auth','0001_initial','2024-01-11 20:18:26.858580'),(3,'admin','0001_initial','2024-01-11 20:18:39.411832'),(4,'admin','0002_logentry_remove_auto_add','2024-01-11 20:18:39.593054'),(5,'admin','0003_logentry_add_action_flag_choices','2024-01-11 20:18:39.871289'),(6,'contenttypes','0002_remove_content_type_name','2024-01-11 20:18:42.334211'),(7,'auth','0002_alter_permission_name_max_length','2024-01-11 20:18:44.911896'),(8,'auth','0003_alter_user_email_max_length','2024-01-11 20:18:46.449136'),(9,'auth','0004_alter_user_username_opts','2024-01-11 20:18:46.783247'),(10,'auth','0005_alter_user_last_login_null','2024-01-11 20:18:55.918472'),(11,'auth','0006_require_contenttypes_0002','2024-01-11 20:18:56.140835'),(12,'auth','0007_alter_validators_add_error_messages','2024-01-11 20:18:56.334937'),(13,'auth','0008_alter_user_username_max_length','2024-01-11 20:19:11.611835'),(14,'auth','0009_alter_user_last_name_max_length','2024-01-11 20:19:20.903464'),(15,'auth','0010_alter_group_name_max_length','2024-01-11 20:19:21.606445'),(16,'auth','0011_update_proxy_permissions','2024-01-11 20:19:21.785632'),(17,'auth','0012_alter_user_first_name_max_length','2024-01-11 20:19:31.207032'),(18,'calltoaction','0001_initial','2024-01-11 20:19:34.936479'),(19,'flebi','0001_initial','2024-01-11 20:19:40.889375'),(20,'hero','0001_initial','2024-01-11 20:19:43.294775'),(21,'members','0001_initial','2024-01-11 20:19:55.741984'),(22,'promociones','0001_initial','2024-01-11 20:21:34.184209'),(23,'sectionselection','0001_initial','2024-01-11 20:21:49.205610'),(24,'services','0001_initial','2024-01-11 20:22:20.271138'),(25,'sessions','0001_initial','2024-01-11 20:22:21.443824'),(26,'flebi','0002_header','2024-01-16 19:28:28.749665'),(27,'promociones','0002_alter_page_description','2024-01-20 03:13:23.613111'),(28,'sectionselection','0002_alter_pageenabled_template_path_and_more','2024-01-20 03:13:23.666197'),(29,'services','0002_alter_page_description','2024-01-20 03:13:23.739333'),(30,'promociones','0003_post_category2','2024-01-21 19:03:28.699981'),(31,'services','0003_post_category2','2024-01-21 19:03:33.183695'),(32,'promociones','0004_remove_post_category_post_is_postcard_enabled_and_more','2024-01-23 18:43:27.688247'),(33,'services','0004_remove_post_category_alter_post_category2','2024-01-23 18:43:31.389353'),(34,'promociones','0005_remove_postcard_is_visible','2024-01-24 02:54:01.036050'),(35,'promociones','0006_post_show_description_post_show_header_image_and_more','2024-01-24 15:03:44.915761'),(36,'promociones','0007_postcard_background_color_postcard_show_title_and_more','2024-01-25 02:22:00.485117'),(37,'hero','0002_alter_hero_is_whatsapp_enabled_and_more','2024-01-26 16:01:41.056618'),(38,'promociones','0008_postcard_is_sidebar_enabled_and_more','2024-01-26 16:01:48.729562'),(39,'calltoaction','0002_alter_calltoaction_whatsapp_message','2024-01-29 21:54:33.940432'),(40,'flebi','0003_alter_header_is_whatsapp_enabled_and_more','2024-01-29 21:54:43.309522'),(41,'hero','0003_alter_hero_description_alter_hero_title_and_more','2024-01-29 21:54:51.984980'),(42,'promociones','0009_remove_postcard_category_and_more','2024-01-29 21:55:52.661309'),(43,'calltoaction','0003_alter_calltoaction_whatsapp_message','2024-02-01 21:45:15.234268'),(44,'flebi','0004_footer_alter_header_whats_message','2024-02-01 21:45:16.257546'),(45,'hero','0004_alter_hero_whats_message','2024-02-01 21:45:17.256399'),(46,'promociones','0010_alter_postcard_whats_message','2024-02-01 21:45:17.528371');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('74xms6w6yu6z5mmygdilrmtlrw0i4gxu','.eJxVjEEOwiAQRe_C2pABAh1duvcMZJgBqRqalHbVeHdt0oVu_3vvbyrSutS49jzHUdRFWXX63RLxM7cdyIPafdI8tWUek94VfdCub5Pk1_Vw_w4q9fqtvWXgYSAraIs3xiWPhdGcJRcgVyCLwwzskRCdBHYCwQZAU0pwAdX7A-PGN6g:1rUWdT:PNFEAW7CibcN6nt5qqPw4YeF0QaqBVM7HJZgj5Pa3FI','2024-02-12 18:45:35.057646'),('o5cjnrtuuanhvfrjxaddqap1fju5gt01','.eJxVjMsOwiAQRf-FtSHAMB1w6d5vIDylaiAp7cr479qkC93ec859Mee3tbpt5MXNiZ2ZZKffLfj4yG0H6e7brfPY27rMge8KP-jg157y83K4fwfVj_qtJxvRQpkKZgg6awUGopUIJAwlRWSkLBqEDF6hKdqSiBkBAaRKlhR7fwCzvDY1:1rUqRV:yCYZWgCVbstRZNrq62RNIIcv0-844ZRKdFt6Q5d9qus','2024-02-13 15:54:33.745051'),('rvpjeclogzi4bwzid8vngxlctmcuva10','.eJxVjMsOwiAQRf-FtSHAMB1w6d5vIDylaiAp7cr479qkC93ec859Mee3tbpt5MXNiZ2ZZKffLfj4yG0H6e7brfPY27rMge8KP-jg157y83K4fwfVj_qtJxvRQpkKZgg6awUGopUIJAwlRWSkLBqEDF6hKdqSiBkBAaRKlhR7fwCzvDY1:1rR1qp:KrDFggm-3Ea8VaKRWqK8OENXSvVkMVIAVfX57CiJxDk','2024-02-03 03:16:55.036364'),('uddlij9zd532cnsouc0kio5tt1o96ght','.eJxVjEEOwiAQRe_C2pABAh1duvcMZJgBqRqalHbVeHdt0oVu_3vvbyrSutS49jzHUdRFWXX63RLxM7cdyIPafdI8tWUek94VfdCub5Pk1_Vw_w4q9fqtvWXgYSAraIs3xiWPhdGcJRcgVyCLwwzskRCdBHYCwQZAU0pwAdX7A-PGN6g:1rValh:WimrY7-CbsQPIUsMpCkwlSh2rW4uRz2hyCmGhDi7-Cc','2024-02-15 17:22:29.954872'),('xkzszzb52828lgq7t6r3le2jzuvkt8ob','.eJxVjEEOwiAQRe_C2pABAh1duvcMZJgBqRqalHbVeHdt0oVu_3vvbyrSutS49jzHUdRFWXX63RLxM7cdyIPafdI8tWUek94VfdCub5Pk1_Vw_w4q9fqtvWXgYSAraIs3xiWPhdGcJRcgVyCLwwzskRCdBHYCwQZAU0pwAdX7A-PGN6g:1rPRud:IkvhNToiVB19q40klpZ4GBtUQE11Z-sI5QlntRmO604','2024-01-29 18:42:19.871301');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flebi_contact`
--

DROP TABLE IF EXISTS `flebi_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flebi_contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `mensaje` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flebi_contact`
--

LOCK TABLES `flebi_contact` WRITE;
/*!40000 ALTER TABLE `flebi_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `flebi_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flebi_footer`
--

DROP TABLE IF EXISTS `flebi_footer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flebi_footer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address_title` varchar(255) NOT NULL,
  `address_description` longtext NOT NULL,
  `contacto_title` varchar(255) NOT NULL,
  `is_contacto_description_enabled` tinyint(1) NOT NULL,
  `contacto_description` longtext NOT NULL,
  `is_whatsapp_enabled` tinyint(1) NOT NULL,
  `whats_number` varchar(20) DEFAULT NULL,
  `whats_message` longtext,
  `whats_btn_text` varchar(255) NOT NULL,
  `horario_title` varchar(255) NOT NULL,
  `horario_description` longtext NOT NULL,
  `redes_title` varchar(255) NOT NULL,
  `is_facebook_enabled` tinyint(1) NOT NULL,
  `facebook_url` varchar(200) NOT NULL,
  `is_instagram_enabled` tinyint(1) NOT NULL,
  `instagram_url` varchar(200) NOT NULL,
  `is_twitter_enabled` tinyint(1) NOT NULL,
  `twitter_url` varchar(200) NOT NULL,
  `is_linkedin_enabled` tinyint(1) NOT NULL,
  `linkedin_url` varchar(200) NOT NULL,
  `copyright` longtext NOT NULL,
  `credits` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flebi_footer`
--

LOCK TABLES `flebi_footer` WRITE;
/*!40000 ALTER TABLE `flebi_footer` DISABLE KEYS */;
INSERT INTO `flebi_footer` VALUES (1,'Dirección','<p>\r\nOtamendi 82 PBº2<br>\r\nCiudad Autónoma de Buenos Aires<br>\r\nArgentina<br>\r\n</p>','Contáctanos',0,'<p>\r\n<strong>Whatsapp:</strong><br>\r\n+54 911 6865-3898<br>\r\n<strong>Email:</strong><br>\r\nrespondiendo@flebella.com<br>\r\n</p>',1,'5491168653898','\"Hola, me gustaría recibir más información sobre las *Promociones y Tratamientos de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nMuchas Gracias,','Contáctanos','Horarios','<p>\r\n<strong>Lunes, Viernes</strong><br> 10.00 - 19.00<br>\r\n<strong>Martes, Jueves</strong><br> 11.00 - 20.00<br>\r\n<strong>Miércoles</strong><br> 12.00 - 20.00\r\n</p>','Seguinos',1,'https://www.facebook.com/Flebella/',1,'https://www.instagram.com/flebella/',0,'https://twitter.com/',0,'https://linkedin.com/','<p>\r\n&copy; Copyright <strong><span>Company</span></strong>. All Rights Reserved.\r\n</p>','<p>\r\nDesigned by <a href=\"https://ingenios.com.ar/\">InGenios</a> and <a href=\"https://bootstrapmade.com/\">BootstrapMade</a>\r\n</p>');
/*!40000 ALTER TABLE `flebi_footer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flebi_header`
--

DROP TABLE IF EXISTS `flebi_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flebi_header` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `logo_image` varchar(100) DEFAULT NULL,
  `logo_text` varchar(255) NOT NULL,
  `is_getstarted_enabled` tinyint(1) NOT NULL,
  `getstarted_link2section` varchar(255) NOT NULL,
  `getstarted_text` varchar(255) NOT NULL,
  `is_whatsapp_enabled` tinyint(1) NOT NULL,
  `whats_number` varchar(20) DEFAULT NULL,
  `whats_message` longtext,
  `whats_btn_text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flebi_header`
--

LOCK TABLES `flebi_header` WRITE;
/*!40000 ALTER TABLE `flebi_header` DISABLE KEYS */;
INSERT INTO `flebi_header` VALUES (1,'images/header/Logo_Flebella-removebg-preview_thP71H5.png','<div class=\"d-flex flex-column\"><h1 class=\"no-margin\">flebella</h1></div>',0,'nosotros','Comenzar',1,'5491168653898','Hola, me gustaría recibir más información sobre las *Promociones y Tratamientos de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamientos: https://flebiland.flebella.com/services\r\nPromociones: https://flebiland.flebella.com/promociones\r\n\r\nMuchas Gracias,','Contáctanos');
/*!40000 ALTER TABLE `flebi_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hero_hero`
--

DROP TABLE IF EXISTS `hero_hero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hero_hero` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `background_image` varchar(100) DEFAULT NULL,
  `is_form_enabled` tinyint(1) NOT NULL,
  `form_placeholder` varchar(255) NOT NULL,
  `form_value` varchar(255) NOT NULL,
  `is_whatsapp_enabled` tinyint(1) NOT NULL,
  `whats_number` varchar(20) DEFAULT NULL,
  `whats_message` longtext,
  `whats_btn_text` varchar(255) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hero_hero`
--

LOCK TABLES `hero_hero` WRITE;
/*!40000 ALTER TABLE `hero_hero` DISABLE KEYS */;
INSERT INTO `hero_hero` VALUES (1,'Donde la Belleza se Convierte en Arte','23 años de excelencia médica y estética para realzar tu confianza.','images/hero/pexels-produtora-midtrack-14996839.jpg',0,'Ingrese su email','Suscribirme',1,'5491168653898','Hola, me gustaría recibir más información sobre las *Promociones y Tratamientos de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamientos: https://flebiland.flebella.com/services\r\nPromociones: https://flebiland.flebella.com/promociones\r\n\r\n_Flebella, Donde la Belleza se Convierte en Arte_\r\nMuchas Gracias,','Contáctanos',1),(2,'Descubre el Equilibrio Perfecto entre Ciencia y Estética.','Expresión autentica de belleza y bienestar.','images/hero/pexels-alena-shekhovtcova-6075000.jpg',0,'Ingrese su email','Suscribirme',1,'5491168653898','Hola, me gustaría recibir más información sobre las *Promociones y Tratamientos de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamientos: https://flebiland.flebella.com/services\r\nPromociones: https://flebiland.flebella.com/promociones\r\n\r\n_Flebella, Descubre el Equilibrio Perfecto entre Ciencia y Estética._\r\nMuchas Gracias,','Contáctanos',0),(3,'Transformando Sueños, Creando Belleza','Profesionalismo, dedicación y pasión para lograr resultados naturales y encantadores.','images/hero/pexels-orhun-rüzgar-öz-6080842_Rq68nfI.jpg',0,'Ingrese su email','Suscribirme',1,'5491168653898','Hola, me gustaría recibir más información sobre las *Promociones y Tratamientos de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nTratamientos: https://flebiland.flebella.com/services\r\nPromociones: https://flebiland.flebella.com/promociones\r\n\r\n_Flebella, Transformando Sueños, Creando Belleza._\r\nMuchas Gracias,','Contáctanos',0);
/*!40000 ALTER TABLE `hero_hero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_profile`
--

DROP TABLE IF EXISTS `members_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bio` longtext,
  `profile_pic` varchar(100) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `members_profile_user_id_f907d594_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_profile`
--

LOCK TABLES `members_profile` WRITE;
/*!40000 ALTER TABLE `members_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones_category`
--

DROP TABLE IF EXISTS `promociones_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones_category`
--

LOCK TABLES `promociones_category` WRITE;
/*!40000 ALTER TABLE `promociones_category` DISABLE KEYS */;
INSERT INTO `promociones_category` VALUES (2,'Medicina'),(3,'Estética'),(4,'Facial'),(5,'Corporal');
/*!40000 ALTER TABLE `promociones_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones_comment`
--

DROP TABLE IF EXISTS `promociones_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `promociones_comment_post_id_2da3d0df_fk_promociones_post_id` (`post_id`),
  CONSTRAINT `promociones_comment_post_id_2da3d0df_fk_promociones_post_id` FOREIGN KEY (`post_id`) REFERENCES `promociones_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones_comment`
--

LOCK TABLES `promociones_comment` WRITE;
/*!40000 ALTER TABLE `promociones_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `promociones_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones_page`
--

DROP TABLE IF EXISTS `promociones_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones_page` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `is_enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones_page`
--

LOCK TABLES `promociones_page` WRITE;
/*!40000 ALTER TABLE `promociones_page` DISABLE KEYS */;
INSERT INTO `promociones_page` VALUES (1,'Promociones','Descubre nuestras irresistibles promociones diseñadas para hacer que la excelencia en medicina estética sea accesible para todos. ¡Aprovecha estas ofertas y comienza tu viaje hacia una belleza única!',1);
/*!40000 ALTER TABLE `promociones_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones_post`
--

DROP TABLE IF EXISTS `promociones_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `header_image` varchar(100) DEFAULT NULL,
  `title_tag` varchar(255) NOT NULL,
  `body` longtext,
  `post_date` date NOT NULL,
  `snippet` varchar(255) DEFAULT NULL,
  `sort_order` int NOT NULL,
  `is_visible` tinyint(1) NOT NULL,
  `author_id` int NOT NULL,
  `call2action_id` bigint DEFAULT NULL,
  `is_postcard_enabled` tinyint(1) NOT NULL,
  `show_description` tinyint(1) NOT NULL,
  `show_header_image` tinyint(1) NOT NULL,
  `show_meta_bottom` tinyint(1) NOT NULL,
  `show_meta_top` tinyint(1) NOT NULL,
  `show_title` tinyint(1) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `postcard_interval` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `promociones_post_author_id_310b7b56_fk_auth_user_id` (`author_id`),
  KEY `promociones_post_call2action_id_e66db201_fk_calltoact` (`call2action_id`),
  CONSTRAINT `promociones_post_author_id_310b7b56_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `promociones_post_call2action_id_e66db201_fk_calltoact` FOREIGN KEY (`call2action_id`) REFERENCES `calltoaction_calltoaction` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones_post`
--

LOCK TABLES `promociones_post` WRITE;
/*!40000 ALTER TABLE `promociones_post` DISABLE KEYS */;
INSERT INTO `promociones_post` VALUES (1,'Renueva tu Rostro','images/promociones/pexels-anna-nekrashevich-6476077-removebg-preview_JBM8KWg.png','Promociones','<ul>\r\n	<li>Radiofrecuencia + Diamond Peel</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Alquimia Diamond + Flebicare</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Limpieza de Cutis&nbsp;✨flebideep✨</li>\r\n</ul>','2024-01-15','Descubre la frescura con nuestra sesión de Alquimia + limpieza express (Flebicare), y de una rejuvenecedora sesión de Radiofrecuencia Húmeda o Tripolar.',1,1,2,NULL,1,0,0,1,0,1,'2024-02-02 02:33:53.224074',5000),(2,'Esculpe tu Figura','images/promociones/pexels-sora-shimazaki-5938235-removebg-preview.png','Promociones','<p>​​<span style=\"color:#374151\"><span style=\"font-size:16px\"><em>​​​​​</em></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#374151\"><span style=\"font-size:16px\"><em>UNYQUE</em></span></span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#374151\"><span style=\"font-size:16px\"><em>Drenaje Linfatico Manual</em></span></span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#374151\"><span style=\"font-size:16px\"><em>Liposuccion Tripolar + Radiofrecuencia</em></span></span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#374151\"><span style=\"font-size:16px\"><em>Ondas de Choque</em></span></span></li>\r\n</ul>','2024-01-15','Aprovecha nuestro pack exclusivo, con 2x1 en UNYQUE HImFU en abdomen, sesiones de lipocavitacion y radiofrecuencia tripolar, masaje reductor completo, y muchos mas!!!',1,1,2,NULL,1,0,0,1,0,0,'2024-02-02 02:35:28.410454',5000),(3,'Juventud Radiante','images/promociones/pexels-shiny-diamond-3762656-removebg-preview_nD48yG6.png','Promociones','<ul>\r\n	<li>Toxina Botulinica</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Filler Day</li>\r\n</ul>','2024-01-15','Aprovecha un 50% de descuento en Xeomin Day y en Filler Day para lucir una juventud radiante!',1,1,2,NULL,1,0,0,1,0,1,'2024-02-02 02:37:09.937239',5000),(4,'Piel Firme, Cuerpo Esbelto','images/promociones/pexels-rdne-stock-project-8313424-removebg-preview.png','Promociones','<ul>\r\n	<li>HIFU Abdominal / Gluteos</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>UNYQUE</li>\r\n</ul>','2024-01-15','Descubre tu mejor versión con descuentos en HIFU 7D en abdomen, HImfu o CRIO y UNYQUE ReFreeze, aprovéchalos ahora!',1,1,2,NULL,1,0,0,1,0,1,'2024-02-02 02:38:21.185411',5000),(5,'Pack Belleza Completa','images/promociones/pexels-los-muertos-crew-8406608-removebg-preview_KnvspB9.png','Promociones','<ul>\r\n	<li>Radiofrecuencia</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Filler Day</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Endymed&nbsp;P&aacute;rpados</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>HIFU</li>\r\n</ul>','2024-01-15','Experimenta la luminosidad con estas promos! Diamond Peel + Radiofrecuencia Facial, EndyMed para párpados y HIFU 7D en peribucal o párpados.',1,1,2,NULL,1,0,0,1,0,1,'2024-02-02 02:41:31.542857',5000),(6,'Descubre la Armonía Facial','images/promociones/Renueva_tu_Rostro-removebg-preview.png','Promociones','<ul>\r\n	<li>Xeomin Day</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Filler Day</li>\r\n</ul>','2024-01-15','¡Descubre la armonía facial con descuentos exclusivos! Viscoderm Hydrobooster y Dermapen para una piel rejuvenecida.',1,0,2,NULL,0,1,0,1,1,1,'2024-01-30 19:03:19.089114',5000);
/*!40000 ALTER TABLE `promociones_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones_post_category2`
--

DROP TABLE IF EXISTS `promociones_post_category2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones_post_category2` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `promociones_post_category2_post_id_category_id_7f8258e2_uniq` (`post_id`,`category_id`),
  KEY `promociones_post_cat_category_id_5b51efed_fk_promocion` (`category_id`),
  CONSTRAINT `promociones_post_cat_category_id_5b51efed_fk_promocion` FOREIGN KEY (`category_id`) REFERENCES `promociones_category` (`id`),
  CONSTRAINT `promociones_post_cat_post_id_7a59df21_fk_promocion` FOREIGN KEY (`post_id`) REFERENCES `promociones_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones_post_category2`
--

LOCK TABLES `promociones_post_category2` WRITE;
/*!40000 ALTER TABLE `promociones_post_category2` DISABLE KEYS */;
INSERT INTO `promociones_post_category2` VALUES (3,1,3),(4,1,4),(5,1,5),(6,2,3),(7,2,4),(8,2,5),(9,3,2),(10,3,4),(11,4,3),(12,4,4),(13,4,5),(14,5,3),(15,5,4),(16,5,5);
/*!40000 ALTER TABLE `promociones_post_category2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones_post_likes`
--

DROP TABLE IF EXISTS `promociones_post_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones_post_likes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `promociones_post_likes_post_id_user_id_d1bc7827_uniq` (`post_id`,`user_id`),
  KEY `promociones_post_likes_user_id_afa38cda_fk_auth_user_id` (`user_id`),
  CONSTRAINT `promociones_post_likes_post_id_8b7cc054_fk_promociones_post_id` FOREIGN KEY (`post_id`) REFERENCES `promociones_post` (`id`),
  CONSTRAINT `promociones_post_likes_user_id_afa38cda_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones_post_likes`
--

LOCK TABLES `promociones_post_likes` WRITE;
/*!40000 ALTER TABLE `promociones_post_likes` DISABLE KEYS */;
INSERT INTO `promociones_post_likes` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,2),(5,5,2),(6,6,2);
/*!40000 ALTER TABLE `promociones_post_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones_post_postcard`
--

DROP TABLE IF EXISTS `promociones_post_postcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones_post_postcard` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `postcard_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `promociones_post_postcard_post_id_postcard_id_c95683ed_uniq` (`post_id`,`postcard_id`),
  KEY `promociones_post_pos_postcard_id_8ec17713_fk_promocion` (`postcard_id`),
  CONSTRAINT `promociones_post_pos_post_id_6b48cbf6_fk_promocion` FOREIGN KEY (`post_id`) REFERENCES `promociones_post` (`id`),
  CONSTRAINT `promociones_post_pos_postcard_id_8ec17713_fk_promocion` FOREIGN KEY (`postcard_id`) REFERENCES `promociones_postcard` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones_post_postcard`
--

LOCK TABLES `promociones_post_postcard` WRITE;
/*!40000 ALTER TABLE `promociones_post_postcard` DISABLE KEYS */;
INSERT INTO `promociones_post_postcard` VALUES (13,1,9),(14,1,10),(10,2,6),(11,2,7),(12,2,8),(17,2,12),(18,2,13),(20,2,15),(21,3,16),(22,3,17),(5,4,3),(9,4,6),(16,4,12),(19,4,14),(7,5,4),(8,5,5),(15,5,11);
/*!40000 ALTER TABLE `promociones_post_postcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones_post_tags`
--

DROP TABLE IF EXISTS `promociones_post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones_post_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `promociones_post_tags_post_id_tag_id_7c25e28c_uniq` (`post_id`,`tag_id`),
  KEY `promociones_post_tags_tag_id_37098098_fk_promociones_tag_id` (`tag_id`),
  CONSTRAINT `promociones_post_tags_post_id_e8c5c587_fk_promociones_post_id` FOREIGN KEY (`post_id`) REFERENCES `promociones_post` (`id`),
  CONSTRAINT `promociones_post_tags_tag_id_37098098_fk_promociones_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `promociones_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones_post_tags`
--

LOCK TABLES `promociones_post_tags` WRITE;
/*!40000 ALTER TABLE `promociones_post_tags` DISABLE KEYS */;
INSERT INTO `promociones_post_tags` VALUES (1,1,1),(2,1,3),(3,1,4),(4,1,5),(5,1,7),(6,1,8),(7,2,2),(8,2,9),(9,2,20),(10,2,21),(11,2,22),(12,3,1),(13,3,6),(14,3,7),(15,3,10),(16,3,11),(17,3,15),(18,4,1),(19,4,2),(20,4,9),(21,4,11),(22,4,20),(23,5,1),(24,5,2),(25,5,6),(26,5,9),(27,5,10),(28,5,11);
/*!40000 ALTER TABLE `promociones_post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones_postcard`
--

DROP TABLE IF EXISTS `promociones_postcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones_postcard` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `header_image` varchar(100) DEFAULT NULL,
  `body` longtext,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `expiration_date` date DEFAULT NULL,
  `available_quantity` int NOT NULL,
  `sort_order` int NOT NULL,
  `show_metrics` tinyint(1) NOT NULL,
  `background_color` varchar(25) NOT NULL,
  `show_title` tinyint(1) NOT NULL,
  `is_whatsapp_enabled` tinyint(1) NOT NULL,
  `whats_btn_text` varchar(255) NOT NULL,
  `whats_message` longtext,
  `whats_number` varchar(20) DEFAULT NULL,
  `text_color` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones_postcard`
--

LOCK TABLES `promociones_postcard` WRITE;
/*!40000 ALTER TABLE `promociones_postcard` DISABLE KEYS */;
INSERT INTO `promociones_postcard` VALUES (3,'HIFU 7D Abdomen','images/promociones/postcard/HIFU_7D_Abdomen.jpg','','2024-01-28 14:53:18.767668','2024-02-01 20:42:46.367981','2024-01-31',10,1,1,'#642E72',0,1,'Quiero esta Promo','Hola, me gustaría recibir más información sobre esta *Promoción de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nPack de referencia: *Piel Firme, Cuerpo Esbelto*\r\n_Distintivo: *HIFU 7D en Abdomen*_\r\nhttps://flebiland.flebella.com/promociones/article/4\r\n\r\nMuchas Gracias,','5491168653898','#E5D6F3'),(4,'Diamond + Radiofrecuencia Facial','images/promociones/postcard/Diamond_Peel__Radiofrecuencia_Facial.jpg','','2024-01-28 18:44:23.954682','2024-02-01 20:42:30.826236','2024-02-29',10,1,1,'#C2BBB3',0,1,'Quiero esta Promo','Hola, me gustaría recibir más información sobre esta *Promoción de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nPack: *Belleza Completa*\r\n_Promoción: *Diamond Peel + Radiofrecuencia Facial Húmeda*_\r\nhttps://flebiland.flebella.com/promociones/article/5\r\n\r\nMuchas Gracias,','5491168653898','#F2EFEA'),(5,'EndyMed Parpados','images/promociones/postcard/EndyMed_Parpados.jpg','','2024-01-28 19:26:56.053525','2024-02-01 20:41:42.959530','2024-02-29',10,1,1,'#794681',0,1,'Quiero esta Promo','Hola, me gustaría recibir más información sobre esta *Promoción de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nPack: *Pack Belleza Completa*\r\n_Promoción: *EndyMed Párpados*_\r\nhttps://flebiland.flebella.com/promociones/article/5\r\n\r\nMuchas Gracias,','5491168653898','#F2F2F2'),(6,'UNYQUE HImFU o CRIO','images/promociones/postcard/UNYQUE_HImFU_o_CRIO.jpg','','2024-01-28 20:09:53.177217','2024-02-01 21:19:14.064303','2024-02-29',10,1,1,'#632E72',0,1,'Quiero esta Promo','Hola, me gustaría recibir más información sobre esta *Promoción de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nPacks: *Esculpe tu figura* | *Piel Firme, Cuerpo Esbelto*\r\n_Promoción: *UNYQUE HImFU o CRIO*_ \r\nhttps://flebiland.flebella.com/promociones/article/2\r\nhttps://flebiland.flebella.com/promociones/article/4\r\n\r\nMuchas Gracias,','5491168653898','#F2F2F2'),(7,'Lipocavitacion + Radiofrecuencia Tripolar','images/promociones/postcard/Lipocavitacion__Radiofrecuencia_Tripolar.jpg','','2024-01-28 20:39:36.780662','2024-02-01 20:38:39.250129','2024-02-29',10,1,1,'#691F74',0,1,'Quiero esta Promo','Hola, me gustaría recibir más información sobre esta *Promoción de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nPack: *Esculpe tu figura*\r\n_Promoción: *Lipocavitación + Radiofrecuencia Tripolar*_\r\nhttps://flebiland.flebella.com/promociones/article/2\r\n\r\nMuchas Gracias,','5491168653898','#F2F2F2'),(8,'Masaje Reductor Completo','images/promociones/postcard/Masaje_Reductor_Completo.jpg','','2024-01-28 21:37:53.004768','2024-02-01 20:38:01.418899','2024-02-29',10,1,1,'#6B248C',0,1,'Quiero esta Promo','Hola, me gustaría recibir más información sobre esta *Promoción de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nPack: *Esculpe tu figura*\r\n_Promoción: *Masaje Reductor Completo*_\r\nhttps://flebiland.flebella.com/promociones/article/2\r\n\r\nMuchas Gracias,','5491168653898','#F2F2F2'),(9,'Alquimia + Limpieza de Cutis Express','images/promociones/postcard/Alquimia__Limpieza_de_Cutis_Express.jpg','','2024-01-28 21:56:21.034017','2024-02-01 20:35:43.567637','2024-02-29',10,1,1,'#7E4F97',0,1,'Quiero esta Promo','Hola, me gustaría recibir más información sobre esta *Promoción de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nPack: *Renueva tu Rostro*\r\n_Promoción: *Lipocavitación + Radiofrecuencia Tripolar*_ \r\nhttps://flebiland.flebella.com/promociones/article/1\r\n\r\nMuchas Gracias,','5491168653898','#FCF4FF'),(10,'Radiofrecuencia Húmeda o Tripolar','images/promociones/postcard/Radiofrecuencia_Humeda_o_Tripolar.jpg','','2024-01-28 22:15:35.711835','2024-02-01 20:36:00.355782','2024-02-29',10,1,1,'#541C67',0,1,'Quiero esta Promo','Hola, me gustaría recibir más información sobre esta *Promoción de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nPack: *Renueva tu Rostro*\r\n_Promoción: *Radiofrecuencia Húmeda o Tripolar*_ \r\nhttps://flebiland.flebella.com/promociones/article/1 \r\n\r\nMuchas Gracias,','5491168653898','#D5BADB'),(11,'HIFU 7D en Peribucal o Párpados','images/promociones/postcard/HIFU_7D_en_Peribucal_o_Parpados.jpg','','2024-01-28 22:27:10.864973','2024-02-01 20:36:23.474661','2024-02-29',10,1,1,'#650587',0,1,'Quiero esta Promo','Hola, me gustaría recibir más información sobre esta *Promoción de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nPack: *Pack Belleza Completa*\r\n_Promoción: *HIFU 7D en Peribucal o Párpados*_\r\nhttps://flebiland.flebella.com/promociones/article/5\r\n\r\nMuchas Gracias,','5491168653898','#C5B5FC'),(12,'UNYQUE Refreeze Gluteos y Bitro','images/promociones/postcard/UNYQUE_Refreeze_Gluteos_y_Bitro.jpg','','2024-01-28 22:43:37.766283','2024-02-01 21:20:12.064091','2024-02-29',10,1,1,'#642E73',0,1,'Quiero esta Promo','Hola, me gustaría recibir más información sobre esta *Promoción de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nPacks: *Piel Firme, Cuerpo Esbelto* | *Esculpe tu Figura*\r\n_Promoción: *UNYQUE ReFreeze glúteos y bitro*_ \r\nhttps://flebiland.flebella.com/promociones/article/2\r\nhttps://flebiland.flebella.com/promociones/article/4\r\n\r\nMuchas Gracias,','5491168653898','#E5D6F3'),(13,'Drenaje Linfático Manual','images/promociones/postcard/Drenaje_Linfatico_Manual.jpg','','2024-01-29 18:30:36.154040','2024-02-01 20:36:45.476105','2024-02-29',10,1,1,'#A77EAA',0,1,'Quiero esta Promo','Hola, me gustaría recibir más información sobre esta *Promoción de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nPack: *Esculpe tu figura*\r\n_Promoción: *Drenaje Linfático Manual*_\r\nhttps://flebiland.flebella.com/promociones/article/2\r\n\r\nMuchas Gracias,','5491168653898','#F2F2F2'),(14,'HIFU Glúteos','images/promociones/postcard/HIFU_Gluteos.jpg','','2024-01-29 18:57:37.797803','2024-02-01 20:36:50.920336','2024-02-29',10,1,1,'#541D83',0,1,'Quiero esta Promo','Hola, me gustaría recibir más información sobre esta *Promoción de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nPack: *Piel Firme, Cuerpo Esbelto*\r\n_Promoción: *HIFU Glúteos*_\r\nhttps://flebiland.flebella.com/promociones/article/4\r\n\r\nMuchas Gracias,','5491168653898','#D0A7ED'),(15,'Onda de Choque','images/promociones/postcard/Onda_de_Choque.jpg','','2024-01-29 19:16:27.479836','2024-02-01 20:36:55.851430','2024-02-29',10,1,1,'#926457',0,1,'Quiero esta Promo','Hola, me gustaría recibir más información sobre esta *Promoción de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nPack: *Esculpe tu figura*\r\n_Promoción: *Onda de Choque*_\r\nhttps://flebiland.flebella.com/promociones/article/2\r\n\r\nMuchas Gracias,','5491168653898','#F2F2F2'),(16,'Filler Day','images/promociones/postcard/Filler_Day.jpg','','2024-01-29 19:49:31.481935','2024-02-01 20:37:00.130259','2024-02-29',10,1,1,'#E39CE8',0,1,'Quiero esta Promo','Hola, me gustaría recibir más información sobre esta *Promoción de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nPack: *Juventud Radiante*\r\n_Promoción: *Filler Day*_\r\nhttps://flebiland.flebella.com/promociones/article/3\r\n\r\nMuchas Gracias,','5491168653898','#F2DAFE'),(17,'Xeomin Day','images/promociones/postcard/Xeomin_Day_qz5NEWy.jpg','','2024-01-29 19:59:50.642389','2024-02-01 20:37:04.575589','2024-02-29',0,1,1,'#5D1A78',0,1,'Quiero esta Promo','Hola, me gustaría recibir más información sobre esta *Promoción de Flebella*.\r\nEnviado desde flebiland webapp https://flebiland.flebella.com\r\n\r\nPack: *Juventud Radiante*\r\n_Promoción: *Xeomin Day*_\r\nhttps://flebiland.flebella.com/promociones/article/3\r\n\r\nMuchas Gracias,','5491168653898','#E9DEFF');
/*!40000 ALTER TABLE `promociones_postcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones_tag`
--

DROP TABLE IF EXISTS `promociones_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones_tag`
--

LOCK TABLES `promociones_tag` WRITE;
/*!40000 ALTER TABLE `promociones_tag` DISABLE KEYS */;
INSERT INTO `promociones_tag` VALUES (1,'Arrugas'),(2,'Flaccidez'),(3,'Manchas'),(4,'Acné'),(5,'Poros Dilatados'),(6,'Remodelación Facial'),(7,'Rosácea'),(8,'Calidad de la Piel'),(9,'Adiposidad Localizada'),(10,'Contorno Facial'),(11,'Surcos'),(12,'Alopecia'),(13,'Estrías'),(14,'Cicatrices'),(15,'Sudoración Excesiva'),(16,'Control de Lunares'),(17,'Arañitas'),(18,'Flebología'),(19,'Capilar'),(20,'Modelado Corporal'),(21,'Pre y Post Quirúrgico'),(22,'Embarazadas'),(23,'Celulitis');
/*!40000 ALTER TABLE `promociones_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectionselection_pageenabled`
--

DROP TABLE IF EXISTS `sectionselection_pageenabled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sectionselection_pageenabled` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `template_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `template_path` (`template_path`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectionselection_pageenabled`
--

LOCK TABLES `sectionselection_pageenabled` WRITE;
/*!40000 ALTER TABLE `sectionselection_pageenabled` DISABLE KEYS */;
INSERT INTO `sectionselection_pageenabled` VALUES (1,'Main Page','flebi/index.html'),(2,'Servicios Listado','services/home.html'),(3,'Servicios Detalle','services/article_details.html'),(4,'Promociones Listado','promociones/home.html'),(5,'Promociones Detalle','promociones/article_details.html');
/*!40000 ALTER TABLE `sectionselection_pageenabled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectionselection_sectionenabled`
--

DROP TABLE IF EXISTS `sectionselection_sectionenabled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sectionselection_sectionenabled` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `html_id` varchar(255) NOT NULL,
  `section_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `html_id` (`html_id`),
  UNIQUE KEY `section_path` (`section_path`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectionselection_sectionenabled`
--

LOCK TABLES `sectionselection_sectionenabled` WRITE;
/*!40000 ALTER TABLE `sectionselection_sectionenabled` DISABLE KEYS */;
INSERT INTO `sectionselection_sectionenabled` VALUES (1,'Hero','hero','hero/section/hero.html'),(2,'Nosotros','nosotros','flebi/section/about.html'),(3,'Tratamientos','tratamientos','services/section/posts.html'),(4,'Promociones','promociones','promociones/section/posts.html'),(5,'Estadisticas','estadisticas','flebi/section/stats.html'),(6,'Distintivos','distintivos','flebi/section/features.html'),(7,'Experiencia','experiencia','flebi/section/portfolio.html'),(8,'Equipo','equipo','flebi/section/team.html'),(9,'Calltoaction','calltoaction','calltoaction/section/call2action.html'),(10,'Contacto','contacto','flebi/section/contact.html'),(11,'Testimonios','testimonios','flebi/section/testimonials.html'),(12,'Promociones - Detalle','promociones-detalle','promociones/section/post_details.html'),(13,'Servicios - Detalle','servicios-detalle','services/section/post_details.html');
/*!40000 ALTER TABLE `sectionselection_sectionenabled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectionselection_sectionselection`
--

DROP TABLE IF EXISTS `sectionselection_sectionselection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sectionselection_sectionselection` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sort_order` int NOT NULL,
  `is_visible` tinyint(1) NOT NULL,
  `nav_enabled` tinyint(1) NOT NULL,
  `page_id` bigint NOT NULL,
  `section_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sectionselection_section_page_id_section_id_0a22298b_uniq` (`page_id`,`section_id`),
  KEY `sectionselection_sec_section_id_c466359f_fk_sectionse` (`section_id`),
  CONSTRAINT `sectionselection_sec_page_id_2c07e2b6_fk_sectionse` FOREIGN KEY (`page_id`) REFERENCES `sectionselection_pageenabled` (`id`),
  CONSTRAINT `sectionselection_sec_section_id_c466359f_fk_sectionse` FOREIGN KEY (`section_id`) REFERENCES `sectionselection_sectionenabled` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectionselection_sectionselection`
--

LOCK TABLES `sectionselection_sectionselection` WRITE;
/*!40000 ALTER TABLE `sectionselection_sectionselection` DISABLE KEYS */;
INSERT INTO `sectionselection_sectionselection` VALUES (1,100,1,0,1,1),(2,101,0,0,1,2),(3,104,1,1,1,3),(4,102,1,1,1,4),(5,103,1,0,1,9),(6,202,1,0,2,3),(7,201,1,0,2,9),(8,300,1,0,3,9),(9,402,1,0,4,4),(10,401,1,0,4,9),(11,501,1,0,5,9),(12,301,1,0,3,13),(13,500,1,0,5,12);
/*!40000 ALTER TABLE `sectionselection_sectionselection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_category`
--

DROP TABLE IF EXISTS `services_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_category`
--

LOCK TABLES `services_category` WRITE;
/*!40000 ALTER TABLE `services_category` DISABLE KEYS */;
INSERT INTO `services_category` VALUES (5,'Medicina'),(6,'Estética'),(7,'Facial'),(8,'Corporal');
/*!40000 ALTER TABLE `services_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_comment`
--

DROP TABLE IF EXISTS `services_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `services_comment_post_id_0682fb6d_fk_services_post_id` (`post_id`),
  CONSTRAINT `services_comment_post_id_0682fb6d_fk_services_post_id` FOREIGN KEY (`post_id`) REFERENCES `services_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_comment`
--

LOCK TABLES `services_comment` WRITE;
/*!40000 ALTER TABLE `services_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `services_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_page`
--

DROP TABLE IF EXISTS `services_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_page` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `is_enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_page`
--

LOCK TABLES `services_page` WRITE;
/*!40000 ALTER TABLE `services_page` DISABLE KEYS */;
INSERT INTO `services_page` VALUES (1,'Tratamientos','Explora nuestra gama de tratamientos diseñados para realzar tu belleza de manera natural y duradera. Desde abordar los signos del envejecimiento hasta mejorar la textura de la piel, Flebella fusiona la experiencia médica con el toque artístico, brindándote resultados que reflejan tu auténtico ser.',1);
/*!40000 ALTER TABLE `services_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_post`
--

DROP TABLE IF EXISTS `services_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `header_image` varchar(100) DEFAULT NULL,
  `title_tag` varchar(255) NOT NULL,
  `body` longtext,
  `post_date` date NOT NULL,
  `snippet` varchar(255) DEFAULT NULL,
  `sort_order` int NOT NULL,
  `is_visible` tinyint(1) NOT NULL,
  `author_id` int NOT NULL,
  `call2action_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `services_post_author_id_7d605288_fk_auth_user_id` (`author_id`),
  KEY `services_post_call2action_id_77b05897_fk_calltoact` (`call2action_id`),
  CONSTRAINT `services_post_author_id_7d605288_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `services_post_call2action_id_77b05897_fk_calltoact` FOREIGN KEY (`call2action_id`) REFERENCES `calltoaction_calltoaction` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_post`
--

LOCK TABLES `services_post` WRITE;
/*!40000 ALTER TABLE `services_post` DISABLE KEYS */;
INSERT INTO `services_post` VALUES (1,'Fillers','images/services/pexels-orhun-rüzgar-öz-6080267.jpg','Fillers','<p><span style=\"font-size:16px\">Los Fillers de &aacute;cido hialur&oacute;nico en Flebella, dirigidos por la Dra. Policichio, son la soluci&oacute;n perfecta para contrarrestar los efectos del envejecimiento en tu piel. Estos productos de primer nivel, adaptados a cada tipo de arruga, ofrecen resultados naturales y personalizados. Desde rellenar surcos y arrugas est&aacute;ticas hasta otorgar volumen y remodelar contornos, nuestros tratamientos est&aacute;n dise&ntilde;ados para realzar tu belleza con la naturalidad que siempre has buscado.</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>Beneficios del Tratamiento:</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><strong>Restauraci&oacute;n de Volumen y Contorno:</strong> Recupera la plenitud facial y define los contornos perdidos con el tiempo.</span></li>\r\n	<li><span style=\"font-size:16px\"><strong>Reducci&oacute;n de Arrugas Est&aacute;ticas:</strong> Minimiza la apariencia de arrugas profundas, incluso en reposo.</span></li>\r\n	<li><span style=\"font-size:16px\"><strong>Hidrataci&oacute;n Profunda:</strong> El &aacute;cido hialur&oacute;nico restaura la hidrataci&oacute;n, mejorando la textura y elasticidad de la piel.</span></li>\r\n	<li><span style=\"font-size:16px\"><strong>Resultados Naturales:</strong> Productos internacionales de primera calidad para una belleza natural y duradera.</span></li>\r\n</ul>','2024-01-15','Descubre la magia de los Fillers con ácido hialurónico en Flebella, la clave para restaurar volumen, contorno y vitalidad a tu rostro.',1,1,2,4),(5,'Toxina Botulínica','images/services/pexels-cottonbro-studio-7581073_Lp1EOSa.jpg','Toxina Botulínica','<p><span style=\"font-size:16px\">La Toxina Botul&iacute;nica, de origen biol&oacute;gico, va m&aacute;s all&aacute; del tratamiento de arrugas. Actuando como un inhibidor neuromuscular, ofrece resultados efectivos en la reducci&oacute;n de sudoraci&oacute;n excesiva, arrugas de cuello, ros&aacute;cea, poros dilatados y diversos des&oacute;rdenes neurol&oacute;gicos. En Flebella, nuestro enfoque preciso y personalizado garantiza una relajaci&oacute;n facial natural y equilibrada. La aplicaci&oacute;n es r&aacute;pida, pr&aacute;cticamente indolora y con resultados que suavizan las l&iacute;neas de expresi&oacute;n sin alterar tu apariencia &uacute;nica.</span></p>\r\n\r\n<p><u><strong><span style=\"font-size:20px\">Beneficios del Tratamiento:</span></strong></u></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><strong>Relajaci&oacute;n Facial Transitoria:</strong> Reduce la apariencia de arrugas y l&iacute;neas de expresi&oacute;n sin paralizar los m&uacute;sculos.</span></li>\r\n	<li><span style=\"font-size:16px\"><strong>Amplio Espectro de Aplicaciones:</strong> Tratamiento efectivo para sudoraci&oacute;n excesiva, ros&aacute;cea, poros dilatados y des&oacute;rdenes neurol&oacute;gicos.</span></li>\r\n	<li><span style=\"font-size:16px\"><strong>Aplicaci&oacute;n R&aacute;pida y Poco Invasiva:</strong> Una experiencia pr&aacute;cticamente indolora con resultados visibles en poco tiempo.</span></li>\r\n	<li><span style=\"font-size:16px\"><strong>Naturalidad Preservada:</strong> Conserva tu expresi&oacute;n &uacute;nica mientras suaviza las se&ntilde;ales del envejecimiento.</span></li>\r\n</ul>','2024-01-20','Experimenta la renovación facial con Toxina Botulínica, una solución avanzada que relaja tus músculos faciales de forma transitoria.',2,1,2,5),(6,'Bioestimuladores','','Bioestimuladores','<p><span style=\"font-size:16px\">Desde la hidrataci&oacute;n profunda hasta la mejora de la elasticidad y el relleno de arrugas, este conjunto de tratamientos ofrecen resultados notables.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"font-size:20px\">HArmonyCa:</span></strong></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>Profhilo:</strong></span><span style=\"font-size:16px\"> &Aacute;cido hialur&oacute;nico inteligente que regenera la piel, proporciona hidrataci&oacute;n intensa y reestructura la cara.</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>Viscoderm Hidrobooster:</strong> </span><span style=\"font-size:16px\">&Aacute;cido hialur&oacute;nico suizo para hidratar, rellenar arrugas y mejorar la elasticidad, utilizando la t&eacute;cnica de Hydrostretching.</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>Radiesse:</strong> </span><span style=\"font-size:16px\">Relleno de poceado para combatir la celulitis, introduciendo Radiesse de forma local, con resultados efectivos y duraderos.</span></p>\r\n\r\n<p><strong><span style=\"font-size:20px\">Beneficios de los Tratamientos</span></strong></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Hidrataci&oacute;n profunda sin voluminizar.</span></li>\r\n	<li><span style=\"font-size:16px\">Mejora de la elasticidad y la textura cut&aacute;nea.</span></li>\r\n	<li><span style=\"font-size:16px\">Relleno de arrugas y l&iacute;neas de expresi&oacute;n.</span></li>\r\n	<li><span style=\"font-size:16px\">Combate la celulitis de forma no invasiva.</span></li>\r\n	<li><span style=\"font-size:16px\">Resultados duraderos y efectivos.</span></li>\r\n</ul>','2024-01-20','Descubre el poder de los Bioestimuladores: HArmonyCa, Profhilo, Viscoderm, Radiesse, cuatro tratamientos innovadores para combatir el envejecimiento y revitalizar tu piel.',1,1,2,16),(7,'Alquimia','','Alquimia','<p><span style=\"font-size:16px\">La Alquimia Diamond redefine el cuidado de la piel, ofreciendo exfoliaci&oacute;n mec&aacute;nica sin dolor tanto para el rostro como para el cuerpo. Desde la suavizaci&oacute;n de l&iacute;neas finas hasta la reducci&oacute;n de poros, este tratamiento no invasivo nutre y protege tu piel. Adaptado a tu tipo de piel, garantiza una absorci&oacute;n profunda de principios activos, brind&aacute;ndote una piel joven, radiante y saludable, tanto en el rostro como en el cuerpo.</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>Beneficios del Tratamiento:</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">No invasivo y sin dolor.</span></li>\r\n	<li><span style=\"font-size:16px\">Suaviza l&iacute;neas finas y arrugas.</span></li>\r\n	<li><span style=\"font-size:16px\">Refina los poros y reduce signos de envejecimiento.</span></li>\r\n	<li><span style=\"font-size:16px\">Protege la piel, eliminando impurezas y activando la hidrataci&oacute;n profunda.</span></li>\r\n	<li><span style=\"font-size:16px\">Brinda una piel joven, radiante y sana.</span></li>\r\n	<li><span style=\"font-size:16px\">Prevenci&oacute;n del fotoenvejecimiento y aligeramiento de cicatrices de acn&eacute;.</span></li>\r\n</ul>','2024-01-20','Descubre el arte de la renovación con Alquimia Diamond en Flebella, un tratamiento sin dolor que exfolia, hidrata y nutre tanto facial como corporalmente.',1,1,2,6),(8,'Mesoterapia y Fosfatidilcolina','','Mesoterapia y Fosfatidilcolina','<p><span style=\"font-size:16px\">La Mesoterapia, con sus microinyecciones de vitaminas y minerales, se une a la Fosfatidilcolina para ofrecerte una experiencia &uacute;nica. Desde retrasar arrugas hasta combatir la acumulaci&oacute;n de grasa localizada, este tratamiento activa la producci&oacute;n de col&aacute;geno, mejorando la elasticidad y preservando la firmeza de la piel.</span></p>\r\n\r\n<p><strong><span style=\"font-size:20px\"><em>Beneficios del Tratamiento:</em></span></strong></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Revitalizaci&oacute;n facial y corporal desde el interior.</span></li>\r\n	<li><span style=\"font-size:16px\">Luminosidad y hidrataci&oacute;n para una piel radiante.</span></li>\r\n	<li><span style=\"font-size:16px\">Activaci&oacute;n de col&aacute;geno y elastina para mejorar la elasticidad.</span></li>\r\n	<li><span style=\"font-size:16px\">Eliminaci&oacute;n de arrugas y l&iacute;neas de expresi&oacute;n.</span></li>\r\n	<li><span style=\"font-size:16px\">Tratamiento personalizado para flacidez corporal y estr&iacute;as.</span></li>\r\n	<li><span style=\"font-size:16px\">Detenci&oacute;n de la alopecia capilar.</span></li>\r\n</ul>','2024-01-20','Descubre la combinación perfecta de Mesoterapia y Fosfatidilcolina, la fórmula para revitalizar tu piel, combatir la flacidez y remodelar tu contorno corporal.',1,1,2,7),(9,'UNYQUE','','UNYQUE','<p><span style=\"font-size:16px\">UNYQUE, uno de los equipos m&aacute;s esperados de la l&iacute;nea Body Health, presenta un cabezal m&oacute;vil con pantalla t&aacute;ctil LED de 14&rdquo;. Su avanzado software facilita la interacci&oacute;n y aplicaci&oacute;n de tratamientos, asegurando resultados excepcionales. Con tres tecnolog&iacute;as integradas (ReFreeze, HImFU y CrioFrecuencia), UNYQUE es la soluci&oacute;n completa para combatir diversos problemas est&eacute;ticos, ofreciendo tratamientos integrales y personalizados. Las sesiones, de 1 a 1:30 horas, son totalmente indoloras y no invasivas. Durante una consulta diagn&oacute;stica, se personaliza el programa de tratamiento seg&uacute;n las necesidades de cada paciente, garantizando resultados &oacute;ptimos.</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>Beneficios del Tratamiento:</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Combate celulitis, adiposidad localizada, drenaje y flacidez.</span></li>\r\n	<li><span style=\"font-size:16px\">Tecnolog&iacute;a de vanguardia con pantalla t&aacute;ctil LED de 14&rdquo;.</span></li>\r\n	<li><span style=\"font-size:16px\">Resultados excepcionales y personalizaci&oacute;n del tratamiento.</span></li>\r\n	<li><span style=\"font-size:16px\">Sesiones indoloras, no invasivas y sin riesgo de quemaduras.</span></li>\r\n</ul>','2024-01-20','Descubre la revolucionaria tecnología UNYQUE en Flebella, un equipo de última generación que combina ReFreeze, CrioFrecuencia y HImFU para combatir celulitis, adiposidad localizada, drenaje y flacidez.',1,1,2,8),(10,'Endymed Facial y Parpados','','Endymed Facial y Parpados','<p><span style=\"font-size:16px\">ENDYMED 3DEEP es el equipo l&iacute;der para el rejuvenecimiento facial, utilizando m&uacute;ltiples fuentes de Radiofrecuencia (RF) para entregar calor controlado profundamente en la piel sin riesgos. Esta tecnolog&iacute;a &uacute;nica, aplicada con el ENDYMED 3DEEP, ofrece tratamientos seguros y m&iacute;nimamente indoloros, permitiendo par&aacute;metros personalizados para cada paciente. En el rostro, ENDYMED 3DEEP se utiliza para el rejuvenecimiento cut&aacute;neo no ablativo, estiramiento de la piel y tratamiento de p&aacute;rpados. Los resultados, notables a los 15 d&iacute;as, incluyen una mejora en la textura de la piel, reducci&oacute;n de circunferencias y atenuaci&oacute;n de arrugas en diversas &aacute;reas faciales.</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>Beneficios del Tratamiento:</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Rejuvenecimiento facial sin cirug&iacute;a.</span></li>\r\n	<li><span style=\"font-size:16px\">Estimulaci&oacute;n de col&aacute;geno y elastina.</span></li>\r\n	<li><span style=\"font-size:16px\">Tratamientos seguros y m&iacute;nimamente indoloros.</span></li>\r\n	<li><span style=\"font-size:16px\">Atenuaci&oacute;n de arrugas, mejora de la textura de la piel y reducci&oacute;n de circunferencias.</span></li>\r\n	<li><span style=\"font-size:16px\">Resultados visibles en aproximadamente 15 d&iacute;as.</span></li>\r\n</ul>','2024-01-20','Experimenta la revolución del rejuvenecimiento facial con ENDYMED 3DEEP en Flebella, una avanzada tecnología que tensa la piel, estimula la producción de colágeno y elastina, ofreciendo resultados visibles en solo 15 días.',1,1,2,9),(11,'HIFU','','HIFU','<p><span style=\"font-size:20px\"><strong>(Ultrasonido Focalizado de Alta Intensidad)</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">HIFU 7D, un avanzado equipo de ultrasonido focalizado de alta intensidad, redefine el rejuvenecimiento facial y corporal en Flebella. Con tres cabezales para Micro-Enfoque facial y Macro-Enfoque corporal, este tratamiento no invasivo ofrece resultados indoloros y duraderos. Mejora la resistencia y elasticidad de la piel, reduce flacidez, arrugas y grasa localizada. Los resultados, notables a partir de los 30 d&iacute;as, son naturales y duraderos, con una sesi&oacute;n cada 3 o 4 meses.</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>Beneficios del Tratamiento:</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Efecto lifting en rostro, cuello, escote y cuerpo.</span></li>\r\n	<li><span style=\"font-size:16px\">Estimulaci&oacute;n de col&aacute;geno y elastina.</span></li>\r\n	<li><span style=\"font-size:16px\">Mejora de resistencia y elasticidad cut&aacute;nea.</span></li>\r\n	<li><span style=\"font-size:16px\">Reducci&oacute;n de flacidez y arrugas.</span></li>\r\n	<li><span style=\"font-size:16px\">Disoluci&oacute;n eficaz de grasa y remodelaci&oacute;n corporal.</span></li>\r\n</ul>','2024-01-20','Experimenta la revolución del rejuvenecimiento con HIFU 7D en Flebella, una tecnología de ultrasonido focalizado de alta intensidad que estimula la producción de colágeno y elastina, logrando un efecto lifting en rostro y cuerpo.',1,1,2,10),(12,'Dermapen','','Dermapen','<p><span style=\"font-size:16px\">Dermapen, ya sea facial o corporal, busca afinar las capas superficiales de la piel mediante microagujas que penetran y pulen la piel. En Flebella, nuestras esteticistas aplican concentrados despigmentantes, humecto-nutritivos y antiacn&eacute; durante el pulido, adapt&aacute;ndose a las necesidades de cada paciente. Los resultados incluyen una piel m&aacute;s suave, luminosa y la disminuci&oacute;n de manchas y cicatrices de acn&eacute;.</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>Beneficios del Tratamiento:</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Afinamiento de capas superficiales de la piel.</span></li>\r\n	<li><span style=\"font-size:16px\">Retiro de c&eacute;lulas muertas mediante microagujas.</span></li>\r\n	<li><span style=\"font-size:16px\">Piel suave, luminosa y saludable.</span></li>\r\n	<li><span style=\"font-size:16px\">Disminuci&oacute;n de manchas y cicatrices de acn&eacute;.</span></li>\r\n</ul>','2024-01-20','Experimenta la transformación de tu piel con Dermapen en Flebella, una técnica innovadora que utiliza microagujas para retirar células muertas y pulir la piel, tanto en su versión facial como corporal.',1,1,2,11),(13,'Limpieza de Cutis','images/services/pexels-john-tekeridis-3212164.jpg','Limpieza de Cutis','<p><span style=\"font-size:16px\">En Flebella, ofrecemos una gama completa de limpiezas de cutis para abordar diversas necesidades. Desde el Diamond Peel para pulido con punta de diamante hasta opciones como Flebideep para limpieza profunda y FlebiCare para una limpieza express, cada tratamiento se adapta a tu tipo de piel, utilizando t&eacute;cnicas manuales y equipos especializados.</span></p>\r\n\r\n<p><strong><span style=\"font-size:20px\">Tratamientos y sus Beneficios</span></strong></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Diamond Peel: Pulido en seco para una piel m&aacute;s fina y absorbente.</span></li>\r\n	<li>✨<span style=\"font-size:16px\">Flebideep</span>✨&nbsp;<span style=\"font-size:16px\">: Limpieza profunda con esp&aacute;tula ultras&oacute;nica y pulido con punta de diamante.</span></li>\r\n	<li><span style=\"font-size:16px\">FlebiCare: Limpieza express con principios activos y m&aacute;scara Led.</span></li>\r\n	<li><span style=\"font-size:16px\">FlebiAcn&eacute;: Limpieza completa con esp&aacute;tula ultras&oacute;nica, pulido y alta frecuencia para cerrar poros.</span></li>\r\n</ul>','2024-01-20','Descubre nuestra variedad de limpiezas de cutis en Flebella, desde opciones sutiles para luminosidad hasta peelings químicos de la mano de nuestra dermatóloga. Experimenta tratamientos como Diamond Peel, Flebideep, FlebiCare y FlebiAcné.',1,1,2,12),(14,'Escleroterapia','','Escleroterapia','<p><span style=\"font-size:16px\">La escleroterapia es un tratamiento altamente efectivo dise&ntilde;ado para tratar diferentes tipos de varices, venectasias y ara&ntilde;itas vasculares. En Flebella, se emplea la esclerosis con espuma, utilizando el agente esclerosante Polidocanol. Este m&eacute;todo se centra en ara&ntilde;itas vasculares, donde la espuma, al ser inyectada en la varice, desplaza la sangre, permitiendo un mayor contacto de la soluci&oacute;n con la pared venosa. Este proceso genera una tromboflebitis artificial, localizada y benigna, provocando la cicatrizaci&oacute;n y desaparici&oacute;n de la vena varicosa en semanas.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>Beneficios del Tratamiento:</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Alivio de s&iacute;ntomas asociados a las v&aacute;rices, incluyendo dolor y molestias.</span></li>\r\n	<li><span style=\"font-size:16px\">Procedimiento m&iacute;nimamente invasivo.</span></li>\r\n	<li><span style=\"font-size:16px\">Mejora est&eacute;tica al reducir o eliminar v&aacute;rices y ara&ntilde;itas vasculares.</span></li>\r\n	<li><span style=\"font-size:16px\">Mejora la calidad de vida al permitir que el paciente retome sus actividades diarias sin molestias.</span></li>\r\n</ul>','2024-01-20','La escleroterapia es una solución efectiva para abordar diferentes tipos de varices, venas varicosas y arañas vasculares, ofreciendo beneficios tanto a nivel estético como de alivio de síntomas asociados a las várices.',1,1,2,13),(15,'Dermatología','images/services/pexels-karolina-grabowska-4046567.jpg','Dermatología','<p><strong><span style=\"font-size:16px\">Descubre c&oacute;mo nuestros tratamientos pueden ayudarte a lograr una piel hermosa y saludable.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:20px\">ACNE:&nbsp;</span></strong>&nbsp;<span style=\"font-size:16px\">Ofrecemos tratamientos espec&iacute;ficos seg&uacute;n el grado de acn&eacute;, incluyendo m&aacute;scaras secativas y Alta Frecuencia para controlar la producci&oacute;n de sebo, acompa&ntilde;ados de cuidados domiciliarios.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Beneficios:</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Control de la producci&oacute;n de sebo</span></li>\r\n	<li><span style=\"font-size:16px\">Eliminaci&oacute;n de comedones, p&aacute;pulas y p&uacute;stulas</span></li>\r\n	<li><span style=\"font-size:16px\">Mejora de la textura de la piel</span></li>\r\n	<li><span style=\"font-size:16px\">Tratamiento sin dolor y resultados duraderos</span></li>\r\n</ul>\r\n\r\n<p><strong><span style=\"font-size:20px\">ROS&Aacute;CEA:&nbsp;</span></strong><span style=\"font-size:16px\">Combate la ros&aacute;cea con tratamientos cosmetol&oacute;gicos y m&eacute;dicos personalizados, incluyendo E-Light, MesoBotox y limpiezas de cutis. La E-Light reduce el enrojecimiento facial, MesoBotox mejora la calidad de la piel, y las limpiezas de cutis mantienen una piel saludable.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Beneficios:</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Reducci&oacute;n significativa de la ros&aacute;cea</span></li>\r\n	<li><span style=\"font-size:16px\">Piel m&aacute;s tensa y luminosa</span></li>\r\n	<li><span style=\"font-size:16px\">Mejora de la textura y calidad de la piel</span></li>\r\n</ul>\r\n\r\n<p><strong><span style=\"font-size:20px\">POROS DILATADOS:&nbsp;</span></strong><span style=\"font-size:16px\">Mejora la apariencia de los poros dilatados con procedimientos como la microdermoabrasi&oacute;n, peelings qu&iacute;micos y microneedling. A trav&eacute;s de limpiezas y procedimientos espec&iacute;ficos, reducimos el tama&ntilde;o de los poros y mejoramos la textura de la piel.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Beneficios:</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Piel m&aacute;s suave y uniforme</span></li>\r\n	<li><span style=\"font-size:16px\">Reducci&oacute;n visible de los poros</span></li>\r\n	<li><span style=\"font-size:16px\">Mejora del tono y la textura</span></li>\r\n</ul>\r\n\r\n<p><strong><span style=\"font-size:20px\">HIPERPEGMENTACIONES Y MELASMA:&nbsp;</span></strong><span style=\"font-size:16px\">Aborda las manchas oscuras con tratamientos personalizados como peelings, mesoterapias despigmentantes y microneedling. Combina tratamientos domiciliarios con procedimientos en consultorio para obtener resultados efectivos en el melasma y hiperpigmentaciones.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Beneficios:</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Reducci&oacute;n visible de manchas</span></li>\r\n	<li><span style=\"font-size:16px\">Unificaci&oacute;n del tono de la piel</span></li>\r\n	<li><span style=\"font-size:16px\">Tratamientos seguros y personalizados</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:20px\"><strong>CONTROL DE LUNARES Y CANCER DE PIEL:&nbsp;</strong></span><span style=\"font-size:16px\">Vigila y trata lunares con nuestra dermat&oacute;loga especializada, identificando cambios que podr&iacute;an indicar un lunar maligno o c&aacute;ncer de piel. Realizamos evaluaciones completas para monitorear la salud de tus lunares y ofrecemos tratamientos seg&uacute;n las necesidades.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Beneficios:</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Detecci&oacute;n temprana de cambios en lunares</span></li>\r\n	<li><span style=\"font-size:16px\">Evaluaci&oacute;n completa de la piel</span></li>\r\n	<li><span style=\"font-size:16px\">Tratamientos personalizados y preventivos</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:20px\"><strong>ALOPECIA:&nbsp;</strong></span><span style=\"font-size:16px\">Combate la p&eacute;rdida de cabello con tratamientos dermatol&oacute;gicos y m&eacute;dicos, incluyendo Plasma Rico en Plaquetas y Mesoterapia Capilar. Ofrecemos soluciones para la alopecia androg&eacute;nica y otras causas, con enfoque en el rejuvenecimiento capilar.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Beneficios:</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Estimulaci&oacute;n del crecimiento capilar</span></li>\r\n	<li><span style=\"font-size:16px\">Mejora de la calidad del cabello</span></li>\r\n	<li><span style=\"font-size:16px\">Tratamientos seguros y efectivos</span></li>\r\n</ul>','2024-01-20','Experimenta una piel radiante y saludable con nuestros tratamientos dermatológicos personalizados. Nuestra dermatología especializada ofrece un enfoque integral para abordar diversas preocupaciones cutáneas.',1,1,2,14),(16,'Drenaje Linfático Manual','','Drenaje Linfático Manual','<p><span style=\"font-size:16px\">El DLM act&uacute;a activando los vasos linf&aacute;ticos, promoviendo la eliminaci&oacute;n de l&iacute;quidos y toxinas. Indicado para diversas afecciones como acn&eacute;, estr&eacute;s, edema postquir&uacute;rgico y m&aacute;s, este tratamiento ofrece una experiencia relajante y alivia molestias asociadas.</span></p>\r\n\r\n<p><strong><span style=\"font-size:20px\"><em>Beneficios del Tratamiento:</em></span></strong></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Estimula la circulaci&oacute;n linf&aacute;tica para reducir la retenci&oacute;n de l&iacute;quidos.</span></li>\r\n	<li><span style=\"font-size:16px\">Alivia tensiones y promueve una sensaci&oacute;n de relajaci&oacute;n.</span></li>\r\n	<li><span style=\"font-size:16px\">Mejora la respuesta inmunol&oacute;gica del cuerpo.</span></li>\r\n</ul>','2024-01-20','Experimenta el poder sanador del Drenaje Linfático Manual (DLM). Este masaje terapéutico suave está diseñado para mejorar la circulación linfática, reducir edemas y aliviar tensiones musculares.',1,1,2,15);
/*!40000 ALTER TABLE `services_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_post_category2`
--

DROP TABLE IF EXISTS `services_post_category2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_post_category2` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `services_post_category2_post_id_category_id_34d5601b_uniq` (`post_id`,`category_id`),
  KEY `services_post_catego_category_id_a53e75e8_fk_services_` (`category_id`),
  CONSTRAINT `services_post_catego_category_id_a53e75e8_fk_services_` FOREIGN KEY (`category_id`) REFERENCES `services_category` (`id`),
  CONSTRAINT `services_post_category2_post_id_eeb505f2_fk_services_post_id` FOREIGN KEY (`post_id`) REFERENCES `services_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_post_category2`
--

LOCK TABLES `services_post_category2` WRITE;
/*!40000 ALTER TABLE `services_post_category2` DISABLE KEYS */;
INSERT INTO `services_post_category2` VALUES (1,1,5),(2,1,7),(3,5,5),(4,5,7),(6,6,5),(7,6,7),(5,6,8),(9,7,6),(10,7,7),(8,7,8),(12,8,5),(13,8,7),(11,8,8),(15,9,6),(16,9,7),(14,9,8),(17,10,6),(18,10,7),(20,11,6),(21,11,7),(19,11,8),(23,12,6),(24,12,7),(22,12,8),(26,13,6),(27,13,7),(25,13,8),(29,14,5),(28,14,8),(31,15,5),(32,15,7),(30,15,8),(34,16,6),(33,16,8);
/*!40000 ALTER TABLE `services_post_category2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_post_likes`
--

DROP TABLE IF EXISTS `services_post_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_post_likes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `services_post_likes_post_id_user_id_678fbe07_uniq` (`post_id`,`user_id`),
  KEY `services_post_likes_user_id_55029f92_fk_auth_user_id` (`user_id`),
  CONSTRAINT `services_post_likes_post_id_af56300c_fk_services_post_id` FOREIGN KEY (`post_id`) REFERENCES `services_post` (`id`),
  CONSTRAINT `services_post_likes_user_id_55029f92_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_post_likes`
--

LOCK TABLES `services_post_likes` WRITE;
/*!40000 ALTER TABLE `services_post_likes` DISABLE KEYS */;
INSERT INTO `services_post_likes` VALUES (1,1,2),(5,5,2),(6,6,2),(7,7,2),(8,8,2),(9,9,2),(10,10,2),(11,11,2),(12,12,2),(13,13,2),(14,14,2),(15,15,2),(16,16,2);
/*!40000 ALTER TABLE `services_post_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_post_tags`
--

DROP TABLE IF EXISTS `services_post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_post_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `services_post_tags_post_id_tag_id_bde00916_uniq` (`post_id`,`tag_id`),
  KEY `services_post_tags_tag_id_7d68747d_fk_services_tag_id` (`tag_id`),
  CONSTRAINT `services_post_tags_post_id_0f70015a_fk_services_post_id` FOREIGN KEY (`post_id`) REFERENCES `services_post` (`id`),
  CONSTRAINT `services_post_tags_tag_id_7d68747d_fk_services_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `services_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_post_tags`
--

LOCK TABLES `services_post_tags` WRITE;
/*!40000 ALTER TABLE `services_post_tags` DISABLE KEYS */;
INSERT INTO `services_post_tags` VALUES (6,1,6),(7,1,7),(14,1,11),(15,1,13),(9,5,6),(11,5,9),(71,5,28),(4,6,4),(12,6,11),(13,6,12),(16,7,5),(17,7,6),(18,7,12),(31,7,23),(30,7,24),(22,8,4),(25,8,17),(27,8,19),(29,8,22),(61,8,26),(62,8,27),(32,9,4),(36,9,19),(38,9,25),(40,10,4),(41,10,11),(42,10,13),(45,11,4),(46,11,6),(47,11,7),(51,11,19),(52,12,5),(53,12,6),(57,12,23),(58,12,24),(59,12,26),(60,12,27),(63,13,5),(64,13,12),(68,13,23),(69,13,24),(70,13,28),(74,14,29),(75,14,30),(76,15,5),(77,15,22),(78,15,23),(79,15,24),(80,15,28),(81,15,31),(84,16,32),(83,16,33);
/*!40000 ALTER TABLE `services_post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_tag`
--

DROP TABLE IF EXISTS `services_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_tag`
--

LOCK TABLES `services_tag` WRITE;
/*!40000 ALTER TABLE `services_tag` DISABLE KEYS */;
INSERT INTO `services_tag` VALUES (4,'Flaccidez'),(5,'Manchas'),(6,'Arrugas'),(7,'Surcos'),(9,'Sudoración Excesiva'),(11,'Remodelación Facial'),(12,'Calidad de la Piel'),(13,'Contorno Facial'),(17,'Capilar'),(19,'Adiposidad Localizada'),(21,'Celulitis'),(22,'Alopecia'),(23,'Acne'),(24,'Poros Dilatados'),(25,'Modelado Corporal'),(26,'Cicatrices'),(27,'Estrías'),(28,'Rosácea'),(29,'Flebologia'),(30,'Arañitas'),(31,'Control de Lunares'),(32,'Embarazadas'),(33,'Pre y Post Quirúrgico');
/*!40000 ALTER TABLE `services_tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-02 18:57:48
