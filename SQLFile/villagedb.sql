-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:80
-- Generation Time: Nov 16, 2017 at 02:46 PM
-- Server version: 5.7.20-0ubuntu0.17.04.1
-- PHP Version: 7.0.22-0ubuntu0.17.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `villagedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `Name` varchar(10) DEFAULT NULL,
  `Aadhar_no` int(11) DEFAULT NULL,
  `loan_type` varchar(10) DEFAULT NULL,
  `Account_type` varchar(10) DEFAULT NULL,
  `Loan_Intrest` varchar(4) DEFAULT NULL,
  `SB_Account_Money` int(11) DEFAULT NULL,
  `FD_Account_Money` int(11) DEFAULT NULL,
  `RD_Account_Type` int(11) DEFAULT NULL,
  `Time_On_Loan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`Name`, `Aadhar_no`, `loan_type`, `Account_type`, `Loan_Intrest`, `SB_Account_Money`, `FD_Account_Money`, `RD_Account_Type`, `Time_On_Loan`) VALUES
('SBI', 110, NULL, 'Savings', NULL, 20000, 10000, NULL, NULL),
('SBI', 101, 'House', 'FD', '7%', NULL, 100000, NULL, 2018),
('SBI', 101, 'Car', 'FD', '10%', NULL, 100000, NULL, 2017),
('SBI', 102, 'Education', 'RD', '5%', NULL, 21000, NULL, 2019),
('SBI', 113, 'Education', 'RD', '5%', NULL, 1000, NULL, 2019),
('SBT', 112, 'Education', 'SB', '7%', 1212, NULL, NULL, 2019),
('SBT', 111, 'Travel', 'RD', '7%', 200, NULL, NULL, 2017),
('World Bank', 110, 'Personal', 'Current', '1%', 20000, 10000, 100000, 2011),
('World Bank', 104, 'Agro', 'SB', '2%', 20000, 10000, NULL, 2012),
('Dena Bank', 103, 'Equipment', NULL, '1%', 20234, NULL, NULL, 2018),
('sbi', 111, 'Agro', 'SB', '5%', 2000, 100, 1000, 2017);

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `grown_in_farm` int(11) DEFAULT NULL,
  `types` varchar(10) DEFAULT NULL,
  `found_in` int(11) DEFAULT NULL,
  `grown_by` int(11) DEFAULT NULL,
  `Organic` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`grown_in_farm`, `types`, `found_in`, `grown_by`, `Organic`) VALUES
