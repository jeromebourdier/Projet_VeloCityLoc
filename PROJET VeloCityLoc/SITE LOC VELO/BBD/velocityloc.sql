-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 25 sep. 2019 à 11:56
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `velocityloc`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
CREATE TABLE IF NOT EXISTS `adresse` (
  `idVILLES` int(11) NOT NULL AUTO_INCREMENT,
  `nom_rue` varchar(45) DEFAULT NULL,
  `numero_rue` varchar(45) DEFAULT NULL,
  `ville_idville` int(11) NOT NULL,
  PRIMARY KEY (`idVILLES`),
  UNIQUE KEY `idVILLES_UNIQUE` (`idVILLES`),
  KEY `fk_adresse_ville1_idx` (`ville_idville`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `idArticle` int(11) NOT NULL AUTO_INCREMENT,
  `nom_article` varchar(45) DEFAULT NULL,
  `description_article` varchar(45) DEFAULT NULL,
  `couleur_article` varchar(45) DEFAULT NULL,
  `reference_article` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idArticle`),
  UNIQUE KEY `idVELOS_UNIQUE` (`idArticle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='        ';

-- --------------------------------------------------------

--
-- Structure de la table `forfaits`
--

DROP TABLE IF EXISTS `forfaits`;
CREATE TABLE IF NOT EXISTS `forfaits` (
  `idForfaits` int(11) NOT NULL AUTO_INCREMENT,
  `heure` int(11) DEFAULT NULL,
  `jours` int(11) DEFAULT NULL,
  `semaine` int(11) DEFAULT NULL,
  `mois` int(11) DEFAULT NULL,
  `tva` int(11) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  PRIMARY KEY (`idForfaits`),
  UNIQUE KEY `idFORFAITS_UNIQUE` (`idForfaits`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

DROP TABLE IF EXISTS `paiement`;
CREATE TABLE IF NOT EXISTS `paiement` (
  `idPaiement` int(11) NOT NULL AUTO_INCREMENT,
  `numero_carte` int(11) DEFAULT NULL,
  `date_expiration` int(11) DEFAULT NULL,
  `cvv_carte` int(11) DEFAULT NULL,
  `name_carte` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPaiement`),
  UNIQUE KEY `idPAIEMENT_UNIQUE` (`idPaiement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

DROP TABLE IF EXISTS `panier`;
CREATE TABLE IF NOT EXISTS `panier` (
  `idPanier` int(11) NOT NULL AUTO_INCREMENT,
  `PAIEMENT_idPAIEMENT` int(11) NOT NULL,
  PRIMARY KEY (`idPanier`,`PAIEMENT_idPAIEMENT`),
  UNIQUE KEY `idPANIER_UNIQUE` (`idPanier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `panier_has_articles`
--

DROP TABLE IF EXISTS `panier_has_articles`;
CREATE TABLE IF NOT EXISTS `panier_has_articles` (
  `PANIER_idPANIER` int(11) NOT NULL,
  `PANIER_PAIEMENT_idPAIEMENT` int(11) NOT NULL,
  `ARTICLES_idVELOS` int(11) NOT NULL,
  PRIMARY KEY (`PANIER_idPANIER`,`PANIER_PAIEMENT_idPAIEMENT`,`ARTICLES_idVELOS`),
  KEY `fk_PANIER_has_ARTICLES_ARTICLES1_idx` (`ARTICLES_idVELOS`),
  KEY `fk_PANIER_has_ARTICLES_PANIER1_idx` (`PANIER_idPANIER`,`PANIER_PAIEMENT_idPAIEMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `panier_has_forfaits`
--

DROP TABLE IF EXISTS `panier_has_forfaits`;
CREATE TABLE IF NOT EXISTS `panier_has_forfaits` (
  `PANIER_idPANIER` int(11) NOT NULL,
  `PANIER_PAIEMENT_idPAIEMENT` int(11) NOT NULL,
  `FORFAITS_idFORFAITS` int(11) NOT NULL,
  PRIMARY KEY (`PANIER_idPANIER`,`PANIER_PAIEMENT_idPAIEMENT`,`FORFAITS_idFORFAITS`),
  KEY `fk_PANIER_has_FORFAITS_FORFAITS1_idx` (`FORFAITS_idFORFAITS`),
  KEY `fk_PANIER_has_FORFAITS_PANIER1_idx` (`PANIER_idPANIER`,`PANIER_PAIEMENT_idPAIEMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `idSTOCK` int(11) NOT NULL AUTO_INCREMENT,
  `velos` int(11) DEFAULT NULL,
  `nb_velos` int(11) DEFAULT NULL,
  `date_entree` date DEFAULT NULL,
  `date_sortie` date DEFAULT NULL,
  `ARTICLES_idVELOS` int(11) NOT NULL,
  PRIMARY KEY (`idSTOCK`),
  UNIQUE KEY `idSTOCK_UNIQUE` (`idSTOCK`),
  KEY `fk_STOCK_ARTICLES1_idx` (`ARTICLES_idVELOS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `idUSERS` int(11) NOT NULL AUTO_INCREMENT,
  `NOM` mediumtext,
  `PRENOM` mediumtext,
  `EMAIL` longtext,
  `PARTICULIER` int(11) DEFAULT NULL,
  `PANIER_idPANIER` int(11) NOT NULL,
  `PANIER_PAIEMENT_idPAIEMENT` int(11) NOT NULL,
  `PAIEMENT_idPAIEMENT` int(11) NOT NULL,
  `adresse_idVILLES` int(11) NOT NULL,
  PRIMARY KEY (`idUSERS`),
  KEY `fk_USERS_PANIER_idx` (`PANIER_idPANIER`,`PANIER_PAIEMENT_idPAIEMENT`),
  KEY `fk_USERS_PAIEMENT1_idx` (`PAIEMENT_idPAIEMENT`),
  KEY `fk_USERS_adresse1_idx` (`adresse_idVILLES`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

DROP TABLE IF EXISTS `ville`;
CREATE TABLE IF NOT EXISTS `ville` (
  `idville` int(11) NOT NULL AUTO_INCREMENT,
  `cp` varchar(45) DEFAULT NULL,
  `nom_ville` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idville`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD CONSTRAINT `fk_adresse_ville1` FOREIGN KEY (`ville_idville`) REFERENCES `ville` (`idville`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `panier_has_articles`
--
ALTER TABLE `panier_has_articles`
  ADD CONSTRAINT `fk_PANIER_has_ARTICLES_ARTICLES1` FOREIGN KEY (`ARTICLES_idVELOS`) REFERENCES `articles` (`idArticle`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PANIER_has_ARTICLES_PANIER1` FOREIGN KEY (`PANIER_idPANIER`,`PANIER_PAIEMENT_idPAIEMENT`) REFERENCES `panier` (`idPanier`, `PAIEMENT_idPAIEMENT`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `panier_has_forfaits`
--
ALTER TABLE `panier_has_forfaits`
  ADD CONSTRAINT `fk_PANIER_has_FORFAITS_FORFAITS1` FOREIGN KEY (`FORFAITS_idFORFAITS`) REFERENCES `forfaits` (`idForfaits`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PANIER_has_FORFAITS_PANIER1` FOREIGN KEY (`PANIER_idPANIER`,`PANIER_PAIEMENT_idPAIEMENT`) REFERENCES `panier` (`idPanier`, `PAIEMENT_idPAIEMENT`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `fk_STOCK_ARTICLES1` FOREIGN KEY (`ARTICLES_idVELOS`) REFERENCES `articles` (`idArticle`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_USERS_PAIEMENT1` FOREIGN KEY (`PAIEMENT_idPAIEMENT`) REFERENCES `paiement` (`idPaiement`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_USERS_PANIER` FOREIGN KEY (`PANIER_idPANIER`,`PANIER_PAIEMENT_idPAIEMENT`) REFERENCES `panier` (`idPanier`, `PAIEMENT_idPAIEMENT`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_USERS_adresse1` FOREIGN KEY (`adresse_idVILLES`) REFERENCES `adresse` (`idVILLES`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
