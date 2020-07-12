-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.18-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema barangayhall
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ barangayhall;
USE barangayhall;

--
-- Table structure for table `barangayhall`.`account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `user` varchar(45) NOT NULL default '',
  `pass` varchar(45) NOT NULL default '',
  `lvl` varchar(45) NOT NULL default '',
  `ln` varchar(45) NOT NULL default '',
  `fn` varchar(45) NOT NULL default '0000-00-00',
  `mi` varchar(45) NOT NULL default '',
  `dacr` varchar(45) NOT NULL default '',
  `requ` varchar(100) NOT NULL default '',
  `rean` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangayhall`.`account`
--

/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`user`,`pass`,`lvl`,`ln`,`fn`,`mi`,`dacr`,`requ`,`rean`) VALUES 
 ('admin','admin','Administrator','Remonde','Christian','D.','2016-12-01','What is your favorite color?','BLUE');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;


--
-- Table structure for table `barangayhall`.`changelog`
--

DROP TABLE IF EXISTS `changelog`;
CREATE TABLE `changelog` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `vers` varchar(45) NOT NULL default '',
  `desc` longtext NOT NULL,
  `date` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangayhall`.`changelog`
--

/*!40000 ALTER TABLE `changelog` DISABLE KEYS */;
INSERT INTO `changelog` (`ID`,`vers`,`desc`,`date`) VALUES 
 (1,'0.10a','Ahahaha','2017-05-01');
/*!40000 ALTER TABLE `changelog` ENABLE KEYS */;


--
-- Table structure for table `barangayhall`.`events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `ev_name` varchar(100) NOT NULL default '',
  `ev_desc` longtext NOT NULL,
  `ev_start` datetime NOT NULL default '0000-00-00 00:00:00',
  `ev_end` datetime NOT NULL default '0000-00-00 00:00:00',
  `ev_perm` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangayhall`.`events`
--

/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` (`ID`,`ev_name`,`ev_desc`,`ev_start`,`ev_end`,`ev_perm`) VALUES 
 (1,'Basketball Tournament','','2017-06-10 16:00:00','2017-06-10 19:00:00','Christian D. Remonde');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;


--
-- Table structure for table `barangayhall`.`items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `item_name` varchar(100) NOT NULL default '0',
  `amount` double NOT NULL default '0',
  `added_by` varchar(100) NOT NULL default '0000-00-00',
  `date_added` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangayhall`.`items`
--

/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`ID`,`item_name`,`amount`,`added_by`,`date_added`) VALUES 
 (1,'Barangay Clearance',40,'Christian D. Remonde','2017-07-12'),
 (2,'Death Certification',35,'Christian D. Remonde','2017-07-12'),
 (3,'Certification of Low Income',35,'Christian D. Remonde','2017-07-12'),
 (4,'Certificate of Residency',35,'Christian D. Remonde','2017-07-12');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;


--
-- Table structure for table `barangayhall`.`logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user` varchar(45) NOT NULL default '',
  `lvl` varchar(45) NOT NULL default '',
  `actn` varchar(45) NOT NULL default '',
  `dati` datetime NOT NULL default '0000-00-00 00:00:00',
  `info` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangayhall`.`logs`
--

/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` (`id`,`user`,`lvl`,`actn`,`dati`,`info`) VALUES 
 (1,'admin','Administrator','Login','2017-02-08 13:09:17','The user login to the system successfully.'),
 (2,'admin','Administrator','Login','2017-02-08 13:24:42','The user login to the system successfully.'),
 (3,'admin','Administrator','Login','2017-02-08 13:26:42','The user login to the system successfully.'),
 (4,'admin','Administrator','Login','2017-02-08 13:27:44','The user login to the system successfully.'),
 (5,'admin','Administrator','Login','2017-02-08 13:49:29','The user login to the system successfully.'),
 (6,'admin','Administrator','Login','2017-02-08 13:51:13','The user login to the system successfully.'),
 (7,'admin','Administrator','Login','2017-02-08 13:57:09','The user login to the system successfully.'),
 (8,'admin','Administrator','Login','2017-02-08 14:01:01','The user login to the system successfully.'),
 (9,'admin','Administrator','Login','2017-02-08 14:07:06','The user login to the system successfully.'),
 (10,'admin','Administrator','Login','2017-02-08 14:09:52','The user login to the system successfully.');
