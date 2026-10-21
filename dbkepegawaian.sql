-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Oct 19, 2026 at 05:28 AM
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
-- Database: `dbkepegawaian`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(11) NOT NULL,
  `ID_Pegawai` int(11) NOT NULL,
  `nama_karyawan` varchar(225) NOT NULL,
  `Tanggal` date NOT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_keluar` time DEFAULT NULL,
  `Status` enum('Hadir','Sakit','Izin','Alfa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `ID_Pegawai`, `nama_karyawan`, `Tanggal`, `jam_masuk`, `jam_keluar`, `Status`) VALUES
(10, 21, '', '2025-09-09', NULL, NULL, 'Hadir'),
(11, 20, '', '2026-05-11', NULL, NULL, 'Hadir'),
(12, 18, '', '2026-05-11', NULL, NULL, 'Sakit'),
(26, 1, '', '2026-05-12', NULL, NULL, 'Hadir'),
(27, 8, '', '2026-05-12', NULL, NULL, 'Hadir'),
(28, 7, '', '2026-05-13', NULL, NULL, 'Hadir'),
(29, 33, '', '2026-05-13', NULL, NULL, 'Hadir'),
(30, 34, '', '2026-05-13', NULL, NULL, 'Hadir'),
(32, 33, '', '2026-05-19', NULL, NULL, 'Hadir'),
(33, 5, '', '2026-05-19', NULL, NULL, 'Hadir'),
(34, 36, '', '2026-05-19', NULL, NULL, 'Hadir'),
(46, 2, 'Inkasani', '2026-05-19', '23:14:08', NULL, 'Hadir'),
(47, 3, 'Maysandra', '2026-05-19', '00:00:00', NULL, 'Izin'),
(48, 37, 'Nanas', '2026-05-19', '00:00:00', NULL, 'Sakit'),
(49, 2, 'Inkasani', '2026-05-20', '00:00:00', NULL, 'Izin'),
(50, 3, 'Maysandra', '2026-05-20', '00:00:00', NULL, 'Sakit');

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `ID_Pegawai` int(11) NOT NULL,
  `Nama` varchar(60) NOT NULL,
  `Tanggal` date NOT NULL,
  `gaji_pokok` varchar(33) NOT NULL,
  `Tunjangan` varchar(33) NOT NULL,
  `potongan` varchar(33) NOT NULL,
  `Total_Gaji` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`ID_Pegawai`, `Nama`, `Tanggal`, `gaji_pokok`, `Tunjangan`, `potongan`, `Total_Gaji`) VALUES
(1, 'Nasifa', '2026-05-12', '100000000', '0', '0', '100000000'),
(2, 'Inkasani', '2026-05-20', '20000000', '0', '50000', '19950000'),
(3, 'Maysandra', '2026-05-20', '80000000', '0', '100000', '79900000'),
(28, 'Julee', '2026-05-13', '80000000', '100000', '50000', '80050000'),
(33, 'alya nur', '2026-05-13', '20000000', '100000', '50000', '20050000'),
(34, 'inesya ayu', '2026-05-13', '20000000', '100000', '50000', '20050000');

-- --------------------------------------------------------

--
-- Table structure for table `hukuman`
--

CREATE TABLE `hukuman` (
  `No` int(11) NOT NULL,
  `ID_Pegawai` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Tanggal` date NOT NULL,
  `Alasan_Dihukum` text NOT NULL,
  `Jenis_Hukuman` varchar(50) NOT NULL,
  `Potongan_Gaji` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `identitas_pegawai`
--

