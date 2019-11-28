-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2019 at 04:47 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zink`
--

-- --------------------------------------------------------

--
-- Table structure for table `avis_client`
--

CREATE TABLE `avis_client` (
  `id_avis` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `nb_etoile` int(11) NOT NULL,
  `commentaire` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id_cat` int(11) NOT NULL,
  `nom_cat` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` varchar(255) NOT NULL,
  `nom_client` varchar(255) NOT NULL,
  `prenom_client` varchar(255) NOT NULL,
  `tel_client` int(11) NOT NULL,
  `password_client` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `id_client` varchar(256) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `prix_commande` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `marketing`
--

CREATE TABLE `marketing` (
  `id_promotion` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `prix_org` int(11) NOT NULL,
  `pourcentage_red` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `desc_produit` varchar(255) NOT NULL,
  `prix_org` int(11) NOT NULL,
  `prix_anc` int(11) NOT NULL,
  `image_produit` varchar(255) NOT NULL,
  `dispo_produit` varchar(255) NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reclamations`
--

CREATE TABLE `reclamations` (
  `id_client` varchar(255) NOT NULL,
  `id_reclamation` int(11) NOT NULL,
  `date_reclamation` date NOT NULL,
  `comm_reclam` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id_tables` int(11) NOT NULL,
  `date_reserv` date NOT NULL,
  `heure_reserv` time NOT NULL,
  `id_client` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id_tables`, `date_reserv`, `heure_reserv`, `id_client`, `id`) VALUES
(4, '2019-11-28', '05:52:00', '1', 7),
(5, '2019-11-27', '02:02:00', '1', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tables_resto`
--

CREATE TABLE `tables_resto` (
  `id_tables` int(11) NOT NULL,
  `nb_personnes` int(11) NOT NULL,
  `etat_tables` varchar(255) NOT NULL,
  `emplacement_tables` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tables_resto`
--

INSERT INTO `tables_resto` (`id_tables`, `nb_personnes`, `etat_tables`, `emplacement_tables`) VALUES
(7, 6, 'disponible', 'local 7'),
(4, 5, 'reservee', 'local 35'),
(5, 4, 'reservee', 'local 3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avis_client`
--
ALTER TABLE `avis_client`
  ADD PRIMARY KEY (`id_avis`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`);

--
-- Indexes for table `marketing`
--
ALTER TABLE `marketing`
  ADD PRIMARY KEY (`id_promotion`);

--
-- Indexes for table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`);

--
-- Indexes for table `reclamations`
--
ALTER TABLE `reclamations`
  ADD PRIMARY KEY (`id_reclamation`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables_resto`
--
ALTER TABLE `tables_resto`
  ADD PRIMARY KEY (`id_tables`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tables_resto`
--
ALTER TABLE `tables_resto`
  MODIFY `id_tables` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
