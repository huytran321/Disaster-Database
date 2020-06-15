-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: vergil.u.washington.edu:20000
-- Generation Time: Jun 15, 2020 at 01:55 AM
-- Server version: 5.6.39
-- PHP Version: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `disasterdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `Adjuster`
--

CREATE TABLE `Adjuster` (
  `adjusterID` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `phone` int(11) UNSIGNED DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Adjuster`
--

INSERT INTO `Adjuster` (`adjusterID`, `firstName`, `lastName`, `phone`, `email`) VALUES
(1, 'bob', 'patterson', 5555555, 'bob@fake.com'),
(2, 'bill', 'bob', 5555555, 'bill@fake.com'),
(3, 'ben', 'dover', 5555555, 'ben@fake.com'),
(4, 'hot', 'potato', 5555555, 'hot@fake.com'),
(5, 'wallace', 'grommit', 5555555, 'wallace@fake.com'),
(6, 'will', 'smith', 5555555, 'will@fake.com'),
(7, 'dollyl', 'patten', 5555555, 'dolly@fake.com'),
(8, 'sriracha', 'gotcha', 5555555, 'sriracha@fake.com'),
(9, 'steve', 'ace', 5555555, 'sace@fake.com'),
(10, 'heat', 'ice', 5555555, 'oxymoron@fake.com');

-- --------------------------------------------------------

--
-- Table structure for table `Agencies`
--

