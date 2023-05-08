-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 07:29 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posyandu`
--

-- --------------------------------------------------------

--
-- Table structure for table `antrian`
--

CREATE TABLE `antrian` (
  `id_antrian` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `no_antrian` smallint(6) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `antrian`
--

INSERT INTO `antrian` (`id_antrian`, `tanggal`, `no_antrian`, `status`, `updated_date`) VALUES
(10, '2022-05-25', 1, '1', '2022-05-25 06:35:36'),
(11, '2022-05-25', 2, '1', '2022-05-25 11:23:11'),
(12, '2022-05-25', 3, '1', '2022-05-25 12:01:26'),
(13, '2022-05-25', 4, '1', '2022-05-25 05:25:21'),
(14, '2022-05-25', 5, '1', '2022-05-25 08:15:46'),
(15, '2022-05-25', 6, '0', NULL),
(16, '2022-05-25', 7, '0', NULL),
(17, '2022-05-25', 8, '0', NULL),
(23, '2022-06-02', 1, '1', '2022-06-02 15:01:15'),
(24, '2022-06-02', 2, '1', '2022-06-02 15:01:29'),
(25, '2022-06-02', 3, '0', NULL),
(26, '2022-06-02', 4, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsiartikel` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `id_datapos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `deskripsiartikel`, `foto`, `id_datapos`) VALUES
(1, 'kesehatan anak', 'kesehatan perlu ldkslakd', 'ini foto', 1);

-- --------------------------------------------------------

--
-- Table structure for table `datapos`
--

CREATE TABLE `datapos` (
  `id_datapos` int(11) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `agama` varchar(30) NOT NULL,
  `ttl` date NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datapos`
--

INSERT INTO `datapos` (`id_datapos`, `nik`, `nama`, `jk`, `alamat`, `agama`, `ttl`, `telpon`, `email`, `password`, `pekerjaan`, `status`) VALUES
(5, '12131', 'ayu', 'p', 'jl raya', 'islam', '2022-05-04', '082145745304', 'ayuwila', '', 'dokter', 'lansia'),
(6, '111', 'ana', 'L', 'jl raya', 'islam', '2022-05-11', '082145745304', 'ayuqquja', '', 'guru', 'Ibu Hamil'),
(7, '11222', 'wila', 'P', 'jl raya', 'islam', '2022-05-26', '082145745304', 'ajiwsi@gmail', '', 'dokter', 'balita'),
(8, '4566', 'andira', 'p', 'jl raya diponegoro ', 'islam', '2012-05-01', '082145745304', 'andira@gmail.com', 'andira', 'mhsiswa', 'bumil'),
(9, '67277', 'indira', 'p', 'jl raya badungan', 'islam', '2022-05-02', '082929', 'indira@gmail', 'indira', 'swasta', 'bumil'),
(10, '5363772', 'rara rahmawati', 'p', 'jl raya gang samiadoen', 'islam', '2022-05-12', '028939', 'rara@gmail.com', 'rara', 'belum', 'balita'),
(11, '0289292', 'anaihita alesa', 'p', 'jl raya sarinah', 'islam', '2022-05-24', '0829938', 'anahita@gmail.com', 'anahita', 'belum', 'balita'),
(12, '8273773', 'dwi pamesta', 'p', 'jl raya jaksa agung', 'islam', '2022-05-16', '082938', 'dwi@gmail.com', 'dwi', 'wiraswasta', 'lansia');

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `id_forum` int(11) NOT NULL,
  `komentar` varchar(1000) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `id_topik` int(11) NOT NULL,
  `id_datapos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hasilperiksa`
--