CREATE TABLE `identitas_pegawai` (
  `ID_Pegawai` int(11) NOT NULL,
  `NIK` varchar(20) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `TTL` varchar(50) NOT NULL,
  `Alamat` text NOT NULL,
  `Gender` enum('Pria','Wanita','','') NOT NULL,
  `Agama` enum('Islam','Kristen Protestan','Katolik','Hindu','Buddha','Konghuchu','Kepercayaan') NOT NULL,
  `No_Telepon` varchar(12) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `identitas_pegawai`
--

INSERT INTO `identitas_pegawai` (`ID_Pegawai`, `NIK`, `Nama`, `TTL`, `Alamat`, `Gender`, `Agama`, `No_Telepon`, `Email`, `Jabatan`) VALUES
(2, '8887776665554443', 'Inkasani', '2000-01-01', 'Bandung', 'Pria', 'Islam', '089876543212', 'inka@gmail.com', 'HRD'),
(3, '1122334455667788', 'Maysandra', '2009-04-06', 'Cimahi', 'Pria', 'Hindu', '087656547382', 'sandra@gmail.com', 'Direktur'),
(37, '8856434545565432', 'Nanas', '2005-02-05', 'Yogyakarta', 'Wanita', 'Hindu', '082315592501', 'Nanaseu@gmail.com', 'Karyawan'),
(39, '8811223344556677', 'Sipa', '2007-11-12', 'Jakarta', 'Wanita', 'Katolik', '087545676543', 'sipa@gmail.com', 'Karyawan');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `ID_Jabatan` int(11) NOT NULL,
  `Nama_Jabatan` varchar(30) NOT NULL,
  `Gaji_Pokok` varchar(33) NOT NULL,
  `tunjangan_jabatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`ID_Jabatan`, `Nama_Jabatan`, `Gaji_Pokok`, `tunjangan_jabatan`) VALUES
(1, 'Direktur', '80000000', '100000'),
(2, 'CEO', '100000000', '100000'),
(3, 'HRD', '20000000', '100000'),
(4, 'Karyawan', '10000000', '100000');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `ID_Pegawai` int(11) NOT NULL,
  `No` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Jabatan` varchar(30) NOT NULL,
  `No_Telp` varchar(13) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(225) NOT NULL,
  `Hak_Akses` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`ID_Pegawai`, `No`, `Nama`, `Jabatan`, `No_Telp`, `Username`, `Password`, `Hak_Akses`) VALUES
(1, 1, 'Nasifa', 'CEO', '087654321234', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 2, 'Inkasani', 'HRD', '089876543212', 'inka', 'c2318cee73c68b44c1de757339f43aa6', 'karyawan'),
(3, 3, 'Maysandra', 'Direktur', '087656547382', 'sandra', 'fe3ca9163ddfabb95b2e8e15f3aa6aeb', 'karyawan'),
(4, 4, 'Nanas', 'Karyawan', '082315592501', 'nanas', '158c9c96f4768dfe0bbedfc420938df1', 'karyawan'),
(5, 5, 'Sipa', 'Karyawan', '0875456765433', 'sipa', 'e7f3b5e4839d56c3d70a6c6751c9ba13', 'karyawan');

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran`
--

CREATE TABLE `kehadiran` (
  `ID_Pegawai` int(11) NOT NULL,
  `Nama` varchar(60) NOT NULL,
  `Bulan` varchar(10) NOT NULL,
  `Izin` int(11) NOT NULL,
  `Sakit` int(11) NOT NULL,
  `Alfa` int(11) NOT NULL,
  `Total_Kehadiran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `No` int(11) NOT NULL,
  `Nama_Lokasi` varchar(30) NOT NULL,
  `Alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_gaji`
--

CREATE TABLE `master_gaji` (
  `Bulan` varchar(20) NOT NULL,
  `NIK` varchar(20) NOT NULL,
  `hadir` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `izin` int(11) NOT NULL,
  `alpha` int(11) NOT NULL,
  `lembur` int(11) NOT NULL,
  `potongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penghargaan`
--

CREATE TABLE `penghargaan` (
  `ID_Pegawai` int(11) NOT NULL,
  `Nama` int(11) NOT NULL,
  `Nama_Penghargaan` int(11) NOT NULL,
  `Jumlah_Bonus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `Nama` varchar(50) NOT NULL,
  `Nomor` int(11) NOT NULL,
  `Posisi` varchar(33) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tunjangan`
--

CREATE TABLE `tunjangan` (
  `ID_Pegawai` int(11) NOT NULL,
  `Nama` varchar(60) NOT NULL,
  `Tunjangan_Tetap` varchar(22) NOT NULL,
  `Tunjangan_Tidak__Tetap` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `ID_Unit` int(11) NOT NULL,
  `Nama_Unit` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`ID_Pegawai`);

--
-- Indexes for table `hukuman`
--
ALTER TABLE `hukuman`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `identitas_pegawai`
--
ALTER TABLE `identitas_pegawai`
  ADD PRIMARY KEY (`ID_Pegawai`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`ID_Jabatan`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`ID_Pegawai`);

--
-- Indexes for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`ID_Pegawai`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `penghargaan`
--
ALTER TABLE `penghargaan`
  ADD PRIMARY KEY (`ID_Pegawai`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`Nomor`);

--
-- Indexes for table `tunjangan`
--
ALTER TABLE `tunjangan`
  ADD PRIMARY KEY (`ID_Pegawai`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`ID_Unit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `identitas_pegawai`
--
ALTER TABLE `identitas_pegawai`
  MODIFY `ID_Pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `ID_Jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `ID_Pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
