-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2024 at 06:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `detail_property`
--

-- --------------------------------------------------------

--
-- Table structure for table `property_detail`
--

CREATE TABLE `property_detail` (
  `id` int(11) NOT NULL,
  `Nama_property` text NOT NULL,
  `Jenis_Property` text NOT NULL,
  `Deskripsi_Property` text NOT NULL,
  `Harga_Property` text NOT NULL,
  `Pemilik_Property` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property_detail`
--

INSERT INTO `property_detail` (`id`, `Nama_property`, `Jenis_Property`, `Deskripsi_Property`, `Harga_Property`, `Pemilik_Property`) VALUES
(1, 'Meja Makan', 'Meja', 'Ini adalah meja makan dengan bahan kayu jati', '1000000', 'Asep'),
(3, 'Kursi Goyang', 'Kursi', 'Ini adalah Kursi Goyang yang nyaman', '250000', 'Dimas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `property_detail`
--
ALTER TABLE `property_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `property_detail`
--
ALTER TABLE `property_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
