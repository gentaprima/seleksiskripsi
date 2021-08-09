-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Agu 2021 pada 18.20
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_seleksi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hasil`
--

CREATE TABLE `tbl_hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `hasil` varchar(30) NOT NULL,
  `revisi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_judul_skripsi`
--

CREATE TABLE `tbl_judul_skripsi` (
  `id_judul` int(11) NOT NULL,
  `judul_skripsi` text NOT NULL,
  `text_preprocessing` text NOT NULL,
  `proposal` text NOT NULL,
  `studi_kasus` varchar(100) NOT NULL,
  `label` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_judul_skripsi`
--

INSERT INTO `tbl_judul_skripsi` (`id_judul`, `judul_skripsi`, `text_preprocessing`, `proposal`, `studi_kasus`, `label`) VALUES
(1, 'PERANCANGAN SISTEM PRODUKTIVITAS KINERJA DEVELOPER MENGGUNAKAN METODE PROFILE MATCHING DAN NAIVE BAYES DALAM MENENTUKAN DEVELOPER OF THE MONTH DAN KELAYAKAN KENAIKAN GAJI DEVELOPER', 'rancang sistem produktivitas kinerja developer guna metode profile matching naive bayes tentu developer of the month layak naik gaji developer', '', '', 4),
(2, 'PERANCANGAN SISTEM PENDATAAN ALUMNI BERBASIS WEB DECISION SUPPORT SYSTEM DENGAN METODE SAW DAN FUZZY MAMDANI UNTUK MENCARI REKOMENDASI PEKERJAAN TERHADAP ALUMNI', 'rancang sistem data alumni bas web decision support system metode saw fuzzy mamdani cari rekomendasi kerja alumni', '', '', 1),
(3, 'SISTEM ABSENSI QR CODE BERBASIS ANDROID DAN PEMBERIAN BONUS PENGAJAR MENGGUNAKAN METODE PERBANDINGAN EKSPONENSIAL (MPE) PADA BIMBEL MAX EDUCATION DI RAWA LUMBU', 'sistem absensi qr code bas android beri bonus ajar guna metode banding eksponensial mpe bimbel max education rawa lumbu', '', '', 3),
(4, 'PREDIKSI HARGA BARANG LELANG PT BALAI LELANG RAJAWALI KARYA DENGAN METODE SINGLE MOVING AVERAGE DAN METODE EXPONENTIAL SMOOTHING', 'prediksi harga barang lelang pt balai lelang rajawali karya metode single moving average metode exponential smoothing', '', '', 2),
(5, 'Perancangan Sistem Pemilihan Supplier Alat Laboratorium Berbasis Web Dengan Metode Integrasi AHP dan TOPSIS di PT. ANUGRAH NIAGA MANDIRI', 'rancang sistem pilih supplier alat laboratorium bas web metode integrasi ahp topsis pt anugrah niaga mandiri', '', '', 3),
(6, 'SISTEM ABSENSI QR CODE BERBASIS ANDROID DAN PEMBERIAN BONUS \nPENGAJAR MENGGUNAKAN METODE PERBANDNGAN EKPONENSIAL (MPE) \nPADA BIMBEL MAX EDUCATION DI RAWA LUMBU', 'sistem absensi qr code bas android beri bonus ajar guna metode perbandngan ekponensial mpe pada bimbel max education rawa lumbu', '', '', 3),
(7, 'PREDIKSI HARGA BARANG LELANG PT BALAI LELANG RAJAWALI KARYA \nDENGAN METODE SINGLE MOVING AVERAGE DAN\nMETODE EXPONENTIAL SMOOTHING', 'prediksi harga barang lelang pt balai lelang rajawali karya dengan metode single moving average dan metode exponential smoothing', '', '', 2),
(8, 'SISTEM PENDUKUNG KEPUTUSAN PENERIMA BANTUAN DANA DESA DI KELURAHAN CAKUNG TIMUR DENGAN MENGGUNAKAN METODE PROMETHEE II BERBASIS WEB\n', 'sistem dukung putus terima bantu dana desa lurah cakung timur guna metode promethee ii bas web', '', '', 3),
(9, 'SISTEM PENDUKUNG KEPUTUSAN PENERIMA BANTUAN DANA DESA DI KELURAHAN CAKUNG TIMUR DENGAN MENGGUNAKAN METODE PROMETHEE II BERBASIS WEB\n', 'sistem dukung putus terima bantu dana desa lurah cakung timur guna metode promethee ii bas web', '', '', 3),
(10, 'PERANCANGAN SISTEM INFORMASI PENJUALAN SPAREPART MOTOR BERBASIS WEB DENGAN MENGGUNAKAN METODE TIME SERIES', 'rancang sistem informasi jual sparepart motor bas web guna metode time series', '', '', 3),
(11, 'PERANCANGAN SISTEM INFORMASI PENJUALAN SPAREPART MOTOR BERBASIS WEB DENGAN MENGGUNAKAN METODE TIME SERIES', 'rancang sistem informasi jual sparepart motor bas web guna metode time series', '', '', 3),
(12, 'RANCANG BANGUN APLIKASI ONLINE SHOP BERBASIS WEB MENGGUNAKAN METODE MARKET BASKET ANALYSIS STUDI KASUS UD MEDIKA TEKNIK MAKMUR CIKARANG', 'rancang bangun aplikasi online shop bas web guna metode market basket analysis studi kasus ud medika teknik makmur cikarang', '', '', 3),
(13, 'PERANCANGAN SISTEM INFORMASI PREDIKSI PERSEDIAAN BARANG DAN JASA PERCETAKAN PADA CV. BISMA OPTIMA MENGGUNAKAN METODE SINGLE EXPONENTIAL SMOOTHING', 'rancang sistem informasi prediksi sedia barang jasa cetak cv bisma optima guna metode single exponential smoothing', '', '', 2),
(14, 'SISTEM APLIKASI PROJECT MANAGEMENT PADA PT PRODIGI\nMENGGUNAKAN CPM DENGAN ALGORITMA SAW', 'sistem aplikasi project management pt prodigi guna cpm algoritma saw', '', '', 3),
(15, 'SISTEM PENDUKUNG KEPUTUSAN PENENTUAN WAHANA TERBAIK PADA TAMAN REKREASI RAINBOW LAKE BEKASI MENGGUNAKAN METODE ELIMINATION ET CHOIX TRADUISANT LA REALITE (ELECTRE)', 'sistem dukung putus tentu wahana baik taman rekreasi rainbow lake bekas guna metode elimination et choix traduisant la realite electre', '', '', 3),
(16, 'PERANCANGAN SISTEM PENDUKUNG KEPUTUSAN PENENTUAN\nJABATAN BERBASIS WEB DI YAYASAN SENA WANGI\nMENGGUNAKAN METODE PROFILE MATCHING DAN PROMETHEE', 'rancang sistem dukung putus tentu jabat bas web yayasan sena wangi guna metode profile matching promethee', '', '', 3),
(17, 'PENERAPAN ALGORITMA GENETIKA DAN GOOGLE MAP API UNTUK MENCARI RUTE TERPENDEK PENDISTRIBUSIAN BARANG\nDI SISTEM INFORMASI PEMESANAN BARANG PT. DIAN PERMATA\nOMEGA', 'terap algoritma genetika google map api cari rute pendek distribusi barang di sistem informasi mesan barang pt dian permata omega', '', '', 2),
(18, 'PERANCANGAN SISTEM APLIKASI PENJUALAN PRODUK BERBASIS \nWEB MENGGUNAKAN METODE ASSOCIATION RULE DENGAN \nALGORITMA APRIORI UNTUK MENCARI POLA PENJUALAN \nPRODUK PADA PT LION SUPER INDO', 'rancang sistem aplikasi jual produk bas web guna metode association rule algoritma apriori cari pola jual produk pt lion super indo', '', '', 3),
(19, 'PERANCANGAN SISTEM PENDUKUNG KEPUTUSAN PENDATAAN WARGA PADA KELURAHAN JAKAMULYA UNTUK SELEKSI PENERIMAAN BANTUAN SOSIAL MENGGUNAKAN METODE MOORA', 'rancang sistem dukung putus data warga lurah jakamulya seleksi terima bantu sosial guna metode moora', '', '', 3),
(20, 'SISTEM PENDUKUNG KEPUTUSAN EKSTRAKURIKULER PENENTUAN  SISWA BERPRESTASI UNTUK MENGIKUTI KEJUARAAN ANTAR SEKOLAH MENGGUNAKAN METODE SAW DAN MOORA', 'sistem dukung putus ekstrakurikuler tentu siswa prestasi ikut juara antar sekolah guna metode saw moora', '', '', 1),
(21, 'RANCANG BANGUN APLIKASI ONLINE SHOP BERBASIS WEB MENGGUNAKAN METODE MARKET BASKET ANALYSIS STUDI KASUS UD MEDIKA TEKNIK MAKMUR CIKARANG\n', 'rancang bangun aplikasi online shop bas web guna metode market basket analysis studi kasus ud medika teknik makmur cikarang', '', '', 3),
(22, 'RANCANG BANGUN APLIKASI ONLINE SHOP BERBASIS WEB MENGGUNAKAN METODE MARKET BASKET ANALYSIS STUDI KASUS UD MEDIKA TEKNIK MAKMUR CIKARANG', 'rancang bangun aplikasi online shop bas web guna metode market basket analysis studi kasus ud medika teknik makmur cikarang', '', '', 3),
(23, 'SISTEM ABSENSI QR CODE BERBASIS ANDROID DAN PEMBERIAN BONUS \nPENGAJAR MENGGUNAKAN METODE PERBANDNGAN EKPONENSIAL (MPE) \nPADA BIMBEL MAX EDUCATION DI RAWA LUMBU', 'sistem absensi qr code bas android beri bonus ajar guna metode perbandngan ekponensial mpe pada bimbel max education rawa lumbu', '', '', 3),
(24, 'PREDIKSI HARGA BARANG LELANG PT BALAI LELANG RAJAWALI KARYA \nDENGAN METODE SINGLE MOVING AVERAGE DAN\nMETODE EXPONENTIAL SMOOTHING', 'prediksi harga barang lelang pt balai lelang rajawali karya dengan metode single moving average dan metode exponential smoothing', '', '', 2),
(25, 'RANCANGAN SISTEM PENJUALAN MENGGUNAKAN BARCODE PADA \nTOKO SEMBAKO WARUNG BIRU MENGGUNAKAN METODE FPGROWTH DAN MOVING AVARAGE', 'rancang sistem jual guna barcode toko sembako warung biru guna metode fpgrowth moving avarage', '', '', 2),
(26, 'ANALISIS DAN RANCANGAN SISTEM SURVEI \nKEPUASAN PELANGGAN PADA KUALITAS JASA \nPELAYANAN INTERNET DAV NET DENGAN \nMETODE SERVQUAL DAN METODE IPA', 'analisis rancang sistem survei puas langgan kualitas jasa layan internet dav net metode servqual metode ipa', '', '', 3),
(27, 'PERANCANGAN SISTEM PENDUKUNG KEPUTUSAN BERBASIS WEB UNTUK MEMBANTU MAHASISWA UNSADA DALAM MEMILIH KOS IDEAL DI SEKITAR KAMPUS DENGAN MENGGUNAKAN METODE AHP DAN METODE VIKOR', 'rancang sistem dukung putus bas web bantu mahasiswa unsada pilih kos ideal kampus guna metode ahp metode vikor', '', '', 3),
(28, 'Rancangan Sistem Film CrowdFunding Dengan Metode AHP (Analytic Hierarchy Process) Berbasis Website Study Kasus PERUM PRODUKSI FILM NEGARA', 'rancang sistem film crowdfunding metode ahp analytic hierarchy process bas website study kasus perum produksi film negara', '', '', 3),
(29, 'IMPLEMENTASI METODE FUZZY MAMDANI PADA APLIKASI DISTRIBUSI DATA BARANG BANTUAN BENCANA BERBASIS WEB UNTUK PEMERATAAN (STUDI KASUS : YOGYAKARTA)\n', 'implementasi metode fuzzy mamdani aplikasi distribusi data barang bantu bencana bas web perata studi kasus yogyakarta', '', '', 1),
(30, 'RANCANG BANGUN APLIKASI FORECASTING KEBUTUHAN STOK BARANG DAGANG DENGAN METODE LEAST SQUARE REGRESSION LINE DAN PENGELOLAAN KOPERASI PADA PASAR KRANJI BEKASI', 'rancang bangun aplikasi forecasting butuh stok barang dagang metode least square regression line kelola koperasi pasar kranji bekas', '', '', 0),
(31, ' perancangan sistem informasi koperasi simpan pinjam dengan fitur rekomendasi prioritas peminjaman uang menggunakan algoritma c4.5 dan k-means \"', 'rancang sistem informasi koperasi simpan pinjam fitur rekomendasi prioritas pinjam uang guna algoritma c4 5 k-means', '', '', 0),
(32, 'SISTEM APLIKASI PROJECT MANAGEMENT PADA PT PRODIGI MENGGUNAKAN CPM DENGAN ALGORITMA SAW', 'sistem aplikasi project management pt prodigi guna cpm algoritma saw', '', '', 3),
(33, 'PERANCANGAN SISTEM PENDUKUNG KEPUTUSAN BERBASIS WEB UNTUK MEMBANTU MAHASISWA UNSADA DALAM MEMILIH KOS IDEAL DI SEKITAR KAMPUS DENGAN MENGGUNAKAN METODE AHP DAN METODE VIKOR', 'rancang sistem dukung putus bas web bantu mahasiswa unsada pilih kos ideal kampus guna metode ahp metode vikor', '', '', 3),
(34, 'SISTEM PENDUKUNG KEPUTUSAN PENENTUAN WAHANA TERBAIK PADA TAMAN REKREASI RAINBOW LAKE BEKASI MENGGUNAKAN METODE ELIMINATION ET CHOIX TRADUISANT LA REALITE (ELECTRE)', 'sistem dukung putus tentu wahana baik taman rekreasi rainbow lake bekas guna metode elimination et choix traduisant la realite electre', '', '', 3),
(35, 'PERANCANGAN PENDETEKSI COVID 19 MENGGUNAKAN ARDUINO DENGAN METODE FUZZY LOGIC DAN K-MEANS PADA PT DANKOM MITRA ABADI', 'rancang deteksi covid 19 guna arduino metode fuzzy logic k-means pt dankom mitra abadi', '', '', 3),
(36, 'PERANCANGAN SISTEM  INFORMASI GUDANG UNTUK MENGONTROL PERSEDIAAN BARANG PADA GUDANG BERBASIS WEB MENGGUNAKAN METODE K-MEANS DAN ECONOMIC ORDER QUANTITY (EOQ) STUDI KASUS PADA PT. BINTANG MONO INDONESIA\n', 'rancang sistem informasi gudang kontrol sedia barang gudang bas web guna metode k-means economic order quantity eoq studi kasus pt bintang mono indonesia', '', '', 3),
(37, 'PERANCANGAN SISTEM INFORMASI PREDIKSI PERSEDIAAN BARANG DAN JASA PERCETAKAN PADA CV. BISMA OPTIMA  MENGGUNAKAN METODE SINGLE EXPONENTIAL SMOOTHING ', 'rancang sistem informasi prediksi sedia barang jasa cetak cv bisma optima guna metode single exponential smoothing', '', '', 2),
(38, 'Perancangan Sistem Informasi Tracking Pengiriman Cargo Berbasis \nWeb Untuk Pengontrolan Lokasi kurir secara real-time Dengan Metode \nLocation Based System (LBS) (Studi Kasus : PT. Wahana Multi Logistik)', 'rancang sistem informasi tracking kirim cargo bas web kontrol lokasi kurir real-time metode location based system lbs studi kasus pt wahana multi logistik', '', '', 3),
(39, 'PERANCANGAN SISTEM INFORMASI BERBASIS WEB UNTUK PENILAIAN SISWA MENGGUNAKAN METODE ALGORITMA K-NEAREST NEIGHBOR CLASSIFICATION (K-NN) (Studi Kasus : SMK Negeri 31 Jakarta Pusat)', 'rancang sistem informasi bas web nilai siswa guna metode algoritma k-nearest neighbor classification k-nn studi kasus smk negeri 31 jakarta pusat', '', '', 1),
(40, 'SISTEM PERANCANGAN PENGAMBILAN KEPUTUSAN PEMINJAMAN MODAL TERHADAP UMKM TERDAMPAK COVID MENGGUNAKAN METODE MFEP', 'sistem rancang ambil putus pinjam modal umkm dampak covid guna metode mfep', '', '', 0),
(41, 'PERANCANGAN SISTEM INFORMASI GOTONG ROYONG DIGITAL BERBASIS WEB DENGAN MENGGUNAKAN METODE SDLC ', 'rancang sistem informasi gotong royong digital bas web guna metode sdlc', '', '', 3),
(42, 'PERANCANGAN SISTEM INFORMASI PENJUALAN SPAREPART MOTOR BERBASIS WEB DENGAN MENGGUNAKAN METODE TIME SERIES ', 'rancang sistem informasi jual sparepart motor bas web guna metode time series', '', '', 3),
(43, 'PERANCANGAN SISTEM INFORMASI GOTONG ROYONG DIGITAL BERBASIS WEB DENGAN MENGGUNAKAN SDLC', 'rancang sistem informasi gotong royong digital bas web guna sdlc', '', '', 3),
(44, 'PERANCANGAN SISTEM INFORMASI KOPERASI DANA TALANGAN\nBERBASIS WEB MENGGUNAKAN METODE K-NN DAN SAW UNTUK\nMENENTUKAN BESAR PINJAMAN DANA TALANGAN PT. RAS', 'rancang sistem informasi koperasi dana talang bas web guna metode k-nn saw untuk tentu besar pinjam dana talang pt ras', '', '', 0),
(45, 'Perancangan Sistem Aplikasi Toko Online Berbasis Website Dengan Metode Collaborative Filltering', 'rancang sistem aplikasi toko online bas website metode collaborative filltering', '', '', 3),
(46, 'RANCANG BANGUN APLIKASI SISTEM KEPUTUSAN MUSTAHIQ BERBASIS WEB MENGGUNAKAN METODE WEIGHTED AGGREGATED SUM PRODUCT ASSESMENT (STUDI KASUS : BADAN LAZIS MUSHOLA DARUSSALAM)', 'rancang bangun aplikasi sistem putus mustahiq bas web guna metode weighted aggregated sum product assesment studi kasus badan lazis mushola darussalam', '', '', 3),
(47, 'Sistem Penilaian Kinerja Karyawan Magang Menggunakan Metode Profile Matching dan Scoring System (Studi Kasus: Balyco Coffee)', 'sistem nilai kinerja karyawan magang guna metode profile matching scoring system studi kasus balyco coffee', '', '', 1),
(48, 'Perancangan Sistem Aplikasi Data Mining karakteristik Kepribadian Karyawan Pada PT.Marketa Indah Menggunakan Metode Naive Bayes dan Moora', 'rancang sistem aplikasi data mining karakteristik pribadi karyawan pt marketa indah guna metode naive bayes moora', '', '', 3),
(49, 'RANCANGAN BANGUN SISTEM PENDUKUNG KEPUTUSAN HASIL NILAI SISWA NAIK DAN TIDAK NAIK BERBASIS WEB DI SDN KOTA BARU IX MENGGUNAKAN METODE WP DAN FUZZY C-MEANS', 'rancang bangun sistem dukung putus hasil nilai siswa naik naik bas web sdn kota baru ix guna metode wp fuzzy c-means', '', '', 1),
(50, 'PREDIKSI JUMLAH KEBUTUHAN OBAT MENGGUNAKAN METODE LEAST \nSQUARE BERBASIS WEBSITE\n(STUDI KASUS: PUSKESMAS Rawa Tembaga)', 'prediksi jumlah butuh obat guna metode least square bas website studi kasus puskesmas rawa tembaga', '', '', 2),
(51, 'PERANCANGAN SISTEM PREDIKSI HARGA KAYU \nDENGAN MENGGUNAKAN METODE \nK-NEAREST NEIGHBOR (KNN) PADA PK.JASA ABADI', 'rancang sistem prediksi harga kayu dengan guna metode k-nearest neighbor knn pk jasa abadi', '', '', 2),
(52, 'PERANCANGAN SISTEM INFORMASI PENDUKUNG KEPUTUSAN\nPEMILIHAN SISWA TERBAIK TKJ PADA SMK TAMANSISWA\nJAKARTA BERBASIS WEB MENGGUNAKAN METODE SAW DAN\nFUZZY', 'rancang sistem informasi dukung putus pilih siswa baik tkj smk tamansiswa jakarta bas web guna metode saw dan fuzzy', '', '', 1),
(53, 'RANCANGAN SISTEM INFORMASI PENDUKUNG KEPUTUSAN PROMOSI JABATAN DENGAN MENGGUNAKAN METODE MULTI ATTRIBUTE UTILITY THEORY (MAUT) PADA PT. MARGA NUSANTARA JAYA BERBASIS WEBSITE', 'rancang sistem informasi dukung putus promosi jabat guna metode multi attribute utility theory maut pt marga nusantara jaya bas website', '', '', 3),
(54, 'PERANCANGAN SISTEM INFORMASI PENGAMBILAN KEPUTUSAN ESTIMASI BIAYA PENGIRIMAN BARANG BERBASIS WEB MENGGUNAKAN METODE HAVERSINE DAN LOCATION BASED SERVICE (LBS) PADA PT. DOKSA ARTHA GEMILANG', 'rancang sistem informasi ambil putus estimasi biaya kirim barang bas web guna metode haversine location based service lbs pt doksa artha gemilang', '', '', 3),
(55, 'SISTEM PENDUKUNG KEPUTUSAN PEMILIHAN UNIVERSITAS NEGERI DAN JURUSAN BERBASIS WEB MENGGUNAKAN METODE SMART DAN K-MEANS PADA SMK MALAKA', 'sistem dukung putus pilih universitas negeri jurus bas web guna metode smart k-means smk malaka', '', '', 1),
(56, 'PELAYANAN ZAKAT BERBASIS ANDROID DENGAN METODE FORWARD CHAINING DAN CERTAINTY FACTOR', 'layan zakat bas android metode forward chaining certainty factor', '', '', 3),
(57, 'Sistem Informasi Pemesanan Makanan Berbasis Android Dengan \nMetode Location Based Service (LBS) Pada Pondok Makan \nRajawali', 'sistem informasi mesan makan bas android metode location based service lbs pondok makan rajawali', '', '', 3),
(58, 'SISTEM PENDUKUNG KEPUTUSAN UNTUK MENENTUKAN\nMATERIAL PACKAGING MENGGUNAKAN METODE KNN DAN\nSMART (STUDI KASUS PT DNP INDONESIA)', 'sistem dukung putus tentu material packaging guna metode knn dan smart studi kasus pt dnp indonesia', '', '', 4),
(59, 'ERANCANGAN SISTEM REKOMENDASI PENERIMA DANA BANSOS DI MASA\nPANDEMI COVID-19 MENGGUNAKAN METODE K-MEANS DAN METODE\nNA�VE BAYES', 'erancangan sistem rekomendasi terima dana bansos masa pandemi covid-19 guna metode k-means metode na ve bayes', '', '', 3),
(60, 'ANALISIS PENGENDALIAN PERSEDIAAN KAYU MENGGUNAKAN METODE ECONOMIC ORDER QUANTITY (EOQ) PADA PERUSAHAAN KAYU JASA ABADI', 'analisis kendali sedia kayu guna metode economic order quantity eoq usaha kayu jasa abadi', '', '', 3),
(61, 'PENERAPAN METODE MULTI OBJECTIVE OPTIMIZATION ON THE BASIC OF RATIO ANALYSIS (MOORA) DALAM PENDUKUNG KEPUTUSAN PEMILIHAN SEKOLAH DASAR DI WILAYAH DESA SATRIA JAYA ', 'terap metode multi objective optimization on the basic of ratio analysis moora dukung putus pilih sekolah dasar wilayah desa satria jaya', '', '', 3),
(62, 'Perbandingan Metode K-Nearest Neighbor (K-NN) dan Metode K-Means Dalam Menentukan Tingkat Penjualan Produk Pada Perusahaan Kayu Elang Perkasa ', 'banding metode k-nearest neighbor k-nn metode k-means tentu tingkat jual produk usaha kayu elang perkasa', '', '', 2),
(63, 'IMPLEMENTASI CROSS SELLING PRODUK PADA APOTEK KARUNASEHAT\nMENGGUNAKAN METODE GENERALIZED SQUENCE PATTERN (GSP)', 'implementasi cross selling produk apotek karunasehat guna metode generalized squence pattern gsp', '', '', 3),
(64, 'PERANCANGAN SISTEM INFORMASI BERBASIS WEB\nUNTUK MEREKOMENDASIKAN MENU CATTERING\nTERFAVORIT MENGGUNAKAN METODE FP GROWTH PADA KITCHEN AMI', 'rancang sistem informasi bas web untuk rekomendasi menu cattering favorit guna metode fp growth kitchen ami', '', '', 3),
(65, 'PERANCANGAN SISTEM PENGAMBILAN KEPUTUSAN BERBASIS WEB UNTUK PENERIMAAN  LOWONGAN KERJA MENGGUNAKAN METODE MOORA DAN SAW PADA PT. PRIVATE GUARD', 'rancang sistem ambil putus bas web terima lowong kerja guna metode moora saw pt private guard', '', '', 3),
(66, 'Perbandingan Model Regresi Linier Pada Datamining Dengan Exponential Smooth Untuk Estimasi Harga Pada PT. Givro Multi Teknik Perkasa', 'banding model regresi linier datamining exponential smooth estimasi harga pt givro multi teknik perkasa', '', '', 2),
(67, 'Perbandingan Model Regresi Linier Pada Datamining Dengan Exponential Smooth Untuk Estimasi Harga Pada PT. Givro Multi Teknik Perkasa', 'banding model regresi linier datamining exponential smooth estimasi harga pt givro multi teknik perkasa', '', '', 2),
(68, 'Penerapan Metode Collaborative Filtering dan Algoritma Asosiasi di Datamining Untuk Sistem Rekomendasi Berita Pada Website Berita di DPRD Kota Bekasi', 'terap metode collaborative filtering algoritma asosiasi datamining sistem rekomendasi berita website berita dprd kota bekas', '', '', 4),
(69, 'Perbandingan Model Regresi Linier Pada Datamining Dengan Exponential Smooth Untuk Estimasi Harga Pada PT. Givro Multi Teknik Perkasa', 'banding model regresi linier datamining exponential smooth estimasi harga pt givro multi teknik perkasa', '', '', 2),
(70, 'PENERAPAN ALGORITMA NA�VE BAYES DALAM\nRECOMENDASI PENJURUSAN MAHASISWA BARU DI\nUNIVERSITAS DARMA PERSADA', 'terap algoritma na ve bayes dalam recomendasi jurus mahasiswa baru di universitas darma persada', '', '', 4),
(71, 'PERANCANGAN SISTEM PEMILIHAN KARYAWAN TERBAIK BERBASIS WEB MENGGUNAKAN METODE WEIGHTED SUM MODEL (WSM) DAN DATA MINING', 'rancang sistem pilih karyawan baik bas web guna metode weighted sum model wsm data mining', '', '', 1),
(72, 'SISTEM PENDUKUNG KEPUTUSAN PENERIMA BANTUAN DANA DESA DI KELURAHAN CAKUNG TIMUR DENGAN MENGGUNAKAN METODE PROMETHEE II BERBASIS WEB', 'sistem dukung putus terima bantu dana desa lurah cakung timur guna metode promethee ii bas web', '', '', 3),
(73, 'PERANCANGAN SISTEM APLIKASI PENDATAAN ALUMNI BERBASIS WEB DECISION SUPPORT SYSTEM DENGAN METODE SAW DAN PROFILE MATCHING UNTUK MENCARI REKOMENDASI LOWONGAN PEKERJAAN DAN REKOMENDASI BEASISWA TERHADAP ALUMNI', 'rancang sistem aplikasi data alumni bas web decision support system metode saw profile matching cari rekomendasi lowong kerja rekomendasi beasiswa alumni', '', '', 1),
(74, 'PERANCANGAN SISTEM APLIKASI PENDATAAN ALUMNI BERBASIS WEB DECISION SUPPORT SYSTEM DENGAN METODE SAW DAN PROFILE MATCHING UNTUK MENCARI REKOMENDASI LOWONGAN PEKERJAAN DAN REKOMENDASI BEASISWA TERHADAP ALUMNI', 'rancang sistem aplikasi data alumni bas web decision support system metode saw profile matching cari rekomendasi lowong kerja rekomendasi beasiswa alumni', '', '', 1),
(75, 'SISTEM REKOMENDASI PEREKRUTAN KARYAWAN DENGAN METODE WEIGHTED PRODUCT (WP) DAN ALGORITMA NAIVE BAYES CLASSIFICATION PADA PT RASA SAYANG AIS KRIM', 'sistem rekomendasi rekrut karyawan metode weighted product wp algoritma naive bayes classification pt rasa sayang ais krim', '', '', 4),
(76, 'PERBANDINGAN METODE SIMPLE ADDITIVE WEIGHTING DAN WEIGHTED PRODUCT MENGGUNAKAN METODE MEAN SQUARED ERROR UNTUK PEMILIHAN BEASISWA JKA BERBASIS WEB (STUDI KASUS: UKM KENDOKA UNSADA)', 'banding metode simple additive weighting weighted product guna metode mean squared error pilih beasiswa jka bas web studi kasus ukm kendoka unsada', '', '', 3),
(77, 'PERANCANGAN SISTEM PRODUKTIVITAS KINERJA DEVELOPER MENGGUNAKAN METODE PROFILE MATCHING DAN NAIVE BAYES DALAM MENENTUKAN DEVELOPER OF THE MONTH DAN KELAYAKAN KENAIKAN GAJI DEVELOPER', 'rancang sistem produktivitas kinerja developer guna metode profile matching naive bayes tentu developer of the month layak naik gaji developer', '', '', 4),
(78, 'RANCANGAN SISTEM INFORMASI PENCARIAN DAN REKOMENDASI TEMPAT AGEN DENGAN METODE HAVERSINE DAN METODE ELECTRE BERBASIS WEB PADA BRAINY OFFICAL', 'rancang sistem informasi cari rekomendasi tempat agen metode haversine metode electre bas web brainy offical', '', '', 3),
(79, 'IMPLEMENTASI DATA MINING DALAM MEMPREDIKSI DATA RESTORAN DARI ZOMATO MENGGUNAKAN ALGORITMA APRIORI', 'implementasi data mining prediksi data restoran zomato guna algoritma apriori', '', '', 1),
(80, 'Rancang Bangun Sistem Rekomendasi Jasa Laundry Sepatu Dengan Menggunakan Metode Collaborative Filtering Pada Spokat Wash', 'rancang bangun sistem rekomendasi jasa laundry sepatu guna metode collaborative filtering spokat wash', '', '', 3),
(81, 'Perancangan Sistem Pemilihan Supplier Alat Laboratorium Berbasis Web Dengan Metode Integrasi AHP dan TOPSIS di PT. ANUGRAH NIAGA MANDIRI', 'rancang sistem pilih supplier alat laboratorium bas web metode integrasi ahp topsis pt anugrah niaga mandiri', '', '', 3),
(82, 'SISTEM PENDUKUNG KEPUTUSAN PENERIMA BANTUAN DANA DESA DI KELURAHAN CAKUNG TIMUR DENGAN MENGGUNAKAN METODE PROMETHEE II BERBASIS WEB', 'sistem dukung putus terima bantu dana desa lurah cakung timur guna metode promethee ii bas web', '', '', 3),
(83, 'PERANCANGAN SISTEM INFORMASI PERGUDANGAN SPAREPART\nPADA PT.ROCHE INDONESIA MENGGUNAKAN SINGLE\nEXPONENTIAL SMOOTHING (SES)', 'rancang sistem informasi gudang sparepart pada pt roche indonesia guna single exponential smoothing s', '', '', 2),
(84, 'SISTEM PENILAIAN SISWA TERHADAP KINERJA GURU SAAT MENGAJAR ONLINE MENGGUNAKAN METODE WEIGHTED PRODUCT', 'sistem nilai siswa kinerja guru ajar online guna metode weighted product', '', '', 1),
(85, 'PERANCANGAN PLATFORM E-LEARNING BERBASIS WEBSITE UNTUK MEMBANTU KELAS ONLINE (STUDI KASUS : JAGO GITAR)', 'rancang platform e-learning bas website bantu kelas online studi kasus jago gitar', '', '', 4),
(86, 'PERANCANGAN PLATFORM E-LEARNING BERBASIS WEBSITE UNTUK MEMBANTU KELAS ONLINE (STUDI KASUS : JAGO GITAR)', 'rancang platform e-learning bas website bantu kelas online studi kasus jago gitar', '', '', 4),
(87, 'PERANCANGAN SISTEM INFORMASI GOTONG ROYONG DIGITAL BERBASIS WEB DENGAN MENGGUNAKAN METODE CROWDFUNDING DAN WATERFALL\nSTUDI KASUS:(KARANG TARUNA PERUM.GRAHA MELASTI RT 006 RW 014 DESA SUMBER JAYA KECAMATAN TAMBUN SELATAN KABUPATEN BEKASI\n', 'rancang sistem informasi gotong royong digital bas web guna metode crowdfunding waterfall studi kasus karang taruna perum graha melasti rt 006 rw 014 desa sumber jaya camat tambun selatan kabupaten bekas', '', '', 3),
(88, 'SISTEM PENDUKUNG KEPUTUSAN PENERIMA BANTUAN DANA DESA DI KELURAHAN CAKUNG TIMUR DENGAN MENGGUNAKAN METODE PROMETHEE II BERBASIS WEB', 'sistem dukung putus terima bantu dana desa lurah cakung timur guna metode promethee ii bas web', '', '', 3),
(89, 'Rancang Robot Magic Spin Mop Floor Clearing System Berbasis Arduino Menggunakan Metode Behavior Based Control Dengan Sensor Ultrasonic', 'rancang robot magic spin mop floor clearing system bas arduino guna metode behavior based control sensor ultrasonic', '', '', 3),
(90, 'Penerapan optimasi expert advisor pada metatrader 4 menggunakan algoritma fibonacci pada analisa perdagangan forex ', 'terap optimasi expert advisor metatrader 4 guna algoritma fibonacci analisa dagang forex', '', '', 3),
(91, 'Prediksi Pola Penyebaran Demam Berdarah Menggunakan Algoritma Support \nVector Machine (SVM) Pada Kota Jakarta Timur', 'prediksi pola sebar demam darah guna algoritma support vector machine svm kota jakarta timur', '', '', 2),
(92, 'Analisa Klasifikasi Menggunakan Metode SVM Dari Data Penderita Penyakit\nIspa', 'analisa klasifikasi guna metode svm data derita sakit ispa', '', '', 1),
(93, 'PERANCANGAN SISTEM PENDUKUNG KEPUTUSAN PEMILIHAN MOBIL\nBEKAS TERBAIK SESUAI KRITERIA MENGGUNAKAN METODE SMART \n(Studi Kasus : Showroom Banyumas Motor)', 'rancang sistem dukung putus pilih mobil bekas baik sesuai kriteria guna metode smart studi kasus showroom banyumas motor', '', '', 3),
(94, 'Implementasi model evaluasi kinerja dan promosi karyawan berbasis web menggunakan metode similarity dan simple multi attribute (Studi kasus: PT. Panca Logam Sukses Mandiri)', 'implementasi model evaluasi kinerja promosi karyawan bas web guna metode similarity simple multi attribute studi kasus pt panca logam sukses mandiri', '', '', 4),
(95, 'Implementasi model evaluasi kinerja dan promosi karyawan berbasis web menggunakan metode similarity dan simple multi attribute (Studi kasus: PT. Panca Logam Sukses Mandiri)', 'implementasi model evaluasi kinerja promosi karyawan bas web guna metode similarity simple multi attribute studi kasus pt panca logam sukses mandiri', '', '', 4),
(96, 'SISTEM PENDUKUNG KEPUTUSAN SELEKSI PENERIMA \nBEASISWA SOCCA UNIVERSITAS DARMA PERSADA \nDENGAN METODE VIKOR DAN ARAS BERBASIS WEB', 'sistem dukung putus seleksi terima beasiswa socca universitas darma persada dengan metode vikor aras bas web', '', '', 3),
(97, 'SISTEM PENDUKUNG KEPUTUSAN PEMILIHAN \nKEPALA SEKOLAH DI SMK GARUDA JAKARTA TIMUR\nDENGAN METODE FANP BERBASIS WEB', 'sistem dukung putus pilih kepala sekolah smk garuda jakarta timur dengan metode fanp bas web', '', '', 1),
(98, 'Rancang Bangun Aplikasi Lapangan Futsal Menggunakan Algoritma First Come First Served Dan Profile Matching Berbasis Android (Studi Kasus Lapangan Futsal HS. Agung Jakarta Timur)', 'rancang bangun aplikasi lapang futsal guna algoritma first come first served profile matching bas android studi kasus lapang futsal hs agung jakarta timur', '', '', 3),
(99, 'SISTEM REKOMENDASI PEMINJAMAN BUKU PADA \nPERPUSTAKAAN SMK Ki HAJAR DEWANTARA \nMENGGUNAKAN METODE ASSOCIATION RULE DENGAN \nALGORITMA FP-GROWTH DAN ALGORITMA ECLAT', 'sistem rekomendasi pinjam buku pustaka smk ki hajar dewantara guna metode association rule algoritma fp-growth algoritma eclat', '', '', 4),
(100, 'PENERAPAN MODEL PERBANDINGAN PREDIKSI DATA PRODUKSI \nDAN PENJUALAN DENGAN METODE EKSPONENSIAL SMOOTHING \nPADA PT. JHONSON HOME HYGIENE PRODUCTS ', 'terap model banding prediksi data produksi dan jual metode eksponensial smoothing pada pt jhonson home hygiene products', '', '', 2),
(101, 'Implementasi Algoritma Vikor pada Sistem Pendukung KeputusaPemilihan                          Calon Peserta Lomba (Studi Kasus: SMK Galileo Sentul)', 'implementasi algoritma vikor sistem dukung keputusapemilihan calon serta lomba studi kasus smk galileo sentul', '', '', 1),
(102, 'PERANCANGAN APLIKASI SISTEM PENDUKUNG KEPUTUSAN PEMILIHAN PEGAWAI TERBAIK PADA PT JOYPACK BERBASIS WEB DENGAN MENGGUNAKAN METODE ANALYTICAL HIERARCHY PROCESS (AHP) \n', 'rancang aplikasi sistem dukung putus pilih pegawai baik pt joypack bas web guna metode analytical hierarchy process ahp', '', '', 3),
(103, 'SISTEM PAKAR DIAGNOSA AUTIS PADA ANAK DENGAN METODE FORWARD CHAINING DAN CERTAINTY FACTOR BERBASI ANDROID', 'sistem pakar diagnosa autis anak metode forward chaining certainty factor bas android', '', '', 3),
(104, 'PENERAPAN MODEL PERHITUNGAN KELAYAKAN PENERIMA BANTUAN PKH DI MASA PANDEMI COVID-19 MENGGUNAKAN METODE SIMPLE MULTI ATTRIBUTE RATING TECHNIQUE (Studi Kasus : Desa Siasem RW.06, Kab.Brebes)', 'terap model hitung layak terima bantu pkh masa pandemi covid-19 guna metode simple multi attribute rating technique studi kasus desa siasem rw 06 kab brebes', '', '', 4),
(105, 'PERANCANGAN MODEL SISTEM PENILAIAN SERTIFIKASI GURU MENGGUNAKAN METODE FUZZY MULTIPLE-ATTRIBUTE', 'rancang model sistem nilai sertifikasi guru guna metode fuzzy multiple-attribute', '', '', 1),
(106, 'Penerapan algoritma kriptografi untuk pengamanan dokumen transaksi dengan metode rivest shamir adleman', 'terap algoritma kriptografi aman dokumen transaksi metode rivest shamir adleman', '', '', 2),
(107, 'PERANCANGAN SISTEM INFORMASI GOTONG ROYONG DIGITAL BERBASIS WEB DENGAN MENGGUNAKAN METODE CROWDFUNDING DAN WATERFALL\nSTUDI KASUS:(KARANG TARUNA PERUM.GRAHA MELASTI RT 006 RW 014 DESA SUMBER JAYA KECAMATAN TAMBUN SELATAN KABUPATEN BEKASI\n', 'rancang sistem informasi gotong royong digital bas web guna metode crowdfunding waterfall studi kasus karang taruna perum graha melasti rt 006 rw 014 desa sumber jaya camat tambun selatan kabupaten bekas', '', '', 3),
(108, 'SISTEM PAKAR DIAGNISA AUTIS PADA ANAK DENGAN METODE FORWARD CHAINING DAN CERTAINTY FACTOR BERBASIS ANDROID', 'sistem pakar diagnisa autis anak metode forward chaining certainty factor bas android', '', '', 3),
(109, 'PERANCANGAN SISTEM REKOMENDASI LOKASI TUJUAN PERJALANAN \nSEHAT DI MASA PANDEMI COVID-19 BERBASIS WEB MENGGUNAKAN \nMETODE CASE BASED REASONING PADA CAKRAWA TRAVEL \nCOMMUNITY', 'rancang sistem rekomendasi lokasi tuju jalan sehat masa pandemi covid-19 bas web guna metode case based reasoning cakrawa travel community', '', '', 3),
(110, 'Implementasi Algoritma Vikor pada Sistem Pendukung KeputusaPemilihan                          Calon Peserta Lomba (Studi Kasus: SMK Galileo Sentul)', 'implementasi algoritma vikor sistem dukung keputusapemilihan calon serta lomba studi kasus smk galileo sentul', '', '', 1),
(111, 'Penerapan Metode Moving Average Untuk Prediksi Tingkat Pengiriman Kendaraan Pada PT Indotrans Pusaka Utama', 'terap metode moving average prediksi tingkat kirim kendara pt indotrans pusaka utama', '', '', 2),
(112, 'SISTEM PAKAR DIAGNOSA AUTIS PADA ANAK DENGAN METODE FORWARD CHAINING DAN CERTAINTY FACTOR BERBASIS ANDROID', 'sistem pakar diagnosa autis anak metode forward chaining certainty factor bas android', '', '', 3),
(113, 'Penerapa Metode Moving Average Untuk Prediksi Tingkat Pengiriman Kendaraan Pada PT Indotrans Pusaka Utama', 'apa metode moving average prediksi tingkat kirim kendara pt indotrans pusaka utama', '', '', 2),
(114, 'IMPLEMENTASI DATAMINING UNTUK PENINGKATAN KINERJA SUPPLY CHAIN MANAGEMENT PADA PT CANDI GASINDO UTAMA', 'implementasi datamining tingkat kinerja supply chain management pt candi gasindo utama', '', '', 2),
(115, 'PERANCANGAN SISTEM REKOMENDASI LOKASI TUJUAN PERJALANAN \nSEHAT DI MASA PANDEMI COVID-19 BERBASIS WEB MENGGUNAKAN \nMETODE CASE BASED REASONING PADA CAKRAWA TRAVEL \nCOMMUNITY ', 'rancang sistem rekomendasi lokasi tuju jalan sehat masa pandemi covid-19 bas web guna metode case based reasoning cakrawa travel community', '', '', 3),
(116, 'PENERAPAN MODEL PENGAWASAN PADA DANA DESA PULAU KAYU ARO DENGAN METODE MONEV', 'terap model awas dana desa pulau kayu aro metode monev', '', '', 4),
(117, 'Penerapan model pengawasan pada dana desa pulau kayu aro dengan metode monev', 'terap model awas dana desa pulau kayu aro metode monev', '', '', 4),
(118, 'PENGUKURAN KEPUASAN KONTRAKTOR TERHADAP KINERJA KLIEN PT MARGA PUTRI RAYA DENGAN METODE CUSTOMER SATISFACTION INDEX\nSTUDI KASUS: PERBAIKAN MARKA JALAN TOLL CIPALI PADA PT MARGA PUTRI RAYA \n', 'ukur puas kontraktor kinerja klien pt marga putri raya metode customer satisfaction index studi kasus baik marka jalan toll cipali pt marga putri raya', '', '', 2),
(119, 'IMPLEMENTASI DATAMINING UNTUK PENINGKATAN KINERJA SUPPLY CHAIN MANAGEMENT PADA PT CANDI GASINDO UTAMA', 'implementasi datamining tingkat kinerja supply chain management pt candi gasindo utama', '', '', 2),
(120, 'Pengembangan Media Belajar Interaktif Animasi Audio Visual Menggunakan Metode Computer Assisted Instruction Pada TK IT', 'kembang media ajar interaktif animasi audio visual guna metode computer assisted instruction tk it', '', '', 3),
(121, 'RANCANG BANGUN APLIKASI SISTEM PENDUKUNG KEPUTUSAN\nSELEKSI CALON KETUA KOMITE SEKOLAH MENGGUNAKAN\nMETODE PROFILE MATCHING\n( STUDI KASUS: YAYASAN ADDAWIYAH AL KHAIR )', 'rancang bangun aplikasi sistem dukung putus seleksi calon ketua komite sekolah guna metode profile matching studi kasus yayasan addawiyah al khair', '', '', 3),
(122, 'RANCANG BANGUN APLIKASI SISTEM PENDUKUNG KEPUTUSAN\nSELEKSI CALON KETUA KOMITE SEKOLAH MENGGUNAKAN\nMETODE PROFILE MATCHING\n( STUDI KASUS: YAYASAN ADDAWIYAH AL KHAIR )', 'rancang bangun aplikasi sistem dukung putus seleksi calon ketua komite sekolah guna metode profile matching studi kasus yayasan addawiyah al khair', '', '', 3),
(123, 'RANCANG BANGUN APLIKASI SISTEM PENDUKUNG KEPUTUSAN\nSELEKSI CALON KETUA KOMITE SEKOLAH MENGGUNAKAN\nMETODE PROFILE MATCHING\n( STUDI KASUS: YAYASAN ADDAWIYAH AL KHAIR )', 'rancang bangun aplikasi sistem dukung putus seleksi calon ketua komite sekolah guna metode profile matching studi kasus yayasan addawiyah al khair', '', '', 3),
(124, 'PERANCANGAN SISTEM ULANGAN DARING DENGAN PENILAIAN OTOMATIS MENGGUNAKAN NATURAL LANGUAGE PROCESSING (NLP)', 'rancang sistem ulang daring nilai otomatis guna natural language processing nlp', '', '', 1),
(125, 'PERANCANGAN SISTEM ULANGAN DARING DENGAN PENILAIAN OTOMATIS MENGGUNAKAN NATURAL LANGUAGE PROCESSING (NLP)', 'rancang sistem ulang daring nilai otomatis guna natural language processing nlp', '', '', 1),
(126, 'SISTEM PAKAR DIAGNOSA AUTIS PADA ANAK DENGAN METODE FORWARD CHAINING DAN CERTAINTY FACTOR BERBASIS ANDROID', 'sistem pakar diagnosa autis anak metode forward chaining certainty factor bas android', '', '', 3),
(127, 'RANCANGAN SISTEM PENDUKUNG KEPUTUSAN MENGGUNAKAN METODE WEIGHTED PRODUCT DAN SIMPLE ADDTIVE WEIGHTING BERBASIS WEB (Studi kasus : PT. Intan Tekno Mandiri)', 'rancang sistem dukung putus guna metode weighted product simple addtive weighting bas web studi kasus pt intan tekno mandiri', '', '', 3),
(128, 'Perancangan Sistem Rekomendasi Penentuan Harga Jual Produk dengan Metode Cost Plus Pricing (Studi Kasus : PT. Wahyu Mitra Sarana)', 'rancang sistem rekomendasi tentu harga jual produk metode cost plus pricing studi kasus pt wahyu mitra sarana', '', '', 2),
(129, 'Perancangan Model Pendeteksi & Penanganan Penyakit Covid-19 Dengan Metode Forward Chaining Berbasis WEB', 'rancang model deteksi tangan sakit covid-19 metode forward chaining bas web', '', '', 3),
(130, 'Perbandingan Kinerja Akurasi pada Analilis Sentimen Twitter Terkait Pembelajaran Daring Selama Covid-19 Menggunakan Algoritma Naive Bayes dan K-Nearest Neighbor', 'banding kinerja akurasi analilis sentimen twitter kait ajar daring lama covid-19 guna algoritma naive bayes k-nearest neighbor', '', '', 3),
(131, 'IMPLEMENTASI METODE K-NEAREST NEIGHBOR (K-NN) DAN ALGORITMA LAMPORT BAKERY UNTUK MEMPREDIKSI MASA KADALUARSA PRODUK PADA TOKO INDAH BAKERY BEKASI', 'implementasi metode k-nearest neighbor k-nn algoritma lamport bakery prediksi masa kadaluarsa produk toko indah bakery bekas', '', '', 2),
(132, 'Perancangan Sistem Penilaian kinerja untuk rekomendasi prestasi karyawan dengan metode promethee', 'rancang sistem nilai kinerja rekomendasi prestasi karyawan metode promethee', '', '', 1),
(133, 'MENENTUKAN TINGKAT PENJUALAN PRODUK PADA TOKO KAOS DAN SABLON JECLO MENGGUNAKAN METODE K-MEANS', 'tentu tingkat jual produk toko kaos sablon jeclo guna metode k-means', '', '', 2),
(134, 'PERANCANGAN MODEL MONITORING UNTUK PENCEGAHAN FRAUD PADA DATA TRANSAKSI DENGAN METODE ANALISA HIRARKI', 'rancang model monitoring cegah fraud data transaksi metode analisa hirarki', '', '', 1),
(135, 'PERBANDINGAN PREDIKSI HUBUNGAN BIAYA PRODUKSI DENGAN KEUNTUNGAN PENJUALAN  PRODUK PADA TOKO ZAHRA KUEH MENGGUNAKAN METODE FP-GROWTH BERBASIS WEB', 'banding prediksi hubung biaya produksi untung jual produk toko zahra eh guna metode fp-growth bas web', '', '', 3),
(136, 'Rancangan sistem untuk mendeteksi karyawan yang menyimpang berdasarkan presensi menggunakan metode KNN', 'rancang sistem deteksi karyawan simpang dasar presensi guna metode knn', '', '', 3),
(137, 'PENERAPAN DATAMINING DALAM MENGELOMPOKKAN JUMLAH WISATAWAN NUSANTARA (STUDI KASUS : DKI JAKARTA)', 'terap datamining kelompok jumlah wisatawan nusantara studi kasus dki jakarta', '', '', 4),
(138, 'PENERAPAN DATAMINING DALAM MENGELOMPOKKAN JUMLAH WISATAWAN NUSANTARA (STUDI KASUS : DKI JAKARTA)', 'terap datamining kelompok jumlah wisatawan nusantara studi kasus dki jakarta', '', '', 4),
(139, 'PENERAPAN K-NEARERST NEIGHBOUR DALAM PENERIMAAN PESERTA DIDIK DENGAN SISTEM ZONASI PADA SMP NEGERI 20 BEKASI', 'terap k-nearerst neighbour terima serta didik sistem zonasi smp negeri 20 bekas', '', '', 1),
(140, 'IMPLEMENTASI DATAMINING UNTUK PENINGKATAN KINERJA SUPPLY CHAIN MANAGEMENT PADA PT CANDI GASINDO UTAMA', 'implementasi datamining tingkat kinerja supply chain management pt candi gasindo utama', '', '', 2),
(141, 'RANCANG BANGUN SISTEM FACE RECOGNITION UNTUK LOGIN MENGGUNAKAN METODE HAAR CASCADE CLASSIFIER(STUDI KASUS : SIAKAD UNSADA)', 'rancang bangun sistem face recognition login guna metode haar cascade classifier studi kasus siakad unsada', '', '', 3),
(142, 'IMPLEMENTASI ALGORITMA ARTIFICIAL NEURAL NETWORK DALAM PREDIKSI HARGA RUMAH (STUDI KASUS: HOUSE PRICE PREDITCION, SHREE 2017)', 'implementasi algoritma artificial neural network prediksi harga rumah studi kasus house price preditcion shree 2017', '', '', 2),
(143, 'PERANCANGAN SISTEM PENDUKUNG KEPUTUSAN KARYAWAN TETAP MENGGUNAKAN METODE WEIGHTED PRODUCT DAN SIMPLE ADDITIVE WEIGHTING BERBASIS WEB (Studi kasus : PT. Intan Tekno Mandiri', 'rancang sistem dukung putus karyawan tetap guna metode weighted product simple additive weighting bas web studi kasus pt intan tekno mandiri', '', '', 3),
(144, 'SISTEM PERANCANGAN KEPUTUSAN PEMILIHAN SUPPLIER PADA ALINDA MOTOR MENGGUNAKAN METODE WEIGHTED PRODUCT (WP)', 'sistem rancang putus pilih supplier alinda motor guna metode weighted product wp', '', '', 3),
(145, 'PERANCANGAN SISTEM REKOMENDASI DIET SEHAT UNTUK MENJAGA IMUNITAS PADA MASA PANDEMI COVID-19 BERBASIS ANDROID', 'rancang sistem rekomendasi diet sehat jaga imunitas masa pandemi covid-19 bas android', '', '', 3),
(146, 'SISTEM PENDUKUNG KEPUTUSAN REKOMENDASI MENU KOPI MENGGUNAKAN METODE WEIGHTED PRODUCT BERBASIS ANDROID', 'sistem dukung putus rekomendasi menu kopi guna metode weighted product bas android', '', '', 3),
(147, 'RANCANG BANGUN SISTEM INFORMASI PERSEDIAAN OBAT MENGGUNAKAN METODE K-MEANS (STUDI KASUS : APOTEK MEDICASTORE)', 'rancang bangun sistem informasi sedia obat guna metode k-means studi kasus apotek medicastore', '', '', 3),
(148, 'Perancangan Sistem Penilaian kinerja untuk rekomendasi prestasi karyawan dengan metode promethee', 'rancang sistem nilai kinerja rekomendasi prestasi karyawan metode promethee', '', '', 1),
(149, 'SISTEM PAKAR DIAGNOSA AUTIS PADA ANAK DENGAN METODE FORWARD CHAINING DAN CERTAINTY FACTOR BERBASIS ANDROID', 'sistem pakar diagnosa autis anak metode forward chaining certainty factor bas android', '', '', 3),
(150, 'PERANCANGAN SISTEM PENILAIAN KINERJA PEGAWAI BERBASIS WEBSITE DENGAN METODE BEHAVIORALLY ANCHOR RATING SCALE', 'rancang sistem nilai kinerja pegawai bas website metode behaviorally anchor rating scale', '', '', 1),
(151, 'PENERAPAN METODE K-MEANS CLUSTERING PADA PEMETAAN DAERAH TERHADAP TINGKAT PENYEBARAN COVID-19 DI KECAMATAN TEBET', 'terap metode k-means clustering meta daerah tingkat sebar covid-19 camat tebet', '', '', 2),
(152, 'RANCANG BANGUN SISTEM INFORMASI PERSEDIAAN OBAT MENGGUNAKAN METODE K-MEANS (STUDI KASUS : APOTEK MEDICASTORE)', 'rancang bangun sistem informasi sedia obat guna metode k-means studi kasus apotek medicastore', '', '', 3),
(153, 'PERANCANGAN APLIKASI SISTEM PENDUKUNG KEPUTUSAN PEMILIHAN PEGAWAI TERBAIK PADA PT JOYPACK BERBASIS WEB DENGAN MENGGUNAKAN METODE AHP DAN TOPSIS', 'rancang aplikasi sistem dukung putus pilih pegawai baik pt joypack bas web guna metode ahp topsis', '', '', 3),
(154, 'PENERAPAN METODE NA�VE BAYES', 'terap metode na ve bayes', '', '', 4),
(155, 'PENERAPAN METODE AHP SISTEM PENDUKUNG KEPUTUSAN PENENTUAN PENERIMA BANTUAN SOSIAL BERSUBSIDI UNTUK KELUARGA MISKIN (Studi Kasus : RW 03 PENGGILINGAN)', 'terap metode ahp sistem dukung putus tentu terima bantu sosial subsidi keluarga miskin studi kasus rw 03 giling', '', '', 4),
(156, 'PENERAPAN METODE CLUSTERING DATA PENJUALAN UNTUK REKOMENDASI SUPLY BARANG DENGAN METODE K-MEANS', 'terap metode clustering data jual rekomendasi suply barang metode k-means', '', '', 2),
(157, 'PERANCANGAN APLIKASI SISTEM PENDUKUNG KEPUTUSAN PEMILIHAN PEGAWAI TERBAIK PADA PT JOYPACK BERBASIS WEB DENGAN MENGGUNAKAN METODE AHP DAN TOPSIS\n', 'rancang aplikasi sistem dukung putus pilih pegawai baik pt joypack bas web guna metode ahp topsis', '', '', 3),
(158, 'SISTEM PAKAR DIAGNOSA COVID-19 VARIAN B117 DENGAN METODE DAMPSTER SHAFER', 'sistem pakar diagnosa covid-19 varian b117 metode dampster shafer', '', '', 3),
(159, 'IMPLEMENTASI DATA MINING TINDAK PIDANA MENGGUNAKAN METODE K-MEANS', 'implementasi data mining tindak pidana guna metode k-means', '', '', 1),
(160, 'Rancangan Bangun Aplikasi Sistem Pendukung Keputusan Seleksi Penerimaan Kartu Jakarta Pintar (KJP) pada Siswa/i SMA Muhammadiyah 12 Jakarta Dengan Metode Simple Multi Attribute Rating Technique (SMART)', 'rancang bangun aplikasi sistem dukung putus seleksi terima kartu jakarta pintar kjp siswa i sma muhammadiyah 12 jakarta metode simple multi attribute rating technique smart', '', '', 0),
(161, 'PERANCANGAN SISTEM ULANGAN DARING DENGAN PENILAIAN OTOMATIS MENGGUNAKAN NATURAL LANGUAGE PROCESSING (NLP)', 'rancang sistem ulang daring nilai otomatis guna natural language processing nlp', '', '', 1),
(162, 'PEMIILIHAN BEASISWA UNTUK SISWA BERPRESTASI MENGGUNAKAN METODE WEIGHTED PRODUCT(WP)\n(STUDI KASUS: MAN 1 BREBES)', 'pemiilihan beasiswa siswa prestasi guna metode weighted product wp studi kasus man 1 brebes', '', '', 1),
(163, 'RANCANGAN BANGUN SISTEM DIAGNOSIS KERUSAKAN PADA MOBIL MENGGUNAKAN METODE FORWARD CHAINING', 'rancang bangun sistem diagnosis rusa mobil guna metode forward chaining', '', '', 3),
(164, 'RANCANG BANGUN APLIKASI ONLINE SHOP BERBASIS WEBSITE MENGGUNAKAN METODE MARKET BASKET ANALYSIS STUDI KASUS UD MANDIKA TECHNIC MAKMUR CIKARANG', 'rancang bangun aplikasi online shop bas website guna metode market basket analysis studi kasus ud mandika technic makmur cikarang', '', '', 3),
(165, 'PROPOSAL SKRIPSI\n�SISTEM PAKAR DIAGNOSA PENYAKIT IKAN CUPANG  (BETTA SPLENDENS) DENGAN MENGGUNAKAN METODE FORWARD CHAINING BERBASIS WEB pada KEYZA BETTA FARM�', 'proposal skripsi sistem pakar diagnosa sakit ikan cupang betta splendens guna metode forward chaining bas web keyza betta farm', '', '', 3),
(166, 'Perbandingan Analisis Sentimen Terhadap Kebijakan Pemerintah Terkait Vaksinasi COVID-19 Pada Twitter Menggunakan Naive Bayes Dan KNN', 'banding analisis sentimen bija perin kait vaksinasi covid-19 twitter guna naive bayes knn', '', '', 3),
(167, 'MODEL PERHITUNGAN REKOMENDASI UJI KELAYAKAN BUKU NONTEKS.\n(STUDI KASUS: PUSAT KURIKULUM DAN PERBUKUAN)\n', 'model hitung rekomendasi uji layak buku nonteks studi kasus pusat kurikulum buku', '', '', 4),
(168, 'MODEL PERHITUNGAN REKOMENDASI UJI KELAYAKAN BUKU NONTEKS.\n(STUDI KASUS: PUSAT KURIKULUM DAN PERBUKUAN)\n', 'model hitung rekomendasi uji layak buku nonteks studi kasus pusat kurikulum buku', '', '', 4),
(169, 'Perancangan Sistem Penentuan Jasa Photigrafer Berbasis Web Dengan Menggunanakan Metode Analytic Hierarchy Process (Studi Kasus: UKM Unsada Photography Club)', 'rancang sistem tentu jasa photigrafer bas web menggunanakan metode analytic hierarchy process studi kasus ukm unsada photography club', '', '', 3),
(170, 'Perancangan Sistem Penentuan Jasa Photografer Berbasis Web Dengan Menggunakan Metode Analytic Hierarchy Process (Studi Kasus: UKM Unsada Photography Club)', 'rancang sistem tentu jasa photografer bas web guna metode analytic hierarchy process studi kasus ukm unsada photography club', '', '', 3),
(171, 'Implementasi rfid menggunakan metode waterfall dan metode ubiquitous code pada rumah pintar (kendali kunci pintu rumah) dengan nodemcu esp8266', 'implementasi rfid guna metode waterfall metode ubiquitous code rumah pintar kendali kunci pintu rumah nodemcu esp8266', '', '', 3),
(172, 'PENERAPAN METODE CLUSTERING K-MEANS DALAM PENGELOMPOKKAN PENJUALAN PRODUK(Studi Kasus: Toko Diana Sport)', 'terap metode clustering k-means kelompok jual produk studi kasus toko ana sport', '', '', 4),
(173, 'IMPLEMENTASI ALGORITMA GENETIKA UNTUK PENJADWALAN PERKULIAHAN (Studi Kasus : Prodi Teknologi Informasi UNSADA)', 'implementasi algoritma genetika jadwal kuliah studi kasus prodi teknologi informasi unsada', '', '', 4),
(174, 'Sistem Informasi Pasar Online Berbasis Website Menerapkan Metode K-Nearest Neighbor (Studi Kasus Dinas Perdagangan Kabupaten Bekasi)', 'sistem informasi pasar online bas website terap metode k-nearest neighbor studi kasus dinas dagang kabupaten bekas', '', '', 3),
(175, 'IMPLEMENTASI PAYMENT GATEWAY MENGGUNAKAN METODE CLUSTERING UNTUK MENENTUKAN WAKTU FLASHSALE PADA CV. POTTERHOUSE', 'implementasi payment gateway guna metode clustering tentu waktu flashsale cv potterhouse', '', '', 3),
(176, 'Penerapan Metode Algoritma K-Means Clustering Dalam Pengelompokan Penjualn Produk  (Studi Kasus: PT. Binabusana Internusa)', 'terap metode algoritma k-means clustering kelompok penjualn produk studi kasus pt binabusana internusa', '', '', 4),
(177, 'Analisa dan Implementasi Manajemen Perencanaan PT. Galeri IDE Jakarta', 'analisa implementasi manajemen rencana pt galeri ide jakarta', '', '', 2),
(178, 'Aplikasi Dokumentasi Akta dan Legalitas PT. Central Korporindo Internasional, Tbk', 'aplikasi dokumentasi akta legalitas pt central korporindo internasional tbk', '', '', 2),
(179, 'Aplikasi E-Learning Bahasa dengan Metode Prototipe', 'aplikasi e-learning bahasa metode prototipe', '', '', 2),
(180, 'Aplikasi Pelayanan Pembuatan Berkas Persyaratan Nikah', 'aplikasi layan buat berkas syarat nikah', '', '', 0),
(181, 'Aplikasi Pembelajaran Hardware Komputer Berbasis Multimedia', 'aplikasi ajar hardware komputer bas multimedia', '', '', 3),
(182, 'Aplikasi Pembelajaran Vocabulary Bahasa Inggris Untuk Siswa SD', 'aplikasi ajar vocabulary bahasa inggris siswa sd', '', '', 1),
(183, 'Membangun Website Sebagai Media Pembelajaran di SMP Negeri 1 Gunungtanjung Kabupaten Tasikmalaya', 'bangun website media ajar smp negeri 1 gunungtanjung kabupaten tasikmalaya', '', '', 1),
(184, 'Pengolahan Data Nilai Siswa SMK Negeri 2 Tasikmalaya Berbasis Web', 'olah data nilai siswa smk negeri 2 tasikmalaya bas web', '', '', 1),
(185, 'Pengolahan Data Pembayaran Sumbangan Pembinaan Pendidikan SMK Al Ihsan', 'olah data bayar sumbang bina di smk al ihsan', '', '', 1),
(186, 'Pengolahan Data Penjualan Mesin Besi Pada PT. Panca Teknik Banjarmasin Berbasis Multiuser', 'olah data jual mesin besi pt panca teknik banjarmasin bas multiuser', '', '', 1),
(187, 'Pengolahan Data Siswa SMK Pancasila Manonjaya Kabupaten Tasikmalaya Berbasis Web', 'olah data siswa smk pancasila manonjaya kabupaten tasikmalaya bas web', '', '', 1),
(188, 'Perancangan Aplikasi Sistem Informasi Pinjaman Keuangan Nasabah Koperasi Darusaadah', 'rancang aplikasi sistem informasi pinjam uang nasabah koperasi darusaadah', '', '', 0),
(189, 'Perancangan Sistem Informasi Absensi Harian Siswa SMK Al Huda Sariwangi', 'rancang sistem informasi absensi hari siswa smk al huda sariwangi', '', '', 1),
(190, 'Perancangan Sistem Informasi Akuntansi Perpustakaan Tradisional', 'rancang sistem informasi akuntansi pustaka tradisional', '', '', 3),
(191, 'Perancangan Sistem Informasi Kepegawaian (Staf Pengajar dan Tata Usaha) pada MTs Lisda Pasirangin', 'rancang sistem informasi pegawai staf ajar tata usaha mts lisda pasirangin', '', '', 3),
(192, 'Perancangan Sistem Informasi Nilai Akademi Kebidanan Sari Mulia Banjarmasin Berbasis Web', 'rancang sistem informasi nilai akademi bidan sari mulia banjarmasin bas web', '', '', 1),
(193, 'Perancangan Sistem Informasi Pengelolaan Keuangan Siswa Berbasis Web di MAN Kiarakuda Ciawi', 'rancang sistem informasi kelola uang siswa bas web man kiarakuda ciawi', '', '', 1),
(194, 'Perancangan Sistem Informasi Penjualan dan Pembelian pada PT. Kalica Group Banjarmasin', 'rancang sistem informasi jual beli pt kalica group banjarmasin', '', '', 3),
(195, 'Perangkat Lunak Penjualan Barang Menggunakan Barcode Toko Hikmah Minimarket Rajapolah', 'perangkat lunak jual barang guna barcode toko hikmah minimarket rajapolah', '', '', 2),
(196, 'Perangkat Lunak Rekrutmen Pegawai PT. Indah Parahyangan Berbasis Client-Server', 'perangkat lunak rekrutmen pegawai pt indah parahyangan bas client-server', '', '', 2),
(197, 'Sistem Aplikasi Rental pada Taman Bacaan Gebby', 'sistem aplikasi rental taman baca gebby', '', '', 3),
(198, 'Sistem Aplikasi Souvenir Berdasarkan Omset Pencapaian Sales', 'sistem aplikasi souvenir dasar omset capai sales', '', '', 3),
(199, 'Sistem Informasi Stok Barang UD. Sumber Rasa Kota Tasikmalaya Berbasis Web', 'sistem informasi stok barang ud sumber rasa kota tasikmalaya bas web', '', '', 1),
(200, 'Sistem Informasi Akademik Pesantren pada Pondok Pesantren Al Hasan', 'sistem informasi akademik pesantren pondok pesantren al hasan', '', '', 3),
(201, 'Sistem Informasi Akademik SMK Daarul Hidayah', 'sistem informasi akademik smk daarul hidayah', '', '', 1);
INSERT INTO `tbl_judul_skripsi` (`id_judul`, `judul_skripsi`, `text_preprocessing`, `proposal`, `studi_kasus`, `label`) VALUES
(202, 'Sistem Informasi Akuntansi di Media Pendidikan Ganesha', 'sistem informasi akuntansi media di ganesha', '', '', 3),
(203, 'Sistem informasi Akuntansi Penerimaan dan Pengeluaran Kas pada Petugas Pengiriman Barang PT. Leuwigajah', 'sistem informasi akuntansi terima keluar kas tugas kirim barang pt leuwigajah', '', '', 2),
(204, 'Sistem Informasi Aplikasi Pengelolaan Transaksi Keuangan dan Pendataan Konsumen BPS-SPAMs Kamulyan', 'sistem informasi aplikasi kelola transaksi uang data konsumen bps-spams kamulyan', '', '', 1),
(205, 'Sistem Informasi Biodata Pegawai pada SMP Negeri 1 Leuwisari Menggunakan Visual Basic 6.0', 'sistem informasi biodata pegawai smp negeri 1 leuwisari guna visual basic 6 0', '', '', 0),
(206, 'Sistem Informasi Data Pegawai PTP Nusantara IX (Persero) Kebun Warnasari Cilacap', 'sistem informasi data pegawai ptp nusantara ix persero kebun warnasari cilacap', '', '', 1),
(207, 'Sistem Informasi Koperasi Simpan Pinjam pada SMA Negeri 1 Rancah', 'sistem informasi koperasi simpan pinjam sma negeri 1 rancah', '', '', 0),
(208, 'Sistem Informasi Pencatatan Nilai di Sekolah Dasar Negeri (SDN) SingkirIi Cikalong Tasikmalaya', 'sistem informasi catat nilai sekolah dasar negeri sdn singkirii cikalong tasikmalaya', '', '', 1),
(209, 'Sistem Informasi Pendataan Keluarga Miskin dengan Parameter Penghasilan dan Kondisi Rumah', 'sistem informasi data keluarga miskin parameter hasil kondisi rumah', '', '', 1),
(210, 'Sistem Informasi Pengelolaan Barang Inventaris', 'sistem informasi kelola barang inventaris', '', '', 2),
(211, 'Sistem Informasi Perpustakaan Menggunakan Visual Basic 6.0', 'sistem informasi pustaka guna visual basic 6 0', '', '', 3),
(212, 'Sistem Informasi Produksi Pelelangan Ikan di Dinas Kelautan dan Perikanan', 'sistem informasi produksi lelang ikan dinas laut ikan', '', '', 2),
(213, 'Sistem Informasi Rawat Jalan Instalasi Gawat Darurat (IGD) di Rumah Sakit', 'sistem informasi rawat jalan instalasi gawat darurat igd rumah sakit', '', '', 3),
(214, 'Sistem Informasi Simpan Pinjam pada Koperasi Assyfa', 'sistem informasi simpan pinjam koperasi assyfa', '', '', 0),
(215, 'Sistem Informasi Tagihan Rekening PDAM Kota Hulu Sungai Tengah Secara Online', 'sistem informasi tagih rekening pdam kota hulu sungai tengah online', '', '', 3),
(216, 'Sistem Informasi Terminal Angkutan Umum Penumpang KM 6 Banjarmasin', 'sistem informasi terminal angkut umum tumpang km 6 banjarmasin', '', '', 3),
(217, 'Sistem Komputerisasi Absen Guru dan Jadwal Mengajar pada Tiara Bimbingan Belajar di Palangkaraya', 'sistem komputerisasi absen guru jadwal ajar tiara bimbing ajar palangkaraya', '', '', 3),
(218, 'Sistem Pakar Pendeteksian Kerusakan Hardware pada Komputer dengan Metode Fuzzy', 'sistem pakar deteksi rusa hardware komputer metode fuzzy', '', '', 3),
(219, 'Website SMP Negeri 2 Cigalontang', 'website smp negeri 2 cigalontang', '', '', 1),
(220, 'Sistem Pelayanan Servis Komputer CV. Jayacom Solusindo Banjarmasin', 'sistem layan servis komputer cv jayacom solusindo banjarmasin', '', '', 3),
(221, 'Sistem Pengolahan Data Gaji Pegawai CV. Ariesta Sarana Niaga', 'sistem olah data gaji pegawai cv ariesta sarana niaga', '', '', 1),
(222, 'Sistem Pengolahan Data Pasien Berbasis Jaringan LAN pada Praktek Dr. Wahab Syahroni', 'sistem olah data pasien bas jaring lan praktek dr wahab syahroni', '', '', 1),
(223, 'Sistem Pengolahan Data Pegawai di SMP Negeri 1 Leuwisari', 'sistem olah data pegawai smp negeri 1 leuwisari', '', '', 1),
(224, 'Sistem Informasi Pengolahan Data Penduduk Desa Kadupandak Cianjur', 'sistem informasi olah data duduk desa kadupandak cianjur', '', '', 1),
(225, 'Sistem Pengolahan Data Rental Bus PO Budiman Tasikmalaya', 'sistem olah data rental bus po budiman tasikmalaya', '', '', 1),
(226, 'Sistem Pengolahan Penggajian Pegawai di SMP Islam Manbaul Ulum Malaganti', 'sistem olah gaji pegawai smp islam manbaul ulum malaganti', '', '', 1),
(250, 'Evaluasi Implementasi Sistem E-Learning menggunakan Model Evaluasi HOT (Human, Organization, Technology) Fit (Studi Kasus Universitas Sam Ratulangi)	', 'evaluasi implementasi sistem e-learning model evaluasi hot human organization technology fit studi kasus universitas sam ratulangi', '23-proposal18.04.1866_jurnal_eproc.pdf', 'universitas darma persada', 1),
(251, 'PERANCANGAN SISTEM PENDATAAN ALUMNI BERBASIS WEB DECISION SUPPORT SYSTEM DENGAN METODE SAW DAN FUZZY MAMDANI UNTUK MENCARI REKOMENDASI PEKERJAAN TERHADAP ALUMNI	', 'perancangan sistem pendataan alumni berbasis web decision support system metode saw fuzzy mamdani mencari rekomendasi pekerjaan alumni', '23-proposalcoeg.pdf', 'adas', 1),
(252, 'rancang bangun aplikasi pengiriman ikan hias menggunakan metode haversine', 'rancang bangun aplikasi pengiriman ikan hias menggunakan metode haversine', '23-proposal23-proposal18.04.1866_jurnal_eproc.pdf', 'FikFish', 1),
(258, 'Sistem Pendukung Keputusan Pengadaan Raw Material Pembuatan Mie Instan Menggunakan Metode Analithical Hierarchy Process Studi Kasus PT. Indofood CBP Sukses Makmu', 'sistem pendukung keputusan raw material buat mie instan menggunakan metode analithical hierarchy process studi kasus pt indofood cbp sukses makmu', '23-proposalGenta Prima Syahnur_LEMBURAN.pdf', 'PT Makmur', 1),
(259, 'Rancang Bangun Aplikasi Catering Pada DJ Catering', 'rancang bangun aplikasi catering dj catering', '23-proposal351-570-1-PB.pdf', 'DJ Caterign', 1),
(260, 'Rancang Bangun Sistem Informasi Test', 'rancang bangun sistem informasi test', '28-proposalACFrOgBDBWj8Mxf4uFLslQjPbYyV4yMd6aEA_2icnUnQ0LryhBKgwaS_R1Q2qFz0YNIbArDUo7Kg8MbevzFPl27zhy4_DFRxSzanguj0iCP80k--ufnIcrKfLXn_nBO5BmjaAmce4jvGhFbp-9O_.pdf', 'Test Case', 1),
(261, 'Prediksi Harga Emas Tokopedia x Pegadaian', 'prediksi harga emas tokopedia x pegadaian', '28-proposalACFrOgBDBWj8Mxf4uFLslQjPbYyV4yMd6aEA_2icnUnQ0LryhBKgwaS_R1Q2qFz0YNIbArDUo7Kg8MbevzFPl27zhy4_DFRxSzanguj0iCP80k--ufnIcrKfLXn_nBO5BmjaAmce4jvGhFbp-9O_.pdf', 'Tokopedia', 1),
(262, 'Prediksi Harga Emas Bibit ID', 'prediksi harga emas bibit id', '28-proposalACFrOgBDBWj8Mxf4uFLslQjPbYyV4yMd6aEA_2icnUnQ0LryhBKgwaS_R1Q2qFz0YNIbArDUo7Kg8MbevzFPl27zhy4_DFRxSzanguj0iCP80k--ufnIcrKfLXn_nBO5BmjaAmce4jvGhFbp-9O_.pdf', 'Tokopedia', 1),
(263, 'Merancang Bangun Sebuah Siakad', 'merancang bangun sebuah siakad', '28-proposal2012-1-00850-IF Bab2001.pdf', 'SI', 1),
(269, 'Pengembangan Bahan Ajar Pengantar Teknologi Informasi Berbasis Contextual Teaching and Learning di Jurusan Teknik Elektro Universitas Negeri Malang', 'pengembangan bahan ajar pengantar teknologi informasi berbasis contextual teaching and learning jurusan teknik elektro universitas negeri malang', '', '', 4),
(275, 'Pengembangan Bahan Ajar Pengantar Teknologi Informasi Berbasis Contextual Teaching and Learning di Jurusan Teknik Elektro Universitas Negeri Malang', 'pengembangan bahan ajar pengantar teknologi informasi berbasis contextual teaching and learning jurusan teknik elektro universitas negeri malang', '', '', 4),
(276, 'test', 'test', '', '', 2),
(277, 'a', 'a', '', '', 3),
(278, 'Pengembangan Bahan Ajar Pengantar Teknologi Informasi Berbasis Contextual Teaching and Learning di Jurusan Teknik Elektro Universitas Negeri Malang', 'pengembangan bahan ajar pengantar teknologi informasi berbasis contextual teaching and learning jurusan teknik elektro universitas negeri malang', '', '', 4),
(279, 'test', 'test', '', '', 2),
(280, 'a', 'a', '', '', 3),
(281, 'Pengembangan Bahan Ajar Pengantar Teknologi Informasi Berbasis Contextual Teaching and Learning di Jurusan Teknik Elektro Universitas Negeri Malang', 'pengembangan bahan ajar pengantar teknologi informasi berbasis contextual teaching and learning jurusan teknik elektro universitas negeri malang', '', '', 4),
(282, 'test', 'test', '', '', 2),
(283, 'a', 'a', '', '', 3),
(284, 'Pengembangan Bahan Ajar Pengantar Teknologi Informasi Berbasis Contextual Teaching and Learning di Jurusan Teknik Elektro Universitas Negeri Malang', 'pengembangan bahan ajar pengantar teknologi informasi berbasis contextual teaching and learning jurusan teknik elektro universitas negeri malang', '', '', 4),
(285, 'test', 'test', '', '', 2),
(286, 'a', 'a', '', '', 3),
(287, 'Pengembangan Bahan Ajar Pengantar Teknologi Informasi Berbasis Contextual Teaching and Learning di Jurusan Teknik Elektro Universitas Negeri Malang', 'pengembangan bahan ajar pengantar teknologi informasi berbasis contextual teaching and learning jurusan teknik elektro universitas negeri malang', '', '', 4),
(288, 'test', 'test', '', '', 2),
(289, 'a', 'a', '', '', 3),
(290, 'Pengembangan Bahan Ajar Pengantar Teknologi Informasi Berbasis Contextual Teaching and Learning di Jurusan Teknik Elektro Universitas Negeri Malang', 'pengembangan bahan ajar pengantar teknologi informasi berbasis contextual teaching and learning jurusan teknik elektro universitas negeri malang', '', '', 4),
(291, 'test', 'test', '', '', 2),
(292, 'a', 'a', '', '', 3),
(293, 'Pengembangan Bahan Ajar Pengantar Teknologi Informasi Berbasis Contextual Teaching and Learning di Jurusan Teknik Elektro Universitas Negeri Malang', 'pengembangan bahan ajar pengantar teknologi informasi berbasis contextual teaching and learning jurusan teknik elektro universitas negeri malang', '', '', 4),
(294, 'test', 'test', '', '', 2),
(295, 'a', 'a', '', '', 3),
(296, 'PERBANDINGAN METODE SIMPLE ADDITIVE WEIGHTING DAN WEIGHTED PRODUCT MENGGUNAKAN METODE MEAN SQUARED ERROR UNTUK PEMILIHAN BEASISWA JKA BERBASIS WEB (STUDI KASUS: UKM KENDOKA UNSADA)', 'perbandingan metode simple additive weighting weighted product menggunakan metode mean squared error pemilihan beasiswa jka berbasis web studi kasus ukm kendoka unsada', '23-proposal41047-121-92511-1-10-20181205 (1).pdf', '1dsa', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_users` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `address` text NOT NULL,
  `jk` varchar(15) NOT NULL,
  `angkatan` varchar(11) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `image` varchar(40) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`id_users`, `nim`, `first_name`, `last_name`, `email`, `password`, `address`, `jk`, `angkatan`, `semester`, `image`, `role`) VALUES