(90, 'Urud Daal', 1001, 103, 'Y'),
(90, 'Azur Daal', 1002, 103, 'N'),
(90, 'Rajma', 1003, 103, 'Y'),
(90, 'rice', 1004, 103, 'Y'),
(80, 'Palak', 2000, 105, 'Y'),
(80, 'Mint', 2001, 105, 'Y'),
(80, 'Corriander', 2002, 105, 'N'),
(70, 'Rice', 3000, 111, 'Y'),
(70, 'Wheat', 3001, 111, 'N'),
(70, 'Corn', 3002, 111, 'Y'),
(70, 'Red Rice', 3003, 111, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `farm_lands`
--

CREATE TABLE `farm_lands` (
  `Aadhar_no` int(11) DEFAULT NULL,
  `size_in_acres` int(11) DEFAULT NULL,
  `type_of_soil` varchar(10) DEFAULT NULL,
  `water_resource` varchar(10) DEFAULT NULL,
  `Farming_technique` varchar(10) DEFAULT NULL,
  `farm_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farm_lands`
--

INSERT INTO `farm_lands` (`Aadhar_no`, `size_in_acres`, `type_of_soil`, `water_resource`, `Farming_technique`, `farm_id`) VALUES
(103, 5, 'Red', 'Borewell', 'Terrace', 103),
(105, 10, 'Black', 'Tank', 'Pastoral', 105),
(111, 3, 'Red', 'Borewell', 'Arable', 111);

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `home_id` int(11) NOT NULL,
  `Aadhar_no` int(11) DEFAULT NULL,
  `street_no` int(11) DEFAULT NULL,
  `loan` varchar(1) DEFAULT NULL,
  `Total_SQR_FOOT` int(11) DEFAULT NULL,
  `Owner_Name` varchar(10) DEFAULT NULL,
  `Occupant_Name` varchar(10) DEFAULT NULL,
  `No_Of_Toilets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`home_id`, `Aadhar_no`, `street_no`, `loan`, `Total_SQR_FOOT`, `Owner_Name`, `Occupant_Name`, `No_Of_Toilets`) VALUES
(1990, 100, 12, NULL, 1200, 'Goku', 'Goku', 2),
(1991, 100, 12, 'Y', 1200, 'Goku', 'Supandi', 1),
(1992, 102, 11, NULL, 2400, 'S.Shambu', 'Cleopatra', 1),
(1993, 102, 11, NULL, 2400, 'S.Shambu', 'S.Shambu', 2),
(1994, 102, 10, NULL, 2400, 'S.Shambu', 'L.Potter', 1),
(1995, 106, 13, NULL, 1000, 'W.White', 'W.White', 1),
(1996, 113, 11, NULL, 10000, 'Tywin', 'Tyrion', 1),
(1997, 113, 11, NULL, 10000, 'Tywin', 'Shin Chan', 1),
(1998, 113, 11, NULL, 10000, 'Tywin', 'Jon Snow', 1),
(1999, 121, 16, NULL, 2100, 'Kalia', 'Kalia', 2),
(2000, 122, 10, NULL, 1200, 'Chutki', 'Chutki', 2),
(2001, 122, 10, NULL, 1200, 'Chutki ', 'Jamie', 1);

-- --------------------------------------------------------

--
-- Table structure for table `market`
--

CREATE TABLE `market` (
  `Market_id` int(11) NOT NULL,
  `farmer_no` int(11) DEFAULT NULL,
  `discount` varchar(10) DEFAULT NULL,
  `crop_name` varchar(10) DEFAULT NULL,
  `price_per_kg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `market`
--

INSERT INTO `market` (`Market_id`, `farmer_no`, `discount`, `crop_name`, `price_per_kg`) VALUES
(1000, 103, NULL, 'Tur Daal', 433),
(1001, 103, '2%', 'Urad Dal', 210),
(1002, 103, NULL, 'Azur Daal', 210),
(1003, 103, NULL, 'Rajma', 40),
(1004, 103, '10%', 'Rice', 22),
(2000, 105, NULL, 'Palak', 21),
(2001, 105, '1.7%', 'Mint', 20),
(2002, 105, NULL, 'Corriander', 31),
(3000, 111, NULL, 'Rice', 13),
(3001, 111, NULL, 'Wheat', 25),
(3002, 111, '2%', 'Corn', 45),
(3003, 111, NULL, 'Red Rice', 60);

-- --------------------------------------------------------

--
-- Table structure for table `message1`
--

CREATE TABLE `message1` (
  `name` varchar(20) DEFAULT NULL,
  `msg` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message1`
--

INSERT INTO `message1` (`name`, `msg`) VALUES
('Sachin', 'Tomorrow its raining');

-- --------------------------------------------------------

--
-- Table structure for table `message2`
--

CREATE TABLE `message2` (
  `name` varchar(20) DEFAULT NULL,
  `msg` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message2`
--

INSERT INTO `message2` (`name`, `msg`) VALUES
('jon', 'i dont have water');

-- --------------------------------------------------------

--
-- Table structure for table `panchayat1`
--

CREATE TABLE `panchayat1` (
  `Aadhar_no` int(11) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Post` varchar(20) DEFAULT NULL,
  `Elected_on` date DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `panchayat1`
--

INSERT INTO `panchayat1` (`Aadhar_no`, `Name`, `Post`, `Elected_on`, `password`) VALUES
(106, 'Walter White', 'Sarpanch', '2017-02-01', '601'),
(113, 'Tywin Lannister', 'Chairman', '2017-02-01', '311'),
(122, 'Chutki B', 'Secretary', '2016-02-01', '221'),
(117, 'Light Yagumi', 'Dairy Head', '2017-02-01', '711'),
(105, 'Grey House', 'Member', '2016-05-01', '501');

--
-- Triggers `panchayat1`
--
DELIMITER $$
CREATE TRIGGER `new_panchayat_member` BEFORE UPDATE ON `panchayat1` FOR EACH ROW BEGIN
    INSERT INTO panchayat1
    SET action = 'update',
    Aadhar_no = OLD.Aadhar_no,
        
        Elected_on = NOW(); 
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `School_ID` int(11) NOT NULL,
  `street_no` int(11) DEFAULT NULL,
  `Principal_name` varchar(10) DEFAULT NULL,
  `School_type` varchar(3) DEFAULT NULL,
  `Faculty_stregnth` int(11) DEFAULT NULL,
  `No_Of_Students` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`School_ID`, `street_no`, `Principal_name`, `School_type`, `Faculty_stregnth`, `No_Of_Students`) VALUES
(45, 13, 'Walter W', 'Gov', 30, 110),
(55, 16, 'Shikari S', 'Pvt', 40, 210);

-- --------------------------------------------------------

--
-- Table structure for table `street`
--

CREATE TABLE `street` (
  `street_no` int(11) NOT NULL,
  `street_name` varchar(20) DEFAULT NULL,
  `Maintainence_date` date DEFAULT NULL,
  `No_of_Buildings` int(11) DEFAULT NULL,
  `Money_Sanctioned` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `street`
--

INSERT INTO `street` (`street_no`, `street_name`, `Maintainence_date`, `No_of_Buildings`, `Money_Sanctioned`) VALUES
(10, 'Ashok Rd', '2017-12-29', 10, 2100),
(11, 'Brain Rd', '2016-02-19', 5, 1100),
(12, 'Castely Rock', '2016-07-09', 0, 200),
(13, 'Westros Rd', '2015-09-10', 1, 5000),
(14, 'Iron Thorn', '2017-10-11', 7, 15000),
(15, 'Iron Throne Rd', '2019-05-11', 0, 0),
(16, 'Forest Rd', '2017-02-13', 12, 100),
(17, 'Akkamma raste', '2017-01-31', 2, 1100),
(18, 'Hogwarts Rd', '2016-01-01', 5, 4100);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `Aadhar_no` int(11) DEFAULT NULL,
  `School_ID` int(11) DEFAULT NULL,
  `Departemnts` varchar(10) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Class` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `Aadhar_no`, `School_ID`, `Departemnts`, `Age`, `Class`) VALUES
(1, 107, 45, NULL, 9, 5),
(2, 108, 45, 'CSE', 17, NULL),
(3, 109, 45, NULL, 7, 2),
(4, 119, 55, NULL, 12, 7),
(5, 120, 55, NULL, 12, 7);

-- --------------------------------------------------------

--
-- Table structure for table `villager`
--

CREATE TABLE `villager` (
  `Aadhar_no` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `Income` int(11) DEFAULT NULL,
  `Number_of_Dependents` int(11) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `Occupation` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `villager`
--

INSERT INTO `villager` (`Aadhar_no`, `Name`, `Gender`, `Date_of_Birth`, `age`, `Income`, `Number_of_Dependents`, `Address`, `Occupation`) VALUES
(100, 'Goku', 'M', '1997-07-05', 20, 15000, 3, 'Ashok Rd', 'factory worker'),
(101, 'Supandi', 'M', '1997-04-01', 20, 500, 3, 'Brain Rd', 'Compounder'),
(102, 'Shikar Shambu', 'M', '1991-04-21', 26, 12222, 1, 'Forest Road', 'Forest Guard'),
(103, 'Cleopatra', 'F', '1999-03-01', 19, 1000, 5, 'Akkamma Raste', 'Farmer'),
(104, 'Lily Potter', 'F', '1989-01-01', 28, 110000, NULL, 'Hogwarts Rd', 'Factory Owner'),
(105, 'Grey House', 'M', '1989-06-21', 28, 11120, 1, 'Ram Marg', 'Farmer'),
(106, 'Walter White', 'M', '1979-06-21', 38, 100500, 1, 'Ram Marg', 'Principal'),
(107, 'Shin Chan', 'M', '2008-06-21', 9, 10, NULL, 'Manga Rd', 'Student'),
(108, 'Nobita', 'M', '2000-08-04', 17, NULL, NULL, 'Future Rd', 'Student'),
(109, 'Danerys', 'F', '2010-12-31', 7, NULL, NULL, 'Iron Throne Rd', 'Student'),
(110, 'Danerys', 'F', '1981-12-31', 39, 10000, 3, 'Iron Throne Rd', 'Teacher'),
(111, 'Jon Snow', 'M', '1994-02-01', 23, 10500, 10, 'Westros rd', 'Farmer'),
(112, 'Tyrion', 'M', '1964-11-21', 53, 23230, 4, 'Casteley Rock', 'Factory Worker'),
(113, 'Tywin', 'M', '1934-11-21', 73, 220000, 3, 'Casteley Rock', 'Factory Owner'),
(116, 'Jamie', 'M', '1994-10-04', 23, 1200, 1, 'Westeros', 'Factory Worker'),
(117, 'Light', 'M', '1997-05-07', 20, 10000, 2, 'Akkama Raste', 'Banker'),
(118, 'C.Bheem', 'M', '1991-07-01', 26, 10000, NULL, 'Castely Rock', 'Banker'),
(119, 'Doremi', 'F', '2005-10-10', 12, NULL, NULL, 'Forest Rd', 'Student'),
(120, 'Doraemon', 'M', '2005-10-10', 12, NULL, NULL, 'Forest Rd', 'Student'),
(121, 'Kalia', 'M', '1992-04-10', 25, 30000, 5, 'Forest Rd', 'Banker'),
(122, 'Chutki B', 'F', '1989-01-21', 28, 50000, 2, 'Forest Rd', 'Principal'),
(123, 'Norma', 'F', '1991-01-02', 26, 10000, 2, 'Westeros', 'Banker'),
(124, 'nikhil', 'm', '2007-01-01', 10, 200, 1, 'westeros', 'student');

--
-- Triggers `villager`
--
DELIMITER $$
CREATE TRIGGER `agecheck` BEFORE INSERT ON `villager` FOR EACH ROW BEGIN
      IF (NEW.age < 14 ) THEN
            SET NEW.occupation = 'student';
     
      END IF;
    END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `upd_user` BEFORE UPDATE ON `villager` FOR EACH ROW BEGIN
      IF (NEW.age < 14 ) THEN
            SET NEW.occupation = 'student';
          END IF;
    END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `farm_lands`
--
ALTER TABLE `farm_lands`
  ADD PRIMARY KEY (`farm_id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`home_id`);

--
-- Indexes for table `market`
--
ALTER TABLE `market`
  ADD PRIMARY KEY (`Market_id`);

--
-- Indexes for table `panchayat1`
--
ALTER TABLE `panchayat1`
  ADD KEY `Aadhar_no` (`Aadhar_no`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`School_ID`);

--
-- Indexes for table `street`
--
ALTER TABLE `street`
  ADD PRIMARY KEY (`street_no`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `villager`
--
ALTER TABLE `villager`
  ADD PRIMARY KEY (`Aadhar_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `panchayat1`
--
ALTER TABLE `panchayat1`
  ADD CONSTRAINT `panchayat1_ibfk_1` FOREIGN KEY (`Aadhar_no`) REFERENCES `villager` (`Aadhar_no`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
