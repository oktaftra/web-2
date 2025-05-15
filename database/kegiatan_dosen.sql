-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2025 at 10:00 AM
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
-- Database: `kegiatan_dosen`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidang_ilmu`
--

CREATE TABLE `bidang_ilmu` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bidang_ilmu`
--

INSERT INTO `bidang_ilmu` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Rekayasa Perangkat Lunak', 'Bidang yang fokus pada pengembangan perangkat lunak'),
(2, 'Kecerdasan Buatan', 'Bidang yang fokus pada AI dan machine learning');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `nidn` varchar(20) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `gelar_belakang` varchar(30) DEFAULT NULL,
  `gelar_depan` varchar(20) DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `tempat_lahir` varchar(45) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `tahun_masuk` int(11) DEFAULT NULL,
  `prodi_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nidn`, `nama`, `gelar_belakang`, `gelar_depan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `email`, `tahun_masuk`, `prodi_id`) VALUES
(1, '011234567', 'Bambang Eko', 'S.T., M.T.', 'Dr', NULL, 'Bandung', '1980-05-10', 'Jl. Braga Barat 26', 'bambangeko@example.com', 2005, 1),
(2, '011876543', 'Ahmad Firmansyah ', 'S.Kom', 'Dr', NULL, 'Surabaya', '1988-02-09', 'Jl. Sultan Hasanudin 10', 'firmansyah@gmail.com', 2008, 1),
(7, '011011330', 'Ardi Prananta', 'S.Kom', 'Dr', NULL, 'Jakarta', '1990-07-30', 'Jl. Kemang Timur 10', 'ardiprananta@gmail.com', 2020, 1),
(8, '011011430', 'Harry Gunawan', 'S.T., M.T', 'Prof', NULL, 'Bogor', '1977-10-19', 'Jl. Raya Bogor', 'harrygunawan@gmail.com', 2011, 2),
(9, '011012519', 'Refi Agustin', 'S.SI., M.SI.', 'Prof', NULL, 'Bogor', '1986-08-20', 'Jl. Jonggol 27', 'refiagustin@gmail.com', 2001, 2),
(10, '011342678', 'Oktafitria R', 'S.SI., M.SI.', 'Prof', NULL, 'Jakarta', '1980-10-14', 'Jl. Taman Indah 23', 'oktafitriarmdhni@gmail.com', 2005, 2),
(11, '011234517', 'Sri Wahyu', 'S.Kom., M.SI.', 'Dr', NULL, 'Bandung', '1989-11-27', 'Jl. Pahlawan 10', 'wahyusri@gmail.com', 2010, 2),
(13, '011014519', 'Helma Aulia', 'S.T., M.T.', 'Dr', NULL, 'Bogor', '1978-11-27', 'Jl. Cilebut 17', 'helmaaulia@gmail.com', 2004, 1),
(14, '011016729', 'Novel Abdulloh', 'S.Kom., M.SI.', 'Prof', NULL, 'Depok', '2000-10-14', 'Jl. Kartini 29', 'novelty@gmail.com', 2012, 1),
(15, '0110124199', 'Reja Ahmad', 'S.Si, M.T', 'Prof', NULL, 'Depok', '2025-05-12', 'Jl. Gundar 15', 'rejaahmad@gmail.com', 2006, 2),
(16, '0110124199', 'Indah Wulandari', 'S.Kom', 'Prof', NULL, 'Depok', '2025-05-17', 'Jl. Taman Indah 23', 'indahwulan@gmail.com', 2006, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dosen_kegiatan`
--

