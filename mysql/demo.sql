-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `pub_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
INSERT INTO `blog` VALUES (1,'SpringMVCコース','これはSpringMVCコースです',2,'2015-03-18');

UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `user` WRITE;

INSERT INTO `user` VALUES (1,'Steve','gaussic2','Steve','NoJob'),(2,'Bill','111111','Bill','Gates'),(3,'Mark','22222','Mark','Zuckerberg'),(4,'gauss','11111111','Gaussic','D');

UNLOCK TABLES;

