-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Apr 2024 pada 14.30
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpegawai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisi`
--

CREATE TABLE `divisi` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `divisi`
--

INSERT INTO `divisi` (`id`, `nama`) VALUES
(4, 'IT'),
(2, 'Keuangan'),
(3, 'Marketing'),
(1, 'SDM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id`, `nama`) VALUES
(3, 'Asisten Manajer'),
(1, 'Direktur'),
(2, 'Manajer'),
(4, 'Staf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` char(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `iddivisi` int(11) NOT NULL,
  `idjabatan` int(11) NOT NULL,
  `alamat` text DEFAULT NULL,
  `berat_badan` float NOT NULL,
  `umur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `jenis_kelamin`, `tmp_lahir`, `tgl_lahir`, `iddivisi`, `idjabatan`, `alamat`, `berat_badan`, `umur`) VALUES
(1, '11111', 'Muhammad Fajar', 'Laki-Laki', 'papua', '2000-01-01', 1, 2, 'jalan cempaka', 99.79, 25),
(2, '22222', 'Cinta', 'Perempuan', 'papua', '2000-01-02', 1, 2, 'jalan cempaka', 67.83, 41),
(3, '33333', 'Sanoso', 'Laki-Laki', 'papua', '2000-01-03', 1, 2, 'jalan cempaka', 89.78, 47),
(4, '44444', 'Rina', 'Perempuan', 'papua', '2000-01-04', 1, 2, 'jalan cempaka', 95.39, 30),
(5, '55555', 'Asep', 'Laki-Laki', 'papua', '2000-01-05', 1, 2, 'jalan cempaka', 57.61, 50),
(6, '66666', 'Rani', 'Perempuan', 'Jakarta', '2000-01-06', 2, 2, 'Alamat6', 51.88, 50),
(7, '77777', 'Anton', 'Laki-Laki', 'Sulawesi Selatan', '2000-01-07', 2, 3, 'Alamat7', 86.55, 48),
(8, '88888', 'Dewi', 'Perempuan', 'Banten', '2000-01-08', 2, 4, 'Alamat8', 77.15, 39),
(9, '99999', 'Santoso', 'Laki-Laki', 'Tangerang', '2000-01-09', 2, 1, 'Alamat9', 76.08, 31),
(10, '10101', 'Putri', 'Perempuan', 'Tangerang', '2000-01-10', 2, 2, 'Alamat10', 98.95, 21),
(11, '11112', 'Iqbal', 'Laki-Laki', 'Sukabumi', '2000-01-11', 3, 3, 'Alamat11', 66.51, 24),
(12, '12121', 'Ayu', 'Perempuan', 'Sukabumi', '2000-01-12', 3, 4, 'Alamat12', 85.68, 35),
(13, '13131', 'Joko', 'Laki-Laki', 'Jawa Tengah', '2000-01-13', 3, 1, 'Alamat13', 78.89, 22),
(14, '14141', 'Nia', 'Perempuan', 'Purwokerto', '2000-01-14', 3, 2, 'Alamat14', 87.42, 47),
(15, '15151', 'Agus', 'Laki-Laki', 'Purworejo', '2000-01-15', 3, 3, 'Alamat15', 50.43, 26),
(16, '16161', 'Maya', 'Perempuan', 'Cirebon', '2000-01-16', 4, 4, 'Alamat16', 89.87, 33),
(17, '17171', 'Fahmi', 'Laki-Laki', 'Cirebon', '2000-01-17', 4, 1, 'Alamat17', 98.06, 36),
(18, '18181', 'Citra', 'Perempuan', 'Cisarua', '2000-01-18', 4, 2, 'Alamat18', 70.69, 30);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD KEY `iddivisi` (`iddivisi`),
  ADD KEY `idjabatan` (`idjabatan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`iddivisi`) REFERENCES `divisi` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_2` FOREIGN KEY (`idjabatan`) REFERENCES `jabatan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