INSERT INTO `logs` (`id`,`user`,`lvl`,`actn`,`dati`,`info`) VALUES 
 (11,'admin','Administrator','Login','2017-02-08 14:12:03','The user login to the system successfully.'),
 (12,'admin','Administrator','Login','2017-02-08 14:15:19','The user login to the system successfully.'),
 (13,'admin','Administrator','Login','2017-02-10 15:52:22','The user login to the system successfully.'),
 (14,'admin','Administrator','Login','2017-02-10 15:56:01','The user login to the system successfully.'),
 (15,'admin','Administrator','Login','2017-02-10 16:07:09','The user login to the system successfully.'),
 (16,'admin','Administrator','Login','2017-02-10 16:19:30','The user login to the system successfully.'),
 (17,'admin','Administrator','Login','2017-02-10 16:34:12','The user login to the system successfully.'),
 (18,'admin','Administrator','Login','2017-02-10 17:08:29','The user login to the system successfully.'),
 (19,'admin','Administrator','Login','2017-02-10 17:26:12','The user login to the system successfully.'),
 (20,'admin','Administrator','Login','2017-02-10 17:27:55','The user login to the system successfully.');
INSERT INTO `logs` (`id`,`user`,`lvl`,`actn`,`dati`,`info`) VALUES 
 (21,'admin','Administrator','Login','2017-02-10 18:37:22','The user login to the system successfully.'),
 (22,'admin','Administrator','Login','2017-02-11 12:23:22','The user login to the system successfully.'),
 (23,'admin','Administrator','Login','2017-02-11 12:27:07','The user login to the system successfully.'),
 (24,'admin','Administrator','Login','2017-02-11 12:31:03','The user login to the system successfully.'),
 (25,'admin','Administrator','Login','2017-02-11 12:50:08','The user login to the system successfully.'),
 (26,'admin','Administrator','Login','2017-02-11 12:52:24','The user login to the system successfully.'),
 (27,'admin','Administrator','Login','2017-02-11 13:02:41','The user login to the system successfully.'),
 (28,'admin','Administrator','Login','2017-02-11 13:05:40','The user login to the system successfully.'),
 (29,'admin','Administrator','Login','2017-02-11 13:43:21','The user login to the system successfully.'),
 (30,'admin','Administrator','Add People','2017-02-11 13:45:28','The user added people to the system.');
INSERT INTO `logs` (`id`,`user`,`lvl`,`actn`,`dati`,`info`) VALUES 
 (31,'admin','Administrator','Login','2017-02-11 16:32:19','The user login to the system successfully.'),
 (32,'admin','Administrator','Login','2017-02-11 19:02:38','The user login to the system successfully.'),
 (33,'admin','Administrator','Login','2017-02-12 10:45:36','The user login to the system successfully.'),
 (34,'admin','Administrator','Delete People','2017-02-12 10:46:18','The user deleted people to the system.'),
 (35,'admin','Administrator','Login','2017-02-12 11:05:40','The user login to the system successfully.'),
 (36,'admin','Administrator','Login','2017-02-12 11:47:17','The user login to the system successfully.'),
 (37,'admin','Administrator','Login','2017-02-12 12:15:59','The user login to the system successfully.'),
 (38,'admin','Administrator','Login','2017-02-12 15:52:29','The user login to the system successfully.'),
 (39,'admin','Administrator','Login','2017-02-12 16:00:48','The user login to the system successfully.'),
 (40,'admin','Administrator','Login','2017-02-12 16:15:08','The user login to the system successfully.');
