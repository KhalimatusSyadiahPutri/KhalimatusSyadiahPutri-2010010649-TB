-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jan 2023 pada 07.40
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pegawaian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_absen`
--

CREATE TABLE `db_absen` (
  `id_absensi` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `jam_masuk` varchar(100) NOT NULL,
  `jam_keluar` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `db_absen`
--

INSERT INTO `db_absen` (`id_absensi`, `id_pegawai`, `tanggal`, `jam_masuk`, `jam_keluar`, `keterangan`) VALUES
(102, 221, '13-01-2023', '06.30', '17.00', 'Tepat Waktu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_cuti`
--

CREATE TABLE `db_cuti` (
  `id_cuti` varchar(100) NOT NULL,
  `id_pegawai` varchar(100) NOT NULL,
  `tanggal_mulai` varchar(100) NOT NULL,
  `tanggal_selesai` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `db_cuti`
--

INSERT INTO `db_cuti` (`id_cuti`, `id_pegawai`, `tanggal_mulai`, `tanggal_selesai`, `keterangan`, `status`) VALUES
('222', '212', '12-10-2022', '09-11-2022', 'Cuti Tahunan', 'Aktif '),
('225', '226', '12-10-2022', '12-11-2022', 'Cuti tahunan', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_gaji`
--

CREATE TABLE `db_gaji` (
  `id_gaji` varchar(100) NOT NULL,
  `id_pegawai` varchar(100) NOT NULL,
  `gaji_pokok` int(11) NOT NULL,
  `tunjangan` int(11) NOT NULL,
  `total_gaji` int(11) NOT NULL,
  `periode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `db_gaji`
--

INSERT INTO `db_gaji` (`id_gaji`, `id_pegawai`, `gaji_pokok`, `tunjangan`, `total_gaji`, `periode`) VALUES
('1124', '125', 6000000, 100000, 6100000, '2020/2021'),
('123', '224', 500000, 250000, 750000, '2021/2022'),
('222', '212', 1000000, 250000, 1250000, '2021/2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_lembur`
--

CREATE TABLE `db_lembur` (
  `id_lembur` varchar(100) NOT NULL,
  `id_pegawai` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `jam_mulai` varchar(100) NOT NULL,
  `jam_selesai` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `db_lembur`
--

INSERT INTO `db_lembur` (`id_lembur`, `id_pegawai`, `tanggal`, `jam_mulai`, `jam_selesai`, `keterangan`) VALUES
('111', '123', '13-01-2023', '07.30', '22.10', 'Persiapan Tugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_pegawai`
--

CREATE TABLE `db_pegawai` (
  `id_pegawai` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `tanggal_lahir` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `departemen` varchar(100) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `db_pegawai`
--

INSERT INTO `db_pegawai` (`id_pegawai`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `no_telepon`, `email`, `jabatan`, `departemen`, `status`) VALUES
('222', 'syadiah', 'Perempuan', '30-10-2001', 'Jl.Kosmabi', '082151584998', 'syadiahputri@gmail.com', 'Staf', 'Keuangan', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `db_absen`
--
ALTER TABLE `db_absen`
  ADD PRIMARY KEY (`id_absensi`);

--
-- Indeks untuk tabel `db_cuti`
--
ALTER TABLE `db_cuti`
  ADD PRIMARY KEY (`id_cuti`);

--
-- Indeks untuk tabel `db_gaji`
--
ALTER TABLE `db_gaji`
  ADD PRIMARY KEY (`id_gaji`);

--
-- Indeks untuk tabel `db_lembur`
--
ALTER TABLE `db_lembur`
  ADD PRIMARY KEY (`id_lembur`);

--
-- Indeks untuk tabel `db_pegawai`
--
ALTER TABLE `db_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
