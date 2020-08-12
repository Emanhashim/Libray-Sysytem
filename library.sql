-- phpMyAdmin SQL Dump
-- version 4.3.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2015 at 04:59 AM
-- Server version: 5.5.42
-- PHP Version: 5.4.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `ISBN` int(11) NOT NULL,
  `Title` varchar(78) NOT NULL,
  `Authour` varchar(78) NOT NULL,
  `Publisher` varchar(78) NOT NULL,
  `Price` float NOT NULL,
  `Eddition` varchar(78) NOT NULL,
  `Year` year(4) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ISBN`, `Title`, `Authour`, `Publisher`, `Price`, `Eddition`, `Year`, `Quantity`) VALUES
(1, 'java', 'yeshabel', 'haile', 222, '1', 2015, 78),
(2, 'database', 'eggu', 'amen', 52, '2nd', 2015, 5),
(3, 'database', 'eggu', 'yers', 52, '2nd', 2015, 5),
(54, 'Algebra', 'Debebe', 'Nunu', 100, '3rd', 2015, 5),
(57, 'Biology', 'bio', 'tery', 90, '3rd', 1975, 10),
(99, 'Economics', 'Amade', 'Eyob', 85, '3rd', 2000, 9),
(123, 'java', 'java', 'java', 234, '2', 2014, 3),
(124, 'java', 'java', 'java', 234, '2', 2014, 3),
(125, 'java', 'java', 'java', 234, '2', 2014, 3),
(234, 'resadf', 'gfhhyjuhy', 'ryuuokjk', 3456, '2', 2005, 43);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `empid` varchar(48) NOT NULL,
  `empname` varchar(78) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Salary` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empid`, `empname`, `Phone`, `Salary`) VALUES
('dbu035/01', 'mesi', 921364522, 100000),
('dbu040/60', 'retu', 9476765, 908976.89),
('dbu45/01', 'Etabezahu', 9784562, 2222.2),
('dbu45/01/45', 'aman', 98754612, 1242121.12),
('emp09/67', 'eyerus', 9872345, 2345);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `accessionnumber` int(11) NOT NULL,
  `status` int(2) NOT NULL,
  `shelfcode` int(11) NOT NULL,
  `ISBN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`accessionnumber`, `status`, `shelfcode`, `ISBN`) VALUES