CREATE TABLE `Agencies` (
  `agencyID` int(12) NOT NULL,
  `agencyName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Agencies`
--

INSERT INTO `Agencies` (`agencyID`, `agencyName`) VALUES
(100, 'usaa'),
(101, 'allstate'),
(102, 'farmers');

-- --------------------------------------------------------

--
-- Table structure for table `Claimant`
--

CREATE TABLE `Claimant` (
  `claimantID` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Claimant`
--

INSERT INTO `Claimant` (`claimantID`, `firstName`, `lastName`, `email`, `phone`) VALUES
(1, 'Bob', 'Taylor', 'bob@fake.com', '555-5555'),
(2, 'Jill', 'Taylor', 'jill@fake.com', '555-5555'),
(3, 'Rick', 'Ross', 'ross@fake.com', '555-5555'),
(4, 'Jenny', 'Ross', 'jenny@fake.com', '555-5555'),
(5, 'bob', 'Ross', 'bobr@fake.com', '555-5555'),
(6, 'richard', 'head', 'head@fake.com', '555-5555'),
(7, 'phil', 'collina', 'phil@fake.com', '555-5555'),
(8, 'Ian', 'Hemsworth', 'ian@fake.com', '555-5555'),
(9, 'Liam', 'Hemsworth', 'liam@fake.com', '555-5555'),
(10, 'denzel', 'washington', 'denzel@fake.com', '555-5555');

-- --------------------------------------------------------

--
-- Table structure for table `ClaimantAddress`
--

CREATE TABLE `ClaimantAddress` (
  `addressID` int(10) NOT NULL,
  `streetAddress` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `stateCode` varchar(2) DEFAULT NULL,
  `postalCode` varchar(5) DEFAULT NULL,
  `country` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ClaimantAddress`
--

INSERT INTO `ClaimantAddress` (`addressID`, `streetAddress`, `city`, `stateCode`, `postalCode`, `country`) VALUES
(1, '123 lane', 'Seattle', 'WA', '11111', 'United States'),
(2, '123 Street', 'Seattle', 'WA', '11111', 'United States'),
(3, '123 Ave', 'Seattle', 'WA', '11111', 'United States'),
(4, '123 Circle', 'Seattle', 'WA', '11111', 'United States'),
(5, '123 NE Street', 'Seattle', 'WA', '11111', 'United States'),
(6, '123 NW Street', 'Seattle', 'WA', '11111', 'United States'),
(7, '123 SW Street', 'Seattle', 'WA', '11111', 'United States'),
(8, '123 S Street', 'Seattle', 'WA', '11111', 'United States'),
(9, '123 W Street', 'Seattle', 'WA', '11111', 'United States'),
(10, '123 E Street', 'Seattle', 'WA', '11111', 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `DamagedProperty`
--

CREATE TABLE `DamagedProperty` (
  `propertyID` int(10) NOT NULL,
  `areasDamaged` tinytext,
  `disasterDate` date NOT NULL,
  `moneyLoss` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DamagedProperty`
--

INSERT INTO `DamagedProperty` (`propertyID`, `areasDamaged`, `disasterDate`, `moneyLoss`) VALUES
(1, 'roof is heavily damaged and minor damages on paint', '2018-11-11', 13488.56),
(2, 'windows and doors are all busted', '2018-02-24', 7033.02),
(3, 'minor damage on roof and major damage on windows', '2017-03-13', 4903.32),
(4, 'part of the building is burned down', '2017-01-01', 25633.33),
(5, 'minor damages on windows and walls', '2019-01-28', 4900.00),
(6, 'broken pipes have caused water damage', '2020-06-25', 12099.99),
(7, 'lightning striked the house and caused fire damage', '2020-11-11', 18043.29),
(8, 'broken down front door and window from burglary', '2018-02-05', 2500.00),
(9, 'vandalism on the side of house with spray paint', '2019-05-23', 970.35),
(10, 'roof collapsed from heavy snowstorm', '2020-12-25', 39999.99);

-- --------------------------------------------------------

--
-- Table structure for table `Disaster`
--

CREATE TABLE `Disaster` (
  `disasterID` int(11) NOT NULL,
  `disasterDate` date NOT NULL,
  `disasterName` varchar(50) NOT NULL,
  `disasterTypeCategory` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Disaster`
--

INSERT INTO `Disaster` (`disasterID`, `disasterDate`, `disasterName`, `disasterTypeCategory`) VALUES
(1, '2019-07-31', 'Hurricane Katrina', 'Hydrological'),
(2, '2018-08-17', 'Hurricane Rain', 'Hydrological'),
(3, '2020-01-05', 'San Francisco Earthquake', 'Geophysical'),
(4, '2019-04-16', 'Meteor Shows', 'Extra-terrestrial'),
(5, '2019-07-03', 'Peshtigo fire', 'Meteorological'),
(6, '2018-08-26', 'Cloquet fire', 'Meteorological'),
(7, '2018-05-01', 'Great Michigan fire', 'Meteorological'),
(8, '2019-02-14', 'Great Ohio flood', 'Climatological'),
(9, '2019-12-10', 'California', 'Geophysical'),
(10, '2020-02-07', 'Tri-State', 'Meteorological');

-- --------------------------------------------------------

--
-- Table structure for table `DisasterType`
--

CREATE TABLE `DisasterType` (
  `disasterTypeCategory` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DisasterType`
--

INSERT INTO `DisasterType` (`disasterTypeCategory`) VALUES
('Biological'),
('Climatological'),
('Extra-terrestrial'),
('Geophysical'),
('Hydrological'),
('Meteorological');

-- --------------------------------------------------------

--
-- Table structure for table `Insurance`
--

CREATE TABLE `Insurance` (
  `insuranceID` int(10) NOT NULL,
  `caseNumber` varchar(12) NOT NULL,
  `agencyID` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Insurance`
--

INSERT INTO `Insurance` (`insuranceID`, `caseNumber`, `agencyID`) VALUES
(1, 'aaa', 101),
(2, 'bbb', 102),
(3, 'ccc', 100),
(4, 'ddd', 101),
(5, 'eee', 102),
(6, 'fff', 100),
(7, 'ggg', 101),
(8, 'hhh', 102),
(9, 'jjj', 100),
(10, 'lll', 101);

-- --------------------------------------------------------

--
-- Table structure for table `Person`
--

CREATE TABLE `Person` (
  `PersonID` int(10) NOT NULL,
  `relationship` varchar(45) DEFAULT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Person`
--

INSERT INTO `Person` (`PersonID`, `relationship`, `firstName`, `lastName`, `phone`, `email`, `gender`) VALUES
(1, 'mother', 'jane', 'doe', '206-123-1231', 'j@fake.com', 'f'),
(2, 'mother', 'pane', 'doe', '206-444-1231', 'p@fake.com', 'f'),
(3, 'father', 'john', 'doe', '206-123-1631', 'jdoe@fake.com', 'm'),
(4, 'father', 'frank', 'dog', '206-567-1631', 'dog@fake.com', 'm'),
(5, 'father', 'yes', 'doe', '206-123-5235', 'tree@bob.com', 'm'),
(6, 'father', 'no', 'doe', '425-123-1631', 'nodoe@fake.com', 'm'),
(7, 'mother', 'marry', 'doe', '206-555-1231', 'mp@fake.com', 'f'),
(8, 'sister', 'yo', 'doe', '206-444-5555', 'yo@fake.com', 'f'),
(9, 'sister', 'beth', 'doe', '206-444-5635', 'beth@fake.com', 'f'),
(10, 'brother', 'bob', 'doe', '206-484-5755', 'bob@fake.com', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `PropertyAddress`
--

CREATE TABLE `PropertyAddress` (
  `propertyAddressID` int(10) NOT NULL,
  `streetAddress` tinytext,
  `city` varchar(255) DEFAULT NULL,
  `postalCode` int(5) DEFAULT NULL,
  `country` varchar(80) DEFAULT NULL,
  `propertyType` varchar(20) DEFAULT NULL,
  `stateCode` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PropertyAddress`
--

INSERT INTO `PropertyAddress` (`propertyAddressID`, `streetAddress`, `city`, `postalCode`, `country`, `propertyType`, `stateCode`) VALUES
(1, '3349 Parrill Court', 'Esko', 55733, 'USA', 'Half Duplex', 'WA'),
(2, '3017 Goldie Lane', 'Cincinnati', 45202, 'USA', 'Tri-Plex', 'CA'),
(3, '1552 Penn Avenue', 'Newark', 8901, 'USA', 'Tri-Plex', 'WA'),
(4, '4440 Willow Oaks Lane', 'Lafayette', 70506, 'USA', '4Plex', 'CA'),
(5, '4993 Clarence Court', 'Rancho', 91730, 'USA', 'Duplex Side by Side', 'CA'),
(6, '1706 Coffman Alley', 'Horse Cave', 42749, 'USA', 'Half Duplex', 'WA'),
(7, '2571 Brooke Street', 'Houston', 77025, 'USA', 'Duplex Up and Down', 'MA'),
(8, '1736 Irving Road', 'Mansfield', 44902, 'USA', 'Duplex Up and Down', 'WA'),
(9, '1561 Jessie Street', 'Oriska', 58063, 'USA', 'Tri-Plex', 'CA'),
(10, '4671 Aviation Way', 'Burbank', 91504, 'USA', 'Half Duplex', 'CA');

-- --------------------------------------------------------

--
-- Table structure for table `Report`
--

CREATE TABLE `Report` (
  `reportID` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Report`
--

INSERT INTO `Report` (`reportID`, `date`) VALUES
(1, '2020-06-15'),
(2, '2020-02-25'),
(3, '2020-05-23'),
(4, '2020-08-23'),
(5, '2020-09-23'),
(6, '2020-03-12'),
(7, '2020-11-04'),
(8, '2020-08-30'),
(9, '2020-01-24'),
(10, '2020-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `ReportPerson`
--

CREATE TABLE `ReportPerson` (
  `reportPersonID` int(10) NOT NULL,
  `injuryComment` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ReportPerson`
--

INSERT INTO `ReportPerson` (`reportPersonID`, `injuryComment`) VALUES
(1, 'head trama'),
(2, 'minor bruises'),
(3, 'light scratches'),
(4, 'broken bones'),
(5, 'minor bruises'),
(6, 'light scratches'),
(7, 'deep cut'),
(8, 'minor bruises'),
(9, 'light scratches'),
(10, 'broken bones');

-- --------------------------------------------------------

--
-- Table structure for table `State`
--

CREATE TABLE `State` (
  `stateCode` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `State`
--

INSERT INTO `State` (`stateCode`) VALUES
('CA'),
('MA'),
('WA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Adjuster`
--
ALTER TABLE `Adjuster`
  ADD PRIMARY KEY (`adjusterID`);

--
-- Indexes for table `Agencies`
--
ALTER TABLE `Agencies`
  ADD PRIMARY KEY (`agencyID`);

--
-- Indexes for table `Claimant`
--
ALTER TABLE `Claimant`
  ADD PRIMARY KEY (`claimantID`);

--
-- Indexes for table `ClaimantAddress`
--
ALTER TABLE `ClaimantAddress`
  ADD PRIMARY KEY (`addressID`),
  ADD KEY `ClaimantAddress_State_FK` (`stateCode`);

--
-- Indexes for table `DamagedProperty`
--
ALTER TABLE `DamagedProperty`
  ADD PRIMARY KEY (`propertyID`);

--
-- Indexes for table `Disaster`
--
ALTER TABLE `Disaster`
  ADD PRIMARY KEY (`disasterID`),
  ADD KEY `Disaster_DisasterType_FK1` (`disasterTypeCategory`);

--
-- Indexes for table `DisasterType`
--
ALTER TABLE `DisasterType`
  ADD PRIMARY KEY (`disasterTypeCategory`);

--
-- Indexes for table `Insurance`
--
ALTER TABLE `Insurance`
  ADD PRIMARY KEY (`insuranceID`),
  ADD KEY `Insurances_Agencies_FK` (`agencyID`);

--
-- Indexes for table `Person`
--
ALTER TABLE `Person`
  ADD PRIMARY KEY (`PersonID`);

--
-- Indexes for table `PropertyAddress`
--
ALTER TABLE `PropertyAddress`
  ADD PRIMARY KEY (`propertyAddressID`),
  ADD KEY `PropetyAddress_State_FK1` (`stateCode`);

--
-- Indexes for table `Report`
--
ALTER TABLE `Report`
  ADD PRIMARY KEY (`reportID`);

--
-- Indexes for table `ReportPerson`
--
ALTER TABLE `ReportPerson`
  ADD PRIMARY KEY (`reportPersonID`);

--
-- Indexes for table `State`
--
ALTER TABLE `State`
  ADD PRIMARY KEY (`stateCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Adjuster`
--
ALTER TABLE `Adjuster`
  MODIFY `adjusterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Claimant`
--
ALTER TABLE `Claimant`
  MODIFY `claimantID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ClaimantAddress`
--
ALTER TABLE `ClaimantAddress`
  MODIFY `addressID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `DamagedProperty`
--
ALTER TABLE `DamagedProperty`
  MODIFY `propertyID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Disaster`
--
ALTER TABLE `Disaster`
  MODIFY `disasterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Insurance`
--
ALTER TABLE `Insurance`
  MODIFY `insuranceID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Person`
--
ALTER TABLE `Person`
  MODIFY `PersonID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `PropertyAddress`
--
ALTER TABLE `PropertyAddress`
  MODIFY `propertyAddressID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Report`
--
ALTER TABLE `Report`
  MODIFY `reportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ReportPerson`
--
ALTER TABLE `ReportPerson`
  MODIFY `reportPersonID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Claimant`
--
ALTER TABLE `Claimant`
  ADD CONSTRAINT `Claimants_ClaimantAddress_FK` FOREIGN KEY (`claimantID`) REFERENCES `ClaimantAddress` (`addressID`);

--
-- Constraints for table `ClaimantAddress`
--
ALTER TABLE `ClaimantAddress`
  ADD CONSTRAINT `ClaimantAddress_State_FK` FOREIGN KEY (`stateCode`) REFERENCES `State` (`stateCode`);

--
-- Constraints for table `DamagedProperty`
--
ALTER TABLE `DamagedProperty`
  ADD CONSTRAINT `DamagedPropety_PropetyAddress_FK` FOREIGN KEY (`propertyID`) REFERENCES `PropertyAddress` (`propertyAddressID`);

--
-- Constraints for table `Disaster`
--
ALTER TABLE `Disaster`
  ADD CONSTRAINT `Disaster_DisasterType_FK1` FOREIGN KEY (`disasterTypeCategory`) REFERENCES `DisasterType` (`disasterTypeCategory`);

--
-- Constraints for table `Insurance`
--
ALTER TABLE `Insurance`
  ADD CONSTRAINT `Insurance_Claimant_FK` FOREIGN KEY (`insuranceID`) REFERENCES `Claimant` (`claimantID`),
  ADD CONSTRAINT `Insurances_Agencies_FK` FOREIGN KEY (`agencyID`) REFERENCES `Agencies` (`agencyID`);

--
-- Constraints for table `PropertyAddress`
--
ALTER TABLE `PropertyAddress`
  ADD CONSTRAINT `PropetyAddress_State_FK1` FOREIGN KEY (`stateCode`) REFERENCES `State` (`stateCode`);

--
-- Constraints for table `Report`
--
ALTER TABLE `Report`
  ADD CONSTRAINT `Report_Adjuster_FK` FOREIGN KEY (`reportID`) REFERENCES `Adjuster` (`adjusterID`),
  ADD CONSTRAINT `Report_Claimant_FK` FOREIGN KEY (`reportID`) REFERENCES `Claimant` (`claimantID`),
  ADD CONSTRAINT `Report_DamagedProperty_FK` FOREIGN KEY (`reportID`) REFERENCES `DamagedProperty` (`propertyID`),
  ADD CONSTRAINT `Report_Disaster_FK` FOREIGN KEY (`reportID`) REFERENCES `Disaster` (`disasterID`),
  ADD CONSTRAINT `Report_Insurance_FK` FOREIGN KEY (`reportID`) REFERENCES `Insurance` (`insuranceID`);

--
-- Constraints for table `ReportPerson`
--
ALTER TABLE `ReportPerson`
  ADD CONSTRAINT `ReportPerson_Person_FK` FOREIGN KEY (`reportPersonID`) REFERENCES `Person` (`PersonID`),
  ADD CONSTRAINT `ReportPerson_Report_FK` FOREIGN KEY (`reportPersonID`) REFERENCES `Report` (`reportID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
