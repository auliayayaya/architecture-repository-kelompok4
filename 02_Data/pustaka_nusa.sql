-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2026 pada 06.22
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
) ;

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_pengarang`
--

CREATE TABLE `buku_pengarang` (
  `id_buku` int(11) NOT NULL COMMENT 'Buku',
  `id_pengarang` int(11) NOT NULL COMMENT 'Pengarang',
  `urutan_pengarang` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Urutan penulisan pengarang'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Menghubungkan buku dengan pengarang';

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
) ;

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` smallint(6) NOT NULL COMMENT 'Nomor urut penerbit',
  `nama_penerbit` varchar(100) NOT NULL COMMENT 'Nama penerbit',
  `kota` varchar(50) DEFAULT NULL COMMENT 'Kota penerbit, opsional'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Menyimpan informasi penerbit';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengarang`
--

CREATE TABLE `pengarang` (
  `id_pengarang` int(11) NOT NULL COMMENT 'Nomor urut pengarang',
  `nama_pengarang` varchar(100) NOT NULL COMMENT 'Nama pengarang'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Menyimpan informasi pengarang';

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
) ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peran`
--

CREATE TABLE `peran` (
  `id_peran` tinyint(4) NOT NULL COMMENT 'Nomor urut peran',
  `kode_peran` varchar(20) NOT NULL COMMENT 'Kode peran, misalnya KEPALA atau PUSTAKAWAN',
  `nama_peran` varchar(50) NOT NULL COMMENT 'Nama peran yang ditampilkan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Menyimpan jenis hak akses pengguna sistem perpustakaan';

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
) ;

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
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut admin';

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut anggota';

--
-- AUTO_INCREMENT untuk tabel `aturan_sirkulasi`
--
ALTER TABLE `aturan_sirkulasi`
  MODIFY `id_aturan` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut aturan';

--
-- AUTO_INCREMENT untuk tabel `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `id_audit` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut catatan audit';

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut judul';

--
-- AUTO_INCREMENT untuk tabel `denda`
--
ALTER TABLE `denda`
  MODIFY `id_denda` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut denda';

--
-- AUTO_INCREMENT untuk tabel `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  MODIFY `id_detail_peminjaman` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut detail';

--
-- AUTO_INCREMENT untuk tabel `eksemplar`
--
ALTER TABLE `eksemplar`
  MODIFY `id_eksemplar` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut fisik buku';

--
-- AUTO_INCREMENT untuk tabel `jenis_koleksi`
--
ALTER TABLE `jenis_koleksi`
  MODIFY `id_jenis_koleksi` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut jenis';

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut kategori';

--
-- AUTO_INCREMENT untuk tabel `keanggotaan`
--
ALTER TABLE `keanggotaan`
  MODIFY `id_keanggotaan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut kelas';

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut transaksi';

--
-- AUTO_INCREMENT untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `id_penerbit` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut penerbit';

--
-- AUTO_INCREMENT untuk tabel `pengarang`
--
ALTER TABLE `pengarang`
  MODIFY `id_pengarang` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut pengarang';

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut pengembalian';

--
-- AUTO_INCREMENT untuk tabel `peran`
--
ALTER TABLE `peran`
  MODIFY `id_peran` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut peran';

--
-- AUTO_INCREMENT untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id_tahun_ajaran` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Nomor urut';

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
