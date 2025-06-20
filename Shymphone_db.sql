-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 01, 2024 at 07:56 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mua`
--
CREATE DATABASE IF NOT EXISTS `mua` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mua`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `id_akun` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_akun`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id_akun`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$cBD8rNUHmi4thYszt8kNDOkEVmF7d/MJIOUBvUQZN0Gw21YWQfQvm');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id_costumer` int NOT NULL AUTO_INCREMENT,
  `Nama` varchar(255) NOT NULL,
  `NIK` varchar(20) NOT NULL,
  `No_HP` varchar(20) NOT NULL,
  `Alamat` text NOT NULL,
  PRIMARY KEY (`id_costumer`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_costumer`, `Nama`, `NIK`, `No_HP`, `Alamat`) VALUES
(1, 'nisa', '15526625552', '08656622666', 'padang');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

DROP TABLE IF EXISTS `galeri`;
CREATE TABLE IF NOT EXISTS `galeri` (
  `id_galeri` int NOT NULL AUTO_INCREMENT,
  `foto_galeri` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `nama_galeri` varchar(255) NOT NULL,
  PRIMARY KEY (`id_galeri`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `foto_galeri`, `deskripsi`, `nama_galeri`) VALUES
(1, '1717171236_ad31c511cd47cb2cf82c.jpg', 'sad', 'Foto Galeri');

-- --------------------------------------------------------

--
-- Table structure for table `paket_foto`
--

DROP TABLE IF EXISTS `paket_foto`;
CREATE TABLE IF NOT EXISTS `paket_foto` (
  `id_paket` int NOT NULL,
  `Nama_Paket` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `Deskripsi_Paket` text COLLATE utf8mb4_general_ci,
  `Harga_Paket` int DEFAULT NULL,
  `Foto_Paket` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paket_makeup`
--

DROP TABLE IF EXISTS `paket_makeup`;
CREATE TABLE IF NOT EXISTS `paket_makeup` (
  `id_paket_makeup` int NOT NULL AUTO_INCREMENT,
  `nama_paket_makeup` varchar(255) NOT NULL,
  `deskripsi_paket_makeup` varchar(255) NOT NULL,
  `harga_paket_makeup` double NOT NULL,
  `foto_paket_makeup` varchar(2555) NOT NULL,
  PRIMARY KEY (`id_paket_makeup`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paket_makeup`
--

INSERT INTO `paket_makeup` (`id_paket_makeup`, `nama_paket_makeup`, `deskripsi_paket_makeup`, `harga_paket_makeup`, `foto_paket_makeup`) VALUES
(1, 'Paket Murah', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur, blanditiis, commodi dolorem eaque eos facere ipsa ipsam repellat tempora ullam, ut vero voluptatem voluptates! Cupiditate dolor fugiat hic quisquam suscipit.', 150000, '1717171101_6eacdea12fdd21829be1.jpg'),
(2, 'Paket Mahal', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet at cumque deleniti distinctio est hic incidunt molestias, odit provident quasi, quo quos, recusandae saepe veritatis vitae. Deleniti eligendi et id iure laborum omnis possimus suscipit? Aut, c', 200000, '1717224969_bd8f5efdcb19c98fae84.jpg'),
(3, 'Paket Sedang', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci consequatur ea excepturi expedita id iure iusto nihil similique, ut voluptas?', 180000, '1717225054_c9e70a3344904b9a81d2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

DROP TABLE IF EXISTS `pembayaran`;
CREATE TABLE IF NOT EXISTS `pembayaran` (
  `id_pembayaran` int NOT NULL AUTO_INCREMENT,
  `tanggal_pembayaran` date NOT NULL,
  `jumlah_pembayaran` double NOT NULL,
  `biaya_admin` double NOT NULL,
  `total_pembayaran` double NOT NULL,
  `bukti_transaksi` varchar(255) NOT NULL,
  `id_rekening` int NOT NULL,
  `id_costumer` int NOT NULL,
  PRIMARY KEY (`id_pembayaran`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

DROP TABLE IF EXISTS `rekening`;
CREATE TABLE IF NOT EXISTS `rekening` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_rekening` text COLLATE utf8mb4_general_ci NOT NULL,
  `atas_nama` text COLLATE utf8mb4_general_ci NOT NULL,
  `no_rekening` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id`, `nama_rekening`, `atas_nama`, `no_rekening`) VALUES
(1, 'BCA', 'Muhamad Fajri', '1199277334'),
(2, 'BRI', 'Muhamad Fajri', '1662777633'),
(3, 'BNI', 'Muhamad Fajri', '8877733888');

-- --------------------------------------------------------

--
-- Table structure for table `reservasi`
--

DROP TABLE IF EXISTS `reservasi`;
CREATE TABLE IF NOT EXISTS `reservasi` (
  `Id_Reservasi` int NOT NULL,
  `NIK` bigint NOT NULL,
  `id_paket` int DEFAULT NULL,
  `Tanggal_Reservasi` date DEFAULT NULL,
  `Tanggal_Pemotretan` date DEFAULT NULL,
  `Waktu` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Alamat_Pemotretan` text COLLATE utf8mb4_general_ci,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservasis`
--

DROP TABLE IF EXISTS `reservasis`;
CREATE TABLE IF NOT EXISTS `reservasis` (
  `id_reservasi` int NOT NULL AUTO_INCREMENT,
  `id_paket` int NOT NULL,
  `id_costumer` int NOT NULL,
  `id_pembayaran` int NOT NULL,
  `id_paket_makeup` int NOT NULL,
  `tanggal_booking` date NOT NULL,
  `tanggal_makeup` date NOT NULL,
  `waktu_makeup` varchar(100) NOT NULL,
  `alamat_makeup` text NOT NULL,
  `status_booking` varchar(100) NOT NULL,
  PRIMARY KEY (`id_reservasi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
CREATE TABLE IF NOT EXISTS `transaksi` (
  `Id_Transaksi` int NOT NULL,
  `Id_Reservasi` int DEFAULT NULL,
  `Biaya_Admin` int DEFAULT NULL,
  `Jumlah_Pembayaran` int DEFAULT NULL,
  `Jenis_Pembayaran` int DEFAULT NULL,
  `Tanggal_Transaksi` date DEFAULT NULL,
  `Bukti_Pembayaran` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

DROP TABLE IF EXISTS `transaksis`;
CREATE TABLE IF NOT EXISTS `transaksis` (
  `id_transaksi` int NOT NULL AUTO_INCREMENT,
  `id_reservasi` int NOT NULL,
  `id_costumer` int NOT NULL,
  `id_pembayaran` int NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ulasan`
--

DROP TABLE IF EXISTS `ulasan`;
CREATE TABLE IF NOT EXISTS `ulasan` (
  `id_ulasan` int NOT NULL AUTO_INCREMENT,
  `id_paket_makeup` int NOT NULL,
  `tanggal_ulasan` date NOT NULL,
  `nama_costumer` varchar(255) NOT NULL,
  `ulasan` text NOT NULL,
  PRIMARY KEY (`id_ulasan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ulasan`
--

INSERT INTO `ulasan` (`id_ulasan`, `id_paket_makeup`, `tanggal_ulasan`, `nama_costumer`, `ulasan`) VALUES
(1, 3, '2024-06-01', 'dina', 'hasil makeup nya sangat menarik');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