CREATE TABLE `hasilperiksa` (
  `id_hasilperiksa` int(11) NOT NULL,
  `hasil` varchar(2000) NOT NULL,
  `tindakan` varchar(2000) NOT NULL,
  `id_datapos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hasilperiksa`
--

INSERT INTO `hasilperiksa` (`id_hasilperiksa`, `hasil`, `tindakan`, `id_datapos`) VALUES
(1, 'bagus', 'tdk apa apa', 6);

-- --------------------------------------------------------

--
-- Table structure for table `jadwalpos`
--

CREATE TABLE `jadwalpos` (
  `id_jadwalpos` int(11) NOT NULL,
  `labelposyandu` varchar(1000) NOT NULL,
  `tgl_jadwal` date NOT NULL,
  `deskripsijadwal` text NOT NULL,
  `status` int(11) NOT NULL,
  `id_datapos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwalpos`
--

INSERT INTO `jadwalpos` (`id_jadwalpos`, `labelposyandu`, `tgl_jadwal`, `deskripsijadwal`, `status`, `id_datapos`) VALUES
(1, 'balita', '2022-05-11', 'imunisasi', 1, 6),
(2, 'balita imunisasi', '2022-05-12', 'besok balita imunisasi', 1, 5),
(6, 'vaksin', '2022-05-26', 'vaksinasi lansia dosis 1', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `layananbalita`
--

CREATE TABLE `layananbalita` (
  `id_balita` int(11) NOT NULL,
  `nama_ortu` varchar(100) NOT NULL,
  `bb_anak` varchar(50) NOT NULL,
  `tb_anak` varchar(50) NOT NULL,
  `ttl_anak` date NOT NULL,
  `diagram_pertumbuhan` varchar(100) NOT NULL,
  `diagram_perkembangan` varchar(100) NOT NULL,
  `statuskesehatanbalita` varchar(100) NOT NULL,
  `id_datapos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `layananbalita`
--

INSERT INTO `layananbalita` (`id_balita`, `nama_ortu`, `bb_anak`, `tb_anak`, `ttl_anak`, `diagram_pertumbuhan`, `diagram_perkembangan`, `statuskesehatanbalita`, `id_datapos`) VALUES
(1, 'kamila', '30', '130', '2022-05-18', 'normal', 'normal', 'normal', 7);

-- --------------------------------------------------------

--
-- Table structure for table `layananbumil`
--

CREATE TABLE `layananbumil` (
  `id_bumil` int(11) NOT NULL,
  `hpht` varchar(50) NOT NULL,
  `hpl` int(50) NOT NULL,
  `riwayatpenyatkit` varchar(100) NOT NULL,
  `anak_ke` varchar(20) NOT NULL,
  `bb` varchar(20) NOT NULL,
  `usia_kehamilan` varchar(20) NOT NULL,
  `denyutjantung` varchar(50) NOT NULL,
  `kakibengkak` varchar(50) NOT NULL,
  `id_datapos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `layananbumil`
--

INSERT INTO `layananbumil` (`id_bumil`, `hpht`, `hpl`, `riwayatpenyatkit`, `anak_ke`, `bb`, `usia_kehamilan`, `denyutjantung`, `kakibengkak`, `id_datapos`) VALUES
(3, '2', 1, 'sehat', '2', '54', '4', 'normal', 'tdk', 5);

-- --------------------------------------------------------

--
-- Table structure for table `layananlansia`
--

CREATE TABLE `layananlansia` (
  `id_lansia` int(11) NOT NULL,
  `nama_wali` varchar(100) NOT NULL,
  `hp_wali` varchar(15) NOT NULL,
  `hubungan_wali` varchar(100) NOT NULL,
  `agama_wali` varchar(50) NOT NULL,
  `riwayat_penyakit` varchar(1000) NOT NULL,
  `bb_lansia` varchar(20) NOT NULL,
  `tb_lansia` varchar(20) NOT NULL,
  `usia_lansia` varchar(20) NOT NULL,
  `vaksinasi` varchar(20) NOT NULL,
  `statuskesehatanlansia` varchar(100) NOT NULL,
  `non_kesehatan` varchar(100) NOT NULL,
  `id_datapos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `layananlansia`
--

INSERT INTO `layananlansia` (`id_lansia`, `nama_wali`, `hp_wali`, `hubungan_wali`, `agama_wali`, `riwayat_penyakit`, `bb_lansia`, `tb_lansia`, `usia_lansia`, `vaksinasi`, `statuskesehatanlansia`, `non_kesehatan`, `id_datapos`) VALUES
(1, 'ananda', '089182921', 'anak', 'islam', 'diabetes', '50', '160', '57', 'sudah', 'sehat', 'minus', 6);

-- --------------------------------------------------------

--
-- Table structure for table `topik`
--

CREATE TABLE `topik` (
  `id_topik` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsitopik` text NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `id_datapos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topik`
--

INSERT INTO `topik` (`id_topik`, `judul`, `deskripsitopik`, `kategori`, `foto`, `id_datapos`) VALUES
(6, 'bayi obesitas', 'tdk mau makan', 'balita', 'ini foto topik', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `antrian`
--
ALTER TABLE `antrian`
  ADD PRIMARY KEY (`id_antrian`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD UNIQUE KEY `id_bidan` (`id_datapos`),
  ADD UNIQUE KEY `id_datapos` (`id_datapos`);

--
-- Indexes for table `datapos`
--
ALTER TABLE `datapos`
  ADD PRIMARY KEY (`id_datapos`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id_forum`),
  ADD UNIQUE KEY `id_forum` (`id_forum`),
  ADD UNIQUE KEY `id_datapos` (`id_datapos`),
  ADD KEY `id_topik` (`id_topik`);

--
-- Indexes for table `hasilperiksa`
--
ALTER TABLE `hasilperiksa`
  ADD PRIMARY KEY (`id_hasilperiksa`),
  ADD UNIQUE KEY `id_hasilperiksa` (`id_hasilperiksa`),
  ADD UNIQUE KEY `id_datapos` (`id_datapos`);

--
-- Indexes for table `jadwalpos`
--
ALTER TABLE `jadwalpos`
  ADD PRIMARY KEY (`id_jadwalpos`),
  ADD UNIQUE KEY `id_datapos` (`id_datapos`),
  ADD KEY `id_bidan` (`id_datapos`);

--
-- Indexes for table `layananbalita`
--
ALTER TABLE `layananbalita`
  ADD PRIMARY KEY (`id_balita`),
  ADD KEY `id_datapos` (`id_datapos`);

--
-- Indexes for table `layananbumil`
--
ALTER TABLE `layananbumil`
  ADD PRIMARY KEY (`id_bumil`),
  ADD KEY `id_datapos` (`id_datapos`);

--
-- Indexes for table `layananlansia`
--
ALTER TABLE `layananlansia`
  ADD PRIMARY KEY (`id_lansia`),
  ADD KEY `id_datapos` (`id_datapos`);

--
-- Indexes for table `topik`
--
ALTER TABLE `topik`
  ADD PRIMARY KEY (`id_topik`),
  ADD UNIQUE KEY `id_topik` (`id_topik`),
  ADD UNIQUE KEY `id_datapos` (`id_datapos`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `antrian`
--
ALTER TABLE `antrian`
  MODIFY `id_antrian` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `datapos`
--
ALTER TABLE `datapos`
  MODIFY `id_datapos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `id_forum` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hasilperiksa`
--
ALTER TABLE `hasilperiksa`
  MODIFY `id_hasilperiksa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jadwalpos`
--
ALTER TABLE `jadwalpos`
  MODIFY `id_jadwalpos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `layananbalita`
--
ALTER TABLE `layananbalita`
  MODIFY `id_balita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `layananbumil`
--
ALTER TABLE `layananbumil`
  MODIFY `id_bumil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `layananlansia`
--
ALTER TABLE `layananlansia`
  MODIFY `id_lansia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `topik`
--
ALTER TABLE `topik`
  MODIFY `id_topik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `forum`
--
ALTER TABLE `forum`
  ADD CONSTRAINT `forum_ibfk_6` FOREIGN KEY (`id_topik`) REFERENCES `topik` (`id_topik`),
  ADD CONSTRAINT `forum_ibfk_8` FOREIGN KEY (`id_datapos`) REFERENCES `datapos` (`id_datapos`);

--
-- Constraints for table `hasilperiksa`
--
ALTER TABLE `hasilperiksa`
  ADD CONSTRAINT `hasilperiksa_ibfk_5` FOREIGN KEY (`id_datapos`) REFERENCES `datapos` (`id_datapos`);

--
-- Constraints for table `jadwalpos`
--
ALTER TABLE `jadwalpos`
  ADD CONSTRAINT `jadwalpos_ibfk_1` FOREIGN KEY (`id_datapos`) REFERENCES `datapos` (`id_datapos`);

--
-- Constraints for table `layananbalita`
--
ALTER TABLE `layananbalita`
  ADD CONSTRAINT `layananbalita_ibfk_1` FOREIGN KEY (`id_datapos`) REFERENCES `datapos` (`id_datapos`);

--
-- Constraints for table `layananbumil`
--
ALTER TABLE `layananbumil`
  ADD CONSTRAINT `layananbumil_ibfk_1` FOREIGN KEY (`id_datapos`) REFERENCES `datapos` (`id_datapos`);

--
-- Constraints for table `layananlansia`
--
ALTER TABLE `layananlansia`
  ADD CONSTRAINT `layananlansia_ibfk_1` FOREIGN KEY (`id_datapos`) REFERENCES `datapos` (`id_datapos`);

--
-- Constraints for table `topik`
--
ALTER TABLE `topik`
  ADD CONSTRAINT `topik_ibfk_1` FOREIGN KEY (`id_topik`) REFERENCES `datapos` (`id_datapos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
