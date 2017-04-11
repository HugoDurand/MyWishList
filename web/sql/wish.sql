-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 11 Avril 2017 à 15:20
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wish`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `note` text,
  `date` datetime DEFAULT NULL,
  `id_liste` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `nom`, `photo`, `url`, `prix`, `note`, `date`, `id_liste`) VALUES
(14, 'Tour de cou', 'http://www.icasque.com/images/equipement-moto/froid-pluie/protection-froid/tours-de-cou-moto/toudecou-moto-protection-ixon-fit-neck-s6.jpg', 'http://www.icasque.com/Equipement-moto/Froid-Pluie/Protection-Froid/Tours-De-Cou-Moto/Fit-Neck-Noir/', 22, '', '2017-04-11 05:13:23', 11),
(6, 'Blouson Cuir IXON VORTEX JACKET BLACK WHITE RED', 'http://www.icasque.com/images/equipement-moto/vetements-moto/blouson-moto/vortex-jacket-black-white-red-s6.jpg', 'http://www.icasque.com/Equipement-moto/Vetements-moto/Blouson-Moto/vortex-jacket-black-white-red.html', 399, '', '2017-04-11 04:35:27', 11),
(7, 'Pantalon Cuir IXON VORTEX PANT BLACK WHITE RED', 'http://www.icasque.com/images/equipement-moto/vetements-moto/pantalon-moto/vortex-pant-black-white-red-s6.jpg', 'http://www.icasque.com/Equipement-moto/Vetements-moto/Pantalon-Moto/vortex-pant-black-white-red.html', 349, '', '2017-04-11 04:36:39', 11),
(8, 'Gants Cuir IXON RS MOTO HP NOIR BLANC ROUGE', 'http://www.icasque.com/images/equipement-moto/vetements-moto/gants-moto/rs-moto-hp-noir-blanc-rouge-s6.jpg', 'http://www.icasque.com/Equipement-moto/Vetements-moto/Gants-Moto/RS-Moto-HP-Noir-Blanc-Rouge/', 129, '', '2017-04-11 04:49:41', 11),
(9, 'Dorsale IXON GUARDIAN CE VERT VIF', 'http://www.icasque.com/images/equipement-moto/protection-moto/dorsale-moto/guardian-ce-vert-vif-s6.jpg', 'http://www.icasque.com/Equipement-moto/Protection-Moto/Dorsale-Moto/Guardian-CE-Vert-Vif/', 22, '', '2017-04-11 04:50:50', 11),
(10, 'CASQUE SHOT FURIOUS INFINITY RED MATT', 'http://www.icasque.com/images/casque-moto/cross/furious-infinity-red-matt-s6.jpg', 'http://www.icasque.com/Casque-moto/Cross/furious-infinity-red-matt.html', 107, '', '2017-04-11 04:53:25', 11),
(11, 'Masque 100% STRATA GOLIATH MIRROR SILVER LENS', 'http://www.icasque.com/images/equipement-cross/equipement-moto-cross/masque-cross/strata-goliath-mirror-silver-lens-s6.jpg', 'http://www.icasque.com/Equipement-cross/Equipement-moto-cross/Masque-Cross/strata-goliath-mirror-silver-lens.html', 49, '', '2017-04-11 04:54:08', 11),
(12, 'Sac à Dos IXON X-STREET NOIR BLANC', 'http://www.icasque.com/images/equipement-moto/accessoires/sac-a-dos-moto/X-Street-Noir-Blanc_3-s6.jpg', 'http://www.icasque.com/Equipement-moto/Accessoires/Sac-a-dos-Moto/X-Street-Noir-Blanc/', 44, '', '2017-04-11 04:56:28', 11),
(13, 'Bottes SIDI VORTICE BLACK', 'http://www.icasque.com/images/equipement-moto/chaussures-et-bottes/bottes-moto/vortice-black-s6.jpg', 'http://www.icasque.com/Equipement-moto/Chaussures-et-bottes/Bottes-Moto/vortice-black.html', 399, '', '2017-04-11 05:08:21', 11);

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'Hugo', 'hugo', 'hugosmails94@gmail.com', 'hugosmails94@gmail.com', 1, NULL, '$2y$13$xWRdgfLW2gSmfdFyHYBIC.bbJj57ylgxUnhEwgQPV4/3430aK4IQe', '2017-04-11 04:31:08', NULL, NULL, 'a:0:{}');

-- --------------------------------------------------------

--
-- Structure de la table `liste`
--

CREATE TABLE `liste` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `liste`
--

INSERT INTO `liste` (`id`, `nom`, `date`, `photo`, `id_user`) VALUES
(11, 'Equipement Moto', '2017-04-11 04:33:44', 'http://www.salon-harmonie.fr/images//alpinestars/Combinaison-moto-cuir-Alpinestars-GP-Plus-Leather-Suit-Black-White-Red.jpg', 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- Index pour la table `liste`
--
ALTER TABLE `liste`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `liste`
--
ALTER TABLE `liste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
