-- phpMyAdmin SQL Dump
-- version 4.1.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2014 at 10:46 PM
-- Server version: 5.6.19
-- PHP Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `flip2`
--

-- --------------------------------------------------------

--
-- Table structure for table `bars`
--

CREATE TABLE IF NOT EXISTS `bars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=121 ;

--
-- Dumping data for table `bars`
--

INSERT INTO `bars` (`id`, `name`, `address`, `latitude`, `longitude`, `url`, `created_at`, `updated_at`) VALUES
(34, 'La Fac', ' 45 Rue Jussieu 75005 Paris', 48.8472, 2.35314, 'http://geoflipper.fr/la-fac/', '2014-08-02 17:34:41', '2014-08-02 17:34:41'),
(35, 'Le soleil levant', ' 95 Rue Saint-Maur 75011 Paris', 48.8648, 2.37786, 'http://geoflipper.fr/le-soleil-levant/', '2014-08-02 17:34:47', '2014-08-02 17:34:47'),
(36, 'Le Paris Nord', ' 138 Rue du Faubourg Poissonnière 75010 Paris', 48.8811, 2.3498, 'http://geoflipper.fr/le-paris-nord/', '2014-08-02 17:34:54', '2014-08-02 17:34:54'),
(37, 'Le Relais', ' 134 Rue du Chemin Vert 75011 Paris', 48.8623, 2.3852, 'http://geoflipper.fr/le-relais-2/', '2014-08-02 17:35:01', '2014-08-02 17:35:01'),
(38, 'Le Week-End', ' 42 Boulevard Henri IV, 75004 Paris', 48.8525, 2.36714, 'http://geoflipper.fr/le-week-end-3/', '2014-08-02 17:35:07', '2014-08-02 17:35:07'),
(39, 'L Etoile', ' 44 Rue des Fossés-Saint-Bernard 75005 Paris', 48.8474, 2.35298, 'http://geoflipper.fr/levalmozzola/', '2014-08-02 17:35:13', '2014-08-02 17:35:13'),
(40, 'Le Week-End', ' 59 Rue de Turbigo 75003 Paris', 48.8657, 2.357, 'http://geoflipper.fr/le-week-end-2/', '2014-08-02 17:35:20', '2014-08-02 17:35:20'),
(41, 'Le Carrefour', ' 92 rue Oberkampf 75011 Paris', 48.8656, 2.37737, 'http://geoflipper.fr/le-carrefour/', '2014-08-02 17:35:25', '2014-08-02 17:35:25'),
(42, 'Terminus Château', ' 9 Avenue de Nogent 75012 Paris', 48.8447, 2.44055, 'http://geoflipper.fr/terminus-chateau/', '2014-08-02 17:35:31', '2014-08-02 17:35:31'),
(43, 'Le Multiplex', ' 27 Rue de la Tour d''Auvergne 75009 Paris', 48.8792, 2.34319, 'http://geoflipper.fr/le-multiplex/', '2014-08-02 17:35:37', '2014-08-02 17:35:37'),
(44, 'Le Mauri 7', ' 44 rue du Faubourg St Denis, 75010 Paris', 48.8715, 2.35363, 'http://geoflipper.fr/le-mauri-7/', '2014-08-02 17:35:43', '2014-08-02 17:35:43'),
(45, 'Aux Chiffons', ' 90 Rue Marcadet 75018 Paris', 48.8906, 2.34588, 'http://geoflipper.fr/aux-chiffons/', '2014-08-02 17:35:48', '2014-08-02 17:35:48'),
(46, 'Workshop Paris', ' 173 Rue Saint-Martin 75003 Paris', 48.8626, 2.35184, 'http://geoflipper.fr/workshop-paris/', '2014-08-02 17:36:04', '2014-08-02 17:36:04'),
(47, 'Bar Robert Chez Papy', ' 83 Rue Baudricourt 75013 Paris', 48.8246, 2.36242, 'http://geoflipper.fr/bar-robert-chez-papy/', '2014-08-02 17:36:11', '2014-08-02 17:36:11'),
(48, 'L''Alliance', ' 113 Boulevard de l''Hôpital 75013 Paris', 48.836, 2.3589, 'http://geoflipper.fr/lalliance/', '2014-08-02 17:36:17', '2014-08-02 17:36:17'),
(49, 'Le Rallye', ' 64 Rue du Faubourg Poissonnière, 75010 Paris', 48.8758, 2.3482, 'http://geoflipper.fr/le-rallye/', '2014-08-02 17:36:22', '2014-08-02 17:36:22'),
(50, 'O Atlantico', ' 313 Rue de Charenton 75012 Paris', 48.8336, 2.39493, 'http://geoflipper.fr/o-atlantico/', '2014-08-02 17:36:28', '2014-08-02 17:36:28'),
(51, 'Le Sans Souci', ' 183 rue Saint Denis 75002 Paris', 48.8658, 2.35066, 'http://geoflipper.fr/le-sans-souci/', '2014-08-02 17:36:34', '2014-08-02 17:36:34'),
(52, 'Le bel air', ' 194 Rue de Belleville 75019 Paris', 48.8753, 2.39426, 'http://geoflipper.fr/le-bel-air/', '2014-08-02 17:36:39', '2014-08-02 17:36:39'),
(53, 'Holybelly', ' 19 Rue Lucien Sampaix 75010 Paris', 48.8724, 2.36096, 'http://geoflipper.fr/holybelly/', '2014-08-02 17:36:44', '2014-08-02 17:36:44'),
(54, 'Le Jean Bouin', ' 55 Rue Molitor 75016 Paris, France', 48.8453, 2.25772, 'http://geoflipper.fr/le-jean-bouin/', '2014-08-02 17:36:50', '2014-08-02 17:36:50'),
(55, 'A la consigne', ' 170 rue du Faubourg St Denis, 75010 Paris', 48.8796, 2.35726, 'http://geoflipper.fr/a-la-consigne/', '2014-08-02 17:36:56', '2014-08-02 17:36:56'),
(56, 'Le Lautrec Café', ' 1 rue de Douai, 75009 Paris', 48.8812, 2.33618, 'http://geoflipper.fr/le-lautrec-cafe/', '2014-08-02 17:37:02', '2014-08-02 17:37:02'),
(57, 'Red House', ' 1 Rue de la Forgé Royale 75012 Paris', 48.8507, 2.38018, 'http://geoflipper.fr/red-house/', '2014-08-02 17:37:07', '2014-08-02 17:37:07'),
(58, '347 Lecourbe', ' 347 Rue Lecourbe 75015 Paris', 48.8368, 2.28361, 'http://geoflipper.fr/347-lecourbe/', '2014-08-02 17:37:12', '2014-08-02 17:37:12'),
(59, 'Aux II Académies', ' 16 Rue Bonaparte 75006 Paris ', 48.8563, 2.33438, 'http://geoflipper.fr/aux-ii-academies/', '2014-08-02 17:37:17', '2014-08-02 17:37:17'),
(60, 'Le Soleil', ' 136 Boulevard de Ménilmontant 75020 Paris', 48.8662, 2.38385, 'http://geoflipper.fr/le-soleil/', '2014-08-02 17:37:24', '2014-08-02 17:37:24'),
(61, 'Le Gymnase', ' 1 Rue Huyghens 75014 Paris', 48.8414, 2.32959, 'http://geoflipper.fr/le-gymnase/', '2014-08-02 17:37:30', '2014-08-02 17:37:30'),
(62, 'Le Libre Echange', ' 34 Rue Brochant 75017 Paris', 48.8905, 2.32023, 'http://geoflipper.fr/le-libre-echange/', '2014-08-02 17:37:36', '2014-08-02 17:37:36'),
(63, 'La Tête dans les Nuages', ' 5 Boulevard des Italiens 75002 Paris', 48.8718, 2.33934, 'http://geoflipper.fr/la-tete-dans-les-nuages/', '2014-08-02 17:44:02', '2014-08-02 17:44:02'),
(64, 'Extérieur Quai', ' 7 Rue d''Alsace, 75010 Paris', 48.8767, 2.35763, 'http://geoflipper.fr/exterieur-quai/', '2014-08-02 17:44:05', '2014-08-02 17:44:05'),
(65, 'Baromaîtres', ' 24 Rue Nicolaï 75012 Paris', 48.8359, 2.39418, 'http://geoflipper.fr/baromaitres/', '2014-08-02 17:44:08', '2014-08-02 17:44:08'),
(66, 'Le Satellite', ' Rue Édouard Robert 75012 Paris', 48.8376, 2.39839, 'http://geoflipper.fr/le-satellite/', '2014-08-02 17:44:11', '2014-08-02 17:44:11'),
(67, 'Le Fantôme', ' 61 Rue d''Hauteville 75010 Paris', 48.8753, 2.35089, 'http://geoflipper.fr/le-fantome/', '2014-08-02 17:44:14', '2014-08-02 17:44:14'),
(68, 'Wanderlust', ' 32 Quai d''Austerlitz 75013 Paris', 48.84, 2.37056, 'http://geoflipper.fr/wanderlust/', '2014-08-02 17:44:20', '2014-08-02 17:44:20'),
(69, 'Le Métro', ' 60 Boulevard Saint-Germain 75005 Paris', 48.8502, 2.34825, 'http://geoflipper.fr/le-metro-2/', '2014-08-02 17:44:22', '2014-08-02 17:44:22'),
(70, 'Au Métro', ' 17 Rue de Crussol 75011 Paris', 48.8643, 2.36858, 'http://geoflipper.fr/au-metro/', '2014-08-02 17:44:25', '2014-08-02 17:44:25'),
(71, 'Le Rouergue', ' 34 Rue Jouffroy d''Abbans 75017 Paris', 48.886, 2.3096, 'http://geoflipper.fr/le-rouergue/', '2014-08-02 17:44:28', '2014-08-02 17:44:28'),
(72, 'A Jean Bart', ' 3 Rue Jouffroy d''Abbans 75017 Paris', 48.8872, 2.31368, 'http://geoflipper.fr/a-jean-bart/', '2014-08-02 17:44:31', '2014-08-02 17:44:31'),
(73, 'Bowling Front de Seine', ' 11 Rue Gaston de Caillavet 75015 Paris', 48.8493, 2.28401, 'http://geoflipper.fr/bowling-front-de-seine/', '2014-08-02 17:44:35', '2014-08-02 17:44:35'),
(74, 'Hideout Bar', ' 11 Rue du Pot de Fer 75005 Paris', 48.8429, 2.34846, 'http://geoflipper.fr/hideout-bar/', '2014-08-02 17:44:38', '2014-08-02 17:44:38'),
(75, 'Le Bouillon Belge', ' 6 Rue Planchat 75020 Paris', 48.8519, 2.39939, 'http://geoflipper.fr/le-bouillon-belge/', '2014-08-02 17:44:41', '2014-08-02 17:44:41'),
(76, 'Café Lyon', ' 40 avenue Ledru-Rollin, 75012 Paris', 48.8478, 2.37114, 'http://geoflipper.fr/cafe-lyon/', '2014-08-02 17:44:44', '2014-08-02 17:44:44'),
(77, 'Royal Strasbourg', ' 34 Boulevard de Strasbourg 75010 Paris', 48.872, 2.35601, 'http://geoflipper.fr/royal-strasbourg/', '2014-08-02 17:44:47', '2014-08-02 17:44:47'),
(78, 'Le Miro', ' 29 Rue La Boétie, 75008 Paris', 48.8739, 2.31591, 'http://geoflipper.fr/le-miro/', '2014-08-02 17:44:52', '2014-08-02 17:44:52'),
(79, 'Le Narval', ' 235 Rue des Pyrénées 75020 Paris', 48.864, 2.39916, 'http://geoflipper.fr/le-narval-2/', '2014-08-02 17:44:55', '2014-08-02 17:44:55'),
(80, 'Le Jean Bart', ' 18 rue Le Peletier, 75009 Paris', 48.8733, 2.3388, 'http://geoflipper.fr/le-jean-bart/', '2014-08-02 17:44:59', '2014-08-02 17:44:59'),
(81, 'La Rotonde Hébertine', ' 3 Place Hébert 75018 Paris', 48.8931, 2.36346, 'http://geoflipper.fr/la-rotonde-hebertine/', '2014-08-02 17:45:02', '2014-08-02 17:45:02'),
(82, 'Le Marigny', ' 4 Rue Armand Carrel 75019 Paris', 48.8825, 2.38139, 'http://geoflipper.fr/le-marigny/', '2014-08-02 17:45:05', '2014-08-02 17:45:05'),
(83, 'Turku Bar', ' 143 Rue d''Avron 75020 Paris', 48.8534, 2.4101, 'http://geoflipper.fr/amsterdam/', '2014-08-02 17:45:09', '2014-08-02 17:45:09'),
(84, 'Aux Mousquetaires', ' 135 Rue de Montreuil 75011 Paris', 48.8513, 2.39812, 'http://geoflipper.fr/aux-mousquetaires/', '2014-08-02 17:45:12', '2014-08-02 17:45:12'),
(85, 'Le Dalou', ' 30 Place de la Nation 75012 Paris', 48.8478, 2.39742, 'http://geoflipper.fr/le-dalou/', '2014-08-02 17:45:15', '2014-08-02 17:45:15'),
(86, 'La Fauvette', ' 115 Avenue Parmentier 75011 Paris', 48.8684, 2.37219, 'http://geoflipper.fr/la-fauvette/', '2014-08-02 17:45:18', '2014-08-02 17:45:18'),
(87, 'Le Trumilou', ' 84 Quai de l''Hôtel de ville 75004 Paris', 48.8548, 2.35404, 'http://geoflipper.fr/le-trumilou/', '2014-08-02 17:45:21', '2014-08-02 17:45:21'),
(88, 'Le Temps Perdu', ' 23 Rue Eugène Sue 75018 Paris', 48.8914, 2.34777, 'http://geoflipper.fr/le-temps-perdu/', '2014-08-02 17:45:25', '2014-08-02 17:45:25'),
(89, 'Le Dunhill', ' 38 Rue de Rochechouart 75009 Paris', 48.8791, 2.34554, 'http://geoflipper.fr/le-dunhill/', '2014-08-02 17:45:28', '2014-08-02 17:45:28'),
(90, 'Le Thermidor', ' 196 rue de Vaugirard, 75015 Paris', 48.8415, 2.30784, 'http://geoflipper.fr/le-thermidor/', '2014-08-02 17:45:31', '2014-08-02 17:45:31'),
(91, 'Le Murillo', ' 63 Rue de Courcelles 75008 Paris', 48.8777, 2.30592, 'http://geoflipper.fr/le-murillo/', '2014-08-02 17:45:33', '2014-08-02 17:45:33'),
(92, 'Le Balto', ' 63 Avenue de la Grande Armée 75116 Paris', 48.876, 2.28672, 'http://geoflipper.fr/le-balto-3/', '2014-08-02 17:45:36', '2014-08-02 17:45:36'),
(93, 'Royal Nation', ' 2 Avenue Philippe Auguste 75011 Paris', 48.8494, 2.39528, 'http://geoflipper.fr/royal-nation/', '2014-08-02 17:45:39', '2014-08-02 17:45:39'),
(94, 'Le Rugby', ' 3 Rue Roquépine 75008 Paris', 48.8734, 2.3202, 'http://geoflipper.fr/le-rugby/', '2014-08-02 17:45:43', '2014-08-02 17:45:43'),
(95, 'Le Mozart', ' 117 Avenue Mozart 75016 Paris', 48.8508, 2.26711, 'http://geoflipper.fr/le-mozart/', '2014-08-02 17:45:46', '2014-08-02 17:45:46'),
(96, 'Le Celtique', ' 1 Rue Simart 75018 Paris', 48.8896, 2.34955, 'http://geoflipper.fr/le-celtique-2/', '2014-08-02 17:45:50', '2014-08-02 17:45:50'),
(97, 'Le Nord Sud', ' Place Jules Joffrin 75018 Paris', 48.8925, 2.34428, 'http://geoflipper.fr/le-nord-sud/', '2014-08-02 17:45:53', '2014-08-02 17:45:53'),
(98, 'Au Péché Mignon', ' 30 Rue Sedaine 75011 Paris', 48.8565, 2.37359, 'http://geoflipper.fr/au-peche-mignon/', '2014-08-02 17:45:55', '2014-08-02 17:45:55'),
(99, 'Le Saint Malo', ' 24 Avenue Secrétan 75019 Paris', 48.8817, 2.37227, 'http://geoflipper.fr/le-saint-malo/', '2014-08-02 17:45:58', '2014-08-02 17:45:58'),
(100, 'Le Mirabeau', ' 58 Rue de la Convention 75015 Paris', 48.8433, 2.28271, 'http://geoflipper.fr/le-mirabeau/', '2014-08-02 17:46:02', '2014-08-02 17:46:02'),
(101, 'Le Nesle', ' 22 rue Dauphine, 75006 Paris', 48.8551, 2.33963, 'http://geoflipper.fr/le-nesle/', '2014-08-02 17:46:04', '2014-08-02 17:46:04'),
(102, 'Le Lutetia', ' 160 Rue du Faubourg Saint-Denis, 75010 Paris', 48.8791, 2.35701, 'http://geoflipper.fr/le-lutetia/', '2014-08-02 17:46:07', '2014-08-02 17:46:07'),
(103, 'Le kiosque', ' 13 Boulevard Auguste Blanqui, 75013 Paris', 48.8306, 2.35363, 'http://geoflipper.fr/le-kiosque/', '2014-08-02 17:46:11', '2014-08-02 17:46:11'),
(104, 'Gaumont Parnasse', ' 3 Rue d''Odessa 75015 Paris', 48.8431, 2.32434, 'http://geoflipper.fr/gaumont-parnasse/', '2014-08-02 17:46:14', '2014-08-02 17:46:14'),
(105, 'Le Bastille', ' 8 Place de la Bastille 75012 Paris', 48.8536, 2.37044, 'http://geoflipper.fr/le-bastille/', '2014-08-02 17:46:17', '2014-08-02 17:46:17'),
(106, 'Le Capucin', ' 2 Rue Marx Dormoy 75018 Paris', 48.8849, 2.35935, 'http://geoflipper.fr/le-capucin/', '2014-08-02 17:46:20', '2014-08-02 17:46:20'),
(107, 'Le Cyclone', ' 31 Rue Philippe de Girard 75010 Paris', 48.8841, 2.36153, 'http://geoflipper.fr/le-cyclone/', '2014-08-02 17:46:23', '2014-08-02 17:46:23'),
(108, 'La manette Drouot', ' 11 Rue Rossini 75009 Paris', 48.873, 2.33967, 'http://geoflipper.fr/la-manette-drouot/', '2014-08-02 17:46:27', '2014-08-02 17:46:27'),
(109, 'Tabac de la Place', ' Place Falguière 75015 Paris', 48.8362, 2.31007, 'http://geoflipper.fr/tabac-de-la-poste-2/', '2014-08-02 17:46:30', '2014-08-02 17:46:30'),
(110, 'Le Sarrette', ' 1 Rue Alphonse Daudet 75014 Paris', 48.8261, 2.32895, 'http://geoflipper.fr/le-sarrette/', '2014-08-02 17:56:39', '2014-08-02 17:56:39'),
(111, 'Le Biarritz', ' 115 rue des pyrénées, 75020 Paris', 48.8563, 2.40489, 'http://geoflipper.fr/le-biarritz/', '2014-08-02 17:56:42', '2014-08-02 17:56:42'),
(112, 'L''océan', ' 44 Avenue d''Ivry 75013 Paris', 48.8233, 2.36573, 'http://geoflipper.fr/locean-2/', '2014-08-02 17:56:46', '2014-08-02 17:56:46'),
(113, 'Le Royal', ' 34 Rue Servan 75011 Paris', 48.8615, 2.38268, 'http://geoflipper.fr/le-royal/', '2014-08-02 17:56:48', '2014-08-02 17:56:48'),
(114, 'Bistrot de l''avenir', ' 39 Rue des Pyrénées 75020 Paris', 48.8504, 2.40637, 'http://geoflipper.fr/bistrot-de-lavenir/', '2014-08-02 17:56:53', '2014-08-02 17:56:53'),
(115, 'Le Fumaillon', ' 3 Place d Italie 75013 Paris', 48.8322, 2.35618, 'http://geoflipper.fr/le-fumaillon/', '2014-08-02 17:56:56', '2014-08-02 17:56:56'),
(116, 'La divette de Montmartre', ' 136 Rue Marcadet 75018 Paris', 48.8912, 2.33925, 'http://geoflipper.fr/la-divette-de-montmartre/', '2014-08-02 17:56:59', '2014-08-02 17:56:59'),
(117, 'Le soleil du Nord', ' 38 rue Boursault 75017 Paris', 48.8844, 2.31956, 'http://geoflipper.fr/le-soleil-du-nord/', '2014-08-02 17:57:02', '2014-08-02 17:57:02'),
(118, 'Le Davout', ' 137 rue d''Avron 75020 Paris', 48.8535, 2.41041, 'http://geoflipper.fr/le-davout/', '2014-08-02 17:57:05', '2014-08-02 17:57:05'),
(119, 'A Trianon', ' 69 Rue de Belleville 75019 Paris', 48.8735, 2.38302, 'http://geoflipper.fr/a-trianon/', '2014-08-02 17:57:08', '2014-08-02 17:57:08'),
(120, 'Le Montmartre', ' 18 Rue Custine 75018 Paris', 48.8885, 2.3479, 'http://geoflipper.fr/le-montmartre/', '2014-08-02 17:57:11', '2014-08-02 17:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `flippers`
--

CREATE TABLE IF NOT EXISTS `flippers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=140 ;

