-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Feb 2023 pada 16.41
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` int(11) NOT NULL,
  `f_delete` int(11) DEFAULT 0,
  `tgl_input` varchar(255) DEFAULT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `f_delete`, `tgl_input`, `tgl_update`) VALUES
(1, 'BR001', 1, 'pulpen', 'faster', '5000', '7000', 1, 1, '4 January 2023, 22:44', NULL),
(2, 'BR002', 2, 'minyak goreng', 'bimoli', '10000', '15000', 1, 1, '4 January 2023, 22:45', NULL),
(3, 'BR003', 3, 'meja belajar', 'ikea', '200000', '230000', 4, 1, '4 January 2023, 22:46', '4 January 2023, 23:18'),
(5, 'BR004', 2, 'ice cream', 'ice', '5000', '7500', 1, 1, '14 January 2023, 8:47', NULL),
(8, 'BR007', 2, 'VIT Gelas', 'Danone', '999', '999', 2, 1, '14 January 2023, 8:49', '14 January 2023, 9:05'),
(9, 'BR008', 7, 'Sampoerna Mild', 'Sampoerna', '25000', '30000', 6, 0, '6 February 2023, 0:44', NULL),
(10, 'BR009', 5, 'Aqua 250ml', 'Aqua', '2000', '3000', 16, 1, '6 February 2023, 0:49', '6 February 2023, 0:57'),
(11, 'BR009', 5, 'Aqua 250ml', 'Aqua', '2000', '3000', 16, 0, '6 February 2023, 0:52', '6 February 2023, 0:57'),
(12, 'BR010', 1, 'Pulpen Pilot', 'Pilot', '2000', '3000', 6, 0, '6 February 2023, 0:53', '6 February 2023, 0:58'),
(13, 'BR011', 9, 'Aice Manggo', 'AICE', '3000', '4000', 6, 0, '6 February 2023, 0:54', NULL),
(14, 'BR012', 4, 'Oreo Blackpink', 'Oreo', '1500', '2000', 6, 0, '6 February 2023, 0:55', NULL),
(15, 'BR013', 6, 'Lampu Philips 24w', 'Philips', '23000', '30000', 6, 0, '6 February 2023, 0:55', NULL),
(16, 'BR014', 7, 'Gudang Garam Filter', 'Gudang Garam', '19000', '24000', 6, 0, '6 February 2023, 0:56', NULL),
(17, 'BR015', 2, 'Minyak Fortune 2L', 'Fortune', '19000', '25000', 6, 0, '6 February 2023, 0:56', NULL),
(18, 'BR016', 7, 'Marlboro Merah', 'Marlboro', '25000', '33000', 6, 0, '6 February 2023, 0:58', NULL),
(19, 'BR017', 5, 'Teh Pucuk 350ml', 'Teh Pucuk', '2300', '4000', 16, 0, '6 February 2023, 0:59', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gudang`
--

CREATE TABLE `gudang` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'pembelian, rusak, kadaluarsa',
  `no_order` varchar(255) DEFAULT '0',
  `hitung` varchar(255) DEFAULT NULL COMMENT 'ditambah, dikurang',
  `id_barang` varchar(11) DEFAULT NULL,
  `qty` int(25) DEFAULT NULL,
  `id_supplier` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `f_delete` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`, `f_delete`) VALUES
(1, 'ATK', '4 January 2023, 22:29', 0),
(2, 'Sembako', '4 January 2023, 22:29', 0),
(3, 'Furniture', '4 January 2023, 22:29', 1),
(4, 'Makanan', '14 January 2023, 9:11', 0),
(5, 'Minuman', '14 January 2023, 9:11', 0),
(6, 'Alat Listrik', '14 January 2023, 9:15', 0),
(7, 'Rokok ', '6 February 2023, 0:37', 0),
(8, 'Botol', '6 February 2023, 0:45', 1),
(9, 'Ice Cream', '6 February 2023, 0:54', 0),
(10, 'Kertas', '6 February 2023, 1:00', 0),
(11, 'Benang', '6 February 2023, 1:01', 0),
(12, 'Material', '6 February 2023, 1:02', 0),
(13, 'Alat Mandi', '6 February 2023, 1:11', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id`, `nama`) VALUES
(1, 'Admin'),
(2, 'Kasir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `nama_profile` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `level` int(11) NOT NULL,
  `gambar` text DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `f_delete` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `nama_profile`, `user`, `pass`, `level`, `gambar`, `no_hp`, `email`, `alamat`, `f_delete`) VALUES
