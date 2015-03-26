CREATE DATABASE  IF NOT EXISTS `hmis` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hmis`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: hmis
-- ------------------------------------------------------
-- Server version	5.6.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Affiliation`
--

DROP TABLE IF EXISTS `Affiliation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Affiliation` (
  `Id` int(11) NOT NULL,
  `BaseMetadata` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Affiliation`
--

LOCK TABLES `Affiliation` WRITE;
/*!40000 ALTER TABLE `Affiliation` DISABLE KEYS */;
/*!40000 ALTER TABLE `Affiliation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Client` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(75) DEFAULT NULL,
  `LastName` varchar(75) DEFAULT NULL,
  `MiddleName` varchar(75) DEFAULT NULL,
  `NameSuffix` varchar(75) DEFAULT NULL,
  `NameDataQuality` varchar(75) DEFAULT NULL,
  `SSN` varchar(75) DEFAULT NULL,
  `SSNDataQuality` varchar(75) DEFAULT NULL,
  `DOB` varchar(75) DEFAULT NULL,
  `DOBDataQuality` varchar(75) DEFAULT NULL,
  `Gender` varchar(75) DEFAULT NULL,
  `OtherGender` varchar(75) DEFAULT NULL,
  `Ethnicity` int(11) DEFAULT NULL,
  `Race` int(11) DEFAULT NULL,
  `VeteranStatus` varchar(75) DEFAULT NULL,
  `BaseMetadata` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Enrollment`
--

DROP TABLE IF EXISTS `Enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Enrollment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ProjectEntry_ID` varchar(75) DEFAULT NULL,
  `EntryDate` date DEFAULT NULL,
  `Household_ID` int(11) DEFAULT NULL,
  `Relationship_HoH` int(11) DEFAULT NULL,
  `ResidencePrior` varchar(75) DEFAULT NULL,
  `OtherResidencePrior` varchar(75) DEFAULT NULL,
  `ResidencePriorLengthStay` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Enrollment`
--

LOCK TABLES `Enrollment` WRITE;
/*!40000 ALTER TABLE `Enrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Funder`
--

DROP TABLE IF EXISTS `Funder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Funder` (
  `Id` int(11) NOT NULL,
  `FunderName` varchar(75) DEFAULT NULL,
  `GrantID` varchar(75) DEFAULT NULL,
  `StartDate` varchar(75) DEFAULT NULL,
  `EndDate` varchar(75) DEFAULT NULL,
  `BaseMetadata` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Funder`
--

LOCK TABLES `Funder` WRITE;
/*!40000 ALTER TABLE `Funder` DISABLE KEYS */;
/*!40000 ALTER TABLE `Funder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inventory`
--

DROP TABLE IF EXISTS `Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Inventory` (
  `Id` int(11) NOT NULL,
  `InformationDate` varchar(75) DEFAULT NULL,
  `HouseholdType` varchar(75) DEFAULT NULL,
  `BedType` varchar(75) DEFAULT NULL,
  `Availability` varchar(75) DEFAULT NULL,
  `UnitInventory` varchar(75) DEFAULT NULL,
  `BedInventory` varchar(75) DEFAULT NULL,
  `CHBedInventory` varchar(75) DEFAULT NULL,
  `VetBedInventory` varchar(75) DEFAULT NULL,
  `YouthBedInventory` varchar(75) DEFAULT NULL,
  `YouthAgeGroup` varchar(75) DEFAULT NULL,
  `InventoryStartDate` varchar(75) DEFAULT NULL,
  `InventoryEndDate` varchar(75) DEFAULT NULL,
  `HMISParticipatingBeds` varchar(75) DEFAULT NULL,
  `BaseMetadata` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inventory`
--

LOCK TABLES `Inventory` WRITE;
/*!40000 ALTER TABLE `Inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Organization`
--

DROP TABLE IF EXISTS `Organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Organization` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `OrgId` varchar(75) DEFAULT NULL,
  `OrgName` varchar(75) DEFAULT NULL,
  `OrgCommonName` varchar(75) DEFAULT NULL,
  `BaseMetadata` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organization`
--

LOCK TABLES `Organization` WRITE;
/*!40000 ALTER TABLE `Organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `Organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Project`
--

DROP TABLE IF EXISTS `Project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Project` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ProjectName` varchar(75) DEFAULT NULL,
  `ContinuumProject` varchar(75) DEFAULT NULL,
  `ProjectType` varchar(75) DEFAULT NULL,
  `ResidentialAffiliation` varchar(75) DEFAULT NULL,
  `TrackingMethod` varchar(75) DEFAULT NULL,
  `ProjectCommonName` varchar(75) DEFAULT NULL,
  `BaseMetadata` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project`
--

LOCK TABLES `Project` WRITE;
/*!40000 ALTER TABLE `Project` DISABLE KEYS */;
/*!40000 ALTER TABLE `Project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectCoC`
--

DROP TABLE IF EXISTS `ProjectCoC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectCoC` (
  `Id` int(11) NOT NULL,
  `CoCCode` varchar(75) DEFAULT NULL,
  `BaseMetadata` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectCoC`
--

LOCK TABLES `ProjectCoC` WRITE;
/*!40000 ALTER TABLE `ProjectCoC` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProjectCoC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Site`
--

DROP TABLE IF EXISTS `Site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Site` (
  `Id` int(11) NOT NULL,
  `PrincipalSite` varchar(75) DEFAULT NULL,
  `Address` varchar(75) DEFAULT NULL,
  `City` varchar(75) DEFAULT NULL,
  `State` varchar(75) DEFAULT NULL,
  `Zip` varchar(75) DEFAULT NULL,
  `Geocode` varchar(75) DEFAULT NULL,
  `BaseMetadata` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Site`
--

LOCK TABLES `Site` WRITE;
/*!40000 ALTER TABLE `Site` DISABLE KEYS */;
/*!40000 ALTER TABLE `Site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VeteranInfo`
--

DROP TABLE IF EXISTS `VeteranInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VeteranInfo` (
  `Id` int(11) NOT NULL,
  `YearEnteredService` varchar(75) DEFAULT NULL,
  `YearSeparated` varchar(75) DEFAULT NULL,
  `WWII` varchar(75) DEFAULT NULL,
  `KoreanWar` varchar(75) DEFAULT NULL,
  `DesertStorm` varchar(75) DEFAULT NULL,
  `AfghanistanOEF` varchar(75) DEFAULT NULL,
  `IraqOIF` varchar(75) DEFAULT NULL,
  `IraqOND` varchar(75) DEFAULT NULL,
  `OnlyTheater` varchar(75) DEFAULT NULL,
  `MilitaryBranch` varchar(75) DEFAULT NULL,
  `DischargeStatus` varchar(75) DEFAULT NULL,
  `BaseMetadata` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VeteranInfo`
--

LOCK TABLES `VeteranInfo` WRITE;
/*!40000 ALTER TABLE `VeteranInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `VeteranInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-25 21:21:36