(23, 2017240071, 'genta', 'prima', 'gentaprima600@gmail.com', '$2y$10$Tm2pR9Aol7kYzhfHA6Y8C.nsmLwe2DfC0pHPqJGD9GFWrBiCYHJ2G', 'Jakarta Timur', 'Laki-laki', '2012', 'Semester 8', 'logo.png', 0),
(25, 2017231234, 'Prasetya', 'Hadi saputra', 'prasetya2423@gmail.com', '$2y$10$1EAVyJto0eLB/LoKWo4TpuE57b9WeJRLjbZweZCNQuWGn9UVhzgpq', '', '', '', 'Semester 7', '', 0),
(26, 0, 'admin', 'admin', 'admin@gmail.com', '$2y$10$cH2OsEehwF3f8Qf6sc4ixeFpNjFVZILX3KoUQJNiYQp4z2TdXl/hS', '', '', '', '', '', 1),
(27, 2017240053, 'genta', 'asdasd', 'gentaprima@yahoo.com', '$2y$10$6LWroUXnJqqZs9ytbOfgOO7gEQrCJKANiLw5/xlYslkNwiW3nqU/S', 'Jakarta Timur', 'Laki-laki', '2021', 'Semester 1', 'logo.png', 0),
(28, 2016240053, 'Prasetya Hadi Saputra', 'dsa', 'zaenalbanker@gmail.com', '$2y$10$NZ.GGMmwZ.8FY6FpptwZV.vJqRrERT.JlvStOOI3qFWVP/KJ15oNO', '', '', '2016', 'Semester 8', '', 0),
(29, 2147483647, 'Prasetya Hadi Saputra', 'dsa', 'mushrif1@gmail.com', '$2y$10$.1N31mwYmh56gcfdr4r3lunFhNTZ8mIRgM6nKfPMiij/pNSvsWA5e', '', '', '2021', 'Semester 8', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_history`
--

CREATE TABLE `tb_history` (
  `id_history` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `judul` text NOT NULL,
  `studi_kasus` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `pembimbing` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_ruang` varchar(30) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `status_hasil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pembimbing`
--

CREATE TABLE `tb_pembimbing` (
  `id_pembimbing` int(11) NOT NULL,
  `nama_pembimbing` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pembimbing`
--

INSERT INTO `tb_pembimbing` (`id_pembimbing`, `nama_pembimbing`) VALUES
(1, 'Eka Nur'),
(3, 'Ir. Eri Suherman'),
(4, 'Nursyamsiyah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengajuan`
--

CREATE TABLE `tb_pengajuan` (
  `id_pengajuan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pembimbing` int(11) NOT NULL,
  `id_judul` int(11) NOT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `persentase_plagiat` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `status_jadwal` int(11) NOT NULL,
  `periode` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ruang`
--

CREATE TABLE `tb_ruang` (
  `id_ruang` int(11) NOT NULL,
  `nama_ruang` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `dosen_1` int(11) NOT NULL,
  `dosen_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_ruang`
--

INSERT INTO `tb_ruang` (`id_ruang`, `nama_ruang`, `tanggal`, `dosen_1`, `dosen_2`) VALUES
(2, 'T301', '2021-06-28', 3, 1),
(3, 'SA-001', '2021-08-08', 1, 3),
(4, 'SA-0010', '2021-08-08', 4, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_saran`
--

CREATE TABLE `tb_saran` (
  `id_saran` int(11) NOT NULL,
  `judul_skripsi` text NOT NULL,
  `preprocessing` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_saran`
--

INSERT INTO `tb_saran` (`id_saran`, `judul_skripsi`, `preprocessing`) VALUES
(240, 'asd', 'mendeteksi keakuratan metode noise salt and pepper median filter'),
(241, 'Sistem Monitoring Keadaan Ruang Laboratorium Fakultas Komunikasi Dan?Informatika?Di Universitas Muhammadiyah Surakarta', 'sistem monitoring keadaan ruang laboratorium fakultas komunikasi informatika universitas muhammadiyah surakarta'),
(242, 'Prediksi Jumlah Lulusan Mahasiswa Stmik Dumai Menggunakan Jaringan Syaraf Tiruan', 'prediksi jumlah lulusan mahasiswa stmik dumai menggunakan jaringan syaraf tiruan'),
(243, 'Game Petualangantrapped Minersdengan Metode Fintite State Machine', 'game petualangan trapped miners metode fintite state machine'),
(244, 'Pengembangan Media Pembelajaran Interaktif Berbasis Mobile Bermuatan Problem Based Learning Mata Pelajaran Komputer Dan Jaringan Dasar Pada Kelas X?Program Keahlian Tkj Smkn 12 Malang', 'pengembangan media pembelajaran interaktif berbasis mobile bermuatan problem based learning mata pelajaran komputer jaringan dasar kelas x program keahlian tkj smkn 12 malang'),
(245, 'Sistem Pendukung Keputusan Penilaian Kesehatan Tanah Dengan Metode Simple Additive Weighting', 'sistem pendukung keputusan penilaian kesehatan tanah metode simple additive weighting'),
(246, 'Pengembangan Aplikasi Modul Pembelajaran Desain Grafis Berbasis Android', 'pengembangan aplikasi modul pembelajaran desain grafis berbasis android'),
(247, 'Pengembangan Media Pembelajaran Berbasis Web Untuk Sekolah Menengah Pertama Smp Mata Pelajaran Ilmu Pengetahuan Sosial Ips Kelas Vii', 'pengembangan media pembelajaran berbasis web sekolah menengah pertama smp mata pelajaran ilmu pengetahuan sosial ips kelas vii'),
(248, 'Sistem Informasi Profil Mahasiswa Pada Penilaian Penguji Pessta Di Perguruan Tinggi', 'sistem informasi profil mahasiswa penilaian penguji pessta perguruan tinggi'),
(249, 'Penerapan Metode Jaringan Syaraf Tiruan Pada Sistem Deteksi Citra Darah Manusia', 'penerapan metode jaringan syaraf tiruan sistem deteksi citra darah manusia'),
(250, 'Perancangan Digitalisasi Pelayanan Administrasi Akademik Jurusan?Teknik?Elektronika Berbasis Android', 'perancangan digitalisasi pelayanan administrasi akademik jurusan teknik elektronika berbasis android'),
(251, 'Analisis Tingkat Kepuasan Mahasiswa Terhadap Kinerja Sistem Informasi Akademik Simak Di Program Studi?Informatika', 'analisis tingkat kepuasan mahasiswa kinerja sistem informasi akademik simak program studi informatika'),
(252, 'Sistem Penentuan Jarak Terdekat Dalam Pengiriman Darah Di Pmi Kota Semarang Dengan Metode Algoritma Greedy', 'sistem penentuan jarak terdekat pengiriman darah pmi kota semarang metode algoritma greedy'),
(253, 'Sistem Penunjang Keputusan Pencarian Jarak Terpendek Menuju Rumah Sakit Dan Puskesmas Dengan Metode Dijkstra', 'sistem penunjang keputusan pencarian jarak terpendek menuju rumah sakit puskesmas metode dijkstra'),
(254, 'Sistem Informasi Pemasaran Rumah Berbasis Web Gis Studi Kasus Perumahan Bukit Sakinah', 'sistem informasi pemasaran rumah berbasis web gis studi kasus perumahan bukit sakinah'),
(255, 'Aplikasi Sistem Pakar Diagnosa Penyakit Gigi Metode Forward Chaining Di Uptd Kesehatan Puskesmas Bangil', 'aplikasi sistem pakar diagnosa penyakit gigi metode forward chaining uptd kesehatan puskesmas bangil'),
(256, 'Implementasi Responsive Web Design Pada Sistem Informasi Geografis Objek Central Bima Ntb', 'implementasi responsive web design sistem informasi geografis objek central bima ntb'),
(257, 'Aplikasi Manajemen Central Rental Mobil Menggunakan Framework Codeigniter Study Kasus Guntur Sakti Rental', 'aplikasi manajemen central rental mobil menggunakan framework codeigniter study kasus guntur sakti rental'),
(258, 'Analisis Dan Perancangan Sistem Informasi Pemesanan Barang Antar Cabang Di Kedai Durian Tokngah Berbasis Web', 'analisis perancangan sistem informasi pemesanan barang antar cabang kedai durian tokngah berbasis web'),
(259, 'Pembuatan Video Profil Perusahaan Berbasis Animasi 3d Di Pt Krakatau Insan Mandiri', 'pembuatan video profil perusahaan berbasis animasi 3d pt krakatau insan mandiri'),
(260, 'Analisis Kinerja Pelayanan Surat-Menyurat Berbasis Web Di Pgri Kabupaten Bogor', 'analisis kinerja pelayanan surat-menyurat berbasis web pgri kabupaten bogor'),
(261, 'Aplikasi Persebaran Rumah Kos Berbasis Android Studi Kasus Kota Malang', 'aplikasi persebaran rumah kos berbasis android studi kasus kota malang'),
(262, 'Implementasi Information Retrieval System Menggunakan Metode Latent Semantic Indexing Pada Aplikasi Pencarian E-Book', 'implementasi information retrieval system menggunakan metode latent semantic indexing aplikasi pencarian e-book'),
(263, 'Analisis Perbandingan Algoritma Simetris Rivest Code 5 Dengan Algoritma Simetris Rivest Code 6Studi Kasus Smk Negeri Seluma', 'analisis perbandingan algoritma simetris rivest code 5 algoritma simetris rivest code 6 studi kasus smk negeri seluma'),
(264, '3d Hologram Media Interaktif Pengenalan Proses Pembuatan Jenang Sebagai Upaya Pelestarian Kuliner Khas Kudus', '3d hologram media interaktif pengenalan proses pembuatan jenang upaya pelestarian kuliner khas kudus'),
(265, 'Pengaruh Sikap Dan Motivasi Terhadap Minat Berwirausaha Mahasiswa Program Studi Manajemen Bisnis Telekomunikasi Dan?Informatika?Angkatan 2014', 'pengaruh sikap motivasi minat berwirausaha mahasiswa program studi manajemen bisnis telekomunikasi informatika angkatan 2014'),
(266, 'Settingsgame Petualangan Trapped Miners Dengan Metode Finite State Machine', 'settingsgame petualangan trapped miners metode finite state machine'),
(267, 'Implementasi Metode Forward Chaining Pada Sistem Pakar Pendiagnosis Gangguan Ansietas Studi Kasus Pijar Psikologi', 'implementasi metode forward chaining sistem pakar pendiagnosis gangguan ansietas studi kasus pijar psikologi'),
(268, 'Otomatisasi Penyiram Dan Pencahayaan Tanaman Buah Naga Berbasis Arduino Uno Menggunakan Energy Panel Surya', 'otomatisasi penyiram pencahayaan tanaman buah naga berbasis arduino uno menggunakan energy panel surya'),
(269, 'Sistem Penilaian Penguji Pada Pessta S2 Berbasis Yii Framework Sebagai Media Penginputan Nilai Sidang Tesis Di Perguruan Tinggi', 'sistem penilaian penguji pessta s2 berbasis yii framework media penginputan nilai sidang tesis perguruan tinggi'),
(270, 'Perancangan E-Commerce Di Toko Dwi Yoga Berbasis Android Menggunakan Android Studio', 'perancangan e-commerce toko dwi yoga berbasis android menggunakan android studio'),
(271, 'Metode Background Substraction Untuk Monitoring Obyek Bergerak Melalui Kamera Video', 'metode background substraction monitoring obyek bergerak melalui kamera video'),
(272, 'Perancangan Algoritma Topsis-Improved Rule Matching Untuk Analisis Keamanan Berkendara Menggunakan Sepeda Motor Matic', 'perancangan algoritma topsis-improved rule matching analisis keamanan berkendara menggunakan sepeda motor matic'),
(273, 'Aplikasi Augmented Reality Pada Pemasaran Perumahan Puri Lestari Di Cikarang Berbasis Android', 'aplikasi augmented reality pemasaran perumahan puri lestari cikarang berbasis android'),
(274, 'Perancangan Prototype Interface Sistem Informasi Manajemen Pra-Pengajuan Judul Tugas Akhir Simppj Ta', 'perancangan prototype interface sistem informasi manajemen pra-pengajuan judul tugas akhir simppj ta'),
(275, 'Usability Testing Pada Aplikasi Hooki Arisan Dengan Model Pacmad Menggunakan Pendekatan Gqm', 'usability testing aplikasi hooki arisan model pacmad menggunakan pendekatan gqm'),
(276, 'Pembangunan Game Edukasi Mengenal Alat Musik Tradisional Jawa Barat Menggunakan Metode Game Development Life Cycle', 'pembangunan game edukasi mengenal alat musik tradisional jawa barat menggunakan metode game development life cycle'),
(277, 'Prototipe Text Mining Pada Aplikasi Chatting Menggunakan Algoritma Challenge Response', 'prototipe text mining aplikasi chatting menggunakan algoritma challenge response'),
(278, 'Pengembangan Laboratorium Keamanan Jaringan Berbasis Cloud Computing Menggunakan Container Ptik Fkip Uns', 'pengembangan laboratorium keamanan jaringan berbasis cloud computing menggunakan container ptik fkip uns'),
(279, 'Peningkatan Kualitas Citra Ultrasonografi Usg Dengan Menggunakan Metode Gaussian Filter', 'peningkatan kualitas citra ultrasonografi usg menggunakan metode gaussian filter'),
(280, 'Adopsi Model Dgbl-Id Pada Pengembangan Game Edukasi Onet Wawasan Nusantara', 'adopsi model dgbl-id pengembangan game edukasi onet wawasan nusantara'),
(281, 'Implementasi Reduksi Noise Pada Citra Ultrasonografi Usg Menggunakanmetode Arithmatic Mean Filter', 'implementasi reduksi noise citra ultrasonografi usg menggunakanmetode arithmatic mean filter'),
(282, 'Sistem Informasi Geografis Tingkat Kerusakan Ruas Jalan Berbasis Web', 'sistem informasi geografis tingkat kerusakan ruas jalan berbasis web'),
(283, 'Implementasi Jaringan Syaraf Tiruan Untuk Pengelompokkan Minat Kompetensi Mahasiswa Stmik Pelita Nusantara Medan', 'implementasi jaringan syaraf tiruan pengelompokkan minat kompetensi mahasiswa stmik pelita nusantara medan'),
(284, 'Rancang Bangun Media Pembelajaran Interaktif Komputer Dan Jaringan Dasar Di Smk', 'rancang bangun media pembelajaran interaktif komputer jaringan dasar smk'),
(285, 'Webmap Untuk Pengembangan Jalur Irigasi Baru Di Kabupaten Lamongan', 'webmap pengembangan jalur irigasi baru kabupaten lamongan'),
(286, 'Pembangunan Game Peduli Lingkungan Menggunakan Metode Agile Game Development', 'pembangunan game peduli lingkungan menggunakan metode agile game development'),
(287, 'Sistem Pendukung Keputusan Seleksi Asisten Praktikum Menggunakan Metode Profile Matching', 'sistem pendukung keputusan seleksi asisten praktikum menggunakan metode profile matching'),
(288, 'Penerapan Metode Finite State Machine Pada Game War Of Astraghoul', 'penerapan metode finite state machine game war of astraghoul'),
(289, 'Implementasi Program Quest Untuk Menganalisis Butir Soal Bagi Guru-Guru Smp Muhammadiyah 2 Karanglewas', 'implementasi program quest menganalisis butir soal guru-guru smp muhammadiyah 2 karanglewas'),
(290, 'Perancangan Sistem Informasi Alumni Stikom Dinamika Bangsa Jambi Berbasis Android', 'perancangan sistem informasi alumni stikom dinamika bangsa jambi berbasis android'),
(291, 'Sistem Pelaporan Dan Monitoring Data Bidang P2p Dinas Kesehatan Kabupaten Sragen', 'sistem pelaporan monitoring data bidang p2p dinas kesehatan kabupaten sragen'),
(292, 'Korelasi Nilai Uan Ip Tahun Pertama Terhadap Masa Studi Dengan Backpropagation', 'korelasi nilai uan ip tahun pertama masa studi backpropagation'),
(293, 'Pembangunan Sistem Informasi Biaya Produksi Benang Menggunakan Metode Activity Based Costin Pada Pt Asian Cotton Industry', 'pembangunan sistem informasi biaya produksi benang menggunakan metode activity based costin pt asian cotton industry'),
(294, 'Perancangan Dan Pembuatan Alat Penghitung Jumlah Lembar Kertas Hasil Proses Cetak', 'perancangan pembuatan alat penghitung jumlah lembar kertas hasil proses cetak'),
(295, 'Perancangan Aplikasi Pengacakan Soal Ujian Semester Menggunakan Metode Multiplicative Pada Sma Swasta Gajah Mada', 'perancangan aplikasi pengacakan soal ujian semester menggunakan metode multiplicative sma swasta gajah mada'),
(296, 'Rancang Bangun Sistem Informasi Pemesanan Ceker Mercon Ibu Elly Menggunakan Metode Rad Berbasis Android', 'rancang bangun sistem informasi pemesanan ceker mercon ibu elly menggunakan metode rad berbasis android'),
(297, 'Perancangan Desain Logo R3-Viora Sebagai Identitas Baru Ukm Viora Collection Tanggulangin Sidoarjo', 'perancangan desain logo r3-viora identitas baru ukm viora collection tanggulangin sidoarjo'),
(298, 'Perancangan Sistem Informasi Akademik Pasraman Berbasis Website', 'perancangan sistem informasi akademik pasraman berbasis website'),
(299, 'Implementasi Algoritma Brute Force Dalam Glosarium Sosiologi Berbasis Web', 'implementasi algoritma brute force glosarium sosiologi berbasis web'),
(300, 'Kontribusi Kreativitas Belajar Dan Pemanfaatan Laboratorium Komputer Terhadap Hasil Belajar Pemograman Web Di Smk N 1 Julok', 'kontribusi kreativitas belajar pemanfaatan laboratorium komputer hasil belajar pemograman web smk n 1 julok'),
(301, 'Perancangan Aplikasi Perbandingan Deteksi Tepi Dalam Citra Digital Dengan Metode Edge Detection Linking Dan Sobel', 'perancangan aplikasi perbandingan deteksi tepi citra digital metode edge detection linking sobel'),
(302, 'Metode Systematic Literature Review Untuk Identifikasi Platform Dan Metode Pengembangan Sistem Informasi Di Indonesia', 'metode systematic literature review identifikasi platform metode pengembangan sistem informasi indonesia'),
(303, 'Analisis Pengaruh Nilai Tes Potensi Akademik Pada Evaluasi Pemrograman Dasar Terhadap Motivasi Dan Kemampuan Pemrograman', 'analisis pengaruh nilai tes potensi akademik evaluasi pemrograman dasar motivasi kemampuan pemrograman'),
(304, 'Pembangunan Aplikasi Identifikasi Waktu Kawin Ternak Babi Dengan Alihragam Wavelet Dan Backpropagation', 'pembangunan aplikasi identifikasi waktu kawin ternak babi alihragam wavelet backpropagation'),
(305, 'Analisis Sistem Informasi Simpan Pinjam Studi Kasus Koperasi Repeh Rapih Kerta Rahardja', 'analisis sistem informasi simpan pinjam studi kasus koperasi repeh rapih kerta rahardja'),
(306, 'Aplikasi Sistem Pengolahan Data Nilai Siswa Berbasis Web Pada Smkn 1 Kota Tangerang', 'aplikasi sistem pengolahan data nilai siswa berbasis web smkn 1 kota tangerang'),
(307, 'Analisa Sistem Klasifikasi Judul?Skripsi?Menggunakan Metode Nave Bayes Classifier', 'analisa sistem klasifikasi judul skripsi menggunakan metode na ve bayes classifier'),
(308, 'Pembuatan Sistem Informasi Laboratorium?Teknik Informatika?Universitas Ahmad Dahlan', 'pembuatan sistem informasi laboratorium teknik informatika universitas ahmad dahlan'),
(309, 'Implementasi Teknologi Node Js Dan Socket Io Pada Aplikasi Chatting Studi Kasus Mahasiswa?Teknik Informatika?Akakom', 'implementasi teknologi node js socket io aplikasi chatting studi kasus mahasiswa teknik informatika akakom'),
(310, 'Perancangan Sistem Pendukung Keputusan Dalam Pemilihan Dosen Pembimbing?Skripsi?Berdasarkan Minat Mahasiswa Dengan Metode Ahp?', 'perancangan sistem pendukung keputusan pemilihan dosen pembimbing skripsi berdasarkan minat mahasiswa metode ahp'),
(311, 'Pengembangan Media Pembelajaran Berbantuan Video Berbasis Augmented Reality Pada Mata Pelajaran?Teknik?Animasi 3d Kompetensi Keahlian Multimedia', 'pengembangan media pembelajaran berbantuan video berbasis augmented reality mata pelajaran teknik animasi 3d kompetensi keahlian multimedia'),
(312, 'Rancang Bangun Aplikasi Pengenalan Bagian Bunga Berbasis Android', 'rancang bangun aplikasi pengenalan bagian bunga berbasis android'),
(313, 'Sistem Pendukung Keputusan Penentu Dosen Terbaik Menggunakan Metode Ahp Dan Saw', 'sistem pendukung keputusan penentu dosen terbaik menggunakan metode ahp saw'),
(314, 'Perancangan Dan Penerapan Aplikasi Kasir Dengan Menggunakan Bahasa Pemrograman Php Dan Mysql Di Warung Kopi Gojeg', 'perancangan penerapan aplikasi kasir menggunakan bahasa pemrograman php mysql warung kopi gojeg'),
(315, 'Rancang Bangun Iot Smart Fish Farm Dengan Kendali Raspberry Pi Dan Webcam', 'rancang bangun iot smart fish farm kendali raspberry pi webcam'),
(316, 'Pengembangan Sistem Jogjabelajar Class Versi Mobile Untuk Mendukung Proses Pembelajaran Berbasis Tik Di Daerah Istimewa Yogjakarta', 'pengembangan sistem jogjabelajar class versi mobile mendukung proses pembelajaran berbasis tik daerah istimewa yogjakarta'),
(317, 'Pengembangan Aplikasi Musicroid Sebagai Media Pembelajaran Seni Musik Di Smkn 2 Ponorogo Dengan Memanfaatkan Teknologi?', 'pengembangan aplikasi musicroid media pembelajaran seni musik smkn 2 ponorogo memanfaatkan teknologi'),
(318, 'Perancangan Aplikasi Survive In Disaster Sebagai Media Informasi Tanggap Bencana Berbasis Android', 'perancangan aplikasi survive in disaster media informasi tanggap bencana berbasis android'),
(319, 'Sistem Informasi Geografis Lokasi Toko Oleh-Oleh Khas Yogyakarta Berbasis Android', 'sistem informasi geografis lokasi toko oleh-oleh khas yogyakarta berbasis android'),
(320, 'Perancangan Sistem Informasi Geografis Puskesmas Di Kabupaten Ponorogo Berbasis Web', 'perancangan sistem informasi geografis puskesmas kabupaten ponorogo berbasis web'),
(321, 'Implementasi Geojson Dengan Marker Dinamis Studi Kasus Objek Pariwisata Kabupaten Ngawi Jawa Timur Berbasis Web', 'implementasi geojson marker dinamis studi kasus objek pariwisata kabupaten ngawi jawa timur berbasis web'),
(322, 'Aplikasi Pembukuan Klaim Bahan Bakar Kendaraan Menggunakan Framework Yii 2 Studi Kasus Edp Indomaret Yogyakarta', 'aplikasi pembukuan klaim bahan bakar kendaraan menggunakan framework yii 2 studi kasus edp indomaret yogyakarta'),
(323, 'Aplikasi Web Reparasi Jam Menggunakan Node Js Studi Kasus Rolex Reparasi Jam', 'aplikasi web reparasi jam menggunakan node js studi kasus rolex reparasi jam'),
(324, 'Simple Additive Weighting Untuk Pemberian Bantuan Studi Bagi Tenaga Kependidikan Studi Kasus Universitas Gadjah Mada', 'simple additive weighting pemberian bantuan studi tenaga kependidikan studi kasus universitas gadjah mada'),
(325, 'Aplikasi Penentu Harga Sewa Mobil Pada Tiga Jaya Trans Kediri Dengan Metode Mamdani', 'aplikasi penentu harga sewa mobil tiga jaya trans kediri metode mamdani'),
(326, 'Implementasi Algoritma Djikstra Untuk Menentukan Lintasan Terpendek Pada Delivery Depot Wareg', 'implementasi algoritma djikstra menentukan lintasan terpendek delivery depot wareg'),
(327, 'Pengenalan Bunga Anggrek Menggunakan Gray Level Co-Occurrence Dan Algoritma KNearest Neighbours Berbasis Mobile', 'pengenalan bunga anggrek menggunakan gray level co-occurrence algoritma k nearest neighbours berbasis mobile'),
(328, 'Sistem Penjadwalan Wisata Kabupaten Nganjuk Menggunakan Algoritma Best First Search Berbasis Android', 'sistem penjadwalan wisata kabupaten nganjuk menggunakan algoritma best first search berbasis android'),
(329, 'Perancangan Sistem E-Learning Pada Smk An-Nurmaniyah Tangerang', 'perancangan sistem e-learning smk an-nurmaniyah tangerang'),
(330, 'Aplikasi Pemilah Laporan Masyarakat Menggunakan Som', 'aplikasi pemilah laporan masyarakat menggunakan som'),
(331, 'Sistem Aplikasi Pesan Antar Makanan Berbasis Web Di Omah Pawon', 'sistem aplikasi pesan antar makanan berbasis web omah pawon'),
(332, 'Implementasi Metode Latent Dirichlet Allocation Untuk Menentukan Topik Teks Berita', 'implementasi metode latent dirichlet allocation menentukan topik teks berita'),
(333, 'Implementasi Metode Latent Dirichlet Allocation Untuk Menentukan Topik Teks Berita', 'implementasi metode latent dirichlet allocation menentukan topik teks berita');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_hasil`
--
ALTER TABLE `tbl_hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `tbl_hasil_ibfk_1` (`id_pengajuan`);

--
-- Indeks untuk tabel `tbl_judul_skripsi`
--
ALTER TABLE `tbl_judul_skripsi`
  ADD PRIMARY KEY (`id_judul`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_users`);

--
-- Indeks untuk tabel `tb_history`
--
ALTER TABLE `tb_history`
  ADD PRIMARY KEY (`id_history`);

--
-- Indeks untuk tabel `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_pengajuan` (`id_pengajuan`);

--
-- Indeks untuk tabel `tb_pembimbing`
--
ALTER TABLE `tb_pembimbing`
  ADD PRIMARY KEY (`id_pembimbing`);

--
-- Indeks untuk tabel `tb_pengajuan`
--
ALTER TABLE `tb_pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`),
  ADD KEY `id_judul_skripsi` (`id_judul`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_pembimbing` (`id_pembimbing`);

--
-- Indeks untuk tabel `tb_ruang`
--
ALTER TABLE `tb_ruang`
  ADD PRIMARY KEY (`id_ruang`),
  ADD KEY `tb_ruang_ibfk_1` (`dosen_1`),
  ADD KEY `dosen_2` (`dosen_2`);

--
-- Indeks untuk tabel `tb_saran`
--
ALTER TABLE `tb_saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_hasil`
--
ALTER TABLE `tbl_hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `tbl_judul_skripsi`
--
ALTER TABLE `tbl_judul_skripsi`
  MODIFY `id_judul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `tb_history`
--
ALTER TABLE `tb_history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_pembimbing`
--
ALTER TABLE `tb_pembimbing`
  MODIFY `id_pembimbing` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_pengajuan`
--
ALTER TABLE `tb_pengajuan`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_ruang`
--
ALTER TABLE `tb_ruang`
  MODIFY `id_ruang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_saran`
--
ALTER TABLE `tb_saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_hasil`
--
ALTER TABLE `tbl_hasil`
  ADD CONSTRAINT `tbl_hasil_ibfk_1` FOREIGN KEY (`id_pengajuan`) REFERENCES `tb_pengajuan` (`id_pengajuan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD CONSTRAINT `tb_jadwal_ibfk_1` FOREIGN KEY (`id_pengajuan`) REFERENCES `tb_pengajuan` (`id_pengajuan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_pengajuan`
--
ALTER TABLE `tb_pengajuan`
  ADD CONSTRAINT `tb_pengajuan_ibfk_1` FOREIGN KEY (`id_judul`) REFERENCES `tbl_judul_skripsi` (`id_judul`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pengajuan_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tbl_users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pengajuan_ibfk_3` FOREIGN KEY (`id_pembimbing`) REFERENCES `tb_pembimbing` (`id_pembimbing`);

--
-- Ketidakleluasaan untuk tabel `tb_ruang`
--
ALTER TABLE `tb_ruang`
  ADD CONSTRAINT `tb_ruang_ibfk_1` FOREIGN KEY (`dosen_1`) REFERENCES `tb_pembimbing` (`id_pembimbing`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_ruang_ibfk_2` FOREIGN KEY (`dosen_2`) REFERENCES `tb_pembimbing` (`id_pembimbing`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
