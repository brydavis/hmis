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
-- Table structure for table `DateOfEngagement`
--

DROP TABLE IF EXISTS `DateOfEngagement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DateOfEngagement` (
  `Id` int(11) NOT NULL,
  `DateOfEngagement` varchar(75) DEFAULT NULL,
  `BaseMetadata` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DateOfEngagement`
--

LOCK TABLES `DateOfEngagement` WRITE;
/*!40000 ALTER TABLE `DateOfEngagement` DISABLE KEYS */;
/*!40000 ALTER TABLE `DateOfEngagement` ENABLE KEYS */;
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
-- Table structure for table `EnrollmentCoC`
--

DROP TABLE IF EXISTS `EnrollmentCoC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EnrollmentCoC` (
  `Id` int(11) NOT NULL,
  `InformationDate` varchar(75) DEFAULT NULL,
  `CoCCode` varchar(75) DEFAULT NULL,
  `BaseMetadata` varchar(75) DEFAULT NULL,
  `Metadata` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EnrollmentCoC`
--

LOCK TABLES `EnrollmentCoC` WRITE;
/*!40000 ALTER TABLE `EnrollmentCoC` DISABLE KEYS */;
/*!40000 ALTER TABLE `EnrollmentCoC` ENABLE KEYS */;
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
-- Table structure for table `IncomeAndSources`
--

DROP TABLE IF EXISTS `IncomeAndSources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IncomeAndSources` (
  `Id` int(11) NOT NULL,
  `InformationDate` varchar(75) DEFAULT NULL,
  `IncomeFromAnySource` varchar(75) DEFAULT NULL,
  `TotalMonthlyIncome` varchar(75) DEFAULT NULL,
  `Earned` varchar(75) DEFAULT NULL,
  `EarnedAmount` varchar(75) DEFAULT NULL,
  `Unemployment` varchar(75) DEFAULT NULL,
  `UnemploymentAmount` varchar(75) DEFAULT NULL,
  `SSI` varchar(75) DEFAULT NULL,
  `SSIAmount` varchar(75) DEFAULT NULL,
  `SSDI` varchar(75) DEFAULT NULL,
  `SSDIAmount` varchar(75) DEFAULT NULL,
  `VADisabilityService` varchar(75) DEFAULT NULL,
  `VADisabilityServiceAmount` varchar(75) DEFAULT NULL,
  `VADisabilityNonService` varchar(75) DEFAULT NULL,
  `VADisabilityNonServiceAmount` varchar(75) DEFAULT NULL,
  `PrivateDisability` varchar(75) DEFAULT NULL,
  `PrivateDisabilityAmount` varchar(75) DEFAULT NULL,
  `WorkersComp` varchar(75) DEFAULT NULL,
  `WorkersCompAmount` varchar(75) DEFAULT NULL,
  `TANF` varchar(75) DEFAULT NULL,
  `TANFAmount` varchar(75) DEFAULT NULL,
  `GA` varchar(75) DEFAULT NULL,
  `GAAmount` varchar(75) DEFAULT NULL,
  `SocSecRetirement` varchar(75) DEFAULT NULL,
  `SocSecRetirementAmount` varchar(75) DEFAULT NULL,
  `Pension` varchar(75) DEFAULT NULL,
  `PensionAmount` varchar(75) DEFAULT NULL,
  `ChildSupport` varchar(75) DEFAULT NULL,
  `ChildSupportAmount` varchar(75) DEFAULT NULL,
  `Alimony` varchar(75) DEFAULT NULL,
  `AlimonyAmount` varchar(75) DEFAULT NULL,
  `OtherSource` varchar(75) DEFAULT NULL,
  `OtherSourceAmount` varchar(75) DEFAULT NULL,
  `BaseMetadata` varchar(75) DEFAULT NULL,
  `Metadata` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IncomeAndSources`
--

LOCK TABLES `IncomeAndSources` WRITE;
/*!40000 ALTER TABLE `IncomeAndSources` DISABLE KEYS */;
/*!40000 ALTER TABLE `IncomeAndSources` ENABLE KEYS */;
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
-- Table structure for table `NonCashBenefits`
--

DROP TABLE IF EXISTS `NonCashBenefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NonCashBenefits` (
  `Id` int(11) NOT NULL,
  `InformationDate` varchar(75) DEFAULT NULL,
  `BenefitsFromAnySource` varchar(75) DEFAULT NULL,
  `SNAP` varchar(75) DEFAULT NULL,
  `WIC` varchar(75) DEFAULT NULL,
  `TANFChildCare` varchar(75) DEFAULT NULL,
  `TANFTransportation` varchar(75) DEFAULT NULL,
  `OtherTANF` varchar(75) DEFAULT NULL,
  `RentalAssistanceOngoing` varchar(75) DEFAULT NULL,
  `RentalAssistanceTemp` varchar(75) DEFAULT NULL,
  `OtherSource` varchar(75) DEFAULT NULL,
  `OtherSourceIdentify` varchar(75) DEFAULT NULL,
  `BaseMetadata` varchar(75) DEFAULT NULL,
  `Metadata` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NonCashBenefits`
--

LOCK TABLES `NonCashBenefits` WRITE;
/*!40000 ALTER TABLE `NonCashBenefits` DISABLE KEYS */;
/*!40000 ALTER TABLE `NonCashBenefits` ENABLE KEYS */;
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
-- Table structure for table `PATHStatus`
--

DROP TABLE IF EXISTS `PATHStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PATHStatus` (
  `Id` int(11) NOT NULL,
  `DateOfStatus` varchar(75) DEFAULT NULL,
  `ClientEnrollmentInPath` varchar(75) DEFAULT NULL,
  `ReasonNotEnrolled` varchar(75) DEFAULT NULL,
  `BaseMetadata` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PATHStatus`
--

LOCK TABLES `PATHStatus` WRITE;
/*!40000 ALTER TABLE `PATHStatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `PATHStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PercentAMI`
--

DROP TABLE IF EXISTS `PercentAMI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PercentAMI` (
  `Id` int(11) NOT NULL,
  `PercentAMI` varchar(75) DEFAULT NULL,
  `BaseMetadata` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PercentAMI`
--

LOCK TABLES `PercentAMI` WRITE;
/*!40000 ALTER TABLE `PercentAMI` DISABLE KEYS */;
/*!40000 ALTER TABLE `PercentAMI` ENABLE KEYS */;
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
-- Table structure for table `ResidentialMoveInDate`
--

DROP TABLE IF EXISTS `ResidentialMoveInDate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResidentialMoveInDate` (
  `Id` int(11) NOT NULL,
  `InPermanentHousing` varchar(75) DEFAULT NULL,
  `ResidentialMoveInDate` varchar(75) DEFAULT NULL,
  `BaseMetadata` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResidentialMoveInDate`
--

LOCK TABLES `ResidentialMoveInDate` WRITE;
/*!40000 ALTER TABLE `ResidentialMoveInDate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResidentialMoveInDate` ENABLE KEYS */;
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

-- Dump completed on 2015-03-27  4:09:13
