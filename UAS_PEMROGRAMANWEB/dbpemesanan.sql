-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Juni 2023 pada 10.40
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
 

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpemesanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` INT(50) NOT NULL,
  `tanggal_pemesanan` DATE NOT NULL,
  `total_belanja` INT(50) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `tanggal_pemesanan`, `total_belanja`) VALUES
(35, '2020-06-22', 50000),
(38, '2020-06-22', 17000),
(39, '2020-06-22', 25000),
(40, '2020-06-22', 22000),
(41, '2020-06-22', 56000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_produk`
--

CREATE TABLE `pemesanan_produk` (
  `id_pemesanan_produk` INT(50) NOT NULL,
  `id_pemesanan` INT(50) NOT NULL,
  `id_menu` VARCHAR(50) NOT NULL,
  `jumlah` INT(50) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan_produk`
--

INSERT INTO `pemesanan_produk` (`id_pemesanan_produk`, `id_pemesanan`, `id_menu`, `jumlah`) VALUES
(7, 32, '9', 1),
(8, 32, '11', 1),
(9, 33, '16', 1),
(10, 33, '6', 1),
(11, 34, '13', 1),
(12, 34, '8', 1),
(13, 34, '9', 1),
(14, 34, '17', 1),
(15, 35, '9', 2),
(16, 35, '14', 1),
(17, 36, '8', 1),
(18, 37, '13', 1),
(19, 37, '16', 1),
(20, 38, '8', 1),
(21, 39, '9', 1),
(22, 39, '16', 1),
(23, 40, '10', 1),
(24, 40, '14', 1),
(25, 41, '17', 1),
(26, 41, '10', 1),
(27, 41, '9', 2),
(28, 42, '9', 1),
(29, 42, '14', 1),
(30, 42, '7', 1),
(31, 42, '17', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_menu` INT(50) NOT NULL,
  `nama_menu` VARCHAR(50) NOT NULL,
  `jenis_menu` VARCHAR(50) NOT NULL,
  `stok` INT(50) NOT NULL,
  `harga` INT(50) NOT NULL,
  `gambar` VARCHAR(100) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_menu`, `nama_menu`, `jenis_menu`, `stok`, `harga`, `gambar`) VALUES
(6, 'Spaghetti', 'Makanan', 90, 25000, 'Spageti.jpg'),
(7, 'Pizza', 'Makanan', 25, 77000, 'Pizza2.jpg'),
(8, 'Burger', 'Makanan', 100, 35000, 'Burger.jpg'),
(9, 'Nasi Goreng', 'Makanan', 75, 25000, 'Nasi Goreng.jpg'),
(10, 'Kentang Goreng', 'Makanan', 65, 15000, 'Kentang Goreng.jpg'),
(11, 'Coffee Latte', 'Minuman', 80, 45000, 'Coffee Latte.jpg'),
(12, 'Es Jeruk', 'Minuman', 95, 10000, 'Es Jeruk.jpg'),
(13, 'Jus Strawberry', 'Minuman', 65, 15000, 'Jus Strawbarry'),
(14, 'Ayam Bakar', 'Makanan', 76, 38000, 'Ayam Bakar.jpg'),
(15, 'Es Teh', 'Minuman', 125, 5000, 'Es Teh.jpg'),
(16, 'Salad', 'Makanan', 83, 42000, 'Salad.jpg'), 
(17, 'Ikan Bakar', 'Makanan', 50, 60000, 'Ikan Bakar.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` INT(25) NOT NULL,
  `username` VARCHAR(25) NOT NULL,
  `password` VARCHAR(25) NOT NULL,
  `nama_lengkap` VARCHAR(25) NOT NULL,
  `jenis_kelamin` VARCHAR(25) NOT NULL,
  `tanggal_lahir` DATE NOT NULL,
  `alamat` VARCHAR(25) NOT NULL,
  `hp` VARCHAR(25) NOT NULL,
  `status` ENUM('admin','user','','') NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `hp`, `status`) VALUES
(1, 'bayu', 'bayu123', 'Bayu Nugraha', 'Laki-Laki', '2002-05-14', 'Tukad Pakerisan', '081557863480', 'admin'),
(2, 'agus', 'agus977', 'Agus Pratama', 'Laki-Laki', '2004-01-11', 'Abian Kapas', '082567904885', 'user'),
(3, 'putra', 'putra021', 'Putra Mahendra', 'Laki-Laki', '2001-03-25', 'Tukad Balian', '085772456583', 'admin'),
(4, 'diky', 'diky445', 'Diky Indrawan', 'Laki-Laki', '2003-10-22', 'Tukad Yeh Aye', '089445789034', 'user'),
(5, 'andi', 'andi703', 'Andi Wirawan', 'Laki-Laki', '2003-02-23', 'Tukad Badung', '082784231934', 'user'),
(6, 'joko', 'joko367', 'Joko Putra', 'Laki-Laki', '2005-05-14', 'Tukad Batanghari', '081900467322', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indeks untuk tabel `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  ADD PRIMARY KEY (`id_pemesanan_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` INT(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  MODIFY `id_pemesanan_produk` INT(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_menu` INT(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` INT(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
