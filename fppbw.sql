-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jul 2023 pada 00.51
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fppbw`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailtransaksi`
--

CREATE TABLE `detailtransaksi` (
  `kode_transaksi` int(11) NOT NULL,
  `id_menu` varchar(20) NOT NULL,
  `harga` int(15) NOT NULL,
  `qty` int(15) NOT NULL,
  `total_harga` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detailtransaksi`
--

INSERT INTO `detailtransaksi` (`kode_transaksi`, `id_menu`, `harga`, `qty`, `total_harga`) VALUES
(1, '01', 10000, 1, 10000),
(1, '02', 10000, 1, 10000),
(2, '01', 10000, 1, 10000),
(2, '02', 10000, 2, 20000),
(2, '05', 10000, 2, 20000),
(3, '01', 10000, 1, 10000),
(6, '18', 9000, 2, 18000),
(7, '23', 9000, 2, 18000),
(8, '01', 10000, 1, 10000),
(8, '02', 10000, 1, 10000),
(9, '10', 10000, 2, 20000),
(9, '17', 9000, 1, 9000),
(10, '01', 10000, 1, 10000),
(11, '01', 10000, 2, 20000),
(11, '31', 9000, 1, 9000),
(11, '32', 9000, 1, 9000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` varchar(20) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `harga` int(15) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `harga`, `gambar`) VALUES
('01', 'Mie Suit', 10000, 'miesuit.jpg'),
('02', 'Mie Hompimpa Level 1', 10000, 'miehompimpa.jpg'),
('03', 'Mie Hompimpa Level 2', 10000, 'miehompimpa.jpg'),
('04', 'Mie Hompimpa Level 3', 10000, 'miehompimpa.jpg'),
('05', 'Mie Hompimpa Level 4', 10000, 'miehompimpa.jpg'),
('06', 'Mie Hompimpa Level 6', 11000, 'miehompimpa.jpg'),
('07', 'Mie Hompimpa Level 7', 11000, 'miehompimpa.jpg'),
('08', 'Mie Hompimpa Level 8', 11000, 'miehompimpa.jpg'),
('09', 'Mie Gacoan Level 0', 10000, 'miegacoan.jpg'),
('10', 'Mie Gacoan Level 1', 10000, 'miegacoan.jpg'),
('11', 'Mie Gacoan Level 2', 10000, 'miegacoan.jpg'),
('12', 'Mie Gacoan Level 3', 10000, 'miegacoan.jpg'),
('13', 'Mie Gacoan Level 4', 10000, 'miegacoan.jpg'),
('14', 'Mie Gacoan Level 6', 11000, 'miegacoan.jpg'),
('15', 'Mie Gacoan Level 7', 11000, 'miegacoan.jpg'),
('16', 'Mie Gacoan Level 8', 11000, 'miegacoan.jpg'),
('17', 'Siomay', 9000, 'siomay.jpg'),
('18', 'Ceker', 9000, 'ceker.jpg'),
('19', 'Udang Rambutan', 9000, 'udangrambutan.jpg'),
('20', 'Udang Keju', 9000, 'udangkeju.jpg'),
('21', 'Lumpiang Udang', 9000, 'lumpiaudang.jpg'),
('22', 'Pangsit Goreng', 10000, 'pangsitgoreng.jpg'),
('23', 'Es Gobak Sodor', 9000, 'esgobaksodor.jpg'),
('24', 'Es Teklek', 5000, 'esteklek.jpg'),
('25', 'Es Sluku Bathok', 6000, 'esslukubathok.jpg'),
('26', 'Es Petak Umpet', 9000, 'espetakumpet.jpg'),
('27', 'Es Teh', 4000, 'esteh.jpg'),
('28', 'Es Jeruk', 5000, 'esjeruk.jpg'),
('29', 'Lemon Tea', 6000, 'lemontea.jpg'),
('30', 'Teh Tarik', 6000, 'tehtarik.jpg'),
('31', 'Milo', 9000, 'esmilo.jpg'),
('32', 'Vanila Latte', 9000, 'esvanilalatte.jpg'),
('33', 'Air Mineral', 4000, 'airmineral.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `pegawai_nama` varchar(10) NOT NULL,
  `pegawai_umur` int(11) NOT NULL,
  `pegawai_alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `pegawai_nama`, `pegawai_umur`, `pegawai_alamat`) VALUES
(1, 'Argono Irn', 29, 'Dk. Astana Anyar No. 792, Surakarta 71336, KalSel'),
(2, 'Cakrawangs', 28, 'Ki. Sukajadi No. 450, Sibolga 98910, JaBar'),
(3, 'Wardaya Pa', 26, 'Ki. Soekarno Hatta No. 774, Cimahi 85529, SulBar'),
(4, 'Asmianto T', 26, 'Jln. Nakula No. 542, Mataram 80011, Riau'),
(5, 'Jasmin Sar', 26, 'Psr. Gedebage Selatan No. 951, Ambon 51142, KalTim'),
(6, 'Banawi Sim', 25, 'Gg. Salatiga No. 497, Jayapura 14109, SumSel'),
(7, 'Amalia Dia', 31, 'Dk. Sugiyopranoto No. 926, Jambi 61860, SumUt'),
(8, 'Abyasa Hut', 38, 'Dk. Teuku Umar No. 824, Lhokseumawe 14676, MalUt'),
(9, 'Tina Nasyi', 33, 'Ds. Bacang No. 28, Gorontalo 73123, DIY'),
(10, 'Dartono Sa', 32, 'Gg. Kartini No. 647, Cimahi 94574, Banten'),
(11, 'Widya Suci', 25, 'Kpg. Bahagia No. 878, Kotamobagu 98264, Lampung'),
(12, 'Akarsana H', 34, 'Jln. Ki Hajar Dewantara No. 423, Bekasi 53736, NTT'),
(13, 'Titi Oktav', 27, 'Jr. HOS. Cjokroaminoto (Pasirkaliki) No. 7, Bogor 39146, DKI'),
(14, 'Samiah Rah', 33, 'Dk. Sumpah Pemuda No. 925, Administrasi Jakarta Selatan 22713, Riau'),
(15, 'Cinta Wula', 34, 'Kpg. Suryo Pranoto No. 595, Administrasi Jakarta Barat 18262, KepR'),
(16, 'Tantri Pad', 29, 'Kpg. Dewi Sartika No. 986, Kendari 88205, KalBar'),
(17, 'Bakda Sito', 35, 'Dk. Basket No. 661, Banjarmasin 61607, BaBel'),
(18, 'Ophelia Nu', 30, 'Jln. Peta No. 488, Semarang 68924, SumUt'),
(19, 'Taufan Pra', 31, 'Jr. Ketandan No. 991, Palembang 26686, SumUt'),
(20, 'Safina Kas', 36, 'Jr. Baranang Siang No. 801, Tidore Kepulauan 36022, KalUt'),
(21, 'Padmi Auro', 36, 'Dk. Bakaru No. 833, Bima 63207, KalSel'),
(22, 'Yani Purna', 40, 'Dk. Taman No. 47, Bogor 96969, PapBar'),
(23, 'Unjani Has', 36, 'Jln. Suharso No. 381, Tanjung Pinang 68019, SumBar'),
(24, 'Yessi Muly', 33, 'Kpg. Bara Tambar No. 849, Gunungsitoli 19942, Bali'),
(25, 'Hasna Kusm', 34, 'Jln. Haji No. 970, Metro 83489, SulTeng'),
(26, 'Rafid Maul', 36, 'Dk. Sutarto No. 761, Banda Aceh 83637, JaTim'),
(27, 'Rina Namag', 37, 'Jr. Veteran No. 549, Sawahlunto 86698, NTB'),
(28, 'Tari Salsa', 35, 'Ki. K.H. Wahid Hasyim (Kopo) No. 806, Subulussalam 67572, SulSel'),
(29, 'Karsa Tari', 34, 'Psr. Bacang No. 897, Banjarmasin 55333, NTT'),
(30, 'Ilyas Zulk', 38, 'Ki. Sumpah Pemuda No. 722, Madiun 84457, PapBar'),
(31, 'Ophelia Su', 28, 'Gg. Monginsidi No. 423, Administrasi Jakarta Selatan 99826, Bali'),
(32, 'Edison Sin', 35, 'Jr. Yap Tjwan Bing No. 280, Bontang 70691, JaTim'),
(33, 'Ghaliyati ', 30, 'Psr. Otista No. 486, Pontianak 13616, Lampung'),
(34, 'Jamalia Pe', 39, 'Jr. Mulyadi No. 793, Administrasi Jakarta Utara 96480, JaTeng'),
(35, 'Pardi Siho', 28, 'Kpg. Baranang No. 155, Padangsidempuan 73382, SulTra'),
(36, 'Ihsan Arsi', 40, 'Dk. Bara No. 905, Palembang 62740, KalSel'),
(37, 'Gada Narpa', 39, 'Ki. Samanhudi No. 365, Pagar Alam 17531, SulBar'),
(38, 'Jaga Utama', 35, 'Gg. Otto No. 10, Tidore Kepulauan 85647, KalTeng'),
(39, 'Prayitna K', 30, 'Ki. Supono No. 618, Yogyakarta 60308, Banten'),
(40, 'Jelita Nam', 29, 'Ds. Batako No. 115, Tanjungbalai 62921, NTT'),
(41, 'Tomi Sitom', 35, 'Gg. Samanhudi No. 231, Balikpapan 35414, SumSel'),
(42, 'Malika Nur', 39, 'Ds. Pacuan Kuda No. 851, Kupang 94061, KalTeng'),
(43, 'Dadi Lazua', 27, 'Jr. Acordion No. 844, Cimahi 37923, KalBar'),
(44, 'Dacin Suwa', 29, 'Jln. Basoka No. 188, Payakumbuh 34164, SulTeng'),
(45, 'Ibrani Sam', 34, 'Ds. Radio No. 344, Semarang 15878, SumBar'),
(46, 'Iriana Sus', 35, 'Jln. Barat No. 686, Batam 92165, Bengkulu'),
(47, 'Laras Hand', 31, 'Ds. Tentara Pelajar No. 395, Pematangsiantar 25208, SulSel'),
(48, 'Halim Dadi', 40, 'Kpg. Setia Budi No. 220, Tanjungbalai 46333, SulTra'),
(49, 'Nadia Novi', 30, 'Psr. Kartini No. 179, Cimahi 52791, KalBar'),
(50, 'Zaenab Han', 40, 'Psr. Gambang No. 784, Gunungsitoli 46085, SumUt'),
(51, 'Ajimat Nap', 35, 'Kpg. Banal No. 84, Medan 72330, KepR'),
(52, 'Anastasia ', 34, 'Psr. Dipenogoro No. 430, Jayapura 47483, KepR'),
(53, 'Olivia Yul', 29, 'Ds. Baabur Royan No. 90, Singkawang 92485, Bali'),
(54, 'Devi Devi ', 36, 'Gg. Lada No. 653, Tebing Tinggi 45925, SulSel'),
(55, 'Kenzie Nab', 37, 'Dk. Bank Dagang Negara No. 948, Yogyakarta 80270, SulTra'),
(56, 'Agnes Zali', 28, 'Dk. Muwardi No. 969, Padangpanjang 48439, JaBar'),
(57, 'Tiara Juli', 33, 'Ds. M.T. Haryono No. 439, Binjai 32732, KalTeng'),
(58, 'Tedi Iswah', 38, 'Jr. Suryo Pranoto No. 736, Tual 65156, SulSel'),
(59, 'Artawan Ca', 35, 'Gg. Lada No. 186, Mojokerto 69259, KepR'),
(60, 'Aurora Kan', 35, 'Gg. Agus Salim No. 652, Payakumbuh 32366, KalTeng'),
(61, 'Oskar Hida', 34, 'Jln. Tubagus Ismail No. 886, Administrasi Jakarta Utara 53067, KalBar'),
(62, 'Maria Fuji', 39, 'Kpg. Yoga No. 314, Pasuruan 43473, MalUt'),
(63, 'Muhammad S', 37, 'Dk. Jaksa No. 423, Palembang 72779, Lampung'),
(64, 'Vicky Ayu ', 40, 'Jln. Bagonwoto  No. 413, Denpasar 71467, KepR'),
(65, 'Hesti Raha', 33, 'Kpg. Kiaracondong No. 813, Ambon 41846, KalUt'),
(66, 'Restu Ajen', 37, 'Psr. Baabur Royan No. 186, Solok 39178, NTT'),
(67, 'Empluk Har', 34, 'Ki. Basuki No. 485, Payakumbuh 80122, SulTeng'),
(68, 'Wulan Laks', 30, 'Kpg. Salam No. 434, Bogor 50284, DIY'),
(69, 'Bahuraksa ', 27, 'Ki. Zamrud No. 189, Binjai 78456, DIY'),
(70, 'Putri Wula', 35, 'Jr. Salak No. 676, Kediri 15270, Bali'),
(71, 'Marsito Ar', 25, 'Ki. K.H. Wahid Hasyim (Kopo) No. 604, Ambon 70950, MalUt'),
(72, 'Luthfi Kaw', 35, 'Jln. Tambak No. 204, Padangsidempuan 90294, Riau'),
(73, 'Ciaobella ', 27, 'Jr. Babadan No. 934, Medan 77373, SumBar'),
(74, 'Suci Yani ', 28, 'Jln. Sukabumi No. 938, Solok 92218, KalTim'),
(75, 'Hamima Eka', 37, 'Gg. Sutarto No. 289, Samarinda 60394, BaBel'),
(76, 'Satya Huta', 40, 'Dk. Bak Air No. 879, Administrasi Jakarta Timur 51646, DIY'),
(77, 'Cinta Kani', 29, 'Ki. Otto No. 221, Palu 72775, Papua'),
(78, 'Ismail Hut', 27, 'Jr. Raden No. 112, Depok 28389, Papua'),
(79, 'Gilang Dar', 27, 'Jln. Dago No. 831, Binjai 48400, PapBar'),
(80, 'Salimah Wu', 38, 'Dk. Bahagia No. 763, Surabaya 60953, SulSel'),
(81, 'Clara Fari', 34, 'Gg. Basuki Rahmat  No. 643, Pontianak 74357, SulTra'),
(82, 'Maimunah Y', 35, 'Dk. Muwardi No. 499, Bandung 19816, KalSel'),
(83, 'Edison Nug', 30, 'Dk. Baranang Siang Indah No. 841, Sibolga 33702, Banten'),
(84, 'Pranawa Ga', 31, 'Kpg. Bakit  No. 71, Malang 38095, SumSel'),
(85, 'Puput Rahi', 38, 'Jr. Jagakarsa No. 589, Malang 56511, DIY'),
(86, 'Bahuraksa ', 30, 'Ds. Babadak No. 113, Tangerang 84089, Jambi'),
(87, 'Lantar Pan', 33, 'Kpg. Basuki No. 296, Sabang 50042, NTT'),
(88, 'Rahmi Rahi', 34, 'Jln. Abdullah No. 670, Dumai 62822, Lampung'),
(89, 'Surya Angg', 38, 'Ki. Setia Budi No. 598, Administrasi Jakarta Selatan 19725, Banten'),
(90, 'Aditya Dar', 37, 'Ki. Cikutra Barat No. 529, Dumai 49536, Riau'),
(91, 'Balangga D', 34, 'Jln. Ekonomi No. 488, Pangkal Pinang 27486, SulSel'),
(92, 'Vera Astut', 25, 'Gg. Pahlawan No. 797, Ambon 69504, KepR'),
(93, 'Banawa Mau', 35, 'Dk. Supono No. 541, Jayapura 24658, SumUt'),
(94, 'Sarah Shak', 32, 'Jln. Kusmanto No. 705, Sukabumi 47392, KalTeng'),
(95, 'Zizi Zalin', 30, 'Dk. Aceh No. 531, Pangkal Pinang 48007, KepR'),
(96, 'Fitria Rah', 32, 'Jln. W.R. Supratman No. 968, Padangpanjang 36910, SulUt'),
(97, 'Hendri Sih', 27, 'Dk. W.R. Supratman No. 8, Banjar 88035, Riau'),
(98, 'Wirda Pert', 28, 'Dk. Katamso No. 736, Banjarbaru 32227, KalTeng'),
(99, 'Mitra Adit', 39, 'Jr. Tambak No. 625, Blitar 24392, KepR'),
(100, 'Karsa Lutf', 40, 'Jln. Orang No. 445, Tanjung Pinang 88858, KalBar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `status` int(1) NOT NULL,
  `status_kitchen` int(1) NOT NULL DEFAULT 1,
  `keterangan` varchar(20) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `tanggal_transaksi`, `status`, `status_kitchen`, `keterangan`, `total`) VALUES
(1, '2022-12-21 13:22:02', 3, 1, 'Dine In', 20000),
(2, '2022-12-21 13:22:02', 2, 1, 'Dine In', 50000),
(3, '2022-12-21 13:22:02', 2, 1, 'Take Away', 10000),
(6, '2022-12-21 13:22:02', 0, 3, 'Dine In', 18000),
(7, '2022-12-21 13:22:02', 3, 1, 'Dine In', 18000),
(8, '2022-12-21 13:22:02', 2, 1, 'Dine In', 20000),
(9, '2022-12-30 17:11:48', 2, 1, 'Dine In', 29000),
(10, '2022-12-30 19:39:42', 3, 1, 'Dine In', 10000),
(11, '2023-07-11 00:30:10', 1, 1, 'Dine In', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_temporary`
--

CREATE TABLE `transaksi_temporary` (
  `no_meja` varchar(5) NOT NULL,
  `nama_pelanggan` varchar(10) NOT NULL,
  `kode_transaksi` int(11) NOT NULL,
  `id_menu` varchar(20) NOT NULL,
  `harga` int(15) NOT NULL,
  `qty` int(15) NOT NULL,
  `total_harga` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_temporary`
--

INSERT INTO `transaksi_temporary` (`no_meja`, `nama_pelanggan`, `kode_transaksi`, `id_menu`, `harga`, `qty`, `total_harga`) VALUES
('21', 'rizki', 1, '01', 10000, 1, 10000),
('21', 'rizki', 1, '02', 10000, 1, 10000),
('1', 'qwerty', 2, '01', 10000, 1, 10000),
('1', 'qwerty', 2, '02', 10000, 2, 20000),
('1', 'qwerty', 2, '05', 10000, 2, 20000),
('11', 'asdfg', 3, '01', 10000, 1, 10000),
('10', 'bnm', 6, '18', 9000, 2, 18000),
('56', 'fgh', 7, '23', 9000, 2, 18000),
('34', 'tyui', 8, '01', 10000, 1, 10000),
('34', 'tyui', 8, '02', 10000, 1, 10000),
('78', 'bola', 9, '10', 10000, 2, 20000),
('78', 'bola', 9, '17', 9000, 1, 9000),
('99', 'rty', 10, '01', 10000, 1, 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` char(8) NOT NULL,
  `status` char(9) NOT NULL DEFAULT 'customer',
  `alamat` text NOT NULL,
  `no_hp` char(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `status`, `alamat`, `no_hp`) VALUES
(1, 'Kamel', '123456', 'kasir', 'Jl. Kendedes No. 25', '085777333444'),
(2, 'Rizki', '654321', 'kasir', 'Jl. Goa Gong No. 5', '087678435333'),
(3, 'Sani', '3322', 'admin', 'Jl. Tukad Languan No. 5', '098678654345'),
(4, 'Viencent', '4455', 'admin', 'Jl. Balembong No. 3', '089976678666'),
(5, 'putu', 'qwerty', 'customer', 'Jl. Pendidikan no 1', '087658429876');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detailtransaksi`
--
ALTER TABLE `detailtransaksi`
  ADD PRIMARY KEY (`kode_transaksi`,`id_menu`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kode_transaksi`);

--
-- Indeks untuk tabel `transaksi_temporary`
--
ALTER TABLE `transaksi_temporary`
  ADD PRIMARY KEY (`kode_transaksi`,`id_menu`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
