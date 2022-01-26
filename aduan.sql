-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Agu 2020 pada 11.24
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aduan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id` int(11) NOT NULL,
  `nuptk` varchar(50) NOT NULL,
  `nama_guru` varchar(255) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`id`, `nuptk`, `nama_guru`, `jenis_kelamin`, `alamat`, `telp`) VALUES
(1, '1150766667200023', 'Muh Klasin, S. Pd', 'laki-laki', 'Dasno', '085641120316'),
(2, '8549752654300043', 'Kukuh Joni Pratomo, S. Pd', 'laki-laki', 'Dsn Peting Rt 003/010', '085842763286'),
(4, '9361759662300013', 'Umi Haniva, S.S, M.Pd', 'perempuan', 'Perum Sembungharjo C.10', '082225363063');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengaduan`
--

CREATE TABLE `tb_pengaduan` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `nis` varchar(50) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('ditanggapi','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengaduan`
--

INSERT INTO `tb_pengaduan` (`id`, `tgl`, `nis`, `isi_laporan`, `foto`, `status`) VALUES
(4, '2020-08-24', '3554', 'Saya sedang membaca tapi malah di foto, jadi malu', 'WhatsApp_Image_2020-02-05_at_07_42_20-3.jpeg', 'selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `id` int(11) NOT NULL,
  `nama_petugas` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_petugas`
--

INSERT INTO `tb_petugas` (`id`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(1, 'Muh Klasin, S. Pd', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '085641120316', 'admin'),
(2, 'Kukuh Joni Pratomo, S. Pd', 'petugas1', '2158ff877fab5522711af28b273283033302c577', '085842763286', 'petugas'),
(3, 'Umi Haniva, S.S, M.Pd', 'petugas2', 'b37db86413cd76093be82f93f9cdeccb6de0e730', '082225363063', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id`, `nis`, `nama`, `kelas`, `alamat`, `jenis_kelamin`, `username`, `password`, `telp`) VALUES
(4, '3554', 'Amelia Safa Eliana', '7A', 'Bugen Utara RT 3 RW 3 Bangetayu Kulon Kec. Genuk Kota Semarang', 'perempuan', '3554', 'b958e3ab460bf2cfde71203fbcbe7698fea9a480', '085726983155'),
(5, '3557', 'Dimas Syamsul Bahri', '7A', 'Sembungharjo RT 5 RW 4 Genuk Kota Semarang', 'laki-laki', '3557', '0787693b268f0944d0264088b300c02721d73814', '081325289455'),
(6, '3582', 'Ananda Surya', '7B', 'Gangin Kulon RT 6 RW 5 Bangetayu Wetan Genuk Semarang', 'laki-laki', '3582', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '088238880926'),
(7, '3583', 'Anisa Nabilah Farida', '7B', 'Kwaron I RT 1 RW 2 Bangetayu Kulon Genuk Semarang', 'perempuan', '3583', '30356f5e0c95b1a033c5041f860ebe23cad26a80', '08990048057'),
(8, '3605', 'Adi Ardiyanto', '7C', 'Genuksari RT 7 RW 8 Genuksari Kec. Genuk Kota Semarang', 'laki-laki', '3605', 'ed3493c6431693d701a1ae8d389a9b4675c3f79a', '081327124564'),
(10, '3613', 'Dyah Anggraeni Kusumaningtyas', '7C', 'Sedayu Kenanga I', 'perempuan', '3613', '56d83c5c4908932efeb0c662fb18683f17cc9ecb', '081390654489'),
(11, '3634', 'Alex Ginata', '7D', 'Jl. Kapas Utara Gg 12 RT 9 RW 11 Genuk Kota Semarang', 'laki-laki', '3634', 'bd3731a2cfe718ae5364995de293b4e52bd23aeb', '085641692665'),
(12, '3637', 'Bellinda Lisna Oktavia', '7D', 'Tlogosari Wetan RT 5 RW 1 Tlogosari Wetan Kec. Pedurungan Kota Semarang', 'perempuan', '3637', '1ab1a2fda4a8bf1ca36fd5192532eed8e2d93e1d', '085866376158'),
(13, '3657', 'Alfin Fadhilla', '7E', 'KP. Kwaron II RT 2 RW 2 Bangetayu Kulon Kec. Genuk Kota Semarang', 'laki-laki', '3657', 'ec1e84aa91a700fb1d4c3bd9d86be928ab184c28', '0815654453'),
(14, '3659', 'Annisa Handayani', '7E', 'JL. Gasem Sari RT 1 RW 3 Tlogomulyo Kec. Pedurungan Kota Semarang', 'perempuan', '3659', 'ed5d0b0e58c5d7b0c9f6dc48d26af7a354af4185', '081901933511'),
(15, '3698', 'Dava Adi Prasetya', '7F', 'Genuksari RT 3 RW 2 Genuksari Kec. Genuk Kota Semarang', 'laki-laki', '3698', '487ac2470ea93f85296a69412597a37c275a121e', '085640337787'),
(16, '3691', 'Afrizna Rossa Akadela', '7F', 'Taman Bayu Prasetya Timur RT 9 RW 3 Bangetayu Wetan Kec. Genuk Kota Semarang', 'perempuan', '3691', '5b1329f11769d8f4915936ad063125dcc2bfad71', '085291100557'),
(17, '3724', 'Akbar Jati Ramadhany', '7G', 'Gebangsari RT 5 RW 5 Gebangsari Kec. Genuk Kota Semarang', 'laki-laki', '3724', '45341f4efe3b0d6689eee8e8108f3cb9e1d88401', '085210132225'),
(18, '3727', 'Bunga Erika Kurnia Wardani', '7G', 'Banjardowo RT 10 RW 6 Banjardowo Kec. Genuk Kota Semarang', 'perempuan', '3727', '4d2fdcb7ae398555b233547c210bd7c827b4158c', '081327944562'),
(19, '3766', 'Najwa Olivia', '7H', 'Karangroto Blok C RT 3 RW 5 Karangroto Kec. Genuk Kota Semarang', 'perempuan', '3766', '9fab200c5f26acb664a295228e7d28a78202d739', '081225554001'),
(20, '3757', 'Daffandito Putra Tama', '7H', 'Jl. Bayu Prasetya Raya RT 5 RW 3 Kel. Bangetayu Wetan Kec. Genuk Kota Semarang', 'laki-laki', '3757', '0757f2d456bd09b0c7db37968bca9233d7a5f41b', '085640033577');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tanggapan`
--

CREATE TABLE `tb_tanggapan` (
  `id` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tanggapan`
--

INSERT INTO `tb_tanggapan` (`id`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(1, 1, '2020-08-04', 'Akan segera diadakan Jum\'at bersih tanggal 6 Agustus 2020. Terimakasih', 1),
(2, 4, '2020-08-24', 'Malu-malu kucing, meong', 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_tanggapan`
--
ALTER TABLE `tb_tanggapan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tb_tanggapan`
--
ALTER TABLE `tb_tanggapan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