(1, 'Admin', 'admin', '123', 1, '1676813019Logo-Trilogi.png', '0838', 'dandy@dah.ta', 'jl raya', 0),
(4, 'Zarkasihedit', 'kasiredit', '123', 2, '1676820567noimage.png', '0878', 'tes@gmail.com', 'jl tes', 0),
(6, 'Tes tambah', 'ini2', '123', 2, '1676812993Coconut.png', '021555845', 'jos@nsj.com', 'JAksel', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_in`
--

CREATE TABLE `order_in` (
  `id` int(11) NOT NULL,
  `no_order` varchar(255) DEFAULT NULL,
  `tanggal_order` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'pembelian/bonus',
  `id_barang` varchar(255) CHARACTER SET latin1 NOT NULL,
  `harga_beli` decimal(11,2) DEFAULT NULL,
  `harga_jual` decimal(11,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `discount_qty` decimal(11,2) DEFAULT NULL,
  `discount_order` decimal(11,2) DEFAULT NULL,
  `harga_total` decimal(11,2) DEFAULT NULL,
  `pengirim` varchar(25) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `tanggal_terima` date DEFAULT NULL,
  `f_status` varchar(255) DEFAULT 'unpaid',
  `f_delete` int(11) DEFAULT 0,
  `tanggal_input` varchar(255) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `order_in`
--

INSERT INTO `order_in` (`id`, `no_order`, `tanggal_order`, `type`, `id_barang`, `harga_beli`, `harga_jual`, `qty`, `discount_qty`, `discount_order`, `harga_total`, `pengirim`, `catatan`, `tanggal_terima`, `f_status`, `f_delete`, `tanggal_input`) VALUES
(15, '0001-PEM-18-02-23', '2023-02-18', 'pembelian', 'BR017', '2300.00', '4000.00', 72, '0.00', '0.00', '165600.00', 'SP001', '', '2023-02-18', 'paid', 0, '2023-02-18 01:02:45'),
(16, '0002-PEM-18-02-23', '2023-02-18', 'pembelian', 'BR012', '1500.00', '2000.00', 21, '0.00', '0.00', '31500.00', 'SP006', '', '2023-02-18', 'paid', 0, '2023-02-18 01:03:44'),
(17, '0003-PEM-19-02-23', '2023-02-19', 'pembelian', 'BR013', '23000.00', '30000.00', 21, '0.00', '0.00', '483000.00', 'SP007', '', '2023-02-19', 'paid', 0, '2023-02-19 05:10:58'),
(18, '0004-PEM-19-02-23', '2023-02-19', 'pembelian', 'BR016', '25000.00', '33000.00', 13, '0.00', '0.00', '325000.00', 'SP001', '', NULL, 'unpaid', 0, '2023-02-19 05:20:19'),
(19, '0005-PEM-19-02-23', '2023-02-19', 'pembelian', 'BR015', '19000.00', '25000.00', 2, '0.00', '0.00', '38000.00', 'SP001', '', '2023-02-19', 'paid', 0, '2023-02-19 09:14:45'),
(20, '0005-PEM-19-02-23', '2023-02-19', 'pembelian', 'BR012', '1500.00', '2000.00', 2, '0.00', '0.00', '3000.00', 'SP001', '', '2023-02-19', 'paid', 0, '2023-02-19 09:14:45'),
(21, '0006-PEM-19-02-23', '2023-02-19', 'pembelian', 'BR015', '19000.00', '25000.00', 2, '0.00', '0.00', '38000.00', 'SP007', '', NULL, 'unpaid', 0, '2023-02-19 09:15:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_out`
--

CREATE TABLE `order_out` (
  `id` int(11) NOT NULL,
  `no_order` varchar(255) DEFAULT NULL,
  `tanggal_order` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'penjualan/retur/rusak/hilang',
  `id_barang` varchar(255) CHARACTER SET latin1 NOT NULL,
  `harga_beli` decimal(11,2) DEFAULT NULL,
  `harga_jual` decimal(11,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `discount_qty` decimal(11,2) DEFAULT NULL,
  `discount_order` decimal(11,2) DEFAULT NULL,
  `harga_total` decimal(11,2) DEFAULT NULL,
  `penerima` varchar(25) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `f_status` varchar(255) DEFAULT 'paid',
  `f_delete` int(11) DEFAULT 0,
  `tanggal_input` varchar(255) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `order_out`
--

INSERT INTO `order_out` (`id`, `no_order`, `tanggal_order`, `type`, `id_barang`, `harga_beli`, `harga_jual`, `qty`, `discount_qty`, `discount_order`, `harga_total`, `penerima`, `catatan`, `f_status`, `f_delete`, `tanggal_input`) VALUES
(30, '0001-OUT-18-02-23', '2023-02-18', 'Rusak', 'BR017', '2300.00', '4000.00', 22, '0.00', '0.00', '50600.00', '0000', '', 'paid', 0, '2023-02-18 01:06:04'),
(31, '0001-INV-18-02-23', '2023-02-18', 'penjualan', 'BR017', '2300.00', '4000.00', 12, '0.00', '0.00', '48000.00', '0000', '', 'paid', 0, '2023-02-18 01:06:48'),
(32, '0002-OUT-18-02-23', '2023-02-18', 'Hilang', 'BR017', '2300.00', '4000.00', 3, '0.00', '0.00', '6900.00', '0000', '', 'paid', 0, '2023-02-18 01:07:37'),
(33, '0003-OUT-18-02-23', '2023-02-18', 'Retur', 'BR017', '2300.00', '4000.00', 2, '0.00', '0.00', '4600.00', '0000', '', 'paid', 0, '2023-02-18 01:10:15'),
(34, '0002-INV-18-02-23', '2023-02-18', 'penjualan', 'BR012', '1500.00', '2000.00', 2, '0.00', '234.00', '3766.00', '0000', '', 'paid', 0, '2023-02-18 01:20:14'),
(35, '0003-INV-19-02-23', '2023-02-19', 'penjualan', 'BR017', '2300.00', '4000.00', 2, '0.00', '0.00', '8000.00', '0000', '', 'paid', 0, '2023-02-19 05:19:51'),
(36, '0004-INV-19-02-23', '2023-02-19', 'penjualan', 'BR012', '1500.00', '2000.00', 2, '0.00', '0.00', '4000.00', '0000', '', 'paid', 0, '2023-02-19 07:15:39'),
(37, '0005-INV-19-02-23', '2023-02-19', 'penjualan', 'BR017', '2300.00', '4000.00', 2, '0.00', '0.00', '8000.00', '0000', '', 'paid', 0, '2023-02-19 10:04:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tgl_input` varchar(255) DEFAULT NULL,
  `f_delete` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`id`, `nama`, `tgl_input`, `f_delete`) VALUES
(1, 'PCS', NULL, 1),
(2, 'BOTOL', NULL, 1),
(3, 'PACK', NULL, 1),
(4, 'UNIT', NULL, 1),
(5, 'Sachet', '14 January 2023, 9:23', 0),
(6, 'Pcs', '6 February 2023, 0:38', 0),
(7, 'Box', '6 February 2023, 0:38', 0),
(8, 'Unit', '6 February 2023, 0:38', 0),
(9, 'Batang', '6 February 2023, 0:38', 0),
(10, 'Liter', '6 February 2023, 0:38', 0),
(11, 'Kg', '6 February 2023, 0:38', 0),
(12, 'Lembar', '6 February 2023, 0:39', 0),
(13, 'Pasang', '6 February 2023, 0:39', 0),
(14, 'Batang', '6 February 2023, 0:39', 1),
(15, 'Lusin', '6 February 2023, 0:39', 0),
(16, 'Botol', '6 February 2023, 0:52', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `id_supplier` varchar(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_input` varchar(225) NOT NULL,
  `tgl_update` varchar(225) DEFAULT NULL,
  `f_delete` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id`, `id_supplier`, `nama`, `alamat`, `telepon`, `keterangan`, `tgl_input`, `tgl_update`, `f_delete`) VALUES
(1, 'SP001', 'Toko Ishak', 'Jl. Pedurenan Mesjid 1 no.5 5/4', '(021) 7577895', 'Supplier Sembako', '4 January 2023, 22:27', '6 February 2023, 0:27', 0),
(2, 'SP002', 'PT Hanjaya Mandala Sampoerna Tbk', 'Jl. Rungkut Industri Raya No. 18 Surabaya, Jawa Timur', '(021) 5151234', 'Supplier Rokok', '4 January 2023, 22:28', '10 January 2023, 16:20', 0),
(3, 'SP003', 'PT. Aice Ice Cream', 'The Suites Tower, Lt. 18 Jl. Boulevard Pantai Indah Kapuk No.1 Penjaringan', '(021) 22511112', 'Supplier Ice Cream', '4 January 2023, 22:28', '10 January 2023, 16:31', 0),
(5, 'SP004', 'Toko Rusli', 'Jl. Pedurenan Mesjid 4 No.8 12/4', '(021) 5225831', 'Supplier Gas', '14 January 2023, 7:01', '6 February 2023, 0:28', 1),
(6, 'SP004', 'Toko Rusli', 'Jl. Pedurenan Mesjid 4 No.8 12/4', '(021) 5225831', 'Supplier Gas', '6 February 2023, 0:24', '6 February 2023, 0:28', 0),
(7, 'SP005', 'Toko Sederhana H Marijo', 'Jl. Menteng Pulo Pasar Menteng Pulo 3/5 ', '(021) 8307082', 'Supplier Sembako', '6 February 2023, 0:30', NULL, 0),
(8, 'SP006', 'Toko Berkat Jatinegara 2', 'Pasar Jatinegara, Jl. Pintu Ps. Timur No.51, RT.10/RW.4', '(021) 8574450', 'Supplier Kue', '6 February 2023, 0:31', NULL, 0),
(9, 'SP007', 'Toko Sintjong', 'Jl. Karet Pedurenan No.2, RT.6/RW.7', '(021) 5254215', 'Supplier Sembako', '6 February 2023, 0:34', '6 February 2023, 0:35', 0),
(10, 'SP008', 'Friska Cell', 'Jl. Karet Pedurenan No.62, RT.9/RW.4', '085234972207', 'Supplier Pulsa Elektronik', '6 February 2023, 0:36', '6 February 2023, 0:36', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL,
  `f_delete` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`, `f_delete`) VALUES
(1, 'SRC ICO', 'JL. PEDURENAN MASJID 4 02/04 NO.40,  SETIABUDI, JAKARTA SELATAN', '081228283811', 'Muhammad Shodri', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `gudang`
--
ALTER TABLE `gudang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`) USING BTREE;

--
-- Indeks untuk tabel `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`) USING BTREE;

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`) USING BTREE;

--
-- Indeks untuk tabel `order_in`
--
ALTER TABLE `order_in`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `order_out`
--
ALTER TABLE `order_out`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `gudang`
--
ALTER TABLE `gudang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `order_in`
--
ALTER TABLE `order_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `order_out`
--
ALTER TABLE `order_out`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
