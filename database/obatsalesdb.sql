-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2023 at 02:15 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obatsalesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `nama`, `email`, `pesan`) VALUES
(1, 'tes1', 'tes2', 'tes3'),
(2, 'tes1asd', 'tes2asd', 'tes3asd');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(60) NOT NULL,
  `join_date` date NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `nama`, `email`, `password`, `join_date`, `no_telp`) VALUES
(2, 'Meliodas', 'meliodas@gmail.com', 'asd123', '0000-00-00', '082183826123'),
(3, 'uzumaki', 'uzumaki@gmail.com', 'fgh123', '0000-00-00', '082188227733'),
(4, 'Narnia', 'narnia12@gmail.com', 'nuni3344', '0000-00-00', '087611234353'),
(5, 'Hinata', 'hinata32aa@gmail.com', 'hhasday123', '0000-00-00', '089522334411'),
(6, 'teswaktu', 'tesaja@gmail.com', 'aksdajsjdj12312', '2023-11-09', '082188227733'),
(7, 'tesalert', 'asdasdasd', 'asjdaksjkdasda', '2023-11-09', '1020312309'),
(8, 'asdasd', 'asdasda', 'asdasdasda', '2023-11-09', '082183826374'),
(9, 'doni', 'asd', '123', '2023-11-09', 'asd'),
(10, 'Hacktiv8', 'email@gmail.com', '123asd', '2023-11-09', '082183826374'),
(12, 'Arviansyah Nur', 'arviansyahnur3@gmail.com', 'tes123', '2023-11-10', '082183826374');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `obat_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `kategori` enum('Antibiotik','Analgesik','Antipiretik','Antihistamin','Vitamin dan Suplemen','Obat Herbal','Obat Kulit','Obat Mata','Obat Gigi','Obat Psikotropika') DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL CHECK (`jumlah` >= 0),
  `diskon` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`obat_id`, `nama`, `harga`, `kategori`, `jumlah`, `diskon`) VALUES
(1, 'Parasetamol', 10.00, 'Analgesik', 100, 0),
(2, 'Ibuprofen', 12.50, 'Analgesik', 80, 0),
(3, 'Aspirin', 9.25, 'Analgesik', 70, 0),
(4, 'Naproxen', 11.75, 'Analgesik', 90, 0),
(5, 'Ketoprofen', 14.00, 'Analgesik', 75, 0),
(6, 'Tramadol', 20.50, 'Analgesik', 60, 0),
(7, 'Morfine', 30.00, 'Analgesik', 30, 0),
(8, 'Kodein', 15.75, 'Analgesik', 40, 0),
(9, 'Oksikodon', 22.00, 'Analgesik', 50, 0),
(10, 'Diklofenak', 8.75, 'Analgesik', 55, 0),
(11, 'Amoksisilin', 15.50, 'Antibiotik', 50, 0),
(12, 'Ciprofloksasin', 18.75, 'Antibiotik', 40, 0),
(13, 'Eritromisin', 13.25, 'Antibiotik', 60, 0),
(14, 'Klaritromisin', 20.00, 'Antibiotik', 35, 0),
(15, 'Metronidazol', 12.50, 'Antibiotik', 45, 0),
(16, 'Doksasiklin', 14.00, 'Antibiotik', 55, 0),
(17, 'Penisilin', 10.25, 'Antibiotik', 70, 0),
(18, 'Seftriakson', 22.50, 'Antibiotik', 30, 0),
(19, 'Gentamisin', 19.75, 'Antibiotik', 25, 0),
(20, 'Amikasin', 28.00, 'Antibiotik', 20, 0),
(21, 'Parasetamol', 9.99, 'Antipiretik', 100, 0),
(22, 'Ibuprofen', 12.50, 'Antipiretik', 80, 0),
(23, 'Aspirin', 8.99, 'Antipiretik', 70, 0),
(24, 'Naproxen', 11.75, 'Antipiretik', 90, 0),
(25, 'Ketoprofen', 13.99, 'Antipiretik', 75, 0),
(26, 'Panadol', 7.99, 'Antipiretik', 60, 0),
(27, 'Dexofen', 10.99, 'Antipiretik', 85, 0),
(28, 'Mefenamic Acid', 9.50, 'Antipiretik', 45, 0),
(29, 'Paracetamol Syrup', 8.99, 'Antipiretik', 55, 0),
(30, 'Children\'s Ibuprofen', 9.99, 'Antipiretik', 40, 0),
(31, 'Loratadin', 12.99, 'Antihistamin', 100, 0),
(32, 'Cetirizin', 11.50, 'Antihistamin', 80, 0),
(33, 'Diphenhydramine', 9.99, 'Antihistamin', 70, 0),
(34, 'Fexofenadine', 10.75, 'Antihistamin', 90, 0),
(35, 'Desloratadine', 14.99, 'Antihistamin', 75, 0),
(36, 'Chlorpheniramine', 8.99, 'Antihistamin', 60, 0),
(37, 'Promethazine', 10.99, 'Antihistamin', 85, 0),
(38, 'Azatadine', 9.50, 'Antihistamin', 45, 0),
(39, 'Brompheniramine', 8.99, 'Antihistamin', 55, 0),
(40, 'Clemastine', 9.99, 'Antihistamin', 40, 0),
(41, 'Vitamin C', 7.99, 'Vitamin dan Suplemen', 100, 0),
(42, 'Vitamin D3', 9.50, 'Vitamin dan Suplemen', 80, 0),
(43, 'Vitamin B12', 8.99, 'Vitamin dan Suplemen', 70, 0),
(44, 'Multivitamin', 11.75, 'Vitamin dan Suplemen', 90, 0),
(45, 'Kalsium', 12.99, 'Vitamin dan Suplemen', 75, 0),
(46, 'Magnesium', 6.99, 'Vitamin dan Suplemen', 60, 0),
(47, 'Omega-3', 10.99, 'Vitamin dan Suplemen', 85, 0),
(48, 'Probiotik', 8.50, 'Vitamin dan Suplemen', 45, 0),
(49, 'Zinc', 7.99, 'Vitamin dan Suplemen', 55, 0),
(50, 'Selenium', 9.99, 'Vitamin dan Suplemen', 40, 0),
(51, 'Ekstrak Ginseng', 19.99, 'Obat Herbal', 100, 0),
(52, 'Daun Stevia', 12.50, 'Obat Herbal', 80, 0),
(53, 'Kulit Manggis', 8.99, 'Obat Herbal', 70, 0),
(54, 'Jahe Merah', 11.75, 'Obat Herbal', 90, 0),
(55, 'Daun Sirsak', 14.99, 'Obat Herbal', 75, 0),
(56, 'Kurkumin', 10.99, 'Obat Herbal', 60, 0),
(57, 'Lidah Buaya', 9.50, 'Obat Herbal', 85, 0),
(58, 'Bawang Putih', 7.99, 'Obat Herbal', 45, 0),
(59, 'Teh Chamomile', 8.99, 'Obat Herbal', 55, 0),
(60, 'Madu Manuka', 9.99, 'Obat Herbal', 40, 0),
(61, 'Salep Anti-Jerawat', 15.99, 'Obat Kulit', 100, 0),
(62, 'Krim Penghilang Bintik Hitam', 12.50, 'Obat Kulit', 80, 0),
(63, 'Lotion Pelembap Kulit', 8.99, 'Obat Kulit', 70, 0),
(64, 'Obat Ruam Popok', 11.75, 'Obat Kulit', 90, 0),
(65, 'Krim Anti-Gatal', 14.99, 'Obat Kulit', 75, 0),
(66, 'Salep Eksim', 10.99, 'Obat Kulit', 60, 0),
(67, 'Krim Jerawat', 9.50, 'Obat Kulit', 85, 0),
(68, 'Lotion Sunblock SPF 30', 7.99, 'Obat Kulit', 45, 0),
(69, 'Salep Psoriasis', 8.99, 'Obat Kulit', 55, 0),
(70, 'Krim Peremajaan Kulit', 9.99, 'Obat Kulit', 40, 0),
(71, 'Tetes Mata Lubrikan', 19.99, 'Obat Mata', 100, 0),
(72, 'Tetes Mata Antihistamin', 15.50, 'Obat Mata', 80, 0),
(73, 'Tetes Mata Antibakteri', 12.99, 'Obat Mata', 70, 0),
(74, 'Kacamata Matahari', 25.75, 'Obat Mata', 90, 0),
(75, 'Tetes Mata Antiinflamasi', 14.99, 'Obat Mata', 75, 0),
(76, 'Tetes Mata dengan Vitamin A', 18.50, 'Obat Mata', 60, 0),
(77, 'Lens Mata Keras', 20.99, 'Obat Mata', 85, 0),
(78, 'Kompres Mata Hangat', 9.99, 'Obat Mata', 45, 0),
(79, 'Tetes Mata Penghilang Kemerahan', 8.99, 'Obat Mata', 55, 0),
(80, 'Tetes Mata Cairan Buatan Air Mata', 11.99, 'Obat Mata', 40, 0),
(81, 'Pasta Gigi Fluoride', 7.99, 'Obat Gigi', 100, 0),
(82, 'Sikat Gigi Elektrik', 25.50, 'Obat Gigi', 80, 0),
(83, 'Obat Kumur Antiseptik', 12.99, 'Obat Gigi', 70, 0),
(84, 'Benang Gigi Waxed', 9.75, 'Obat Gigi', 90, 0),
(85, 'Sikat Gigi Anak-anak', 6.99, 'Obat Gigi', 75, 0),
(86, 'Pasta Gigi Whitening', 14.50, 'Obat Gigi', 60, 0),
(87, 'Obat Gigi untuk Gusi Sensitif', 11.99, 'Obat Gigi', 85, 0),
(88, 'Pasta Gigi Herbal', 8.99, 'Obat Gigi', 45, 0),
(89, 'Sikat Gigi Bamboo', 10.99, 'Obat Gigi', 55, 0),
(90, 'Obat Gigi untuk Nafas Segar', 9.50, 'Obat Gigi', 40, 0),
(91, 'Alprazolam', 15.99, 'Obat Psikotropika', 50, 0),
(92, 'Lorazepam', 14.50, 'Obat Psikotropika', 45, 0),
(93, 'Risperidone', 18.99, 'Obat Psikotropika', 40, 0),
(94, 'Sertraline', 17.75, 'Obat Psikotropika', 55, 0),
(95, 'Quetiapine', 16.99, 'Obat Psikotropika', 60, 0),
(96, 'Methylphenidate', 19.50, 'Obat Psikotropika', 35, 0),
(97, 'Diazepam', 13.99, 'Obat Psikotropika', 70, 0),
(98, 'Fluoxetine', 12.75, 'Obat Psikotropika', 65, 0),
(99, 'Amphetamine Salts', 15.99, 'Obat Psikotropika', 50, 0),
(100, 'Clonazepam', 14.50, 'Obat Psikotropika', 45, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`obat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `obat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