(1, 0, 12, 99),
(2, 0, 12, 99),
(3, 0, 12, 99),
(4, 0, 12, 99),
(5, 0, 12, 99),
(6, 0, 12, 99),
(7, 0, 1, 123),
(8, 0, 1, 123),
(9, 0, 1, 123),
(10, 0, 1, 123),
(11, 0, 1, 123),
(12, 0, 1, 123),
(30, 0, 1, 99),
(34, 0, 1, 123),
(55, 0, 12, 123),
(75, 1, 12, 1),
(78, 0, 12, 1),
(79, 0, 54, 3),
(80, 0, 13, 2),
(89, 0, 2, 123),
(98, 0, 12, 1),
(111, 1, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
CREATE TABLE IF NOT EXISTS `loan` (
  `loanid` int(11) NOT NULL,
  `stutus` int(2) NOT NULL,
  `loandate` date NOT NULL,
  `duedate` date NOT NULL,
  `accessionnumber` int(11) NOT NULL,
  `Idnumber` varchar(78) NOT NULL,
  `empid` varchar(78) NOT NULL,
  `returneddate` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loanid`, `stutus`, `loandate`, `duedate`, `accessionnumber`, `Idnumber`, `empid`, `returneddate`) VALUES
(75, 0, '2015-06-09', '2014-06-10', 80, 'dbu018/06', 'dbu45/01', '2015-06-09'),
(76, 0, '2015-06-09', '2014-06-01', 80, 'dbu017/06', 'dbu45/01', '2015-06-09'),
(77, 0, '2015-06-09', '2014-06-08', 80, 'dbu017/06', 'dbu45/01', '2015-06-09'),
(78, 0, '2015-06-09', '2014-06-08', 98, 'dbu019/06', 'dbu45/01', '2015-06-09'),
(79, 0, '2015-06-09', '2014-06-08', 78, 'dbu017/06', 'dbu45/01', '2015-06-09'),
(80, 0, '2015-06-09', '2014-06-08', 78, 'dbu45/06', 'dbu45/01', '2015-06-09'),
(81, 0, '2015-06-09', '2007-06-04', 5, 'dbu019/06', 'dbu45/01', '2015-06-09'),
(82, 0, '2015-06-11', '2015-06-01', 7, 'dbu019/06', 'dbu035/01', '2015-06-11'),
(83, 0, '2015-06-11', '2015-06-10', 7, 'dbu019/06', 'dbu035/01', '2015-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `shelf`
--

DROP TABLE IF EXISTS `shelf`;
CREATE TABLE IF NOT EXISTS `shelf` (
  `shelfcode` int(11) NOT NULL,
  `shelfname` varchar(78) NOT NULL,
  `shelflocation` varchar(78) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shelf`
--

INSERT INTO `shelf` (`shelfcode`, `shelfname`, `shelflocation`) VALUES
(1, 'Economics', 'Above'),
(2, 'Java', 'Above'),
(3, 'perating', 'Below'),
(12, 'computing', 'main'),
(13, 'Biology', 'Main'),
(20, 'java', 'above'),
(54, 'chemistry', 'below');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `IdNumber` varchar(78) NOT NULL,
  `FirstName` varchar(78) NOT NULL,
  `LastName` varchar(78) NOT NULL,
  `Birthdate` date NOT NULL,
  `Phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`IdNumber`, `FirstName`, `LastName`, `Birthdate`, `Phone`) VALUES
('dbu/056/06', 'ttayu', 'debebe', '2015-05-12', 95764),
('dbu017/06', 'Eden', 'W/senbet', '2004-07-13', 97851422),
('dbu018/06', 'Etabezahu', 'Feleke', '2015-05-20', 952355363),
('dbu019/06', 'Eyerusalem', 'Endalamaw', '2015-06-24', 555555555),
('dbu067/07', 'abebe', 'kebede', '2015-05-12', 9876543),
('dbu45/06', 'yeshambel', 'Basazinew', '2015-05-14', 9475896),
('dbu90/06', 'rshan', 'teklu', '2015-05-12', 987654345);

-- --------------------------------------------------------

--
-- Table structure for table `useraccount`
--

DROP TABLE IF EXISTS `useraccount`;
CREATE TABLE IF NOT EXISTS `useraccount` (
  `username` varchar(89) NOT NULL,
  `PassWord` varchar(100) NOT NULL,
  `empid` varchar(46) NOT NULL,
  `UserRole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useraccount`
--

INSERT INTO `useraccount` (`username`, `PassWord`, `empid`, `UserRole`) VALUES
('chal', '1234', 'dbu45/01/45', 1),
('Etabezahu', 'etu', 'dbu45/01', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewloanstuden`
--
DROP VIEW IF EXISTS `viewloanstuden`;
CREATE TABLE IF NOT EXISTS `viewloanstuden` (
`ISBN` int(11)
,`title` varchar(78)
,`Authour` varchar(78)
,`IdNumber` varchar(78)
,`FullName` varchar(157)
,`ItemISBN` int(11)
,`accessionnumber` int(11)
,`status` int(2)
,`loandate` date
,`duedate` date
,`returneddate` date
,`LoanAccNo` int(11)
,`stutus` int(2)
,`LoanIdNumber` varchar(78)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewloanstudent`
--
DROP VIEW IF EXISTS `viewloanstudent`;
CREATE TABLE IF NOT EXISTS `viewloanstudent` (
`ISBN` int(11)
,`title` varchar(78)
,`Authour` varchar(78)
,`IdNumber` varchar(78)
,`FullName` varchar(157)
,`ItemISBN` int(11)
,`accessionnumber` int(11)
,`status` int(2)
,`loandate` date
,`duedate` date
,`LoanAccNo` int(11)
,`stutus` int(2)
,`LoanIdNumber` varchar(78)
);

-- --------------------------------------------------------

--
-- Structure for view `viewloanstuden`
--
DROP TABLE IF EXISTS `viewloanstuden`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewloanstuden` AS select `bk`.`ISBN` AS `ISBN`,`bk`.`Title` AS `title`,`bk`.`Authour` AS `Authour`,`st`.`IdNumber` AS `IdNumber`,concat(`st`.`FirstName`,' ',`st`.`LastName`) AS `FullName`,`it`.`ISBN` AS `ItemISBN`,`it`.`accessionnumber` AS `accessionnumber`,`it`.`status` AS `status`,`ln`.`loandate` AS `loandate`,`ln`.`duedate` AS `duedate`,`ln`.`returneddate` AS `returneddate`,`ln`.`accessionnumber` AS `LoanAccNo`,`ln`.`stutus` AS `stutus`,`ln`.`Idnumber` AS `LoanIdNumber` from (((`book` `bk` join `student` `st`) join `item` `it`) join `loan` `ln`) where ((`it`.`ISBN` = `bk`.`ISBN`) and (`ln`.`accessionnumber` = `it`.`accessionnumber`) and (`ln`.`Idnumber` = `st`.`IdNumber`) and (`ln`.`stutus` = 0));

-- --------------------------------------------------------

--
-- Structure for view `viewloanstudent`
--
DROP TABLE IF EXISTS `viewloanstudent`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewloanstudent` AS select `bk`.`ISBN` AS `ISBN`,`bk`.`Title` AS `title`,`bk`.`Authour` AS `Authour`,`st`.`IdNumber` AS `IdNumber`,concat(`st`.`FirstName`,' ',`st`.`LastName`) AS `FullName`,`it`.`ISBN` AS `ItemISBN`,`it`.`accessionnumber` AS `accessionnumber`,`it`.`status` AS `status`,`ln`.`loandate` AS `loandate`,`ln`.`duedate` AS `duedate`,`ln`.`accessionnumber` AS `LoanAccNo`,`ln`.`stutus` AS `stutus`,`ln`.`Idnumber` AS `LoanIdNumber` from (((`book` `bk` join `student` `st`) join `item` `it`) join `loan` `ln`) where ((`it`.`ISBN` = `bk`.`ISBN`) and (`ln`.`accessionnumber` = `it`.`accessionnumber`) and (`ln`.`Idnumber` = `st`.`IdNumber`) and (`ln`.`stutus` = 0));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`accessionnumber`), ADD KEY `shelfcode` (`shelfcode`), ADD KEY `ISBN` (`ISBN`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loanid`), ADD KEY `accessionnumber` (`accessionnumber`), ADD KEY `Idnumber` (`Idnumber`), ADD KEY `empid` (`empid`);

--
-- Indexes for table `shelf`
--
ALTER TABLE `shelf`
  ADD PRIMARY KEY (`shelfcode`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`IdNumber`);

--
-- Indexes for table `useraccount`
--
ALTER TABLE `useraccount`
  ADD PRIMARY KEY (`username`), ADD UNIQUE KEY `empid_2` (`empid`), ADD KEY `empid` (`empid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loanid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `item`
--
ALTER TABLE `item`
ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`ISBN`) REFERENCES `book` (`ISBN`),
ADD CONSTRAINT `item_ibfk_3` FOREIGN KEY (`shelfcode`) REFERENCES `shelf` (`shelfcode`);

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`Idnumber`) REFERENCES `student` (`IdNumber`),
ADD CONSTRAINT `loan_ibfk_2` FOREIGN KEY (`empid`) REFERENCES `employee` (`empid`),
ADD CONSTRAINT `loan_ibfk_3` FOREIGN KEY (`accessionnumber`) REFERENCES `item` (`accessionnumber`);

--
-- Constraints for table `useraccount`
--
ALTER TABLE `useraccount`
ADD CONSTRAINT `useraccount_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `employee` (`empid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
