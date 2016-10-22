-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema online_courier_service
--

CREATE DATABASE IF NOT EXISTS online_courier_service;
USE online_courier_service;

--
-- Definition of table `dispatchorder`
--

DROP TABLE IF EXISTS `dispatchorder`;
CREATE TABLE `dispatchorder` (
  `doId` int(10) unsigned NOT NULL auto_increment,
  `orderId` int(10) unsigned NOT NULL,
  `sendingBranchId` int(10) unsigned NOT NULL,
  `branchId` int(10) unsigned NOT NULL,
  `sendingDate` datetime NOT NULL,
  PRIMARY KEY  (`doId`),
  KEY `FK_DispatchOrder_sendingBranchId` (`sendingBranchId`),
  KEY `FK_DispatchOrder_branchId` (`branchId`),
  CONSTRAINT `FK_DispatchOrder_sendingBranchId` FOREIGN KEY (`sendingBranchId`) REFERENCES `subdistbranch` (`subDistBranchId`),
  CONSTRAINT `FK_DispatchOrder_branchId` FOREIGN KEY (`branchId`) REFERENCES `subdistbranch` (`subDistBranchId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dispatchorder`
--

/*!40000 ALTER TABLE `dispatchorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `dispatchorder` ENABLE KEYS */;


--
-- Definition of table `distbranch`
--

DROP TABLE IF EXISTS `distbranch`;
CREATE TABLE `distbranch` (
  `distBranchId` int(10) unsigned NOT NULL auto_increment,
  `divBranchId` int(10) unsigned NOT NULL,
  `distBranchName` varchar(45) NOT NULL,
  `distBranchAddress` varchar(45) NOT NULL,
  PRIMARY KEY  (`distBranchId`),
  KEY `FK_DistBranch_divBranchId` (`divBranchId`),
  CONSTRAINT `FK_DistBranch_divBranchId` FOREIGN KEY (`divBranchId`) REFERENCES `divisionalbranch` (`divBranchId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distbranch`
--

/*!40000 ALTER TABLE `distbranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `distbranch` ENABLE KEYS */;


--
-- Definition of table `divisionalbranch`
--

DROP TABLE IF EXISTS `divisionalbranch`;
CREATE TABLE `divisionalbranch` (
  `divBranchId` int(10) unsigned NOT NULL auto_increment,
  `divBranchName` varchar(45) NOT NULL,
  `divBranchAddress` varchar(45) NOT NULL,
  PRIMARY KEY  (`divBranchId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisionalbranch`
--

/*!40000 ALTER TABLE `divisionalbranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `divisionalbranch` ENABLE KEYS */;


--
-- Definition of table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `employeeId` int(10) unsigned NOT NULL auto_increment,
  `employeeName` varchar(45) NOT NULL,
  `designation` varchar(45) NOT NULL,
  PRIMARY KEY  (`employeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;


--
-- Definition of table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `OrderId` int(10) unsigned NOT NULL auto_increment,
  `senderName` varchar(45) NOT NULL,
  `senderEmail` varchar(45) NOT NULL,
  `senderAddress` varchar(45) NOT NULL,
  `senderPhone` varchar(45) NOT NULL,
  `sendDate` datetime NOT NULL,
  `reciepentName` varchar(45) NOT NULL,
  `receipentAddress` varchar(45) NOT NULL,
  `weight` double NOT NULL,
  `orderType` int(10) unsigned NOT NULL,
  `amountTotal` double NOT NULL,
  `collectorId` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`OrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;


--
-- Definition of table `subdistbranch`
--

DROP TABLE IF EXISTS `subdistbranch`;
CREATE TABLE `subdistbranch` (
  `subDistBranchId` int(10) unsigned NOT NULL auto_increment,
  `distBranchId` int(10) unsigned NOT NULL,
  `subDistBranchName` varchar(45) NOT NULL,
  `subDistBranchAddress` varchar(45) NOT NULL,
  PRIMARY KEY  (`subDistBranchId`),
  KEY `FK_SubDistBranch_distBranchId` (`distBranchId`),
  CONSTRAINT `FK_SubDistBranch_distBranchId` FOREIGN KEY (`distBranchId`) REFERENCES `distbranch` (`distBranchId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subdistbranch`
--

/*!40000 ALTER TABLE `subdistbranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `subdistbranch` ENABLE KEYS */;


--
-- Definition of table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `userId` int(10) unsigned NOT NULL auto_increment,
  `userName` varchar(45) NOT NULL,
  `userEmail` varchar(45) NOT NULL,
  `userAddress` varchar(45) NOT NULL,
  `userMobile` varchar(45) NOT NULL,
  `userLevel` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;

Miraj check the edit




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
