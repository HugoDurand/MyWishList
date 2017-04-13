-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 13 Avril 2017 à 15:05
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
  `prix` decimal(10,0) DEFAULT NULL,
  `note` text,
  `date` datetime DEFAULT NULL,
  `id_liste` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `nom`, `photo`, `url`, `prix`, `note`, `date`, `id_liste`) VALUES
(24, 'Disque de Frein', 'http://i.ebayimg.com/00/s/MTYwMFgxNjAw/z/-28AAOxyf1dTI~7p/$_12.JPG', '', '80', 'A voir au niveau du diametre et de la marque', '2017-04-12 00:43:56', 20),
(25, 'Support de plaque', 'https://ae01.alicdn.com/kf/HTB15umqPXXXXXbYXVXXq6xXFXXX4/For-SUZUKI-DRZ-400S-SM-DRZ400-S-SM-DRZ400S-Motorcycle-Fender-Eliminator-Registration-License-Plate-Holder.jpg_50x50.jpg', 'https://fr.aliexpress.com/item/For-HONDA-CBR600RR-2007-2013-08-09-10-11-12-Silver-Motorcycle-Fender-Eliminator-Registration-License/32702810689.html?spm=2114.06010108.0.0.hHAyos', '31', '', '2017-04-12 00:52:40', 20),
(23, 'Garde Boue exc', 'http://www.fxmotors.fr/components/com_virtuemart/shop_image/product//garde-boue-avant-ktm-sx-sxf-exc-excf-2007-2012-noir.jpg', 'http://www.fxmotors.fr/fr/accueil/pieces-moto/plastiques/plastiques-ktm/garde-boue-avant-ufo-ktm', '18', 'A prendre en noir , vas avec le phare', '2017-04-11 08:36:21', 20),
(21, 'Drz 400', 'http://www.megane-france.net/xoops/uploads/photos/20773.jpg', '', '4000', 'aux alentours de 4000 euros', '2017-04-11 08:33:04', 20),
(22, 'Plaque Phare exc', 'https://www.kuttler.fr/4060-large_default/plaque-phare-exc-2008-2013-orange-blanc-noir.jpg', 'https://www.kuttler.fr/plaque-avant-tout-terrain/291158-plaque-phare-exc-2008-2013-orange-blanc-noir.html#/412-kit_plastique-plaque_phare_noir', '27', 'Prendre en noir', '2017-04-11 08:34:37', 20),
(20, 'Kit 434 athena', 'http://thumbs1.ebaystatic.com/d/l225/m/mDkTVumh4e6bqRMqDexytbg.jpg', '', '500', 'Pas de lien, à voir sur ebay', '2017-04-11 08:32:12', 20),
(17, 'Exhaust DRZ 400 S/SM Z-PRO', 'http://hstrial-mrdracing.homestead.com//~stores/746807_medium.jpg', 'http://www.mrd-racing.com/page04.html', '479', '', '2017-04-11 08:25:59', 20),
(18, 'Carburateur KEIHIN FCR 39', 'https://www.3as-racing.com/I-Autre-43935_380x380-carburateur-fcr-39-keihin-special-mx.net.jpg', '', '600', 'Pas de lien , à voir sur ebay pour un reconditionné', '2017-04-11 08:28:37', 20),
(19, 'Hotcam', 'http://i.ebayimg.com/images/g/h98AAOSwAYtWLoXk/s-l300.jpg', '', '320', 'A voir quelle marque et pour stage1 ou 2', '2017-04-11 08:30:07', 20),
(14, 'Tour de cou', 'http://www.icasque.com/images/equipement-moto/froid-pluie/protection-froid/tours-de-cou-moto/toudecou-moto-protection-ixon-fit-neck-s6.jpg', 'http://www.icasque.com/Equipement-moto/Froid-Pluie/Protection-Froid/Tours-De-Cou-Moto/Fit-Neck-Noir/', '22', '', '2017-04-11 05:13:23', 11),
(6, 'Blouson Cuir IXON VORTEX JACKET BLACK WHITE RED', 'http://www.icasque.com/images/equipement-moto/vetements-moto/blouson-moto/vortex-jacket-black-white-red-s6.jpg', 'http://www.icasque.com/Equipement-moto/Vetements-moto/Blouson-Moto/vortex-jacket-black-white-red.html', '399', '', '2017-04-11 04:35:27', 11),
(7, 'Pantalon Cuir IXON VORTEX PANT BLACK WHITE RED', 'http://www.icasque.com/images/equipement-moto/vetements-moto/pantalon-moto/vortex-pant-black-white-red-s6.jpg', 'http://www.icasque.com/Equipement-moto/Vetements-moto/Pantalon-Moto/vortex-pant-black-white-red.html', '349', '', '2017-04-11 04:36:39', 11),
(8, 'Gants Cuir IXON RS MOTO HP NOIR BLANC ROUGE', 'http://www.icasque.com/images/equipement-moto/vetements-moto/gants-moto/rs-moto-hp-noir-blanc-rouge-s6.jpg', 'http://www.icasque.com/Equipement-moto/Vetements-moto/Gants-Moto/RS-Moto-HP-Noir-Blanc-Rouge/', '129', '', '2017-04-11 04:49:41', 11),
(9, 'Dorsale IXON GUARDIAN CE VERT VIF', 'http://www.icasque.com/images/equipement-moto/protection-moto/dorsale-moto/guardian-ce-vert-vif-s6.jpg', 'http://www.icasque.com/Equipement-moto/Protection-Moto/Dorsale-Moto/Guardian-CE-Vert-Vif/', '22', '', '2017-04-11 04:50:50', 11),
(10, 'CASQUE SHOT FURIOUS INFINITY RED MATT', 'http://www.icasque.com/images/casque-moto/cross/furious-infinity-red-matt-s6.jpg', 'http://www.icasque.com/Casque-moto/Cross/furious-infinity-red-matt.html', '107', '', '2017-04-11 04:53:25', 11),
(11, 'Masque 100% STRATA GOLIATH MIRROR SILVER LENS', 'http://www.icasque.com/images/equipement-cross/equipement-moto-cross/masque-cross/strata-goliath-mirror-silver-lens-s6.jpg', 'http://www.icasque.com/Equipement-cross/Equipement-moto-cross/Masque-Cross/strata-goliath-mirror-silver-lens.html', '49', '', '2017-04-11 04:54:08', 11),
(12, 'Sac à Dos IXON X-STREET NOIR BLANC', 'http://www.icasque.com/images/equipement-moto/accessoires/sac-a-dos-moto/X-Street-Noir-Blanc_3-s6.jpg', 'http://www.icasque.com/Equipement-moto/Accessoires/Sac-a-dos-Moto/X-Street-Noir-Blanc/', '44', '', '2017-04-11 04:56:28', 11),
(13, 'Bottes SIDI VORTICE BLACK', 'http://www.icasque.com/images/equipement-moto/chaussures-et-bottes/bottes-moto/vortice-black-s6.jpg', 'http://www.icasque.com/Equipement-moto/Chaussures-et-bottes/Bottes-Moto/vortice-black.html', '399', '', '2017-04-11 05:08:21', 11),
(26, 'Clignotants', 'https://ae01.alicdn.com/kf/HTB1aRK3KpXXXXalXVXXq6xXFXXXk/Motorcycle-Turn-Signal-14-LED-12V-2W-Moto-Flasher-For-Dual-Sport-Suzuki-TS-DR-DRZ.jpg_50x50.jpg', 'https://fr.aliexpress.com/item/Motorcycle-Turn-Signal-14-LED-12V-2W-Moto-Flasher-For-Dual-Sport-Suzuki-TS-DR-DRZ/32529725866.html?spm=2114.06010108.0.0.hHAyos', '7', '', '2017-04-12 00:54:15', 20),
(27, 'Pignon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF30EDjOONiC9XpKRQLF78X2f53jvyFd2x87Nz09nWLQ-A4FjK4IlxAnE', '', '15', 'a voir pour le nombre de dents', '2017-04-12 01:00:37', 20),
(44, '', '', '', '555', '', '2017-04-13 07:19:47', 11);

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
(1, 'Hugo', 'hugo', 'hugosmails94@gmail.com', 'hugosmails94@gmail.com', 1, NULL, '$2y$13$Av.9tCsF/u972IQxHPdEuOFAYkPo34MgUvkpUew1ZJ9.QPrLTziP.', '2017-04-13 07:28:10', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}'),
(4, 'recepteur1', 'recepteur1', 'recepteur1@gmail.com', 'recepteur1@gmail.com', 1, NULL, '$2y$13$SAWEU.e27C1AcwocaAmn3uiO9WooS20xUVb/uAWOaGrxZhd2s7edu', '2017-04-13 07:28:32', NULL, NULL, 'a:1:{i:0;s:9:"ROLE_USER";}');

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
(20, 'Drz 400', '2017-04-11 08:23:27', 'http://www.megane-france.net/xoops/uploads/photos/20773.jpg', 1),
(11, 'Equipement Moto', '2017-04-11 04:33:44', 'http://www.salon-harmonie.fr/images//alpinestars/Combinaison-moto-cuir-Alpinestars-GP-Plus-Leather-Suit-Black-White-Red.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `share`
--

CREATE TABLE `share` (
  `id` int(11) NOT NULL,
  `id_expediteur` int(255) NOT NULL,
  `id_recepteur` int(255) NOT NULL,
  `id_liste` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `share`
--

INSERT INTO `share` (`id`, `id_expediteur`, `id_recepteur`, `id_liste`) VALUES
(1, 1, 4, 11),
(2, 1, 4, 20),
(3, 1, 4, 11);

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
-- Index pour la table `share`
--
ALTER TABLE `share`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `liste`
--
ALTER TABLE `liste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `share`
--
ALTER TABLE `share`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