--
-- Dumping data for table `flippers`
--

INSERT INTO `flippers` (`id`, `name`) VALUES
(2, '24'),
(3, 'AC/DC'),
(4, 'Acapulco'),
(5, 'Amazon Hunt'),
(6, 'Amazon Hunt II'),
(7, 'Amazon Hunt III'),
(8, 'Attack from Mars'),
(9, 'Austin Powers'),
(10, 'Avatar'),
(11, 'Aztec'),
(12, 'Bad Cats'),
(13, 'Batman'),
(14, 'Big Buck Hunter'),
(15, 'Big Hurt'),
(16, 'Black Rose'),
(17, 'Cactus Canyon'),
(18, 'Cactus Jack’s'),
(19, 'Car Hop'),
(20, 'Cirqus Voltaire'),
(21, 'Class of 1812'),
(22, 'Congo'),
(23, 'Corvette'),
(24, 'Creature Black Lagoon'),
(25, 'CSI'),
(26, 'Cue Ball Wizard'),
(27, 'The Addams Family'),
(28, 'The Avengers'),
(29, 'Demolition Man'),
(30, 'Dirty Harry'),
(31, 'Doctor Who'),
(32, 'Dr Dude'),
(33, 'Dracula'),
(34, 'Eight Ball Deluxe'),
(35, 'Elvira'),
(36, 'Elvis'),
(37, 'Family Guy'),
(38, 'Fish Tales'),
(39, 'Frankenstein'),
(40, 'Funhouse'),
(41, 'Gladiators'),
(42, 'Godzilla'),
(43, 'Grand Prix'),
(44, 'Guns N’ Roses'),
(45, 'Harley Davidson'),
(46, 'High Roller Casino'),
(47, 'Hulk'),
(48, 'Indiana Jones'),
(49, 'Indianapolis 500'),
(50, 'Iron Man'),
(51, 'The Champion Pub'),
(52, 'The Flintstones'),
(53, 'The Getaway: HS II'),
(54, 'Jack Bot'),
(55, 'Johnny Mnemonic'),
(56, 'Jokerz'),
(57, 'Judge Dredd'),
(58, 'Junk Yard'),
(59, 'Jurassic Park'),
(60, 'Last Action Hero'),
(61, 'Lethal Weapon 3'),
(62, 'Lights.Camera.Action!'),
(63, 'Lord of the rings'),
(64, 'Lost in Space'),
(65, 'Mario Andretti'),
(66, 'Medieval Madness'),
(67, 'Metallica'),
(68, 'Monopoly'),
(69, 'Monster Bash'),
(70, 'Monte Carlo'),
(71, 'Mustang'),
(72, 'NBA'),
(73, 'NBA Fast Break'),
(74, 'No Fear'),
(75, 'No Good Gofers'),
(76, 'Panthera'),
(77, 'Paragon'),
(78, 'Pirates des Caraïbes'),
(79, 'Playboy'),
(80, 'Pool Sharks'),
(81, 'Popeye Saves the Earth'),
(82, 'The Party Zone'),
(83, 'Les Sopranos'),
(84, 'Rack ‘Em Up!'),
(85, 'Red & Ted’s Road Show'),
(86, 'Revenge from Mars'),
(87, 'Ripley’s bel. it or not'),
(88, 'Riverboat Gambler'),
(89, 'RollerCoaster Tycoon'),
(90, 'Scared Stiff'),
(91, 'Shaq Attaq'),
(92, 'Sharkey’s Shootout'),
(93, 'Shrek'),
(94, 'Silver Slugger'),
(95, 'South Park'),
(96, 'Space Jam'),
(97, 'Space Mission'),
(98, 'Spiderman'),
(99, 'Star Trek'),
(100, 'Star Wars'),
(101, 'Star Wars Episode I'),
(102, 'Stargate'),
(103, 'Starship Troopers'),
(104, 'Street Fighter II'),
(105, 'Striker Xtreme'),
(106, 'Super Mario Bros'),
(107, 'Surf ‘n Safari'),
(108, 'The Rolling Stones'),
(109, 'The Shadow'),
(110, 'The Simpsons'),
(111, 'Tales of the Arab. Ni.'),
(112, 'Tee’d off'),
(113, 'Terminator 2'),
(114, 'Terminator 3'),
(115, 'Theatre of magic'),
(116, 'Tommy the Who'),
(117, 'Torch'),
(118, 'Totem'),
(119, 'Transformers'),
(120, 'TRON: Legacy'),
(121, 'Twilight Zone'),
(122, 'Waterworld'),
(123, 'Wheel of fortune'),
(124, 'Whirlwind'),
(125, 'White Water'),
(126, 'WHO dunnit'),
(127, 'World Chall. Soccer'),
(128, 'World Cup Soccer'),
(129, 'World Poker Tour'),
(130, 'WWF Royal Rumble'),
(131, 'X-Men'),
(132, 'Terminator 2: Judgment Day '),
(133, 'The Sopranos® '),
(134, 'Tales of the Arabian Nights '),
(135, 'Dr. Dude '),
(136, 'Pirates of the Caribbean '),
(137, 'Transformers™ '),
(138, 'Ripley’s Believe It or Not!® '),
(139, 'Shrek™ ');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flipper_id` int(11) DEFAULT NULL,
  `bar_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `locations_ibfk_1` (`flipper_id`),
  KEY `locations_ibfk_2` (`bar_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `flipper_id`, `bar_id`, `created_at`, `updated_at`) VALUES
(1, 13, 34, '2014-08-02 17:34:41', '2014-08-02 17:34:41'),
(2, 67, 35, '2014-08-02 17:34:47', '2014-08-02 17:34:47'),
(3, 50, 36, '2014-08-02 17:34:54', '2014-08-02 17:34:54'),
(4, 13, 37, '2014-08-02 17:35:01', '2014-08-02 17:35:01'),
(5, 99, 38, '2014-08-02 17:35:08', '2014-08-02 17:35:08'),
(6, 71, 39, '2014-08-02 17:35:13', '2014-08-02 17:35:13'),
(7, 8, 40, '2014-08-02 17:35:20', '2014-08-02 17:35:20'),
(8, 71, 41, '2014-08-02 17:35:25', '2014-08-02 17:35:25'),
(9, 66, 42, '2014-08-02 17:35:31', '2014-08-02 17:35:31'),
(10, 133, 43, '2014-08-02 17:35:37', '2014-08-02 17:35:37'),
(11, 8, 44, '2014-08-02 17:35:43', '2014-08-02 17:35:43'),
(12, 69, 45, '2014-08-02 17:35:48', '2014-08-02 17:35:48'),
(13, 66, 46, '2014-08-02 17:36:04', '2014-08-02 17:36:04'),
(14, 134, 47, '2014-08-02 17:36:11', '2014-08-02 17:36:11'),
(15, 27, 48, '2014-08-02 17:36:17', '2014-08-02 17:36:17'),
(16, 119, 49, '2014-08-02 17:36:22', '2014-08-02 17:36:22'),
(17, 66, 50, '2014-08-02 17:36:28', '2014-08-02 17:36:28'),
(18, 86, 51, '2014-08-02 17:36:34', '2014-08-02 17:36:34'),
(19, 86, 52, '2014-08-02 17:36:39', '2014-08-02 17:36:39'),
(20, 69, 53, '2014-08-02 17:36:44', '2014-08-02 17:36:44'),
(21, 27, 54, '2014-08-02 17:36:50', '2014-08-02 17:36:50'),
(22, 58, 54, '2014-08-02 17:36:50', '2014-08-02 17:36:50'),
(23, 69, 55, '2014-08-02 17:36:56', '2014-08-02 17:36:56'),
(24, 69, 56, '2014-08-02 17:37:02', '2014-08-02 17:37:02'),
(25, 28, 57, '2014-08-02 17:37:07', '2014-08-02 17:37:07'),
(26, 69, 58, '2014-08-02 17:37:12', '2014-08-02 17:37:12'),
(27, 3, 59, '2014-08-02 17:37:17', '2014-08-02 17:37:17'),
(28, 115, 60, '2014-08-02 17:37:24', '2014-08-02 17:37:24'),
(29, 69, 61, '2014-08-02 17:37:30', '2014-08-02 17:37:30'),
(30, 69, 62, '2014-08-02 17:37:36', '2014-08-02 17:37:36'),
(31, 67, 62, '2014-08-02 17:37:36', '2014-08-02 17:37:36'),
(32, 37, 63, '2014-08-02 17:44:02', '2014-08-02 17:44:02'),
(33, 69, 64, '2014-08-02 17:44:05', '2014-08-02 17:44:05'),
(34, 69, 65, '2014-08-02 17:44:08', '2014-08-02 17:44:08'),
(35, 97, 66, '2014-08-02 17:44:11', '2014-08-02 17:44:11'),
(36, 90, 67, '2014-08-02 17:44:14', '2014-08-02 17:44:14'),
(37, 69, 67, '2014-08-02 17:44:14', '2014-08-02 17:44:14'),
(38, 115, 67, '2014-08-02 17:44:14', '2014-08-02 17:44:14'),
(39, 80, 68, '2014-08-02 17:44:20', '2014-08-02 17:44:20'),
(40, 27, 68, '2014-08-02 17:44:20', '2014-08-02 17:44:20'),
(41, 135, 68, '2014-08-02 17:44:20', '2014-08-02 17:44:20'),
(42, 44, 68, '2014-08-02 17:44:20', '2014-08-02 17:44:20'),
(43, 132, 69, '2014-08-02 17:44:22', '2014-08-02 17:44:22'),
(44, 69, 69, '2014-08-02 17:44:22', '2014-08-02 17:44:22'),
(45, 69, 70, '2014-08-02 17:44:25', '2014-08-02 17:44:25'),
(46, 8, 71, '2014-08-02 17:44:28', '2014-08-02 17:44:28'),
(47, 8, 72, '2014-08-02 17:44:31', '2014-08-02 17:44:31'),
(48, 69, 72, '2014-08-02 17:44:31', '2014-08-02 17:44:31'),
(49, 13, 73, '2014-08-02 17:44:35', '2014-08-02 17:44:35'),
(50, 69, 74, '2014-08-02 17:44:38', '2014-08-02 17:44:38'),
(51, 66, 75, '2014-08-02 17:44:41', '2014-08-02 17:44:41'),
(52, 69, 76, '2014-08-02 17:44:44', '2014-08-02 17:44:44'),
(53, 8, 77, '2014-08-02 17:44:47', '2014-08-02 17:44:47'),
(54, 69, 78, '2014-08-02 17:44:52', '2014-08-02 17:44:52'),
(55, 69, 79, '2014-08-02 17:44:55', '2014-08-02 17:44:55'),
(56, 69, 80, '2014-08-02 17:44:59', '2014-08-02 17:44:59'),
(57, 125, 81, '2014-08-02 17:45:02', '2014-08-02 17:45:02'),
(58, 69, 82, '2014-08-02 17:45:05', '2014-08-02 17:45:05'),
(59, 8, 83, '2014-08-02 17:45:09', '2014-08-02 17:45:09'),
(60, 13, 84, '2014-08-02 17:45:12', '2014-08-02 17:45:12'),
(61, 69, 85, '2014-08-02 17:45:15', '2014-08-02 17:45:15'),
(62, 90, 86, '2014-08-02 17:45:18', '2014-08-02 17:45:18'),
(63, 8, 87, '2014-08-02 17:45:21', '2014-08-02 17:45:21'),
(64, 69, 88, '2014-08-02 17:45:25', '2014-08-02 17:45:25'),
(65, 17, 89, '2014-08-02 17:45:28', '2014-08-02 17:45:28'),
(66, 66, 90, '2014-08-02 17:45:31', '2014-08-02 17:45:31'),
(67, 69, 91, '2014-08-02 17:45:33', '2014-08-02 17:45:33'),
(68, 8, 92, '2014-08-02 17:45:36', '2014-08-02 17:45:36'),
(69, 69, 93, '2014-08-02 17:45:39', '2014-08-02 17:45:39'),
(70, 66, 94, '2014-08-02 17:45:43', '2014-08-02 17:45:43'),
(71, 66, 95, '2014-08-02 17:45:46', '2014-08-02 17:45:46'),
(72, 27, 96, '2014-08-02 17:45:50', '2014-08-02 17:45:50'),
(73, 8, 97, '2014-08-02 17:45:53', '2014-08-02 17:45:53'),
(74, 3, 98, '2014-08-02 17:45:55', '2014-08-02 17:45:55'),
(75, 66, 99, '2014-08-02 17:45:58', '2014-08-02 17:45:58'),
(76, 28, 100, '2014-08-02 17:46:02', '2014-08-02 17:46:02'),
(77, 69, 101, '2014-08-02 17:46:04', '2014-08-02 17:46:04'),
(78, 136, 102, '2014-08-02 17:46:07', '2014-08-02 17:46:07'),
(79, 66, 103, '2014-08-02 17:46:11', '2014-08-02 17:46:11'),
(80, 67, 104, '2014-08-02 17:46:14', '2014-08-02 17:46:14'),
(81, 8, 105, '2014-08-02 17:46:17', '2014-08-02 17:46:17'),
(82, 69, 105, '2014-08-02 17:46:17', '2014-08-02 17:46:17'),
(83, 69, 106, '2014-08-02 17:46:20', '2014-08-02 17:46:20'),
(84, 69, 107, '2014-08-02 17:46:23', '2014-08-02 17:46:23'),
(85, 137, 108, '2014-08-02 17:46:27', '2014-08-02 17:46:27'),
(86, 138, 109, '2014-08-02 17:46:30', '2014-08-02 17:46:30'),
(87, 139, 110, '2014-08-02 17:56:39', '2014-08-02 17:56:39'),
(88, 133, 111, '2014-08-02 17:56:42', '2014-08-02 17:56:42'),
(89, 69, 112, '2014-08-02 17:56:46', '2014-08-02 17:56:46'),
(90, 63, 113, '2014-08-02 17:56:48', '2014-08-02 17:56:48'),
(91, 69, 114, '2014-08-02 17:56:53', '2014-08-02 17:56:53'),
(92, 69, 115, '2014-08-02 17:56:56', '2014-08-02 17:56:56'),
(93, 67, 116, '2014-08-02 17:56:59', '2014-08-02 17:56:59'),
(94, 138, 117, '2014-08-02 17:57:02', '2014-08-02 17:57:02'),
(95, 69, 118, '2014-08-02 17:57:05', '2014-08-02 17:57:05'),
(96, 67, 119, '2014-08-02 17:57:08', '2014-08-02 17:57:08'),
(97, 69, 120, '2014-08-02 17:57:11', '2014-08-02 17:57:11');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`flipper_id`) REFERENCES `flippers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_ibfk_2` FOREIGN KEY (`bar_id`) REFERENCES `bars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