INSERT INTO `logs` (`id`,`user`,`lvl`,`actn`,`dati`,`info`) VALUES 
 (41,'admin','Administrator','Login','2017-02-13 08:21:19','The user login to the system successfully.'),
 (42,'admin','Administrator','Login','2017-02-13 13:57:25','The user login to the system successfully.'),
 (43,'admin','Administrator','Login','2017-02-13 14:01:18','The user login to the system successfully.'),
 (44,'admin','Administrator','Login','2017-02-13 14:04:06','The user login to the system successfully.'),
 (45,'admin','Administrator','Login','2017-02-13 14:16:11','The user login to the system successfully.'),
 (46,'admin','Administrator','Login','2017-06-10 04:08:20','The user login to the system successfully.'),
 (47,'admin','Administrator','Login','2017-07-11 17:00:32','The user login to the system successfully.'),
 (48,'admin','Administrator','Login','2017-07-12 07:41:11','The user login to the system successfully.'),
 (49,'admin','Administrator','Add Item/Service','2017-07-12 07:41:52','The user added item to the system.\nName: Certification of Low Income\nCost: 40.00'),
 (50,'admin','Administrator','Login','2017-07-12 07:43:43','The user login to the system successfully.');
INSERT INTO `logs` (`id`,`user`,`lvl`,`actn`,`dati`,`info`) VALUES 
 (51,'admin','Administrator','Login','2017-07-12 07:46:36','The user login to the system successfully.'),
 (52,'admin','Administrator','Add Item/Service','2017-07-12 07:47:04','The user added item to the system.\nName: Barangay Clearance\nCost: 40.00'),
 (53,'admin','Administrator','Add Item/Service','2017-07-12 07:47:26','The user added item to the system.\nName: Death Certification\nCost: 35.00'),
 (54,'admin','Administrator','Add Item/Service','2017-07-12 07:47:48','The user added item to the system.\nName: Certification of Low Income\nCost: 35.00'),
 (55,'admin','Administrator','Add Item/Service','2017-07-12 07:48:11','The user added item to the system.\nName: Certificate of Residency\nCost: 35.00'),
 (56,'admin','Administrator','Transaction','2017-07-12 07:48:55','The user deposit a transaction to the system.'),
 (57,'admin','Administrator','Login','2017-07-12 07:52:27','The user login to the system successfully.'),
 (58,'admin','Administrator','Add Event','2017-07-12 07:55:49','The user added event to the system.');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;


--
-- Table structure for table `barangayhall`.`officials`
--

