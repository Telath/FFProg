-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.7.33 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour ffprog
CREATE DATABASE IF NOT EXISTS `ffprog` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ffprog`;

-- Listage de la structure de la table ffprog. doctrine_migration_versions
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Listage des données de la table ffprog.doctrine_migration_versions : ~4 rows (environ)
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20220308090114', '2022-03-08 09:02:53', 60);
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20220308091115', '2022-03-08 09:11:43', 90);
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20220308111406', '2022-03-08 11:14:28', 62);
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20220308111752', '2022-03-08 11:18:09', 56);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;

-- Listage de la structure de la table ffprog. extensions
CREATE TABLE IF NOT EXISTS `extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_min` int(11) NOT NULL,
  `level_max` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ffprog.extensions : ~4 rows (environ)
/*!40000 ALTER TABLE `extensions` DISABLE KEYS */;
INSERT INTO `extensions` (`id`, `name`, `level_min`, `level_max`) VALUES
	(1, 'A realm reborn', 1, 50);
INSERT INTO `extensions` (`id`, `name`, `level_min`, `level_max`) VALUES
	(2, 'Heavensward', 51, 60);
INSERT INTO `extensions` (`id`, `name`, `level_min`, `level_max`) VALUES
	(3, 'Stormblood', 61, 70);
INSERT INTO `extensions` (`id`, `name`, `level_min`, `level_max`) VALUES
	(4, 'Shadowbringers', 71, 80);
INSERT INTO `extensions` (`id`, `name`, `level_min`, `level_max`) VALUES
	(5, 'Endwalker', 81, 90);
/*!40000 ALTER TABLE `extensions` ENABLE KEYS */;

-- Listage de la structure de la table ffprog. property
CREATE TABLE IF NOT EXISTS `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `quest_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ffprog.property : ~2 rows (environ)
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` (`id`, `title`, `description`, `level`, `quest_group`) VALUES
	(1, 'Une visite s\'impose', 'Momodi a des informatiuons supplémentaires à vous donner sur Ul\'dah', 1, 'Chroniques de la 7e ère ombrale');
INSERT INTO `property` (`id`, `title`, `description`, `level`, `quest_group`) VALUES
	(2, 'blablabla', 'Il a dit faut aller là bas puis ici', 2, 'Chrochro');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;

-- Listage de la structure de la table ffprog. quests
CREATE TABLE IF NOT EXISTS `quests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `quest_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `extension` (`extension`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table ffprog.quests : ~2 rows (environ)
/*!40000 ALTER TABLE `quests` DISABLE KEYS */;
INSERT INTO `quests` (`id`, `title`, `description`, `level`, `quest_group`, `extension`) VALUES
	(1, 'Premiere quête', 'Ceci est la premiere quete que vous allez faire', 1, 'Croniques', 'Endwalker');
INSERT INTO `quests` (`id`, `title`, `description`, `level`, `quest_group`, `extension`) VALUES
	(2, 'Deuxième quête', 'Ceci est la 2e ', 2, 'Chroniques', 'Endwalker');
INSERT INTO `quests` (`id`, `title`, `description`, `level`, `quest_group`, `extension`) VALUES
	(3, 'Troisieme quete', 'Ouais ouais la 3e', 2, 'Chrochro', 'A realm reborn');
/*!40000 ALTER TABLE `quests` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
