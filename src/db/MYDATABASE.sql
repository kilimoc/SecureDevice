-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.1.35-community - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for techflay_2_1
CREATE DATABASE IF NOT EXISTS `techflay_2_1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `techflay_2_1`;

-- Dumping structure for table techflay_2_1.business_owner
CREATE TABLE IF NOT EXISTS `business_owner` (
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  PRIMARY KEY (`id_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table techflay_2_1.business_owner: ~1 rows (approximately)
/*!40000 ALTER TABLE `business_owner` DISABLE KEYS */;
INSERT INTO `business_owner` (`first_name`, `last_name`, `id_number`, `phone`) VALUES
	('FDFD', 'FDDFFD', '54154', '54145151');
/*!40000 ALTER TABLE `business_owner` ENABLE KEYS */;

-- Dumping structure for table techflay_2_1.business_register
CREATE TABLE IF NOT EXISTS `business_register` (
  `name` varchar(50) NOT NULL,
  `license` varchar(50) NOT NULL,
  `kra_pin` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `owner_id` varchar(50) NOT NULL,
  PRIMARY KEY (`license`),
  UNIQUE KEY `kra_pin` (`kra_pin`),
  KEY `FK_business_register_business_owner` (`owner_id`),
  CONSTRAINT `FK_business_register_business_owner` FOREIGN KEY (`owner_id`) REFERENCES `business_owner` (`id_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table techflay_2_1.business_register: ~1 rows (approximately)
/*!40000 ALTER TABLE `business_register` DISABLE KEYS */;
INSERT INTO `business_register` (`name`, `license`, `kra_pin`, `location`, `owner_id`) VALUES
	('ASDFSF', 'FFDFD', 'FFDFD', 'FDFDGFD', '54154');
/*!40000 ALTER TABLE `business_register` ENABLE KEYS */;

-- Dumping structure for table techflay_2_1.device_info
CREATE TABLE IF NOT EXISTS `device_info` (
  `serial_number` varchar(50) NOT NULL,
  `imei` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(20) DEFAULT NULL,
  `manufacturer` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`imei`),
  UNIQUE KEY `serial_number` (`serial_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table techflay_2_1.device_info: ~4 rows (approximately)
/*!40000 ALTER TABLE `device_info` DISABLE KEYS */;
INSERT INTO `device_info` (`serial_number`, `imei`, `name`, `manufacturer`) VALUES
	('0153801720701470', '352770081319826/34', 'TECNO-J8', 'TECNO MOBILES'),
	('0123456789ABCDEF', '354525070009129/37', 'X-TIGI-Vision 6', 'TECNO MOBILE'),
	('01H355X671403586', '359396071103179', 'TECNO-C7', 'TECNO MOBILE'),
	('55455554545', 'SASASD44554', 'TECNO-J8', 'TECNO MOBILE');
/*!40000 ALTER TABLE `device_info` ENABLE KEYS */;

-- Dumping structure for table techflay_2_1.device_price
CREATE TABLE IF NOT EXISTS `device_price` (
  `s_number` varchar(50) NOT NULL,
  `imei_code` varchar(50) DEFAULT NULL,
  `buying_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`s_number`),
  KEY `FK__device_info` (`imei_code`),
  CONSTRAINT `FK__device_info` FOREIGN KEY (`imei_code`) REFERENCES `device_info` (`imei`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table techflay_2_1.device_price: ~4 rows (approximately)
/*!40000 ALTER TABLE `device_price` DISABLE KEYS */;
INSERT INTO `device_price` (`s_number`, `imei_code`, `buying_price`) VALUES
	('0123456789ABCDEF', '354525070009129/37', 8750.00),
	('0153801720701470', '352770081319826/34', 8500.00),
	('01H355X671403586', '359396071103179', 7500.00),
	('55455554545', 'SASASD44554', 4500.00);
/*!40000 ALTER TABLE `device_price` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
