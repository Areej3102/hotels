-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22 يونيو 2024 الساعة 20:34
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- بنية الجدول `customers`
--

CREATE TABLE `customers` (
  `ID` int(255) NOT NULL,
  `UID` int(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `birthdate` varchar(255) NOT NULL,
  `CreditCard` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `customers`
--

INSERT INTO `customers` (`ID`, `UID`, `firstName`, `lastName`, `birthdate`, `CreditCard`, `phone`, `address`, `email`) VALUES
(1, 9, 'xx', 'xx', '2024-06-22', '123123', '0922222222', 'test', 'mjdjod22799@gmail.com'),
(2, 10, 'mjd', 'mjd', '2024-06-22', '123457', '1215688', 'ss', 'mjdjod22799@gmail.com');

-- --------------------------------------------------------

--
-- بنية الجدول `faresh`
--

CREATE TABLE `faresh` (
  `ID` int(255) NOT NULL,
  `TID` int(255) NOT NULL,
  `theFaresh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `hoteltable`
--

CREATE TABLE `hoteltable` (
  `ID` int(255) NOT NULL,
  `UID` int(255) NOT NULL,
  `HotelName` varchar(255) NOT NULL,
  `RoomNum` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `stars` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `hoteltable`
--

INSERT INTO `hoteltable` (`ID`, `UID`, `HotelName`, `RoomNum`, `address`, `phone`, `stars`, `image_url`) VALUES
(432, 4, 'homs', 15, 'damas', '999', 5, 'http://localhost:3000/images/hotel1.jpg'),
(888, 7, 'gto', 10, 'nabk', '777', 4, 'http://localhost:3000/images/hotel1.jpg');

-- --------------------------------------------------------

--
-- بنية الجدول `reservations`
--

CREATE TABLE `reservations` (
  `ID` int(255) NOT NULL,
  `state` int(255) NOT NULL,
  `CID` int(255) NOT NULL,
  `RID` int(255) NOT NULL,
  `RCost` int(255) NOT NULL,
  `TSCost` int(255) NOT NULL,
  `TotalCost` int(255) NOT NULL,
  `Checkindate` varchar(255) NOT NULL,
  `CheckoutDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `roomimgs`
--

CREATE TABLE `roomimgs` (
  `ID` int(255) NOT NULL,
  `RID` int(255) NOT NULL,
  `imagename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `roomimgs`
--

INSERT INTO `roomimgs` (`ID`, `RID`, `imagename`) VALUES
(1, 787, '1719078439399.jpg'),
(2, 788, '1719078657606.png'),
(3, 789, '1719078763933.png'),
(4, 790, '1719079063682.png'),
(5, 791, '1719079448937.png'),
(6, 791, '1719079448939.png'),
(7, 791, '1719079448939.png'),
(8, 791, '1719079448941.png'),
(9, 791, '1719079448942.png'),
(10, 791, '1719079448943.png'),
(11, 791, '1719079448944.png'),
(12, 791, '1719079448944.png');

-- --------------------------------------------------------

--
-- بنية الجدول `rooms`
--

CREATE TABLE `rooms` (
  `ID` int(255) NOT NULL,
  `HID` int(255) NOT NULL,
  `RoomType` int(255) NOT NULL,
  `RoomState` varchar(255) NOT NULL,
  `RoomCost` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `rooms`
--

INSERT INTO `rooms` (`ID`, `HID`, `RoomType`, `RoomState`, `RoomCost`) VALUES
(788, 7, 2, 'Available', 150),
(789, 7, 3, 'Reserved', 50),
(790, 7, 1, 'Reserved', 200),
(791, 7, 1, 'Reserved', 80);

-- --------------------------------------------------------

--
-- بنية الجدول `roomservice`
--

CREATE TABLE `roomservice` (
  `ServiceID` int(255) NOT NULL,
  `RoomID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `roomservice`
--

INSERT INTO `roomservice` (`ServiceID`, `RoomID`) VALUES
(1, 791);

-- --------------------------------------------------------

--
-- بنية الجدول `roomstype`
--

CREATE TABLE `roomstype` (
  `ID` int(255) NOT NULL,
  `TypeName` varchar(255) NOT NULL,
  `HUID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `roomstype`
--

INSERT INTO `roomstype` (`ID`, `TypeName`, `HUID`) VALUES
(1, 'sweet', 7),
(2, 'single', 7),
(3, 'double', 7);

-- --------------------------------------------------------

--
-- بنية الجدول `services`
--

CREATE TABLE `services` (
  `ID` int(255) NOT NULL,
  `ServiceName` varchar(255) NOT NULL,
  `ServiceCost` int(255) NOT NULL,
  `HUID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `services`
--

INSERT INTO `services` (`ID`, `ServiceName`, `ServiceCost`, `HUID`) VALUES
(1, 'clean', 40, 7);

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `ID` int(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`ID`, `uname`, `password`, `type`) VALUES
(4, 'test', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'owner'),
(5, 'ki', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'owner'),
(6, 'tyt', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'owner'),
(7, 'ooo', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'owner'),
(9, 'jui', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'customer'),
(10, 'mjd', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `faresh`
--
ALTER TABLE `faresh`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hoteltable`
--
ALTER TABLE `hoteltable`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_uid` (`UID`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `roomimgs`
--
ALTER TABLE `roomimgs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `roomstype`
--
ALTER TABLE `roomstype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faresh`
--
ALTER TABLE `faresh`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoteltable`
--
ALTER TABLE `hoteltable`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=889;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roomimgs`
--
ALTER TABLE `roomimgs`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=792;

--
-- AUTO_INCREMENT for table `roomstype`
--
ALTER TABLE `roomstype`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `hoteltable`
--
ALTER TABLE `hoteltable`
  ADD CONSTRAINT `fk_uid` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
