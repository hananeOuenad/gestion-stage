-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 03 Juillet 2017 à 01:06
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `gestion-stage`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `age` varchar(30) NOT NULL,
  `login` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id`, `nom`, `prenom`, `age`, `login`, `mdp`) VALUES
(1, 'nom', 'prenom', '22', 'login', 'mdp'),
(2, 'noom', 'testPren', '11', 'login2', 'mdp2');

-- --------------------------------------------------------

--
-- Structure de la table `encadrant`
--

CREATE TABLE IF NOT EXISTS `encadrant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `age` varchar(30) NOT NULL,
  `departement` varchar(30) NOT NULL,
  `login` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `encadrant`
--

INSERT INTO `encadrant` (`id`, `nom`, `prenom`, `age`, `departement`, `login`, `mdp`) VALUES
(3, 'okkk', 'nnnn', '12', 'jehbea', 'enc', 'enc'),
(4, 'encX', 'encX', '25', 'dep', 'enc2', 'enc2');

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE IF NOT EXISTS `formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `etablissement` varchar(30) NOT NULL,
  `Annee_etude` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `formation`
--

INSERT INTO `formation` (`id`, `etablissement`, `Annee_etude`) VALUES
(1, 'ENSAM', 2),
(2, 'ENSEM', 4),
(3, 'FST MARRAKECH', 5),
(4, 'IGHA MARRAKECH', 4);

-- --------------------------------------------------------

--
-- Structure de la table `resultat`
--

CREATE TABLE IF NOT EXISTS `resultat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_stagiaire` int(11) DEFAULT NULL,
  `note` float DEFAULT NULL,
  `remarque` varchar(30) DEFAULT NULL,
  `id_stage` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_stagiaire` (`id_stagiaire`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Contenu de la table `resultat`
--

INSERT INTO `resultat` (`id`, `id_stagiaire`, `note`, `remarque`, `id_stage`) VALUES
(40, 17, 12, 'assez bien', 25),
(41, 18, 13, 'bien', 24),
(42, 17, 2, 'aucun effort', 26),
(65, 20, 0, '', 27);

-- --------------------------------------------------------

--
-- Structure de la table `stage`
--

CREATE TABLE IF NOT EXISTS `stage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(250) NOT NULL,
  `dateDeb` date NOT NULL,
  `dateFin` date NOT NULL,
  `id_encadrant` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stage_ibfk_2` (`id_encadrant`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Contenu de la table `stage`
--

INSERT INTO `stage` (`id`, `nom`, `dateDeb`, `dateFin`, `id_encadrant`) VALUES
(26, 'nomstage', '2017-06-01', '2017-06-17', 3),
(25, 'nom', '2017-06-16', '2017-06-22', 3),
(24, 'tst', '2017-06-10', '2017-06-30', 3),
(27, 'testNom', '2017-06-09', '2017-06-30', 3);

-- --------------------------------------------------------

--
-- Structure de la table `stagiaire`
--

CREATE TABLE IF NOT EXISTS `stagiaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `age` varchar(30) NOT NULL,
  `login` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `cin` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `addresse` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `id_formation` int(11) DEFAULT NULL,
  `id_resultat` int(11) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `stagiaire`
--

INSERT INTO `stagiaire` (`id`, `nom`, `prenom`, `age`, `login`, `mdp`, `cin`, `email`, `addresse`, `tel`, `id_formation`, `id_resultat`, `photo`) VALUES
(17, 'abdess', 'ab', '11', 'abd', 'abd', 'a.abdess16@gmail.com', '123655', '9 DB lahbab raoud lakdim', '231', 3, NULL, 'P_24062017112737.jpg'),
(18, 'Esoubhy', 'ima', '4', 'ima', 'ima', 'ima@mail.com', '12545', 'adresse', '13254786', 3, NULL, 'P_24062017114327.jpg'),
(20, 'tst', 'tst', '5', 'tst', 'tst', '123655', 'a.abdess16@gmail.com', 'email@mail.com', '13254786', 2, NULL, 'P_28062017033549.jpg'),
(21, 'imane essoubhy', 'essoubhy', '23', 'enc', '1994', '1231455', 'a-lone-@live.Fr', 'daou', '0653879', 1, NULL, 'P_30062017200256.jpg'),
(22, 'hamza', 'khaba', '18', 'login', '1234', '1231455', 'a-lone-@live.Fr', 'daou', '0671764912', 1, NULL, 'P_30062017201102.jpg');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `resultat`
--
ALTER TABLE `resultat`
  ADD CONSTRAINT `resultat_ibfk_1` FOREIGN KEY (`id_stagiaire`) REFERENCES `stagiaire` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
