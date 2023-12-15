-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Agu 2023 pada 22.30
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
-- Database: `tb_chandra`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `alamat`, `no_hp`, `status`) VALUES
('1212', 'FAJAR', '1212', 'AAAAAAAAAAAAAAA', '123123123123', 'KARYAWAN'),
('1294', 'CHANDRA KURNIAWAN', '1294', 'JAKARTA', '0895367582357', 'DIREKTUR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(5) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jenis_barang` varchar(100) NOT NULL,
  `jumlah_barang` varchar(100) NOT NULL,
  `harga_jual` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `jenis_barang`, `jumlah_barang`, `harga_jual`) VALUES
('B1', 'ARIES GOLD 301 ARIES WILD', 'CAT TEMBOK', '7', '110000'),
('B2', 'ARIES GOLD 801 CREAM', 'CAT TEMBOK', '7', '110000'),
('B5', 'ARIES GOLD 630 KIWI', 'CAT MINYAK', '18', '80000'),
('B6', 'SEMEN TIGA RODA 50KG', 'SEMEN', '5', '90000'),
('B7', 'SEMEN GERSIK 40KG', 'SEMEN', '106', '56000'),
('B8', 'SEMEN MU', 'SEMEN', '0', '100000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gaji_karyawan`
--

CREATE TABLE `gaji_karyawan` (
  `ID_GAJI` varchar(50) NOT NULL,
  `NAMA_PENERIMA` varchar(50) NOT NULL,
  `TOTAL_GAJI` varchar(50) NOT NULL,
  `TANGGAL_PEMBERIAN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `gaji_karyawan`
--

INSERT INTO `gaji_karyawan` (`ID_GAJI`, `NAMA_PENERIMA`, `TOTAL_GAJI`, `TANGGAL_PEMBERIAN`) VALUES
('G1', 'WASIS WIBISONO', '2000000', '2023-05-31'),
('G2', 'GANDEWA RUDI', '2000000', '2023-06-10'),
('G4', 'GADING VIRMAN', '2000000', '2023-07-12'),
('G7', 'FAJAR', '1000000', '2023-05-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `NIK` varchar(50) NOT NULL,
  `NAMA_LENGKAP` varchar(50) NOT NULL,
  `TEMPAT_TGLLAHIR` varchar(50) NOT NULL,
  `ALAMAT` varchar(150) NOT NULL,
  `KONTAK` varchar(13) NOT NULL,
  `STATUS` varchar(50) NOT NULL,
  `JENIS_KELAMIN` varchar(50) NOT NULL,
  `JABATAN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`NIK`, `NAMA_LENGKAP`, `TEMPAT_TGLLAHIR`, `ALAMAT`, `KONTAK`, `STATUS`, `JENIS_KELAMIN`, `JABATAN`) VALUES
('0498120812005437', 'ROSMAN SAMSUL PRASETYO', 'DEPOK 1997-10-14', 'JL WIJAYA II WIJAYA GRAHA PURI BL F/46-47MELAWAI,DEPOK,', '08738755711', 'MENIKAH', 'PRIA', 'karyawan'),
('1747554811215068', 'DARMAJI ANGGRIAWAN', 'DEPOK 1994-04-06', 'SIMPANG DARMO PERMAI SELATAN 14 - 55,DEPOK,55165,INDONESIA', '085186101352', 'MENIKAH', 'PRIA', 'KARYAWAN'),
('3690484103126862', 'GANDEWA RUDI', 'DEPOK 2000-09-11', ' MEHERBA PLAZA 33,DEPOK', '08648715973', 'SINGLE', 'PRIA', 'karyawan'),
('7763245903039800', 'GADING VIRMAN', 'BOGOR 1994-04-27', 'JL PONCOL III 21,PEKALONGAN,DEPOK', '081190030192', 'SINGLE', 'PRIA', 'karyawan'),
('8758196405951516', 'WASIS WIBISONO', 'DEPOK 1999-05-14', 'L ANGSANA RAYA 8-APEJATEN BARAT,DEPOK', '08717193978', 'SINGLE', 'PRIA', 'karyawan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_keuangan`
--

CREATE TABLE `laporan_keuangan` (
  `date` varchar(11) NOT NULL,
  `modal` varchar(50) NOT NULL,
  `omset` varchar(50) NOT NULL,
  `gaji` varchar(50) NOT NULL,
  `profit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laporan_keuangan`
--

INSERT INTO `laporan_keuangan` (`date`, `modal`, `omset`, `gaji`, `profit`) VALUES
('05-2023', '5000000', '11300000', '3000000', '3300000'),
('06-2023', '3000000', '6660000', '2000000', '1660000'),
('07-2023', '2000000', '6380000', '2000000', '2380000'),
('08-2023', '2000000', '446000', '0', '-1554000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modal_teb`
--

CREATE TABLE `modal_teb` (
  `date` varchar(20) NOT NULL,
  `date2` varchar(50) NOT NULL,
  `modal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `modal_teb`
--

INSERT INTO `modal_teb` (`date`, `date2`, `modal`) VALUES
('05-2023', '2023-05-01', '5000000'),
('06-2023', '2023-06-10', '3000000'),
('07-2023', '2023-07-06', '2000000'),
('08-2023', '2023-08-01', '2000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `omset`
--

CREATE TABLE `omset` (
  `date_omset` varchar(11) NOT NULL,
  `omsett` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `omset`
--

INSERT INTO `omset` (`date_omset`, `omsett`) VALUES
('05-2023', 11300000),
('06-2023', 6660000),
('07-2023', 6380000),
('08-2023', 446000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` varchar(5) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jenis_barang` varchar(100) NOT NULL,
  `jumlah_barang` varchar(100) NOT NULL,
  `harga_total` varchar(100) NOT NULL,
  `tgl_pembelian` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `nama_barang`, `jenis_barang`, `jumlah_barang`, `harga_total`, `tgl_pembelian`, `keterangan`) VALUES
('P1', 'ARIES GOLD 301 ARIES WILD', 'CAT TEMBOK', '50', '1000000', '2023-07-06', 'LUNAS'),
('P3', 'ARIES GOLD 801 CREAM', 'CAT TEMBOK', '50', '1000000', '2023-07-06', 'LUNAS'),
('P5', 'ARIES GOLD 630 KIWI', 'CAT MINYAK', '50', '2000000', '2023-08-01', 'TEMPO 3 BULAN'),
('P6', 'SEMEN TIGA RODA 50KG', 'SEMEN', '100', '5000000', '2023-05-01', 'LUNAS'),
('P7', 'SEMEN GERSIK 40KG', 'SEMEN', '200', '3000000', '2023-06-10', 'LUNAS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran_gaji`
--

CREATE TABLE `pengeluaran_gaji` (
  `tanggal_gaji` varchar(50) NOT NULL,
  `total_gaji` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengeluaran_gaji`
--

INSERT INTO `pengeluaran_gaji` (`tanggal_gaji`, `total_gaji`) VALUES
('05-2023', 3000000),
('06-2023', 2000000),
('07-2023', 2000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` varchar(5) NOT NULL,
  `riwayat_penjualan` text NOT NULL,
  `harga_total` varchar(100) NOT NULL,
  `tanggal_transaksi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `riwayat_penjualan`, `harga_total`, `tanggal_transaksi`) VALUES
('P1', ' 40   ARIES GOLD 301 ARIES WILD', '4400000', '2023-05-10'),
('P2', ' 30   ARIES GOLD 630 KIWI', '2400000', '2023-05-10'),
('P3', ' 50   SEMEN TIGA RODA 50KG', '4500000', '2023-05-10'),
('P4', ' 60   SEMEN GERSIK 40KG\r\n 30   ARIES GOLD 801 CREAM', '6660000', '2023-06-16'),
('P5', ' 10   SEMEN TIGA RODA 50KG\r\n 30   SEMEN GERSIK 40KG\r\n 30   SEMEN TIGA RODA 50KG\r\n 10   ARIES GOLD 801 CREAM', '6380000', '2023-07-12'),
('P6', ' 1   ARIES GOLD 801 CREAM\r\n 1   ARIES GOLD 301 ARIES WILD\r\n 1   SEMEN GERSIK 40KG\r\n 1   ARIES GOLD 630 KIWI\r\n 1   SEMEN TIGA RODA 50KG', '446000', '2023-08-04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suplier`
--

CREATE TABLE `suplier` (
  `KODE` varchar(5) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `ALAMAT` varchar(150) NOT NULL,
  `KOTA` varchar(50) NOT NULL,
  `PROVINSI` varchar(50) NOT NULL,
  `TELEPON` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `suplier`
--

INSERT INTO `suplier` (`KODE`, `NAMA`, `ALAMAT`, `KOTA`, `PROVINSI`, `TELEPON`) VALUES
('S1', 'MAIMUNAH NOVITASARI', 'JR. SUGIYOPRANOTO NO. 488', 'MADIUN ', 'KALTIM ', '087758657149'),
('S2', 'DARMAJI ANGGRIAWAN', 'KI. BASUDEWO NO. 741', 'BENGKULU ', 'BANTEN ', '08750349558'),
('S3', 'BAKIONO PRABOWO', 'DK. TEUKU UMAR NO. 343', 'JAKARTA TIMUR', 'DKI JAKARTA', '08563505926'),
('S4', 'GENTA PUSPASARI', 'JR. PANJAITAN NO. 581', 'JR. PANJAITAN NO. 581, YOGYAKARTA 91909, SUMUT', 'SUMUT ', '08938755711'),
('S5', 'RAISA USADA', 'KPG. ABDUL. MUIS NO. 530', 'SAMARINDA ', 'DKI ', '08670427668');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `gaji_karyawan`
--
ALTER TABLE `gaji_karyawan`
  ADD PRIMARY KEY (`ID_GAJI`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indeks untuk tabel `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  ADD PRIMARY KEY (`date`);

--
-- Indeks untuk tabel `modal_teb`
--
ALTER TABLE `modal_teb`
  ADD PRIMARY KEY (`date`);

--
-- Indeks untuk tabel `omset`
--
ALTER TABLE `omset`
  ADD PRIMARY KEY (`date_omset`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `pengeluaran_gaji`
--
ALTER TABLE `pengeluaran_gaji`
  ADD PRIMARY KEY (`tanggal_gaji`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`KODE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
