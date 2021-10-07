-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: dbaerolinea
-- ------------------------------------------------------
-- Server version	8.0.23

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (2,'Projects'),(1,'Staff');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Departamento',7,'add_departamento'),(26,'Can change Departamento',7,'change_departamento'),(27,'Can delete Departamento',7,'delete_departamento'),(28,'Can view Departamento',7,'view_departamento'),(29,'Can add Habilidades',8,'add_habilidades'),(30,'Can change Habilidades',8,'change_habilidades'),(31,'Can delete Habilidades',8,'delete_habilidades'),(32,'Can view Habilidades',8,'view_habilidades'),(33,'Can add persona',9,'add_persona'),(34,'Can change persona',9,'change_persona'),(35,'Can delete persona',9,'delete_persona'),(36,'Can view persona',9,'view_persona'),(37,'Can add empleado',10,'add_empleado'),(38,'Can change empleado',10,'change_empleado'),(39,'Can delete empleado',10,'delete_empleado'),(40,'Can view empleado',10,'view_empleado'),(41,'Can add cargo',11,'add_cargo'),(42,'Can change cargo',11,'change_cargo'),(43,'Can delete cargo',11,'delete_cargo'),(44,'Can view cargo',11,'view_cargo'),(45,'Can add proyecto',12,'add_proyecto'),(46,'Can change proyecto',12,'change_proyecto'),(47,'Can delete proyecto',12,'delete_proyecto'),(48,'Can view proyecto',12,'view_proyecto'),(49,'Can add permisos',13,'add_permisos'),(50,'Can change permisos',13,'change_permisos'),(51,'Can delete permisos',13,'delete_permisos'),(52,'Can view permisos',13,'view_permisos'),(53,'Can add blacklisted token',14,'add_blacklistedtoken'),(54,'Can change blacklisted token',14,'change_blacklistedtoken'),(55,'Can delete blacklisted token',14,'delete_blacklistedtoken'),(56,'Can view blacklisted token',14,'view_blacklistedtoken'),(57,'Can add outstanding token',15,'add_outstandingtoken'),(58,'Can change outstanding token',15,'change_outstandingtoken'),(59,'Can delete outstanding token',15,'delete_outstandingtoken'),(60,'Can view outstanding token',15,'view_outstandingtoken');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$W2Lxx3ADt1EqsqDQsSdlpz$3eh2l6rzJ0Ytso1cfTwW27VP3wVpfEEKVYjaOR6YfsU=','2021-10-04 16:59:37.690945',1,'alvaro','','','alvarohz@gmail.com',1,1,'2021-09-30 15:31:39.480676'),(2,'pbkdf2_sha256$260000$BcIr5QI1xCrqPVtAXLAs94$aMPge8jWTdrjOFN3XCYPU9mzbHy9Dt/QyefGvIBVtmY=','2021-10-04 17:54:54.543263',0,'alicia','','','',1,1,'2021-10-04 16:51:14.000000'),(3,'pbkdf2_sha256$260000$g8u2kDnJIoChOS7rBCGNDJ$CjNGIrzSuLy1Ho6FfMoeV9PcxR3Rug/oY9rAV+OBTfc=','2021-10-04 17:19:24.279548',0,'beto','','','',1,1,'2021-10-04 16:52:15.000000');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,2),(2,3,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-09-30 15:34:44.610534','1','sistema facturacion',1,'[{\"added\": {}}]',12,1),(2,'2021-09-30 15:35:16.718780','2','Sistema impuestos',1,'[{\"added\": {}}]',12,1),(3,'2021-09-30 15:35:24.907183','1','Cargo object (1)',1,'[{\"added\": {}}]',11,1),(4,'2021-09-30 15:36:07.815355','1','alicia',1,'[{\"added\": {}}]',10,1),(5,'2021-09-30 15:36:38.945190','3','sistema academico',1,'[{\"added\": {}}]',12,1),(6,'2021-09-30 15:36:44.840040','2','Director',1,'[{\"added\": {}}]',11,1),(7,'2021-09-30 15:36:47.639175','2','beto',1,'[{\"added\": {}}]',10,1),(8,'2021-09-30 15:37:21.404947','4','aplicacion movil',1,'[{\"added\": {}}]',12,1),(9,'2021-09-30 15:37:31.705667','3','Desarrollador',1,'[{\"added\": {}}]',11,1),(10,'2021-09-30 15:37:58.767501','3','carlos',1,'[{\"added\": {}}]',10,1),(11,'2021-09-30 15:38:24.197777','4','control de calidad',1,'[{\"added\": {}}]',11,1),(12,'2021-09-30 15:38:27.338067','4','diana',1,'[{\"added\": {}}]',10,1),(13,'2021-10-04 16:45:47.380959','1','Staff',1,'[{\"added\": {}}]',3,1),(14,'2021-10-04 16:47:07.725840','2','Projects',1,'[{\"added\": {}}]',3,1),(15,'2021-10-04 16:47:54.161268','1','Permisos object (1)',1,'[{\"added\": {}}]',13,1),(16,'2021-10-04 16:49:51.882371','2','/api/empleados/lista-proyectos/',1,'[{\"added\": {}}]',13,1),(17,'2021-10-04 16:51:14.478247','2','alicia',1,'[{\"added\": {}}]',4,1),(18,'2021-10-04 16:51:57.033790','2','alicia',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(19,'2021-10-04 16:52:15.891103','3','beto',1,'[{\"added\": {}}]',4,1),(20,'2021-10-04 16:52:35.838300','3','beto',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(21,'2021-10-04 16:59:55.585898','2','alicia',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(22,'2021-10-04 17:00:01.135917','3','beto',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'empleados','cargo'),(10,'empleados','empleado'),(12,'empleados','proyecto'),(7,'inicio','departamento'),(8,'inicio','habilidades'),(9,'inicio','persona'),(6,'sessions','session'),(14,'token_blacklist','blacklistedtoken'),(15,'token_blacklist','outstandingtoken'),(13,'usuarios','permisos');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-09-30 15:09:07.673314'),(2,'auth','0001_initial','2021-09-30 15:10:14.336872'),(3,'admin','0001_initial','2021-09-30 15:10:32.710527'),(4,'admin','0002_logentry_remove_auto_add','2021-09-30 15:10:32.822197'),(5,'admin','0003_logentry_add_action_flag_choices','2021-09-30 15:10:33.032477'),(6,'contenttypes','0002_remove_content_type_name','2021-09-30 15:10:40.920448'),(7,'auth','0002_alter_permission_name_max_length','2021-09-30 15:10:49.410091'),(8,'auth','0003_alter_user_email_max_length','2021-09-30 15:10:53.392821'),(9,'auth','0004_alter_user_username_opts','2021-09-30 15:10:54.240669'),(10,'auth','0005_alter_user_last_login_null','2021-09-30 15:11:01.521511'),(11,'auth','0006_require_contenttypes_0002','2021-09-30 15:11:01.882870'),(12,'auth','0007_alter_validators_add_error_messages','2021-09-30 15:11:02.273921'),(13,'auth','0008_alter_user_username_max_length','2021-09-30 15:11:09.878970'),(14,'auth','0009_alter_user_last_name_max_length','2021-09-30 15:11:17.292353'),(15,'auth','0010_alter_group_name_max_length','2021-09-30 15:11:18.983135'),(16,'auth','0011_update_proxy_permissions','2021-09-30 15:11:19.157061'),(17,'auth','0012_alter_user_first_name_max_length','2021-09-30 15:11:31.657046'),(18,'empleados','0001_initial','2021-09-30 15:11:35.489317'),(19,'inicio','0001_initial','2021-09-30 15:12:54.786583'),(20,'sessions','0001_initial','2021-09-30 15:13:00.359150'),(21,'empleados','0002_auto_20210930_0929','2021-09-30 15:30:12.174390'),(22,'empleados','0003_alter_empleado_cargo','2021-09-30 15:59:11.472770'),(23,'empleados','0004_alter_empleado_proyecto','2021-09-30 16:00:37.007947'),(24,'empleados','0005_alter_proyecto_fecha_fin','2021-09-30 18:57:47.370119'),(25,'usuarios','0001_initial','2021-10-04 16:44:10.768783'),(26,'token_blacklist','0001_initial','2021-10-04 18:04:45.708811'),(27,'token_blacklist','0002_outstandingtoken_jti_hex','2021-10-04 18:04:46.951217'),(28,'token_blacklist','0003_auto_20171017_2007','2021-10-04 18:04:47.058146'),(29,'token_blacklist','0004_auto_20171017_2013','2021-10-04 18:04:54.623822'),(30,'token_blacklist','0005_remove_outstandingtoken_jti','2021-10-04 18:05:00.238463'),(31,'token_blacklist','0006_auto_20171017_2113','2021-10-04 18:05:00.881167'),(32,'token_blacklist','0007_auto_20171017_2214','2021-10-04 18:05:11.302499'),(33,'token_blacklist','0008_migrate_to_bigautofield','2021-10-04 18:05:37.791258'),(34,'token_blacklist','0010_fix_migrate_to_bigautofield','2021-10-04 18:05:38.190994'),(35,'token_blacklist','0011_linearizes_history','2021-10-04 18:05:38.465703'),(36,'usuarios','0002_auto_20211004_1204','2021-10-04 18:05:38.809901');
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
INSERT INTO `django_session` VALUES ('8hdz6rps2sowjpuljukiz4rql3ggsoiv','.eJxVjEsOAiEQBe_C2hBg6AFcuvcMpGkaGTWQzGdlvLtOMgvdvqp6LxFxW2vcFp7jlMVZGHH63RLSg9sO8h3brUvqbZ2nJHdFHnSR1575eTncv4OKS_3Wzo4WdCrJQ7EjMRXPijMNygAgKmeSVq6EDKQZBmcye0ZF1g8hJEDx_gDvDTgz:1mXSAw:oJI8wviVQCjc4j1f8SG0kN8y5z0nblsJYt0R4wEpW-I','2021-10-18 17:54:54.635938'),('keky1s0r0gld2lm17eobbn3rdpg1k0yf','.eJxVjEEOwiAQRe_C2hBgpAWX7nsGMtMZpGpoUtqV8e7apAvd_vfef6mE21rS1mRJE6uLsur0uxGOD6k74DvW26zHua7LRHpX9EGbHmaW5_Vw_w4KtvKtu-iIyWHMIULPfbYdmYxkAzjxhhEiWCd4zsTAOQA6Gz2B-GzEiqj3B_KBOIo:1mVy2X:IvNFgKU95Xa4F0iLNWmCK-bsZ_l9T_m_mEiHvzp1JrE','2021-10-14 15:32:05.206754');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados_cargo`
--

DROP TABLE IF EXISTS `empleados_cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados_cargo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados_cargo`
--

LOCK TABLES `empleados_cargo` WRITE;
/*!40000 ALTER TABLE `empleados_cargo` DISABLE KEYS */;
INSERT INTO `empleados_cargo` VALUES (1,'2021-09-30 15:35:24.860376','2021-09-30 15:35:24.860376','Gerente'),(2,'2021-09-30 15:36:44.813629','2021-09-30 15:36:44.813629','Director'),(3,'2021-09-30 15:37:31.601150','2021-09-30 15:37:31.601150','Desarrollador'),(4,'2021-09-30 15:38:24.163243','2021-09-30 15:38:24.163243','control de calidad');
/*!40000 ALTER TABLE `empleados_cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados_empleado`
--

DROP TABLE IF EXISTS `empleados_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados_empleado` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `sueldo` decimal(5,2) NOT NULL,
  `cargo_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empleados_empleado_cargo_id_717691a9_fk_empleados_cargo_id` (`cargo_id`),
  CONSTRAINT `empleados_empleado_cargo_id_717691a9_fk_empleados_cargo_id` FOREIGN KEY (`cargo_id`) REFERENCES `empleados_cargo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados_empleado`
--

LOCK TABLES `empleados_empleado` WRITE;
/*!40000 ALTER TABLE `empleados_empleado` DISABLE KEYS */;
INSERT INTO `empleados_empleado` VALUES (1,'2021-09-30 15:36:07.767640','2021-09-30 15:36:07.767640','alicia','alicia@gmail.com','111111',900.00,1),(2,'2021-09-30 15:36:47.310553','2021-09-30 15:36:47.310553','beto','beto@gmail.com','22222',800.00,2),(3,'2021-09-30 15:37:58.691457','2021-09-30 15:37:58.691457','carlos','carlos@gmail.com','33333',700.00,3),(4,'2021-09-30 15:38:27.204782','2021-09-30 15:38:27.204782','diana','diana@hotmail.com','44444',600.00,4);
/*!40000 ALTER TABLE `empleados_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados_empleado_proyecto`
--

DROP TABLE IF EXISTS `empleados_empleado_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados_empleado_proyecto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `empleado_id` bigint NOT NULL,
  `proyecto_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `empleados_empleado_proye_empleado_id_proyecto_id_e88b0793_uniq` (`empleado_id`,`proyecto_id`),
  KEY `empleados_empleado_p_proyecto_id_83c14bdc_fk_empleados` (`proyecto_id`),
  CONSTRAINT `empleados_empleado_p_empleado_id_8a5c42df_fk_empleados` FOREIGN KEY (`empleado_id`) REFERENCES `empleados_empleado` (`id`),
  CONSTRAINT `empleados_empleado_p_proyecto_id_83c14bdc_fk_empleados` FOREIGN KEY (`proyecto_id`) REFERENCES `empleados_proyecto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados_empleado_proyecto`
--

LOCK TABLES `empleados_empleado_proyecto` WRITE;
/*!40000 ALTER TABLE `empleados_empleado_proyecto` DISABLE KEYS */;
INSERT INTO `empleados_empleado_proyecto` VALUES (1,1,1),(2,1,2),(3,2,3),(4,3,1),(5,3,4),(6,4,2),(7,4,4);
/*!40000 ALTER TABLE `empleados_empleado_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados_proyecto`
--

DROP TABLE IF EXISTS `empleados_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados_proyecto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `nombre_proyecto` varchar(50) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados_proyecto`
--

LOCK TABLES `empleados_proyecto` WRITE;
/*!40000 ALTER TABLE `empleados_proyecto` DISABLE KEYS */;
INSERT INTO `empleados_proyecto` VALUES (1,'2021-09-30 15:34:44.552862','2021-09-30 15:34:44.552862','sistema facturacion','2021-09-30','2021-10-30'),(2,'2021-09-30 15:35:16.690799','2021-09-30 15:35:16.690799','Sistema impuestos','2021-09-30','2021-11-30'),(3,'2021-09-30 15:36:38.891225','2021-09-30 15:36:38.891225','sistema academico','2021-09-30','2021-10-31'),(4,'2021-09-30 15:37:21.333775','2021-09-30 15:37:21.333775','aplicacion movil','2021-09-30','2021-12-09');
/*!40000 ALTER TABLE `empleados_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_departamento`
--

DROP TABLE IF EXISTS `inicio_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_departamento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre_depto` varchar(50) NOT NULL,
  `nombre_corto` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_corto` (`nombre_corto`),
  UNIQUE KEY `inicio_departamento_nombre_depto_nombre_corto_dbf50003_uniq` (`nombre_depto`,`nombre_corto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_departamento`
--

LOCK TABLES `inicio_departamento` WRITE;
/*!40000 ALTER TABLE `inicio_departamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `inicio_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_habilidades`
--

DROP TABLE IF EXISTS `inicio_habilidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_habilidades` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `habilidades` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_habilidades`
--

LOCK TABLES `inicio_habilidades` WRITE;
/*!40000 ALTER TABLE `inicio_habilidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `inicio_habilidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_persona`
--

DROP TABLE IF EXISTS `inicio_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_persona` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `edad` int DEFAULT NULL,
  `activo` tinyint(1) NOT NULL,
  `depto_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inicio_persona_depto_id_7a5ec029_fk_inicio_departamento_id` (`depto_id`),
  CONSTRAINT `inicio_persona_depto_id_7a5ec029_fk_inicio_departamento_id` FOREIGN KEY (`depto_id`) REFERENCES `inicio_departamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_persona`
--

LOCK TABLES `inicio_persona` WRITE;
/*!40000 ALTER TABLE `inicio_persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `inicio_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio_persona_habilidades`
--

DROP TABLE IF EXISTS `inicio_persona_habilidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio_persona_habilidades` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `persona_id` bigint NOT NULL,
  `habilidades_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inicio_persona_habilidad_persona_id_habilidades_i_7c91f244_uniq` (`persona_id`,`habilidades_id`),
  KEY `inicio_persona_habil_habilidades_id_888870c1_fk_inicio_ha` (`habilidades_id`),
  CONSTRAINT `inicio_persona_habil_habilidades_id_888870c1_fk_inicio_ha` FOREIGN KEY (`habilidades_id`) REFERENCES `inicio_habilidades` (`id`),
  CONSTRAINT `inicio_persona_habil_persona_id_90977095_fk_inicio_pe` FOREIGN KEY (`persona_id`) REFERENCES `inicio_persona` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio_persona_habilidades`
--

LOCK TABLES `inicio_persona_habilidades` WRITE;
/*!40000 ALTER TABLE `inicio_persona_habilidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `inicio_persona_habilidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

DROP TABLE IF EXISTS `token_blacklist_blacklistedtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

LOCK TABLES `token_blacklist_blacklistedtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

DROP TABLE IF EXISTS `token_blacklist_outstandingtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` int DEFAULT NULL,
  `jti` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  KEY `token_blacklist_outs_user_id_83bc629a_fk_auth_user` (`user_id`),
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

LOCK TABLES `token_blacklist_outstandingtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_outstandingtoken` VALUES (1,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzMzQ1NzI1OCwianRpIjoiOTNlYTJlMjVlYTIwNDVkOWFhZjZiMDcwMTk5MDczMTUiLCJ1c2VyX2lkIjoxfQ.Vvbb7-fyv61AEju1sz8piKw_fzrEO-QYsFZ9dmP1X8c','2021-10-04 18:07:38.141718','2021-10-05 18:07:38.000000',1,'93ea2e25ea2045d9aaf6b07019907315'),(2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzMzQ2MTg3NiwianRpIjoiYWVhNTFhMDIwMDBhNDg3MzljMWUxZDRmYTZiOTFkNTciLCJ1c2VyX2lkIjoxfQ.8UeV3bHTOrWmyn_2gSKeDTPOZKleyQMPh_AruXpRP1A','2021-10-04 19:24:36.297462','2021-10-05 19:24:36.000000',1,'aea51a02000a48739c1e1d4fa6b91d57'),(3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzMzQ2MTg4NCwianRpIjoiZTc3YzNiMzg1Yzc0NGE3ZWEyN2IxYTVkMGNmZjE1MjQiLCJ1c2VyX2lkIjoxfQ.FmU4Tq_CpCdLDv_MQ-22QiAJQNI7ppY8oSVsJj3uL3Q','2021-10-04 19:24:44.857335','2021-10-05 19:24:44.000000',1,'e77c3b385c744a7ea27b1a5d0cff1524');
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_permisos`
--

DROP TABLE IF EXISTS `usuarios_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_permisos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_permisos`
--

LOCK TABLES `usuarios_permisos` WRITE;
/*!40000 ALTER TABLE `usuarios_permisos` DISABLE KEYS */;
INSERT INTO `usuarios_permisos` VALUES (1,'2021-10-04 16:47:54.037492','2021-10-04 16:47:54.037492','Ver empleados','/api/empleados/lista-empleados/'),(2,'2021-10-04 16:49:51.803421','2021-10-04 16:49:51.803421','consultar proyectos','/api/empleados/lista-proyectos/');
/*!40000 ALTER TABLE `usuarios_permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_permisos_grupo`
--

DROP TABLE IF EXISTS `usuarios_permisos_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_permisos_grupo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `permisos_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuarios_permisos_grupo_permisos_id_group_id_9cb265c3_uniq` (`permisos_id`,`group_id`),
  KEY `usuarios_permisos_grupo_group_id_886e0f7a_fk_auth_group_id` (`group_id`),
  CONSTRAINT `usuarios_permisos_gr_permisos_id_ea5339ae_fk_usuarios_` FOREIGN KEY (`permisos_id`) REFERENCES `usuarios_permisos` (`id`),
  CONSTRAINT `usuarios_permisos_grupo_group_id_886e0f7a_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_permisos_grupo`
--

LOCK TABLES `usuarios_permisos_grupo` WRITE;
/*!40000 ALTER TABLE `usuarios_permisos_grupo` DISABLE KEYS */;
INSERT INTO `usuarios_permisos_grupo` VALUES (1,1,1),(2,2,1),(3,2,2);
/*!40000 ALTER TABLE `usuarios_permisos_grupo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-06  9:46:25