CREATE TABLE `dosen_kegiatan` (
  `id` int(11) NOT NULL,
  `dosen_id` int(11) NOT NULL,
  `kegiatan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen_kegiatan`
--

INSERT INTO `dosen_kegiatan` (`id`, `dosen_id`, `kegiatan_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kegiatan`
--

CREATE TABLE `jenis_kegiatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_kegiatan`
--

INSERT INTO `jenis_kegiatan` (`id`, `nama`) VALUES
(1, 'Workshop'),
(2, 'Seminar'),
(3, 'Pengabdian masyarakat');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` int(11) NOT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `tempat` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `jenis_kegiatan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `tanggal_mulai`, `tanggal_selesai`, `tempat`, `deskripsi`, `jenis_kegiatan_id`) VALUES
(1, '2025-05-15', '2025-05-15', 'Ruang Auditorium', 'Workshop Pengembangan Karir', 1),
(2, '2025-05-24', '2025-05-24', 'Univ Trilogi', 'Seminar Manajer di Dunia Teknologi', 2),
(3, '2025-05-30', '2025-05-30', 'Hotel Aston Priority Simatupang', 'Pelatihan Technical Skill', 3),
(6, '2025-05-14', '2025-05-14', 'Auditorium ', 'Workshop Pengembangan  Keterampilan Digital', 1),
(7, '2025-05-23', '2025-05-23', 'Ruang Serbaguna Univ Cakrawala', 'Seminar Inovasi dalam Industri Kreatif', 2);

-- --------------------------------------------------------

--
-- Table structure for table `penelitian`
--

CREATE TABLE `penelitian` (
  `id` int(11) NOT NULL,
  `judul` text DEFAULT NULL,
  `mulai` date DEFAULT NULL,
  `akhir` date DEFAULT NULL,
  `tahun_ajaran` varchar(5) DEFAULT NULL,
  `bidang_ilmu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penelitian`
--

INSERT INTO `penelitian` (`id`, `judul`, `mulai`, `akhir`, `tahun_ajaran`, `bidang_ilmu_id`) VALUES
(1, 'Pengembangan Aplikasi Web Responsif', '2023-01-01', '2023-06-30', '2022', 1),
(2, 'Penerapan Machine Learning dalam Prediksi Cuaca', '2023-07-01', '2023-12-31', '2023', 2),
(24, 'Iklan Online dan Digital Marketing', '2024-03-20', '2024-03-21', '2012', 1),
(25, 'Iklan Online dan Digital Marketing', '2025-05-14', '2025-05-14', '2024', 2),
(26, 'Iklan Online dan Digital Marketing', '2025-05-14', '2025-05-14', '2024', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telpon` varchar(20) DEFAULT NULL,
  `ketua` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `kode`, `nama`, `alamat`, `telpon`, `ketua`) VALUES
(1, 'TI', 'Teknik Informatika', 'Jl. Informatika No.1', '081234567890', 'Dr. Andi'),
(2, 'SI', 'Sistem Informasi', 'Jl. Sistem No.2', '081234567891', 'Dr. Budi');

-- --------------------------------------------------------

--
-- Table structure for table `tim_penelitian`
--

CREATE TABLE `tim_penelitian` (
  `id` int(11) NOT NULL,
  `dosen_id` int(11) NOT NULL,
  `penelitian_id` int(11) NOT NULL,
  `peran` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tim_penelitian`
--

INSERT INTO `tim_penelitian` (`id`, `dosen_id`, `penelitian_id`, `peran`) VALUES
(1, 1, 1, 'Ketua'),
(2, 2, 2, 'Anggota');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidang_ilmu`
--
ALTER TABLE `bidang_ilmu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prodi_id` (`prodi_id`);

--
-- Indexes for table `dosen_kegiatan`
--
ALTER TABLE `dosen_kegiatan`
  ADD PRIMARY KEY (`dosen_id`,`kegiatan_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `kegiatan_id` (`kegiatan_id`);

--
-- Indexes for table `jenis_kegiatan`
--
ALTER TABLE `jenis_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenis_kegiatan_id` (`jenis_kegiatan_id`);

--
-- Indexes for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bidang_ilmu_id` (`bidang_ilmu_id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tim_penelitian`
--
ALTER TABLE `tim_penelitian`
  ADD PRIMARY KEY (`dosen_id`,`penelitian_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `penelitian_id` (`penelitian_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidang_ilmu`
--
ALTER TABLE `bidang_ilmu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `dosen_kegiatan`
--
ALTER TABLE `dosen_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jenis_kegiatan`
--
ALTER TABLE `jenis_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `penelitian`
--
ALTER TABLE `penelitian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tim_penelitian`
--
ALTER TABLE `tim_penelitian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`prodi_id`) REFERENCES `prodi` (`id`);

--
-- Constraints for table `dosen_kegiatan`
--
ALTER TABLE `dosen_kegiatan`
  ADD CONSTRAINT `dosen_kegiatan_ibfk_1` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id`),
  ADD CONSTRAINT `dosen_kegiatan_ibfk_2` FOREIGN KEY (`kegiatan_id`) REFERENCES `kegiatan` (`id`);

--
-- Constraints for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD CONSTRAINT `kegiatan_ibfk_1` FOREIGN KEY (`jenis_kegiatan_id`) REFERENCES `jenis_kegiatan` (`id`);

--
-- Constraints for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD CONSTRAINT `penelitian_ibfk_1` FOREIGN KEY (`bidang_ilmu_id`) REFERENCES `bidang_ilmu` (`id`);

--
-- Constraints for table `tim_penelitian`
--
ALTER TABLE `tim_penelitian`
  ADD CONSTRAINT `tim_penelitian_ibfk_1` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id`),
  ADD CONSTRAINT `tim_penelitian_ibfk_2` FOREIGN KEY (`penelitian_id`) REFERENCES `penelitian` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
