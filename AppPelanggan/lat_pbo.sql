-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2020 at 03:26 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lat_pbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_buku`
--

CREATE TABLE `data_buku` (
  `Kode_Buku` varchar(10) NOT NULL,
  `Nama_Buku` varchar(50) NOT NULL,
  `Tahun_Terbit` int(11) NOT NULL,
  `Nama_Pengarang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_buku`
--

INSERT INTO `data_buku` (`Kode_Buku`, `Nama_Buku`, `Tahun_Terbit`, `Nama_Pengarang`) VALUES
('DLN1-PDQ', 'Dilanku 1992', 2014, 'Pidi Baiq'),
('STICP-HI', 'Structure and Interpretation of Computer ', 1979, ' Hal Abelson');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Nama` varchar(30) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `KonfirmasiPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Nama`, `Username`, `Password`, `KonfirmasiPassword`) VALUES
('ilham', 'ilhamhafizh', 'ilham', 'ilham'),
('ilham123', 'ilham123', 'ilham123', 'ilham123');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tahun_lahir` int(11) NOT NULL,
  `jenis` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama`, `tahun_lahir`, `jenis`) VALUES
('MEM-001', 'Ilham Hafizh', 2001, 'Laki-Laki '),
('MEM-002', 'Ilham Hafizh', 2000, 'Laki-Laki ');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` varchar(11) NOT NULL,
  `Kode_Buku` varchar(11) NOT NULL,
  `Batas_Pemakaian` varchar(50) NOT NULL,
  `Peminjaman_Awal` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `Kode_Buku`, `Batas_Pemakaian`, `Peminjaman_Awal`) VALUES
('MEM-002', 'DLN1-PDQ', '14', '22-12-2001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`Kode_Buku`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Nama`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Peminjaman_Awal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
