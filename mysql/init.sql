-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: pictionary
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Current Database: `pictionary`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `pictionary` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `pictionary`;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `word_id` int NOT NULL,
  `user_id` int NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,6,3,'This is not true! Finnish is so easy that I could speak it well even as a child.','2020-09-27 15:00:00'),(2,6,4,'Den hr r exakt den anledningen jag inte vill lra mig finska. Ha!','2020-09-27 18:00:00'),(3,6,1,'Well, this image might be a bit too exaggerated, but Finnish is certainly hard to learn!','2020-09-28 20:00:00'),(4,6,5,'Det spelar ingen roll, Gustav. Du r ju dlig p alla sprk i alla fall.','2020-09-28 20:05:00'),(5,6,8,'Svrigheten kats tio gnger!','2020-09-30 15:05:25'),(6,12,5,'Du glmde att verstta \'ta med\' till engelska.','2020-10-01 19:45:17'),(7,1,1,'','2020-10-04 12:30:09'),(8,6,1,'Finska inlrning krver tre gnger mer tid n svenska!','2020-10-05 06:57:39'),(9,1,2,'01','2020-10-05 07:03:23'),(10,14,8,'Sister, building muscles is important! It\'s my passion!','2020-10-05 10:12:01'),(11,14,11,'Why do you have to show them off???','2020-10-05 10:13:12');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follower_relation`
--

DROP TABLE IF EXISTS `follower_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follower_relation` (
  `pair_id` int NOT NULL AUTO_INCREMENT,
  `followee_id` int NOT NULL,
  `follower_id` int NOT NULL,
  PRIMARY KEY (`pair_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follower_relation`
--

LOCK TABLES `follower_relation` WRITE;
/*!40000 ALTER TABLE `follower_relation` DISABLE KEYS */;
INSERT INTO `follower_relation` VALUES (1,2,1),(2,1,2),(3,1,3),(4,1,4),(5,2,5),(6,4,1),(7,7,1),(8,8,1),(9,8,2),(10,5,2),(11,1,8),(12,2,8),(13,8,3),(14,8,4),(15,3,7),(16,2,8),(17,2,1),(18,8,1),(19,7,1),(20,11,8),(21,11,1),(22,1,11),(23,3,10),(24,3,1),(25,11,10),(26,4,9),(27,8,9),(28,1,5);
/*!40000 ALTER TABLE `follower_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_relation`
--

DROP TABLE IF EXISTS `like_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `like_relation` (
  `like_id` int NOT NULL AUTO_INCREMENT,
  `word_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`like_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_relation`
--

LOCK TABLES `like_relation` WRITE;
/*!40000 ALTER TABLE `like_relation` DISABLE KEYS */;
INSERT INTO `like_relation` VALUES (1,6,2),(2,6,3),(3,6,4),(4,6,8),(5,12,1),(6,12,8),(7,12,5),(8,13,1),(9,8,4),(10,13,4),(11,5,4),(12,7,1),(13,12,2),(14,6,4),(15,6,5),(16,2,1),(17,14,1),(18,14,3),(19,6,11),(20,6,10),(21,14,10),(22,14,8);
/*!40000 ALTER TABLE `like_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `own_language` varchar(16) NOT NULL,
  `target_language` varchar(16) NOT NULL,
  `country` varchar(16) DEFAULT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(256) NOT NULL,
  `image` longblob,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Shinichi','English','Finnish','Japan','nextplanehome1988@yahoo.co.jp','testpassword',NULL,'Currently working on Finnish as my 4th language!'),(2,'Test User','English','Japanese','United States','testuser@gmail.com','testpassword',NULL,'I want to watch Japanese anime without subtitles!'),(3,'Ismo','Finnish','English','Finland','IsmoLeikola@gmail.com','testpassword',NULL,'Suomen trkein sana on nimenomaan \"noni\". Siit prj 90% keskustelusta.'),(4,'Gustav','Swedish','English','Sweden','gustav.svensson@gmail.com','testpassword',NULL,'rebro r den bsta i hela vrlden!'),(5,'Greta','Swedish','English','Sweden','greta.franzen@gmail.com','testpassword',NULL,'Det gr inget, Gustav. Min pappa talar illa om dig ocks.'),(6,'Logo','Cantonese','Icelandic','Hong Kong','logo@gmail.com','testpassword',NULL,''),(7,'Ebba','Swedish','English','Sweden','ebba.lindstrom@gmail.com','testpassword',NULL,'Tyvrr ska det inte faktiskt bli ngon resa...'),(8,'Alex','English','Swedish','United Kingdom','alex.armstrong@gmail.com','testpassword',NULL,'Mod kats hundra gnger, muskler kats tusen gnger!'),(9,'Test User 2','English','Swedish','Canada','testuser2@gmail.com','testpassword',NULL,'At first I thought that learning Swedish would be easy, but I realized that I underestimated it...'),(10,'Test User 3','English','Finnish','Australia','testuser3@gmail.com','testpassword',NULL,'I\'ll keep in mind Ismo\'s advice. Whenever I get in trouble, I\'ll just keep saying \'no niin\'.'),(11,'Olivier','English','Finnish','United Kingdom','olivier.mira.armstrong@gmail.com','testpassword',NULL,'If my brother can learn Swedish, I should be capable of mastering Finnish, which is way much more challenging. Ha!');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word`
--

DROP TABLE IF EXISTS `word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `word` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `own_lang_word_name` varchar(64) NOT NULL,
  `target_lang_word_name` varchar(64) NOT NULL,
  `own_lang_ex_sentence` varchar(255) DEFAULT NULL,
  `target_lang_ex_sentence` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `image` longblob,
  PRIMARY KEY (`id`),
  KEY `fk_user` (`user_id`),
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word`
--

LOCK TABLES `word` WRITE;
/*!40000 ALTER TABLE `word` DISABLE KEYS */;
INSERT INTO `word` VALUES (1,2,'write','','One of the effective ways to learn is to write','1','2020-06-28 15:00:00',NULL),(2,2,'effective','','One of the effective ways to learn is to write','1','2020-06-28 15:05:00',NULL),(3,3,'no niin','come on','No niin, onpas pitk jono taas','Come on, a long queue again?','2020-06-28 15:05:00',NULL),(4,4,'starkare','stronger','Du r inte vrldens starkaste bjrn lngre. Med 3 brukar av dunderhonong i magen, nu r jag starkare n starkaste!','You are no longer the world\'s strongest bear. With 3 pots of thunder-honey, now I am stronger than the strongest!','2020-06-28 15:05:00',NULL),(5,5,'avancerad','advanced','Det tar steg fr steg fr att uppn den avancerade nivn i sprkinlrning','It takes step by step to reach the advanced level in language learning','2020-07-29 22:44:22',NULL),(6,1,'grammar','kielioppi','Finnish grammar is certainly one of the most difficult in the entire world.','Suomen kielioppi on varmasti yksi vaikeimmista koko maailmassa.','2020-07-30 21:51:40',NULL),(7,3,'prjt','to be fine','Sanalla \"noni\" prj 90% keskustelusta.','With the word \"noni\" alone you\'ll be fine in 90% of the conversation.','2020-08-01 15:56:04',NULL),(8,1,'settle for','tyyty','Bolt settles for the second place.','Bolt tyytyy kakkoseksi.','2020-08-02 10:54:45',NULL),(9,4,'jorden','the Earth','Enligt Muminpappa har planeten Mars en hgre utvecklad civilisation n jorden.','According to Moominpappa the planet Mars has a more developed civilization than the Earth.','2020-08-03 11:24:15',NULL),(10,4,'osannolik','unlikely','Det r hgt osannolikt att de skulle vilja anfalla andra planeter, enligt den hr boken.','It\'s highly unlikely that they would want to attack other planets, according to this book.','2020-08-07 22:32:28',NULL),(11,4,'spela in','record','Spela in? Kalle Anka snds bara en gng om ret och det r nu!','Record? Donald Duck is broadcast only once a year, and it\'s now!','2020-08-25 18:45:52',NULL),(12,4,'beredd','prepared','Du kan inte ta med din pojkvn till New York. r du verkligen beredd fr att lmna ditt vackert land?','You cannot ta med your boyfriend to the Big Apple. Are you really prepared to leave your beautiful country?','2020-09-06 17:36:08',NULL),(13,8,'move','flytta','Sister, could you move your foot?','Syster, kunde du flytta din fot?','2020-09-09 18:37:17',NULL),(14,11,'muscle','lihas','I don\'t understand why Alex loves muscles and showing them off so much.','En ymmrr miksi Alex rakastaa lihaksiaan ja niiden esittely niin paljon.','2020-10-05 09:50:00',NULL);
/*!40000 ALTER TABLE `word` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-25 13:25:18
