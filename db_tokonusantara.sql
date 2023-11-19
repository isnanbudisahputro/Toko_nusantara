-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2023 pada 08.28
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokonusantara`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Isnan Budi Sahputro', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '082217878888', 'isnanbudi.sahputro@gmail.com', 'Jalan Darma Wanita IV Jakarta Barat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(7, 'Laptop'),
(8, 'Handphone'),
(9, 'Buku'),
(10, 'Handsfree'),
(11, 'Pakaian Pria'),
(12, 'Pakaian Wanita'),
(13, 'Buah'),
(15, 'Sayur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(9, 7, 'Laptop acer', 7000000, '<p>Intel i5-4210U Up to 2.7 Ghz, 4GB RAM, 500GB storage</p>\r\n', 'produk1700100351.jpg', 1, '2023-11-16 02:05:51'),
(14, 12, 'Hem polos katun', 100000, '<ul>\r\n	<li>Alenya Blouse</li>\r\n	<li>bahan Katun Poly</li>\r\n</ul>\r\n', 'produk1700101446.jpg', 1, '2023-11-16 02:24:06'),
(15, 11, 'Kaos T-Shirt tees Victory', 130000, '<p>Spesifikasi =</p>\r\n\r\n<p>* Bahan : Cotton Combed 24S</p>\r\n\r\n<p>* Steam.</p>\r\n\r\n<p>* lengan Pendek</p>\r\n', 'produk1700101653.jpeg', 1, '2023-11-16 02:27:33'),
(16, 10, 'Handsfree Bluetooth Vivo ', 150000, '<p>Detail produk dari Vivo Original Headset Bluetooth 4.1 Earphone Build-in Mic Handfree Headset Bloetooth Charging time: 2 hours Suara Jernih</p>\r\n', 'produk1700101984.jpeg', 1, '2023-11-16 02:33:04'),
(17, 13, 'Buah Apel Fuji per kg', 40000, '<p>An apple a day keeps the doctor away. Apple is a great source of Vitamins.</p>\r\n', 'produk1700102365.jpeg', 1, '2023-11-16 02:39:25'),
(18, 8, 'HP Infinix', 2500000, '<p><em>Infinix</em>&nbsp;Zero 5G 2023 &middot; Layar: IPS LCD, 120Hz, 6.78 inches, 1080 x 2460 pixels &middot; Chipset: Mediatek Dimensity 920 (6 nm) &middot; GPU: Mali-G68 MC4 &middot;<br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n', 'produk1700112931.jpg', 1, '2023-11-16 05:35:31'),
(19, 9, 'Buku Panduan Resmi Tes CPNS CAT', 190000, '<p>Buku Panduan Resmi Tes CPNS CAT merupakan buku terlengkap untuk persiapan tes CPNS. Buku ini berisikan materi dan ribuan kombinasi paket soal CAT yang sesuai dengan aslinya.</p>\r\n', 'produk1700113422.jpg', 0, '2023-11-16 05:43:42'),
(20, 8, 'HP samsung', 5000000, '<ul>\r\n	<li>6.7&quot; HD+ Infinity-U Display</li>\r\n	<li>50MP Camera</li>\r\n	<li>5,000mAh Battery 25W Fast Charging</li>\r\n</ul>\r\n', 'produk1700131773.jpg', 1, '2023-11-16 10:49:33'),
(21, 8, 'HP samsung Galaxy', 6000000, '<ul>\r\n	<li>6.7&quot;FHD+120Hz Display</li>\r\n	<li>108MP OIS Camera</li>\r\n	<li>6,000mAh (Typical) Battery</li>\r\n</ul>\r\n', 'produk1700131884.jpg', 1, '2023-11-16 10:51:24'),
(22, 11, 'Baju pria keren', 110000, '<p><em>Pakaian</em>&nbsp;Atasan&nbsp;<em>Pria</em>&nbsp;untuk Outfit Makin Kece &middot;</p>\r\n', 'produk1700132225.jpg', 1, '2023-11-16 10:57:05'),
(23, 12, 'baju wanita keren', 100000, '<p>pakain wanita</p>\r\n', 'produk1700142568.jpg', 1, '2023-11-16 13:47:38');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD CONSTRAINT `tb_product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tb_category` (`category_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
