-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 24 avr. 2022 à 18:39
-- Version du serveur : 5.7.24
-- Version de PHP : 7.4.20RC1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `yovente`
--

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `cities` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cities`
--

INSERT INTO `cities` (`id`, `cities`, `created_at`, `updated_at`) VALUES
(1, 'AFOURAR - BENI-MELLAL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(2, 'AGADIR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(3, 'AGHBAL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(4, 'AGLOU', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(5, 'AGOURAY - MEKNES', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(6, 'AGZIRT BENI-MELLAL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(7, 'AHFIR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(8, 'AIN ALLA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(9, 'AIN AOUDA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(10, 'AIN ATTIQ', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(11, 'AIN CHEGGAG', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(12, 'AIN CHKEF', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(13, 'AIN DFALI-OUAZZANE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(14, 'AIN EL MEDIOUR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(15, 'AIN HAROUDA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(16, 'AIN JEMAA-MEKNES', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(17, 'AIN JIRI-MEKNES', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(18, 'AIN SEDDAQ', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(19, 'AIN TEKKI', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(20, 'AIN ZARKA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(21, 'AIT AISSA OUBRAHIM', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(22, 'AIT AMIRA-AGADIR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(23, 'AIT IAAZA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(24, 'AIT IHYA OMOUSSA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(25, 'AIT MELLOUL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(26, 'AIT OURIR-VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(27, 'AJDIR-HOUCIMA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(28, 'AJDIR-TAZA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(29, 'AKKA-TATA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(30, 'AKLIM', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(31, 'AL HOCEIMA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(32, 'ALNIF', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(33, 'ANZA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(34, 'AOUFOUS', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(35, 'AOURIR-AGADIR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(36, 'ARJAT-MOHAMMEDIA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(37, 'ARREFOUD VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(38, 'ASILAH VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(39, 'ASSA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(40, 'ATTAOUIA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(41, 'AZEMMOUR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(42, 'AZILAL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(43, 'AZLA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(44, 'AZROU', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(45, 'BAB BARD', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(46, 'BAB TAZA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(47, 'BDOUZA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(48, 'BEJAAD', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(49, 'BELAAGID', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(50, 'BELFAA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(51, 'BELKSIRI VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(52, 'BEN AHMED-VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(53, 'BEN GUERIR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(54, 'BEN TAYEB-NADOR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(55, 'BENI ENSAR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(56, 'BENI MELLAL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(57, 'BENSILAMN', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(58, 'BERKANE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(59, 'BERRECHID VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(60, 'BHALIL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(61, 'BIOUGRA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(62, 'BIR JDID', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(63, 'BNI AYAT - BENI-MELLAL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(64, 'BNI BOUAYACH', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(65, 'BNI YAKHLEF', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(66, 'BOUANANE-TETOUN', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(67, 'BOUARFA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(68, 'BOUDERBALA-MEKNES', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(69, 'BOUFKRANE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(70, 'BOUIZAKARNE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(71, 'BOUJDOUR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(72, 'BOUJNIBA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(73, 'BOUKNADL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(74, 'BOULANOUARE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(75, 'BOULEMANE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(76, 'BOUMALNE DADES', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(77, 'BOUMIA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(78, 'BOUNAAMANE-TIZNIT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(79, 'BOUSKOURA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(80, 'BOUZNIKA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(81, 'BRADIA - BENI-MELLAL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(82, 'CABO NEGRO', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(83, 'CASABLANCA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(84, 'CHEFCHAOUEN', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(85, 'CHELLALAT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(86, 'CHICHAOUA-VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(87, 'CHOUITER', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(88, 'DAKHLA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(89, 'DAR BOUAZZA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(90, 'DAR OULD ZIDOUH', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(91, 'DAROUA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(92, 'DCHEIRA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(93, 'DEMNATE-VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(94, 'DKHISSA-MEKNES', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(95, 'DLALHA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(96, 'DOUAR BOUMAIZ', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(97, 'DRARGA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(98, 'DRIOUCH-NADOR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(99, 'ECHEMMAIA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(100, 'EL BOROUJ', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(101, 'EL GARA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(102, 'EL JADIDA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(103, 'EL KSIBA - BENI-MELLAL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(104, 'EL MAADER EL KABIR-TIZNIT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(105, 'EL MANSOURIA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(106, 'EL OUATIA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(107, 'ELHAJEB VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(108, 'ERRACHIDIA-02', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(109, 'ERRAHMA VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(110, 'ESSAOUIRA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(111, 'ESSMARA-SAHARA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(112, 'FAM EL HISN-TATA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(113, 'FES', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(114, 'FIGUIG', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(115, 'FNIDEQ', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(116, 'FOUM ZGUID', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(117, 'FQUIH BEN SALAH', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(118, 'GFIFAT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(119, 'GOUASSEM-VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(120, 'GOULMIMA VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(121, 'GUELMIM', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(122, 'GUERCIF', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(123, 'GUISSER', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(124, 'HAD HRARA-SAFI', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(125, 'HAD SWLME', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(126, 'HAD WLAD FRAJ', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(127, 'HARHOURA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(128, 'HOUARA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(129, 'IDI JABER-BENI-MELLAL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(130, 'IFRAN', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(131, 'IGHRAM LAALAM-BENI MELLAL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(132, 'IMGON-TINGHIR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(133, 'IMINTANOUTE-VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(134, 'IMOUZAR KANDRE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(135, 'IMOUZZER MARMOUCHA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(136, 'IMZOUREN', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(137, 'INZEGANE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(138, 'ISSAFEN-TATA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(139, 'ISSAGUEN', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(140, 'JAMAAT FDALA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(141, 'JAMAAT SHAIM', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(142, 'JERADA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(143, 'JORF EL MELHA-OUZZANE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(144, 'JORF SEFAR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(145, 'KABILA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(146, 'KAMOUNI', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(147, 'KARIAT ARKMAN‎-NADOR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(148, 'KARIAT BA MOHAMED', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(149, 'KASBA TADLA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(150, 'KASBAH EL TAHER', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(151, 'KELÂA DES SRAGHNA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(152, 'KELÂAT M GOUNA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(153, 'KELIAA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(154, 'KENITRA VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(155, 'KHEMIS SAHEL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(156, 'KHEMIS ZEMAMRA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(157, 'KHEMISSET VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(158, 'KHENICHET', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(159, 'KHENIFRA VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(160, 'KHOURIBGA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(161, 'KSAR EL KEBIR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(162, 'KSAR SGHIR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(163, 'LAAROUI', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(164, 'LAAYOUNE-PORT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(165, 'LAAYOUNE-SAHARA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(166, 'LALLA FATNA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(167, 'LALLA MIMOUNA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(168, 'LAOUAMRA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(169, 'LARACHE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(170, 'LAYOUN CHERKIA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(171, 'LHAJ KADOUR VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(172, 'LHAWZIA-JADIDA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(173, 'LMHAYA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(174, 'LOUIZIA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(175, 'M DIQ', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(176, 'MAAZIZ', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(177, 'MARINA SMIR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(178, 'MARRAKECH', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(179, 'MARTIL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(180, 'MASMOUDA - OUAZZANE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(181, 'MAZAGAN', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(182, 'MEDIONA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(183, 'MEHDIA VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(184, 'MEJJAT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(185, 'MEKNES', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(186, 'MHAMID EL GHIZLANE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(187, 'MIDAR-DRIOUCH', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(188, 'MIDELT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(189, 'MIMOSA-MOHAMMEDIA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(190, 'MISSOUR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(191, 'MOLY DRISSE ZARHOUNE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(192, 'MOUHAMMEDIA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(193, 'MOULAY ABDELLAH', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(194, 'MOULAY BOUSSELHAM', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(195, 'MOULAY YAÂCOUB', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(196, 'MRIRTE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(197, 'MSAWAR RASO', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(198, 'MSEMRIR-TINGHIR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(199, 'MZOUDA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(200, 'NADOR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(201, 'NOUACEUR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(202, 'OUAHAT SIDI BRAHIM', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(203, 'OUALMES VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(204, 'OUARZAZAT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(205, 'OUAZZANE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(206, 'OUDAYA-MARRAKECH', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(207, 'OUED AMLIL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(208, 'OUED LAOU', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(209, 'OUED ZEM', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(210, 'OUJDA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(211, 'OULAD AYAD', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(212, 'OULAD BERHIL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(213, 'OULAD DAHOU', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(214, 'OULAD JERRAR-TIZNIT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(215, 'OULAD SAID', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(216, 'OULAD SAID-BENI MELLAL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(217, 'OULAD TEIMA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(218, 'OULAD ZMAM - BENI-MELLAL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(219, 'OULED BEN RAHMOUN', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(220, 'OULED BOUTABET', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(221, 'OURIKA-VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(222, 'OUTAT EL HAJ', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(223, 'PLAGE DAVID-BOUZNIKA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(224, 'RABAT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(225, 'RAS EL MA-FES', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(226, 'RICHE-02', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(227, 'RISSANI VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(228, 'ROMMANI VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(229, 'SAAIDIA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(230, 'SAFI', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(231, 'SALE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(232, 'SALE EL JADIDA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(233, 'SBAA AYOUNE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(234, 'SEBT EL GUERDANE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(235, 'SEBT GZOULA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(236, 'SEFROU', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(237, 'SEGANGAN', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(238, 'SELOUANE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(239, 'SETTATE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(240, 'SID L MOKHTAR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(241, 'SID ZOUINE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(242, 'SIDI AISSA-BENI-MELLAL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(243, 'SIDI ALLAL EL BAHRAOUI', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(244, 'SIDI ALLAL TAZI', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(245, 'SIDI BENNOUR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(246, 'SIDI BOU OTHMANE-VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(247, 'SIDI BOUZID', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(248, 'SIDI EL AIDI', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(249, 'SIDI GHIAT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(250, 'SIDI HAJJAJ SBIT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(251, 'SIDI HARAZEM', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(252, 'SIDI IFNI', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(253, 'SIDI KACEM', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(254, 'SIDI KAOUKI', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(255, 'SIDI RAHL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(256, 'SIDI RAHLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(257, 'SIDI SLIMAN', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(258, 'SIDI TAIBI', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(259, 'SIDI YAHYA GHARB VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(260, 'SIDI-BIBI', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(261, 'SKHIRAT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(262, 'SKHOUR EL RAHMNA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(263, 'SOUIHLA-VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(264, 'SOUIRIA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(265, 'SOUK LARBAA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(266, 'SOUK LARBAA VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(267, 'SOUK SEBT OULAD NEMMA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(268, 'TADDART-TAZA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(269, 'TAFETACHTE ESSAOUIRA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(270, 'TAFOUGHALT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(271, 'TAFRAOUTE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(272, 'TAGHAZOUT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(273, 'TAGMOUT-TATA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(274, 'TAGOUNITE‬-ZAGORA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(275, 'TAHANAOUT-VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(276, 'TAHLA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(277, 'TAMANSOURT-MARRAKECH', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(278, 'TAMARIS', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(279, 'TAMEGROUTE-ZAGORA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(280, 'TAMESLUHT- VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(281, 'TAMESNA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(282, 'TAMRAGHT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(283, 'TAMRAGHT-AGADIR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(284, 'TAN TAN', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(285, 'TANGER', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(286, 'TANTAN', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(287, 'TAOUNATE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(288, 'TAOURIRT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(289, 'TARFYA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(290, 'TARGUIST', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(291, 'TAROUDANT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(292, 'TASSOULTANT-VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(293, 'TATA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(294, 'TAWJTAT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(295, 'TAZA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(296, 'TAZNAKHT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(297, 'TEMARA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(298, 'TEMSIA-AGADIR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(299, 'TEROUAL - OUAZZANE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(300, 'TETOUAN', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(301, 'TIFLET VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(302, 'TIKIOUINE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(303, 'TIN MANSOUR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(304, 'TINEJDAD VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(305, 'TINGHIR VILLE', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(306, 'TISSINT-TATA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(307, 'TIT MELLIL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(308, 'TIZNIT', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(309, 'TIZTOTIN-NADOR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(310, 'TLAT BOUARIS', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(311, 'TNIN EL GHIATE-SAFI', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(312, 'TNINE CHTOUKA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(313, 'TNINE GHARBIA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(314, 'TOHMO AGADIR', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(315, 'WALIDIA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(316, 'YOUSSOFIA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(317, 'YOUSSOUFIA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(318, 'ZAGORA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(319, 'ZAIDA', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(320, 'ZAOUIAT CHEIKH', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(321, 'ZAOUIT SIDI SMAIL', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(322, 'ZAYOU', '2020-11-01 01:29:12', '2020-11-01 01:29:12'),
(323, 'ZOUMI-OUAZZANE', '2020-11-01 01:29:12', '2020-11-01 01:29:12');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
