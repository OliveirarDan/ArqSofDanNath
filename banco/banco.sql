CREATE DATABASE `pipocadb` /*!40100 DEFAULT CHARACTER SET utf8 */;




USE `pipocadb`;


CREATE TABLE `genero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=10771 DEFAULT CHARSET=utf8;

CREATE TABLE `filme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descricao` varchar(4000) DEFAULT NULL,
  `diretor` varchar(60) DEFAULT NULL,
  `posterpath` varchar(200) DEFAULT NULL,
  `popularidade` decimal(10,2) DEFAULT NULL,
  `data_lancamento` date DEFAULT NULL,
  `id_genero` int(11) NOT NULL,
  `dataLancamento` date DEFAULT NULL,
  PRIMARY KEY (`id`,`id_genero`),
  KEY `fk_FILME_GENERO_idx` (`id_genero`),
  CONSTRAINT `FKo2acmrl55vdpunh0lrp6utl3q` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id`),
  CONSTRAINT `fk_FILME_GENERO` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;





CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senha` varchar(255) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (28,'Ação'),(16,'Animação'),(12,'Aventura'),(35,'Comédia'),(80,'Crime'),(99,'Documentário'),(18,'Drama'),(10751,'Família'),(14,'Fantasia'),(878,'Ficção Científica'),(10770,'Filme para TV'),(10752,'Guerra'),(36,'História'),(27,'Horror'),(9648,'Mistério'),(10402,'Musical'),(10749,'Romance'),(53,'Suspense'),(37,'Western');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;
