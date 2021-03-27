-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for newsystem
CREATE DATABASE IF NOT EXISTS `superdatefyp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `superdatefyp`;

-- Dumping structure for table newsystem.activities
CREATE TABLE IF NOT EXISTS `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activityname` varchar(50) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `speaker` varchar(50) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table newsystem.activities: ~2 rows (approximately)
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` (`id`, `activityname`, `time`, `date`, `speaker`, `userid`) VALUES
  (1, 'wewwe', '16:05:00', '2020-09-03', 'Ali', 3),
  (2, 'masak bubur lambuk', '22:55:00', '2020-09-24', 'Tan Sri Farid', 3);
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;

-- Dumping structure for table newsystem.insts
CREATE TABLE IF NOT EXISTS `insts` (
  `institution_code` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` blob,
  PRIMARY KEY (`institution_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newsystem.insts: ~5 rows (approximately)
/*!40000 ALTER TABLE `insts` DISABLE KEYS */;
INSERT INTO `insts` (`institution_code`, `name`, `address`) VALUES
  ('KUIS', 'Kolej Universiti Islam Selangor', _binary 0x42616E64617220536572692050757472612C204B616A616E672C2053656C616E676F72),
  ('MMU', 'Multimedia Universiti', _binary 0x43796265726A6179612C204D616C6179736961),
  ('UKM', 'Universiti Kebangsaan Malaysia', _binary 0x42616E67692C204B616A616E672C2053656C616E676F72),
  ('UM', 'Universiti Malaya', _binary 0x3530363033204B75616C61204C756D7075722C204D616C6179736961),
  ('USIM', 'Universiti Sains Islam Malaysia', _binary 0x4E696C61692C204E65676572692053656D62696C616E2C204D616C6179736961);
/*!40000 ALTER TABLE `insts` ENABLE KEYS */;

-- Dumping structure for table newsystem.mentors
CREATE TABLE IF NOT EXISTS `mentors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mentorname` varchar(100) DEFAULT NULL,
  `dept` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newsystem.mentors: ~0 rows (approximately)
/*!40000 ALTER TABLE `mentors` DISABLE KEYS */;
/*!40000 ALTER TABLE `mentors` ENABLE KEYS */;

-- Dumping structure for table newsystem.papers
CREATE TABLE IF NOT EXISTS `papers` (
  `id` varchar(6) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `institution_code` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `abstract` blob,
  `keywords` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newsystem.papers: ~3 rows (approximately)
/*!40000 ALTER TABLE `papers` DISABLE KEYS */;
INSERT INTO `papers` (`id`, `title`, `author`, `institution_code`, `email`, `abstract`, `keywords`) VALUES
  ('ITS002', 'Students\' Attitude towards Focused Educational Video', 'Sazanah Mohd Ali', 'KUIS', 'sazanah@kuis.edu.my', _binary 0x41627374726163743A20546869732073747564792069732061696D656420746F20616E616C797365207468652070737963686F6C6F676963616C20666163746F72732C20736F6369616C2C20746563686E6F6C6F676963616C20616E64, 'Focused educational video sharing site, YouTube, TAM, New media'),
  ('ITS015', 'Financial News Sentiment Analysis Using LexiconBased Web Labelling and Machine Learning-Based', 'Ling Wu', 'UM', 'wuling@siswa.um.edu.my', _binary 0x41627374726163742E2046696E616E6369616C206E6577732073656E74696D656E74206861732073686F776E20677265617420696E666C75656E6365206F6E2073746F636B206D61726B6574, 'Financial News Sentiment, Lexicon-based Labelling, Machine Learningbased Algorithm'),
  ('ITS022', 'A Website Builder for Mosque and Surau: Towards A Secured and Standardized Platform', 'Zarina Che Embi', 'MMU', 'zarina.embi@mmu.edu.my', _binary 0x41627374726163742E204D75736C696D20636F6D6D756E69747920686173206869676820636F6E6E65637469766974792077697468207468652068656C70206F66206D6F6465726E, 'Muslim, ICT, website builder, community, technology, community,');
/*!40000 ALTER TABLE `papers` ENABLE KEYS */;

-- Dumping structure for table newsystem.programs
CREATE TABLE IF NOT EXISTS `programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `programcode` varchar(6) NOT NULL DEFAULT '0',
  `programname` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table newsystem.programs: ~4 rows (approximately)
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;
INSERT INTO `programs` (`id`, `programcode`, `programname`) VALUES
  (1, 'MS36', 'Diploma in Multimedia'),
  (2, 'MS39', 'Diploma un Computer Science'),
  (3, 'BT01', 'Bach. Creative Multimedia'),
  (4, 'BT02', 'Bach. Networking Technology');
/*!40000 ALTER TABLE `programs` ENABLE KEYS */;

-- Dumping structure for table newsystem.students
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `matrixno` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` blob,
  `dob` date DEFAULT NULL,
  `programcode` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table newsystem.students: ~6 rows (approximately)
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` (`id`, `matrixno`, `name`, `address`, `dob`, `programcode`) VALUES
  (4, '123456', 'Khirulnizam Abd Rahman', _binary 0x42616E6769, '2000-03-28', 'MS36'),
  (5, '123457', 'Azman Ali', _binary 0x4E696C6169, '2000-11-24', 'MS39'),
  (6, '123458', 'Syarifah Rahman', _binary 0x536572656D62616E65, '2000-10-19', 'MS36'),
  (7, '123459', 'Aminah Hassan', _binary 0x4D656C616B61, '2000-03-10', 'MS39'),
  (8, '123460', 'Ali Bakar Abu', _binary 0x5061726F69, '2000-08-05', 'MS36'),
  (9, '123460', 'Amin bin Rahman', _binary 0x536572656D62616E, '2000-03-12', 'MS39');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;

-- Dumping structure for table newsystem.students_result
CREATE TABLE IF NOT EXISTS `students_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matrixno` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table newsystem.students_result: ~5 rows (approximately)
/*!40000 ALTER TABLE `students_result` DISABLE KEYS */;
INSERT INTO `students_result` (`id`, `matrixno`, `name`, `mark`) VALUES
  (1, '123', 'amin', 69),
  (2, '234', 'iman', 96),
  (3, '345', 'muna', 100),
  (4, '345', 'minah', 49),
  (5, '543', 'ahmad', 31);
/*!40000 ALTER TABLE `students_result` ENABLE KEYS */;

-- Dumping structure for table newsystem.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `accesslevel` varchar(50) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table newsystem.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `email`, `password`, `accesslevel`, `fullname`) VALUES
  (1, 'kerul', 'kerul@gmail.com', 'e99a18c428cb38d5f260853678922e03', 'admin', 'Khirulnizam Abd Rahman'),
  (2, 'ali', 'ali@gmail.com', '984d8144fa08bfc637d2825463e184fa', 'guest', 'Ali bin Ahmad'),
  (3, 'mutu', 'mutu@gmail.com', 'd45d1570a1d9fd458fd192f180944948', 'admin', 'Ilmu Mutu dan Budi');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
