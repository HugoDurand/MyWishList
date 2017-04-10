-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 10 Avril 2017 à 15:31
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
(1, 'Axel Arigato', 'https://axelarigato.com/media/catalog/product/cache/0/image/890x/ec8cd742c622099e22da81012e76c773/2/6/26015_1.jpg', 'https://axelarigato.com/eur/men/shoes/cap-toe-sneaker/cap-toe-26015', 165, 'Grey low sneaker with a classic design, handcrafted with premium Italian materials. White Italian rubber cup-sole from Margom with a upper mix of suede and leather cap-toe. Dustbag included. Arigato logo on the side in gold. Fits true to size.', NULL, 8),
(2, 'casquette Jeune Riche', 'https://jeuneriche-paris.fr/50-large_default/baseball-caps-suede.jpg', 'https://jeuneriche-paris.fr/fr/casquettes/9-baseball-caps-suede.html', 45, 'Logo "JR" brodé sur le devant\r\nLogo "Jeune Riche" brodé derriere\r\nCouronne en suede\r\nVisière / dessous de visière en suede\r\nFermeture arrière réglable en suede\r\nBoucle en métal\r\nBandeau intérieur en suede\r\nPossibilité de cacher le bout de la languette de fermeture à l’intérieur de la casquette', NULL, 8),
(3, 'Canada Goose', 'https://sits-pod15.demandware.net/dw/image/v2/AATA_PRD/on/demandware.static/-/Sites-canadagoose-master-catalog/default/dw124a9013/images/productimages/2062M_66.jpg?sw=480&sh=757&sm=fit', 'https://www.canadagoose.com/ca/en/langford-parka-2062M.html?cgid=shop-mens-parkas#start=1&cgid=shop-mens-parkas', 925, 'Clean lines, mid-thigh length cut and uncompromised urban protection.', NULL, 8),
(4, 'Husqvarna 510 SMR', 'https://img3.leboncoin.fr/ad-image/fe0e62248f0ebbdb80ba6bd7391cb38fc7bc8619.jpg', 'https://www.leboncoin.fr/motos/1109430029.htm?ca=12_s', 4500, 'Je vend mon Husqvarna 510 SMR de 2010 car j\'ai besoin d\'argent. Je la vend avec grand regret, très bonne moto toujours bien entretenu. Tout les 2000 km vidange effectué, avec chaque sortie remise à niveau d\'huile, graissage de chaine tout se qui est normal pour un bonne entretien de la moto. Dernière révision des 10.000 faites chez Husqvarna dans le 77. Facture à l\'appuie, Rien à prévoir. \r\n', '2017-04-10 05:54:21', 9),
(5, 'Kit Garde-boue Plaque phare Supermotard Noir KTM', 'http://i.ebayimg.com/07/!C!)inWwCWk~$(KGrHqZ,!hYEze(HqsTwBNEd1u!oQw~~_35.JPG', 'http://www.ebay.fr/itm/Kit-Garde-boue-Plaque-phare-Supermotard-Noir-KTM-/120852246093?hash=item1c235aee4d:m:mQK7uoUNqQRy6kgC1Rtu-Aw', 53, '', '2017-04-10 06:13:43', 10);

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
(1, 'Hugo', 'hugo', 'hugosmails94@gmail.com', 'hugosmails94@gmail.com', 1, NULL, '$2y$13$xWRdgfLW2gSmfdFyHYBIC.bbJj57ylgxUnhEwgQPV4/3430aK4IQe', '2017-04-10 08:28:39', NULL, NULL, 'a:0:{}');

-- --------------------------------------------------------

--
-- Structure de la table `liste`
--

CREATE TABLE `liste` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `liste`
--

INSERT INTO `liste` (`id`, `nom`, `date`, `photo`) VALUES
(8, 'Style', '2017-04-10 02:31:05', 'https://s-media-cache-ak0.pinimg.com/originals/10/65/b5/1065b5f53269636d9bb2f7baf3782e6f.jpg'),
(10, 'Husqvarna 510 SMR', '2017-04-10 05:59:37', 'https://img3.leboncoin.fr/ad-image/fe0e62248f0ebbdb80ba6bd7391cb38fc7bc8619.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `liste`
--
ALTER TABLE `liste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