DROP TABLE IF EXISTS `officials`;
CREATE TABLE `officials` (
  `id` varchar(45) NOT NULL default '',
  `ln` varchar(45) NOT NULL default '',
  `fn` varchar(45) NOT NULL default '',
  `mi` varchar(45) NOT NULL default '',
  `pstn` varchar(45) NOT NULL default '',
  `prk` int(10) unsigned NOT NULL default '0',
  `cvst` varchar(45) NOT NULL default '',
  `gndr` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangayhall`.`officials`
--

/*!40000 ALTER TABLE `officials` DISABLE KEYS */;
INSERT INTO `officials` (`id`,`ln`,`fn`,`mi`,`pstn`,`prk`,`cvst`,`gndr`) VALUES 
 ('KGWD1','Demabildo','Florites','L.','Kagawad',2,'Married','Female'),
 ('KGWD2','Ponce','Cecille','A.','Kagawad',4,'Married','Female'),
 ('KGWD3','Butuan','Darlin','D.','Kagawad',0,'Married','Female'),
 ('KGWD4','Tecson','Rose','D.','Kagawad',3,'Married','Female'),
 ('KGWD5','Batitismo','Rudy','B.','Kagawad',1,'Married','Male'),
 ('KGWD6','Lopez','Gilbert','T.','Kagawad',0,'Married','Male'),
 ('KGWD7','Rellon','Adonis','S.','Kagawad',0,'Married','Male'),
 ('KPTN','Lanticse','Ptolemy','T.','Punong Barangay',0,'Married','Male'),
 ('SECR','Rudinas','Ruth','A.','Secretary',0,'Married','Female'),
 ('TREA','Lanticse','Lyn Gay','L.','Treasurer',0,'Single','Female');
/*!40000 ALTER TABLE `officials` ENABLE KEYS */;


--
-- Table structure for table `barangayhall`.`people`
--

DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `ln` varchar(45) NOT NULL default '',
  `fn` varchar(45) NOT NULL default '',
  `mi` varchar(45) NOT NULL default '',
  `brdt` date NOT NULL default '0000-00-00',
  `prk` int(10) unsigned NOT NULL default '0',
  `pstn` varchar(45) NOT NULL default '',
  `cnt` varchar(45) NOT NULL default '',
  `cvst` varchar(45) NOT NULL default '',
  `occu` varchar(45) NOT NULL default '',
  `rlgn` varchar(45) NOT NULL default '',
  `gndr` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangayhall`.`people`
--

/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` (`ID`,`ln`,`fn`,`mi`,`brdt`,`prk`,`pstn`,`cnt`,`cvst`,`occu`,`rlgn`,`gndr`) VALUES 
 (1,'Remonde','Christian','D.','1997-12-02',2,'Member','09774833336','Single','Student','Roman Catholic','Male'),
 (2,'Remonde','Albert','P.','1959-06-07',3,'Member','09306202807','Married','Laborer','Roman Catholic','Male'),
 (3,'Man','Hy','L.','1987-12-08',5,'Secretary','09090909090','Married','None','One Way','Male'),
 (4,'Geverola','Irish','R.','1988-07-31',3,'Member','09185602799','Married','None','One Way','Female'),
 (9,'Remonde','Maribeth','D.','1961-04-27',2,'Member','09306202807','Married','None','Roman Catholic','Male'),
 (10,'Remonde','Sergia','P.','1936-09-09',2,'Member','09','Married','None','Roman Catholic','Female'),
 (11,'Remonde Jr.','Esteban','S.','1936-02-16',2,'Member','09098765432','Married','None','Roman Catholic','Male');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;


--
-- Table structure for table `barangayhall`.`receipt`
--

DROP TABLE IF EXISTS `receipt`;
CREATE TABLE `receipt` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `quan` double NOT NULL default '0',
  `item` varchar(100) NOT NULL default '',
  `pric` double NOT NULL default '0',
  `tot` double NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangayhall`.`receipt`
--

/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;


--
-- Table structure for table `barangayhall`.`trans`
--

DROP TABLE IF EXISTS `trans`;
CREATE TABLE `trans` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `payor` varchar(100) NOT NULL default '',
  `info` longtext NOT NULL,
  `tot_amount` double NOT NULL default '0',
  `pay_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `treasurer` varchar(45) NOT NULL default '',
  `type` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangayhall`.`trans`
--

/*!40000 ALTER TABLE `trans` DISABLE KEYS */;
INSERT INTO `trans` (`ID`,`payor`,`info`,`tot_amount`,`pay_date`,`treasurer`,`type`) VALUES 
 (1,'Donation for the barangay','Donate.',10000,'2017-07-12 06:00:00','Christian D. Remonde','Deposit'),
 (2,'Maria Carpio','Item and services purchased:\n1 - Death Certification (Php. 35.00) ==>> Php. 35.00\n1 - Barangay Clearance (Php. 40.00) ==>> Php. 40.00\nTotal: Php. 75.00\nCash: Php. 100.00\nChange: Php. 25.00',75,'2017-07-12 07:57:02','Christian D. Remonde','Cashier');
/*!40000 ALTER TABLE `trans` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
