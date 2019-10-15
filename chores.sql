-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: אוקטובר 07, 2019 בזמן 09:01 PM
-- גרסת שרת: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chores`
--

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `chorelist`
--

CREATE TABLE `chorelist` (
  `ID` int(11) NOT NULL,
  `descr` text COLLATE utf8_unicode_ci NOT NULL,
  `cdate` date NOT NULL,
  `memid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `choreslist`
--

CREATE TABLE `choreslist` (
  `ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `memid` int(11) NOT NULL,
  `descr` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- הוצאת מידע עבור טבלה `choreslist`
--

INSERT INTO `choreslist` (`ID`, `date`, `memid`, `descr`) VALUES
(29, '2019-09-07', 2, 'asd'),
(30, '2019-09-07', 3, 'asd');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `fammembers`
--

CREATE TABLE `fammembers` (
  `ID` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `nick` text COLLATE utf8_unicode_ci NOT NULL,
  `descr` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- הוצאת מידע עבור טבלה `fammembers`
--

INSERT INTO `fammembers` (`ID`, `name`, `nick`, `descr`) VALUES
(1, 'moshe', 'mosh', 'son'),
(2, 'dana', 'dannush', 'sister'),
(3, 'tikva', 'tikush', 'mother'),
(4, 'david', 'daddy', 'father');

--
-- Indexes for dumped tables
--

--
-- אינדקסים לטבלה `chorelist`
--
ALTER TABLE `chorelist`
  ADD PRIMARY KEY (`ID`);

--
-- אינדקסים לטבלה `choreslist`
--
ALTER TABLE `choreslist`
  ADD PRIMARY KEY (`ID`);

--
-- אינדקסים לטבלה `fammembers`
--
ALTER TABLE `fammembers`
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chorelist`
--
ALTER TABLE `chorelist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `choreslist`
--
ALTER TABLE `choreslist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `fammembers`
--
ALTER TABLE `fammembers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
