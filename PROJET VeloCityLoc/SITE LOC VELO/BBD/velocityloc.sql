-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 25 sep. 2019 à 14:01
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
  `idVilles` int(11) NOT NULL AUTO_INCREMENT,
  `nom_rue` varchar(45) DEFAULT NULL,
  `numero_rue` varchar(45) DEFAULT NULL,
  `ville_idville` int(11) NOT NULL,
  PRIMARY KEY (`idVilles`),
  UNIQUE KEY `idVILLES_UNIQUE` (`idVilles`),
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
  `paiement_idPaiement` int(11) NOT NULL,
  PRIMARY KEY (`idPanier`,`paiement_idPaiement`),
  UNIQUE KEY `idPANIER_UNIQUE` (`idPanier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `panier_has_articles`
--

DROP TABLE IF EXISTS `panier_has_articles`;
CREATE TABLE IF NOT EXISTS `panier_has_articles` (
  `panier_idPanier` int(11) NOT NULL,
  `panier_paiement_idPaiement` int(11) NOT NULL,
  `articles_idVelos` int(11) NOT NULL,
  PRIMARY KEY (`panier_idPanier`,`panier_paiement_idPaiement`,`articles_idVelos`),
  KEY `fk_PANIER_has_ARTICLES_ARTICLES1_idx` (`articles_idVelos`),
  KEY `fk_PANIER_has_ARTICLES_PANIER1_idx` (`panier_idPanier`,`panier_paiement_idPaiement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `panier_has_forfaits`
--

DROP TABLE IF EXISTS `panier_has_forfaits`;
CREATE TABLE IF NOT EXISTS `panier_has_forfaits` (
  `panier_idPanier` int(11) NOT NULL,
  `panier_paiement_idPaiement` int(11) NOT NULL,
  `forfaits_idForfaits` int(11) NOT NULL,
  PRIMARY KEY (`panier_idPanier`,`panier_paiement_idPaiement`,`forfaits_idForfaits`),
  KEY `fk_PANIER_has_FORFAITS_FORFAITS1_idx` (`forfaits_idForfaits`),
  KEY `fk_PANIER_has_FORFAITS_PANIER1_idx` (`panier_idPanier`,`panier_paiement_idPaiement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `idStock` int(11) NOT NULL AUTO_INCREMENT,
  `velos` int(11) DEFAULT NULL,
  `nb_velos` int(11) DEFAULT NULL,
  `date_entree` date DEFAULT NULL,
  `date_sortie` date DEFAULT NULL,
  `articles_idVelos` int(11) NOT NULL,
  PRIMARY KEY (`idStock`),
  UNIQUE KEY `idSTOCK_UNIQUE` (`idStock`),
  KEY `fk_STOCK_ARTICLES1_idx` (`articles_idVelos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `idUsers` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `particulier` varchar(11) DEFAULT NULL,
  `Panier_idPanier` int(11) NOT NULL,
  `panier_paiement_idPaiement` int(11) NOT NULL,
  `paiement_idPaiement` int(11) NOT NULL,
  `adresse_idVilles` int(11) NOT NULL,
  PRIMARY KEY (`idUsers`),
  KEY `fk_USERS_PANIER_idx` (`Panier_idPanier`,`panier_paiement_idPaiement`),
  KEY `fk_USERS_PAIEMENT1_idx` (`paiement_idPaiement`),
  KEY `fk_USERS_adresse1_idx` (`adresse_idVilles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

DROP TABLE IF EXISTS `ville`;
CREATE TABLE IF NOT EXISTS `ville` (
  `idVille` int(11) NOT NULL AUTO_INCREMENT,
  `cp` varchar(45) DEFAULT NULL,
  `nom_ville` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idVille`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD CONSTRAINT `fk_adresse_ville1` FOREIGN KEY (`ville_idville`) REFERENCES `ville` (`idVille`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `panier_has_articles`
--
ALTER TABLE `panier_has_articles`
  ADD CONSTRAINT `fk_PANIER_has_ARTICLES_ARTICLES1` FOREIGN KEY (`articles_idVelos`) REFERENCES `articles` (`idArticle`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PANIER_has_ARTICLES_PANIER1` FOREIGN KEY (`panier_idPanier`,`panier_paiement_idPaiement`) REFERENCES `panier` (`idPanier`, `paiement_idPaiement`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `panier_has_forfaits`
--
ALTER TABLE `panier_has_forfaits`
  ADD CONSTRAINT `fk_PANIER_has_FORFAITS_FORFAITS1` FOREIGN KEY (`forfaits_idForfaits`) REFERENCES `forfaits` (`idForfaits`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PANIER_has_FORFAITS_PANIER1` FOREIGN KEY (`panier_idPanier`,`panier_paiement_idPaiement`) REFERENCES `panier` (`idPanier`, `paiement_idPaiement`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `fk_STOCK_ARTICLES1` FOREIGN KEY (`articles_idVelos`) REFERENCES `articles` (`idArticle`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_USERS_PAIEMENT1` FOREIGN KEY (`paiement_idPaiement`) REFERENCES `paiement` (`idPaiement`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_USERS_PANIER` FOREIGN KEY (`Panier_idPanier`,`panier_paiement_idPaiement`) REFERENCES `panier` (`idPanier`, `paiement_idPaiement`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_USERS_adresse1` FOREIGN KEY (`adresse_idVilles`) REFERENCES `adresse` (`idVilles`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
