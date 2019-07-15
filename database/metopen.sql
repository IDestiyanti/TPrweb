-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jul 2019 pada 07.26
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `metopen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berkas`
--

CREATE TABLE `berkas` (
  `id` int(11) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berkas`
--

INSERT INTO `berkas` (`id`, `foto`, `keterangan`) VALUES
(1, 'revisi intan.docx', ''),
(2, 'Surat_Pengalihan_Bimbingan_KP.docx', ''),
(3, 'Tugas Machine Learning.docx', ''),
(115, '06-stack.pdf', 'msgdajgd'),
(116, 'avl-edit.docx', 'khl'),
(117, '8-Pengantar_Google_Form-20180322070252.pdf', 'kjhlkf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `niy` int(14) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`niy`, `nama`, `password`) VALUES
(123, 'Adhi Prahara', 'syukurlah123'),
(234, 'Ika Arfiani', 'syukurlah234'),
(345, 'Dewi Normawati', 'syukurlah345'),
(456, 'Ahmad Azhari', 'syukurlah456'),
(567, 'Wahyu Pujiono', 'syukurlah567'),
(678, 'Dewi Pramudi Ismi', 'syukurlah678');

-- --------------------------------------------------------

--
-- Struktur dari tabel `judul_metopen`
--

CREATE TABLE `judul_metopen` (
  `id` int(11) NOT NULL,
  `nim` varchar(14) NOT NULL,
  `niy` int(14) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `bidang_minat` varchar(20) NOT NULL,
  `dosen` varchar(30) NOT NULL,
  `status` varchar(100) NOT NULL,
  `uts` int(11) NOT NULL,
  `uas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `judul_metopen`
--

INSERT INTO `judul_metopen` (`id`, `nim`, `niy`, `judul`, `bidang_minat`, `dosen`, `status`, `uts`, `uas`) VALUES
(28, '1600018016', 123, 'apa aja', 'Multimedia', 'Adhi Prahara', 'siap seminar', 70, 90);

-- --------------------------------------------------------

--
-- Struktur dari tabel `koor`
--

CREATE TABLE `koor` (
  `id` int(14) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `koor`
--

INSERT INTO `koor` (`id`, `nama`, `password`) VALUES
(1998, 'Wahyu Pujiono', 'syukurlah98');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `username` varchar(14) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`username`, `password`, `nama`) VALUES
('1600018016', 'syukurlah321', 'Andriani Silviana'),
('1600018021', 'syukurlah234', 'Fitriana Puspa'),
('1600018027', 'syukurlah123', 'Intan Destiyanti');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pps_seminar`
--

CREATE TABLE `pps_seminar` (
  `id` int(11) NOT NULL,
  `nim_id` varchar(14) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `status_pps` varchar(30) NOT NULL,
  `judul` varchar(500) NOT NULL,
  `dosen_pps` varchar(30) NOT NULL,
  `niy` int(14) NOT NULL,
  `bidang_minat` varchar(30) NOT NULL,
  `uts` int(11) NOT NULL,
  `uas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pps_seminar`
--

INSERT INTO `pps_seminar` (`id`, `nim_id`, `foto`, `status_pps`, `judul`, `dosen_pps`, `niy`, `bidang_minat`, `uts`, `uas`) VALUES
(14, '1600018021', '1.png', 'siap seminar', 'seperti itu', 'Adhi Prahara', 123, 'AI Game', 80, 90);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ptta_seminar`
--

CREATE TABLE `ptta_seminar` (
  `id` int(11) NOT NULL,
  `nim_id` varchar(14) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `status_ptta` varchar(30) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ptta_seminar`
--

INSERT INTO `ptta_seminar` (`id`, `nim_id`, `foto`, `status_ptta`, `keterangan`) VALUES
(8, '1600018016', '1.png', 'terkonfirmasi', 'jdkf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `seminar`
--

CREATE TABLE `seminar` (
  `id` int(14) NOT NULL,
  `nim` varchar(14) NOT NULL,
  `dosen_penguji` varchar(30) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `seminar`
--

INSERT INTO `seminar` (`id`, `nim`, `dosen_penguji`, `tempat`, `tanggal`) VALUES
(7, '1600018016', 'Wahyu Pujiono', 'kampus 4 , 4.3.1.2', '2019-07-15');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berkas`
--
ALTER TABLE `berkas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`niy`);

--
-- Indeks untuk tabel `judul_metopen`
--
ALTER TABLE `judul_metopen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judul_metopen` (`nim`),
  ADD KEY `fk_dosen` (`niy`);

--
-- Indeks untuk tabel `koor`
--
ALTER TABLE `koor`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pps_seminar`
--
ALTER TABLE `pps_seminar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pps` (`nim_id`),
  ADD KEY `fk_dosenpps` (`niy`);

--
-- Indeks untuk tabel `ptta_seminar`
--
ALTER TABLE `ptta_seminar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ptta` (`nim_id`);

--
-- Indeks untuk tabel `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_seminar` (`nim`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berkas`
--
ALTER TABLE `berkas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `niy` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=679;

--
-- AUTO_INCREMENT untuk tabel `judul_metopen`
--
ALTER TABLE `judul_metopen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `koor`
--
ALTER TABLE `koor`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1999;

--
-- AUTO_INCREMENT untuk tabel `pps_seminar`
--
ALTER TABLE `pps_seminar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `ptta_seminar`
--
ALTER TABLE `ptta_seminar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `seminar`
--
ALTER TABLE `seminar`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `judul_metopen`
--
ALTER TABLE `judul_metopen`
  ADD CONSTRAINT `fk_dosen` FOREIGN KEY (`niy`) REFERENCES `dosen` (`niy`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `judul_metopen` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pps_seminar`
--
ALTER TABLE `pps_seminar`
  ADD CONSTRAINT `fk_dosenpps` FOREIGN KEY (`niy`) REFERENCES `dosen` (`niy`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pps` FOREIGN KEY (`nim_id`) REFERENCES `mahasiswa` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ptta_seminar`
--
ALTER TABLE `ptta_seminar`
  ADD CONSTRAINT `fk_ptta` FOREIGN KEY (`nim_id`) REFERENCES `judul_metopen` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `seminar`
--
ALTER TABLE `seminar`
  ADD CONSTRAINT `fk_seminar` FOREIGN KEY (`nim`) REFERENCES `judul_metopen` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
