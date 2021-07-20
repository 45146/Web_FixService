-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jul 2021 pada 15.49
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fix_service_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(25) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(200) NOT NULL,
  `foto` varchar(11) NOT NULL DEFAULT 'admin.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `foto`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `link_tp` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `jenis`, `harga`, `tanggal_masuk`, `stok`, `gambar`, `link_tp`) VALUES
(121001, 'Lokai 832 Gaming Keyboard LED', 2, 175000, '2021-04-22', 4, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/20/80945cd9-f19b-42ff-aba0-421d83253c16.png.webp?ect=4g', 'https://www.tokopedia.com/fixservice/lokai-832-gaming-keyboard-led'),
(121002, 'Baterai Laptop ASUS Ori X441 X441S ', 2, 400000, '2021-04-22', 2, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/20/01910067-6708-4969-9ee1-c88730e7e44d.png.webp?ect=4g', 'https://www.tokopedia.com/fixservice/baterai-laptop-asus-ori-x441-x441s'),
(121003, 'Baterai Laptop KW ACER TM3012 ', 2, 150000, '2021-04-22', 6, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/20/c0e8174f-0d27-4be8-8222-5452d2e2c51f.png.webp?ect=4g', 'https://www.tokopedia.com/fixservice/baterai-laptop-kw-acer-tm3012'),
(121004, 'Baterai CMOS Sony Lithium CR2032 3V', 2, 3000, '2021-04-22', 4, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/20/564b575a-81c5-4f5a-bd39-04a53f93c84f.png.webp?ect=4g', 'https://www.tokopedia.com/fixservice/baterai-cmos-sony-lithium-cr2032-3v'),
(121005, 'RAM Corsair Vengeance RGB Pro DDR4 16GB', 2, 1950000, '2021-04-22', 2, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/20/49ed85f0-f034-4f9e-99a5-04b7946ca2c1.png.webp?ect=4g', 'https://www.tokopedia.com/fixservice/ram-corsair-vengeance-rgb-pro-ddr4-16gb'),
(121006, 'JOYSEUS Mouse Wireless Mouse 1800DPI ', 2, 85000, '2021-04-22', 7, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/20/65bd1aa8-08d7-4d1c-b84d-0617e2841ae5.png.webp?ect=4g', 'https://www.tokopedia.com/fixservice/joyseus-mouse-wireless-mouse-1800dpi'),
(121007, 'Wireless Headphone Xy800', 2, 80000, '2021-04-22', 6, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/20/16ef4582-8f7b-407e-9ce5-7b98f2ada485.png.webp?ect=4g', 'https://www.tokopedia.com/fixservice/wireless-headphone-xy800'),
(121008, 'Harddisk Internal Seagate Barracuda 1TB HDD', 2, 700000, '2021-04-22', 3, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/20/906f92a0-8d41-4a99-8086-b4a49f020a7e.png.webp?ect=4g', 'https://www.tokopedia.com/fixservice/harddisk-internal-seagate-barracuda-1tb-hdd'),
(121009, 'Harddisk External Seagate Backup Plus 2Tb Usb 3.0', 2, 1200000, '2021-04-22', 9, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/20/cc2154b3-ce6f-4192-8ee7-646912d0dc05.png.webp?ect=4g', 'https://www.tokopedia.com/fixservice/harddisk-external-seagate-backup-plus-2tb-usb-3-0'),
(121010, 'Internet Download Manager', 1, 300000, '2021-04-22', 9, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/20/028700a7-2429-49ef-b0ff-69ed95cb28d2.png.webp?ect=4g', 'https://www.tokopedia.com/fixservice/internet-download-manager'),
(121011, 'Adobe Photoshop CC 2020', 1, 300000, '2021-04-22', 2, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/20/0caa9f88-bbc8-44bd-be87-e608e73999fe.png.webp?ect=4g', 'https://www.tokopedia.com/fixservice/adobe-photoshop-cc-2020'),
(121012, 'Microsoft Office Professional 2013', 1, 250000, '2021-04-22', 4, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/20/bb3e391f-d797-40a6-a494-24fec1a33b32.png.webp?ect=4g', 'https://www.tokopedia.com/fixservice/microsoft-office-professional-2013'),
(121013, 'Ms. Office Professional Plus 2016', 1, 500000, '2021-04-22', 7, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/20/627ed87e-fe6f-4b94-89d1-20b990ba014d.png.webp?ect=4g', 'https://www.tokopedia.com/fixservice/ms-office-professional-plus-2016');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_barang`
--

CREATE TABLE `jenis_barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_barang`
--

INSERT INTO `jenis_barang` (`id`, `nama`) VALUES
(1, 'software'),
(2, 'hardware');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `ID_member` int(11) NOT NULL,
  `nama_member` text NOT NULL,
  `no_telpon_member` varchar(12) NOT NULL,
  `email_member` text NOT NULL,
  `password_member` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`ID_member`, `nama_member`, `no_telpon_member`, `email_member`, `password_member`) VALUES
(1, 'Samuel Ardiyanto', '082143492371', 'ardiyantosamuel@yahoo.com', '12332101');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service`
--

CREATE TABLE `service` (
  `ID_service` int(11) NOT NULL,
  `Nama_service` text NOT NULL,
  `Kategori_service` text NOT NULL,
  `Biaya_service` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `service`
--

INSERT INTO `service` (`ID_service`, `Nama_service`, `Kategori_service`, `Biaya_service`) VALUES
(2, 'Deep cleaning PC', 'PC', '75000'),
(3, 'Install Ulang OS', 'PC/Laptop', '50000'),
(4, 'Install Ulang OS + Software', 'PC/Laptop', '100000'),
(5, 'Flash Bios', 'PC/Laptop', '150000'),
(6, 'Service Keyboard', 'Laptop', '350000'),
(7, 'Service / Ganti RAM', 'PC/Laptop', '400000'),
(8, 'Service Harddisk', 'PC/Laptop', '500000'),
(9, 'Service Layar', 'Laptop', '175000'),
(10, 'Service Speaker', 'Laptop', '250000'),
(11, 'Service Baterai KW', 'Laptop', '300000'),
(12, 'Service Baterai Ori', 'Laptop', '750000'),
(13, 'Service Mainboard', 'Laptop', '250000'),
(14, 'Service Engsel', 'Laptop', '150000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service_order`
--

CREATE TABLE `service_order` (
  `ID_order` int(11) NOT NULL,
  `nama_client` text NOT NULL,
  `no_telpon_client` text NOT NULL,
  `email_client` text NOT NULL,
  `alamat_service` text NOT NULL,
  `waktu_service` timestamp NULL DEFAULT NULL,
  `service` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `status` int(1) NOT NULL,
  `pegawai` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `service_order`
--

INSERT INTO `service_order` (`ID_order`, `nama_client`, `no_telpon_client`, `email_client`, `alamat_service`, `waktu_service`, `service`, `deskripsi`, `status`, `pegawai`) VALUES
(4, 'Samuel Ardiyanto', '082143492371', 'ardiyantosamuel@yahoo.com', 'Jl Jawi no.3', '2021-04-28 17:47:00', 2, 'yang bersih', 2, 123002),
(7, 'Samuel Ardiyanto', '082143492371', 'ardiyantosamuel@yahoo.com', 'Malang', '2021-05-22 06:37:00', 2, 'yang bersih', 0, NULL);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `service_order_view`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `service_order_view` (
`ID_order` int(11)
,`nama_client` text
,`no_telpon_client` text
,`email_client` text
,`alamat_service` text
,`waktu_service` timestamp
,`service` int(11)
,`deskripsi` text
,`status` int(1)
,`pegawai` int(11)
,`status_service` varchar(11)
,`nama_service` text
,`kategori_service` text
,`biaya_service` text
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_service`
--

CREATE TABLE `status_service` (
  `id` int(11) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_service`
--

INSERT INTO `status_service` (`id`, `status`) VALUES
(0, 'diproses'),
(1, 'dikerjakan'),
(2, 'selesai');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `track_service`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `track_service` (
`Nama_service` text
,`deskripsi` text
,`waktu_service` timestamp
,`pegawai` text
,`status` varchar(11)
,`email_client` text
,`ID_order` int(11)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `worker`
--

CREATE TABLE `worker` (
  `ID_worker` int(11) NOT NULL,
  `nama_worker` text NOT NULL,
  `no_telpon` text NOT NULL,
  `Bidang_ahli` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `worker`
--

INSERT INTO `worker` (`ID_worker`, `nama_worker`, `no_telpon`, `Bidang_ahli`) VALUES
(123001, 'Laila', '235523524', 'PC'),
(123002, 'Robert', '362351341', 'Laptop'),
(123003, 'Madrins', '342412313', 'PC'),
(123004, 'Olivia\r\n', '152613124\r\n', 'Laptop');

-- --------------------------------------------------------

--
-- Struktur untuk view `service_order_view`
--
DROP TABLE IF EXISTS `service_order_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `service_order_view`  AS SELECT `service_order`.`ID_order` AS `ID_order`, `service_order`.`nama_client` AS `nama_client`, `service_order`.`no_telpon_client` AS `no_telpon_client`, `service_order`.`email_client` AS `email_client`, `service_order`.`alamat_service` AS `alamat_service`, `service_order`.`waktu_service` AS `waktu_service`, `service_order`.`service` AS `service`, `service_order`.`deskripsi` AS `deskripsi`, `service_order`.`status` AS `status`, `service_order`.`pegawai` AS `pegawai`, `status_service`.`status` AS `status_service`, `service`.`Nama_service` AS `nama_service`, `service`.`Kategori_service` AS `kategori_service`, `service`.`Biaya_service` AS `biaya_service` FROM (((`service_order` join `status_service` on(`service_order`.`status` = `status_service`.`id`)) left join `worker` on(`service_order`.`pegawai` = `worker`.`ID_worker`)) join `service` on(`service`.`ID_service` = `service_order`.`service`)) WHERE `status_service`.`status` = 'selesai' ORDER BY `service_order`.`waktu_service` ASC ;

-- --------------------------------------------------------

--
-- Struktur untuk view `track_service`
--
DROP TABLE IF EXISTS `track_service`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `track_service`  AS SELECT `service`.`Nama_service` AS `Nama_service`, `service_order`.`deskripsi` AS `deskripsi`, `service_order`.`waktu_service` AS `waktu_service`, `worker`.`nama_worker` AS `pegawai`, `status_service`.`status` AS `status`, `service_order`.`email_client` AS `email_client`, `service_order`.`ID_order` AS `ID_order` FROM (((`service_order` join `service` on(`service_order`.`service` = `service`.`ID_service`)) left join `worker` on(`service_order`.`pegawai` = `worker`.`ID_worker`)) join `status_service` on(`service_order`.`status` = `status_service`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenis` (`jenis`);

--
-- Indeks untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`ID_member`);

--
-- Indeks untuk tabel `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`ID_service`);

--
-- Indeks untuk tabel `service_order`
--
ALTER TABLE `service_order`
  ADD PRIMARY KEY (`ID_order`),
  ADD KEY `service` (`service`),
  ADD KEY `status` (`status`),
  ADD KEY `pegawai` (`pegawai`);

--
-- Indeks untuk tabel `status_service`
--
ALTER TABLE `status_service`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`ID_worker`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `ID_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `service`
--
ALTER TABLE `service`
  MODIFY `ID_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `service_order`
--
ALTER TABLE `service_order`
  MODIFY `ID_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`jenis`) REFERENCES `jenis_barang` (`id`);

--
-- Ketidakleluasaan untuk tabel `service_order`
--
ALTER TABLE `service_order`
  ADD CONSTRAINT `service` FOREIGN KEY (`service`) REFERENCES `service` (`ID_service`),
  ADD CONSTRAINT `service_order_ibfk_1` FOREIGN KEY (`status`) REFERENCES `status_service` (`id`),
  ADD CONSTRAINT `service_order_ibfk_2` FOREIGN KEY (`pegawai`) REFERENCES `worker` (`ID_worker`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
