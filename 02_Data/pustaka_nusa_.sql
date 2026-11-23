-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2026 pada 08.05
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustaka_nusa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL COMMENT 'Nomor urut admin',
  `id_peran` tinyint(4) NOT NULL COMMENT 'Peran akun',
  `nama_admin` varchar(100) NOT NULL COMMENT 'Nama petugas',
  `email` varchar(100) NOT NULL COMMENT 'Digunakan untuk login',
  `no_hp` varchar(20) DEFAULT NULL COMMENT 'Nomor telepon, opsional',
  `password_hash` varchar(255) NOT NULL COMMENT 'Password dalam bentuk hash, bukan teks asli',
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 aktif, 0 nonaktif',
  `dibuat_pada` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Waktu pembuatan data',
  `diubah_pada` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Waktu perubahan data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Menyimpan akun petugas dan kepala perpustakaan';

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `id_peran`, `nama_admin`, `email`, `no_hp`, `password_hash`, `aktif`, `dibuat_pada`, `diubah_pada`) VALUES
(1, 1, 'Andi Pratama', 'petugas01@pustakanusa.example', '081210000001', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(2, 2, 'Budi Saputra', 'petugas02@pustakanusa.example', '081210000002', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(3, 2, 'Citra Lestari', 'petugas03@pustakanusa.example', '081210000003', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(4, 2, 'Dewi Permata', 'petugas04@pustakanusa.example', '081210000004', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(5, 2, 'Eka Wijaya', 'petugas05@pustakanusa.example', '081210000005', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(6, 2, 'Fajar Kurniawan', 'petugas06@pustakanusa.example', '081210000006', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(7, 2, 'Gita Puspita', 'petugas07@pustakanusa.example', '081210000007', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(8, 2, 'Hendra Ramadhan', 'petugas08@pustakanusa.example', '081210000008', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(9, 3, 'Intan Anggraini', 'petugas09@pustakanusa.example', '081210000009', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(10, 3, 'Joko Setiawan', 'petugas10@pustakanusa.example', '081210000010', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(11, 3, 'Kartika Maharani', 'petugas11@pustakanusa.example', '081210000011', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(12, 3, 'Lestari Nugroho', 'petugas12@pustakanusa.example', '081210000012', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(13, 3, 'Maya Safitri', 'petugas13@pustakanusa.example', '081210000013', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(14, 3, 'Nanda Firmansyah', 'petugas14@pustakanusa.example', '081210000014', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(15, 3, 'Oki Utami', 'petugas15@pustakanusa.example', '081210000015', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(16, 3, 'Putri Hidayat', 'petugas16@pustakanusa.example', '081210000016', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(17, 3, 'Rizky Wulandari', 'petugas17@pustakanusa.example', '081210000017', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(18, 3, 'Sari Maulana', 'petugas18@pustakanusa.example', '081210000018', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(19, 3, 'Taufik Pertiwi', 'petugas19@pustakanusa.example', '081210000019', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(20, 3, 'Umi Santoso', 'petugas20@pustakanusa.example', '081210000020', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(21, 3, 'Vina Oktavia', 'petugas21@pustakanusa.example', '081210000021', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(22, 3, 'Wahyu Kusuma', 'petugas22@pustakanusa.example', '081210000022', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(23, 3, 'Yuni Ananda', 'petugas23@pustakanusa.example', '081210000023', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(24, 3, 'Zaki Putra', 'petugas24@pustakanusa.example', '081210000024', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(25, 3, 'Agus Handayani', 'petugas25@pustakanusa.example', '081210000025', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(26, 3, 'Bella Irawan', 'petugas26@pustakanusa.example', '081210000026', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(27, 3, 'Dimas Amalia', 'petugas27@pustakanusa.example', '081210000027', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 1, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(28, 3, 'Fitri Susanto', 'petugas28@pustakanusa.example', '081210000028', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 0, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(29, 3, 'Galih Rahmawati', 'petugas29@pustakanusa.example', '081210000029', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 0, '2026-11-23 06:46:21', '2026-11-23 06:46:21'),
(30, 3, 'Nia Hakim', 'petugas30@pustakanusa.example', '081210000030', '$2y$10$abcdefghijklmnopqrstuuV4n9xY7zQ2mK8pL1sT6w0a', 0, '2026-11-23 06:46:21', '2026-11-23 06:46:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL COMMENT 'Nomor urut anggota',
  `kode_anggota` varchar(20) NOT NULL COMMENT 'Kode anggota otomatis',
  `nis` varchar(20) NOT NULL COMMENT 'Nomor induk siswa',
  `nama` varchar(100) NOT NULL COMMENT 'Nama lengkap',
  `jenis_kelamin` enum('L','P') NOT NULL COMMENT 'Jenis kelamin',
  `no_hp` varchar(20) DEFAULT NULL COMMENT 'Nomor telepon, opsional',
  `alamat` varchar(255) DEFAULT NULL COMMENT 'Alamat, opsional',
  `foto_kartu` varchar(255) DEFAULT NULL COMMENT 'Lokasi berkas foto kartu',
  `tanggal_daftar` date NOT NULL COMMENT 'Tanggal pertama terdaftar',
  `dibuat_pada` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Waktu pembuatan data',
  `diubah_pada` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Waktu perubahan data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Menyimpan identitas siswa yang terdaftar sebagai anggota perpustakaan';

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `kode_anggota`, `nis`, `nama`, `jenis_kelamin`, `no_hp`, `alamat`, `foto_kartu`, `tanggal_daftar`, `dibuat_pada`, `diubah_pada`) VALUES
(1, 'PN-2021-0001', '21000001', 'Gede Pratiwi', 'L', '08935568002', 'Jl. Merdeka No. 114, RT 11/RW 05, Kel. Cempaka Putih, Kec. Cemara', '/uploads/kartu/PN-2021-0001.jpg', '2021-07-19', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(2, 'PN-2021-0002', '21000002', 'Kadek Dharma', 'P', '08932236814', 'Jl. Kartini No. 13, RT 04/RW 08, Kel. Pasir Putih, Kec. Tanjung Sari', NULL, '2021-07-21', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(3, 'PN-2021-0003', '21000003', 'Yuni Mattaliu', 'P', '08652656460', 'Jl. Flamboyan No. 77, RT 07/RW 01, Kel. Sukamaju, Kec. Harapan Mulia', '/uploads/kartu/PN-2021-0003.jpg', '2021-07-29', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(4, 'PN-2021-0004', '21000004', 'Ferdi', 'L', '08956397004', 'Jl. Cendana No. 15, RT 06/RW 03, Kel. Sukamaju, Kec. Tanjung Sari', NULL, '2021-07-15', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(5, 'PN-2021-0005', '21000005', 'Laras', 'P', '08281408614', 'Jl. Flamboyan No. 62, RT 02/RW 02, Kel. Sumber Rejo, Kec. Mekar Indah', '/uploads/kartu/PN-2021-0005.jpg', '2021-07-28', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(6, 'PN-2021-0006', '21000006', 'Dedi Simanjuntak', 'L', '087147420517', NULL, '/uploads/kartu/PN-2021-0006.jpg', '2021-07-22', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(7, 'PN-2021-0007', '21000007', 'Anisa Setiawan', 'P', '084145858410', 'Jl. Veteran No. 90, RT 10/RW 01, Kel. Sumber Rejo, Kec. Sukamakmur', '/uploads/kartu/PN-2021-0007.jpg', '2021-07-28', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(8, 'PN-2021-0008', '21000008', 'Teguh Tan', 'L', '08205673721', 'Jl. Sukajadi No. 105, RT 10/RW 03, Kel. Kebon Baru, Kec. Sukamakmur', '/uploads/kartu/PN-2021-0008.jpg', '2021-07-25', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(9, 'PN-2021-0009', '21000009', 'Ardi Harahap', 'L', '08002403822', 'Jl. Sukajadi No. 50, RT 08/RW 04, Kel. Mekarsari, Kec. Pancasila', '/uploads/kartu/PN-2021-0009.jpg', '2021-07-20', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(10, 'PN-2021-0010', '21000010', 'Wulan', 'P', '084703349229', 'Jl. Veteran No. 111, RT 01/RW 04, Kel. Cempaka Putih, Kec. Cemara', NULL, '2021-07-17', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(11, 'PN-2022-0001', '22000011', 'Salsabila', 'P', '083304842491', 'Jl. Pahlawan No. 21, RT 02/RW 05, Kel. Tanjung Harapan, Kec. Mekar Indah', NULL, '2022-07-31', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(12, 'PN-2022-0002', '22000012', 'Ketut Wirawan', 'P', '087431811574', 'Jl. Sukajadi No. 29, RT 07/RW 02, Kel. Sumber Rejo, Kec. Cemara', NULL, '2022-07-18', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(13, 'PN-2022-0003', '22000013', 'Ahmad', 'L', '088403078836', 'Jl. Bougenville No. 57, RT 07/RW 03, Kel. Sidomulyo, Kec. Tanjung Sari', '/uploads/kartu/PN-2022-0003.jpg', '2022-07-16', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(14, 'PN-2022-0004', '22000014', 'Raka Hutapea', 'L', '08013737306', 'Jl. Pahlawan No. 90, RT 08/RW 05, Kel. Cempaka Putih, Kec. Tanjung Sari', NULL, '2022-07-24', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(15, 'PN-2022-0005', '22000015', 'Rani Nainggolan', 'P', '085037680276', 'Jl. Kenanga No. 107, RT 12/RW 08, Kel. Kebon Baru, Kec. Sukamakmur', '/uploads/kartu/PN-2022-0005.jpg', '2022-07-21', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(16, 'PN-2022-0006', '22000016', 'Tasya', 'P', '089897263279', 'Jl. Diponegoro No. 89, RT 04/RW 08, Kel. Karang Tengah, Kec. Mekar Indah', '/uploads/kartu/PN-2022-0006.jpg', '2022-07-25', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(17, 'PN-2022-0007', '22000017', 'Intan', 'P', '084059390325', 'Jl. Kartini No. 74, RT 10/RW 08, Kel. Harapan Jaya, Kec. Cemara', '/uploads/kartu/PN-2022-0007.jpg', '2022-07-16', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(18, 'PN-2022-0008', '22000018', 'Yohanes Situmorang', 'L', '085901430925', 'Jl. Teratai No. 42, RT 06/RW 03, Kel. Sumber Rejo, Kec. Tanjung Sari', '/uploads/kartu/PN-2022-0008.jpg', '2022-07-19', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(19, 'PN-2022-0009', '22000019', 'Fikri Sihombing', 'L', NULL, 'Jl. Teratai No. 39, RT 03/RW 06, Kel. Mekarsari, Kec. Mekar Indah', '/uploads/kartu/PN-2022-0009.jpg', '2022-07-27', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(20, 'PN-2022-0010', '22000020', 'Hana', 'P', '08585428590', 'Jl. Anggrek No. 114, RT 07/RW 08, Kel. Sukamaju, Kec. Harapan Mulia', NULL, '2022-07-31', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(21, 'PN-2022-0011', '22000021', 'Nabila Sihombing', 'P', '085125211056', 'Jl. Flamboyan No. 68, RT 04/RW 04, Kel. Harapan Jaya, Kec. Tanjung Sari', '/uploads/kartu/PN-2022-0011.jpg', '2022-07-30', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(22, 'PN-2022-0012', '22000022', 'Dara Latuconsina', 'P', NULL, 'Jl. Melati No. 61, RT 10/RW 02, Kel. Pasir Putih, Kec. Pancasila', '/uploads/kartu/PN-2022-0012.jpg', '2022-07-24', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(23, 'PN-2022-0013', '22000023', 'Maya', 'P', '08332492177', 'Jl. Sukajadi No. 7, RT 10/RW 02, Kel. Tanjung Harapan, Kec. Sukamakmur', '/uploads/kartu/PN-2022-0013.jpg', '2022-07-27', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(24, 'PN-2022-0014', '22000024', 'Vino', 'L', '08703672766', 'Jl. Kenanga No. 81, RT 01/RW 08, Kel. Pasir Putih, Kec. Sukamakmur', NULL, '2022-07-18', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(25, 'PN-2023-0001', '23000025', 'Agung Wijaya', 'L', '082667944984', 'Jl. Teratai No. 21, RT 06/RW 05, Kel. Mekarsari, Kec. Pancasila', '/uploads/kartu/PN-2023-0001.jpg', '2023-07-26', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(26, 'PN-2023-0002', '23000026', 'Zahra', 'P', '084707803050', 'Jl. Dahlia No. 27, RT 01/RW 06, Kel. Kebon Baru, Kec. Pancasila', '/uploads/kartu/PN-2023-0002.jpg', '2023-07-15', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(27, 'PN-2023-0003', '23000027', 'Fikri Tan', 'L', '08539738980', 'Jl. Diponegoro No. 42, RT 01/RW 04, Kel. Pasir Putih, Kec. Sukamakmur', '/uploads/kartu/PN-2023-0003.jpg', '2023-07-30', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(28, 'PN-2023-0004', '23000028', 'Dewi Permana', 'P', '08536459543', 'Jl. Pahlawan No. 9, RT 07/RW 06, Kel. Pasir Putih, Kec. Sukamakmur', '/uploads/kartu/PN-2023-0004.jpg', '2023-07-23', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(29, 'PN-2023-0005', '23000029', 'Nadia', 'P', '083313575953', NULL, NULL, '2023-07-25', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(30, 'PN-2023-0006', '23000030', 'Zaki', 'L', '08937523639', 'Jl. Mawar No. 91, RT 12/RW 08, Kel. Sukamaju, Kec. Sukamakmur', '/uploads/kartu/PN-2023-0006.jpg', '2023-07-18', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(31, 'PN-2023-0007', '23000031', 'Reza Setiawan', 'L', '082756265614', 'Jl. Kartini No. 62, RT 11/RW 06, Kel. Sidomulyo, Kec. Mekar Indah', '/uploads/kartu/PN-2023-0007.jpg', '2023-07-23', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(32, 'PN-2023-0008', '23000032', 'Salsabila Halim', 'P', '08810227785', 'Jl. Pahlawan No. 69, RT 10/RW 03, Kel. Harapan Jaya, Kec. Pancasila', '/uploads/kartu/PN-2023-0008.jpg', '2023-07-31', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(33, 'PN-2023-0009', '23000033', 'Putu Ayu', 'L', '08565154711', NULL, '/uploads/kartu/PN-2023-0009.jpg', '2023-07-17', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(34, 'PN-2023-0010', '23000034', 'Vanessa', 'P', NULL, NULL, '/uploads/kartu/PN-2023-0010.jpg', '2023-07-16', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(35, 'PN-2023-0011', '23000035', 'Taufik', 'L', NULL, 'Jl. Merdeka No. 117, RT 04/RW 02, Kel. Harapan Jaya, Kec. Mekar Indah', NULL, '2023-07-18', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(36, 'PN-2023-0012', '23000036', 'Olivia', 'P', '08823968355', 'Jl. Veteran No. 78, RT 05/RW 01, Kel. Sumber Rejo, Kec. Sukamakmur', '/uploads/kartu/PN-2023-0012.jpg', '2023-07-19', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(37, 'PN-2023-0013', '23000037', 'Yohanes Sihombing', 'L', NULL, 'Jl. Flamboyan No. 102, RT 02/RW 06, Kel. Pasir Putih, Kec. Cemara', '/uploads/kartu/PN-2023-0013.jpg', '2023-07-24', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(38, 'PN-2023-0014', '23000038', 'Gita Chaniago', 'P', '086005008656', 'Jl. Kenanga No. 96, RT 11/RW 03, Kel. Sukamaju, Kec. Mekar Indah', '/uploads/kartu/PN-2023-0014.jpg', '2023-07-29', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(39, 'PN-2023-0015', '23000039', 'Ahmad Chaniago', 'L', '088726184838', 'Jl. Mawar No. 67, RT 05/RW 08, Kel. Mekarsari, Kec. Harapan Mulia', '/uploads/kartu/PN-2023-0015.jpg', '2023-07-19', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(40, 'PN-2024-0001', '24000040', 'Tiara Latuconsina', 'P', '08814290047', 'Jl. Teratai No. 117, RT 04/RW 05, Kel. Cempaka Putih, Kec. Sukamakmur', '/uploads/kartu/PN-2024-0001.jpg', '2024-07-15', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(41, 'PN-2024-0002', '24000041', 'Dara Hidayat', 'P', NULL, NULL, '/uploads/kartu/PN-2024-0002.jpg', '2024-07-29', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(42, 'PN-2024-0003', '24000042', 'Hana Chaniago', 'P', '08735176267', 'Jl. Kartini No. 5, RT 09/RW 07, Kel. Kebon Baru, Kec. Pancasila', '/uploads/kartu/PN-2024-0003.jpg', '2024-07-28', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(43, 'PN-2024-0004', '24000043', 'Bayu Chaniago', 'L', '084194963329', 'Jl. Kartini No. 21, RT 12/RW 07, Kel. Kebon Baru, Kec. Tanjung Sari', '/uploads/kartu/PN-2024-0004.jpg', '2024-07-15', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(44, 'PN-2024-0005', '24000044', 'Bayu', 'L', '08744703276', 'Jl. Melati No. 88, RT 06/RW 01, Kel. Harapan Jaya, Kec. Cemara', '/uploads/kartu/PN-2024-0005.jpg', '2024-07-27', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(45, 'PN-2024-0006', '24000045', 'Rama', 'L', '08772579363', 'Jl. Melati No. 41, RT 12/RW 07, Kel. Tanjung Harapan, Kec. Pancasila', '/uploads/kartu/PN-2024-0006.jpg', '2024-07-30', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(46, 'PN-2024-0007', '24000046', 'Rizky', 'L', '08164886583', NULL, '/uploads/kartu/PN-2024-0007.jpg', '2024-07-29', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(47, 'PN-2024-0008', '24000047', 'Olivia Tan', 'P', '08863166298', 'Jl. Teratai No. 73, RT 06/RW 03, Kel. Harapan Jaya, Kec. Harapan Mulia', '/uploads/kartu/PN-2024-0008.jpg', '2024-07-30', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(48, 'PN-2024-0009', '24000048', 'Maya Wijaya', 'P', '08866135101', 'Jl. Anggrek No. 33, RT 04/RW 01, Kel. Sidomulyo, Kec. Harapan Mulia', '/uploads/kartu/PN-2024-0009.jpg', '2024-07-25', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(49, 'PN-2024-0010', '24000049', 'Zahra Pratama', 'P', NULL, 'Jl. Kartini No. 103, RT 06/RW 01, Kel. Sumber Rejo, Kec. Harapan Mulia', '/uploads/kartu/PN-2024-0010.jpg', '2024-07-16', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(50, 'PN-2024-0011', '24000050', 'Yuni Chandra', 'P', '080136476938', 'Jl. Melati No. 24, RT 01/RW 06, Kel. Cempaka Putih, Kec. Pancasila', '/uploads/kartu/PN-2024-0011.jpg', '2024-07-15', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(51, 'PN-2024-0012', '24000051', 'Nabila', 'P', '08099440970', 'Jl. Merdeka No. 47, RT 01/RW 08, Kel. Tanjung Harapan, Kec. Sukamakmur', '/uploads/kartu/PN-2024-0012.jpg', '2024-07-19', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(52, 'PN-2024-0013', '24000052', 'Kezia', 'P', '08270961705', 'Jl. Melati No. 52, RT 03/RW 02, Kel. Tanjung Harapan, Kec. Cemara', '/uploads/kartu/PN-2024-0013.jpg', '2024-07-29', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(53, 'PN-2024-0014', '24000053', 'Shinta Halim', 'P', '08323573935', 'Jl. Pramuka No. 19, RT 09/RW 07, Kel. Karang Tengah, Kec. Mekar Indah', NULL, '2024-07-28', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(54, 'PN-2024-0015', '24000054', 'Dara Permana', 'P', '08530143505', 'Jl. Kartini No. 27, RT 09/RW 02, Kel. Sidomulyo, Kec. Harapan Mulia', '/uploads/kartu/PN-2024-0015.jpg', '2024-07-22', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(55, 'PN-2024-0016', '24000055', 'Gede Putra', 'L', '085798827950', 'Jl. Veteran No. 65, RT 06/RW 06, Kel. Cempaka Putih, Kec. Pancasila', '/uploads/kartu/PN-2024-0016.jpg', '2024-07-22', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(56, 'PN-2025-0001', '25000056', 'Kadek Sari', 'P', '086825216748', 'Jl. Melati No. 38, RT 01/RW 01, Kel. Tanjung Harapan, Kec. Sukamakmur', '/uploads/kartu/PN-2025-0001.jpg', '2025-07-21', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(57, 'PN-2025-0002', '25000057', 'Ardi Mattaliu', 'L', '08113142153', NULL, '/uploads/kartu/PN-2025-0002.jpg', '2025-07-21', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(58, 'PN-2025-0003', '25000058', 'Rani', 'P', NULL, NULL, '/uploads/kartu/PN-2025-0003.jpg', '2025-07-17', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(59, 'PN-2025-0004', '25000059', 'Made Ayu', 'L', '08265598541', 'Jl. Diponegoro No. 111, RT 06/RW 07, Kel. Pasir Putih, Kec. Pancasila', '/uploads/kartu/PN-2025-0004.jpg', '2025-07-22', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(60, 'PN-2025-0005', '25000060', 'Kirana', 'P', '081248232392', 'Jl. Cempaka No. 83, RT 09/RW 05, Kel. Cempaka Putih, Kec. Cemara', '/uploads/kartu/PN-2025-0005.jpg', '2025-07-29', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(61, 'PN-2025-0006', '25000061', 'Rizky Tan', 'L', '08380647629', 'Jl. Bougenville No. 82, RT 07/RW 01, Kel. Sidomulyo, Kec. Sukamakmur', NULL, '2025-07-24', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(62, 'PN-2025-0007', '25000062', 'Dewi Setiadi', 'P', '08569011987', 'Jl. Kamboja No. 90, RT 12/RW 03, Kel. Mekarsari, Kec. Pancasila', '/uploads/kartu/PN-2025-0007.jpg', '2025-07-15', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(63, 'PN-2025-0008', '25000063', 'Ayu', 'P', '08890754968', 'Jl. Sukajadi No. 30, RT 07/RW 08, Kel. Tanjung Harapan, Kec. Sukamakmur', NULL, '2025-07-26', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(64, 'PN-2025-0009', '25000064', 'Galih', 'L', '08579616098', 'Jl. Flamboyan No. 81, RT 08/RW 02, Kel. Cempaka Putih, Kec. Cemara', '/uploads/kartu/PN-2025-0009.jpg', '2025-07-25', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(65, 'PN-2025-0010', '25000065', 'Shinta', 'P', '08857210761', 'Jl. Bougenville No. 81, RT 10/RW 08, Kel. Tanjung Harapan, Kec. Mekar Indah', '/uploads/kartu/PN-2025-0010.jpg', '2025-07-15', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(66, 'PN-2025-0011', '25000066', 'Stefanus', 'L', NULL, 'Jl. Sukajadi No. 69, RT 09/RW 05, Kel. Cempaka Putih, Kec. Cemara', '/uploads/kartu/PN-2025-0011.jpg', '2025-07-18', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(67, 'PN-2025-0012', '25000067', 'Hendrik', 'L', '081507978340', 'Jl. Kamboja No. 74, RT 05/RW 03, Kel. Pasir Putih, Kec. Mekar Indah', '/uploads/kartu/PN-2025-0012.jpg', '2025-07-26', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(68, 'PN-2025-0013', '25000068', 'Rendi', 'L', '08366456394', 'Jl. Merdeka No. 48, RT 08/RW 04, Kel. Harapan Jaya, Kec. Tanjung Sari', '/uploads/kartu/PN-2025-0013.jpg', '2025-07-31', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(69, 'PN-2025-0014', '25000069', 'Febri', 'P', NULL, 'Jl. Dahlia No. 60, RT 04/RW 04, Kel. Kebon Baru, Kec. Cemara', '/uploads/kartu/PN-2025-0014.jpg', '2025-07-31', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(70, 'PN-2026-0001', '26000070', 'Hafiz Hutapea', 'L', NULL, 'Jl. Kamboja No. 6, RT 06/RW 02, Kel. Harapan Jaya, Kec. Mekar Indah', '/uploads/kartu/PN-2026-0001.jpg', '2026-07-24', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(71, 'PN-2026-0002', '26000071', 'Teguh', 'L', '08863796722', NULL, '/uploads/kartu/PN-2026-0002.jpg', '2026-07-22', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(72, 'PN-2026-0003', '26000072', 'Nanda', 'L', '087434453479', 'Jl. Diponegoro No. 104, RT 03/RW 01, Kel. Sidomulyo, Kec. Tanjung Sari', '/uploads/kartu/PN-2026-0003.jpg', '2026-07-25', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(73, 'PN-2026-0004', '26000073', 'Wayan Dharma', 'L', '08661046308', 'Jl. Melati No. 106, RT 06/RW 04, Kel. Kebon Baru, Kec. Mekar Indah', '/uploads/kartu/PN-2026-0004.jpg', '2026-07-17', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(74, 'PN-2026-0005', '26000074', 'Ardi', 'L', '085123607323', 'Jl. Veteran No. 113, RT 05/RW 01, Kel. Kebon Baru, Kec. Pancasila', '/uploads/kartu/PN-2026-0005.jpg', '2026-07-18', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(75, 'PN-2026-0006', '26000075', 'Maria Sihombing', 'P', '08112782924', 'Jl. Cempaka No. 101, RT 01/RW 06, Kel. Sukamaju, Kec. Pancasila', '/uploads/kartu/PN-2026-0006.jpg', '2026-07-18', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(76, 'PN-2026-0007', '26000076', 'Nabila Daeng', 'P', NULL, NULL, '/uploads/kartu/PN-2026-0007.jpg', '2026-07-30', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(77, 'PN-2026-0008', '26000077', 'Sinta', 'P', '080662277325', 'Jl. Teratai No. 68, RT 05/RW 07, Kel. Sidomulyo, Kec. Harapan Mulia', '/uploads/kartu/PN-2026-0008.jpg', '2026-07-29', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(78, 'PN-2026-0009', '26000078', 'Ardi Situmorang', 'L', '08158377978', 'Jl. Veteran No. 97, RT 03/RW 04, Kel. Sumber Rejo, Kec. Pancasila', NULL, '2026-07-24', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(79, 'PN-2026-0010', '26000079', 'Tiara Tan', 'P', '08521785516', NULL, '/uploads/kartu/PN-2026-0010.jpg', '2026-07-19', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(80, 'PN-2026-0011', '26000080', 'Nur Lim', 'P', '089575098166', NULL, NULL, '2026-07-27', '2026-11-23 06:50:42', '2026-11-23 06:50:42'),
(81, 'PN-2026-0012', '26000081', 'Dara Siregar', 'P', '085631297611', 'Jl. Kamboja No. 65, RT 10/RW 02, Kel. Karang Tengah, Kec. Harapan Mulia', '/uploads/kartu/PN-2026-0012.jpg', '2026-07-20', '2026-11-23 06:50:42', '2026-11-23 06:50:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aturan_sirkulasi`
--

CREATE TABLE `aturan_sirkulasi` (
  `id_aturan` smallint(6) NOT NULL COMMENT 'Nomor urut aturan',
  `id_jenis_koleksi` tinyint(4) NOT NULL COMMENT 'Jenis koleksi yang diatur',
  `id_admin` int(11) DEFAULT NULL COMMENT 'Admin penetap aturan, opsional',
  `masa_pinjam_hari` smallint(6) NOT NULL COMMENT 'Lama peminjaman, lebih dari nol',
  `hari_toleransi` smallint(6) NOT NULL DEFAULT 0 COMMENT 'Toleransi keterlambatan',
  `tarif_denda_per_hari` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Tarif denda per hari',
  `denda_maksimal` decimal(10,2) DEFAULT NULL COMMENT 'Batas maksimal denda; NULL berarti tanpa batas',
  `berlaku_mulai` date NOT NULL COMMENT 'Awal masa berlaku',
  `berlaku_sampai` date DEFAULT NULL COMMENT 'Akhir masa berlaku; NULL berarti masih berlaku',
  `keterangan` varchar(255) DEFAULT NULL COMMENT 'Keterangan opsional'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `aturan_sirkulasi`
--

INSERT INTO `aturan_sirkulasi` (`id_aturan`, `id_jenis_koleksi`, `id_admin`, `masa_pinjam_hari`, `hari_toleransi`, `tarif_denda_per_hari`, `denda_maksimal`, `berlaku_mulai`, `berlaku_sampai`, `keterangan`) VALUES
(1, 1, 1, 7, 0, 1000.00, 20000.00, '2022-07-15', '2023-07-14', NULL),
(2, 1, 1, 7, 0, 1000.00, 20000.00, '2023-07-15', '2024-07-14', 'Penyesuaian masa pinjam'),
(3, 1, 1, 14, 1, 1000.00, 30000.00, '2024-07-15', '2025-07-14', NULL),
(4, 1, 1, 14, 1, 1500.00, 30000.00, '2025-07-15', '2026-07-14', 'Revisi tarif denda'),
(5, 1, 1, 14, 1, 1500.00, 30000.00, '2026-07-15', NULL, 'Berlaku mulai tahun ajaran 2026/2027'),
(6, 2, 1, 14, 0, 500.00, 10000.00, '2022-07-15', '2023-07-14', NULL),
(7, 2, 1, 14, 0, 500.00, 10000.00, '2023-07-15', '2024-07-14', 'Penyesuaian masa pinjam'),
(8, 2, 1, 7, 0, 1000.00, 15000.00, '2024-07-15', '2025-07-14', NULL),
(9, 2, 1, 7, 1, 1000.00, 15000.00, '2025-07-15', '2026-07-14', 'Revisi tarif denda'),
(10, 2, 1, 7, 1, 1000.00, NULL, '2026-07-15', NULL, 'Berlaku mulai tahun ajaran 2026/2027'),
(11, 3, 1, 14, 0, 1000.00, 20000.00, '2022-07-15', '2023-07-14', NULL),
(12, 3, 1, 14, 1, 1000.00, 20000.00, '2023-07-15', '2024-07-14', 'Penyesuaian masa pinjam'),
(13, 3, 1, 14, 1, 1000.00, 20000.00, '2024-07-15', '2025-07-14', NULL),
(14, 3, 1, 14, 1, 1500.00, NULL, '2025-07-15', '2026-07-14', 'Revisi tarif denda'),
(15, 3, 1, 14, 2, 1500.00, NULL, '2026-07-15', NULL, 'Berlaku mulai tahun ajaran 2026/2027'),
(16, 5, 1, 3, 0, 1000.00, 15000.00, '2022-07-15', '2023-07-14', NULL),
(17, 5, 1, 3, 0, 1000.00, 15000.00, '2023-07-15', '2024-07-14', 'Penyesuaian masa pinjam'),
(18, 5, 1, 3, 0, 1000.00, 15000.00, '2024-07-15', '2025-07-14', NULL),
(19, 5, 1, 5, 0, 1000.00, 15000.00, '2025-07-15', '2026-07-14', 'Revisi tarif denda'),
(20, 5, 1, 5, 0, 1000.00, 15000.00, '2026-07-15', NULL, 'Berlaku mulai tahun ajaran 2026/2027'),
(21, 6, 1, 7, 0, 500.00, 10000.00, '2022-07-15', '2023-07-14', NULL),
(22, 6, 1, 7, 0, 500.00, 10000.00, '2023-07-15', '2024-07-14', 'Penyesuaian masa pinjam'),
(23, 6, 1, 7, 1, 500.00, 10000.00, '2024-07-15', '2025-07-14', NULL),
(24, 6, 1, 7, 1, 1000.00, 10000.00, '2025-07-15', '2026-07-14', 'Revisi tarif denda'),
(25, 6, 1, 7, 1, 1000.00, 10000.00, '2026-07-15', NULL, 'Berlaku mulai tahun ajaran 2026/2027'),
(26, 7, 1, 7, 0, 2000.00, 30000.00, '2022-07-15', '2023-07-14', NULL),
(27, 7, 1, 7, 0, 2000.00, 30000.00, '2023-07-15', '2024-07-14', 'Penyesuaian masa pinjam'),
(28, 7, 1, 7, 0, 2000.00, 30000.00, '2024-07-15', '2025-07-14', NULL),
(29, 7, 1, 7, 0, 2500.00, 50000.00, '2025-07-15', '2026-07-14', 'Revisi tarif denda'),
(30, 7, 1, 5, 0, 2500.00, 50000.00, '2026-07-15', NULL, 'Berlaku mulai tahun ajaran 2026/2027');

-- --------------------------------------------------------

--
-- Struktur dari tabel `audit_log`
--

CREATE TABLE `audit_log` (
  `id_audit` bigint(20) NOT NULL COMMENT 'Nomor urut catatan audit',
  `id_admin` int(11) DEFAULT NULL COMMENT 'Admin yang melakukan aktivitas; NULL jika tidak terhubung',
  `aktivitas` enum('login','logout','tambah','ubah','hapus') NOT NULL COMMENT 'Jenis aktivitas yang dicatat',
  `nama_tabel` varchar(64) DEFAULT NULL COMMENT 'Nama tabel yang terdampak, jika ada',
  `id_data` varchar(100) DEFAULT NULL COMMENT 'Identitas data yang terdampak, jika ada',
  `detail_aktivitas` text DEFAULT NULL COMMENT 'Keterangan aktivitas',
  `ip_address` varchar(45) DEFAULT NULL COMMENT 'Alamat IP pengguna, jika tersedia',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'Informasi browser/perangkat, jika tersedia',
  `dibuat_pada` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Waktu aktivitas dicatat'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Mencatat aktivitas login, logout, tambah, ubah, dan hapus';

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL COMMENT 'Nomor urut judul',
  `id_kategori` smallint(6) NOT NULL COMMENT 'Kategori buku',
  `id_penerbit` smallint(6) NOT NULL COMMENT 'Penerbit',
  `id_jenis_koleksi` tinyint(4) NOT NULL COMMENT 'Jenis koleksi',
  `kode_buku` varchar(20) NOT NULL COMMENT 'Kode judul buku',
  `nomor_panggil` varchar(40) NOT NULL COMMENT 'Nomor panggil',
  `isbn` varchar(17) DEFAULT NULL COMMENT 'ISBN jika tersedia',
  `judul_buku` varchar(255) NOT NULL COMMENT 'Judul buku',
  `tahun_terbit` smallint(6) NOT NULL COMMENT 'Tahun terbit',
  `jumlah_halaman` smallint(6) NOT NULL COMMENT 'Jumlah halaman',
  `bahasa` varchar(30) NOT NULL COMMENT 'Bahasa buku',
  `cover_buku` varchar(255) NOT NULL COMMENT 'Lokasi berkas cover',
  `sinopsis` text NOT NULL COMMENT 'Ringkasan buku',
  `dibuat_pada` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Waktu pembuatan data',
  `diubah_pada` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Waktu perubahan data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Menyimpan data bibliografi buku';

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kategori`, `id_penerbit`, `id_jenis_koleksi`, `kode_buku`, `nomor_panggil`, `isbn`, `judul_buku`, `tahun_terbit`, `jumlah_halaman`, `bahasa`, `cover_buku`, `sinopsis`, `dibuat_pada`, `diubah_pada`) VALUES
(1, 1, 1, 1, 'BKU-0001', '001.001', '9786020000001', 'Laskar Pelangi', 2005, 529, 'Indonesia', 'uploads/cover/buku_001.jpg', 'Buku Laskar Pelangi menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(2, 1, 1, 1, 'BKU-0002', '001.002', '9786020000002', 'Sang Pemimpi', 2006, 248, 'Indonesia', 'uploads/cover/buku_002.jpg', 'Buku Sang Pemimpi menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(3, 2, 4, 1, 'BKU-0003', '002.003', '9786020000003', 'Perahu Kertas', 2009, 444, 'Indonesia', 'uploads/cover/buku_003.jpg', 'Buku Perahu Kertas menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(4, 1, 3, 1, 'BKU-0004', '001.004', '9786020000004', 'Bumi', 2014, 440, 'Indonesia', 'uploads/cover/buku_004.jpg', 'Buku Bumi menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(5, 1, 4, 1, 'BKU-0005', '001.005', '9786020000005', 'Negeri 5 Menara', 2009, 423, 'Indonesia', 'uploads/cover/buku_005.jpg', 'Buku Negeri 5 Menara menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(6, 1, 4, 1, 'BKU-0006', '001.006', '9786020000006', 'Ayat-Ayat Cinta', 2004, 418, 'Indonesia', 'uploads/cover/buku_006.jpg', 'Buku Ayat-Ayat Cinta menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(7, 1, 5, 1, 'BKU-0007', '001.007', '9786020000007', 'Bumi Manusia', 1980, 535, 'Indonesia', 'uploads/cover/buku_007.jpg', 'Buku Bumi Manusia menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(8, 1, 14, 1, 'BKU-0008', '001.008', '9786020000008', 'Pulang', 2012, 464, 'Indonesia', 'uploads/cover/buku_008.jpg', 'Buku Pulang menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(9, 1, 2, 1, 'BKU-0009', '001.009', '9786020000009', 'Cantik Itu Luka', 2002, 505, 'Indonesia', 'uploads/cover/buku_009.jpg', 'Buku Cantik Itu Luka menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(10, 1, 5, 1, 'BKU-0010', '001.010', '9786020000010', 'Ronggeng Dukuh Paruk', 1982, 408, 'Indonesia', 'uploads/cover/buku_010.jpg', 'Buku Ronggeng Dukuh Paruk menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(11, 7, 5, 2, 'BKU-0011', '007.011', '9786020000011', 'Sejarah Indonesia Modern', 2008, 720, 'Indonesia', 'uploads/cover/buku_011.jpg', 'Buku Sejarah Indonesia Modern menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(12, 8, 10, 3, 'BKU-0012', '008.012', '9786020000012', 'Atlas Indonesia dan Dunia', 2020, 160, 'Indonesia', 'uploads/cover/buku_012.jpg', 'Buku Atlas Indonesia dan Dunia menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(13, 9, 3, 4, 'BKU-0013', '009.013', '9786020000013', 'Matematika SMA Kelas X', 2022, 320, 'Indonesia', 'uploads/cover/buku_013.jpg', 'Buku Matematika SMA Kelas X menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(14, 10, 3, 4, 'BKU-0014', '010.014', '9786020000014', 'Fisika untuk SMA', 2021, 350, 'Indonesia', 'uploads/cover/buku_014.jpg', 'Buku Fisika untuk SMA menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(15, 11, 3, 4, 'BKU-0015', '011.015', '9786020000015', 'Kimia Dasar SMA', 2021, 336, 'Indonesia', 'uploads/cover/buku_015.jpg', 'Buku Kimia Dasar SMA menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(16, 12, 3, 4, 'BKU-0016', '012.016', '9786020000016', 'Biologi SMA', 2022, 384, 'Indonesia', 'uploads/cover/buku_016.jpg', 'Buku Biologi SMA menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(17, 13, 8, 2, 'BKU-0017', '013.017', '9786020000017', 'Pengantar Informatika', 2023, 280, 'Indonesia', 'uploads/cover/buku_017.jpg', 'Buku Pengantar Informatika menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(18, 14, 8, 2, 'BKU-0018', '014.018', '9786020000018', 'Dasar Pemrograman Python', 2023, 310, 'Indonesia', 'uploads/cover/buku_018.jpg', 'Buku Dasar Pemrograman Python menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(19, 15, 17, 2, 'BKU-0019', '015.019', '9786020000019', 'Jaringan Komputer Dasar', 2022, 295, 'Indonesia', 'uploads/cover/buku_019.jpg', 'Buku Jaringan Komputer Dasar menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(20, 17, 6, 2, 'BKU-0020', '017.020', '9786020000020', 'Psikologi Remaja', 2019, 240, 'Indonesia', 'uploads/cover/buku_020.jpg', 'Buku Psikologi Remaja menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(21, 18, 3, 4, 'BKU-0021', '018.021', '9786020000021', 'Ekonomi untuk SMA', 2022, 300, 'Indonesia', 'uploads/cover/buku_021.jpg', 'Buku Ekonomi untuk SMA menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(22, 19, 3, 4, 'BKU-0022', '019.022', '9786020000022', 'Sosiologi Kelas XI', 2021, 288, 'Indonesia', 'uploads/cover/buku_022.jpg', 'Buku Sosiologi Kelas XI menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(23, 29, 5, 3, 'BKU-0023', '029.023', '9786020000023', 'Kamus Bahasa Indonesia', 2018, 980, 'Indonesia', 'uploads/cover/buku_023.jpg', 'Buku Kamus Bahasa Indonesia menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(24, 30, 25, 3, 'BKU-0024', '030.024', '9786020000024', 'Ensiklopedia Sains', 2020, 420, 'Indonesia', 'uploads/cover/buku_024.jpg', 'Buku Ensiklopedia Sains menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(25, 5, 11, 1, 'BKU-0025', '005.025', '9786020000025', 'Cerita Rakyat Nusantara', 2017, 220, 'Indonesia', 'uploads/cover/buku_025.jpg', 'Buku Cerita Rakyat Nusantara menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(26, 3, 5, 1, 'BKU-0026', '003.026', '9786020000026', 'Puisi-Puisi Pilihan', 2016, 180, 'Indonesia', 'uploads/cover/buku_026.jpg', 'Buku Puisi-Puisi Pilihan menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(27, 6, 14, 2, 'BKU-0027', '006.027', '9786020000027', 'Biografi Tokoh Bangsa', 2018, 260, 'Indonesia', 'uploads/cover/buku_027.jpg', 'Buku Biografi Tokoh Bangsa menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(28, 16, 7, 2, 'BKU-0028', '016.028', '9786020000028', 'Pendidikan Karakter', 2020, 230, 'Indonesia', 'uploads/cover/buku_028.jpg', 'Buku Pendidikan Karakter menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(29, 27, 19, 2, 'BKU-0029', '027.029', '9786020000029', 'Kewirausahaan untuk Pelajar', 2022, 210, 'Indonesia', 'uploads/cover/buku_029.jpg', 'Buku Kewirausahaan untuk Pelajar menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38'),
(30, 24, 18, 2, 'BKU-0030', '024.030', '9786020000030', 'Lingkungan Hidup dan Konservasi', 2021, 275, 'Indonesia', 'uploads/cover/buku_030.jpg', 'Buku Lingkungan Hidup dan Konservasi menyajikan materi dan wawasan yang relevan bagi siswa SMA. Koleksi ini dapat dimanfaatkan untuk kegiatan belajar, membaca mandiri, dan pengembangan literasi.', '2026-11-23 06:55:38', '2026-11-23 06:55:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_pengarang`
--

CREATE TABLE `buku_pengarang` (
  `id_buku` int(11) NOT NULL COMMENT 'Buku',
  `id_pengarang` int(11) NOT NULL COMMENT 'Pengarang',
  `urutan_pengarang` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Urutan penulisan pengarang'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Menghubungkan buku dengan pengarang';

--
-- Dumping data untuk tabel `buku_pengarang`
--

INSERT INTO `buku_pengarang` (`id_buku`, `id_pengarang`, `urutan_pengarang`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 2, 1),
(4, 3, 1),
(5, 4, 1),
(6, 5, 1),
(7, 7, 1),
(8, 10, 1),
(9, 9, 1),
(10, 16, 1),
(11, 27, 1),
(12, 30, 1),
(13, 30, 1),
(14, 30, 1),
(15, 30, 1),
(16, 30, 1),
(17, 25, 1),
(18, 25, 1),
(19, 25, 1),
(20, 20, 1),
(21, 27, 1),
(22, 14, 1),
(23, 30, 1),
(24, 30, 1),
(25, 24, 1),
(26, 17, 1),
(27, 28, 1),
(28, 28, 1),
(29, 25, 1),
(30, 27, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `denda`
--

CREATE TABLE `denda` (
  `id_denda` int(11) NOT NULL COMMENT 'Nomor urut denda',
  `id_pengembalian` int(11) NOT NULL COMMENT 'Asal pengembalian',
  `jenis_denda` enum('terlambat','rusak','hilang') NOT NULL COMMENT 'Jenis denda',
  `jumlah_denda` decimal(10,2) NOT NULL COMMENT 'Jumlah denda, tidak negatif',
  `keterangan` varchar(255) DEFAULT NULL COMMENT 'Rincian perhitungan',
  `status_bayar` enum('belum_bayar','lunas') NOT NULL DEFAULT 'belum_bayar' COMMENT 'Status pembayaran',
  `tanggal_bayar` date DEFAULT NULL COMMENT 'Wajib terisi jika lunas',
  `id_admin_penerima` int(11) DEFAULT NULL COMMENT 'Petugas penerima pembayaran, opsional'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `denda`
--

INSERT INTO `denda` (`id_denda`, `id_pengembalian`, `jenis_denda`, `jumlah_denda`, `keterangan`, `status_bayar`, `tanggal_bayar`, `id_admin_penerima`) VALUES
(1, 1, 'terlambat', 2000.00, 'Terlambat 2 hari', 'lunas', '2026-10-10', 2),
(2, 2, 'terlambat', 3000.00, 'Terlambat 3 hari', 'belum_bayar', NULL, NULL),
(3, 3, 'terlambat', 1000.00, 'Terlambat 1 hari', 'lunas', '2026-10-11', 4),
(4, 4, 'terlambat', 2000.00, 'Terlambat 2 hari', 'belum_bayar', NULL, NULL),
(5, 5, 'rusak', 10000.00, 'Kerusakan ringan pada sampul', 'lunas', '2026-10-15', 6),
(6, 6, 'terlambat', 1000.00, 'Terlambat 1 hari', 'lunas', '2026-10-14', 7),
(7, 7, 'terlambat', 2000.00, 'Terlambat 2 hari', 'belum_bayar', NULL, NULL),
(8, 8, 'terlambat', 3000.00, 'Terlambat 3 hari', 'lunas', '2026-10-18', 2),
(9, 9, 'terlambat', 1000.00, 'Terlambat 1 hari', 'belum_bayar', NULL, NULL),
(10, 10, 'hilang', 50000.00, 'Penggantian buku hilang', 'belum_bayar', NULL, NULL),
(11, 11, 'terlambat', 3000.00, 'Terlambat 3 hari', 'lunas', '2026-10-21', 5),
(12, 12, 'terlambat', 1000.00, 'Terlambat 1 hari', 'belum_bayar', NULL, NULL),
(13, 13, 'terlambat', 2000.00, 'Terlambat 2 hari', 'lunas', '2026-10-22', 7),
(14, 14, 'terlambat', 3000.00, 'Terlambat 3 hari', 'belum_bayar', NULL, NULL),
(15, 15, 'rusak', 10000.00, 'Kerusakan ringan pada sampul', 'lunas', '2026-10-23', 2),
(16, 16, 'terlambat', 2000.00, 'Terlambat 2 hari', 'belum_bayar', NULL, NULL),
(17, 17, 'terlambat', 3000.00, 'Terlambat 3 hari', 'lunas', '2026-10-27', 4),
(18, 18, 'terlambat', 1000.00, 'Terlambat 1 hari', 'belum_bayar', NULL, NULL),
(19, 19, 'terlambat', 2000.00, 'Terlambat 2 hari', 'lunas', '2026-10-28', 6),
(20, 20, 'hilang', 50000.00, 'Penggantian buku hilang', 'belum_bayar', NULL, NULL),
(21, 21, 'terlambat', 1000.00, 'Terlambat 1 hari', 'lunas', '2026-10-29', 8),
(22, 22, 'terlambat', 2000.00, 'Terlambat 2 hari', 'belum_bayar', NULL, NULL),
(23, 23, 'terlambat', 3000.00, 'Terlambat 3 hari', 'lunas', '2026-11-02', 3),
(24, 24, 'terlambat', 1000.00, 'Terlambat 1 hari', 'belum_bayar', NULL, NULL),
(25, 25, 'rusak', 10000.00, 'Kerusakan ringan pada sampul', 'lunas', '2026-11-03', 5),
(26, 26, 'terlambat', 3000.00, 'Terlambat 3 hari', 'belum_bayar', NULL, NULL),
(27, 27, 'terlambat', 1000.00, 'Terlambat 1 hari', 'lunas', '2026-11-04', 7),
(28, 28, 'terlambat', 2000.00, 'Terlambat 2 hari', 'belum_bayar', NULL, NULL),
(29, 29, 'terlambat', 3000.00, 'Terlambat 3 hari', 'lunas', '2026-11-08', 2),
(30, 30, 'hilang', 50000.00, 'Penggantian buku hilang', 'belum_bayar', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_peminjaman`
--

CREATE TABLE `detail_peminjaman` (
  `id_detail_peminjaman` int(11) NOT NULL COMMENT 'Nomor urut detail',
  `id_peminjaman` int(11) NOT NULL COMMENT 'Transaksi induk',
  `id_eksemplar` int(11) NOT NULL COMMENT 'Fisik buku yang dipinjam',
  `id_aturan` smallint(6) NOT NULL COMMENT 'Aturan yang berlaku saat peminjaman',
  `tanggal_jatuh_tempo` date NOT NULL COMMENT 'Tanggal pinjam ditambah masa pinjam'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Menyimpan daftar eksemplar dalam transaksi peminjaman';

--
-- Dumping data untuk tabel `detail_peminjaman`
--

INSERT INTO `detail_peminjaman` (`id_detail_peminjaman`, `id_peminjaman`, `id_eksemplar`, `id_aturan`, `tanggal_jatuh_tempo`) VALUES
(1, 1, 1, 26, '2026-10-08'),
(2, 2, 2, 26, '2026-10-09'),
(3, 3, 3, 26, '2026-10-10'),
(4, 4, 4, 26, '2026-10-11'),
(5, 5, 5, 26, '2026-10-12'),
(6, 6, 6, 26, '2026-10-13'),
(7, 7, 7, 26, '2026-10-14'),
(8, 8, 8, 26, '2026-10-15'),
(9, 9, 9, 26, '2026-10-16'),
(10, 10, 10, 26, '2026-10-17'),
(11, 11, 11, 26, '2026-10-18'),
(12, 12, 12, 26, '2026-10-19'),
(13, 13, 13, 26, '2026-10-20'),
(14, 14, 14, 26, '2026-10-21'),
(15, 15, 15, 26, '2026-10-22'),
(16, 16, 16, 26, '2026-10-23'),
(17, 17, 17, 26, '2026-10-24'),
(18, 18, 18, 26, '2026-10-25'),
(19, 19, 19, 26, '2026-10-26'),
(20, 20, 20, 26, '2026-10-27'),
(21, 21, 21, 26, '2026-10-28'),
(22, 22, 22, 26, '2026-10-29'),
(23, 23, 23, 26, '2026-10-30'),
(24, 24, 24, 26, '2026-10-31'),
(25, 25, 25, 26, '2026-11-01'),
(26, 26, 26, 26, '2026-11-02'),
(27, 27, 27, 26, '2026-11-03'),
(28, 28, 28, 26, '2026-11-04'),
(29, 29, 29, 26, '2026-11-05'),
(30, 30, 30, 26, '2026-11-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `eksemplar`
--

CREATE TABLE `eksemplar` (
  `id_eksemplar` int(11) NOT NULL COMMENT 'Nomor urut fisik buku',
  `id_buku` int(11) NOT NULL COMMENT 'Judul buku yang dimiliki',
  `kode_eksemplar` varchar(30) NOT NULL COMMENT 'Kode barcode eksemplar',
  `no_eksemplar` smallint(6) NOT NULL COMMENT 'Nomor salinan buku',
  `kondisi` enum('baik','rusak_ringan','rusak_berat') NOT NULL DEFAULT 'baik' COMMENT 'Kondisi fisik',
  `status_ketersediaan` enum('tersedia','dipinjam','dalam_perbaikan','hilang') NOT NULL DEFAULT 'tersedia' COMMENT 'Status eksemplar',
  `lokasi_rak` varchar(30) NOT NULL COMMENT 'Lokasi rak',
  `tanggal_masuk` date NOT NULL COMMENT 'Tanggal koleksi masuk'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Menyimpan data setiap salinan fisik buku';

--
-- Dumping data untuk tabel `eksemplar`
--

INSERT INTO `eksemplar` (`id_eksemplar`, `id_buku`, `kode_eksemplar`, `no_eksemplar`, `kondisi`, `status_ketersediaan`, `lokasi_rak`, `tanggal_masuk`) VALUES
(1, 1, 'EK-0001-01', 1, 'baik', 'tersedia', 'R-02', '2022-02-15'),
(2, 1, 'EK-0001-02', 2, 'baik', 'tersedia', 'R-02', '2022-02-15'),
(3, 2, 'EK-0002-01', 1, 'baik', 'tersedia', 'S-03', '2023-03-15'),
(4, 2, 'EK-0002-02', 2, 'baik', 'tersedia', 'S-03', '2023-03-15'),
(5, 3, 'EK-0003-01', 1, 'baik', 'tersedia', 'R-04', '2024-04-15'),
(6, 3, 'EK-0003-02', 2, 'baik', 'tersedia', 'R-04', '2024-04-15'),
(7, 4, 'EK-0004-01', 1, 'baik', 'tersedia', 'S-05', '2025-05-15'),
(8, 4, 'EK-0004-02', 2, 'baik', 'tersedia', 'S-05', '2025-05-15'),
(9, 5, 'EK-0005-01', 1, 'rusak_ringan', 'dalam_perbaikan', 'R-01', '2021-06-15'),
(10, 5, 'EK-0005-02', 2, 'baik', 'tersedia', 'R-01', '2021-06-15'),
(11, 6, 'EK-0006-01', 1, 'baik', 'tersedia', 'S-02', '2022-07-15'),
(12, 6, 'EK-0006-02', 2, 'baik', 'tersedia', 'S-02', '2022-07-15'),
(13, 7, 'EK-0007-01', 1, 'baik', 'tersedia', 'R-03', '2023-08-15'),
(14, 7, 'EK-0007-02', 2, 'baik', 'tersedia', 'R-03', '2023-08-15'),
(15, 8, 'EK-0008-01', 1, 'baik', 'tersedia', 'S-04', '2024-09-15'),
(16, 8, 'EK-0008-02', 2, 'baik', 'tersedia', 'S-04', '2024-09-15'),
(17, 9, 'EK-0009-01', 1, 'baik', 'tersedia', 'R-05', '2025-10-15'),
(18, 9, 'EK-0009-02', 2, 'baik', 'tersedia', 'R-05', '2025-10-15'),
(19, 10, 'EK-0010-01', 1, 'baik', 'tersedia', 'S-01', '2021-11-15'),
(20, 10, 'EK-0010-02', 2, 'baik', 'tersedia', 'S-01', '2021-11-15'),
(21, 11, 'EK-0011-01', 1, 'baik', 'tersedia', 'R-02', '2022-12-15'),
(22, 11, 'EK-0011-02', 2, 'baik', 'tersedia', 'R-02', '2022-12-15'),
(23, 12, 'EK-0012-01', 1, 'baik', 'tersedia', 'S-03', '2023-01-15'),
(24, 12, 'EK-0012-02', 2, 'baik', 'tersedia', 'S-03', '2023-01-15'),
(25, 13, 'EK-0013-01', 1, 'baik', 'tersedia', 'R-04', '2024-02-15'),
(26, 13, 'EK-0013-02', 2, 'baik', 'tersedia', 'R-04', '2024-02-15'),
(27, 14, 'EK-0014-01', 1, 'baik', 'tersedia', 'S-05', '2025-03-15'),
(28, 14, 'EK-0014-02', 2, 'rusak_ringan', 'dalam_perbaikan', 'S-05', '2025-03-15'),
(29, 15, 'EK-0015-01', 1, 'baik', 'tersedia', 'R-01', '2021-04-15'),
(30, 15, 'EK-0015-02', 2, 'baik', 'tersedia', 'R-01', '2021-04-15'),
(31, 16, 'EK-0016-01', 1, 'baik', 'tersedia', 'S-02', '2022-05-15'),
(32, 16, 'EK-0016-02', 2, 'baik', 'tersedia', 'S-02', '2022-05-15'),
(33, 17, 'EK-0017-01', 1, 'baik', 'tersedia', 'R-03', '2023-06-15'),
(34, 17, 'EK-0017-02', 2, 'baik', 'tersedia', 'R-03', '2023-06-15'),
(35, 18, 'EK-0018-01', 1, 'baik', 'tersedia', 'S-04', '2024-07-15'),
(36, 18, 'EK-0018-02', 2, 'baik', 'tersedia', 'S-04', '2024-07-15'),
(37, 19, 'EK-0019-01', 1, 'baik', 'tersedia', 'R-05', '2025-08-15'),
(38, 19, 'EK-0019-02', 2, 'baik', 'tersedia', 'R-05', '2025-08-15'),
(39, 20, 'EK-0020-01', 1, 'baik', 'tersedia', 'S-01', '2021-09-15'),
(40, 20, 'EK-0020-02', 2, 'baik', 'tersedia', 'S-01', '2021-09-15'),
(41, 21, 'EK-0021-01', 1, 'baik', 'tersedia', 'R-02', '2022-10-15'),
(42, 21, 'EK-0021-02', 2, 'baik', 'tersedia', 'R-02', '2022-10-15'),
(43, 22, 'EK-0022-01', 1, 'rusak_ringan', 'dalam_perbaikan', 'S-03', '2023-11-15'),
(44, 22, 'EK-0022-02', 2, 'baik', 'tersedia', 'S-03', '2023-11-15'),
(45, 23, 'EK-0023-01', 1, 'baik', 'tersedia', 'R-04', '2024-12-15'),
(46, 23, 'EK-0023-02', 2, 'baik', 'tersedia', 'R-04', '2024-12-15'),
(47, 24, 'EK-0024-01', 1, 'baik', 'tersedia', 'S-05', '2025-01-15'),
(48, 24, 'EK-0024-02', 2, 'baik', 'tersedia', 'S-05', '2025-01-15'),
(49, 25, 'EK-0025-01', 1, 'baik', 'tersedia', 'R-01', '2021-02-15'),
(50, 25, 'EK-0025-02', 2, 'baik', 'tersedia', 'R-01', '2021-02-15'),
(51, 26, 'EK-0026-01', 1, 'baik', 'tersedia', 'S-02', '2022-03-15'),
(52, 26, 'EK-0026-02', 2, 'baik', 'tersedia', 'S-02', '2022-03-15'),
(53, 27, 'EK-0027-01', 1, 'baik', 'tersedia', 'R-03', '2023-04-15'),
(54, 27, 'EK-0027-02', 2, 'baik', 'tersedia', 'R-03', '2023-04-15'),
(55, 28, 'EK-0028-01', 1, 'baik', 'tersedia', 'S-04', '2024-05-15'),
(56, 28, 'EK-0028-02', 2, 'baik', 'tersedia', 'S-04', '2024-05-15'),
(57, 29, 'EK-0029-01', 1, 'baik', 'tersedia', 'R-05', '2025-06-15'),
(58, 29, 'EK-0029-02', 2, 'baik', 'tersedia', 'R-05', '2025-06-15'),
(59, 30, 'EK-0030-01', 1, 'baik', 'tersedia', 'S-01', '2021-07-15'),
(60, 30, 'EK-0030-02', 2, 'baik', 'tersedia', 'S-01', '2021-07-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_koleksi`
--

CREATE TABLE `jenis_koleksi` (
  `id_jenis_koleksi` tinyint(4) NOT NULL COMMENT 'Nomor urut jenis',
  `kode_jenis` varchar(10) NOT NULL COMMENT 'Kode jenis koleksi',
  `nama_jenis` varchar(50) NOT NULL COMMENT 'Nama jenis koleksi',
  `dapat_dipinjam` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Penanda apakah koleksi dapat dipinjam',
  `keterangan` varchar(255) DEFAULT NULL COMMENT 'Keterangan opsional'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Menyimpan jenis koleksi buku';

--
-- Dumping data untuk tabel `jenis_koleksi`
--

INSERT INTO `jenis_koleksi` (`id_jenis_koleksi`, `kode_jenis`, `nama_jenis`, `dapat_dipinjam`, `keterangan`) VALUES
(1, 'PEL', 'Buku PELAJARAN', 1, 'Buku pelajaran sesuai kurikulum sekolah'),
(2, 'FIKSI', 'Fiksi', 1, 'Novel, kumpulan cerpen, dan puisi'),
(3, 'NONFIKSI', 'Non-Fiksi', 1, 'Buku pengetahuan umum dan populer'),
(4, 'REF', 'Referensi', 0, 'Kamus, ensiklopedia, dan atlas; hanya dibaca di tempat'),
(5, 'MAJALAH', 'Majalah', 1, 'Terbitan berkala'),
(6, 'KOMIK', 'Komik', 1, 'Komik dan novel grafis'),
(7, 'MULTIMEDIA', 'Multimedia', 1, 'CD, DVD, dan media pembelajaran digital'),
(8, 'NUSANTARA', 'Koleksi Nusantara', 0, 'Koleksi budaya dan daerah; akses di ruang baca khusus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` smallint(6) NOT NULL COMMENT 'Nomor urut kategori',
  `kode_kategori` varchar(10) NOT NULL COMMENT 'Kode kategori',
  `kode_klasifikasi` varchar(12) NOT NULL COMMENT 'Kode klasifikasi, misalnya DDC',
  `nama_kategori` varchar(100) NOT NULL COMMENT 'Nama kategori',
  `keterangan` text DEFAULT NULL COMMENT 'Keterangan opsional'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Menyimpan kategori dan klasifikasi buku';

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kode_kategori`, `kode_klasifikasi`, `nama_kategori`, `keterangan`) VALUES
(1, 'KAT-001', '813', 'Fiksi Indonesia', 'Koleksi kategori fiksi indonesia untuk kebutuhan pembelajaran dan literasi.'),
(2, 'KAT-002', '823', 'Fiksi Terjemahan', 'Koleksi kategori fiksi terjemahan untuk kebutuhan pembelajaran dan literasi.'),
(3, 'KAT-003', '811', 'Puisi', 'Koleksi kategori puisi untuk kebutuhan pembelajaran dan literasi.'),
(4, 'KAT-004', '812', 'Drama', 'Koleksi kategori drama untuk kebutuhan pembelajaran dan literasi.'),
(5, 'KAT-005', '398', 'Cerita Rakyat', 'Koleksi kategori cerita rakyat untuk kebutuhan pembelajaran dan literasi.'),
(6, 'KAT-006', '920', 'Biografi', 'Koleksi kategori biografi untuk kebutuhan pembelajaran dan literasi.'),
(7, 'KAT-007', '959', 'Sejarah Indonesia', 'Koleksi kategori sejarah indonesia untuk kebutuhan pembelajaran dan literasi.'),
(8, 'KAT-008', '910', 'Geografi', 'Koleksi kategori geografi untuk kebutuhan pembelajaran dan literasi.'),
(9, 'KAT-009', '510', 'Matematika', 'Koleksi kategori matematika untuk kebutuhan pembelajaran dan literasi.'),
(10, 'KAT-010', '530', 'Fisika', 'Koleksi kategori fisika untuk kebutuhan pembelajaran dan literasi.'),
(11, 'KAT-011', '540', 'Kimia', 'Koleksi kategori kimia untuk kebutuhan pembelajaran dan literasi.'),
(12, 'KAT-012', '570', 'Biologi', 'Koleksi kategori biologi untuk kebutuhan pembelajaran dan literasi.'),
(13, 'KAT-013', '004', 'Informatika', 'Koleksi kategori informatika untuk kebutuhan pembelajaran dan literasi.'),
(14, 'KAT-014', '005', 'Pemrograman', 'Koleksi kategori pemrograman untuk kebutuhan pembelajaran dan literasi.'),
(15, 'KAT-015', '004.6', 'Jaringan Komputer', 'Koleksi kategori jaringan komputer untuk kebutuhan pembelajaran dan literasi.'),
(16, 'KAT-016', '370', 'Pendidikan', 'Koleksi kategori pendidikan untuk kebutuhan pembelajaran dan literasi.'),
(17, 'KAT-017', '150', 'Psikologi', 'Koleksi kategori psikologi untuk kebutuhan pembelajaran dan literasi.'),
(18, 'KAT-018', '330', 'Ekonomi', 'Koleksi kategori ekonomi untuk kebutuhan pembelajaran dan literasi.'),
(19, 'KAT-019', '301', 'Sosiologi', 'Koleksi kategori sosiologi untuk kebutuhan pembelajaran dan literasi.'),
(20, 'KAT-020', '410', 'Bahasa Indonesia', 'Koleksi kategori bahasa indonesia untuk kebutuhan pembelajaran dan literasi.'),
(21, 'KAT-021', '420', 'Bahasa Inggris', 'Koleksi kategori bahasa inggris untuk kebutuhan pembelajaran dan literasi.'),
(22, 'KAT-022', '200', 'Agama dan Etika', 'Koleksi kategori agama dan etika untuk kebutuhan pembelajaran dan literasi.'),
(23, 'KAT-023', '610', 'Kesehatan', 'Koleksi kategori kesehatan untuk kebutuhan pembelajaran dan literasi.'),
(24, 'KAT-024', '333.7', 'Lingkungan', 'Koleksi kategori lingkungan untuk kebutuhan pembelajaran dan literasi.'),
(25, 'KAT-025', '700', 'Seni dan Musik', 'Koleksi kategori seni dan musik untuk kebutuhan pembelajaran dan literasi.'),
(26, 'KAT-026', '796', 'Olahraga', 'Koleksi kategori olahraga untuk kebutuhan pembelajaran dan literasi.'),
(27, 'KAT-027', '658', 'Kewirausahaan', 'Koleksi kategori kewirausahaan untuk kebutuhan pembelajaran dan literasi.'),
(28, 'KAT-028', '630', 'Pertanian', 'Koleksi kategori pertanian untuk kebutuhan pembelajaran dan literasi.'),
(29, 'KAT-029', '413', 'Kamus', 'Koleksi kategori kamus untuk kebutuhan pembelajaran dan literasi.'),
(30, 'KAT-030', '030', 'Ensiklopedia', 'Koleksi kategori ensiklopedia untuk kebutuhan pembelajaran dan literasi.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keanggotaan`
--

CREATE TABLE `keanggotaan` (
  `id_keanggotaan` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `id_tahun_ajaran` smallint(6) NOT NULL,
  `id_kelas` smallint(6) NOT NULL,
  `nomor_kartu` varchar(20) NOT NULL,
  `status_keanggotaan` enum('aktif','selesai','lulus','dibekukan') NOT NULL DEFAULT 'aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `keanggotaan`
--

INSERT INTO `keanggotaan` (`id_keanggotaan`, `id_anggota`, `id_tahun_ajaran`, `id_kelas`, `nomor_kartu`, `status_keanggotaan`) VALUES
(1, 1, 24, 7, 'KRT-0001-23', 'lulus'),
(2, 2, 24, 8, 'KRT-0002-23', 'lulus'),
(3, 3, 24, 9, 'KRT-0003-23', 'lulus'),
(4, 4, 24, 7, 'KRT-0004-23', 'lulus'),
(5, 5, 24, 8, 'KRT-0005-23', 'lulus'),
(6, 6, 24, 9, 'KRT-0006-23', 'lulus'),
(7, 7, 24, 7, 'KRT-0007-23', 'lulus'),
(8, 8, 24, 8, 'KRT-0008-23', 'lulus'),
(9, 9, 24, 9, 'KRT-0009-23', 'lulus'),
(10, 10, 24, 7, 'KRT-0010-23', 'lulus'),
(11, 11, 24, 4, 'KRT-0011-23', 'aktif'),
(12, 12, 24, 5, 'KRT-0012-23', 'aktif'),
(13, 13, 24, 6, 'KRT-0013-23', 'aktif'),
(14, 14, 24, 4, 'KRT-0014-23', 'aktif'),
(15, 15, 24, 5, 'KRT-0015-23', 'aktif'),
(16, 16, 24, 6, 'KRT-0016-23', 'aktif'),
(17, 17, 24, 4, 'KRT-0017-23', 'aktif'),
(18, 18, 24, 5, 'KRT-0018-23', 'aktif'),
(19, 19, 24, 6, 'KRT-0019-23', 'aktif'),
(20, 20, 24, 4, 'KRT-0020-23', 'aktif'),
(21, 21, 24, 5, 'KRT-0021-23', 'aktif'),
(22, 22, 24, 6, 'KRT-0022-23', 'aktif'),
(23, 23, 24, 4, 'KRT-0023-23', 'aktif'),
(24, 24, 24, 5, 'KRT-0024-23', 'aktif'),
(25, 25, 24, 1, 'KRT-0025-23', 'aktif'),
(26, 26, 24, 2, 'KRT-0026-23', 'aktif'),
(27, 27, 24, 3, 'KRT-0027-23', 'aktif'),
(28, 28, 24, 1, 'KRT-0028-23', 'aktif'),
(29, 29, 24, 2, 'KRT-0029-23', 'aktif'),
(30, 30, 24, 3, 'KRT-0030-23', 'aktif'),
(31, 31, 24, 1, 'KRT-0031-23', 'aktif'),
(32, 32, 24, 2, 'KRT-0032-23', 'aktif'),
(33, 33, 24, 3, 'KRT-0033-23', 'aktif'),
(34, 34, 24, 1, 'KRT-0034-23', 'aktif'),
(35, 35, 24, 2, 'KRT-0035-23', 'aktif'),
(36, 36, 24, 3, 'KRT-0036-23', 'aktif'),
(37, 37, 24, 1, 'KRT-0037-23', 'aktif'),
(38, 38, 24, 2, 'KRT-0038-23', 'aktif'),
(39, 39, 24, 3, 'KRT-0039-23', 'aktif'),
(40, 11, 25, 16, 'KRT-0011-24', 'lulus'),
(41, 12, 25, 17, 'KRT-0012-24', 'lulus'),
(42, 13, 25, 18, 'KRT-0013-24', 'lulus'),
(43, 14, 25, 16, 'KRT-0014-24', 'lulus'),
(44, 15, 25, 17, 'KRT-0015-24', 'lulus'),
(45, 16, 25, 18, 'KRT-0016-24', 'lulus'),
(46, 17, 25, 16, 'KRT-0017-24', 'lulus'),
(47, 18, 25, 17, 'KRT-0018-24', 'lulus'),
(48, 19, 25, 18, 'KRT-0019-24', 'lulus'),
(49, 20, 25, 16, 'KRT-0020-24', 'lulus'),
(50, 21, 25, 17, 'KRT-0021-24', 'lulus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` smallint(6) NOT NULL COMMENT 'Nomor urut kelas',
  `id_tahun_ajaran` smallint(6) NOT NULL COMMENT 'Tahun ajaran kelas',
  `tingkat` enum('X','XI','XII') NOT NULL COMMENT 'Tingkat kelas',
  `nama_kelas` varchar(20) NOT NULL COMMENT 'Contoh X-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Menyimpan kelas siswa berdasarkan tahun ajaran';

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `id_tahun_ajaran`, `tingkat`, `nama_kelas`) VALUES
(1, 24, 'X', 'X-1'),
(2, 24, 'X', 'X-2'),
(3, 24, 'X', 'X-3'),
(4, 24, 'XI', 'XI-1'),
(5, 24, 'XI', 'XI-2'),
(6, 24, 'XI', 'XI-3'),
(7, 24, 'XII', 'XII-1'),
(8, 24, 'XII', 'XII-2'),
(9, 24, 'XII', 'XII-3'),
(10, 25, 'X', 'X-1'),
(11, 25, 'X', 'X-2'),
(12, 25, 'X', 'X-3'),
(13, 25, 'XI', 'XI-1'),
(14, 25, 'XI', 'XI-2'),
(15, 25, 'XI', 'XI-3'),
(16, 25, 'XII', 'XII-1'),
(17, 25, 'XII', 'XII-2'),
(18, 25, 'XII', 'XII-3'),
(19, 26, 'X', 'X-1'),
(20, 26, 'X', 'X-2'),
(21, 26, 'X', 'X-3'),
(22, 26, 'XI', 'XI-1'),
(23, 26, 'XI', 'XI-2'),
(24, 26, 'XI', 'XI-3'),
(25, 26, 'XII', 'XII-1'),
(26, 26, 'XII', 'XII-2'),
(27, 26, 'XII', 'XII-3'),
(28, 27, 'X', 'X-1'),
(29, 27, 'X', 'X-2'),
(30, 27, 'X', 'X-3'),
(31, 27, 'XI', 'XI-1'),
(32, 27, 'XI', 'XI-2'),
(33, 27, 'XI', 'XI-3'),
(34, 27, 'XII', 'XII-1'),
(35, 27, 'XII', 'XII-2'),
(36, 27, 'XII', 'XII-3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL COMMENT 'Nomor urut transaksi',
  `kode_transaksi` varchar(25) NOT NULL COMMENT 'Kode transaksi',
  `id_keanggotaan` int(11) NOT NULL COMMENT 'Anggota yang meminjam pada tahun ajaran tersebut',
  `id_admin` int(11) NOT NULL COMMENT 'Petugas yang melayani',
  `tanggal_pinjam` date NOT NULL COMMENT 'Tanggal transaksi',
  `catatan` varchar(255) DEFAULT NULL COMMENT 'Catatan opsional'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Menyimpan transaksi peminjaman';

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `kode_transaksi`, `id_keanggotaan`, `id_admin`, `tanggal_pinjam`, `catatan`) VALUES
(1, 'PJM-2026-0001', 1, 2, '2026-10-01', 'Meminjam buku untuk menyelesaikan tugas mata pelajaran Bahasa Indonesia'),
(2, 'PJM-2026-0002', 2, 3, '2026-10-02', 'Meminjam novel untuk kegiatan membaca mandiri'),
(3, 'PJM-2026-0003', 3, 4, '2026-10-03', 'Meminjam buku referensi sebagai bahan tambahan pembelajaran'),
(4, 'PJM-2026-0004', 4, 5, '2026-10-04', 'Meminjam buku untuk persiapan ujian tengah semester'),
(5, 'PJM-2026-0005', 5, 6, '2026-10-05', 'Meminjam buku pengetahuan umum untuk menambah wawasan'),
(6, 'PJM-2026-0006', 6, 7, '2026-10-06', 'Meminjam buku sebagai sumber referensi tugas kelompok'),
(7, 'PJM-2026-0007', 7, 8, '2026-10-07', 'Meminjam buku cerita untuk kegiatan literasi sekolah'),
(8, 'PJM-2026-0008', 8, 2, '2026-10-08', 'Meminjam buku untuk dipelajari kembali di rumah'),
(9, 'PJM-2026-0009', 9, 3, '2026-10-09', 'Meminjam buku materi pelajaran untuk memperdalam pemahaman'),
(10, 'PJM-2026-0010', 10, 4, '2026-10-10', 'Meminjam buku sebagai referensi penyusunan laporan'),
(11, 'PJM-2026-0011', 11, 5, '2026-10-11', 'Meminjam buku untuk keperluan belajar mandiri'),
(12, 'PJM-2026-0012', 12, 6, '2026-10-12', 'Meminjam buku sejarah untuk melengkapi tugas sekolah'),
(13, 'PJM-2026-0013', 13, 7, '2026-10-13', 'Meminjam buku pengetahuan alam untuk bahan diskusi kelas'),
(14, 'PJM-2026-0014', 14, 8, '2026-10-14', 'Meminjam buku panduan sebagai bahan belajar tambahan'),
(15, 'PJM-2026-0015', 15, 2, '2026-10-15', 'Meminjam buku fiksi untuk mengisi waktu luang'),
(16, 'PJM-2026-0016', 16, 3, '2026-10-16', 'Meminjam buku untuk mendukung kegiatan proyek pembelajaran'),
(17, 'PJM-2026-0017', 17, 4, '2026-10-17', 'Meminjam buku informatika untuk mempelajari materi teknologi'),
(18, 'PJM-2026-0018', 18, 5, '2026-10-18', 'Meminjam buku sebagai bahan persiapan presentasi kelompok'),
(19, 'PJM-2026-0019', 19, 6, '2026-10-19', 'Meminjam buku referensi untuk mengerjakan latihan soal'),
(20, 'PJM-2026-0020', 20, 7, '2026-10-20', 'Meminjam buku untuk kegiatan membaca di perpustakaan rumah'),
(21, 'PJM-2026-0021', 21, 8, '2026-10-21', 'Meminjam buku ekonomi untuk menunjang pembelajaran'),
(22, 'PJM-2026-0022', 22, 2, '2026-10-22', 'Meminjam buku geografi sebagai sumber informasi tugas'),
(23, 'PJM-2026-0023', 23, 3, '2026-10-23', 'Meminjam buku untuk menambah referensi belajar'),
(24, 'PJM-2026-0024', 24, 4, '2026-10-24', 'Meminjam buku bahasa Inggris untuk latihan pemahaman bacaan'),
(25, 'PJM-2026-0025', 25, 5, '2026-10-25', 'Meminjam buku untuk persiapan kegiatan lomba akademik'),
(26, 'PJM-2026-0026', 26, 6, '2026-10-26', 'Meminjam buku sebagai bahan belajar menjelang ujian'),
(27, 'PJM-2026-0027', 27, 7, '2026-10-27', 'Meminjam buku biografi untuk tugas literasi'),
(28, 'PJM-2026-0028', 28, 8, '2026-10-28', 'Meminjam buku untuk mendukung penyelesaian tugas individu'),
(29, 'PJM-2026-0029', 29, 2, '2026-10-29', 'Meminjam buku matematika untuk latihan dan pendalaman materi'),
(30, 'PJM-2026-0030', 30, 3, '2026-10-30', 'Meminjam buku sebagai bahan bacaan dan pengembangan pengetahuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` smallint(6) NOT NULL COMMENT 'Nomor urut penerbit',
  `nama_penerbit` varchar(100) NOT NULL COMMENT 'Nama penerbit',
  `kota` varchar(50) DEFAULT NULL COMMENT 'Kota penerbit, opsional'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Menyimpan informasi penerbit';

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `nama_penerbit`, `kota`) VALUES
(1, 'Cakrawala Ilmu', 'Jakarta'),
(2, 'Mentari Pustaka', 'Bandung'),
(3, 'Sinar Pelajaran', 'Surabaya'),
(4, 'Pena Nusantara', 'Yogyakarta'),
(5, 'Bina Cendekia', 'Semarang'),
(6, 'Lentera Bangsa', 'Jakarta'),
(7, 'Samudra Buku', 'Malang'),
(8, 'Gading Ilmu', 'Bandung'),
(9, 'Cahaya Akademika', 'Medan'),
(10, 'Rimba Pustaka', 'Palembang'),
(11, 'Pelangi Edukasi', 'Makassar'),
(12, 'Garuda Kreasi', 'Jakarta'),
(13, 'Nusa Literasi', 'Denpasar'),
(14, 'Kencana Ilmu Utama', 'Yogyakarta'),
(15, 'Tunas Harapan', 'Surakarta'),
(16, 'Mahkota Buku', 'Surabaya'),
(17, 'Permata Pustaka', 'Bandung'),
(18, 'Langit Biru Press', 'Jakarta'),
(19, 'Dian Nusantara', 'Bogor'),
(20, 'Semesta Aksara', 'Jakarta'),
(21, 'Seruni Publishing', 'Bandung'),
(22, 'Cendana Media', 'Yogyakarta'),
(23, 'Pelita Insan', 'Semarang'),
(24, 'Merapi Edukasi', 'Yogyakarta'),
(25, 'Kartika Sakti', 'Malang'),
(26, 'Samudera Ilmu', 'Pontianak'),
(27, 'Harmoni Buku', 'Banjarmasin'),
(28, 'Gema Literasi', 'Padang'),
(29, 'Teratai Books', 'Manado'),
(30, 'Batik Pustaka', 'Pekalongan'),
(31, 'Ombak Pustaka', 'Mataram'),
(32, 'Bentang Cendekia', 'Tangerang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengarang`
--

CREATE TABLE `pengarang` (
  `id_pengarang` int(11) NOT NULL COMMENT 'Nomor urut pengarang',
  `nama_pengarang` varchar(100) NOT NULL COMMENT 'Nama pengarang'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Menyimpan informasi pengarang';

--
-- Dumping data untuk tabel `pengarang`
--

INSERT INTO `pengarang` (`id_pengarang`, `nama_pengarang`) VALUES
(1, 'Andrea Hirata'),
(2, 'Dee Lestari'),
(3, 'Tere Liye'),
(4, 'Ahmad Fuadi'),
(5, 'Habiburrahman El Shirazy'),
(6, 'NH Dini'),
(7, 'Pramoedya Ananta Toer'),
(8, 'Ayu Utami'),
(9, 'Eka Kurniawan'),
(10, 'Leila S. Chudori'),
(11, 'Arswendo Atmowiloto'),
(12, 'Mira W.'),
(13, 'Asma Nadia'),
(14, 'Okky Madasari'),
(15, 'Faisal Oddang'),
(16, 'Y.B. Mangunwijaya'),
(17, 'Seno Gumira Ajidarma'),
(18, 'Djenar Maesa Ayu'),
(19, 'Pidi Baiq'),
(20, 'Raditya Dika'),
(21, 'R.A. Kosasih'),
(22, 'Marga T.'),
(23, 'Ika Natassa'),
(24, 'Gola Gong'),
(25, 'J.S. Khairen'),
(26, 'Rizki Ridyasmara'),
(27, 'Kuntowijoyo'),
(28, 'H.O.S. Tjokroaminoto'),
(29, 'M. Quraish Shihab'),
(30, 'Abdul Chaer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL COMMENT 'Nomor urut pengembalian',
  `id_detail_peminjaman` int(11) NOT NULL COMMENT 'Detail peminjaman yang dikembalikan',
  `id_admin` int(11) NOT NULL COMMENT 'Petugas penerima',
  `tanggal_pengembalian` date NOT NULL COMMENT 'Tanggal fisik dikembalikan',
  `hari_terlambat` smallint(6) NOT NULL DEFAULT 0 COMMENT 'Jumlah hari terlambat, minimal nol',
  `kondisi_saat_kembali` enum('baik','rusak_ringan','rusak_berat','hilang') NOT NULL DEFAULT 'baik' COMMENT 'Kondisi saat dikembalikan',
  `catatan` varchar(255) DEFAULT NULL COMMENT 'Catatan opsional'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`id_pengembalian`, `id_detail_peminjaman`, `id_admin`, `tanggal_pengembalian`, `hari_terlambat`, `kondisi_saat_kembali`, `catatan`) VALUES
(1, 1, 2, '2026-10-10', 2, 'baik', 'Terlambat 2 hari'),
(2, 2, 3, '2026-10-12', 3, 'baik', 'Terlambat 3 hari'),
(3, 3, 4, '2026-10-11', 1, 'baik', 'Terlambat 1 hari'),
(4, 4, 5, '2026-10-13', 2, 'baik', 'Terlambat 2 hari'),
(5, 5, 6, '2026-10-15', 3, 'rusak_ringan', 'Sampul buku rusak'),
(6, 6, 7, '2026-10-14', 1, 'baik', 'Terlambat 1 hari'),
(7, 7, 8, '2026-10-16', 2, 'baik', 'Terlambat 2 hari'),
(8, 8, 2, '2026-10-18', 3, 'baik', 'Terlambat 3 hari'),
(9, 9, 3, '2026-10-17', 1, 'baik', 'Terlambat 1 hari'),
(10, 10, 4, '2026-10-19', 2, 'hilang', 'Buku dilaporkan hilang'),
(11, 11, 5, '2026-10-21', 3, 'baik', 'Terlambat 3 hari'),
(12, 12, 6, '2026-10-20', 1, 'baik', 'Terlambat 1 hari'),
(13, 13, 7, '2026-10-22', 2, 'baik', 'Terlambat 2 hari'),
(14, 14, 8, '2026-10-24', 3, 'baik', 'Terlambat 3 hari'),
(15, 15, 2, '2026-10-23', 1, 'rusak_ringan', 'Sampul buku rusak'),
(16, 16, 3, '2026-10-25', 2, 'baik', 'Terlambat 2 hari'),
(17, 17, 4, '2026-10-27', 3, 'baik', 'Terlambat 3 hari'),
(18, 18, 5, '2026-10-26', 1, 'baik', 'Terlambat 1 hari'),
(19, 19, 6, '2026-10-28', 2, 'baik', 'Terlambat 2 hari'),
(20, 20, 7, '2026-10-30', 3, 'hilang', 'Buku dilaporkan hilang'),
(21, 21, 8, '2026-10-29', 1, 'baik', 'Terlambat 1 hari'),
(22, 22, 2, '2026-10-31', 2, 'baik', 'Terlambat 2 hari'),
(23, 23, 3, '2026-11-02', 3, 'baik', 'Terlambat 3 hari'),
(24, 24, 4, '2026-11-01', 1, 'baik', 'Terlambat 1 hari'),
(25, 25, 5, '2026-11-03', 2, 'rusak_ringan', 'Sampul buku rusak'),
(26, 26, 6, '2026-11-05', 3, 'baik', 'Terlambat 3 hari'),
(27, 27, 7, '2026-11-04', 1, 'baik', 'Terlambat 1 hari'),
(28, 28, 8, '2026-11-06', 2, 'baik', 'Terlambat 2 hari'),
(29, 29, 2, '2026-11-08', 3, 'baik', 'Terlambat 3 hari'),
(30, 30, 3, '2026-11-07', 1, 'hilang', 'Buku dilaporkan hilang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peran`
--

CREATE TABLE `peran` (
  `id_peran` tinyint(4) NOT NULL COMMENT 'Nomor urut peran',
  `kode_peran` varchar(20) NOT NULL COMMENT 'Kode peran, misalnya KEPALA atau PUSTAKAWAN',
  `nama_peran` varchar(50) NOT NULL COMMENT 'Nama peran yang ditampilkan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Menyimpan jenis hak akses pengguna sistem perpustakaan';

--
-- Dumping data untuk tabel `peran`
--

INSERT INTO `peran` (`id_peran`, `kode_peran`, `nama_peran`) VALUES
(1, 'KEPALA', 'Kepala Perpustakaan'),
(2, 'PUSTAKAWAN', 'Pustakawan'),
(3, 'STAF_SIRKULASI', 'Staf Sirkulasi'),
(4, 'ADMIN_SISTEM', 'Administrator Sistem');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id_tahun_ajaran` smallint(6) NOT NULL COMMENT 'Nomor urut',
  `kode_tahun_ajaran` varchar(9) NOT NULL COMMENT 'Contoh 2026/2027',
  `tanggal_mulai` date NOT NULL COMMENT 'Awal tahun ajaran',
  `tanggal_selesai` date NOT NULL COMMENT 'Harus setelah tanggal mulai',
  `aktif` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Penanda tahun ajaran berjalan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`id_tahun_ajaran`, `kode_tahun_ajaran`, `tanggal_mulai`, `tanggal_selesai`, `aktif`) VALUES
(1, '2000/2001', '2000-07-15', '2001-06-14', 0),
(2, '2001/2002', '2001-07-15', '2002-06-14', 0),
(3, '2002/2003', '2002-07-15', '2003-06-14', 0),
(4, '2003/2004', '2003-07-15', '2004-06-14', 0),
(5, '2004/2005', '2004-07-15', '2005-06-14', 0),
(6, '2005/2006', '2005-07-15', '2006-06-14', 0),
(7, '2006/2007', '2006-07-15', '2007-06-14', 0),
(8, '2007/2008', '2007-07-15', '2008-06-14', 0),
(9, '2008/2009', '2008-07-15', '2009-06-14', 0),
(10, '2009/2010', '2009-07-15', '2010-06-14', 0),
(11, '2010/2011', '2010-07-15', '2011-06-14', 0),
(12, '2011/2012', '2011-07-15', '2012-06-14', 0),
(13, '2012/2013', '2012-07-15', '2013-06-14', 0),
(14, '2013/2014', '2013-07-15', '2014-06-14', 0),
(15, '2014/2015', '2014-07-15', '2015-06-14', 0),
(16, '2015/2016', '2015-07-15', '2016-06-14', 0),
(17, '2016/2017', '2016-07-15', '2017-06-14', 0),
(18, '2017/2018', '2017-07-15', '2018-06-14', 0),
(19, '2018/2019', '2018-07-15', '2019-06-14', 0),
(20, '2019/2020', '2019-07-15', '2020-06-14', 1),
(21, '2020/2021', '2020-07-15', '2021-06-14', 0),
(22, '2021/2022', '2021-07-15', '2022-06-14', 0),
(23, '2022/2023', '2022-07-15', '2023-06-14', 0),
(24, '2023/2024', '2023-07-15', '2024-06-14', 0),
(25, '2024/2025', '2024-07-15', '2025-06-14', 0),
(26, '2025/2026', '2025-07-15', '2026-06-14', 1),
(27, '2026/2027', '2026-07-15', '2027-06-14', 1),
(28, '2027/2028', '2027-07-15', '2028-06-14', 0),
(29, '2028/2029', '2028-07-15', '2029-06-14', 0),
(30, '2029/2030', '2029-07-15', '2030-06-14', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `uq_admin_email` (`email`),
  ADD KEY `idx_admin_peran` (`id_peran`);

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`),
  ADD UNIQUE KEY `uq_anggota_kode` (`kode_anggota`),
  ADD UNIQUE KEY `uq_anggota_nis` (`nis`);

--
-- Indeks untuk tabel `aturan_sirkulasi`
--
ALTER TABLE `aturan_sirkulasi`
  ADD PRIMARY KEY (`id_aturan`),
  ADD KEY `idx_aturan_jenis` (`id_jenis_koleksi`),
  ADD KEY `idx_aturan_admin` (`id_admin`);

--
-- Indeks untuk tabel `audit_log`
--
ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`id_audit`),
  ADD KEY `idx_audit_admin` (`id_admin`),
  ADD KEY `idx_audit_aktivitas` (`aktivitas`),
  ADD KEY `idx_audit_dibuat_pada` (`dibuat_pada`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD UNIQUE KEY `uq_buku_kode` (`kode_buku`),
  ADD UNIQUE KEY `uq_buku_isbn` (`isbn`),
  ADD KEY `idx_buku_kategori` (`id_kategori`),
  ADD KEY `idx_buku_penerbit` (`id_penerbit`),
  ADD KEY `idx_buku_jenis` (`id_jenis_koleksi`);

--
-- Indeks untuk tabel `buku_pengarang`
--
ALTER TABLE `buku_pengarang`
  ADD PRIMARY KEY (`id_buku`,`id_pengarang`),
  ADD KEY `idx_buku_pengarang_pengarang` (`id_pengarang`);

--
-- Indeks untuk tabel `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`id_denda`),
  ADD UNIQUE KEY `uq_denda_pengembalian_jenis` (`id_pengembalian`,`jenis_denda`),
  ADD KEY `idx_denda_admin_penerima` (`id_admin_penerima`);

--
-- Indeks untuk tabel `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  ADD PRIMARY KEY (`id_detail_peminjaman`),
  ADD UNIQUE KEY `uq_detail_peminjaman_eksemplar` (`id_peminjaman`,`id_eksemplar`),
  ADD KEY `idx_detail_eksemplar` (`id_eksemplar`),
  ADD KEY `idx_detail_aturan` (`id_aturan`);

--
-- Indeks untuk tabel `eksemplar`
--
ALTER TABLE `eksemplar`
  ADD PRIMARY KEY (`id_eksemplar`),
  ADD UNIQUE KEY `uq_eksemplar_kode` (`kode_eksemplar`),
  ADD UNIQUE KEY `uq_eksemplar_buku_nomor` (`id_buku`,`no_eksemplar`);

--
-- Indeks untuk tabel `jenis_koleksi`
--
ALTER TABLE `jenis_koleksi`
  ADD PRIMARY KEY (`id_jenis_koleksi`),
  ADD UNIQUE KEY `uq_jenis_koleksi_kode` (`kode_jenis`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `uq_kategori_kode` (`kode_kategori`),
  ADD UNIQUE KEY `uq_kategori_klasifikasi` (`kode_klasifikasi`);

--
-- Indeks untuk tabel `keanggotaan`
--
ALTER TABLE `keanggotaan`
  ADD PRIMARY KEY (`id_keanggotaan`),
  ADD UNIQUE KEY `uq_anggota_tahun` (`id_anggota`,`id_tahun_ajaran`),
  ADD UNIQUE KEY `uq_nomor_kartu` (`nomor_kartu`),
  ADD KEY `idx_tahun_ajaran` (`id_tahun_ajaran`),
  ADD KEY `idx_kelas_tahun` (`id_kelas`,`id_tahun_ajaran`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD UNIQUE KEY `uq_kelas_tahun_nama` (`id_tahun_ajaran`,`nama_kelas`),
  ADD UNIQUE KEY `uq_kelas_id_tahun` (`id_kelas`,`id_tahun_ajaran`),
  ADD KEY `idx_kelas_tahun` (`id_tahun_ajaran`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD UNIQUE KEY `uq_peminjaman_kode` (`kode_transaksi`),
  ADD KEY `idx_peminjaman_keanggotaan` (`id_keanggotaan`),
  ADD KEY `idx_peminjaman_admin` (`id_admin`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id_penerbit`),
  ADD UNIQUE KEY `uq_penerbit_nama` (`nama_penerbit`);

--
-- Indeks untuk tabel `pengarang`
--
ALTER TABLE `pengarang`
  ADD PRIMARY KEY (`id_pengarang`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD UNIQUE KEY `uq_pengembalian_detail` (`id_detail_peminjaman`),
  ADD KEY `idx_pengembalian_admin` (`id_admin`);

--
-- Indeks untuk tabel `peran`
--
ALTER TABLE `peran`
  ADD PRIMARY KEY (`id_peran`),
  ADD UNIQUE KEY `uq_peran_kode` (`kode_peran`);

--
-- Indeks untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id_tahun_ajaran`),
  ADD UNIQUE KEY `uq_tahun_ajaran_kode` (`kode_tahun_ajaran`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut admin', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut anggota', AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `aturan_sirkulasi`
--
ALTER TABLE `aturan_sirkulasi`
  MODIFY `id_aturan` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut aturan', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `id_audit` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut catatan audit';

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut judul', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `denda`
--
ALTER TABLE `denda`
  MODIFY `id_denda` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut denda', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  MODIFY `id_detail_peminjaman` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut detail', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `eksemplar`
--
ALTER TABLE `eksemplar`
  MODIFY `id_eksemplar` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut fisik buku', AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `jenis_koleksi`
--
ALTER TABLE `jenis_koleksi`
  MODIFY `id_jenis_koleksi` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut jenis', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut kategori', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `keanggotaan`
--
ALTER TABLE `keanggotaan`
  MODIFY `id_keanggotaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut kelas', AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut transaksi', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `id_penerbit` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut penerbit', AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `pengarang`
--
ALTER TABLE `pengarang`
  MODIFY `id_pengarang` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut pengarang', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut pengembalian', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `peran`
--
ALTER TABLE `peran`
  MODIFY `id_peran` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut peran', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id_tahun_ajaran` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut', AUTO_INCREMENT=31;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_admin_peran` FOREIGN KEY (`id_peran`) REFERENCES `peran` (`id_peran`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `aturan_sirkulasi`
--
ALTER TABLE `aturan_sirkulasi`
  ADD CONSTRAINT `fk_aturan_admin` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aturan_jenis` FOREIGN KEY (`id_jenis_koleksi`) REFERENCES `jenis_koleksi` (`id_jenis_koleksi`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `audit_log`
--
ALTER TABLE `audit_log`
  ADD CONSTRAINT `fk_audit_admin` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `fk_buku_jenis` FOREIGN KEY (`id_jenis_koleksi`) REFERENCES `jenis_koleksi` (`id_jenis_koleksi`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_buku_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_buku_penerbit` FOREIGN KEY (`id_penerbit`) REFERENCES `penerbit` (`id_penerbit`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `buku_pengarang`
--
ALTER TABLE `buku_pengarang`
  ADD CONSTRAINT `fk_buku_pengarang_buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_buku_pengarang_pengarang` FOREIGN KEY (`id_pengarang`) REFERENCES `pengarang` (`id_pengarang`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `denda`
--
ALTER TABLE `denda`
  ADD CONSTRAINT `fk_denda_admin_penerima` FOREIGN KEY (`id_admin_penerima`) REFERENCES `admin` (`id_admin`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_denda_pengembalian` FOREIGN KEY (`id_pengembalian`) REFERENCES `pengembalian` (`id_pengembalian`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  ADD CONSTRAINT `fk_detail_peminjaman_aturan` FOREIGN KEY (`id_aturan`) REFERENCES `aturan_sirkulasi` (`id_aturan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detail_peminjaman_eksemplar` FOREIGN KEY (`id_eksemplar`) REFERENCES `eksemplar` (`id_eksemplar`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detail_peminjaman_induk` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id_peminjaman`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `eksemplar`
--
ALTER TABLE `eksemplar`
  ADD CONSTRAINT `fk_eksemplar_buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `fk_kelas_tahun` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tahun_ajaran` (`id_tahun_ajaran`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `fk_peminjaman_admin` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_peminjaman_keanggotaan` FOREIGN KEY (`id_keanggotaan`) REFERENCES `keanggotaan` (`id_keanggotaan`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `fk_pengembalian_admin` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pengembalian_detail` FOREIGN KEY (`id_detail_peminjaman`) REFERENCES `detail_peminjaman` (`id_detail_peminjaman`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
