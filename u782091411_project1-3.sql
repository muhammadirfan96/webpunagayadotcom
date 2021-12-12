-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Des 2021 pada 10.20
-- Versi server: 10.5.12-MariaDB-cll-lve
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u782091411_project1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`) VALUES
(8, 'renop'),
(9, 'irfan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `checklist`
--

CREATE TABLE `checklist` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `diinput_oleh` varchar(30) NOT NULL,
  `namaPeralatan` varchar(50) NOT NULL,
  `catatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `checklist`
--

INSERT INTO `checklist` (`id`, `tanggal`, `diinput_oleh`, `namaPeralatan`, `catatan`) VALUES
(31, '04-06-2021', 'muhammad irfan', 'warming up auxilliary boiler', 'start jam 13.15 \r\nstop jam 14.00'),
(32, '06-06-2021', 'm. syukur al munandar', 'slagcooler', 'PENGOPERASIAN START SLAG COOLER A'),
(33, '06-06-2021', 'm. syukur al munandar', 'sootblower', 'PENGOPERASIAN SOOTBLOWER MODE LONG'),
(34, '07-06-2021', 'muhammad irfan', 'slagcooler', 'Persiapan PT '),
(35, '27-06-2021', 'muhammad irfan', 'feed water pump', 'contoh pelaksanaan start'),
(36, '01-07-2021', 'muhammad irfan', 'warming up auxilliary boiler', 'Start Pukul 15.14 \r\nStop pukul 15.58'),
(37, '11-07-2021', 'muhlis', 'close circulating water pump', 'Change over Rutin CCWP B ke A'),
(38, '11-07-2021', 'muhlis', 'close circulating water pump', 'Change over Rutin CCWP B ke A'),
(39, '11-07-2021', 'muhlis', 'close circulating water pump', 'Change over Rutin CCWP B ke A'),
(40, '11-07-2021', 'muhlis', 'close circulating water pump', 'Change Over Rutin CCWP B ke A'),
(41, '13-07-2021', 'hasrun', 'vacum pump', ''),
(42, '13-07-2021', 'hasrun', 'condensate extrantion pump', ''),
(43, '13-07-2021', 'muhlis', 'condensate extrantion pump', 'Change Over CEP B ke A'),
(44, '13-07-2021', 'muhlis', 'vacum pump', 'Change Over Vacuum Pump B ke A'),
(45, '16-07-2021', 'nabawi', 'sootblower', 'Sootblower B-10 tidak dioperasikan, kondisi ada ke'),
(46, '16-07-2021', 'nabawi', 'slagcooler', 'Slag cooler B tidak standby (Motor tidak bisa berp'),
(47, '25-07-2021', 'ardiansyah nugraha m', 'close circulating water pump', 'Change over '),
(48, '25-07-2021', 'ardiansyah nugraha m', 'close circulating water pump', 'Change over'),
(49, '25-07-2021', 'mansyur', 'close circulating water pump', 'Change over rutin CCWP A ke B'),
(50, '27-07-2021', 'ardiansyah nugraha m', 'rubber ball cleaning', ''),
(51, '27-07-2021', 'andi rizal bangsawan', 'condensate extrantion pump', 'Normal c.o'),
(52, '27-07-2021', 'andi rizal bangsawan', 'condensate extrantion pump', 'Normal c.o'),
(53, '27-07-2021', 'andi rizal bangsawan', 'vacum pump', 'Inlet valve vacuum pump 2B tidak auto terbuka saat distart.. harus manual mlalui dcs'),
(54, '28-07-2021', 'muhammad irfan', 'coal feeder', 'Stop cf 1c untuk pengecekan valve manual tambahan di atas lower strobe'),
(55, '28-07-2021', 'muhammad irfan', 'slagcooler', 'Pelaksanaan drain bottom ash (start)'),
(56, '31-07-2021', 'muhlis', 'C.O. EH oil pump', 'Change over EH oil Pump B ke A'),
(57, '31-07-2021', 'hasrun', 'C.O. EH oil pump', ''),
(58, '01-08-2021', 'andi aswar kasman', 'C.O. EH oil pump', 'Change Over normal'),
(59, '03-08-2021', 'asriadi janide', 'AC oil pump', ''),
(60, '03-08-2021', 'asriadi janide', 'jacking oil pump', ''),
(61, '03-08-2021', 'asriadi janide', 'turning gear', ''),
(62, '04-08-2021', 'muhlis', 'C.O. EH oil pump', 'Test Running EH Oil Pump A ( hasil normal )'),
(63, '06-08-2021', 'andi muh. risman an.', 'slagcooler', 'Pressure Windbox 13.6 KPa dilakukan drain bottom ash'),
(64, '06-08-2021', 'yoyong herawan', 'slagcooler', ''),
(65, '07-08-2021', 'yoyong herawan', 'slagcooler', 'Hanya pelaksanaan stop slag cooler'),
(66, '07-08-2021', 'yoyong herawan', 'high primary fluidized fan', 'Jadwal rutin Change over HPFF A ke C'),
(67, '07-08-2021', 'andi muh. risman an.', 'slagcooler', 'Pressure Windbox 13.7 KPa dilakukan drain bottom ash'),
(68, '07-08-2021', 'yoyong herawan', 'slagcooler', ''),
(69, '08-08-2021', 'muhlis', 'close circulating water pump', 'Change Over CCWP B ke A'),
(70, '08-08-2021', 'hasrun', 'close circulating water pump', ''),
(71, '08-08-2021', 'yoyong herawan', 'slagcooler', 'Menggunakan line A'),
(72, '08-08-2021', 'yoyong herawan', 'sootblower', 'Pelaksanaan Start sootblower'),
(73, '09-08-2021', 'yoyong herawan', 'sootblower', 'Melaksanakan start sootblower Long &amp; half secara auto'),
(74, '09-08-2021', 'yoyong herawan', 'sootblower', 'Mengoperasikan Sootblower long &amp; half scara auto\r\nMST : 527°C\r\nFlue gas temp : 130°C '),
(75, '12-08-2021', 'nursan', 'vacum pump', 'CO Rutin Vaccum Pump 1B ke Vaccum Pump 1A dengan kondisi normal pada tanggal 10 Agustus 2021'),
(76, '12-08-2021', 'nursan', 'vacum pump', 'CO rutin Vaccum Pump 1B ke Vaccum Pump 1A dengan kondisi normal pada tanggal 10 Agustus 2021 '),
(77, '12-08-2021', 'nursan', 'condensate extrantion pump', 'CO rutin CEP 1B ke CEP 1A pada tanggal 10 Agustus 2021 tidak dilaksanakan karena CEP 1A Standby Emergency (Vibrasi Pompa mencapai 5.5 mm/s) '),
(78, '13-08-2021', 'Taslim', 'slagcooler', ''),
(79, '16-08-2021', 'yoyong herawan', 'supply oil pump', 'Pelaksanaan start'),
(80, '16-08-2021', 'yoyong herawan', 'induced draft fan', 'Pelaksanaan start IDF '),
(81, '16-08-2021', 'yoyong herawan', 'high primary fluidized fan', 'Pelaksanaan start HPFF'),
(82, '16-08-2021', 'yoyong herawan', 'primary air fan', 'Pelaksanaan start PAF'),
(83, '16-08-2021', 'yoyong herawan', 'lower burner', 'Start up boiler'),
(84, '16-08-2021', 'yoyong herawan', 'coal feeder', 'Pelaksanaan start coal feeder'),
(85, '19-08-2021', 'yoyong herawan', 'slagcooler', 'Pengoperasian slag cooler 2A'),
(86, '24-08-2021', 'muhammad aswin', 'sootblower', ''),
(87, '24-08-2021', 'muhammad aswin', 'sootblower', ''),
(88, '28-08-2021', 'yoyong herawan', 'high primary fluidized fan', 'Change over rutin HPFF A ke C'),
(89, '28-08-2021', 'yoyong herawan', 'slagcooler', 'Mengoperasikan slag cooler 1A menggunakan line A'),
(90, '28-08-2021', 'muhammad irfan', 'slagcooler', 'Proses start'),
(91, '01-09-2021', 'muhlis', 'C.O. EH oil pump', 'Test Running EH Oil Pump A Hasil &quot;Normal&quot;'),
(92, '01-09-2021', 'irfan', 'slagcooler', 'Drain bottom ash menggunakan line B'),
(93, '01-09-2021', 'irfan', 'slagcooler', ''),
(94, '03-09-2021', 'asriadi.abdurrahman', 'slagcooler', 'Normal'),
(95, '05-09-2021', 'ryanratta', 'conveying air compressor', 'Change Over rutin'),
(96, '05-09-2021', 'ryanratta', 'conveying air compressor', 'Change Over rutin Compressor Conveying A ke C'),
(97, '05-09-2021', 'iwan', 'slagcooler', ''),
(98, '06-09-2021', 'alim hambali', 'close circulating water pump', 'Normal operasi'),
(99, '06-09-2021', 'jovapratama26', 'slagcooler', 'Pressure Windbox Hunting-hunting'),
(100, '07-09-2021', 'iwan', 'sootblower', 'Saat start SB perhatikan set pressure akan berubah menjadi 1.6 Mpa, maka harus di set ulang kembali menjadi 1.8 Mpa sesuai SOP'),
(101, '07-09-2021', 'syahrul.julianto', 'vacum pump', ''),
(102, '09-09-2021', 'irfan', 'warming up auxilliary boiler', '• Start pukul 16.38,\r\n• Stop pukul 17.20'),
(103, '15-09-2021', 'bahar y', 'C.O. EH oil pump', 'warming up peralatan EH oil pump 2A,kondisi terpantau normal\r\nPelaksana :\r\nDcs : Muh.aldiansyah\r\nLokal : Baharuddin Yasin'),
(104, '25-09-2021', 'andar', 'sootblower', 'Pelaksanaan start &amp; stop sootblower'),
(105, '30-09-2021', 'muhammad_aswin', 'slagcooler', ''),
(106, '02-10-2021', 'asriadi.abdurrahman', 'slagcooler', 'Normal Operasi'),
(107, '02-10-2021', 'eko', 'sootblower', ''),
(108, '05-10-2021', 'mansyur', 'vacum pump', 'Change over rutin Vacum pump 1B ke 1A '),
(109, '05-10-2021', 'ardiansyah nugraha m', 'condensate extrantion pump', 'Change over CEP 2B ke 2A'),
(110, '05-10-2021', 'ardiansyah nugraha m', 'vacum pump', 'Change over vacuum pump 2B ke 2A'),
(111, '05-10-2021', 'adijn05', 'vacum pump', ''),
(112, '05-10-2021', 'irfan', 'slagcooler', 'Scrapper conveyor DEV VAULT, dilakukan pengencangan kabel. Tidak ada SR terbit '),
(113, '05-10-2021', 'bakri wahid 98', 'slagcooler', ''),
(114, '06-10-2021', 'muhammad.wahdi', 'slagcooler', ''),
(115, '06-10-2021', 'mansyur', 'C.O. EH oil pump', 'Tes running 10 mnit'),
(116, '06-10-2021', 'harryfristian', 'C.O. EH oil pump', 'Warming up/running test EH oil pump B unit 2'),
(117, '06-10-2021', 'harryfristian', 'C.O. EH oil pump', 'Warming up/running test EH oil pump B unit 2 selama 10 menit'),
(118, '07-10-2021', 'muhammad.wahdi', 'sootblower', ''),
(119, '11-10-2021', 'jovapratama26', 'sootblower', 'SB B28 masih tagging &amp; bermasalah'),
(120, '22-10-2021', 'irfan', 'warming up auxilliary boiler', 'Start 16.18,   stop 17.03,   tidak ada SR terbit'),
(121, '25-10-2021', 'iwan', 'sootblower', ''),
(122, '29-10-2021', 'eko', 'sootblower', 'Operasi normal'),
(123, '02-11-2021', 'mansyur', 'vacum pump', 'Setelah change over Vacum kondensor drop indikasi HE Vacum pump 1A kotor. \r\nChange over kembali Vacum pump 1A ke 1B, Pressure Vacum kondensor kembali normal'),
(124, '02-11-2021', 'harryfristian', 'condensate extrantion pump', 'Change over rutin CEP B ke A'),
(125, '02-11-2021', 'rizal.bangsawan', 'vacum pump', 'Pelaksanaan change over rutin selesai'),
(126, '02-11-2021', 'ardiansyah nugraha m', 'condensate extrantion pump', 'CO CEP 2A ke CEP 2B'),
(127, '03-11-2021', 'asriadi.abdurrahman', 'sootblower', 'Sootblower B28 Tidak Standby (Selongsong Keropos)'),
(128, '09-11-2021', 'muhammad_aswin', 'sootblower', ''),
(129, '11-11-2021', 'muhammadfarhankurniawan', 'warming up EDG', 'Warming up EDG selama 7 menit'),
(130, '18-11-2021', 'laode.budiman', 'sootblower', ''),
(131, '30-11-2021', 'nursan', 'vacum pump', 'CO Vacuum Pump 1B ke 1A berhasil dengan kondisi normal '),
(132, '01-12-2021', 'alim hambali', 'vacum pump', 'Jadwal Co tgl 30 November \r\nVacum pump A stop \r\nVacum pump B star '),
(133, '01-12-2021', 'alim hambali', 'C.O. EH oil pump', 'Test running EH oil Pump A '),
(134, '02-12-2021', 'mayong', 'warming up auxilliary boiler', 'Start pukul 11.41\r\nStop pukul 12.14'),
(135, '03-12-2021', 'iwan', 'sootblower', ''),
(136, '10-12-2021', 'andar', 'slagcooler', 'Pelaksanaan Start Slag Cooler'),
(137, '10-12-2021', 'andar', 'slagcooler', 'PENGOPERASIAN START DAN STOP SLAG COOLER'),
(138, '12-12-2021', 'iwan', 'sootblower', 'Pada temp. Outlet &gt;190°C, set point pressure akan berubah dari 1.8 Mpa ke 1.6 Mpa, maka harus di set ulang ke 1.8 Mpa sesuai SOP'),
(139, '12-12-2021', 'rizal.bangsawan', 'close circulating water pump', 'Change over rutin, normal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_pertanyaan`
--

CREATE TABLE `daftar_pertanyaan` (
  `id` int(11) NOT NULL,
  `untuk` varchar(50) NOT NULL,
  `pertanyaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `daftar_pertanyaan`
--

INSERT INTO `daftar_pertanyaan` (`id`, `untuk`, `pertanyaan`) VALUES
(1, 'slagcooler', 'Pastikan peralatan stand by (power rack in)'),
(2, 'slagcooler', 'Pastikan tidak ada pekerjaan'),
(3, 'slagcooler', 'Pastikan APAR tersedia'),
(4, 'slagcooler', 'Pastikan sistem pendingin tersedia'),
(5, 'slagcooler', 'Pastikan inlet & outlet  valve cooling open'),
(6, 'slagcooler', 'Pastikan level bottom  ash silo <= 5 meter'),
(7, 'slagcooler', 'Koordinasikan dengan Operator Turbin akan dilakukan pengoperasian Slag Cooler (supply sistem pendingin)'),
(8, 'slagcooler', 'Buka menu  DCS Slagcooler, cek settingan  speed motor  Bucket Elevator (40), motor Chain Bucket (30) dan motor Slag Cooler (10)'),
(9, 'slagcooler', 'Operasikan Bucket Elevator, amati kondisi lokal selama 1-2 menit'),
(10, 'slagcooler', 'Operasikan Chain Bucket, amati kondisi lokal selama 1-2 menit'),
(11, 'slagcooler', 'operasikan  salah satu slag cooler'),
(12, 'slagcooler', 'open discharge valve'),
(13, 'slagcooler', 'Amati  penurunan pressure windbox boiler, apabila sudah mencapai 12.7 kPa STOP Slag Cooler'),
(14, 'slagcooler', 'Parameter pressure windbox terpenuhi (11 - 13.5 kPa)'),
(15, 'slagcooler', 'STOP Slag Cooler dengan koordinasi antara Operator  Boiler Lokal dan CCR'),
(16, 'slagcooler', 'STOP Chain Bucket, ketika temperature  outlet slag cooler ~ 45\'C'),
(17, 'slagcooler', 'STOP Bucket elevator'),
(41, 'sootblower', 'Pastikan tidak ada pekerjaan di area sootblower '),
(42, 'sootblower', 'Pastikan Power supply untuk peralatan sootblower telah terenergized (posisi standby)'),
(43, 'sootblower', 'Pastikan semua Valve manual pipe line sootblower dan drain sudah posisi Open'),
(44, 'sootblower', 'Pastikan Valve drain R & L Sootblower OPEN'),
(45, 'sootblower', 'OPEN boiler Auxiliary Steam main pipe mov'),
(46, 'sootblower', 'OPEN boiler Auxiliary Steam to Sootblower mov'),
(47, 'sootblower', 'OPEN Sootblower main steam valve '),
(48, 'sootblower', 'Klik mode AUTO pada display Sootblower preducing valve'),
(49, 'sootblower', 'Input nilai 1,8 pada kolom SP, kemudian klik SP'),
(50, 'sootblower', 'Klik STB SEQ pada display'),
(51, 'sootblower', 'Pilih mode LONG/HALF, pastikan tulisan berwarna merah. Pengoperasian sootblower long dan half mode, memperhatikan trend exhaust gas temperature. Jika trend temperaturnya fluktuatif, pengoperasian sootblower cukup dengan  mode Long Sootblower. Dan apabila temperaturnya cenderung naik terus diatas 142 ºC, sootblower harus dilakukan secara menyeluruh baik Long maupun Half Sootblower'),
(52, 'sootblower', 'Klik display SOOTBLOWER SEQ'),
(53, 'sootblower', 'pilih mode CONU'),
(54, 'sootblower', 'Klik tombol START kemudian ACK'),
(55, 'sootblower', 'Amati kenaikan temperature pada sootblower drain water temperature (L & R) hingga mencapai 220 ºC (valve sootblower drain water L & R akan menutup secara automatis dan sootblower akan bekerja secara auto)'),
(56, 'sootblower', 'Ketika sootblower telah selesai, maka boiler Auxiliary Steam main pipe mov dan boiler auxiliary steam to Sootblower mov akan menutup secara automatis'),
(57, 'sootblower', 'Close Sootblower main steam valve'),
(58, 'sootblower', 'Input nilai 0 pada display Sootblower preducing valve'),
(59, 'sootblower', 'Pastikan valve sootblower drain water L & R posisi open.'),
(60, 'sootblower', 'Klik display STB SEQ pada display'),
(61, 'sootblower', 'Klik mode LONG/HALF untuk memposisikan standby kembali (tulisan LONG/HALF berubah menjadi hitam)'),
(62, 'high primary fluidized fan', 'Pastikan tidak ada pekerjaan pemeliharaan di HPF (High Pressure Fludized)'),
(63, 'high primary fluidized fan', 'Pastikan semua manhole pada cyclone sudah tertutup dengan benar.'),
(64, 'high primary fluidized fan', 'Pastikan pendingin untuk bearing dan motor berfungsi dengan baik'),
(65, 'high primary fluidized fan', 'Pastikan level oil pada bearing > 50%'),
(66, 'high primary fluidized fan', 'Pastikan cirkuit breaker HPF dalam posisi close (Terenergized) dan tidak ada indikasi alarm yang aktif'),
(67, 'high primary fluidized fan', 'Pastikan switch selector posisi remote.'),
(68, 'high primary fluidized fan', 'Pastikan parameter (penunjukkan flow/pressure/temperature/ampere) normal'),
(69, 'high primary fluidized fan', 'Pastikan permit start terpenuhi'),
(70, 'high primary fluidized fan', 'Pastikan salah satu IDF sudah operasi'),
(71, 'high primary fluidized fan', 'Open valve L & R Return Material Air 100% (CV1 & CV2)'),
(72, 'high primary fluidized fan', 'Open valve L & R loose Air MCV 100%.'),
(73, 'high primary fluidized fan', 'Open valve HP Fludized Fan Outlet (Yang ingin dioperasikan).'),
(74, 'high primary fluidized fan', 'Open inlet valve Fludized Fan MCV <5%'),
(75, 'high primary fluidized fan', 'Posisikan pointer di DCS pada motor HPF yang akan di start lalu di klik.'),
(76, 'high primary fluidized fan', 'Muncul menu pilihan, klik START kemudian ACK.'),
(77, 'high primary fluidized fan', 'Tanda motor HPF pada DCS berubah menjadi warna merah, mengidentifikasikan bahwa motor telah beroperasi.'),
(78, 'high primary fluidized fan', 'Amati HP Fludized Fan Outlet motor damper posisi open interlock.'),
(79, 'high primary fluidized fan', 'Amati HP Fludizing Fan Outlet posisi close interlock.'),
(80, 'high primary fluidized fan', 'Pastikan HPFF di local normal operasi.'),
(81, 'high primary fluidized fan', 'Atur inlet dumper berdasarkan outlet main pipe preasure (>40 KPa) dan air volume (batasan nilai belum diketahui, tidak tertera di manual book)'),
(82, 'high primary fluidized fan', 'Pastikankan bahwa PAF, SAF sudah stop.'),
(83, 'high primary fluidized fan', 'Atur inlet damper hingga bukaan minimum (press main pipe <40 KPa)'),
(84, 'high primary fluidized fan', 'Posisikan pointer di DCS pada Motor HPF yang akan di stop lalu di klik.'),
(85, 'high primary fluidized fan', 'Muncul menu pilihan, klik STOP kemudian klik ACK.'),
(86, 'high primary fluidized fan', 'Tanda motor HPFF pada DCS berubah menjadi warna hijau, mengidentifikasikan bahwa motor telah stop'),
(87, 'high primary fluidized fan', 'Amati HP Fludized Fan Outlet motor damper posisi close interlock'),
(88, 'high primary fluidized fan', 'Amati HP Fludizing Fan Outlet venting  posisi open interlock'),
(89, 'high primary fluidized fan', 'Pastikan HPFF di local stop'),
(90, 'induced draft fan', 'Pastikan salah satu cooling fan beroperasi.'),
(91, 'induced draft fan', 'Pastikan tidak ada pekerjaan pemeliharaan di IDF (Induced Draft Fan)'),
(92, 'induced draft fan', 'Pastikan cirkuit breaker IDF dalam posisi close (Terenergized)'),
(93, 'induced draft fan', 'Pastikan switch selector posisi remote.'),
(94, 'induced draft fan', 'Pastikan valve manual inlet & outlet posisi full open (cek indicator kipas berputar disisi outlet cooling)'),
(95, 'induced draft fan', 'Pastikan parameter (penunjukkan flow/pressure/temperature/ampere) normal'),
(96, 'induced draft fan', 'Pastikan Oil pada bearing motor tersedia (level >50%)'),
(97, 'induced draft fan', 'Pastikan semua man-hole/pep-hole pada boiler tertutup dengan rapat.'),
(98, 'induced draft fan', 'Pastikan permissive start terpenuhi (lihat di DCS).'),
(99, 'induced draft fan', 'Open IDF inlet dumper <5%'),
(100, 'induced draft fan', 'Posisikan pointer di DCS pada Motor IDF yang akan di start lalu di klik.'),
(101, 'induced draft fan', 'Muncul menu pilihan, klik START kemudian klik ACT'),
(102, 'induced draft fan', 'Tanda Motor IDF pada DCS berubah menjadi warna merah berarti motor telah beroperasi.'),
(103, 'induced draft fan', 'Amati outlet damper posisi open interlock.'),
(104, 'induced draft fan', 'Buka perlahan inlet damper untuk mengatur furnace pressure ( -200  ̴  +200 Pa )'),
(105, 'induced draft fan', 'Pastikan IDF di lokal normal operasi.'),
(106, 'induced draft fan', 'Pastikankan bahwa PAF dan SAF telah  stop'),
(107, 'induced draft fan', 'Atur inlet damper hingga bukaan minimum <5% , dengan tetap mengamati furnace pressure'),
(108, 'induced draft fan', 'Posisikan pointer di DCS pada Motor IDF yang akan di stop lalu di klik'),
(109, 'induced draft fan', 'Muncul menu pilihan, klik STOP kemudian klik ACK'),
(110, 'induced draft fan', 'Tanda Motor IDF pada DCS berubah menjadi warna hijau mengidentifikasikan bahwa motor telah stop'),
(111, 'induced draft fan', 'Pastikan IDF di local stop.'),
(112, 'primary air fan', 'Pastikan tidak ada pekerjaan pemeliharaan pada PAF'),
(113, 'primary air fan', 'Pastikan circuit breaker PAF dalam posisi close (Terenergized)'),
(114, 'primary air fan', 'Pastikan switch selector posisi remote'),
(115, 'primary air fan', 'Pastikan valve manual inlet & outlet cooling water posisi full open (cek indicator kipas berputar disisi outlet cooling)'),
(116, 'primary air fan', 'Pastikan parameter (penunjukan flow/ pressure/ temperature/ ampere) normal'),
(117, 'primary air fan', 'Pastikan oil pada bearing motor tersedia (Level >50%)'),
(118, 'primary air fan', 'Pastikan manhole/peephole pada boiler tertutup dengan rapat.'),
(119, 'primary air fan', 'Pastikan grease pada bearing motor tersedia'),
(120, 'primary air fan', 'Pastikan IDF dan HPFF sudah beroperasi.'),
(121, 'primary air fan', 'Pastikan permit start terpenuhi (lihat di DCS).'),
(122, 'primary air fan', 'Pastikan valve hot dan cold primary air dalam kondisi open'),
(123, 'primary air fan', 'Open valve L & R hot paf to bottom air box motor damper 100%'),
(124, 'primary air fan', 'Open valve  lower burner air damper A, B, C, D 30% '),
(125, 'primary air fan', 'Open lower burner A, B, C, D mixing motor damper 50%.'),
(126, 'primary air fan', 'Close oulet motor damper'),
(127, 'primary air fan', 'Open inlet motor damper position <5%.'),
(128, 'primary air fan', 'Check PAF start permit,apabila permit telah terpenuhi atau bertanda hijau berarti PAF A / B siap dioperasikan'),
(129, 'primary air fan', 'Posisikan pointer di DCS pada motor PAF yang akan di start lalu di klik.'),
(130, 'primary air fan', 'Muncul menu pilihan klik start kemudian klik ACT'),
(131, 'primary air fan', 'Tanda motor pada DCS berubah menjadi warna merah berarti motor sudah operasi.'),
(132, 'primary air fan', 'Pastikan PAF di local normal operasi'),
(133, 'primary air fan', 'Outlet damper terbuka otomatis setelah PAF start'),
(134, 'primary air fan', 'Atur air flow dengan cara membuka inlet damper dan tetap amati furnace pressure.'),
(135, 'primary air fan', 'Pastikan SAF stop operasi'),
(136, 'primary air fan', 'Atur inlet damper PAF hingga bukaan minimum <5%.'),
(137, 'primary air fan', 'Posisikan pointer di DCS pada Motor PAF yang akan di stop lalu di klik.'),
(138, 'primary air fan', 'Muncul menu pilihan, klik STOP kemudian klik ACK.'),
(139, 'primary air fan', 'Tanda Motor PAF pada DCS berubah menjadi warna hijau berarti motor sudah stop.'),
(140, 'primary air fan', 'Pastikan PAF di local stop.'),
(142, 'secondary air fan', 'Pastikan tidak ada pekerjaan pemeliharaan pada SAF.'),
(143, 'secondary air fan', 'Pastikan circuit breaker SAF dalam posisi close (Terenergized)'),
(144, 'secondary air fan', 'Pastikan switch selector posisi remote.'),
(145, 'secondary air fan', 'Pastikan valve manual inlet & outlet cooling water posisi full open (cek indicator kipas  berputar disisi outlet cooling)'),
(146, 'secondary air fan', 'Pastikan parameter (Penunjukkan flow/Pressure/Temperature/Ampere) normal'),
(147, 'secondary air fan', 'Pastikan oil pada bearing motor tersedia (Level >50%)'),
(148, 'secondary air fan', 'Pastikan manhole/peephole pada boiler tertutup dengan rapat'),
(149, 'secondary air fan', 'Pastikan grease pada bearing motor tersedia'),
(150, 'secondary air fan', 'Pastikan cooling fan, IDF, HPFF & PAF sudah beroperasi'),
(151, 'secondary air fan', 'Pastikan tidak ada putaran balik pada shaft motor'),
(152, 'secondary air fan', 'Pastikan permissive start terpenuhi (lihat di DCS)'),
(153, 'secondary air fan', 'Close regulating valve UPPER BURNER # A, B, C & D (check posisi local)'),
(154, 'secondary air fan', 'Open damper inlet furnace from SAF 20 % (check posisi local)'),
(155, 'secondary air fan', 'Posisikan pointer di DCS pada motor SAF yang akan di start lalu di klik'),
(156, 'secondary air fan', 'Muncul menu pilihan klik start kemudian klik ACT'),
(157, 'secondary air fan', 'Tanda motor pada DCS berubah menjadi warna merah berarti motor sudah operasi'),
(158, 'secondary air fan', 'Outlet damper terbuka otomatis setelah SAF start'),
(159, 'secondary air fan', 'Atur flow udara dan furnace pressure pada inlet damper sesuai kebutuhan'),
(160, 'secondary air fan', 'Atur inlet damper hingga bukaan minimum <5%.'),
(161, 'secondary air fan', 'Posisikan pointer di DCS pada Motor SAF yang akan di stop lalu di klik'),
(162, 'secondary air fan', 'Muncul menu pilihan, klik STOP kemudian klik ACK'),
(163, 'secondary air fan', 'Tanda Motor SAF pada DCS berubah menjadi warna hijau berarti motor sudah stop'),
(164, 'secondary air fan', 'Pastikan SAF di local stop'),
(165, 'rubber ball cleaning', 'Pastikan tidak ada tagging pada rubber ball cleaning sistem'),
(166, 'rubber ball cleaning', 'Pastikan supply power pada kontrol kabinet rubber ball  dan motor sudah ada'),
(167, 'rubber ball cleaning', 'Pastikan air pendingin kondensor telah beroperasi (CWP)'),
(168, 'rubber ball cleaning', 'Pastikan rubber ball yang baru di buka harus dalam kondisi basah minimal 1 jam direndam air '),
(169, 'rubber ball cleaning', 'Pastikan rubber ball sudah siap didalam Ball Collector '),
(170, 'rubber ball cleaning', 'Pastikan half chamber cover tertutup rapat'),
(171, 'rubber ball cleaning', 'Pastikan ball collector drain piping globe valve posisi “CLOSE“'),
(172, 'rubber ball cleaning', 'Buka manual inlet & outlet valve rubber ball'),
(173, 'rubber ball cleaning', 'Buka manual half chamber vent valve, jika air telah keluar melalui venting tutup kembali manual half chamber vent valve '),
(174, 'rubber ball cleaning', 'Pada kontrol kabinet KLIK OPTION  untuk mengatur timer sirkulasi dan pengumpulan bola'),
(175, 'rubber ball cleaning', 'KLIK  A Auto Run / B auto run pada kontrol kabinet '),
(176, 'rubber ball cleaning', 'Motor rubber ball start (P100), V102 Open , V103 Open  secara Auto'),
(177, 'rubber ball cleaning', 'Pastikan tekanan pompa 1.5 - 2 Mpa'),
(178, 'rubber ball cleaning', 'Rubber ball system stop secara AUTO'),
(179, 'rubber ball cleaning', 'Close inlet dan outlet manual valve rubber ball '),
(180, 'rubber ball cleaning', 'Open Ball collector drain piping globe valve'),
(181, 'rubber ball cleaning', 'Buka manual half chamber vent valve'),
(182, 'rubber ball cleaning', 'Buka half chamber cover'),
(183, 'rubber ball cleaning', 'Hitung kembali rubber ball yang terdapat pada ball collector'),
(184, 'rubber ball cleaning', 'Stanbykan kembali rubber ball di ball collector  '),
(185, 'travelling screen dan screen wash pump', 'Pastikan tidak ada tagging dan pekerjaan pada peralatan'),
(186, 'travelling screen dan screen wash pump', 'Pastikan power di panel Travelling Screen & Screen Wash Pump sudah ter-energized'),
(187, 'travelling screen dan screen wash pump', 'Pastikan level pelumas normal'),
(188, 'travelling screen dan screen wash pump', 'Pastikan level intake aman'),
(189, 'travelling screen dan screen wash pump', 'Pastikan sealing screen wash pump open'),
(190, 'travelling screen dan screen wash pump', 'Koordinasikan dengan operator Turbin CCR'),
(191, 'travelling screen dan screen wash pump', 'Posisikan selector switch mode local'),
(192, 'travelling screen dan screen wash pump', 'Operasikan Screen Wash Pump dengan menekan tombol hijau'),
(193, 'travelling screen dan screen wash pump', 'Pastikan outlet valve Screen Wash Pump auto OPEN'),
(194, 'travelling screen dan screen wash pump', 'Pastikan spray sudah beroperasi'),
(195, 'travelling screen dan screen wash pump', 'Operasikan travelling screen dengan tombol low speed start ataupun high speed start dengan mengacu pada :\r\n1. Mode Low speed start dioperasikan jika pada visual terlihat banyak sampah\r\n2. Mode high speed start dioperasikan jika pada visual terlihat sedikit sampah\r\n'),
(196, 'travelling screen dan screen wash pump', 'Operasikan selama 10 – 15 menit'),
(197, 'travelling screen dan screen wash pump', 'Koordinasikan dengan operator turbin CCR'),
(198, 'travelling screen dan screen wash pump', 'Stop travelling screen dengan menekan “Stop Button”'),
(199, 'travelling screen dan screen wash pump', 'Pastikan travelling screen sudah stop dengan mengecek secara visual'),
(200, 'travelling screen dan screen wash pump', 'Stop screen wash pump dengan menekan tombol merah pada panel lokal'),
(201, 'conveying air compressor', 'Pastikan Combined dryer for ash handling current beroperasi'),
(202, 'conveying air compressor', 'Pastikan level oli dalam kondisi normal'),
(203, 'conveying air compressor', 'Pastikan kondisi sekitar peralatan dalam kondisi aman operasi'),
(204, 'conveying air compressor', 'Pastikan power dalam kondisi ternergize'),
(205, 'conveying air compressor', 'Pastikan emergensi stop dalam kondisi release'),
(206, 'conveying air compressor', 'Buka manual outlet valve Conveying Air Compressor dilokal'),
(207, 'conveying air compressor', 'Klik tombol “M” pada gambar Compressor di tampilan menu Conveying Air Compressor'),
(208, 'conveying air compressor', 'Klik tombol Start lalu Klik ACK'),
(209, 'conveying air compressor', 'Amati dan pastikan Conveying compressor yang beroperasi dalam kondisi normal (suara, getaran, temperature oli)'),
(210, 'conveying air compressor', 'Amati pressure outlet saat loading dan unloading'),
(211, 'conveying air compressor', 'Klik tombol “M” pada gambar Compressor di tampilan menu Conveying Air Compressor'),
(212, 'conveying air compressor', 'Klik tombol Stop lalu Klik ACK'),
(213, 'conveying air compressor', 'Pastikan Conveying Air compressor dilokal Stop operasi'),
(214, 'conveying air compressor', 'Tutup manual outlet Valve Conveying Air Compressor'),
(215, '5s', 'Tidak ada makanan di area kerja'),
(216, '5s', 'Tidak ada benda yang tidak diperlukan berada di tempat kerja'),
(217, '5s', 'Order / dokumen absolud ditindak lanjuti sesuai prosedur'),
(218, '5s', 'Yang dipamerkan adalah yang terupdate'),
(220, '5s', 'Semua barang yang tidak diperlukan terlihat'),
(221, '5s', 'Semua garis pembagi jelas dan ada cat warnanya'),
(222, '5s', 'Semua rak dan barang terdapat label yang jelas'),
(223, '5s', 'Diletakkan ditempat yang telah ditentukan'),
(224, '5s', 'Terdapat simbol, label dan MSDS'),
(225, '5s', 'Perangkat keselamatan tidak terhalang'),
(226, '5s', 'Lantai bersih dan tidak licin. Maxs hanya ada 2 pcs. part'),
(227, '5s', 'Selalu dijaga kebersihannya sesuai standard'),
(228, '5s', 'Tempat sampah tidak overload'),
(229, '5s', 'Peralatan kebersihan cukup dan disusun rapih'),
(230, '5s', 'Ada jadwal khusus untuk kebersihan'),
(231, '5s', 'Logsheet/patrolcheck/logbook diisi sesuai jadwal'),
(232, '5s', 'Tidak ada yang berpakaian kotor / kena bercak minyak'),
(233, '5s', 'Udara bersih, segar dan tidak berbau'),
(234, '5s', 'Standard-standard ditempel ditempat yang mudah terlihat'),
(235, '5s', 'Safety patrol dilakukan rutin min. setiap hari'),
(236, '5s', 'Berusaha mentaati peraturan perusahaan'),
(237, '5s', 'Menggunakan APD sesuai standard dan ID Card'),
(238, '5s', 'Secara umun ada suasana saling menyapa'),
(239, '5s', 'Mentaati pemisah sampah'),
(240, '5s', 'Kesan inspektor secara umum'),
(241, 'persiapan shutdown', 'Operator Elektrik Standby pada CCR Elektrik'),
(242, 'persiapan shutdown', 'Konfirmasi Operator WTP bahwa WTP standby untuk persiapan shutdown unit'),
(243, 'persiapan shutdown', 'Konfirmasi ke operator CAH untuk pengosongan batubara di bunker dan mengestimasikan waktu shutdown hingga coal bunker kosong'),
(244, 'persiapan shutdown', 'Cek seluruh kondisi peralatan dan catat peralatan yang gangguan pada lembaran catatan'),
(245, 'persiapan shutdown', 'Lakukan satu kali shootblower untuk membersihkan jelaga di area HRA (beban > 55 MW)'),
(246, 'persiapan shutdown', 'Cek seluruh kondisi peralatan dan catat peralatan yang gangguan pada lembaran catatan'),
(247, 'persiapan shutdown', 'Cek auxiliary steam supply pada gland seal system dan pipa deaerator standby supply steam'),
(248, 'persiapan shutdown', 'Lakukan pengetesan AC/DC lubricating oil pump'),
(249, 'persiapan shutdown', 'Lakukan pengetesan HP Start Up Oil pump'),
(250, 'persiapan shutdown', 'lakukan pengetesan jacking oil pump'),
(251, 'persiapan shutdown', 'Turbin Stop'),
(252, 'persiapan shutdown', 'AC Oil Pump Auto Start'),
(253, 'persiapan shutdown', 'Jacking Oil Pump auto Start pada putaran 1200 Rpm'),
(254, 'persiapan shutdown', 'Start Turning Gear saat 0 Rpm (Turbin Zero Speed Aktif)'),
(255, 'pelaksanaan shutdown', 'Lakukan satu kali sootblowing saat beban > 55 MW'),
(256, 'pelaksanaan shutdown', 'Kurangi suplai bahan bakar dan udara secara bertahap sesuai dengan perubahan tekanan material bed (operasikan slag cooler jika pressure windbox > 13kPa dan stop ketika pressure windbox 12,5 KPa)'),
(257, 'pelaksanaan shutdown', 'Kurangi beban secara bertahap (koordinasi dengan UPB) dan turunkan flow batubara hingga level bunker kosong'),
(258, 'pelaksanaan shutdown', 'Ganti beban pada sistem UAT 6kV unit yang shutdown ke unit lain yang masih operasi dengan \"fast-Cut common bus\" dan pastikan voltase pada sistem 6kV yang beroperasi normal'),
(259, 'pelaksanaan shutdown', 'Informasikan ke UPB untuk disconnect 150KV CB pada HV side of main transformer and konfirmasi apabila telah disconnect (lepas paralel)'),
(260, 'pelaksanaan shutdown', 'Lepas Syncron (mengacu Pada IK Shutdown)'),
(261, 'pelaksanaan shutdown', 'Disconnect motor power supply switch pada isolator HV side trafo utama unit yang shutdown'),
(262, 'pelaksanaan shutdown', 'Periksa untuk memastikan inlet vakum CB 6KV __A dan __B (unit yg shutdown) pada sisi LV transformator aux HV unit yang shutdown telah disconnectkan'),
(263, 'pelaksanaan shutdown', 'Switch REMOTE/LOCAL transfer switch 6kV A dan B unit yg shutdown inlet VCB pada HV aux transformer ke posisi LOCAL'),
(264, 'pelaksanaan shutdown', 'Switch 6kV inlet VCB pada LV side of HV aux transformer unit yang shutdown ke posisi TEST'),
(265, 'pelaksanaan shutdown', 'Disconnect AC dan DC control ACB (air CB) pada LV side of HV aux transformer unit yang shutdown'),
(266, 'pelaksanaan shutdown', 'Cabut steker VCB sekunder pada LV side of HV aux transformer unit yang shutdown'),
(267, 'pelaksanaan shutdown', 'Check trafo utama  dan trafo auxiliary tegangan tinggi telah diposisikan pada posisi standby dari posisi operasi sebelumnya'),
(268, 'pelaksanaan shutdown', 'Tetap mengoperasikan fan-fan hingga temperatur bed mencapai 400 C, lalu stop PAF, SAF, IDF dengan menutup damper fan secara bertahap sambil tetap menjaga pressure furnace antara \r\n-150 dan -200 Pa'),
(269, 'pelaksanaan shutdown', 'Operasikan Slag Cooler sambil Close Valve Inlet Slag Cooler minimal 1 Menit atau hingga Bottom Ash habis di Slag Cooler'),
(270, 'pelaksanaan shutdown', 'Stop Slag Cooler'),
(271, 'pelaksanaan shutdown', 'Stop semua fan-fan (PAF, SAF, IDF, dan HPFF)'),
(272, 'pelaksanaan shutdown', 'Stop Feed water jika temp upper dan lower drum 150 C dan perbedaan temperatur upper dan lower drum dibawah 40 C'),
(273, 'pelaksanaan shutdown', 'Stop Cooling Fan'),
(274, 'pelaksanaan shutdown', 'Kordinasikan ke operator ESP untuk mengosongkan ash hopper,kemudian stop operasi sistem penangkap fly ash'),
(275, 'feed water pump', 'PERSIAPAN:\r\nPastikan kondisi peralatan dalam kondisi standby dan tidak ada tagging card'),
(276, 'feed water pump', 'Check power dalam kondisi terenergize'),
(277, 'feed water pump', 'Pastikan valve venting udara dan outlet FWP open '),
(278, 'feed water pump', 'Pastikan semua valve manual drain-drain  tertutup'),
(279, 'feed water pump', 'Pastikan manual valve injeksi kimia terbuka'),
(280, 'feed water pump', 'Pastikan selector switch pada posisi remote'),
(281, 'feed water pump', 'Pastikan valve manual resirkulasi terbuka'),
(282, 'feed water pump', 'Pastikan valve manual resirkulasi terbuka'),
(283, 'feed water pump', 'Pastikan tidak ada indikasi trip pada peralatan '),
(284, 'feed water pump', 'Pastikan AUX oil pump FWP telah operasi (press 0.08-0.12 Mpa) 0.7 - 1 bar'),
(285, 'feed water pump', 'Pastikan air pendingin HE hidraulik kopling FWP normal'),
(286, 'feed water pump', 'Pastikan pelumas motor FWP dalam posisi normal '),
(287, 'feed water pump', 'Pastikan level dearator diatas 1350 mm sesuai batasan operasi'),
(288, 'feed water pump', 'PELAKSANAAN START:\r\nBuka MOV Inlet FWP'),
(289, 'feed water pump', 'Koordinasikan dengan operator lokal untuk memastikan semua telah siap'),
(290, 'feed water pump', 'Masuk ke layar Main Feed Water ,kemudian klik salah satu Feed Water Pump yang siap dioperasikan hingga muncul layar mode pengoperasian'),
(291, 'feed water pump', 'Setelah muncul mode pengoperasian Klik Start lalu klik ACK'),
(292, 'feed water pump', 'Setelah FWP beroperasi pastikan AUX Oil Pump stop'),
(293, 'feed water pump', 'Koordinasikan dengan operator lokal kondisi  FWP setelah start, kemudian tutup valve venting outlet FWP'),
(294, 'feed water pump', 'PELAKSANAAN STOP:\r\nMasuk ke layar Main Feed Water, Turunkan bukaan hidraulik kopling hingga 0% '),
(295, 'feed water pump', 'kemudian klik salah 1 Feed Water Pump yang ingin distop hingga muncul mode pengoperasian'),
(296, 'feed water pump', 'Setelah muncul mode pengoperasian klik Stop lalu klik ACK'),
(297, 'feed water pump', 'Setelah FWP Stop, pastikan AUX Oil Pump FWP auto start dan pastikan pressure lube oil normal'),
(298, 'feed water pump', 'Close kembali manual valve injeksi kimia FWP'),
(299, 'feed water pump', 'PELAKSANAAN CHANGE OVER:\r\nWaktu change over mengacu pada jadwal change over'),
(300, 'feed water pump', 'Pastikan FWP yang akan dioperasikan dalam kondisi standby'),
(301, 'feed water pump', 'Start FWP yang ingin di Change Over (mengacu pada Pelaksanaan start)'),
(302, 'feed water pump', 'Setelah FWP beroperasi normal, atur dan sesuaikan bukaan hidraulik kopling dengan FWP yang akan distop'),
(303, 'feed water pump', 'Stop FWP (mengacu pada Pelaksanaan Stop)'),
(304, 'HP oil pump', 'PERSIAPAN:\r\nPastikan kondisi sekitar peralatan dalam kondisi aman operasi dan tidak ada tagging card'),
(305, 'HP oil pump', 'Check power motor dalam kondisi terenergize'),
(306, 'HP oil pump', 'Pastikan level oli dalam kondisi normal'),
(307, 'HP oil pump', 'Pastikan Emergency Stop pada posisi release (Local)'),
(308, 'HP oil pump', 'Pastikan level dearator diatas 1350 mm'),
(309, 'HP oil pump', 'PELAKSANAAN START:\r\nBuka menu Lube Oil klik Hp Oil Pump klik Start lalu klik ACK'),
(310, 'HP oil pump', 'PELAKSANAAN STOP:\r\nSetelah putaran 3000 rpm stop Hp Oil Pump'),
(311, 'HP oil pump', 'Buka menu Lube Oil klik Hp Oil Pump klik Stop lalu klik ACK'),
(312, 'condensate extrantion pump', 'PERSIAPAN:\r\nPastikan bahwa di area CEP tidak ada pekerjaan (tagging card)'),
(313, 'condensate extrantion pump', 'Pastikan breaker sudah rack in'),
(314, 'condensate extrantion pump', 'Pastikan Level hotwell normal  900 – 1250 mm'),
(315, 'condensate extrantion pump', 'Pastikan recycle regulate valve(minimum flow valve) open > 70%'),
(316, 'condensate extrantion pump', 'Pastikan manual valve bypass recycle “ Close “ '),
(317, 'condensate extrantion pump', 'Pastikan MOV suction CEP full “Open”'),
(318, 'condensate extrantion pump', 'Pastikan MOV discharge full “Close”'),
(319, 'condensate extrantion pump', 'Pastikan Emergency stop sudah Release (Local)'),
(320, 'condensate extrantion pump', 'Pastikan valve venting pada filter inlet CEP sudah “ Open “'),
(321, 'condensate extrantion pump', 'Pastikan manual valve sebelum sealing pompa dari outlet CEP dan demin “OPEN”'),
(322, 'condensate extrantion pump', 'Pastikan manual  setelah sealing pompa terbuka'),
(323, 'condensate extrantion pump', 'Pastikan manual valve balancing CEP terbuka ˃ 70 %'),
(324, 'condensate extrantion pump', 'Open valve pendingin dari CCWP'),
(325, 'condensate extrantion pump', 'PELAKSANAAN START:\r\nKoordinasikan dengan operator local turbin untuk persiapan start.'),
(326, 'condensate extrantion pump', 'Pilih menu Condensate Water System (COND WTR) pada Display DCS Turbin'),
(327, 'condensate extrantion pump', 'Open MOV Pendingin dari demin sealing dari demin'),
(328, 'condensate extrantion pump', 'Klik salah satu simbol CEP yang StandBy atau siap untuk dioperasikan'),
(329, 'condensate extrantion pump', 'Setelah muncul mode pengoperasian Klik Start lalu klik ACK'),
(330, 'condensate extrantion pump', 'Sesaat setelah ACK di klik, CEP akan beroperasi normal. Selanjutnya amati MOV outlet CEP terbuka (Interlock Pompa)'),
(331, 'condensate extrantion pump', 'Close MOV pendingin air demin'),
(332, 'condensate extrantion pump', 'Koordinasikan dengan operator lokal kondisi CEP setelah start'),
(333, 'condensate extrantion pump', 'monitor peralatan dengan memperhatikan parameter operasi'),
(334, 'condensate extrantion pump', 'PELAKSAAN STOP:\r\nPilih menu Condensate Water System (COND WTR) pada Display DCS Turbin'),
(335, 'condensate extrantion pump', 'Klik salah satu CEP yang beroperasi'),
(336, 'condensate extrantion pump', 'Setelah muncul mode pengoperasian Klik Stop  lalu klik ACK'),
(337, 'condensate extrantion pump', 'Koordinasi dengan operator control turbin “ CEP Stop “'),
(338, 'condensate extrantion pump', 'PELAKSANAAN CHANGE OVER:\r\nWaktu change over mengacu pada jadwal change over'),
(339, 'condensate extrantion pump', 'Pastikan CEP yang akan dioperasikan dalam kondisi standby'),
(340, 'condensate extrantion pump', 'Start CEP yang ingin di Change Over (mengacu pada Pelaksanaan start)'),
(341, 'condensate extrantion pump', 'Setelah CEP beroperasi normal kemudian stop CEP yang akan di “Stop” (mengacu pada Pelaksanaan Stop)'),
(342, 'C.O. supply system pendingin bantu', 'PERSIAPAN:\r\nPastikan Level expansion tank normal  1700 – 2200 mm'),
(343, 'C.O. supply system pendingin bantu', 'Close outlet valve expansion tank unit yang akan meyuplai air pendingin'),
(344, 'C.O. supply system pendingin bantu', 'Open Secara Bertahap Connecting Valve inlet dan outlet sampai full open unit yang akan meyuplai air pendingin'),
(345, 'C.O. supply system pendingin bantu', 'Close Secara Bertahap Connecting Valve Inlet dan Outlet unit satunya'),
(346, 'C.O. supply system pendingin bantu', 'Pastikan Pressure Outlet CCWP normal (0.7 ~ 0.8 Mpa)'),
(347, 'C.O. supply system pendingin bantu', 'Open kembali outlet valve expansion tank dan pastikan level normal'),
(348, 'C.O. supply system pendingin bantu', 'Berkoordinasi antara operator Turbin CCR dan Turbin lokal untuk full open/close valve inlet/outlet CCWP'),
(349, 'C.O. supply system pendingin bantu', 'Atur bukaan MOV outlet CCWP (CCWP yang tidak menyuplai) dan jaga pressure outlet CCWP 0.70 – 0.80 Mpa'),
(350, 'circulating water pump', 'PERSIAPAN:\r\nPastikan tidak ada pekerjaan ( Tagging Card ) pemeliharaan di area CWP dan Kondensor'),
(351, 'circulating water pump', 'Pastikan Emergency stop sudah release (Local)'),
(352, 'circulating water pump', 'Pastikan level air laut suction CWP diatas 2,5 3,5 m'),
(353, 'circulating water pump', 'Pastikan motor CWP, Booster Water Pump dan Vacuum Chamber Pump sudah terenergize'),
(354, 'circulating water pump', 'Pastikan level oli pelumas CWP normal (>50%)'),
(355, 'circulating water pump', 'Pastikan valve manual drain Water Box Condensor, Valve manual drain debris dan drain Hotwell Posisi Close'),
(356, 'circulating water pump', 'Pastikan inlet valve Condensor A & B full Open'),
(357, 'circulating water pump', 'Pastikan outlet valve condensor A & B Open 25% - 50%'),
(358, 'circulating water pump', 'PERSIAPAN START:\r\nKoordinasikan dengan operator Turbin Lokal untuk memastikan semua telah siap'),
(359, 'circulating water pump', 'Koordinasikan dengan Operator WTP untuk Buka katup injeksi chlorine di Intake'),
(360, 'circulating water pump', 'Koordinasikan ke operator alba agar mengoperasikan kathodik protection di CWP dan Inlet kondensor'),
(361, 'circulating water pump', 'Start water chamber vacuum pump sebelum cwp start'),
(362, 'circulating water pump', 'Pilih menu Circulating Water System ( CIR Water System 3206) pada Display DCS Commond '),
(363, 'circulating water pump', 'Klik Start SEQ (mode auto interlock)'),
(364, 'circulating water pump', 'Setelah Muncul mode pengoperasian Klik Start klik ACK'),
(365, 'circulating water pump', 'Sesaat setelah ACK Di Klik, CWP akan beroperasi normal. Selanjutnya amati butterfly valve discharge CWP terbuka ( Interlock Pompa ).'),
(366, 'circulating water pump', 'Setelah CWP sudah beroperasi, pastikan salah satu Booster water pump auto operasi'),
(367, 'circulating water pump', 'Koordinasikan dengan operator lokal kondisi CWP & Booster Pump Setelah Start'),
(368, 'circulating water pump', 'Setelah beroperasi normal, monitor peralatan dengan memperhatikan parameter operasi'),
(369, 'circulating water pump', 'Amati item item berikut:\r\nDischarge pressure CWP, Inlet pressure Condensor, Arus motor CWP, dan Vibrasi motor dan Vibrasi Pompa CWP'),
(370, 'circulating water pump', 'PELAKSANAAN STOP:\r\nKoordinasikan dengan operator Turbin Lokal bahwa CWP ingin distop selanjutnya Pilih menu Circulating Water System ( CIR Water System 3206) pada Display DCS Commond '),
(371, 'circulating water pump', 'Klik Stop SEQ (mode auto interlock)'),
(372, 'circulating water pump', 'Setelah Muncul mode pengoperasian Klik Stop klik ACK'),
(373, 'circulating water pump', 'Sesaat setelah ACK Di Klik, CWP akan Stop. Selanjutnya amati butterfly valve discharge CWP tertutup ( Interlock Pompa ).'),
(374, 'circulating water pump', 'Selanjutnya Stop Booster Water Pump Klik Booster Water Pump Klik Stop Klik ACK'),
(375, 'circulating water pump', 'Koordinasikan dengan operator lokal bahwa tidak ada putaran balik yang terjadi dilokal setelah CWP di Stop'),
(376, 'circulating water pump', 'Koordinasikan dengan Operator WTP untuk tutup katup injeksi chlorine di Intake'),
(377, 'DC oil pump', 'PERSIAPAN:\r\nCheck power motor dalam kondisi terenergize'),
(378, 'DC oil pump', 'Pastikan level oli dalam kondisi normal'),
(379, 'DC oil pump', 'Pastikan Emergency Stop pada posisi release'),
(380, 'DC oil pump', 'PELAKSANAAN START:\r\nBuka menu Lube Oil klik DC Oil Pump klik Start lalu klik ACK'),
(381, 'DC oil pump', 'Start water chamber vacuum pump sebelum CWP start'),
(382, 'DC oil pump', 'Selanjutnya pilih menu Circulating Water System (CIR Water System 3206) pada Display DCS Commond'),
(383, 'CCS', 'PERSIAPAN START:\r\nPilih Menu CCS Mode pada Display DCS'),
(384, 'CCS', 'Klik CCS REQ maka akan muncul dialog menu '),
(385, 'CCS', 'klik On kemudian klik ACK'),
(386, 'CCS', 'klik CCS PMT pada display DEH maka akan muncul dialog menu'),
(387, 'CCS', 'klik On kemudian klik ACK'),
(388, 'CCS', 'Pada menu Turbin Master pilih set Auto'),
(389, 'CCS', 'Pada menu Boiler Master pilih set Auto  '),
(390, 'CCS', 'Pada menu run mode klik slide/cons kemudian klik run'),
(391, 'CCS', 'Jika posisi slide input set pressure bias 2,31, jika posisi CONS input pressure rate 0,2 Mpa/Min'),
(392, 'CCS', 'Pada menu power set isikan rate 0,5 MW/menit '),
(393, 'CCS', 'Isikan rate DMD unit sesuai dengan kenaikkan dan penurunan beban lalu set RUN/KEEP lalu GO'),
(394, 'CCS', 'MONITORING:\r\nKetika Manuver Beban atur dan jaga Presure Set Point sesuai range 8,3 - 8,8 MPa'),
(395, 'CCS', 'Apabila Total Coal Flow batubara >78 t/h maka cut off CCS Mode '),
(396, 'CCS', 'Salah satu Coal Feeder dapat di offkan (Mode Manual) dan manuver beban dapat dilakukan menggunakan mode CCS dengan memperhatikan kenaikan Coal Flow pada masing – masing Coal Feeder'),
(400, 'AC oil pump', 'PERSIAPAN:\r\nPastikan kondisi sekitar peralatan dalam kondisi aman operasi dan tidak ada tagging card'),
(401, 'AC oil pump', 'Check power motor dalam kondisi terenergize.'),
(402, 'AC oil pump', 'Pastikan level oli dalam kondisi normal.'),
(403, 'AC oil pump', 'Pastikan Emergency Stop pada posisi release'),
(404, 'AC oil pump', 'PELAKSANAAN START:\r\nKoordinasikan dengan operator local untuk siap di operasikan'),
(405, 'AC oil pump', 'Buka menu DCS Lube oil '),
(406, 'AC oil pump', 'Klik AC pump , lalu klik ACK'),
(407, 'AC oil pump', 'Klik Stand by ON apabila AC pump auto stop pada 3000rpm'),
(408, 'AC oil pump', 'Perhatikan pressure gauge outlet 0.2 Mpa'),
(409, 'AC oil pump', 'PELAKSANAAN STOP:\r\nPilih menu LUBE OIL pada DCS '),
(410, 'AC oil pump', 'Klik AC pump , lalu STOP , klik ACK'),
(411, 'close circulating water pump', 'PERSIAPAN:\r\nPastikan bahwa di area CCWP tidak ada pekerjaan (tagging card)'),
(412, 'close circulating water pump', 'Pastikan breaker sudah rack in'),
(413, 'close circulating water pump', 'Pastikan Emergency stop sudah Release '),
(414, 'close circulating water pump', 'Pastikan Level expansion tank normal  900 – 2200 mm'),
(415, 'close circulating water pump', 'Pastikan MOV suction CCWP full “OPEN”'),
(416, 'close circulating water pump', 'Pastikan MOV discharge full “CLOSE”'),
(417, 'close circulating water pump', 'Pastikan CWP sudah beroperasi'),
(418, 'close circulating water pump', 'Pastikan manual valve inlet dan outlet filter OCW “OPEN”'),
(419, 'close circulating water pump', 'Pastikan valve connecting CCWP #1 to unit #2 “CLOSE“'),
(420, 'close circulating water pump', 'Buka manual valve outlet expansion tank'),
(421, 'close circulating water pump', 'Buka MOV inlet dan outlet HE sisi air laut'),
(422, 'close circulating water pump', 'Buka MOV inlet dan outlet  HE pada sisi CCWP '),
(423, 'close circulating water pump', 'Buka valve manual inlet dan outlet air pendingin pada peralatan bantu'),
(424, 'close circulating water pump', 'Buka valve venting pada strainer , tutup kembali venting apabila air sudah keluar '),
(425, 'close circulating water pump', 'PERSIAPAN START:\r\nBuka menu CCW SYSTEM (CCW WTR), kemudian klik symbol CCWP yang siap dioperasikan'),
(426, 'close circulating water pump', 'Setelah muncul mode pegoperasiaan, klik START lalu klik ACK'),
(427, 'close circulating water pump', 'Setelah CCWP operasi, koordinasikan dengan operator local kondisi CCWP'),
(428, 'close circulating water pump', 'Monitor peralatan dengan memperhatikan parameter operasi'),
(429, 'close circulating water pump', 'Amati item item berikut: Level Expansion tank, Differential Pressure inlet strainer CCWP, Arus motor CCWP, Pressure outlet CCWP, Vibrasi motor dan vibrasi pompa.'),
(430, 'close circulating water pump', 'PELAKSANAA STOP:\r\nPilih menu CCW SYSTEM (CCW WTR) pada Display DCS Turbin'),
(431, 'close circulating water pump', 'Klik CCWP yang akan di STOP'),
(432, 'close circulating water pump', 'Setelah muncul mode pengoperasian Klik STOP  lalu klik ACK'),
(433, 'close circulating water pump', 'Koordinasi dengan operator control turbin “ CCWP STOP “ '),
(434, 'close circulating water pump', 'Setelah CCWP “STOP”, pastikan MOV outlet CCWP “CLOSE” '),
(435, 'close circulating water pump', 'PELAKSANAAN CHANGE OVER:\r\nWaktu change over mengacu pada jadwal change over'),
(436, 'close circulating water pump', 'Pastikan CCWP yang akan dioperasikan dalam kondisi standby'),
(437, 'close circulating water pump', 'Start CCWP yang ingin di Change Over (mengacu pada Pelaksanaan start)'),
(438, 'close circulating water pump', 'Setelah CCWP beroperasi normal kemudian stop CCWP yang akan di “STOP” (mengacu pada Pelaksanaan Stop)'),
(439, 'jacking oil pump', 'PERSIAPAN:\r\nPastikan kondisi sekitar peralatan dalam kondisi aman operasi dan tidak ada tagging card'),
(440, 'jacking oil pump', 'Check power motor dalam kondisi terenergize'),
(441, 'jacking oil pump', 'Pastikan Emergency Stop telah terelease'),
(442, 'jacking oil pump', 'Pastikan bahwa kondisi oil filter bersih dan siap digunakan'),
(443, 'jacking oil pump', 'Buka main inlet valve pompa '),
(444, 'jacking oil pump', 'Buka inlet valve manual accumulator'),
(445, 'jacking oil pump', 'Buka valve manual venting oil flter (tutup kembali bila oli telah keluar)'),
(446, 'jacking oil pump', 'PELAKSANAAN START:\r\nBuka menu Lube Oil (2527) klik Jacking Oil Pump yang siap dioperasikan, klik Start lalu klik ACK.'),
(447, 'jacking oil pump', 'Posisikan Jop pada stand by On apabila pada putaran 1250rpm'),
(448, 'jacking oil pump', 'PELAKSANAAN STOP:\r\nBuka menu lube oil pada DCS '),
(449, 'jacking oil pump', 'Klik JOP yang beroperasi, klik Stop, klik ACK'),
(450, 'turning gear', 'Lakukan pengecekan pada area lokal turning gear'),
(451, 'turning gear', 'Cek pada kontrol panel Pastikan kondisi sekitar peralatan dalam kondisi aman'),
(452, 'turning gear', 'Check power dalam kondisi terenergize'),
(453, 'turning gear', 'Pastikan selector switch dalam posisi Local'),
(454, 'turning gear', 'PELAKSANAAN START MODE DCS:\r\nBuka menu DCS Lube Oil System, klik motor turning gear untuk membuka mode pengoperasian'),
(455, 'turning gear', 'Setelah mode pengoperasian terbuka klik Start lalu klik ACK'),
(456, 'turning gear', 'Setelah motor turning gear beroperasi pastikan poros turbin berputar'),
(457, 'turning gear', 'PELAKSANAAN START MODE LOKAL:\r\nTekan tombol start pada panel local'),
(458, 'turning gear', 'Tunggu beberapa saat sampai tuas kopling bergerak ke posisi terkopel (vertical)'),
(459, 'turning gear', 'Setelah motor turning gear beroperasi pastikan poros turbin berputar'),
(460, 'vacum pump', 'PERSIAPAN:\r\nPastikan tidak ada Tagging pada Vacum Sistem.'),
(461, 'vacum pump', 'Pastkan Air pendingin kondensor  telah beroperasi (CWP)'),
(462, 'vacum pump', 'Pastikan release valve (vacum breaker valve) closed'),
(463, 'vacum pump', 'Pastikan level air di separator normal ± 20 mm'),
(464, 'vacum pump', 'Pastikan valve drain separator tank “CLOSE“'),
(465, 'vacum pump', 'Buka manual inlet dan outlet valve heat exchanger (air demin)'),
(466, 'vacum pump', 'Buka manual inlet dan outlet valve air pendingin heat exchanger (air laut)'),
(467, 'vacum pump', 'Buka manual valve make up water separator'),
(468, 'vacum pump', 'Buka manual inlet valve vacum pump '),
(469, 'vacum pump', 'Buka manual outlet valve kondensor menuju vacuum pump (berada diatas kondensor'),
(470, 'vacum pump', 'PELAKSANAAN START:\r\nBuka menu turbin pada Display DCS'),
(471, 'vacum pump', 'Buka menu VAC SYS  (vacum system) pada Display DCS'),
(472, 'vacum pump', 'KLIK vacum pump yang ingin di start'),
(473, 'vacum pump', 'Langkah terakhir klik Start lalu klik ACK'),
(474, 'vacum pump', 'Monitor parameter (Vibrasi/temperature ) vacum pump baik di DCS maupunLOKAL'),
(475, 'vacum pump', 'PELAKSANAAN STOP:\r\nBuka menu VAC SYS  (vacum system) pada Display DCS.'),
(476, 'vacum pump', 'Klik vacum pump yang ingin di stop.'),
(477, 'vacum pump', 'klik Stop lalu klik ACK.'),
(478, 'vacum pump', 'PELAKSANAAN CHNGE OVER:\r\nWaktu change over mengacu pada jadwal change over'),
(479, 'vacum pump', 'Pastikan Vacum Pump yang akan dioperasikan dalam kondisi standby.'),
(480, 'vacum pump', 'Start Vacum Pump yang ingin di Change Over (mengacu pada Pelaksanaan start).'),
(481, 'vacum pump', 'Setelah Vacum Pump beroperasi normal kemudian stop Vacum Pump yang akan di “Stop” (mengacu pada Pelaksanaan Stop)'),
(482, 'sea water pretreatment', 'PERSIAPAN START:\r\nPastikan Power supply di kontrol panel ready'),
(483, 'sea water pretreatment', 'Pastikan selector switch pada posisi “Remote”'),
(484, 'sea water pretreatment', 'Open Outlet Valve Manual Sea Water Pump'),
(485, 'sea water pretreatment', '“Open” injeksi valve NaClO Continuous Injection Pump'),
(486, 'sea water pretreatment', '“Open” inlet valve Flocculant Sedimentation Basin'),
(487, 'sea water pretreatment', 'Pastikan drain sludge valve Flocculant Sedimentation Basin posisi “Close”'),
(488, 'sea water pretreatment', '“Open” injeksi manual valve coagulant'),
(489, 'sea water pretreatment', 'Pastikan Power supply untuk Coagulant & NaClO Continuous Injection Pump ready'),
(490, 'sea water pretreatment', 'Pastikan level tangki Coagulant (200 mm) dan Sodium Hypochlorite /NaClO (2000 mm) cukup'),
(491, 'sea water pretreatment', 'PELAKSANAAN START:\r\nOperasikan  NaClO Continuous Injection Pump pada sub-tab Chlorine pada DCS'),
(492, 'sea water pretreatment', 'Operasikan Coagulant Dosing Pump pada  tab menu Floccu Sedimen BASIN, atur frekuensi motor pompa 20-30 %'),
(493, 'sea water pretreatment', 'Operasikan Sea Water Pump pada  tab menu Floccu Sedimen Basin'),
(494, 'sea water pretreatment', 'STOP PERALATAN:\r\nStop Sea water pump dilakukan setelah Primary RO  system stop, filter system stop'),
(495, 'sea water pretreatment', 'Koordinasikan dengan operator WTP control room untuk stop Sea water pump'),
(496, 'sea water pretreatment', 'Stop Coagulant Dosing Pump, tutup inlet injection valve di local.'),
(497, 'uap perapat poros turbin', 'PELAKSANAAN START:\r\nKoordinasikan dengan OP Boiler untuk mengoperasikan Auxiliary Boiler untuk supply ke aux steam header apabila Unit lainnya tidak beroperasi (mengacu pada IK Aux. Boiler)'),
(498, 'uap perapat poros turbin', 'Apabila Unit lainnya beroperasi, pastikan manual valve dari auxiliary boiler terclose dan open MOV supply steam ke aux. steam header #1 & #2, sambil mengamati pressure dan temp aux steam header '),
(499, 'uap perapat poros turbin', 'Apabila pressure dan temperature Main steam masih terpenuhi, supply aux steam header diambil dari line main steam.'),
(500, 'uap perapat poros turbin', 'Koordinasi dengan Operator CCR Boiler untuk Open MSV apabila MSP Boiler sudah mencapai pressure 0,3 -0,5 MPa'),
(501, 'uap perapat poros turbin', 'Koordinasi ke Operator Turbin lokal untuk standby pada area aux steam header apabila diperlukan throtle valve manual main steam to aux. steam header'),
(502, 'uap perapat poros turbin', 'Open MOV supply gland seal steam '),
(503, 'uap perapat poros turbin', 'Koordinasi ke Operator Turbin lokal untuk stanby pada area Gland Seal System apabila diperlukan throtle valve manual.'),
(504, 'uap perapat poros turbin', 'Atur regulated valve LP & HP Gland Sealing untuk mencapai pressure yang diinginkan, dan atur valve spray untuk mencapai temperatur yang diinginkan. '),
(505, 'uap perapat poros turbin', 'Aturlah secara perlahan sampai parameter pressure dan temperature sealing sebagai berikut:\r\nSisi HP Turbin(Pressure: 15-20 KPa, Temperatur: 150-2200C). Sisi LP Turbin (Pressure: 20-30 KPa, Temperatur: 150-180oC)'),
(506, 'uap perapat poros turbin', 'Setelah pressure gland seal HP dan LP Turbin terpenuhi dapat dilanjutkan dengan pengoperasian vacuum pump (mengacu IK pengoperasian vacuum pump)'),
(507, 'drain pit pump', 'PERSIAPAN START:\r\nPastikan peralatan dalam keadaan standby dan tidak ada tagging card'),
(508, 'drain pit pump', 'Check power dalam kondisi energize'),
(509, 'drain pit pump', 'Pastikan panel berada pada posisi uang sesuai dengan mode pengoperasian (auto atau manual)'),
(510, 'drain pit pump', 'Pastikan Level air pada pit pool sekitar 80% (belum menyentuh support pompa)'),
(511, 'drain pit pump', 'Pastikan Valve outlet Drain pit pump posisi open'),
(512, 'drain pit pump', 'PELAKSANAAN START SECARA AUTO:\r\nPompa akan auto start jika level air menyentuh radar air'),
(513, 'drain pit pump', 'PELAKSANAAN START SECARA MANUAL:\r\nPerhatikan level air jika sudah tinggi '),
(514, 'drain pit pump', 'Dan tekan tombol “START”'),
(515, 'drain pit pump', 'STOP SECARA AUTO:\r\nPastikan level air sudah rendah dan tidak ada air lagi di sekitar pompa'),
(516, 'drain pit pump', 'Pastikan motoran pompa tidak terkena air '),
(517, 'drain pit pump', 'Pompa akan auto Stop saat level air sudah rendah'),
(518, 'drain pit pump', 'STOP SECARA MANUAL:\r\nPastikan level air sudah rendah dan tidak ada air lagi di sekitar pompa'),
(519, 'drain pit pump', 'Pastikan motoran pompa tidak terkena air '),
(520, 'drain pit pump', 'Dan tekan tombol “STOP”'),
(521, 'digital electric hydraulic', 'PELAKSNAAN START:\r\nPastikan tidak ada tagging atau kegiatan maintenance pada system DEH'),
(522, 'digital electric hydraulic', 'Pastikan semua motor pompa terenergized atau memiliki tegangan'),
(523, 'digital electric hydraulic', 'Padtikan level oli pada tangki dalam keadaan normal'),
(524, 'digital electric hydraulic', 'Pastikan inlet dan outlet valve EH pump terbuka '),
(525, 'digital electric hydraulic', 'Pastikan inlet dan outlet valve circulation pump terbuka'),
(526, 'digital electric hydraulic', 'Pastikan inlet dan outlet valve regen pump terbuka'),
(527, 'digital electric hydraulic', 'Pastikan manual valve outlet air pendingin oli terbuka'),
(528, 'digital electric hydraulic', 'Pastikan indicator Air filter/Silica Gel dalam kondisi normal (berwarna ungu)'),
(529, 'digital electric hydraulic', 'Pastikan indicator pada filter regen dalam keadaan normal (berwarna hijau)'),
(530, 'digital electric hydraulic', 'PELAKSANAAN START:\r\nBuka Display EH Oil System, pilih Regent Pump, klik “START” lalu klik “ACK”'),
(531, 'digital electric hydraulic', 'Pilih EH Circulating pump, Klik “START” lalu klik “ACK”'),
(532, 'digital electric hydraulic', 'Pantau pressure Outlet EH Circulating Pump sampai pada 0,3 MPa'),
(533, 'digital electric hydraulic', 'Pilih dan klik salah satu EH Pump yang akan dioperasikan'),
(534, 'digital electric hydraulic', 'Klik “START” lalu Klik “ACK”'),
(535, 'digital electric hydraulic', 'Pantau pressure Outlet EH Pump sampai pada 12-14 MPa'),
(536, 'digital electric hydraulic', 'Pantau pressure Accumulator sampai 9.1 MPa'),
(537, 'digital electric hydraulic', 'PELAKSANAAN STOP:\r\nBuka Display EH Oil System'),
(538, 'digital electric hydraulic', 'Klil EH Pump yang sedang beroperasi'),
(539, 'digital electric hydraulic', 'Klik “Stop” lalu Klik “ACK”'),
(540, 'digital electric hydraulic', 'Amati penurunan temp. EH Oil Tank apabila <42℃ maka EH Circulating Pump akan AUTO Stop'),
(541, 'digital electric hydraulic', 'PELAKSANAAN CHANGE OVER:\r\nWaktu change over mengacu pada jadwal change over'),
(542, 'digital electric hydraulic', 'Pastikan EH Oil Pump yang akan dioperasikan dalam kondisi standby'),
(543, 'digital electric hydraulic', 'Start EH Oil Pump yang ingin di Change Over (mengacu pada Pelaksanaan start) dan hold selama 10 menit hanya bersifat warming up'),
(544, 'CWP connecting valve', 'PELKASANAAN START:\r\nOperator Turbin lokal standby pada area lokal CWP'),
(545, 'CWP connecting valve', 'Cek pada kontrol panel pastikan kondisi sekitar peralatan dalam kondisi aman'),
(546, 'CWP connecting valve', 'Check power dalam kondisi ter-energize dan selector switch pada posisi remote'),
(547, 'CWP connecting valve', 'Sebelum membuka CWP Connecting Valve, pastikan valve outlet CWP yang gangguan / outservice telah berada pada posisi close dengan sempurna dengan cara memposisikan valve close lewat DCS dan diputar manual di local agar tidak terjadi putaran balik pada CWP yang sedang tidak beroperasi.');
INSERT INTO `daftar_pertanyaan` (`id`, `untuk`, `pertanyaan`) VALUES
(548, 'CWP connecting valve', 'Operator Turbin CCR membuka CWP Connecting Valve “A” (CWP OUTLET W-PP) dengan mode local bertahap hingga terbuka sepenuhnya untuk mengisi line pipa terlebih dahulu. (Berkoordinasi dengan Operator Turbin di Lokal terhadap kondisi bukaan valve di lokal). '),
(549, 'CWP connecting valve', 'Setelah CWP Connecting Valve “A” terbuka penuh, Operator Turbin CCR membuka CWP Connecting Valve “B” (CWP INLET W-PP) hingga terbuka sepenuhnya lewat DCS. (Berkoordinasi dengan Operator Turbin di Lokal terhadap kondisi bukaan valve di lokal). Ketika kondisi emergency Operator DCS bisa langsung membuka valve connecting melalui DCS.'),
(550, 'CWP connecting valve', 'Pastikan bahwa tekanan pada inlet condensor kedua unit tidak kurang dari 0,04 MPa dan Pressure outlet CWP > 0.07 MPa'),
(551, 'CWP connecting valve', 'PELAKSANAAN STOP:\r\nOperator Turbin lokal standby pada area lokal CWP'),
(552, 'CWP connecting valve', 'Cek pada kontrol panel pastikan kondisi sekitar peralatan dalam kondisi aman'),
(553, 'CWP connecting valve', 'Pengoperasian CWP mengacu pada SOP Circulating Water Pump'),
(554, 'CWP connecting valve', 'Operator Turbin Lokal mengclose interconnecting valve CWP secara perlahan ke 0% (Berkoordinasi dengan Operator Turbin di CCR terhadap kondisi bukaan valve di lokal)'),
(555, 'CWP connecting valve', 'Pastikan bahwa tekanan pada inlet condensor kedua unit tidak kurang dari 0,04 MPa dan Pressure outlet CWP > 0.07 MPa.'),
(556, 'operasi 3 CWP', 'PERSIAPAN:\r\nPastikan tidak ada pekerjaan (Tagging Card) pemeliharaan di area CWP dan Condensor'),
(557, 'operasi 3 CWP', 'Pastikan Emergency stop sudah release'),
(558, 'operasi 3 CWP', 'Pastikan level air laut suction CWP dibawah 3.4 m'),
(559, 'operasi 3 CWP', 'Pastikan motor CWP dan Booster water pump sudah terenergize'),
(560, 'operasi 3 CWP', 'Pastikan level oli pelumas CWP normal (>50%)'),
(561, 'operasi 3 CWP', 'Pastikan inlet valve condensor A & B full Open'),
(562, 'operasi 3 CWP', 'Pastikan outlet valve condensor A & B Open 25%-50%'),
(563, 'operasi 3 CWP', 'PELAKSANAAN STOP:\r\nKoordinasikan dengan operator Turbin Lokal untuk memastikan semua telah siap'),
(564, 'operasi 3 CWP', 'Open valve interconnecting sesuai dengan IK CWP Connecting Valve'),
(565, 'operasi 3 CWP', 'Selanjutnya pilih menu Circulating Water System (CIR Water System 3206) pada Display DCS Commond'),
(566, 'operasi 3 CWP', 'Klik Stop SEQ (mode auto interlock) pada CWP yang akan di Stop'),
(567, 'operasi 3 CWP', 'Setelah muncul mode pengoperasian Klik Stop lalu klik ACK.'),
(568, 'operasi 3 CWP', 'Sesaat setelah ACK di klik, CWP akan stop operasi. Selanjutnya amati Butterfly valve discharge CWP tertutup (Interlock Pompa). '),
(569, 'operasi 3 CWP', 'Selanjutnya Stop Booster Water Pump Klik Booster Water Pump Klik Stop klik ACK'),
(570, 'operasi 3 CWP', 'Koordinasikan dengan operator lokal bahwa tidak ada putaran balik yang terjadi dilokal setelah CWP  di  Stop'),
(571, 'operasi 3 CWP', 'Setelah CWP sudah stop operasi, atur bukaan interconecting valve dan outlet condensor masing – masing unit'),
(572, 'operasi 3 CWP', 'Amati item item berikut: Level Intake, Inlet pressure Condensor, dan Vacuum Condensor Unit'),
(573, 'operasi 3 CWP', 'Posisi kan mode stanby ON pada CWP yang di Stop'),
(574, 'operasi 3 CWP', 'PELAKSANAAN START:\r\nTrend monitoring selama > 2 hari level minimum intake > 3,4 meter dapat beroperasi dengan 4 CWP kembali'),
(575, 'operasi 3 CWP', 'Koordinasikan dengan operator Turbin Lokal bahwa CWP ingin di Start '),
(576, 'operasi 3 CWP', 'Pelaksanaan Start CWP mengacu pada SOP Circulating Water Pump'),
(577, 'emergency MOV debris filter', 'PERSIAPAN:\r\nOperator melakukan pengecekan di lokal terkait kesiapan peralatan'),
(578, 'emergency MOV debris filter', 'PELAKSANAAN START:\r\nPosisikan MCB dalam keadaan ON pada Panel lokal '),
(579, 'emergency MOV debris filter', 'Posisikan selector switch MOV debris filter ke mode lokal '),
(580, 'emergency MOV debris filter', 'Koordinasikan dengan Operator CCR Turbin untuk Start debris filter '),
(581, 'emergency MOV debris filter', 'Operator lokal menekan tombol open pada MOV Debris Filter'),
(582, 'emergency MOV debris filter', 'tunggu sampai valve full open.'),
(583, 'emergency MOV debris filter', 'Tekan tombol Stop pada MOV Debris Filter 2A'),
(584, 'emergency MOV debris filter', 'Apabila tombol MOV tidak berfungsi maka Putar ke arah kiri Manual valve MOV sampai full open'),
(585, 'emergency MOV debris filter', 'Debris filter beroperasi selama 5 menit (auto stop)'),
(586, 'emergency MOV debris filter', 'PELAKSANAAN SATOP:\r\nDebris Filter berhenti beroperasi'),
(587, 'emergency MOV debris filter', 'Tekan tombol close pada MOV Debris Filter, Tunggu sampai valve full close'),
(588, 'emergency MOV debris filter', 'Tekan tombol stop pada MOV Debris Filter '),
(589, 'emergency MOV debris filter', 'Apabila tombol MOV tidak berfungsi maka Putar ke arah kanan Manual valve MOV sampai full close'),
(590, 'emergency MOV debris filter', 'Posisikan MCB dalam keadaan OFF pada Panel lokal '),
(591, 'runback', 'PERSIAPAN START INPUT MODE RUNBACK:\r\nPastikan level Bunker normal (>6 meter)'),
(592, 'runback', 'Pastikan semua coal feeder dalam kondisi normal operasi '),
(593, 'runback', 'Pastikan Inlet dan Outlet damper fan dalam kondisi normal operasi'),
(594, 'runback', 'Pastikan level deaerator cukup, kurang lebih 1700 mm'),
(595, 'runback', 'Pastikan level condensor cukup, kurang lebih 1100 mm'),
(596, 'runback', 'Pastikan keempat governor valve dalam kondisi normal operasi'),
(597, 'runback', 'Pastikan Semua perlatan boiler ke Mode Auto yang terdiri dari: Fuel Main Control, PAF, SAF, IDF, BFP.'),
(598, 'runback', 'PELAKSANAAN START INPUT MODE RUNBACK:\r\nAktifkan mode CCS ON dengan setting DMD up limit 110 MW/ sesuai daya mampu harian dan DMD down limit di 50 MW /sesuai daya minimum pembangkit.'),
(599, 'runback', 'Aktifkan RUNBACK dengan merubah mode CUT ke mode INPUT '),
(602, 'runback', 'Saat terjadi Runback BFP, Tindakan pemulihan:\r\nBila saat FWP TRIP RB aktif, pastikan CCS Mode masih tetap aktif. Bila sequence salah satu dari sequencenya tidak berjalan, segera kondisikan boiler secara manual (Turbine Follow Mode) sesuai sequence saat runback FWP'),
(603, 'runback', 'Apabila ada indikasi load set tetap, lakukan manual set load ke 55 MW (#1) atau 57 MW (#2) dengan ramp rate 10 MW/min (#1) atau 8 MW/min (#2). Pastikan beban turun ke 55 MW (#1) atau 57 MW (#2)'),
(604, 'runback', 'Amati parameter-parameter yang ada pada boiler terutama pada: temperature furnace, pressure outlet furnace, rate temperatur, level steam drum.\r\nBila terdapat kondisi abnormal pada parameter boiler segera ubah Mode Boiler Master ke Mode Manual (TRK), sehingga menjadi Mode Turbin Follow'),
(605, 'runback', 'Turunkan set point MSP perlahan dari 8,8 MPa ke 7 Mpa untuk penormalan level steam drum.'),
(606, 'runback', 'Lakukan pengecekan pada BFP yang trip, bila ditemukan kondisi abnormal, buat service request.'),
(607, 'runback', 'Setelah tercapai kondisi stabil dan telah memastikan kondisi di lokal aman, operasikan kembali coal feeder A dan F kemudian naikkan beban kembali sesuai permintaan dispatcher.'),
(613, 'runback', 'Saat Terjadi Runback SAF, tindakan pemulihan: Pastikan CCS Mode masih tetap aktif. Bila sequence runback tidak berjalan, segera kondisikan boiler secara manual (Turbine Saat terjadi runback SAF Follow Mode) sesuai sequence saat runback FWP'),
(614, 'runback', 'Apabila ada indikasi load set tetap, lakukan manual set load ke 55 MW (#1) atau 57 MW (#2) dengan ramp rate 10 MW/min (#1) atau 6 MW/min (#2). Pastikan beban turun ke 55 MW (#1) atau 57 MW (#2).'),
(615, 'runback', 'Amati parameter-parameter yang ada pada boiler, bila terdapat kondisi abnormal pada parameter boiler segera ubah ke Turbin Follow Mode'),
(616, 'runback', 'Lakukan pengecekan pada SAF yang trip, bila ditemukan kondisi abnormal, buat service request. '),
(617, 'runback', 'Setelah tercapai kondisi stabil dan telah memastikan SAF dapat beroperasi dengan normal, operasikan kembali coal feeder A dan F kemudian naikkan beban kembali sesuai permintaan dispatcher'),
(618, 'runback', 'Saat Terjadi Runback PAF, Tindakan pemulihan: Bila saat PAF TRIP RB aktif, pastikan CCS Mode masih tetap aktif. Bila sequence runback tidak berjalan, segera kondisikan boiler secara manual (Turbine Follow Mode) sesuai sequence saat runback FWP\r\n'),
(619, 'runback', 'Apabila ada indikasi load set tetap, lakukan manual set load ke 55 MW (#1) atau 57 MW (#2) dengan ramp rate 6 MW/min (#1) atau 6 MW/min (#2). Pastikan beban turun ke 55 MW (#1) atau 57 MW (#2).'),
(620, 'runback', 'Amati parameter-parameter yang ada pada boiler, bila terdapat kondisi abnormal pada parameter boiler segera ubah ke Turbin Follow Mode (CCS tidak aktif, Boiler basic mode)'),
(621, 'runback', 'Lakukan pemeriksaan pada PAF yang trip, bila ditemukan kondisi abnormal, buat service request. '),
(622, 'runback', 'Setelah tercapai kondisi stabil dan telah memastikan PAF dapat beroperasi dengan normal, operasikan kembali coal feeder A dan F kemudian naikkan beban kembali sesuai permintaan dispatcher'),
(624, 'runback', 'Saat Terjadi Runback IDF, Tindakan pemulihan: pastikan CCS Mode masih tetap aktif. Bila sequence runback tidak berjalan, segera kondisikan boiler secara manual (Turbine Follow Mode) sesuai sequence saat runback FWP '),
(625, 'runback', 'Apabila ada indikasi load set tetap, lakukan manual set load ke 55 MW (#1) atau 57 MW (#2) dengan ramp rate 10 MW/min (#1) atau 10 MW/min (#2). Pastikan beban turun ke 55 MW (#1) atau 57 MW (#2).'),
(626, 'runback', 'Amati parameter-parameter yang ada pada boiler terutama pada: temperature furnace, pressure outlet furnace, rate temperatur, level steam drum,'),
(627, 'runback', 'Lakukan pengecekan pada IDF yang trip, bila ditemukan kondisi abnormal, buat service request'),
(628, 'runback', 'Setelah tercapai kondisi stabil dan telah meastikan IDF dapat beroperasi dengan normal, operasikan kembali coal feeder A dan F kemudian naikkan beban kembali sesuai permintaan dispatcher'),
(629, 'C.O. EH oil pump', 'PERSIAPAN:\r\nPastikan tidak ada tidak ada kebocoran pada line EH oil'),
(630, 'C.O. EH oil pump', 'Pastikan motor normal '),
(631, 'C.O. EH oil pump', 'Pastikan level EH Oil Tank Normal'),
(632, 'C.O. EH oil pump', 'Pastikan valve inlet dan outlet dalam posisi terbuka '),
(633, 'C.O. EH oil pump', 'Pastikan pompa recirculating dan regenerative pump operasi '),
(634, 'C.O. EH oil pump', 'Pastikan indicator Air Filter/Silica Gel dalam kondisi normal '),
(635, 'C.O. EH oil pump', 'Pastikan indicator pada filter regen dalam kondisi normal (berwarna hijau)'),
(636, 'C.O. EH oil pump', 'PELAKSANAAN START:\r\nBuka display EH Oil System '),
(637, 'C.O. EH oil pump', 'Nonaktifkan STBY ON'),
(638, 'C.O. EH oil pump', 'Pilih dan klik EH Oil Pump B '),
(639, 'C.O. EH oil pump', 'Klik start, lalu ack '),
(640, 'C.O. EH oil pump', 'Pantau pembacaan Outlet EH Oil Pump A dan B (Dcs dan lokal), 12-14 Mpa'),
(641, 'C.O. EH oil pump', 'Pantau pressure accumulator sampai 9.1 Mpa'),
(642, 'C.O. EH oil pump', 'Pastikan line Eh oil Pump A dan B tidak ada rembesan pelumas'),
(643, 'C.O. EH oil pump', 'Stop EH oil Pump A'),
(644, 'C.O. EH oil pump', 'Pastikan pressure EH Oil Pump B tidak turun (<11 Mpa) di lokal maupun DCS, apabila mengalami penurunan pressure <11 Mpa (lokal), start kembali EH Oil Pump A.'),
(645, 'filter system', 'PERSIAPAN START:\r\nPeriksa bodi filter dan semua valve, pipa, instrument serta perlengkapan lainnya dalam kondisi yang baik'),
(646, 'filter system', 'Open manual valve inlet dan outlet MMF & FSF'),
(647, 'filter system', 'Periksa level flocculant dosing metering tank dan level tangki >200 mm. (tidak dioperasikan)'),
(648, 'filter system', 'Periksa sodium hypoclorite metering tank dan level tangki >200 mm, jika kurang isi dari tangki sodium hypoclorite storage tank'),
(649, 'filter system', 'Periksa dan pastikan chemical water pump panel listrik, udara control (0.5-0.8 Mpa) dan perlengkapan lainnya dalam kondisi yang baik '),
(650, 'filter system', 'Pastikan bahwa valve backwash tertutup'),
(651, 'filter system', 'Pastikan selector switch posisi remote'),
(652, 'filter system', 'Pastikan level Sea water reservoir 2.5 m (1.0-3.4 m), bila kurang koordinasikan dengan operator WTP control room lalu start Sea water pump'),
(653, 'filter system', 'Pastikan inlet dan outlet manual valve chemical water pump dan backwash pump terbuka'),
(654, 'filter system', 'Pilih 2 dari 4 MMF dan 2 dari 4 FSF yang akan dioperasikan dari DCS'),
(655, 'filter system', 'PELAKSANAAN START:\r\nBack wash sebelum operasi:\r\nKlik MODE pada Filter System'),
(656, 'filter system', 'Pilih MMF/FSF yang akan dibackwash (AB atau CD)'),
(657, 'filter system', 'Klik Auto untuk proses backwash secara auto'),
(658, 'filter system', 'Klik #1/#2 BW SEQ >> Start >> ACK'),
(659, 'filter system', 'Backwash Outlet Valve dan Flushing outlet valve terbuka. Proses Drain Filter selama 560 s'),
(660, 'filter system', 'Backwash Outlet Valve dan Air Inlet Valve terbuka. Roots Blower beroperasi untuk menginjeksi udara bertekanan dengan intensitas 13-16 L/m2.s kedalam filter selama 600 s'),
(661, 'filter system', 'Backwash Inlet Valve dan Backwash Outlet Valve terbuka. Backwash Water Pump beroperasi selama 600 s'),
(662, 'filter system', 'Selama proses backwash perhatikan material filter tidak ada yang keluar'),
(663, 'filter system', 'Proses Backwash Filter selesai. Backwash Inlet Valve dan Backwash Outlet Valve tertutup'),
(664, 'filter system', 'Proses Backwash Filter dilakukan tiap pagi dalam sehari atau dalam 24 jam operasi'),
(665, 'filter system', 'Pengoperasian Filter System:\r\nKlik Start SEQ >> Start >> ACK pada menu 1ST RO'),
(666, 'filter system', 'Exhaust Valve dan Inlet Valve terbuka, Chemical Water Pump (sodium hypochlorite dosing pump start) beroperasi. Proses pengisian filter selama 30 s'),
(667, 'filter system', 'Flushing Outlet Valve dan Inlet Valve terbuka. Proses flushing selama 300 s. Perhatikan kondisi filter saat flushing :'),
(668, 'filter system', 'Mengandung material filter atau tidak di Flushing Outlet Valve'),
(669, 'filter system', 'Bila mengandung material berarti Backwash gagal, terjadi kerusakan pada water distribution sisi bawah filter'),
(670, 'filter system', 'Syarat-syarat kualitas pH 7-8, Free Cl¬¬¬2¬< 0.1 ppm atau ORP < 200 mv, temperature < 50 °C, turbidity< 2 NTU atau SDI < 4'),
(671, 'filter system', 'Inlet Valve dan Outlet Valve terbuka. Jaga flow produksi 50-55 t/h dengan cara mengontrol frekuensi Chemical Water Pump. Filter posisi “RUN”'),
(672, 'filter system', 'Operasikan Primary RO (IK Primary RO System)'),
(673, 'C.O. CWP Dengan Operasi 3 CWP', 'PERSIAPAN:\r\nPastikan tidak ada pekerjaan (Tagging Card) pemeliharaan di area CWP dan Condensor'),
(674, 'C.O. CWP Dengan Operasi 3 CWP', 'Pastikan Emergency stop sudah release'),
(675, 'C.O. CWP Dengan Operasi 3 CWP', 'Pastikan batasan operasi poin 6.8 terpenuhi'),
(676, 'C.O. CWP Dengan Operasi 3 CWP', 'Pastikan motor CWP dan Booster water pump sudah terenergize'),
(677, 'C.O. CWP Dengan Operasi 3 CWP', 'Pastikan level oli pelumas CWP normal (>50%)'),
(678, 'C.O. CWP Dengan Operasi 3 CWP', 'Pastikan inlet valve condensor A & B full Open'),
(679, 'C.O. CWP Dengan Operasi 3 CWP', 'Pastikan outlet valve condensor A & B Open 25%-50%'),
(680, 'C.O. CWP Dengan Operasi 3 CWP', 'PELAKSANAAN START:\r\nKoordinasikan dengan operator Turbin Lokal bahwa CWP akan di Start '),
(681, 'C.O. CWP Dengan Operasi 3 CWP', 'Pelaksanaan Start CWP mengacu pada SOP Circulating Water Pump'),
(682, 'C.O. CWP Dengan Operasi 3 CWP', 'PELAKSNAAN MANUVER CONNECTING VALVE CWP:\r\nOperator Turbin lokal standby pada area lokal connecting CWP dan area valve outlet kondensor'),
(683, 'C.O. CWP Dengan Operasi 3 CWP', 'Pastikan Level Intake > 4.5 m saat operasi 4 CWP'),
(684, 'C.O. CWP Dengan Operasi 3 CWP', 'Cek pada kontrol panel pastikan kondisi sekitar peralatan dalam kondisi aman'),
(685, 'C.O. CWP Dengan Operasi 3 CWP', 'Operator Turbin Lokal mengclose interconnecting valve CWP secara perlahan ke 0% (Berkoordinasi dengan Operator Turbin di CCR terhadap kondisi bukaan valve di lokal).'),
(686, 'C.O. CWP Dengan Operasi 3 CWP', 'Pastikan bahwa tekanan pada inlet condensor kedua unit tidak kurang dari 0,04 MPa dan Pressure outlet CWP > 0.07 MPa.'),
(687, 'C.O. CWP Dengan Operasi 3 CWP', 'Amati item item berikut: Pressure Inlet Condensor, Vacuum Condensor Unit, Pressure outlet CWP, Flow outlet CWP, Level Intake, Vibrasi CWP A, B, C, D.'),
(688, 'C.O. CWP Dengan Operasi 3 CWP', 'Tutup Interconecting Valve CWP selama 15 Menit'),
(689, 'C.O. CWP Dengan Operasi 3 CWP', 'Open Interconecting Valve CWP berdasarkan IK-OPRTRB-001-0018 IK CWP Connecting Valve (Manuver interconnecting valve dilakukan setiap 4000 jam)'),
(690, 'C.O. CWP Dengan Operasi 3 CWP', 'PELAKSANAAN STOP:\r\nKoordinasikan dengan operator Turbin Lokal untuk memastikan semua telah siap'),
(691, 'C.O. CWP Dengan Operasi 3 CWP', 'Open valve interconnecting sesuai dengan IK CWP Connecting Valve'),
(692, 'C.O. CWP Dengan Operasi 3 CWP', 'Selanjutnya pilih menu Circulating Water System (CIR Water System 3206) pada Display DCS Commond'),
(693, 'C.O. CWP Dengan Operasi 3 CWP', 'Klik Stop SEQ (mode auto interlock) pada CWP yang akan di Stop (Lihat Urutan Change Over di Catatan)'),
(694, 'C.O. CWP Dengan Operasi 3 CWP', 'Setelah muncul mode pengoperasian Klik Stop lalu klik ACK.'),
(695, 'C.O. CWP Dengan Operasi 3 CWP', 'Sesaat setelah ACK di klik, CWP akan stop operasi. Selanjutnya amati Butterfly valve discharge CWP tertutup (Interlock Pompa). '),
(696, 'C.O. CWP Dengan Operasi 3 CWP', 'Selanjutnya Stop Booster Water Pump Klik Booster Water Pump Klik Stop klik ACK'),
(697, 'C.O. CWP Dengan Operasi 3 CWP', 'Koordinasikan dengan operator lokal bahwa tidak ada putaran balik yang terjadi dilokal setelah salah satu CWP  di  Stop'),
(698, 'C.O. CWP Dengan Operasi 3 CWP', 'Setelah salah satu CWP sudah stop, atur bukaan interconecting valve dan outlet condensor masing – masing unit'),
(699, 'C.O. CWP Dengan Operasi 3 CWP', 'Amati item item berikut: Pressure Inlet Condensor, Vacuum Condensor Unit, Pressure outlet CWP, Flow outlet CWP, Level Intake, Vibrasi CWP A,B,C,D.'),
(700, 'C.O. CWP Dengan Operasi 3 CWP', 'Posisi kan mode stanby ON pada CWP yang di Stop'),
(701, 'hydro test', 'PERSIAPAN START:\r\nPastikan tidak ada pekerjaan pemeliharaan di area boiler.'),
(702, 'hydro test', 'Pastikan semua valve drain di Close'),
(703, 'hydro test', 'Pastikan semua valve venting di teropen ± 10% agar udara yang terjebak di line bisa keluar.'),
(704, 'hydro test', 'Pastikan line pendingin dan pelumas untuk peralatan yang akan dioperasikan sudah start'),
(705, 'hydro test', 'PELAKSANAAN START:\r\nStart BFP'),
(706, 'hydro test', 'Naikan Flow Feed water secara perlahan'),
(707, 'hydro test', 'Full Close semua valve venting'),
(708, 'hydro test', 'Naikan pressure pada boiler drum secara bertahap dan koordinasi dengan bagian pemeliharaan boiler'),
(709, 'hydro test', 'Naikan pressure pada boiler drum secara bertahap dan koordinasi dengan bagian pemeliharaan boiler'),
(710, 'hydro test', 'Cek semua equipment valve dan line feed water di setiap pressure yang di hold bersama bagian pemeliharaan boiler'),
(711, 'hydro test', 'Laporkan setiap indikasi abnomal pada seluruh area pengecekan'),
(712, 'hydro test', 'STOP:\r\nKurangi bukaan kopling BFP untuk menurunkan Pressure boiler drum secara bertahap sampai 0 Mpa'),
(713, 'hydro test', 'Stop BFP'),
(714, 'hydro test', 'Open valve venting'),
(715, 'hydro test', 'Open Valve drain sesuai kondisi kebutuhan'),
(716, 'supply oil pump', 'PERSIAPAN START:\r\nPastikan tidak ada pekerjaan di area SUPPLY OIL PUMP'),
(717, 'supply oil pump', 'Pastikan SUPPLY OIL PUMP telah terenergized'),
(718, 'supply oil pump', 'Pastikan level pelumas pompa >50%'),
(719, 'supply oil pump', 'Pastikan level fuel pada storage tank cukup ( >60%)'),
(720, 'supply oil pump', 'Pastikan inlet dan outlet pendingin posisi open'),
(721, 'supply oil pump', 'Pastikan filter pelumas bersih'),
(722, 'supply oil pump', 'Pastikan tidak ada kebocoran pada line pipa dan valve'),
(723, 'supply oil pump', 'Pastikan inlet valve dari oil storage tank terbuka'),
(724, 'supply oil pump', 'Pastikan manual suction valve sudah terbuka'),
(725, 'supply oil pump', 'Pastikan manual discharge valve close'),
(726, 'supply oil pump', 'Pastikan emergency stop sudah release dan selector switch diposisikan remote'),
(727, 'supply oil pump', 'Pastikan Oil Return valve control ±20%, untuk startup awal pompa'),
(728, 'supply oil pump', 'PELAKSANAAN START:\r\nOpen display supply oil pump'),
(729, 'supply oil pump', 'Klik motor supply oil pump yang akan di operasikan'),
(730, 'supply oil pump', 'Muncul menu pilihan, klik START kemudian ACK'),
(731, 'supply oil pump', 'Indikator motor SUPPLY OIL PUMP  pada DCS berubah menjadi warna merah, mengindikasikan bahwa motor telah beroperasi'),
(732, 'supply oil pump', 'Pastikan SUPPLY OIL PUMP dilocal normal operasi'),
(733, 'supply oil pump', 'Open discharge valve hingga tercapai pressure yang diinginkan (lower: 1.8 MPa, aux boiler : 1.85-1.9 MPa)'),
(734, 'supply oil pump', 'Atur pressure SUPPLY OIL PUMP dengan mengendalikan buka dan tutup pada Oil Return Valve Control'),
(735, 'supply oil pump', 'STOP PERALATAN:\r\nOpen display supply oil pump'),
(736, 'supply oil pump', 'Klik motor supply oil pump'),
(737, 'supply oil pump', 'Muncul menu pilihan, klik STOP kemudian klik ACK.'),
(738, 'supply oil pump', 'Indikator motor SUPPLY OIL PUMP  pada DCS berubah menjadi warna hijau, mengindikasikan bahwa motor telah stop.'),
(739, 'supply oil pump', 'Pastikan SUPPLY OIL PUMP dilocal sudah stop.'),
(740, 'supply oil pump', 'Close discharge valve manual oil supply'),
(741, 'supply oil pump', 'Close return valve pada storage tank'),
(742, 'supply oil pump', 'Close valve supply pada storage tank'),
(743, 'coal feeder', 'PERSIAPAN START:\r\nPastikan tidak ada pekerjaan di Coal Feeder.'),
(744, 'coal feeder', 'Pastikan Breaker Coal Feeder dalam posisi Rack in dan power on.'),
(745, 'coal feeder', 'Posisikan selector switch coal feeder yang akan dioperasikan ke posisi remote'),
(746, 'coal feeder', 'Pastikan tidak ada indikasi alarm yang aktif pada panel local dan DCS'),
(747, 'coal feeder', 'Pastikan level bunker 4 m'),
(748, 'coal feeder', 'Pastikan clearing bisa dioperasikan'),
(749, 'coal feeder', 'Open coal feeder seal air manual valve'),
(750, 'coal feeder', 'Pastikan Avg. temperature >350 °C'),
(751, 'coal feeder', 'PELAKSANAAN START:\r\nOpen display boiler view, Open coal feeder outlet valve, Klik motor coal feeder'),
(752, 'coal feeder', 'Muncul menu pilihan klik start kemudian klik ACK'),
(753, 'coal feeder', 'Set speed motor coal feeder ≥10% (Pastikan Belt conveyor dilokal berputar)'),
(754, 'coal feeder', 'Open coal feeder Inlet valve'),
(755, 'coal feeder', 'Tanda motor pada DCS berubah menjadi warna merah berarti motor sudah operasi.'),
(756, 'coal feeder', 'Naikkan flow batubara secara perlahan sesuai kebutuhan, dengan tetap memperhatikan avg. temperature <1.5 °C/min.'),
(757, 'coal feeder', 'STOP COAL FEEDER:\r\nOpen display boiler view'),
(758, 'coal feeder', 'Set speed motor coal feeder hingga mencapai minimum flow'),
(759, 'coal feeder', 'Close coal feeder inlet valve (pastikan indikator dilokal full close)'),
(760, 'coal feeder', 'Pastikan flow coal feeder 0 t/h'),
(761, 'coal feeder', 'Pastikan tidak ada Batubara diatas belt conveyor'),
(762, 'coal feeder', 'Klik motor coal feeder'),
(763, 'coal feeder', 'Muncul menu pilihan klik stop kemudian ACK (Outlet valve automatis close dan speed feeder automatis 0%)'),
(764, 'coal feeder', 'Pastikan indikator lampu outlet valve aktif (Warna Hijau)'),
(765, 'coal feeder', 'CATATAN:\r\nPerhatikan temperature furnace, usahakan temperature pada tiap sisi furnace merata (hampir sama)'),
(766, 'coal feeder', 'Set point pada tiap putaran motor coal feeder tidak harus sama, tetapi memperhatikan pemerataan panas pada tiap sisi furnace'),
(767, 'coal feeder', 'Ketika terjadi blocking pada coal feeder lakukan hammering dan apabila masih blocking operasikan air cannon'),
(768, 'coal feeder', 'Pastikan belt conveyor berada pada jalurnya (missaligment), tidak miring/slip dengan cara melihat pada lubang intip'),
(769, 'coal feeder', 'Pastikan clearing operasi auto tiap ± 10 menit (Jeda ±6 menit)'),
(770, 'coal feeder', 'Saat Operasi Normal Coal Feeder (6 unit) dengan Mode AUTO, untuk mengubah menjadi Mode Manual apabila salah satu Coal Feeder di STOP atau terjadi gangguan blocking (jika CCS Off)'),
(771, 'coal feeder', 'Saat Start satu Coal Feeder perhatikan Total Coal Flow dan ubah Coal Feeder lainnya ke Mode Manual (jika CCS Off)'),
(772, 'coal feeder', 'Lakukan pemantauan temperatur coal feeder'),
(773, 'tombol discharge valve slagcooler', 'Pastikan selector di MOV pada posisi \"REMOTE\" dan tidak ada indikasi fault baik di DCS maupun di MOV.'),
(774, 'tombol discharge valve slagcooler', 'Posisi selector switch \"0\". MOV tidak dapat dioperasikan Remote dari DCS maupun dari box panel tombol.'),
(775, 'tombol discharge valve slagcooler', 'Posisi selector switch \"1\". MOV dapat dioperasikan Remote dari DCS tanpa fasilitas regulate.'),
(776, 'tombol discharge valve slagcooler', 'Posisi selector switch \"2\". MOV dapat dioperasikan Remote dari box panel tombol tambahan dengan fasilitas regulate.'),
(777, 'tombol discharge valve slagcooler', 'Manuver discharge valve slag cooler open atau close.'),
(778, 'emergency pengoperasian transporter', 'Pelaksanaan Penormalan Ketika Trip 2 Buah Compressor dan tersisa hanya 1 buah Compressor (dengan indikasi Trip High Pressure IC di panel lokal)'),
(779, 'emergency pengoperasian transporter', 'Lakukan pengecekan kondisi display panel lokal, pastikan indikasi tripnya adalah high Pressure IC'),
(780, 'emergency pengoperasian transporter', 'Cek pada panel lokal, tidak ada abnormal pada instalasi (power dan sensor compressor)'),
(781, 'emergency pengoperasian transporter', 'Posisikan ke posisi mode operasi “lokal”'),
(782, 'emergency pengoperasian transporter', 'Lepas selang inputan sensor 2APT (tekan keatas ring konektor dan tarik selangnya)'),
(783, 'emergency pengoperasian transporter', 'Tekan start pada panel lokal Compressor, setelah Motor beroperasi selama 3 detik kemudian pasang kembali selang pada sensor 2APT (pasang kembali selang pada saat sebelum masuk ke 2nd Stage)'),
(784, 'emergency pengoperasian transporter', 'Pelaksanaan Ketika Compressor Trip 2 Buah dan hanya tersisa 1 buah Compressor'),
(785, 'emergency pengoperasian transporter', 'Buka menu pengoperasian Transpoter (Boiler Ash System)'),
(786, 'emergency pengoperasian transporter', 'Ubah mode pengoperasian transporter dari AUTO ke Manual'),
(787, 'emergency pengoperasian transporter', 'Cek dan pastikan pressure I&C Storage Tank > 0.5 Mpa'),
(788, 'emergency pengoperasian transporter', 'Pastikan Trafo 1, 2, 5, 6, 7 & 8 Beroperasi Untuk Masing-masing Unit (Unit 1 dan Unit 2), koordinasikan ke Operator ESP untuk matikan.\r\nKet : Trafo 3&4 di off kan untuk mengurangi penggunaan udara di Pneumatic Valve, namun trafo 5, 6, 7 & 8 tetap dioperasikan untuk menangkap Fly Ash dengan partikel yang kecil'),
(789, 'emergency pengoperasian transporter', 'Operasikan Transporter secara manual (Tahapan Pertama) untuk area APH - 1ST FIELD. Jangan Operasikan 2ND FIELD  (tafo Off), 3RD FIELD dan 4TH FIELD untuk menjaga pressure di I&C Compressor Tank'),
(790, 'emergency pengoperasian transporter', 'Operasikan Transporter secara kontinyu  apabila pressure I&C Storage Tank > 0.5 MPa dan off-kan transporter ketika Pressure I&C Storage Tank mengalami penurunan serta mendekati 0.5 Mpa (contoh : trending pressure turun dan mencapai 0.55, stop pengoperasian Transporter)'),
(791, 'emergency pengoperasian transporter', 'Ketika Trending Pressure menagalami kenaikan kembali dan terbaca pressure I&C Storage Tank >0.5 Mpa, lanjut pengoperasian ke tahap kedua'),
(792, 'emergency pengoperasian transporter', 'Pastikan Trafo 3, 4, 5, 6, 7 & 8 Beroperasi Untuk Masing-masing Unit (Unit 1 dan Unit 2), koordinasikan ke Operator ESP untuk matikan trafo.\r\nKet : Trafo 1&2 di off kan untuk mengurangi penggunaan udara di Pneumatic Valve, namun trafo 5, 6, 7 & 8 tetap dioperasikan untuk menangkap Fly Ash dengan partikel yang kecil'),
(793, 'emergency pengoperasian transporter', 'Operasikan Transporter secara manual (Tahapan Kedua) untuk area APH – 2ND FIELD. Jangan Operasikan 1ND FIELD  (tafo Off), 3RD FIELD dan 4TH FIELD untuk menjaga pressure di I&C Compressor Tank'),
(794, 'emergency pengoperasian transporter', 'Lanjutkan pengoperasian tahap pertama (1.2.4) dan tahap kedua (1.2.8) secara bergantian'),
(795, 'emergency pengoperasian transporter', 'Rutin lakukan pengecekan visual inspection kondisi keluaran flue gas di Chimney'),
(796, 'emergency pengoperasian transporter', 'Lakukan pengecekan parameter PI (Pressure Indicator) di I&C Storage Tank area Turbine Unit 1 dan Unit 2 untuk memastikan tidak ada kegagalan supply udara pneumatic di area Turbine Auxiliary'),
(797, 'filling steam drum', 'PERSIAPAN FILLING DRUM, MENGGUNAKAN BFP: Pastikan tidak ada pekerjaan pada line feed water dan Steam Drum\r\n'),
(798, 'filling steam drum', 'Pastikan level deaerator normal (>900 mm)'),
(799, 'filling steam drum', 'Pastikan valve sirkulasi antara steam dan economizer.'),
(800, 'filling steam drum', 'Pastikan valve manual dan MOV drain steam drum posisi close.'),
(801, 'filling steam drum', 'Pastikan valve Continius Blowdown (CBD) posisi close.'),
(802, 'filling steam drum', 'Pastikan valve emergency drain steam drum posisi close.'),
(803, 'filling steam drum', 'Pastikan venting laluan feedwater posisi open'),
(804, 'filling steam drum', 'Pastikan valve periodical blowdown posisi close.'),
(805, 'filling steam drum', 'MENGGUNAKAN DEMIN PUMP:\r\nPastikan tidak ada pekerjaan pada line feed water dan Steam Drum'),
(806, 'filling steam drum', 'Pastikan level demin tank normal (2 meter)'),
(807, 'filling steam drum', 'Pastikan valve sirkulasi antara steam dan economizer'),
(808, 'filling steam drum', 'Pastikan valve manual dan MOV drain steam drum posisi close'),
(809, 'filling steam drum', 'Pastikan valve Continius Blowdown (CBD) posisi close'),
(810, 'filling steam drum', 'Pastikan valve emergency drain steam drum posisi close'),
(811, 'filling steam drum', 'Pastikan venting laluan feedwater posisi open'),
(812, 'filling steam drum', 'Pastikan valve periodical blowdown posisi close'),
(813, 'filling steam drum', 'PELAKSANAAN START, MENGGUNAKAN BFP:\r\nOperasikan BFP (Mengacu pada IK Pengoperasian BFP)'),
(814, 'filling steam drum', 'Open inlet valve feedwater valve (Bypass)'),
(815, 'filling steam drum', 'Open outlet valve feedwater valve (Bypass)'),
(816, 'filling steam drum', 'Open regulate valve feedwater valve <15% (Bypass)'),
(817, 'filling steam drum', 'Close valve sirkulasi antara steam drum dan economizer'),
(818, 'filling steam drum', 'Tutup kembali venting laluan feedwater ketika sudah keluar air'),
(819, 'filling steam drum', 'MENGGUNAKAN DEMIN PUMP:\r\nOpen  valve manual yang menuju ke line feedwater (lantai 1)'),
(820, 'filling steam drum', 'Operasikan demim pump C (Mengacu pada IK Demim Pump)'),
(821, 'filling steam drum', 'Close valve sirkulasi antara steam drum dan economizer'),
(822, 'filling steam drum', 'Tutup kembali venting laluan feedwater ketika sudah keluar air'),
(823, 'filling steam drum', 'STOP PERALATAN:\r\nStop filling drum dilakukan jika level drum telah mencapai -50 mm untuk perisapan startup unit, dan steam drum diisi 300 mm ketika dalam kondisi stop'),
(824, 'filling steam drum', 'Stop suplay pengisian steam drum (BFP atau Demim Pump)'),
(825, 'filling steam drum', 'Open sirkulasi antara steam drum dan economizer'),
(826, 'boiler auxilliary', 'PERSIAPAN START:\r\nPastikan system chemical standby'),
(827, 'boiler auxilliary', 'Check burner status pada control panel : Electrical Power, Switch Selector posisi Auto'),
(828, 'boiler auxilliary', 'Pastikan level water tank kondisi normal'),
(829, 'boiler auxilliary', 'Pastikan Inlet manual valve water tank posisi terbuka'),
(830, 'boiler auxilliary', 'Pastikan inlet valve dan over flow supply HSD posisi open , serta valve bypass close'),
(831, 'boiler auxilliary', 'Open semua valve drain dan steam release'),
(832, 'boiler auxilliary', 'Pastikan level drum -50mm'),
(833, 'boiler auxilliary', 'LANGKAH PELAKSANAAN, PERSIAPAN START:\r\nBuka valve manual outlet water tank'),
(834, 'boiler auxilliary', 'Buka inlet dan outlet valve manual feed water pump'),
(835, 'boiler auxilliary', 'Buka Inlet valve manual regulator economizer 2.5 – 3 putaran'),
(836, 'boiler auxilliary', 'Buka Outlet valve manual regulator economizer ( full Open )'),
(837, 'boiler auxilliary', 'Isi Drum boiler pada level + 20 mm (manual control DCS) '),
(838, 'boiler auxilliary', 'Check status Main Fuel Trip (MFT) pada Display Control System (DCS), lakukan reset apabila MFT aktif (Penuhi permit start)'),
(839, 'boiler auxilliary', 'Jaga tekanan bahan bakar 1.5 – 2.2 MPa'),
(840, 'boiler auxilliary', 'Posisikan operasi blower pada posisi auto'),
(841, 'boiler auxilliary', 'Tekan tombol start pada control panel burner'),
(842, 'boiler auxilliary', 'Klik Start pada display DCS menu Fuel System (Fan dan equipment start otomatis)'),
(843, 'boiler auxilliary', 'Jaga level drum antara +40 dan -40 dengan mengatur bukaan Regulator motor valve inlet economizer jika start up boiler sudah operasi normal'),
(844, 'boiler auxilliary', 'PELAKSANAAN STOP:\r\nStop blower'),
(845, 'boiler auxilliary', 'Open steam release'),
(846, 'boiler auxilliary', 'Close MSV'),
(847, 'boiler auxilliary', 'Open valve drain main steam (lokal)'),
(848, 'boiler auxilliary', 'Open drain superheater (lokal)'),
(849, 'boiler auxilliary', 'Lakukan filling drum hingga  +100 mm'),
(850, 'boiler auxilliary', 'Stop feedwater pump '),
(851, 'boiler auxilliary', 'Open valve recycle economizer'),
(852, 'boiler auxilliary', 'Close valve steam release pada MSP < 0.01 MPa'),
(853, 'boiler auxilliary', 'Close drain main steam'),
(854, 'LO', ''),
(855, 'lower burner', 'PERSIAPAN SATRT:\r\nPastikan tidak ada pekerjaan di area lower burner'),
(856, 'lower burner', 'Pastikan semua fan beroperasi (IDF, HPF, PAF)'),
(857, 'lower burner', 'Pastikan ESP tidak beroprasi'),
(858, 'lower burner', 'Pastikan level fuel pada storage tank cukup (Normal ±6 m)'),
(859, 'lower burner', 'Pastikan SUPPLY OIL PUMP sudah beroperasi'),
(860, 'lower burner', 'Pastikan compressor sudah beroperasi, dan pressure mencukupi'),
(861, 'lower burner', 'Pastikan valve manual inlet dan outlet yang menuju lower burner posisi open'),
(862, 'lower burner', 'Pastikan manual valve purging open'),
(863, 'lower burner', 'Pastikan manual valve automizing terbuka'),
(864, 'lower burner', 'Pastikan manual valve oil supply  terbuka'),
(865, 'lower burner', 'Pastikan valve manual sealing flame detector terbuka'),
(866, 'lower burner', 'Pastikan permit start terpenuhi'),
(867, 'lower burner', 'PELAKSANAAN START:\r\nLakukan leakage Oil test'),
(868, 'lower burner', 'Reset MFT (Main Fuel Trip)'),
(869, 'lower burner', 'Cek permit start, apabila indikasi berwarna hijau berarti permit start telah terpenuhi'),
(870, 'lower burner', 'Klik ACT untuk reset Lower Burner'),
(871, 'lower burner', 'Posisikan pointer di DCS pada lower burner yang akan di start lalu diklik'),
(872, 'lower burner', 'Muncul menu pilihan, klik START kemudian klik ACK'),
(873, 'lower burner', 'Maka sequence start berjalan sbb: Advance spark rod ignitor, Open automizing dan oil , Retrack spark rod ignitor'),
(874, 'lower burner', 'Indikator purging akan menyala jika salah satu sequence di atas gagal atau tidak terpenuhi'),
(875, 'lower burner', 'Jika flame detector pada DCS  menunjukkan pembacaan 100% maka penyalaan dianggap sempurnah'),
(876, 'lower burner', 'Pastikan dilokal Lower Burner menyala dengan sempurnah'),
(877, 'furnace purging', 'PERSIAPAN START:\r\nPastikan sinyal MFT tidak muncul atau tidak ada proteksi yang bekerja'),
(878, 'furnace purging', 'All coal feeder stop'),
(879, 'furnace purging', 'No flame, tidak ada pembakaran di furnace atau flame detector menunjukkan tidak ada flame yang menyala di dalam furnace'),
(880, 'furnace purging', 'Pastikan HPFF (High Pressure Fludized Fan) beroperasi'),
(881, 'furnace purging', 'Pastikan salah satu IDF (Induced Draft Fan) beroperasi'),
(882, 'furnace purging', 'Pastikan salah satu PAF (Primary Air Fan) beroperasi'),
(883, 'furnace purging', 'Pastikan all burner valve close'),
(884, 'furnace purging', 'Pastikan PERMIT START terpenuhi'),
(885, 'furnace purging', 'PELAKSANAAN PURGNG:\r\nOpen display PURGE & MFT'),
(886, 'furnace purging', 'Klik tombol PURGING pada display PURGE & MFT'),
(887, 'furnace purging', 'Tunggu hingga proses PURGING selesai, proses berlangsung selama 300 detik ( 5 menit)'),
(888, 'pengoperasian lime stone', 'PERSIAPAN:\r\nPastikan bahwa baut kaki motor limestone terpasang dengan benar (kencang)'),
(889, 'pengoperasian lime stone', 'Pastikan circuit breaker Limestone dalam posisi close (Terenergized)'),
(890, 'pengoperasian lime stone', 'Pastikan valve manual inlet & outlet limestone posisi full open'),
(891, 'pengoperasian lime stone', 'Kadar NOX, SOX dan O2 melebihi standart baku'),
(892, 'pengoperasian lime stone', 'Pastikan SA Fan, PA Fan dan ID Fan sudah beroperasi'),
(893, 'pengoperasian lime stone', 'Permit Start “PAF NOT TRIP”'),
(894, 'pengoperasian lime stone', 'LANGKAH PELAKSANAAN, MAIN LIMESTONE:\r\nOpen display limestone (common)'),
(895, 'pengoperasian lime stone', 'Operasikan Fan limestone main silo dust collector, klik simbol Fan akan muncul kotak menu. Klik Start kemudian klik Ack'),
(896, 'pengoperasian lime stone', 'Operasikan motor limestone main dust collector, klik simbol Motor akan muncul kotak menu. Klik Start kemudian klik Ack'),
(897, 'pengoperasian lime stone', 'Koordinasikan dengan operator di lokal area limestone'),
(898, 'pengoperasian lime stone', 'Klik Tombol MODE, Pilih Mode Auto/Man, Pilih Mode Manual lalu klik ACK'),
(899, 'pengoperasian lime stone', 'Open inlet Valve sealing, Open valve balance, Close Inlet Valve sealing, Open inlet Valve limestone'),
(900, 'pengoperasian lime stone', 'Amati Level buffer silo LVL H, Close inlet Valve limestone, Open inlet Valve sealing, Close Valve balance, Open mixing outlet air valve'),
(901, 'pengoperasian lime stone', 'Start motor Feeder'),
(902, 'pengoperasian lime stone', 'Tambah kecepatan motor 15% (jaga Frequency 15-30 Hz)'),
(903, 'pengoperasian lime stone', 'Amati kenaikan level di Daily Steel Limestone Flour Silo (Display Limestone Boiler)'),
(904, 'pengoperasian lime stone', 'DAILY LIMESTONE:\r\nStart root blower '),
(905, 'pengoperasian lime stone', 'Klik start kemudian klik ACK '),
(906, 'pengoperasian lime stone', '‎Pastikan start permits sequence terpenuhi : Stop feeder, Close inlet Air Valve, Close outlet valve '),
(907, 'pengoperasian lime stone', 'Klik tombol Mode, klik AUTO klik ACK'),
(908, 'pengoperasian lime stone', 'Klik ‎menu Start sequence akan muncul kotak menu klik Star, klik ACK '),
(909, 'pengoperasian lime stone', 'Tunggu semua permits terpenuhi, maka indikator valve limestone menunjukkan AUTO dan sistem limestone akan beroperasi secara AUTO'),
(910, 'pengoperasian lime stone', 'STOP:\r\nPastikankan kadar NOX dan SOX pada parameter CEMS sudah memenuhi standart bakumutu'),
(911, 'pengoperasian lime stone', 'Klik menu start sequence, akan muncul kotak dialog klik Rest, klik ACK'),
(912, 'pengoperasian lime stone', 'Amati valve limestone akan berhenti operasi secara berurutan '),
(913, 'pengoperasian lime stone', 'Klik Menu mode, kemudian muncul kotak dialog klik Manual klik ACK'),
(914, 'pengoperasian lime stone', 'Stop motor limestone feeder dengan klik simbol M, klik stop, klik ACK '),
(915, 'pengoperasian lime stone', 'Stop root blower dengan klik simbol blower, klik stop, klik ACK '),
(916, 'pengoperasian lime stone', 'close conveyor limestone inlet valve'),
(917, '', ''),
(918, 'fast cut common PS', 'PERSIAPAN DI LOCAL PANEL:\r\nInspeksi dan Pastikan panel 6KV Common Bus Incoming Feeder Unit 1&2 : Kondisi aman (tidak sedang pemeliharaan), Pastikan posisi rack in, selector switch posisi remote'),
(919, 'fast cut common PS', 'PERSIAPAN DI DCS:\r\nPastikan Tegangan PS Sesuai Batasan Operasi'),
(920, 'fast cut common PS', 'Pastikan tidak ada indikasi alarm di DCS (Reset CB yg alarm)'),
(921, 'fast cut common PS', 'Pastikan jalur pengisian bunker tidak berlangsung'),
(922, 'fast cut common PS', 'LANGKAH PELAKSANAAN:\r\nKlick Common Bus System pada DCS'),
(923, 'fast cut common PS', 'Klick Fast Cut Pada menu Common Bus'),
(924, 'fast cut common PS', 'Klick 1A CUT >> ACK untuk manuver supply PS Common dari Unit 1 Ke Unit 2 '),
(925, 'fast cut common PS', 'Klick 2A CUT >> ACK untuk manuver supply PS Common  dari Unit 2 Ke Unit 1'),
(926, 'fast cut common PS', 'Pastikan Panel PS Common dalam  kondisi Normal setelah Fast Cut'),
(927, 'fast cut common PS', 'Proses FAST CUT PS Common selesai'),
(928, 'supply tegangan UAT unit 2 ke unit 1', 'PERSIAPAN:\r\nPastian MKGG dan MKGT pada posisi open'),
(929, 'supply tegangan UAT unit 2 ke unit 1', 'Pastikan Tegangan dari GI tersupply ke GT Unit 1 atau unit 2 PLTU Punagaya:\r\nPMT Q51 atau Q52 Close (GI), PMS Q20, Q21, Q22, Q25 dan Q28 Posisi Close'),
(930, 'supply tegangan UAT unit 2 ke unit 1', 'Pastikan panel yang akan di manuver kondisi aman'),
(931, 'supply tegangan UAT unit 2 ke unit 1', 'Panel 6 KV 2B SP BRK (6kv 2B Shut-down loads Feeder) mode remote (Unit 2)'),
(932, 'supply tegangan UAT unit 2 ke unit 1', 'Panel 6 KV 1B SP BRK (6kv unit Shut-down load Feeder on 6kv 2 bus CB) mode remote (Unit 1)'),
(933, 'supply tegangan UAT unit 2 ke unit 1', 'Tidak ada alarm pada BUS HSBT Panel (Equipment Room #1)'),
(934, 'supply tegangan UAT unit 2 ke unit 1', 'Panel 400v TIE BRK unit 1 mode lokal ( Jika pengoperasian dari lokal)'),
(935, 'supply tegangan UAT unit 2 ke unit 1', 'PELLAKSANAAN:\r\nClose panel 6KV (1A/2A) BRK >> ON >> ACK (unit yang akan di supply tegangan)'),
(936, 'supply tegangan UAT unit 2 ke unit 1', 'Open panel 400v TIE BRK Unit 1 (dari lokal)'),
(937, 'supply tegangan UAT unit 2 ke unit 1', 'Klik ‘FAST CUT’ pada DCS unit 1/unit 2 >> Klik Q2 >> ACK ( panel 6KV 1B/2B BRK / 6KV Incomming Feeder  akan Close dan panel 6KV 1B/2B SP BRK Open)'),
(938, 'supply tegangan UAT unit 2 ke unit 1', 'Reset Alarm Pada BUS HSBT Panel (Equipment Room Unit 1/ unit 2)'),
(939, 'supply tegangan UAT unit 2 ke unit 1', 'Reverse Supply tegangan dari unit 2 ke unit 1 atau sebaliknya selesai'),
(940, 'warming up EDG', 'PERSIAPAN DAN PENGECEKAN EDG RUTIN,\r\nPastikan posisi Circuit Breaker (CB) di DCS maupun di lokal saat unit akan ditest:\r\nCB01 (Open/warna hijau), CB02 (Closed/warna merah), CB03 (Closed/warna merah), CB04 (Open/warna hijau dan Posisi Rack Out), CB05 (Open/warna hijau dan Posisi Rack Out), CB11 (Close/warna merah), CB12 (Close/warna merah), CB21 (Close/warna merah), CB22 (Close/warna merah)'),
(941, 'warming up EDG', 'Pastikan deepsea monitor dalam kondisi “Manual Mode” pada Control cabinet 1. (Jika belum, tekan tombol manual mode pada control cabinet 1)'),
(942, 'warming up EDG', 'Pastikan posisi selector switch sebagai berikut:'),
(943, 'warming up EDG', 'Switch (SA 1) pada posisi No Load (posisi 2)'),
(944, 'warming up EDG', 'Switch (SA 2) pada posisi Standby (posisi 2)'),
(945, 'warming up EDG', 'Switch (SA 3) pada posisi Standby (posisi 2)'),
(946, 'warming up EDG', 'Switch (SA 4) pada posisi No Load/Vacancy (posisi 1)'),
(947, 'warming up EDG', 'Pastikan baterai EDG dalam kondisi normal dan posisi ON'),
(948, 'warming up EDG', 'Pastikan Emergency Stop dalam kondisi release'),
(949, 'warming up EDG', 'Pastikan fanbelt fan radiator  dalam kondisi normal'),
(950, 'warming up EDG', 'Pastikan air radiator, bahan bakar, dan minyak pelumas tidak ada kebocoran '),
(951, 'warming up EDG', 'Pastikan level minyak pelumas dalam kondisi normal (diukur menggunakan stick oil meter)'),
(952, 'warming up EDG', 'Periksa level bahan bakar dalam tangki EDG dalam kondisi normal (maksimal 140cm)'),
(953, 'warming up EDG', 'Pastikan level air radiator dalam kondisi normal'),
(954, 'warming up EDG', 'Pastikan filter udara dalam keadaan bersih'),
(955, 'warming up EDG', 'Pastikan daya baterai tidak kurang dari 24 Volt'),
(956, 'warming up EDG', 'PELAKSANAAN PENGETESAN MANUAL EDG:\r\nTekan Tombol Test Mode pada Control cabinet 1 (deepsea monitor)'),
(957, 'warming up EDG', 'Posisikan Switch (SA 1) pada posisi Test Mode (posisi 3)'),
(958, 'warming up EDG', 'Posisikan Switch (SA 2) pada posisi local (posisi 1)'),
(959, 'warming up EDG', 'Posisikan Switch (SA 3) pada posisi Standby (posisi 2)'),
(960, 'warming up EDG', 'Posisikan Switch (SA 4) pada posisi No Load (posisi 1)'),
(961, 'warming up EDG', 'Tekan tombol Start  pada Control cabinet 1 (deepsea monitor)'),
(962, 'warming up EDG', 'STOP PENGETESAN MANUAL EDG:\r\nTekan tombol Stop Mode pada Control Cabinet 1 (deepsea monitor) '),
(963, 'warming up EDG', 'Posisikan Switch (SA 4) pada posisi No Load (posisi 1)'),
(964, 'warming up EDG', 'Pastikan Switch (SA 3) pada posisi Standby (posisi 2)'),
(965, 'warming up EDG', 'Posisikan Switch (SA 2) pada posisi Standby (posisi 2)'),
(966, 'warming up EDG', 'Posisikan Switch (SA 1) pada posisi No Load  (posisi 2)'),
(967, 'warming up EDG', 'Klick PLC REST >> ACK dan MODU REST >> ACK Pada DCS setelah Warming Up EDG'),
(968, 'operasi manual EDG', 'PERSIAPAN, Pastikan posisi Circuit Breaker (CB) di DCS maupun di lokal saat unit akan dioperasikan:\r\nCB01 (Open/warna hijau), CB02 (Closed/warna merah), CB03 (Closed/warna merah), CB04 (Open/warna hijau dan Posisi Rack Out), CB05 (Open/warna hijau dan Posisi Rack Out),  CB11 (Close/warna merah), CB12 (Close/warna merah), CB21 (Close/warna merah), CB22 (Close/warna merah)'),
(969, 'operasi manual EDG', 'Pastikan deepsea monitor dalam kondisi “Manual Mode” pada Control cabinet 1. (Jika belum, tekan tombol manual mode pada control cabinet 1)'),
(970, 'operasi manual EDG', 'Pastikan posisi selector switch sebagai berikut: Switch (SA 1) pada posisi No Load (posisi 2), Switch (SA 2) pada posisi Standby (posisi 2), Switch (SA 3) pada posisi Standby (posisi 2), Switch (SA 4) pada posisi No Load/Vacancy (posisi 1)'),
(971, 'operasi manual EDG', 'Pastikan baterai EDG dalam kondisi normal dan posisi ON'),
(972, 'operasi manual EDG', 'Pastikan Emergency Stop dalam kondisi release'),
(973, 'operasi manual EDG', 'Pastikan fanbelt fan radiator  dalam kondisi normal'),
(974, 'operasi manual EDG', 'Pastikan air radiator, bahan bakar, dan minyak pelumas tidak ada kebocoran '),
(975, 'operasi manual EDG', 'Pastikan level minyak pelumas dalam kondisi normal (diukur menggunakan stick oil meter)'),
(976, 'operasi manual EDG', 'Periksa level bahan bakar dalam tangki EDG dalam kondisi normal (maksimal 140cm)'),
(977, 'operasi manual EDG', 'Pastikan level air radiator dalam kondisi normal'),
(978, 'operasi manual EDG', 'Pastikan filter udara dalam keadaan bersih'),
(979, 'operasi manual EDG', 'Pastikan daya baterai tidak kurang dari 24 Volt'),
(980, 'operasi manual EDG', 'PELAKSANAAN START:\r\nTekan tombol Manual Mode pada deepsea monitor (Control cabinet 1)'),
(981, 'operasi manual EDG', 'Posisikan Switch (SA 1) pada posisi Automatic (posisi 1)'),
(982, 'operasi manual EDG', 'Posisikan Switch (SA 2) pada posisi local (posisi 1)'),
(983, 'operasi manual EDG', 'Posisikan Switch (SA 3) pada posisi Standby (posisi 2)'),
(984, 'operasi manual EDG', 'Posisikan Switch (SA 4) pada posisi Supply Teg. Sesuai kebutuhan. Unit #1 (posisi 2), Unit #1 dan #2 (posisi 3), Unit #2 (posisi 4)'),
(985, 'operasi manual EDG', 'Pastikan CB 12 dan CB 22 dalam kondisi OPEN (Warna Hijau)'),
(986, 'operasi manual EDG', 'Rack-in CB 04 (unit 1) dan CB 05 (unit 2)'),
(987, 'operasi manual EDG', 'Tekan PB Close CB 04 (unit 1) dan CB 05 (unit 2)'),
(988, 'operasi manual EDG', 'Posisikan selector switch ke mode remote'),
(989, 'operasi manual EDG', 'Tekan tombol Start Button pada Control cabinet 1 (deepsea monitor). EDG Start setelah tombol Start Button ditekan'),
(990, 'operasi manual EDG', 'Paralel manual dengan memposisikan CB 01 menjadi CLOSED (Warna Merah)'),
(991, 'operasi manual EDG', 'EDG akan menyuplai tegangan ke MCC Emergency Unit sesuai pilihan di selector SA 4'),
(992, 'operasi manual EDG', 'STOP EDG:\r\nTekan PB Open  CB 01 (Warna Hijau)'),
(993, 'operasi manual EDG', 'Pastikan CB 04 (unit 1) dan CB 05 (unit 2) OPEN ( pastikan lampu indikator Warna Hijau)'),
(994, 'operasi manual EDG', 'Rack out CB 04 (unit 1) dan CB 05 (unit 2)'),
(995, 'operasi manual EDG', 'Tekan PB Close CB 12 (unit 1) dan CB 22 (unit 2) ( pastikan lampu indikator Warna Merah)  '),
(996, 'operasi manual EDG', 'Tekan tombol Stop Mode pada Control Cabinet 1 (deepsea monitor)'),
(997, 'operasi manual EDG', 'Posisikan Switch (SA 4) pada No Load Test/Vacancy (posisi 1)'),
(998, 'operasi manual EDG', 'Pastikan Switch (SA 3) pada posisi Standby (posisi 2)'),
(999, 'operasi manual EDG', 'Posisikan Switch (SA 2) pada posisi Standby (posisi 2)'),
(1000, 'operasi manual EDG', 'Posisikan Switch (SA 1) pada posisi No Load (posisi 2)'),
(1001, 'pengetesan manual EDG', 'PERSIAPAN: Pastikan posisi Circuit Breaker (CB) di DCS maupun di lokal saat unit akan ditest:'),
(1002, 'pengetesan manual EDG', 'CB01 (Open/warna hijau)'),
(1003, 'pengetesan manual EDG', 'CB02 (Closed/warna merah)'),
(1004, 'pengetesan manual EDG', 'CB03 (Closed/warna merah)'),
(1005, 'pengetesan manual EDG', 'CB04 (Open/warna hijau dan Posisi Rack Out)'),
(1006, 'pengetesan manual EDG', 'CB05 (Open/warna hijau dan Posisi Rack Out)'),
(1007, 'pengetesan manual EDG', 'CB11 (Close/warna merah)'),
(1008, 'pengetesan manual EDG', 'CB12 (Close/warna merah)'),
(1009, 'pengetesan manual EDG', 'CB21 (Close/warna merah)'),
(1010, 'pengetesan manual EDG', 'CB22 (Close/warna merah)'),
(1011, 'pengetesan manual EDG', 'Pastikan deepsea monitor dalam kondisi Manual Mode pada Control cabinet 1. (Jika belum, tekan tombol manual mode pada control cabinet 1)'),
(1012, 'pengetesan manual EDG', 'Pastikan posisi selector switch sebagai berikut: Posisikan Switch (SA 1) pada posisi No Load (posisi 2), Posisikan Switch (SA 2) pada posisi Standby (posisi 2), Posisikan Switch (SA 3) pada posisi Standby (posisi 2),  Posisikan Switch (SA 4) pada posisi No Load/Vacancy (posisi 1)'),
(1013, 'pengetesan manual EDG', 'Pastikan baterai EDG dalam kondisi normal dan posisi ON'),
(1014, 'pengetesan manual EDG', 'Pastikan Emergency Stop dalam kondisi release');
INSERT INTO `daftar_pertanyaan` (`id`, `untuk`, `pertanyaan`) VALUES
(1015, 'pengetesan manual EDG', 'Pastikan fanbelt fan radiator  dalam kondisi normal'),
(1016, 'pengetesan manual EDG', 'Pastikan air radiator, bahan bakar, dan minyak pelumas tidak ada kebocoran '),
(1017, 'pengetesan manual EDG', 'Pastikan level minyak pelumas dalam kondisi normal (diukur menggunakan stick oil meter)'),
(1018, 'pengetesan manual EDG', 'Periksa level bahan bakar dalam tangki EDG dalam kondisi normal (maksimal 140cm)    '),
(1019, 'pengetesan manual EDG', 'Pastikan level air radiator dalam kondisi normal  '),
(1020, 'pengetesan manual EDG', 'Pastikan filter udara dalam keadaan bersih'),
(1021, 'pengetesan manual EDG', 'Pastikan daya baterai tidak kurang dari 24 Volt'),
(1022, 'pengetesan manual EDG', 'PELAKSANAAN PENGETESAN:\r\nTekan Tombol Test Mode pada Control cabinet 1 (deepsea monitor)'),
(1023, 'pengetesan manual EDG', 'Posisikan Switch (SA 1) pada posisi Test Mode (posisi 3)'),
(1024, 'pengetesan manual EDG', 'Posisikan Switch (SA 2) pada posisi local (posisi 1)'),
(1025, 'pengetesan manual EDG', 'Posisikan Switch (SA 3) pada posisi Standby (posisi 2)'),
(1026, 'pengetesan manual EDG', 'Posisikan Switch (SA 4) pada posisi No Load (posisi 1)'),
(1027, 'pengetesan manual EDG', 'Tekan tombol Start Button pada Control cabinet 1 (deepsea monitor)'),
(1028, 'pengetesan manual EDG', 'STOP PENGETESAN:\r\nTekan tombol Stop Mode pada Control Cabinet 1 (deepsea monitor) '),
(1029, 'pengetesan manual EDG', 'Posisikan Switch (SA 4) pada posisi No Load (posisi 1)'),
(1030, 'pengetesan manual EDG', 'Pastikan Switch (SA 3) pada posisi Standby (posisi 2)'),
(1031, 'pengetesan manual EDG', 'Posisikan Switch (SA 2) pada posisi Standby (posisi 2)'),
(1032, 'pengetesan manual EDG', 'Posisikan Switch (SA 1) pada posisi No Load  (posisi 2)'),
(1033, 'IN rack OUT switchgear 400 V', 'PELAKSANAAN,\r\nRack Out Switchgear 400 V:'),
(1034, 'IN rack OUT switchgear 400 V', 'Posisikan switch ke mode Lokal '),
(1035, 'IN rack OUT switchgear 400 V', 'Tekan tombol CB Open (Tombol warna hijau)'),
(1036, 'IN rack OUT switchgear 400 V', 'Tekan tombol swicth vacum pada breaker untuk membuka shutter worm shaft'),
(1037, 'IN rack OUT switchgear 400 V', 'Masukan levering hendell kedalam shutter worm shaft dan putar levering handle berlawanan jarum jam sampai menunjukan Trend Disconnect'),
(1038, 'IN rack OUT switchgear 400 V', 'Turunkan MCB pada panel swicthgear (Off)'),
(1039, 'IN rack OUT switchgear 400 V', 'Rack In Switchgear 400 V:'),
(1040, 'IN rack OUT switchgear 400 V', 'Posisikan selector switch ke mode Disconnect position sampai lampu indikator breaker mati (Putar 90’ berlawanan arah jarum jam)'),
(1041, 'IN rack OUT switchgear 400 V', 'Posisikan selector switch ke mode Remove position (Putar 90’ berlawanan arah jarum jam)'),
(1042, 'IN rack OUT switchgear 400 V', 'Tarik breaker sampai connector lepas'),
(1048, 'IN rack OUT switchgear 6 KV', 'PERSIAPAN: Pastikan peralatan dilokal dalam keadaan Stop Operasi'),
(1049, 'IN rack OUT switchgear 6 KV', 'PELAKSANAAN RACK OUT:\r\n'),
(1050, 'IN rack OUT switchgear 6 KV', 'Pastikan peralatan dilokal dalam keadaan Stop Operasi'),
(1051, 'IN rack OUT switchgear 6 KV', 'Tekan tombol CB Open (Tombol warna hijau)'),
(1052, 'IN rack OUT switchgear 6 KV', 'Rack out breaker dengan cara memutar levering handel ke kiri (Berlawanan arah jarum jam)'),
(1053, 'IN rack OUT switchgear 6 KV', 'Turunkan MCB yang ada didalam panel cubicel (Off)'),
(1054, 'rack IN switchgear 400 V', 'PERSIAPAN: Pastikan peralatan dilokal tidak operasi  (tidak ada pemeliharaan)'),
(1055, 'rack IN switchgear 400 V', 'PELAKSANAAN: Rack In Switchgear 400 V Tipe 1, Cara Pertama Rack In Swichgear 400 V:'),
(1056, 'rack IN switchgear 400 V', 'Naikkan MCB yang ada didalam panel cubicel (On)'),
(1057, 'rack IN switchgear 400 V', 'Tekan tombol swicth vacum pada breaker untuk membuka shutter worm shaft'),
(1058, 'rack IN switchgear 400 V', 'Masukan levering handle ke worm shaft dan putar levering handle   ke kanan searah jarum jam sampai menunjukan Trend Connec'),
(1059, 'rack IN switchgear 400 V', 'Tekan tombol  Close (Tombol warna merah)'),
(1060, 'rack IN switchgear 400 V', 'Posisikan selector switch ke mode Remote (Putar ke kanan)'),
(1061, 'rack IN switchgear 400 V', 'Rack In Switchgear 400 V Tipe 2'),
(1062, 'rack IN switchgear 400 V', 'Posisikan selector switch ke mode Disconnection Position'),
(1063, 'rack IN switchgear 400 V', 'Dorong breaker ke dalam '),
(1064, 'rack IN switchgear 400 V', 'Posisikan selector switch ke mode Connected Position sampai lampu indicator menyala'),
(1065, 'rack IN switchgear 6 KV', 'PERSIAPAN: Pastikan peralatan dilokal sudah siap (tidak ada pemeliharaan)'),
(1066, 'rack IN switchgear 6 KV', 'PELAKSANAAN PENGOPERASIAN: Naikkan semua MCB dalam Panel cubicel (On) '),
(1067, 'rack IN switchgear 6 KV', 'Posisikan selector mode ke mode Lokal'),
(1068, 'rack IN switchgear 6 KV', 'Rack In breaker dengan cara memutar levering handel ke kanan (Searah jarum jam)'),
(1069, 'rack IN switchgear 6 KV', 'Tekan tombol CB Close (untuk pengoprasian mode lokal)'),
(1070, 'rack IN switchgear 6 KV', 'Posisikan selector switch ke mode Remote (Posisi Remote untuk pengoprasian peralatan  melalui DCS dan Posisi Lokal untuk pengoprasian peralatan melalui panel Lokal)'),
(1071, 'warming up auxilliary boiler', 'PENGECEKAN UMUM: Tidak ada pekerjaan di area lokal auxilliary  boiler'),
(1072, 'warming up auxilliary boiler', 'Power auxilliary dalam kondisi standby, tidak ada alarm yang aktiv pada panel blower'),
(1073, 'warming up auxilliary boiler', 'Valve inlet dan over flow supply HSD pada posisi open'),
(1074, 'warming up auxilliary boiler', 'Valve drain dan steam release close'),
(1075, 'warming up auxilliary boiler', 'Level drum diatas -100 dan jika masih kurang operasikan feed water pump untik menambah level drum'),
(1076, 'warming up auxilliary boiler', 'Reset MFT pada display fuel system'),
(1077, 'warming up auxilliary boiler', 'Pastikan system chemical standby'),
(1078, 'warming up auxilliary boiler', 'Tidak ada MFT yang aktiv'),
(1079, 'warming up auxilliary boiler', 'Outlet pressure pada 0.85 MPa'),
(1080, 'warming up auxilliary boiler', 'SISTEM PELUMASAN DAN BAHAN BAKAR:\r\nTidak ada kebocoran pada sistem pelumasan (oil)'),
(1081, 'warming up auxilliary boiler', 'Pressure fuel oil 2.2 - 2.5 MPa'),
(1082, 'warming up auxilliary boiler', 'Pressure return fuel oil 0.2 - 0.4 MPa'),
(1083, 'warming up auxilliary boiler', 'BATASAN OPERASI:\r\nWater tank 120 cm'),
(1084, 'warming up auxilliary boiler', 'Level drum -+ 50 mm'),
(1085, 'warming up auxilliary boiler', 'Main steam Pressure 0.8 - 1.0 MPa'),
(1086, 'warming up auxilliary boiler', 'Main steam temperature 280 °C - 300 °C'),
(1087, 'warming up auxilliary boiler', 'Kualitas pH 7'),
(1088, 'feeding material bed', 'MELALUI HOPPER (KETIKA UNIT TIDAK OPERASI): operasikan star-up bed material A dan B (ketika material bed kurang dan ditambah menggunakan gerobak untuk dimasukkan di hopper) \"lokal\".'),
(1089, 'feeding material bed', 'operasikan motor supply material bed dari hopper ke furnace.'),
(1090, 'feeding material bed', 'MELALUI BOTTOM ASH SILO (KETIKA UNIT OPERASI): operasikan bucket elevator A atau B (untuk memastikan sudah tidak ada material bed/ash di line tersebut)'),
(1091, 'feeding material bed', 'operasikan chain bucket A atau B)'),
(1092, 'feeding material bed', 'level bottom ash terpenuhi (ada)'),
(1093, 'feeding material bed', 'pastikan valve manual compressor yang ke transmit silo dan cyclone posisi open'),
(1094, 'feeding material bed', 'operasikan motor ST OPR BED 2ND STG CNV'),
(1095, 'feeding material bed', 'operasikan motor ST OPR BED 1ST STG CNV'),
(1096, 'feeding material bed', 'operasikan motor ST OPR BED MTL SYS VBR'),
(1097, 'feeding material bed', 'operasikan motor BED MTL SYS '),
(1098, 'feeding material bed', 'open valve BED MIL SYSTEM UNLOADING (untuk mengisi material bed dari bottom ash silo ke hopper)'),
(1099, 'feeding material bed', 'close valve BED MIL SYSTEM UNLOADING (apabila level hopper indikasi high)'),
(1100, 'feeding material bed', 'stop motor BED MTL SYS'),
(1101, 'feeding material bed', 'PENGISIAN KE TRANSMIT SILO: open valve BED TRNS SILO BLNC '),
(1102, 'feeding material bed', 'open valve BED TRNS SILO INLET <5 detik'),
(1103, 'pengatur beban', 'Setting beban dengan cara klik Control Mode >Pilih salah satu mode yang diinginkan'),
(1104, 'pengatur beban', 'TP Target (pengaturan berdasarkan pressure MSP)'),
(1105, 'pengatur beban', 'GV Target (pengaturan berdasarkan bukaan GV)'),
(1106, 'pengatur beban', 'LOAD Target (pengaturan hanya dengan berdasarkan beban yang diinginkan)'),
(1107, 'pengatur beban', '*ketika memilih salah satu pilihan diatas maka pada kolom menjadi warna merah'),
(1108, 'pengatur beban', 'Close kolom Control Mode >lanjut dengan klik Control Setting'),
(1109, 'pengatur beban', 'Klik TP Target>masukkan nilai pressure yang diinginkan  > lalu klik Enter (jika menggunakan mode ini)'),
(1110, 'pengatur beban', 'Klik GV Target>pada menu Valve Post Target klik ↑ untuk menambah bukaan GV dan klik ↓untuk mengurangi bukaan GV (jika menggunakan mode ini)'),
(1111, 'pengatur beban', 'Klik Load Target> Masukkan Beban yang diinginkan >klik Enter lalu kllik RUN(jika menggunakan mode ini)'),
(1112, 'fire fighting system', 'PERSIAPAN START: Pastikan level Raw Water Tank dalam keadaan normal (Max=13,9M / Min=3.5M)'),
(1113, 'fire fighting system', 'Pastikan valve outlet Raw Water Tank posisi Open'),
(1114, 'fire fighting system', 'JOCKEY PUMP: Pastikan JOCKEY PUMP sudah terenergize'),
(1115, 'fire fighting system', 'Pastikan valve inlet dan out let JOCKEY PUMP apakah dalam keadaan terbuka/tertutup,Pastikan valve keadaan terbuka'),
(1116, 'fire fighting system', 'Atur start Jockey Pump B pada pressure 10,5 bar dan atur stop pada pressure 12,0 bar'),
(1117, 'fire fighting system', 'Atur start Jockey Pump A pada pressure 10,0 bar dan atur stop pada pressure 12,0 bar'),
(1118, 'fire fighting system', 'MAIN PUMP: Periksa Main Fire Pump  pastikan dalam keadaan normal/Standby'),
(1119, 'fire fighting system', 'Pastikan valve inlet dan outlet Main Pump dalam keadaan terbuka'),
(1120, 'fire fighting system', 'Atur star Main Fire Pump Pada pressure 9.0 bar dan stop pada 14,0 bar'),
(1121, 'fire fighting system', 'DIESEL FIRE PUMP: Pastikan Diesel Fire Pump dalam keadaan normal/standby'),
(1122, 'fire fighting system', 'Pastikan level oli dalam keadaan normal'),
(1123, 'fire fighting system', 'Pastikan level tangki bahan bakar dalam keadaan normal'),
(1124, 'fire fighting system', 'Pastikan battery dalam kondisi normal'),
(1125, 'fire fighting system', 'Atur pressure trenduser Start pada 6,0bar'),
(1126, 'fire fighting system', 'PELAKSANAAN START AUTO JOCKEY PUMP: Posisikan Switch Jockey pump A controller pada posisi Auto'),
(1127, 'fire fighting system', 'Posisikan Switch Jockey pump B controller pada posisi Auto'),
(1128, 'fire fighting system', 'Jockey Pump B akan beroperasi secara otomatis apabila Pressure mencapai  10,5bar dan Stop secara otomatis apabila pressure mencapai 12,0bar'),
(1129, 'fire fighting system', 'Jockey Pump A akan beroperasi secara otomatis apabila Pressure mencapai 10,0bar dan Stop secara otomatis apabila pressure mencapai 12,0bar'),
(1130, 'fire fighting system', 'PELAKSANAAN START MANUAL JOCKEY PUMP: Posisikan Switch Jockey pump controller pada posisi Hand'),
(1131, 'fire fighting system', 'Pastikan Jockey Pump beroperasi dengan Normal'),
(1132, 'fire fighting system', 'PELAKSAAN START AUTO MAIN FIRE PUMP: Posisikan Switch Main Fire Pump controller pada posisi Auto'),
(1133, 'fire fighting system', 'Pastikan Main Fire Pump beroperasi dengan Normal'),
(1134, 'fire fighting system', 'Main Fire Pump akan beroperasi secara otomatis apabila Pressure mencapai 9,0bar dan Stop secara otomatis apabila pressure mencapai 14,0bar'),
(1135, 'fire fighting system', 'PELAKSAAN START MANUAL MAIN FIRE PUMP: Posisikan Switch Main Fire Pump controller pada posisi Manual '),
(1136, 'fire fighting system', 'Tekan tombol Start (Tombol warna hijau pada panel local)'),
(1137, 'fire fighting system', 'Pastikan Main Fire Pump beroperasi dengan normal'),
(1138, 'fire fighting system', 'PELAKSANAAN START AUTO DIESEL FIRE PUMP: Posisikan selecktor switch pada  posisi Auto '),
(1139, 'fire fighting system', 'Pastikan Diesel Fire Pump beroperasi dengan Normal'),
(1140, 'fire fighting system', 'Main Pump akan beroperasi secara otomatis apabila Pressure mencapai 6,0bar dan Stop apabila tombol Push Button Stop ditekan atau posisikan Selector Switch pada posisi OFF'),
(1141, 'fire fighting system', 'PELAKSANAAN START MANUAL DIESEL FIRE PUMP: Posisikan selecktor switch pada  posisi Manual'),
(1142, 'fire fighting system', 'Tekan Push Button Crank#1 atau Push Button Crank#2'),
(1143, 'fire fighting system', 'Pastikan Diesel Fire Pump beroperasi dengan Normal'),
(1144, 'AC central', 'PERSIAPAN: Pastikan peralatan stanby (power rack in)'),
(1145, 'AC central', 'Pastikan tidak ada pekerjaan.'),
(1146, 'AC central', 'Pastikan tidak ada alarm yang aktif (jika ada direset)'),
(1147, 'AC central', 'Jika tulisan display lokal, tekan tulisan “Local” jika mau pengoperasian mode remote, '),
(1148, 'AC central', 'Untuk pengoperasian mode remote koordinasikan pada operator lokal alat bantu'),
(1149, 'AC central', 'Pilih menu Air Conditioner pada Display DCS Common'),
(1150, 'AC central', 'Pilih salah satu simbol AC Central yang standby atau siap untuk dioperasikan'),
(1151, 'AC central', 'Setelah muncul mode pengoperasian klik START lalu ack'),
(1152, 'AC central', 'Koordinasikan dengan operator lokal alat bantu kondisi AC sudah start'),
(1153, 'AC central', 'PENGOPERASIAN LOKAL: Untuk pengoperasian mode lokal koordinasikan pada operator DCS bahwa pengoperasian lewat lokal'),
(1154, 'AC central', 'Jika tulisan display remote, tekan tulisan “Remote” jika mau pengoperasian mode lokal'),
(1155, 'AC central', 'Tekan “local on”, AC Central sudah start'),
(1156, 'AC central', 'Setting range temperatur'),
(1157, 'AC central', 'PELAKSANAAN STOP DCS: Buka menu DCS Air Conditioner'),
(1158, 'AC central', 'Pilih salah satu simbol AC Central yang mau di stop'),
(1159, 'AC central', 'Klik stop kemudian ack, pastikan AC Central stop dilokal maupun DCS'),
(1160, 'AC central', 'PELAKSANAAN STOP LOKAL: Tekan “lokal off”, AC central stop');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban`
--

CREATE TABLE `jawaban` (
  `id` int(11) NOT NULL,
  `namaPeralatan` varchar(50) NOT NULL,
  `jawaban1` varchar(5) NOT NULL,
  `jawaban2` varchar(5) NOT NULL,
  `jawaban3` varchar(5) NOT NULL,
  `jawaban4` varchar(5) NOT NULL,
  `jawaban5` varchar(5) NOT NULL,
  `jawaban6` varchar(5) NOT NULL,
  `jawaban7` varchar(5) NOT NULL,
  `jawaban8` varchar(5) NOT NULL,
  `jawaban9` varchar(5) NOT NULL,
  `jawaban10` varchar(5) NOT NULL,
  `jawaban11` varchar(5) NOT NULL,
  `jawaban12` varchar(5) NOT NULL,
  `jawaban13` varchar(5) NOT NULL,
  `jawaban14` varchar(5) NOT NULL,
  `jawaban15` varchar(5) NOT NULL,
  `jawaban16` varchar(5) NOT NULL,
  `jawaban17` varchar(5) NOT NULL,
  `jawaban18` varchar(5) NOT NULL,
  `jawaban19` varchar(5) NOT NULL,
  `jawaban20` varchar(5) NOT NULL,
  `jawaban21` varchar(5) NOT NULL,
  `jawaban22` varchar(5) NOT NULL,
  `jawaban23` varchar(5) NOT NULL,
  `jawaban24` varchar(5) NOT NULL,
  `jawaban25` varchar(5) NOT NULL,
  `jawaban26` varchar(5) NOT NULL,
  `jawaban27` varchar(5) NOT NULL,
  `jawaban28` varchar(5) NOT NULL,
  `jawaban29` varchar(5) NOT NULL,
  `jawaban30` varchar(5) NOT NULL,
  `jawaban31` varchar(5) NOT NULL,
  `jawaban32` varchar(5) NOT NULL,
  `jawaban33` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jawaban`
--

INSERT INTO `jawaban` (`id`, `namaPeralatan`, `jawaban1`, `jawaban2`, `jawaban3`, `jawaban4`, `jawaban5`, `jawaban6`, `jawaban7`, `jawaban8`, `jawaban9`, `jawaban10`, `jawaban11`, `jawaban12`, `jawaban13`, `jawaban14`, `jawaban15`, `jawaban16`, `jawaban17`, `jawaban18`, `jawaban19`, `jawaban20`, `jawaban21`, `jawaban22`, `jawaban23`, `jawaban24`, `jawaban25`, `jawaban26`, `jawaban27`, `jawaban28`, `jawaban29`, `jawaban30`, `jawaban31`, `jawaban32`, `jawaban33`) VALUES
(31, 'warming up auxilliary boiler', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 'feed water pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', '', '', '', ''),
(36, 'warming up auxilliary boiler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, 'close circulating water pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', ''),
(38, 'close circulating water pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', ''),
(39, 'close circulating water pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', ''),
(40, 'close circulating water pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', ''),
(41, 'vacum pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(42, 'condensate extrantion pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', ''),
(43, 'condensate extrantion pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', ''),
(44, 'vacum pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(45, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, 'close circulating water pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', ''),
(48, 'close circulating water pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', ''),
(49, 'close circulating water pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', ''),
(50, 'rubber ball cleaning', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(51, 'condensate extrantion pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', ''),
(52, 'condensate extrantion pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', ''),
(53, 'vacum pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(54, 'coal feeder', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', ''),
(55, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, 'C.O. EH oil pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, 'C.O. EH oil pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, 'C.O. EH oil pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, 'AC oil pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(60, 'jacking oil pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(61, 'turning gear', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(62, 'C.O. EH oil pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(63, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(64, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(65, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(66, 'high primary fluidized fan', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', ''),
(67, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(68, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(69, 'close circulating water pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', ''),
(70, 'close circulating water pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', ''),
(71, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(72, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', '', '', '', '', '', '', '', '', '', '', '', ''),
(73, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', '', '', '', '', '', '', '', '', '', '', '', ''),
(74, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', '', '', '', '', '', '', '', '', '', '', '', ''),
(75, 'vacum pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(76, 'vacum pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(77, 'condensate extrantion pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', ''),
(78, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(79, 'supply oil pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', '', '', '', '', '', ''),
(80, 'induced draft fan', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', '', '', '', '', '', '', '', '', '', '', ''),
(81, 'high primary fluidized fan', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', '', '', '', '', ''),
(82, 'primary air fan', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', '', '', '', ''),
(83, 'lower burner', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(84, 'coal feeder', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', ''),
(85, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(86, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(87, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(88, 'high primary fluidized fan', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', ''),
(89, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(90, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(91, 'C.O. EH oil pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(92, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(93, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(94, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(95, 'conveying air compressor', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(96, 'conveying air compressor', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(97, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(98, 'close circulating water pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', ''),
(99, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(100, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(101, 'vacum pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(102, 'warming up auxilliary boiler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(103, 'C.O. EH oil pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(104, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(105, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(106, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(107, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(108, 'vacum pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(109, 'condensate extrantion pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', ''),
(110, 'vacum pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(111, 'vacum pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(112, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(113, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(114, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(115, 'C.O. EH oil pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(116, 'C.O. EH oil pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(117, 'C.O. EH oil pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(118, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(119, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(120, 'warming up auxilliary boiler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(121, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(122, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(123, 'vacum pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(124, 'condensate extrantion pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', ''),
(125, 'vacum pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(126, 'condensate extrantion pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', ''),
(127, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(128, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(129, 'warming up EDG', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', ''),
(130, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(131, 'vacum pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(132, 'vacum pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(133, 'C.O. EH oil pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(134, 'warming up auxilliary boiler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(135, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(136, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(137, 'slagcooler', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(138, 'sootblower', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(139, 'close circulating water pump', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', 'ya', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komen`
--

CREATE TABLE `komen` (
  `id` int(11) NOT NULL,
  `namaPeralatan` varchar(50) NOT NULL,
  `komen1` varchar(50) NOT NULL,
  `komen2` varchar(50) NOT NULL,
  `komen3` varchar(50) NOT NULL,
  `komen4` varchar(50) NOT NULL,
  `komen5` varchar(50) NOT NULL,
  `komen6` varchar(50) NOT NULL,
  `komen7` varchar(50) NOT NULL,
  `komen8` varchar(50) NOT NULL,
  `komen9` varchar(50) NOT NULL,
  `komen10` varchar(50) NOT NULL,
  `komen11` varchar(50) NOT NULL,
  `komen12` varchar(50) NOT NULL,
  `komen13` varchar(50) NOT NULL,
  `komen14` varchar(50) NOT NULL,
  `komen15` varchar(50) NOT NULL,
  `komen16` varchar(50) NOT NULL,
  `komen17` varchar(50) NOT NULL,
  `komen18` varchar(50) NOT NULL,
  `komen19` varchar(50) NOT NULL,
  `komen20` varchar(50) NOT NULL,
  `komen21` varchar(50) NOT NULL,
  `komen22` varchar(50) NOT NULL,
  `komen23` varchar(50) NOT NULL,
  `komen24` varchar(50) NOT NULL,
  `komen25` varchar(50) NOT NULL,
  `komen26` varchar(50) NOT NULL,
  `komen27` varchar(50) NOT NULL,
  `komen28` varchar(50) NOT NULL,
  `komen29` varchar(50) NOT NULL,
  `komen30` varchar(50) NOT NULL,
  `komen31` varchar(50) NOT NULL,
  `komen32` varchar(50) NOT NULL,
  `komen33` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komen`
--

INSERT INTO `komen` (`id`, `namaPeralatan`, `komen1`, `komen2`, `komen3`, `komen4`, `komen5`, `komen6`, `komen7`, `komen8`, `komen9`, `komen10`, `komen11`, `komen12`, `komen13`, `komen14`, `komen15`, `komen16`, `komen17`, `komen18`, `komen19`, `komen20`, `komen21`, `komen22`, `komen23`, `komen24`, `komen25`, `komen26`, `komen27`, `komen28`, `komen29`, `komen30`, `komen31`, `komen32`, `komen33`) VALUES
(31, 'warming up auxilliary boiler', '', '', '', 'close ketika pressure 0.05 MPa', '', '', '', '', '', '', '0.85 - 0.9 MPa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 'slagcooler', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, 'sootblower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, 'slagcooler', '', '', '', '0.6 mpa', '', '4.7', '', '', '', '', '', '', '13.0 di stop krn PT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 'feed water pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, 'warming up auxilliary boiler', '', '', '', '', '', '', '', '', '', '', '1.85 mpa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, 'close circulating water pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, 'close circulating water pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, 'close circulating water pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 'close circulating water pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, 'vacum pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, 'condensate extrantion pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, 'condensate extrantion pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, 'vacum pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, 'sootblower', '', '', '', '', '', 'Kondisi Open (Waiting condition)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, 'slagcooler', '', '', '', '', '', '', '', '', '', '', 'Slag cooler A distart', 'Valve discharge sudah open', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, 'close circulating water pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(48, 'close circulating water pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(49, 'close circulating water pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(50, 'rubber ball cleaning', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(51, 'condensate extrantion pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(52, 'condensate extrantion pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(53, 'vacum pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, 'coal feeder', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(55, 'slagcooler', '', '', '', '', '', '', '', '', '', '', '', 'Standby open', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, 'C.O. EH oil pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, 'C.O. EH oil pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, 'C.O. EH oil pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, 'AC oil pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(60, 'jacking oil pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(61, 'turning gear', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(62, 'C.O. EH oil pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(63, 'slagcooler', '', '', '', '', '', '', '', '', 'Bucket Elevator 2A', 'Chain Bucket 2A', 'Slag Cooler 2A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(64, 'slagcooler', '', '', '', '', '', 'Level bottom ash 4.5 m', '', '', '', '', 'Slag cooler di operasi', 'Posisi valve stand by open', '13.0 Kpa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(65, 'slagcooler', '', '', '', '', '', 'Level bottom ash 3.5 M', 'Pelaksanaan start dari shift sebelumnya', '', 'Pelaksanaan start dari shift sebelumnya', 'Pelaksanaan start dari shift sebelumnya', 'Pelaksanaan start dari shift sebelumnya', 'Discharge valve stand by open', 'Stop Slag cooler di pressure wind box 13.3 Kpa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(66, 'high primary fluidized fan', '', '', '', 'Level pelumas sebelum start 60%', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Change over HPFF', '', '', '', '', '', '', '', '', '', '', '', ''),
(67, 'slagcooler', '', '', '', '', '', '', '', '', 'Bucket Elevator 2A', 'Chain Bucket 2A', 'Slag Cooler 2A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(68, 'slagcooler', '', '', '', '', '', 'Level bottom ash 3.3 M', '', '', 'Menggunakan elevator 2A', 'Menggunakan chain bucket 2A', 'Slag cooler 2A dioperasikan', 'Discharge valve stand by open', 'Stop slag cooler di pressure 13.1 Kpa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(69, 'close circulating water pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(70, 'close circulating water pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(71, 'slagcooler', '', '', '', '', '', 'Level bottom ash 3.7 m', '', '', '', '', 'Mengoperasikan Slag cooler 2A', 'Valve stand by open', 'Sto di pressure 13.3 Kpa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(72, 'sootblower', '', '', '', '', '', '', '', '', '', '', 'MST : 528°C\r\nExhaust temp : 118°C', '', '', '', '', 'Pelaksanaan Stop dilanjutkan shift selanjutnya', 'Pelaksanaan Stop dilanjutkan shift selanjutnya', 'Pelaksanaan Stop dilanjutkan shift selanjutnya', 'Pelaksanaan Stop dilanjutkan shift selanjutnya', '', 'Sootblower dilakukan auto', '', '', '', '', '', '', '', '', '', '', '', ''),
(73, 'sootblower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Melaksanakan start sootblower, Sootblower dilanjut', 'Melaksanakan start sootblower, Sootblower dilanjut', 'Melaksanakan start sootblower, Sootblower dilanjut', 'Melaksanakan start sootblower, Sootblower dilanjut', 'Melaksanakan start sootblower, Sootblower dilanjut', 'Melaksanakan start sootblower, Sootblower dilanjut', '', '', '', '', '', '', '', '', '', '', '', ''),
(74, 'sootblower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pelaksanaan Stop sootblower dilanjut shift selanju', 'Pelaksanaan Stop sootblower dilanjut shift selanju', 'Pelaksanaan Stop sootblower dilanjut shift selanju', 'Pelaksanaan Stop sootblower dilanjut shift selanju', 'Pelaksanaan Stop sootblower dilanjut shift selanju', 'Pelaksanaan Stop sootblower dilanjut shift selanju', '', '', '', '', '', '', '', '', '', '', '', ''),
(75, 'vacum pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(76, 'vacum pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(77, 'condensate extrantion pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(78, 'slagcooler', '', '', '', '', '', '', '', '', '', '', '', 'Sudah stand by open', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(79, 'supply oil pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(80, 'induced draft fan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(81, 'high primary fluidized fan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(82, 'primary air fan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(83, 'lower burner', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(84, 'coal feeder', '', '', '', '', 'Level bunker 9 m', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(85, 'slagcooler', '', '', '', '', '', 'Level bottom ash 3.5 m', '', '', '', '', 'Menggunakan slag cooler A', 'Valve stand by open', 'Stop 13.0 kpa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(86, 'sootblower', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Start pukul 16.47 Wita', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(87, 'sootblower', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Start pukul 16.47 Wita', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(88, 'high primary fluidized fan', '', '', '', 'Level pelumas sisi fan 100%\r\nLevel pelumas sisi mo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Melakukan Change over rutin saat unit operasi', '', '', '', '', '', '', '', '', '', '', '', ''),
(89, 'slagcooler', '', '', '', '', '', 'Level bottom ash silo 3.7 M', '', '', '', '', 'Mengoperasikan Slag cooler 1A', 'Valve stand by open', 'Stop di pressure 13.3 Kpa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(90, 'slagcooler', '', '', '', '', '', '', '', '', '', '', '', 'Sudah standby open', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(91, 'C.O. EH oil pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(92, 'slagcooler', '', '', '', '', '', '', '', '', '', '', 'Slagcooler 2a', 'Sudah standby open', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(93, 'slagcooler', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(94, 'slagcooler', '', '', '', '', '', '4.1 Meter', '', '', '', '', 'Slag Cooler 2A Standby', 'Standby Open', '', '13.3 Kpa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(95, 'conveying air compressor', '', '', '', '', '', '', '', '', 'Suara normal', 'Pressure normal 0.72 MPa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(96, 'conveying air compressor', '', '', '', '', '', '', '', '', 'Suara normal', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(97, 'slagcooler', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(98, 'close circulating water pump', 'Ya', 'Ya', 'Ya', 'Ya', 'Ya', 'Ya', 'Ya', 'Ya', 'Ya', 'Ya', 'Ya', 'Ya', 'Ya', 'Ya', 'Ya', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', '', '', '', '', ''),
(99, 'slagcooler', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pressure Windbox Hunting-hunting ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(100, 'sootblower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(101, 'vacum pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(102, 'warming up auxilliary boiler', '', '', '', '', '', '', '', '', '', '', 'Pressure 1.85 mpa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(103, 'C.O. EH oil pump', '', '', '', '', '', '', '', '', '', '09:19 EH oil pump 2A start', '', '', '', '', 'Peralatan tidak di CO', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(104, 'sootblower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(105, 'slagcooler', '', '', '', '', '', '', '', '', '', '', 'Slag cooler A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(106, 'slagcooler', '', '', '', '', '', '3.7 meter', '', '', '', '', 'Slag Cooler A, B Standby', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(107, 'sootblower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(108, 'vacum pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(109, 'condensate extrantion pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(110, 'vacum pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(111, 'vacum pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(112, 'slagcooler', '', '', '', 'Pressure 0.650 mpa', '', '', '', '', '', '', '2 B', 'Sudah standby open', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(113, 'slagcooler', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(114, 'slagcooler', '', '', '', '', '', '', '', '', '', '', '', 'Standby open saat kondisi unit operasi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(115, 'C.O. EH oil pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(116, 'C.O. EH oil pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'EH oil pump B', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(117, 'C.O. EH oil pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(118, 'sootblower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(119, 'sootblower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(120, 'warming up auxilliary boiler', '', '', '', '', '', '', '', '', '', '', '1.85 MPa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(121, 'sootblower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(122, 'sootblower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(123, 'vacum pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(124, 'condensate extrantion pump', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CEP A', '', 'CEP B', '', '', ''),
(125, 'vacum pump', '', '', '', '80 mm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Jadwal change over rutin', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(126, 'condensate extrantion pump', '', '', '', '', '', '', '', '', 'Tidak di open karena pressure pada CEP yang start ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(127, 'sootblower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Otomatis Open', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(128, 'sootblower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(129, 'warming up EDG', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(130, 'sootblower', '', '', '', '', '', '', '', '', '', '', 'Long &amp; Half', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(131, 'vacum pump', '', '', '', 'Separator normal dan sudah di flashing', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(132, 'vacum pump', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Vacum pump A stop lebih dari 14 hari ', 'Ok', 'Ok', 'Ok', '', '', '', '', '', '', '', '', '', '', ''),
(133, 'C.O. EH oil pump', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', 'Ok', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(134, 'warming up auxilliary boiler', '', '', '', 'Drain diclose pada saat MSP 0.5 Mpa\r\nRelease diclo', '', '', '', '', '', '', 'Pressure fuel oil 2.2 Mpa', '0.4 Mpa', '', '', '1.0 Mpa', '280°C', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(135, 'sootblower', '', '', '', '', '', '', '', '', 'Saat temp. Outlet mencapai 200°C, nilai input akan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(136, 'slagcooler', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(137, 'slagcooler', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(138, 'sootblower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(139, 'close circulating water pump', 'Tidak ada', 'Terack in', '', '2250', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `limas`
--

CREATE TABLE `limas` (
  `id` int(11) NOT NULL,
  `diinput_oleh` varchar(30) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `namaPeralatan` varchar(50) NOT NULL,
  `area` varchar(30) NOT NULL,
  `saran` varchar(255) NOT NULL,
  `fotoSebelum` varchar(100) NOT NULL,
  `fotoSetelah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `limas`
--

INSERT INTO `limas` (`id`, `diinput_oleh`, `tanggal`, `namaPeralatan`, `area`, `saran`, `fotoSebelum`, `fotoSetelah`) VALUES
(11, 'muhammad irfan', '2021-05-17 16:30:00', 'Slagcooler 1A', 'Lantai dasar', '- Peralatan standby', '60ab9deb0e072.jpg', '60ab9deb0e1ee.jpg'),
(12, 'muhammad irfan', '2021-05-17 16:50:00', 'Slagcooler 1A', 'Lantai dasar', 'Peralatan standby', '60aba3ae606a2.jpg', '60aba3ae608f4.jpg'),
(13, 'yoyong herawan', '2021-05-24 16:00:00', 'Coal Feeder 2A', 'Boiler', '', '', ''),
(15, 'muhlis', '2021-01-02 10:30:00', 'Travelling screen D', 'Intake', '', '60b22ad161ce8.jpg', '60b22ad161f58.jpg'),
(16, 'muhlis', '2021-01-02 10:30:00', 'Travelling screen D', 'Intake', '', '60b22b0b71ff1.jpg', '60b22b0b72169.jpg'),
(17, 'muhlis', '2021-01-01 10:30:00', 'Travelling screen C', 'Intake', '', '60b22b3bab31e.jpg', '60b22b3bab532.jpg'),
(19, 'bakri wahid', '2021-06-05 17:00:00', 'SB B1 - SB B3', 'Lantai 5 stengah Boiler #1', 'Mempertahankan konsisten 5S', '60bb5b4e226b8.jpeg', '60bb5b4e2289c.jpeg'),
(20, 'andi rizal bangsawan', '2021-06-07 08:20:00', 'Vacuum Pump A unit 2', 'Turbin lt. 1', 'Peralatan dalam kondisi stand by', '60bd67b3b1adf.jpg', '60bd67b3b260f.jpg'),
(21, 'muhammad irfan', '2021-06-07 15:30:00', 'Sootblower B9, B10, B11, B12 Unit 2', 'Boiler lantai 4.5', 'Peralatan standby\r\n', '60bddbf72fdbb.jpg', '60bddbf730103.jpg'),
(22, 'supriyanto rante', '2021-06-08 11:55:00', 'Sootblower B13-B16', 'Lantai 4', 'Untuk 5S diArea Sootblower cukup dilakukan 1 atau 2 Sootblower sja ', '60beeb1ad28e7.jpg', '60beeb1ad2c0f.jpg'),
(23, 'eldo lubaya tomo', '2021-06-11 05:58:00', 'Sootblower B25, B26, B27, dan B28 ', 'boiler unit 2 lantai 2', '', '60c333182d9d9.jpg', '60c333182dd19.jpg'),
(24, 'eldo lubaya tomo', '2021-06-11 06:05:00', 'Sootblower B25, B26, B27, dan B28 ', 'boiler unit 2 lantai 2', '', '60c334d59cc51.jpg', '60c334d59ceca.jpg'),
(25, 'muhlis', '2021-06-17 15:30:00', 'LP Drain Pump B #1', 'Ground floor Turbin #1', '', '60cc32604901e.jpg', '60cc32604923d.jpg'),
(26, 'muhlis', '2021-06-20 15:00:00', 'LP Heater 5 ', 'Lantai 1½ Turbin #2', '', '60cf34d199702.jpg', '60cf34d199a64.jpg'),
(27, 'muhammad irfan', '2021-07-01 16:58:00', 'Coal Feeder 1E', 'MPH lantai 4', '• peralatan beroperasi normal\r\n• chain cleaning posisi auto\r\n• tidak ada alarm yang aktiv', '60dd8a0119b29.jpg', '60dd8a0119d68.jpg'),
(28, 'muhammad irfan', '2021-07-01 16:58:00', 'Coal Feeder 1E', 'MPH lantai 4', '• peralatan beroperasi normal\r\n• chain cleaning posisi auto\r\n• tidak ada alarm yang aktiv', '60dd8c7a17b75.jpg', '60dd8c7a17d40.jpg'),
(29, 'm. ihsan ramli', '2021-07-03 08:20:00', 'Induced Draft Fan 1A', 'Boiler Ground Floor', '• Peralatan beroperasi normal\r\n• Tidak ada alarm yang aktiv', '60dfb38ba6c32.jpg', '60dfb38ba724d.jpg'),
(30, 'asriadi janide', '2021-07-04 11:00:00', 'Travelling screen A', 'Intek', '', '60e124507402d.jpeg', '60e12450748a3.jpeg'),
(31, 'asriadi janide', '2021-07-04 11:00:00', 'Travelling screen A', 'Intek', '', '60e1247a085ed.jpeg', '60e1247a08acb.jpeg'),
(32, 'muhlis', '2021-07-11 16:00:00', 'Auxiliary Steam Header', 'Lantai 1½ Turbin #2', '', '60eab9e0b99a1.jpg', '60eab9e0b9b95.jpg'),
(33, 'bakri wahid', '2021-07-23 11:00:00', 'HPFF 1B', 'Lantai grondfloor #1 ', 'Konsisten dalam melaksanakan 5S di pertahankan ', '60faabaea8531.jpeg', '60faabaea87b8.jpeg'),
(34, 'yoyong herawan', '2021-07-14 14:22:00', 'Sootblower B13 - B16', 'Boiler #1 lt 4', 'Sootblower normal', '60fc774ba87f5.jpg', '60fc774ba8ae4.jpg'),
(35, 'muhammad irfan', '2021-07-25 15:36:00', 'motor bottom ash cooler 1A', 'Boiler Ground Floor', '• Kegiatan rutin 5S  • Peralatan standby  • Tidak ada alarm yang aktiv', '60fd1583af4a2.jpg', '60fd1583af631.jpg'),
(36, 'andreas hayr', '2021-07-11 10:20:00', 'Sootblower B1 - B4', 'Boiler #1 lantai 5', '', '60fd5868314de.jpg', '60fd586831691.jpg'),
(37, 'andreas hayr', '2021-07-12 11:15:00', 'Sootblower B5 - B8', 'Boiler #1 lantai 5', '', '60fd58ade6621.jpg', '60fd58ade6864.jpg'),
(38, 'andi muh. risman an.', '2021-07-13 10:30:00', 'Sootblower B-9 s/d B-12', 'Boiler Unit 1 Lantai 4½', '', '60fd5ca2430c1.jpg', '60fd5ca243201.jpg'),
(39, 'andi muh. risman an.', '2021-07-14 11:00:00', 'Sootblower B-13 s/d B-16', 'Boiler Unit 1 Lantai 4', '', '60fd5e3405946.jpg', '60fd5e3405b40.jpg'),
(40, 'm hery idswanto setiawan', '2021-07-16 09:24:00', 'Sootbloower B21, B22, B23, dan B24', 'Boiler unit 2, lantai 3.', '', '60fd8503c513a.jpg', ''),
(41, 'm hery idswanto setiawan', '2021-07-16 09:24:00', 'Sootbloower B21, B22, B23, dan B24', 'Boiler unit 2, lantai 3.', '', '60fd8543373c5.jpg', ''),
(42, 'm hery idswanto setiawan', '2021-07-16 09:24:00', 'Sootbloower B21, B22, B23, dan B24', 'Boiler unit 2, lantai 3.', '', '60fd856cae681.jpg', '60fd856caecac.jpg'),
(43, 'm hery idswanto setiawan', '2021-07-15 14:04:00', 'Sootbloower B17, B18, B19, dan B20', 'Boiler unit 2, lantai 3.', '', '60fd86b848cf1.jpg', '60fd86b8490f8.jpg'),
(44, 'asriadi janide', '2021-07-26 10:29:00', 'BFP 1A', 'Lantai 1 turbin', '', '60fe1e2aa6ad7.jpeg', '60fe1e2aa70bf.jpeg'),
(45, 'yoyong herawan', '2021-08-04 15:36:00', 'Coal Feeder 1C', 'Boiler #1 lt 4', 'Coal Feeder 1C normal ', '610a43edb14e9.jpg', '610a43edb16fe.jpg'),
(46, 'yoyong herawan', '2021-08-05 16:30:00', 'Coal Feeder 2D', 'Boiler #2 lt 4', 'Coal feeder operasi normal', '610ba22eeb19d.jpg', '610ba22eeb33d.jpg'),
(47, 'muhlis', '2021-08-06 09:30:00', 'Jacking Oil Pump 1B', 'Lantai 1½ Turbin #1', '', '610c9cbf6524b.jpg', '610c9cbf6541f.jpg'),
(48, 'andi muh. risman an.', '2021-08-06 10:25:00', 'Coal Feeder 2E', 'Lantai 4', '', '610ca1666cc27.jpg', '610ca1666cebb.jpg'),
(49, 'isra.affandi', '2021-08-04 13:30:00', 'MCC CWP 400 V', 'MCC CWP', 'Tidak ada', '610f7a8e05aca.jpeg', '610f7a8e05d7f.jpeg'),
(50, 'isra.affandi', '2021-08-04 13:30:00', 'C02 ', 'MCC C02 ROOM', 'Tidak ada', '610f7b1f9688c.jpeg', '610f7b1f96e3f.jpeg'),
(51, 'isra.affandi', '2021-08-05 12:30:00', 'C02 ', 'MCC C02 ROOM', 'Tidak ada', '610f7b8373473.jpeg', '610f7b837376d.jpeg'),
(52, 'isra.affandi', '2021-08-05 14:39:00', 'CO2', 'C02 ROOM', 'Tidak ada', '610f7c76ec458.jpeg', '610f7c76ec896.jpeg'),
(53, 'isra.affandi', '2021-08-05 14:30:00', 'CO2', 'CO2 ROOM', 'Tidak ada', '610f7d70850ca.jpeg', '610f7d70852b6.jpeg'),
(54, 'isra.affandi', '2021-08-05 14:30:00', 'CO2', 'CO2 ROOM', 'Tidak ada', '610f7e580a494.jpeg', '610f7e580a6fe.jpeg'),
(55, 'andi muh. risman an.', '2021-08-09 10:00:00', 'IDF 1B', 'Ground Floor', '', '611091c87a843.jpg', '611091c87ac42.jpg'),
(56, 'syamsurya catur aprian', '2021-08-04 10:28:00', 'HE Oil Cooler 2B', 'Turbin Ground Floor', '', '6110935035de6.jpeg', '6110935036012.jpeg'),
(57, 'm hery idswanto setiawan', '2021-08-08 09:15:00', 'IDF A #2', 'Boiler unit 2, lantai 1', '', '61109ead95e73.jpg', '61109ead9654a.jpg'),
(58, 'andreas hayr', '2021-08-07 05:00:00', 'Coal feeder 1F', 'Lantai 4', '', '61109edbe69fa.jpg', '61109edbe6e1b.jpg'),
(59, 'leman dwiyulianto laode', '2021-08-09 09:14:00', 'LPH Drain Pump 2A', 'Turbin lantai 1', '', '6110a10da5ac3.jpg', '6110a10da5db0.jpg'),
(60, 'muh.fahmi abin', '2021-08-08 13:00:00', 'Switch Gear 400V ', 'Switch Gear Room Unit 1', '', '6110c81f34383.jpg', '6110c81f345a1.jpg'),
(61, 'hasrun', '2021-08-07 17:50:00', 'AC Oil Pump', 'Lantai 1½ Turbin #1&amp;#2', '', '6110c8f79fe65.jpeg', '6110c8f7a01d0.jpeg'),
(62, 'muh.fahmi abin', '2021-08-09 13:18:00', 'Switch Gear 400V Common ', 'Crusher Room ', 'Perlu pembersihan rutin ', '6110c9aa0a8bc.jpg', '6110c9aa0aaba.jpg'),
(63, 'isra.affandi', '2021-08-09 14:30:00', '400 Common', 'MCC COMMON', 'Tidak ada', '6110dd1e55a44.jpeg', '6110dd1e55dd6.jpeg'),
(64, 'irwan burhan', '2021-08-06 10:00:00', 'JOP B', 'Lantai 1 ½ Turbin #1', '', '6110e8d36a0b9.jpeg', '6110e8d36a356.jpeg'),
(65, 'andi aswar kasman', '2021-08-08 09:00:00', 'DC Oil Pump', 'Turbin #1 lt.1½', '', '61110d3072af9.jpg', '61110d3072d9d.jpg'),
(66, 'andi rizal bangsawan', '2021-08-16 10:00:00', 'HP Heater no.2 Unit 1', 'Lantai 1½ Turbin', 'Kondisi peralatan dalam inservice, sulit menjangkau bagian atas peralatan karena tinggi', '6119c977bba86.jpg', '6119c977bbdbf.jpg'),
(67, 'bakri wahid', '2021-08-16 14:00:00', 'Sootblower B1,B2,B3,B4 #1', 'Lantai 5 1/2 Boiler', 'Mempertahankan konsisten dalam melakukan 5S', '611a25eb956e0.jpeg', '611a25eb95909.jpeg'),
(68, 'mardin taridala', '2021-08-16 16:09:00', 'Panel DC &amp; UPS', 'DC &amp; UPS Room', '', '611a5db60dde1.jpg', '611a5db60e267.jpg'),
(69, 'm. syukur al munandar', '2021-08-17 16:34:00', 'Sootblower B5, B6, B7, B8', 'BOILER UNIT 1', '', '611b75219126e.jpg', '611b7521917a8.jpg'),
(70, 'muhammad arif', '2021-08-17 15:38:00', 'Gland seal Fan #1', 'Turbin unit 1', 'Beberapa bagian tidak terjangkau', '611b76134a2da.jpg', '611b76134a5f6.jpg'),
(71, 'muhammad farhan kurniawan ikhs', '2021-08-17 14:30:00', 'Baterai', 'Baterai room unit 1 dan 2', '-', '611b9bc7a6dd5.jpg', '611b9bc7a70c6.jpg'),
(72, 'ardiansyah nugraha m', '2021-08-18 10:00:00', 'Gland seal fan', 'Lantai 1 1/2 turbin', 'Butuh tambahan pijakan di area peralatan (unsafe condition) ', '611c6d2a05d74.jpeg', '611c6d2a060f2.jpeg'),
(73, 'ardiansyah nugraha m', '2021-08-18 10:00:00', 'Gland seal fan', 'Gland seal Fan A dan B', 'Butuh tambahan pijakan di area peralatan (unsafe condition) ', '611c6e7e5c3ad.jpeg', '611c6e7e5c609.jpeg'),
(74, 'supriyanto rante', '2021-08-18 11:17:00', 'Sootblower B9 - B12', 'Lantai 4 setengah', 'Diperlukan pijakan karena tidak dapat menjangkau bagian atasnya', '611c7ca14feae.jpg', '611c7ca14ffdf.jpg'),
(75, 'shandy sugih wibowo', '2021-08-18 11:00:00', 'PLANT COMUNICATION ROOM', 'Comunication Room', '', '611c7cb538cd7.jpeg', '611c7cb53908e.jpeg'),
(76, 'supriyanto rante', '2021-08-18 11:17:00', 'Sootblower B9 - B12', 'Lantai 4 setengah', 'Diperlukan pijakan karena tidak dapat menjangkau bagian atasnya', '611c7d5c5bbc0.jpg', '611c7d5c5bd68.jpg'),
(77, 'm. ihsan ramki', '2021-08-19 08:30:00', 'Sootblower B13-B16', 'Boiler unit 2', 'Mantap', '611dae0aa27bd.jpeg', '611dae0aa2d32.jpeg'),
(79, 'm. ihsan ramli', '2021-08-19 09:25:00', 'SOOTBLOWER B13 - B16', 'BOILER UNIT #2', 'MANTAP', '611db389b133d.jpg', '611db389b17e9.jpg'),
(80, 'mardin taridala', '2021-08-19 14:05:00', 'Trafo KIT &amp; trafo PS', 'Trafo', '', '611df62e04a5a.jpg', '611df62e050c1.jpg'),
(81, 'harry fristian', '2021-08-19 11:22:00', 'Oil Gas Extractor Fan A Unit 1', 'Lantai 2 Turbin', 'Sudah baik', '611e0a2b56050.jpg', '611e0a2b56756.jpg'),
(82, 'harry fristian', '2021-08-19 11:22:00', 'Oil Gas Extractor Fan A Unit 1', 'Lantai 2 Turbin', 'No SR 136606 Kebocoran pada flange Oil Gas Extractor Fan A Unit 1', '611e27281b01d.jpg', '611e27281b927.jpg'),
(83, 'shandy sugih wibowo', '2021-08-20 13:00:00', 'TRAFO PS UNIT 2', 'trafo PS unit 2', '', '611f39d8ac846.jpeg', '611f39d8acafe.jpeg'),
(84, 'mansyur', '2021-08-20 16:42:00', 'HE CCWP A &amp; B', 'Turbin 2 lantai 1', 'Kondisi peralatan dalam keadaan normal operasi', '611f6bdb1d1fc.jpg', '611f6bdb1d366.jpg'),
(85, 'bakri wahid', '2021-08-20 15:00:00', 'Sootblower B 17, B,18, B19', 'Lantai 3 1/2 Boiler #1', 'Lakukan pengecetan pdah SB B 17 dan 19 yang sdah berkarat', '611f6e0f340ce.jpeg', '611f6e0f34245.jpeg'),
(86, 'asriadi janide', '2021-08-21 10:19:00', 'HE CCWP A &amp; B #1', 'Turbin ', '', '612062d86e31c.jpeg', '612062d86e79c.jpeg'),
(88, 'muhammad wahdi', '0000-00-00 00:00:00', 'SB b21-b24', 'Boiler #1 lantai 2', 'Peralatan dalam kondisi stop', '6120845892e63.jpeg', '6120845893078.jpeg'),
(90, 'muhammad farhan kurniawan ikhs', '2021-08-21 13:30:00', 'Outlet room', 'Outlet room unit 1 dan 2', '-', '6120c4b11b47f.jpg', '6120c4b11b685.jpg'),
(91, 'muhammad wahdi', '2021-08-21 18:52:00', 'SB b21-b24', 'Boiler #1 lantai 2', 'Peralatan dalam kondisi stop', '6120db08a3593.jpg', '6120db08a3905.jpg'),
(92, 'andreas hayr', '2021-08-28 11:53:00', 'HPFF B', 'Lantai 1 boiler #2', '', '612ace8fe3281.jpg', '612ace8fe348e.jpg'),
(93, 'muhlis', '2021-08-28 15:30:00', 'Travelling Screen C', 'Intake', '', '612ad044a3b56.jpg', '612ad044a3d1e.jpg'),
(94, 'muhlis', '2021-08-28 15:30:00', 'Travelling Screen B', 'Intake', '', '612ad22d831c5.jpg', '612ad22d8342e.jpg'),
(95, 'andreas hayr', '2021-08-29 09:33:00', 'HPFF C', 'Lantai 1 Boiler #1', '', '612ae4b2ac101.jpg', '612ae4b2ac4f9.jpg'),
(96, 'hasrun', '2021-08-29 17:00:00', 'Traveling Screen C', 'Intake', '', '612b66e800e2f.jpeg', '612b66e801199.jpeg'),
(97, 'andi muh. risman an.', '2021-08-30 10:30:00', 'Motor Bottom Ash Cooler 2A', 'Ground Floor', '', '612c4c90817a1.jpg', '612c4c9081953.jpg'),
(98, 'leman dwiyulianto laode', '2021-08-31 08:39:00', 'Valve dearator', 'Dearator', '', '612d7b6194fdf.jpg', '612d7b619532c.jpg'),
(99, 'yoyong herawan', '2021-08-31 17:00:00', 'Slag cooler 1B', 'Boiler #1', '', '612df927d77c7.jpg', '612df927d79bc.jpg'),
(100, 'm hery idswanto setiawan', '2021-09-01 10:37:00', 'Slag Cooler 1A', 'Boiler unit 1, Lt 1', '', '612f041de2eef.jpg', '612f041de360e.jpg'),
(101, 'irwan.burhan', '2021-09-01 18:40:00', 'Valve Deaerator', 'Lantai 4, Deaerator #1', '', '612f63470a280.jpeg', ''),
(102, 'irwan.burhan', '2021-09-01 18:40:00', 'Valve Deaerator', 'Lantai 4, Deaerator #1', '', '612f6377ed476.jpeg', '612f6377edaa1.jpeg'),
(103, 'amr092', '2021-09-02 11:30:00', 'Motor Bottom Ash Cooler 2B', 'Ground Floor', '', '61304e04baf59.jpg', '61304e04bb15c.jpg'),
(104, 'leman', '2021-08-30 17:32:00', 'Traveling screan D', 'Intake', '', '61309aa7307e9.jpg', '61309aa73097e.jpg'),
(105, 'sca', '2021-08-31 08:30:00', 'MOV Extraksi Deaerator', 'Lantai Deaerator', '', '61309d5f590c8.jpeg', '61309d5f5927a.jpeg'),
(106, 'andi.aswar', '2021-09-02 17:53:00', 'Lube Oil #2', 'Turbin lantai 1½', '', '61309f93cf67c.jpg', '61309f93cf8a3.jpg'),
(107, 'andar', '2021-09-09 11:00:00', 'COAL FEEDER 2A', 'LANTAI 4 COAL FEEDER', '', '61397c1e9ac29.jpg', '61397c1e9b0a5.jpg'),
(108, 'arif1992', '2021-09-09 09:19:00', 'Booster pump CWP C', 'Water Intake', 'Beberapa bagian peralatan korosif', '6139a8cf3e3e6.jpeg', '6139a8cf3e649.jpeg'),
(109, 'mardin taridala', '2021-09-09 16:00:00', 'Switch Gear Common', 'Switch Gear #1', '', '6139c91ec10f9.jpg', '6139c91ec14e4.jpg'),
(110, 'rizal.bangsawan', '2021-09-10 09:17:00', 'CWP D Booster Pump A&amp;B', 'Intake', 'Peralatan dalam kondisi stand by', '613ab263053f2.jpg', '613ab26305b3b.jpg'),
(111, 'muhammadfarhankurniawan', '2021-09-10 16:10:00', 'Panel equipment', 'Equipment room unit 2', '-', '613b1c47e8d16.jpg', '613b1c47e8dca.jpg'),
(112, 'muhammadfarhankurniawan', '2021-09-10 16:10:00', 'Panel equipment', 'Equipment room unit 2', '-', '613b1c4812c01.jpg', '613b1c4812d00.jpg'),
(113, 'muhammadfarhankurniawan', '2021-09-10 16:10:00', 'Panel equipment', 'Equipment room unit 2', '-', '613b1c8e89edf.jpg', '613b1c8e8a268.jpg'),
(114, 'bakri wahid 98', '2021-09-10 15:00:00', 'Coal feeder 1B', 'Lantai 4 Coal feeder', 'Pertahankan konsisten dalam melaksanakan 5S', '613b3ea6072f0.jpeg', '613b3ea60750d.jpeg'),
(115, 'ardiansyah nugraha m', '2021-09-11 09:50:00', 'Valve debris filter A unit 2', 'Valve debris filter A unit 2', 'Beberapa bagian pada peralatan sudah berkarat', '613c0dee5c8ec.jpeg', '613c0dee5cd2e.jpeg'),
(116, 'irfan', '2021-09-11 15:00:00', 'Coal Feeder 2C', 'Main Power House Lantai 4', 'kendala\r\n• kondisi hujan sehingga sebagian body Coal Feeder tdk dapat di bersihkan \r\n\r\ncatatan kondisi Coal Feeder 2\r\n• peralatan Beroperasi dengan Normal\r\n• tidak ada alarm yang aktiv', '613c55c034938.jpg', '613c55c034c21.jpg'),
(117, 'shandy02', '2021-09-11 15:00:00', 'Central Control Room', 'Central Control Room', '', '613c5b4380480.jpeg', '613c5b43807e7.jpeg'),
(118, 'adijn05', '2021-09-12 11:55:00', 'Valve debris B unit 1', 'Condensor', '', '613d7a5a09d54.jpeg', '613d7a5a0a168.jpeg'),
(119, 'supriyanto.rante', '2021-09-12 13:20:00', 'CF 1D', 'Lantai 4', '', '613d8e6880860.jpg', '613d8e68809b7.jpg'),
(120, 'mardin taridala', '2021-09-12 15:00:00', 'Sampling Room', 'Sampling Room', '', '613da77199fac.jpg', '613da7719a6df.jpg'),
(121, 'muhammadfarhankurniawan', '2021-09-13 15:00:00', 'Kompresor instrumen A', 'Kompresor instrumen room', '-', '613f117201d9d.jpg', '613f1172021f1.jpg'),
(122, 'bakri wahid 98', '2021-09-13 19:00:00', 'Coal feeder 1E', 'Lantai 4 Coal feeder', 'Pertahankan konsisten dalam melaksanakan 5S', '613f35621bb91.jpeg', '613f35621bdb6.jpeg'),
(123, 'ihsan.r', '2021-09-14 11:00:00', 'Coal Feeder 2F', 'Main Power House Lantai 4', '• peralatan beroperasi dengan normal  \r\n• tidak ada alarm yang aktiv', '614014a951878.jpg', '614014a951a00.jpg'),
(124, 'shandy02', '2021-09-14 12:30:00', 'Compressor Instrument B dan Dryer A', 'Compressor Intrument House', 'Suhu ruangan panas dan terlalu bising', '61402e161c825.jpeg', '61402e161cbd1.jpeg'),
(125, 'mansyur', '2021-09-13 11:08:00', 'HE CCWP 2A', 'Turbin 2 lantai 1', '', '614066e806099.jpg', '614066e806266.jpg'),
(126, 'harryfristian', '2021-09-14 17:56:00', 'Heat Exchanger CCWP B unit 1', 'Groundfloor Turbin unit 1', 'Mantap', '6140760582c5f.jpg', '61407605a3cd5.jpg'),
(127, 'renop', '2021-09-06 13:59:00', 'EH OIL PUMP #2B', 'Turbin #2', '', '6142dd94a2e58.jpg', '6142dd94a310b.jpg'),
(128, 'mayong', '2021-09-23 16:50:00', 'Sootblower B1 - B4', 'Boiler #1', '', '614d3f0ba985e.jpg', '614d3f0ba9c43.jpg'),
(129, 'leman', '2021-09-25 09:00:00', 'Vacuum pump 2B', 'Turbin', '', '614e7512579b5.jpg', '614e751257cb6.jpg'),
(130, 'muhlis', '2021-09-23 15:00:00', 'Turning Gear', 'Lantai 2 Turbin #1', '', '614e7b2f31a03.jpg', '614e7b2f31bc8.jpg'),
(131, 'hasrun044', '2021-09-25 19:15:00', 'CEP 2A', 'Lantai 1, Turbin#2', '', '614e7d395a104.jpeg', '614e7d395a6ed.jpeg'),
(132, 'mayong', '2021-09-24 16:28:00', 'Sootblower B5 - B8', 'Boiler #1', '', '614e97ae2efbd.jpg', '614e97ae2f2b5.jpg'),
(133, 'hery idswanto', '2021-09-21 10:28:00', 'Sootblower C1, C2, C3, dan C4', 'Boiler unit 1, Lt 7', '', '614e9d20efbb3.jpg', '614e9d20f006c.jpg'),
(134, 'andre', '2021-09-25 04:20:00', 'Sootblower B9-B12', 'Boiler #1 lantai5', '', '614fb8d32029c.jpg', '614fb8d32080b.jpg'),
(135, 'andre', '2021-09-26 15:10:00', 'Sootblower B13 - B16', 'Boiler #1 lantai 4', '', '61502e3b0aa4b.jpg', '61502e3b0ae5c.jpg'),
(136, 'sca', '2021-09-22 16:00:00', 'Deaerator Unit 1', 'Lantai 4', '', '6150418f0d3c3.jpeg', '6150418f0d67d.jpeg'),
(137, 'andi.aswar', '2021-09-26 17:00:00', 'High Pressure Pump #1', 'Turbin lantai 1½', '', '615044c98f42f.jpg', '615044c98f86c.jpg'),
(138, 'rizal.bangsawan', '2021-10-03 15:35:00', 'LP Heater Drain Pump 2B', 'Lantai 1 Turbin', 'Peralatan dalam kondisi stand by', '61595dc3850fd.jpg', '61595dc3855c5.jpg'),
(139, 'andar', '2021-10-03 17:07:00', 'HPFF 2A', 'Lantai 1 unit #2', '', '615973376c6ba.jpg', '615973376cb81.jpg'),
(140, 'mardin taridala', '2021-10-03 17:25:00', 'Mesin Alsthom', 'Turbin &amp; Generator', '', '615978119e782.jpg', '615978119ecd3.jpg'),
(141, 'adijn05', '2021-10-04 14:41:00', 'Lp heater 7', 'Turbin', '', '615aa27faf482.jpeg', '615aa27faf805.jpeg'),
(142, 'muhammadfarhankurniawan', '2021-10-04 11:00:00', 'Kompresor conveying + dryer', 'Kompresor conveying room', '-', '615ad1b264dfc.jpg', '615ad1b265104.jpg'),
(143, 'shandy02', '2021-10-05 11:30:00', 'Compressor Comveying dan Dryer B', 'Common', 'Melakukan FLM dengan SR 139017', '615bd27f8408e.jpeg', '615bd27f84638.jpeg'),
(144, 'bakri wahid 98', '2021-10-04 13:56:00', 'HPFF 1B', 'Lantai grond floor #1', 'Mempertahankan konsisten jadwal 5S', '615be96e20fdc.jpeg', '615be96e2118c.jpeg'),
(145, 'irfan', '2021-10-05 15:40:00', 'High Pressure Fluidized Fan 2C', 'Boiler Ground Floor', 'Peralatan standby ON,  level pelumas bearing 1 = 50%, bearing 2 = 80%', '615c0a18e81b4.jpg', '615c0a18e8493.jpg'),
(147, 'ardiansyah nugraha m', '2021-10-05 16:50:00', 'LP HEATER 6 unit 2', 'LP HEATER UNIT 2', 'Beberapa bagian terdapat karat', '615c17ec42e8d.jpeg', '615c17ec4321a.jpeg'),
(148, 'ardiansyah nugraha m', '2021-10-05 16:50:00', 'LP HEATER 6 unit 2', 'LP HEATER 6 unit 2', 'Beberapa bagin terdapat karat', '615c187e532d1.jpeg', '615c187e5372c.jpeg'),
(149, 'ardiansyah nugraha m', '2021-10-05 16:50:00', 'LP HEATER 6 unit 2', 'LP HEATER 6 UNIT 2', 'Beberapa bagian terdapat karat', '615c18d4f1980.jpeg', '615c18d4f1db7.jpeg'),
(150, 'supriyanto.rante', '2021-11-06 15:29:00', 'Slagcooler 1A', 'Groundbreaking Floor', '', '615d50e3db31a.jpg', '615d50e3db49a.jpg'),
(152, 'arif1992', '2021-10-06 14:07:00', 'Low Pressure Heater 5', 'Turbin unit 1', 'Beberapa bagian peralatan tidak terjangkau', '615d565134de2.jpg', '615d565135801.jpg'),
(153, 'mardin taridala', '2021-10-06 14:55:00', 'Kompresor Conveying C + Dryer', 'Kompresor Conveying', '', '615d605e535a9.jpg', '615d605e53ab4.jpg'),
(155, 'muhammadfarhankurniawan', '2021-10-07 11:30:00', 'MCC CWP', 'MCC CWP room', '-', '615ebfe827fed.jpg', '615ebfe82831c.jpg'),
(156, 'arif1992', '2021-10-07 16:07:00', 'Low Pressure Heater 4', 'Turbin unit 2', 'Beberapa bagian tidak terjangkau', '615ec73ac5002.jpg', '615ec73ac5288.jpg'),
(157, 'mardin taridala', '2021-10-08 14:26:00', 'CO2', 'CO2 Room', '', '615ffa30d0def.jpg', '615ffa30d13f6.jpg'),
(158, 'mansyur', '2021-10-08 16:26:00', 'High pressure heater 1', 'Turbin 1', '', '61600108b95fc.jpg', '61600108b974c.jpg'),
(159, 'muhammadfarhankurniawan', '2021-10-09 11:30:00', 'Breaker 6kv A unit 2', 'Switchgear room unit 2', '-', '616110879e40a.jpg', '616110879e5e8.jpg'),
(160, 'irfan', '2021-10-09 13:30:00', 'Lower Burner 1 A', 'Boiler lantai 1/2', 'Peralatan standby,  tidak ada SR terbit', '616138ba0ebc8.jpg', '616138ba0ee4a.jpg'),
(161, 'harryfristian', '2021-10-09 14:30:00', 'High Pressure Heater 2 Unit 2', 'Groundfloor Turbin unit 2', 'Sudah baik', '61613c79a2b65.jpg', '61613c79a325c.jpg'),
(162, 'andar', '2021-10-10 09:12:00', 'Lower Burner B Unit #2', 'Lantai 1 1/2 Boiler #2', '', '61623e5df0ef2.jpg', '61623e5df12f3.jpg'),
(163, 'bakri wahid 98', '2021-10-07 16:00:00', 'Slag cooler 2B', 'Lantai grond floor Boiler #2', 'Pertahankan konsisten dalam 5s', '6162543e28b57.jpeg', '6162543e28ce4.jpeg'),
(164, 'shandy02', '2021-10-10 11:00:00', 'Switchgear 6KV line #1', 'Switchgear Room', '', '61625d16a3f4e.jpeg', '61625d16a428d.jpeg'),
(165, 'rizal.bangsawan', '2021-10-10 11:34:00', 'Gland Steam Condenser #1', 'Lantai 1½ Turbin', 'Area agak gelap, lampu penerangan tidak menyala', '61625fe254768.jpg', '61625fe254b60.jpg'),
(166, 'adhiim.maarif', '2021-10-13 14:40:00', 'Panel Equpment', 'Equpment room unit 2', 'Ruang bersih dan tidak tercium bau', '6167e26825bec.jpg', '6167e26826056.jpg'),
(167, 'mayong', '2021-10-15 11:30:00', 'Coal Feeder 2B', 'Boiler #2 lt 4', '', '61690b19c0c33.jpg', '61690b19c0fb9.jpg'),
(168, 'muhlis', '2021-10-15 14:00:00', 'Turning Gear', 'Lantai 2 Turbin #2', '', '616a25d91b539.jpg', '616a25d91b6b1.jpg'),
(169, 'hery idswanto', '2021-10-16 12:32:00', 'Coal Feeder 1C', 'Boiler unit 1, Lt 4', '', '616a62c2cd912.jpg', '616a62c2cdf32.jpg'),
(170, 'andar', '2021-10-17 11:09:00', 'COAL FEEDER 2D', 'LANTAI 4 COAL FEEDER', '', '616b9460c89ad.jpg', '616b9460c8c4c.jpg'),
(171, 'muhammadfarhankurniawan', '2021-10-17 11:30:00', 'Kompresor instrumen B dan dryer B', 'Kompresor instrumen room', '-', '616bb5c13b784.jpg', '616bb5c13bb5d.jpg'),
(172, 'rizal.bangsawan', '2021-10-18 10:16:00', 'CWP C', 'Intake', 'Peralatan dalam kondisi operasi', '616cd94e9a127.jpg', '616cd94e9a761.jpg'),
(173, 'ardiansyah nugraha m', '2021-10-17 11:56:00', 'CEP B unit 2', 'CEP B unit 2', '', '616cde8a4cea0.jpeg', '616cde8a4d283.jpeg'),
(174, 'bakri wahid 98', '2021-10-18 12:00:00', 'Coal feeder 1E', 'Lantai 4 Coal feeder #1', 'Pertahankan konsisten dalam melaksanakan 5S', '616d283bcab63.jpeg', '616d283bcaee8.jpeg'),
(175, 'jovapratama26', '2021-10-21 14:40:00', 'IDF 2B', 'Lantai Boiler 1 #2', 'Peralatan Terpantau NORMAL &amp; Operasi', '617118f4f2972.jpg', '617118f4f2bde.jpg'),
(176, 'adhiim.maarif', '2021-10-21 15:05:00', 'Panel communication', 'Communication room', '', '61714ac306288.jpg', '61714ac306416.jpg'),
(177, 'mirad.maranu', '2021-10-21 15:30:00', 'Panel Communication', 'plant Communication Room', '-', '61720acd856df.jpeg', '61720acd85891.jpeg'),
(178, 'mirad.maranu', '2021-10-22 10:05:00', 'Panel main trafo &amp; trafo ps unit #2', 'Main trafo &amp; Trafo ps unit', '-', '61722687d54af.jpeg', '61722687d5856.jpeg'),
(179, 'mirad.maranu', '2021-10-22 10:05:00', 'Panel main trafo &amp; trafo ps unit #2', 'Main trafo &amp; Trafo ps unit', '-', '617226b2e9715.jpeg', '617226b2e9acb.jpeg'),
(180, 'jovapratama26', '2021-10-22 15:00:00', 'Cooling Fan 1A', 'Lantai 2 Boiler unit 1', 'Jadwal seharusnya di Cooling Fan 2A , namun Cooling Fan 2A ada kegiatan PM &amp; sudah di bersihkan jadi di change ke Cooling Fan 1A', '617278dfb1295.jpg', '617278dfb13fc.jpg'),
(181, 'muhammad.wahdi', '2021-10-08 13:00:00', 'Blr slag discharge unit #1', 'Slag cooler unit #1', '', '61733c9a123b9.jpg', '61733c9a126cd.jpg'),
(182, 'mardin taridala', '2021-10-18 08:50:00', 'Kompresor Instrument C', 'Lantai 1 Kompressor Room', '', '61735253cf7fe.jpg', '61735253cff67.jpg'),
(183, 'hery idswanto', '2021-10-24 13:35:00', 'Valve sampling dan drain-drain boiler', 'Boiler unit 1, Lt 1 dan Lt 2', '', '6174f84192945.jpg', '6174f84193435.jpg'),
(184, 'andre', '2021-10-23 02:30:00', 'Cooling fan 1B', 'Boiler #1 lantai 2', '', '6174fbc42f9a8.jpg', '6174fbc4301af.jpg'),
(185, 'andre', '2021-10-23 02:30:00', 'Cooling fan 1B', 'Boiler #1 lantai 2', '', '6174fc3b0fed3.jpg', '6174fc3b101da.jpg'),
(186, 'andre', '2021-10-23 02:30:00', 'Cooling fan 1B', 'Boiler #1 lantai 2', '', '6174fd803f378.jpg', '6174fd803f65e.jpg'),
(187, 'andre', '2021-10-24 12:28:00', 'Outlet Room ', 'Outlet Room ', '', '6174fdb298e13.jpg', '6174fdb29925f.jpg'),
(188, 'andre', '2021-10-23 02:30:00', 'Cooling fan 1B', 'Boiler #1 lantai 2', '', '6174fed7e85e5.jpg', '6174fed7e8890.jpg'),
(189, 'fahmi', '2021-10-24 12:35:00', 'Outlet Room ', 'Outlet Room ', '', '6174fedabfb4c.jpg', '6174fedabff90.jpg'),
(190, 'fahmi', '2021-10-15 13:41:00', 'Sampling Room', 'Sampling Room ', '', '617500878adee.jpg', '617500878b3dc.jpg'),
(191, 'fahmi', '2021-10-16 13:30:00', 'Compressor Instrument A ', 'Compressor Instrument Room ', '', '6175014753014.jpg', '61750147535bb.jpg'),
(192, 'fahmi', '2021-10-23 13:30:00', 'Trafo PS', 'Trafo PS', '', '617502125541f.jpg', '6175021255ba7.jpg'),
(193, 'hasrun044', '2021-10-16 15:00:00', 'CEP A', 'Lantai 1, Turbin unit 1', '', '6175025abc139.jpeg', '6175025abc52f.jpeg'),
(194, 'hasrun044', '2021-10-24 15:00:00', 'Valve Deaerator ', 'Lantai 4, Deaerator unit 1', '', '6175091cae9c2.jpeg', '6175091caed7e.jpeg'),
(195, 'irfan', '2021-10-25 09:30:00', 'Feeding material bed unit 2', 'Boiler #2 lantai 4 dan 5', 'Peralatan standby', '617642f168d0b.jpg', '617642f169024.jpg'),
(196, 'mardin taridala', '2021-10-25 14:50:00', 'Kompressor Generator (IPB)', 'Lantai 1/2 Generator', '', '617655e94dd56.jpg', '617655e94e2a2.jpg'),
(197, 'arif1992', '2021-10-25 14:20:00', 'Lube oil A', 'Turbin unit 1', 'Beberapa bagian peralatan tidak terjangkau', '61765c0e9192e.jpg', '61765c0e92105.jpg'),
(198, 'arif1992', '2021-10-25 14:20:00', 'Lube oil A', 'Turbin unit 1', 'Beberapa bagian peralatan tidak terjangkau', '61765c6695ad0.jpg', '61765c6695f52.jpg'),
(199, 'rizal.bangsawan', '2021-10-26 09:18:00', 'Lube Oil B #2', 'Lantai 1 Turbin', 'Peralatan banyak ceceran oli. Perlu pembersihan lebih intensif', '61775839cf41e.jpg', '61775839cfc61.jpg'),
(200, 'supriyanto.rante', '2021-10-26 11:22:00', 'Sootblower C1-C4', 'Lantai 7', '', '617774d8ef3c3.jpg', '617774d8ef6ee.jpg'),
(201, 'supriyanto.rante', '0000-00-00 00:00:00', 'Sootblower C1-C4', 'Lantai 7', '', '61777583d09ce.jpeg', '61777583d0b2c.jpeg'),
(202, 'muhammadfarhankurniawan', '2021-10-26 13:40:00', 'EDG', 'EDG', '-', '6177a45fcbafe.jpg', '6177a45fcbe68.jpg'),
(203, 'syahruljuliant0', '2021-10-14 15:08:00', 'HE CCW #2', 'Ground floor Turbin #2', '', '6177f6619fd54.jpeg', '6177f661a02c8.jpeg'),
(204, 'syahruljuliant0', '2021-10-14 15:08:00', 'HE CCW #2', 'Groundfloor Turbin #2', '', '6177f75c9bd62.jpeg', '6177f75c9c0a2.jpeg'),
(205, 'syahruljuliant0', '2021-10-14 15:08:00', 'HE CCW #2', 'Turbin #2', '', '6177f86c299b1.jpeg', '6177f86c29dfb.jpeg'),
(206, 'syahruljuliant0', '2021-10-14 15:08:00', 'HE CCW #2', 'Turbin #2', '', '6177f8da97c4c.jpeg', '6177f8da97f59.jpeg'),
(207, 'syahruljuliant0', '2021-10-21 14:01:00', 'Travelling screen B', 'INTAKE', '', '6177faddba525.jpeg', '6177faddba82c.jpeg'),
(208, 'alim hambali', '2021-10-14 15:08:00', 'HE CCW #2', 'Groundfloor Turbin #2', '', '61781791081b2.jpeg', '617817910852d.jpeg'),
(209, 'alim hambali', '2021-10-21 14:01:00', 'Travelling screen B #2', 'INTAKE', '', '617817f7bc468.jpeg', '617817f7bc695.jpeg'),
(210, 'syahruljuliant0', '2021-10-29 14:10:00', 'EH Oil Pump 2B', 'Lantai 1 1/2 Turbin #2', '', '617c98a8f2840.jpeg', '617c98a8f2a20.jpeg'),
(211, 'jovapratama26', '2021-10-29 13:31:00', 'Sootblower B5 &amp; B7 ', 'Lantai 5 Boiler #2', 'Peralatan terpantau Normal &amp; Operasi', '617cf66f4836f.jpg', '617cf66f485c3.jpg'),
(212, 'jovapratama26', '2021-10-29 13:35:00', 'Sootblower B5 &amp; B7 ', 'Lantai 5 Boiler #2', 'Peralatan Terpantau Normal &amp; Sudah Beroperasi', '617cf76fc91ca.jpg', '617cf76fc93d5.jpg'),
(213, 'hery idswanto', '2021-10-31 11:48:00', 'Sootbloower B13, B14, B15, dan B16', 'Boiler unit 2, lantai 4.', '', '617e299de8aa1.jpg', '617e299de927f.jpg'),
(214, 'muhfahmiabin', '2021-10-31 14:00:00', 'MCC CWP ROOM', 'Mcc Cwp', '', '617f85d0a7cf8.jpg', '617f85d0a85dd.jpg'),
(215, 'muhfahmiabin', '2021-10-31 14:00:00', 'MCC CWP ROOM', 'Mcc Cwp', '', '617f8620c6224.jpg', '617f8620c6988.jpg'),
(216, 'muhfahmiabin', '2021-11-01 14:00:00', 'Co2 Room ', 'Co2 Room ', '', '617f885186b85.jpg', '617f885186dc1.jpg'),
(217, 'mayong', '2021-11-01 13:20:00', 'Sootblower B17 - B20', 'Boiler #1', '', '617f956c59a50.jpg', '617f956c59d8a.jpg'),
(218, 'irwan.burhan', '2021-11-01 09:05:00', 'Booster Pump CWP C', 'CWP House', '', '617f95804199c.jpeg', '617f958041ddb.jpeg'),
(219, 'andi.aswar', '2021-10-31 10:15:00', 'Booster Pump CWP B', 'CWP House', '', '617f961689e5d.jpg', '617f96168a39a.jpg'),
(220, 'arif91', '2021-11-02 09:10:00', 'Booster Pump A dan B CWP D', 'Water intake', 'Beberapa bagian terdapat korosif', '6180c25a4b1fe.jpg', '6180c25a4b924.jpg'),
(221, 'muhammadfarhankurniawan', '2021-11-02 11:30:00', 'Panel 6kv line A', 'Switchgear unit 1 dan 2', '-', '6180cf78d8109.jpg', '6180cf78d83cb.jpg'),
(222, 'bakri wahid 98', '2021-11-02 09:11:00', 'Sootblower B21,B22,B23,B24', 'Lantai 2 stengah Boiler #2', 'Usul untuk di lakukan pengecetan kembali pada sootblower B21,B22,B23,B24', '6181e21fcb67b.jpeg', '6181e21fcb97a.jpeg'),
(223, 'shandy02', '2021-11-03 10:55:00', 'Switchgear 6KV #2', 'Switchgear Room', '', '6181fcbe323a2.jpeg', '6181fcbe32736.jpeg'),
(224, 'adijn05', '2021-11-03 11:32:00', 'Valve debris 1A', 'Kondensor', '', '618202e19bd98.jpeg', '618202e19c11f.jpeg'),
(225, 'muhammad.wahdi', '2021-11-03 13:14:00', 'SB b25 - b28', 'Sootblower unit 1', '', '61821ad2d530a.jpg', '61821ad2d5587.jpg'),
(226, 'syahruljuliant0', '2021-11-06 10:45:00', 'HE CCW B #2', 'Groundfloor Turbin #2', '', '61861cb37a1f5.jpeg', '61861cb37a4f9.jpeg'),
(227, 'mirad.maranu', '2021-11-07 10:02:00', 'Compressor Conveying A', 'Compressor Conveying Room', '-', '61873c7be10e6.jpeg', '61873c7be1308.jpeg'),
(228, 'adhiim.maarif', '2021-11-07 10:20:00', 'COMPRESSOR CONVEYING A', 'CONVEYING ROOM', '', '61873d03e963e.jpg', '61873d03e9901.jpg'),
(229, 'muhfahmiabin', '2021-11-08 11:00:00', 'Compressor conveying A ', 'Compressor Conveying A', '', '61889554e7dca.jpg', '61889554e8424.jpg'),
(230, 'hery idswanto', '2021-11-08 13:18:00', 'HPFF 2A', 'Boiler unit 2, lantai 1', '', '6188bc13c9c4b.jpg', '6188bc13ca4e6.jpg'),
(231, 'andre', '2021-11-09 12:45:00', 'HPFF B', 'Boiler #2 lantai 1', '', '618a12d0b7bb0.jpg', '618a12d0b7e08.jpg'),
(232, 'muhfahmiabin', '2021-11-09 10:18:00', 'Compressor conveying C', 'Compressor Conveying', '', '618a12f7639b4.jpg', '618a12f763be3.jpg'),
(233, 'andre', '2021-11-09 12:45:00', 'HPFF B', 'Boiler #2 lantai 1', '', '618a13d9c1eaa.jpg', '618a13d9c21f6.jpg'),
(234, 'hasrun044', '2021-11-09 13:45:00', 'Ball Pump A dan Panel', 'Ground floor unit #1', '', '618a1631bc901.jpeg', '618a1631bcc26.jpeg'),
(235, 'muhlis', '2021-11-08 14:00:00', 'CCWP 2B', 'Lantai 1 Turbin #2', '', '618a167b927bf.jpg', '618a167b92923.jpg'),
(236, 'andar', '2021-11-10 11:33:00', 'HPFF 1C', 'Lantai 1 boiler unit #1', '', '618b3e4c2559a.jpg', '618b3e4c257f5.jpg'),
(237, 'ardiansyah nugraha m', '2021-11-10 10:45:00', 'Ball pump B dan panel unit 2', 'Ball pump B dan panel unit 2', 'Beberapa bagian pada peralatan sudah berkarat', '618b418eca72a.jpeg', '618b418eca9df.jpeg'),
(238, 'mardin taridala', '2021-11-10 08:35:00', 'MCC CWP', 'MCC CWP', '', '618b5b2b7f692.jpg', '618b5b2b7fa63.jpg'),
(239, 'rizal.bangsawan', '2021-11-11 10:45:00', 'Boiler Feed Pump 2A', 'Lantai 1 Turbin', 'Unit 2 sedang MO', '618c844e33f62.jpg', '618c844e34592.jpg'),
(240, 'shandy02', '2021-11-11 10:30:00', 'CO2 ROOM', 'CO2 ROOM', '', '618c85c5f2abb.jpeg', '618c85c5f3054.jpeg'),
(241, 'irfan', '2021-11-11 09:15:00', 'motor bottom ash cooler 2a', '', 'Peralatan standby', '618c928d6965f.jpg', '618c928d6985f.jpg'),
(242, 'andre', '2021-11-16 10:20:00', 'Lower burner 2C', 'Boiler #2 lantai 2', '', '6193199982e63.jpg', '6193199983202.jpg'),
(243, 'muhlis', '2021-11-16 13:30:00', 'CEP A #2', 'Lantai 1 Turbin #2', '', '61934fc0da464.jpg', '61934fc0da5f7.jpg'),
(244, 'hery idswanto', '2021-11-17 11:42:00', 'Lower Burner 1D', 'Boiler unit 1, Lt 2', '', '', '619483b7d86d3.jpg'),
(245, 'hery idswanto', '2021-11-17 11:42:00', 'Lower Burner 1D', 'Boiler unit 1, Lt 2', '', '619484490278e.jpg', '61948449035b1.jpg'),
(246, 'hery idswanto', '2021-11-17 11:42:00', 'Lower Burner 1D', 'Boiler unit 1, Lt 2', '', '6194850aadb6d.jpg', '6194850aae586.jpg'),
(247, 'muhfahmiabin', '2021-11-16 10:27:00', 'Equipment Room Unit #1', 'Equipment Room ', '', '619485895ed22.jpg', '619485895f2af.jpg'),
(248, 'muhfahmiabin', '2021-11-17 09:08:00', 'CCR', 'Control Room ', '', '619486b3f09e6.jpg', '619486b3f0f90.jpg'),
(249, 'hasrun044', '2021-11-17 13:25:00', 'Vacuum Pump 1B', 'Ground floor', '', '61949b1e367db.jpeg', '61949b1e36c2a.jpeg'),
(250, 'rizal.bangsawan', '2021-11-18 09:54:00', 'HP oil pump #2', 'Lantai 1½ Turbin', 'Peralatan dalam kondisi stand by', '6195b28d9b58e.jpg', '6195b28d9c953.jpg'),
(251, 'bakri wahid 98', '2021-11-01 10:50:00', 'Coal feeder 1A', 'Coal feeder 1A', 'Melaksanakan 5S secara konsisten ', '6195eb783019b.jpeg', '6195eb783036d.jpeg'),
(252, 'muhammadfarhankurniawan', '2021-11-18 09:30:00', 'Sampling unit 1', 'Sampling room', '-', '6195ee60c92f6.jpeg', '6195ee60c957a.jpeg'),
(253, 'shandy02', '2021-11-19 10:00:00', 'Compressor Instrument A', 'Compressor Instrument Room', '', '61970eabc48df.jpeg', '61970eabc4bcf.jpeg'),
(254, 'ardiansyah nugraha m', '2021-11-19 10:15:00', 'HE lube oil A unit 1', 'HE lube oil A unit 1', '', '61970f59156d4.jpeg', '61970f5915b79.jpeg'),
(255, 'supriyanto.rante', '2021-11-19 10:30:00', 'Coal Feeder 2B', 'Lantai 4 Boiler', '', '619710839bfcd.jpeg', '619710839c1d9.jpeg'),
(256, 'syahruljuliant0', '2021-11-22 10:30:00', 'JOP B #2', 'Lantai 1 1/2 Turbin #2', '', '619b28000c837.jpeg', '619b28000cafd.jpeg'),
(257, 'alwi aries', '2021-11-22 09:30:00', 'Coal Feeder 1E', 'Coal Feeder Unit 1a', '', '619c56f9392fd.jpg', '619c56f9394c2.jpg'),
(258, 'jovapratama26', '2021-11-23 10:31:00', 'Coal Feeder 2F', 'Lantai 4 Boiler #2', '', '619c57e60c85d.png', '619c57e60cbd5.png'),
(259, 'jovapratama26', '2021-11-23 10:31:00', 'COAL FEEDER 2F', 'Lantai 4 Boiler #2', '', '619c58c556849.png', '619c58c556a8f.png'),
(260, 'mirad.maranu', '2021-11-22 11:05:00', 'Panel DC &amp; UPS ', 'Dc &amp; Ups Room unit #2', '-', '619c7895c59cf.jpeg', '619c7895c5fb1.jpeg'),
(261, 'mirad.maranu', '2021-11-23 13:50:00', 'Batteray ', 'Batteray Room unit #2', '-', '619c86304c1f5.jpeg', '619c86304c703.jpeg'),
(262, 'nursan', '2021-11-23 13:20:00', 'AC OIL PUMP #1', 'Lantai Dua Turbin #1', '', '619c890bd7d83.jpg', '619c890bd8214.jpg'),
(263, 'mayong', '2021-11-24 10:00:00', 'IDF 1A', 'Boiler #1', 'Ditemukan level pelumas low', '619d9d61c16b6.jpg', '619d9d61c189e.jpg'),
(264, 'mayong', '2021-11-24 10:00:00', 'IDF 1A', 'Boiler #1', 'Ditemukan level pelumas low 20% dan melakukan pengisian pelumas 60%', '619d9ecf46224.jpg', '619d9ecf463b5.jpg'),
(265, 'irwan.burhan', '2021-11-24 09:45:00', 'DC Oil Pump', 'Lantai 1½', '', '619da50e0daed.jpeg', '619da50e0ddfc.jpeg'),
(266, 'muhfahmiabin', '2021-11-24 10:27:00', 'COMMUNICATION ROOM ', 'Communication Room ', '', '619f13992a17c.jpg', '619f13992a689.jpg'),
(267, 'muhfahmiabin', '2021-11-25 10:00:00', 'Main Trafo dan Trafo UAT ', 'Main Trafo dan Trafo UAT', '', '619f1444ccb7c.jpg', '619f1444cceb2.jpg'),
(268, 'andre', '2021-11-25 12:30:00', 'IDF B', 'Boiler #1 lantai 1', '', '619f24977019c.jpg', '619f249770434.jpg'),
(269, 'leman', '2021-11-25 14:17:00', 'LP Drain heater pump 2A', 'Turbin lantai 1', '', '619f2b39e273c.jpg', '619f2b39e2a3f.jpg'),
(270, 'rizal.bangsawan', '2021-11-26 11:02:00', 'LP Heater Drain Pump B #1', 'Lantai 1 Turbin', 'Lampu area di sekitar peralatan tidak menyala / area gelap', '61a04e810069d.jpg', '61a04e8100cb0.jpg'),
(271, 'mardin taridala', '2021-11-26 08:49:00', 'Trafo PS #1', 'Trafo unit 1', '', '61a067b8c94d4.jpg', '61a067b8c9a7b.jpg'),
(272, 'muhammad.wahdi', '2021-11-27 11:21:00', 'Cooling fan 2B', 'Boiler unit #2 lantai 2', '', '61a1a433baa1c.jpg', '61a1a433babdf.jpg'),
(273, 'muhammadfarhankurniawan', '2021-11-27 11:20:00', 'Panel area outlet room', 'Outlet room', '-', '61a1cbd05374c.jpeg', '61a1cbd053955.jpeg'),
(274, 'muhfajar', '2021-11-30 10:30:00', 'Sootblower C1, C2, C3, C4', 'Boiler ', 'Peralatan terpantau Normal\r\nTambahan tidak ada masker dan kos tangan ', '61a588d65f67d.jpg', '61a588d65fb7c.jpg'),
(275, 'muhfajar', '2021-11-30 10:30:00', 'Sootblower C1, C2, C3, C4', 'Boiler ', 'Peralatan terpantau Normal ', '61a58943228b1.jpg', '61a5894322d87.jpg'),
(276, 'syahruljuliant0', '2021-11-30 10:40:00', 'LPH 4', 'Groundfloor Turbin #2', '', '61a5951a900be.jpeg', '61a5951a90340.jpeg'),
(277, 'muhfajar', '2021-11-30 14:35:00', 'Sootblower C1, C2, C3, C4', 'Boiler ', 'Peralatan di sekitar terpantau Aman', '61a5c6b8606d9.jpg', '61a5c6b860b69.jpg'),
(278, 'muhfajar', '2021-11-30 10:30:00', 'Sootblower C1,C2,C3,C4 #1', 'Lantai 7 Boiler #1', '', '61a5c7f4ca40f.jpg', '61a5c7f4ca682.jpg'),
(279, 'mirad.maranu', '2021-11-30 11:35:00', 'Emergency Diesel Generator', 'EDG ', '-', '61a5d3160bff1.jpeg', '61a5d3160c513.jpeg'),
(280, 'syahruljuliant0', '2021-12-01 11:30:00', 'HP Heater 2 #2', 'Groundfloor #2', '', '61a6f1eb5ed5c.jpeg', '61a6f1eb5f04e.jpeg'),
(281, 'alim hambali', '2021-11-22 11:54:00', 'Jacking Oil Pump B', 'Lantai 1 1/2', '', '61a6f307d0187.jpeg', '61a6f307d047b.jpeg'),
(282, 'alim hambali', '2021-11-30 12:00:00', 'LPH 4 ', 'Lantai Dasar Turbin', '', '61a6f4680b413.jpeg', '61a6f4680b6d9.jpeg'),
(283, 'muhfajar', '2021-12-01 10:30:00', 'Sootblower C5, C6, C7, C8 #1', 'Lantai 7 Boiler Unit #1', 'Peralatan di sekitar terpantau Aman', '61a71d462601c.jpg', '61a71d462635e.jpg'),
(284, 'hasrun044', '2021-12-02 12:25:00', 'Gland Steam Kondensor', 'Lantai 1 ½', '', '61a974855e969.jpeg', '61a974855ed81.jpeg'),
(285, 'mayong', '2021-12-03 13:12:00', 'Sootblower B5 - B8', 'Boiler #2 ', '', '61a9a7d6dfb20.jpg', '61a9a7d6dfe5c.jpg'),
(286, 'muhfahmiabin', '2021-12-02 11:32:00', 'Panel PLTG ALSTHOM ', 'Panel PLTG ALSTHOM ', '', '61a9afdcc3e13.jpg', '61a9afdcc436c.jpg'),
(287, 'muhfahmiabin', '2021-12-02 11:32:00', 'Panel PLTG ALSTHOM ', 'Panel PLTG ALSTHOM ', '', '61a9b07615494.jpg', '61a9b07615cc8.jpg'),
(288, 'muhfahmiabin', '2021-12-03 13:53:00', 'PLTG ALSTHOM (Turbin dan Generator)', 'Turbin dan Generator PLTG', '', '61a9b11620d35.jpg', '61a9b116210fd.jpg'),
(289, 'muhfahmiabin', '2021-12-03 14:01:00', 'PLTG ALSTHOM Turbin dan Generator ', 'Turbin dan Generator PLTG ALST', '', '61a9b2eb09fd0.jpg', '61a9b2eb0a5af.jpg'),
(290, 'muhlis', '2021-12-03 13:50:00', 'Gland seal Fan', 'Lantai 1½ Turbin #2', '', '61a9b56d2caaa.jpg', '61a9b56d2cc1d.jpg'),
(291, 'andre', '2021-12-02 10:30:00', 'Sootblower B1 - B4', 'Boiler #2 lantai 5', '', '61a9b6b7be86f.jpg', '61a9b6b7becdc.jpg'),
(292, 'mardin taridala', '2021-12-04 08:40:00', 'Kompresor Conveying A + Dryer', 'Kompresor Conveying Room', '', '61aace990d536.jpg', '61aace990d8bf.jpg'),
(293, 'adijn05', '2021-12-04 10:30:00', 'OGE A&amp;B #1', 'Lantai turbin', '', '61aad2eb3469a.jpeg', '61aad2eb34f1b.jpeg'),
(294, 'iccank01', '2021-11-26 11:00:00', 'Cooling Fan 2A', 'Boiler unit 2', '', '61aada19dce9c.jpeg', '61aada19dd097.jpeg'),
(295, 'iccank01', '2021-11-26 11:07:00', 'Cooling fan 2a', 'Boiler unit 2', '', '61aadb991d39a.jpeg', '61aadb991d776.jpeg'),
(296, 'iccank01', '2021-11-26 11:10:00', 'Cooling fan 2a', 'Boiler unit 2', '', '61aadc6ac286d.jpeg', '61aadc6ac2ccc.jpeg'),
(297, 'irfan', '2021-12-04 11:35:00', 'Sootblower B9, B10, B11, B12 Unit 2', 'Boiler lantai 4.5 unit 2', 'Peralatan standby', '61aae8ea42a73.jpg', '61aae8ea42d10.jpg'),
(298, 'arif91', '2021-11-02 10:30:00', 'Low Pressure Heater 7 #2', 'Turbin #2', '- Beberapa bagian peralatan tidak terjangkau (tidak ada pijakan)', '61aaefc1f41b8.jpg', '61aaefc200454.jpg'),
(299, 'bakri wahid 98', '2021-12-05 09:00:00', 'Sootblower B13,14,15,16', 'Lantai 4 Boiler #1', 'Telah melakukan kegitah tambahan berupa FLM penambahan pelumas sootblower B16 dari level 20% ke 70%', '61ac18c28131f.jpeg', '61ac18c2814be.jpeg'),
(300, 'bakri wahid 98', '2021-12-05 09:00:00', 'Sootblower B13,14,15,16', 'Lantai 4 Boiler #1', 'Telah melakukan kegitah tambahan berupa FLM penambahan pelumas sootblower B16 dari level 20% ke 70%', '61ac18c32af92.jpeg', '61ac18c32b25f.jpeg'),
(301, 'shandy02', '2021-12-05 10:30:00', 'Compressor Conveying B dan Dryer B', 'Compressor Conveying Room', '', '61ac2b138fff7.jpeg', '61ac2b13903b2.jpeg'),
(302, 'arif91', '2021-11-27 09:30:00', 'Low Pressure Heater 7 #2', 'Turbin #25', 'Beberapa bagian tidak terjangkau (tidak ada pijakan)', '61ac3fedda875.jpg', '61ac3feddae30.jpg'),
(303, 'arif91', '2021-12-05 09:20:00', 'Heat Exchanger A #2', 'Turbin #2', 'Dilakukan FLM pada valve outlet sisi demin', '61ac41581e416.jpg', '61ac41581e952.jpg'),
(304, 'wal', '2021-12-08 09:15:00', 'Condensate pump A', 'Turbin unit 1 (groundFloor) ', '', '61b00af518bad.jpeg', '61b00af51935b.jpeg'),
(305, 'eko', '2021-12-08 14:00:00', 'Induced Draf Fan ', 'Boiler unit #2', '', '61b0509421af5.jpg', '61b0509421ef9.jpg'),
(306, 'eko', '2021-12-08 14:00:00', 'Induced Draf Fan ', 'Boiler unit #2', '', '61b050d20a5da.jpg', '61b050d20a80c.jpg'),
(307, 'muhfajar', '2021-12-09 10:30:00', 'Primary Air Fan', 'Lantai 1 Boiler Unit #1', 'Catatan peralatan di sekitar terpantau Aman', '61b17dc779c8b.jpg', '61b17dc77a192.jpg'),
(308, 'leman', '2021-12-11 09:53:00', 'CWP B', 'INTAKE', '', '61b404d75951c.jpg', '61b404d759767.jpg'),
(309, 'muhfahmiabin', '2021-12-10 10:43:00', 'Switch Gear 6kV B Unit #1', 'Switch Gear 6kV B ', '', '61b4109300946.jpg', '61b41093011c3.jpg'),
(310, 'muhfahmiabin', '2021-12-11 10:46:00', 'Switch Gear 400V Unit #2', 'Switch Gear 400V ', '', '61b4113c9f2e8.jpg', '61b4113c9f711.jpg'),
(311, 'hery idswanto', '2021-12-11 08:22:00', 'SAF 1A', 'Boiler unit 1, Lt 1', '', '61b4151a92a6b.jpg', '61b4151a930dc.jpg'),
(312, 'hasrun044', '2021-12-10 09:30:00', 'CWP A #1', 'CWP House', '', '61b4210e623e7.jpeg', '61b4210e62999.jpeg'),
(313, 'andre', '2021-12-10 12:45:00', 'PAF B', 'Boiler #2 lantai 1', '', '61b426e72f5bf.jpg', '61b426e72f965.jpg'),
(314, 'andar', '2021-12-12 11:40:00', 'SAF 2B', 'Lantai 1 unit #2', '', '61b56f9aefd9d.jpg', '61b56f9aefff3.jpg'),
(315, 'andar', '2021-12-12 11:40:00', 'SAF 2B', 'Lantai 1 unit #2', '', '61b5701e1f52e.jpg', '61b5701e1f7b8.jpg'),
(316, 'andar', '2021-12-12 11:40:00', 'SAF 2B', 'Lantai 1 unit #2', '', '61b571a8536de.jpg', '61b571a853b71.jpg'),
(317, 'andar', '2021-12-12 11:51:00', 'SAF 2B', 'Lantai 1 unit #2', '', '61b5721fb98ee.jpg', '61b5721fb9c5d.jpg'),
(318, 'muhammadfarhankurniawan', '2021-12-12 11:00:00', 'Panel seitch gear common', 'Switch gear common room #1', '-', '61b577c8a17f1.jpeg', '61b577c8a1a7c.jpeg'),
(319, 'rizal.bangsawan', '2021-12-12 13:18:00', 'Travelling Screen A', 'Intake', 'Peralatan dalam kondisi stand by, cuaca dalam keadaan hujan gerimis', '61b586be2a5a1.jpg', '61b586be2a7bb.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `limasalbakedua`
--

CREATE TABLE `limasalbakedua` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `compgenerator` varchar(2) NOT NULL,
  `edg` varchar(2) NOT NULL,
  `paneledg` varchar(2) NOT NULL,
  `edgbattroompltgalsthom` varchar(2) NOT NULL,
  `panelpltgelcon` varchar(2) NOT NULL,
  `mesinalsthomtrbgen` varchar(2) NOT NULL,
  `switchgearroom400v1` varchar(2) NOT NULL,
  `switchgearroom400v2` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `limasalbakedua`
--

INSERT INTO `limasalbakedua` (`id`, `tanggal`, `compgenerator`, `edg`, `paneledg`, `edgbattroompltgalsthom`, `panelpltgelcon`, `mesinalsthomtrbgen`, `switchgearroom400v1`, `switchgearroom400v2`) VALUES
(162, '2021-12-09', '', '', '', '', '', '', '', ''),
(163, '2021-12-10', '', '', '', '', '', '', '', ''),
(164, '2021-12-11', '', '', '', '', '', '', '', 'ya'),
(165, '2021-12-12', '', '', '', '', '', '', '', ''),
(166, '2021-12-13', '', '', '', '', '', '', '', ''),
(167, '2021-12-14', '', '', '', '', '', '', '', ''),
(168, '2021-12-15', '', '', '', '', '', '', '', ''),
(169, '2021-12-16', '', '', '', '', '', '', '', ''),
(170, '2021-12-17', '', '', '', '', '', '', '', ''),
(171, '2021-12-18', '', '', '', '', '', '', '', ''),
(172, '2021-12-19', '', '', '', '', '', '', '', ''),
(173, '2021-12-20', '', '', '', '', '', '', '', ''),
(174, '2021-12-21', '', '', '', '', '', '', '', ''),
(175, '2021-12-22', '', '', '', '', '', '', '', ''),
(176, '2021-12-23', '', '', '', '', '', '', '', ''),
(177, '2021-12-24', '', '', '', '', '', '', '', ''),
(178, '2021-12-25', 'ya', '', '', '', '', '', '', ''),
(179, '2021-12-26', '', 'ya', '', '', '', '', '', ''),
(180, '2021-12-27', '', '', 'ya', '', '', '', '', ''),
(181, '2021-12-28', '', '', '', '', '', '', '', ''),
(182, '2021-12-29', '', '', '', '', '', '', '', ''),
(183, '2021-12-30', '', '', '', '', '', '', '', ''),
(184, '2021-12-31', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `limasalbapertama`
--

CREATE TABLE `limasalbapertama` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `compcnvadrayer` varchar(2) NOT NULL,
  `compcnvbdrayer` varchar(2) NOT NULL,
  `compcnvcdrayer` varchar(2) NOT NULL,
  `mccareacwp` varchar(2) NOT NULL,
  `co2room` varchar(2) NOT NULL,
  `switchgear6kv1a` varchar(2) NOT NULL,
  `switchgear6kv2a` varchar(2) NOT NULL,
  `switchgear6kv1b` varchar(2) NOT NULL,
  `switchgear6kv2b` varchar(2) NOT NULL,
  `switchgearroomcmn1` varchar(2) NOT NULL,
  `switchgearroomcmn2` varchar(2) NOT NULL,
  `elcequipmentroom1` varchar(2) NOT NULL,
  `elcequipmentroom2` varchar(2) NOT NULL,
  `ccr` varchar(2) NOT NULL,
  `samplingroom1` varchar(2) NOT NULL,
  `samplingroom2` varchar(2) NOT NULL,
  `compinsta` varchar(2) NOT NULL,
  `compinstbdrayer` varchar(2) NOT NULL,
  `compinstcdrayer` varchar(2) NOT NULL,
  `dcupsroom1` varchar(2) NOT NULL,
  `dcupsroom2` varchar(2) NOT NULL,
  `batteryroom` varchar(2) NOT NULL,
  `plantcomuniroom` varchar(2) NOT NULL,
  `maintrafotrafops1` varchar(2) NOT NULL,
  `maintrafotrafops2` varchar(2) NOT NULL,
  `trafops1` varchar(2) NOT NULL,
  `trafops2` varchar(2) NOT NULL,
  `outletroom` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `limasalbapertama`
--

INSERT INTO `limasalbapertama` (`id`, `tanggal`, `compcnvadrayer`, `compcnvbdrayer`, `compcnvcdrayer`, `mccareacwp`, `co2room`, `switchgear6kv1a`, `switchgear6kv2a`, `switchgear6kv1b`, `switchgear6kv2b`, `switchgearroomcmn1`, `switchgearroomcmn2`, `elcequipmentroom1`, `elcequipmentroom2`, `ccr`, `samplingroom1`, `samplingroom2`, `compinsta`, `compinstbdrayer`, `compinstcdrayer`, `dcupsroom1`, `dcupsroom2`, `batteryroom`, `plantcomuniroom`, `maintrafotrafops1`, `maintrafotrafops2`, `trafops1`, `trafops2`, `outletroom`) VALUES
(193, '2021-12-09', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(194, '2021-12-10', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(195, '2021-12-11', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(196, '2021-12-12', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(197, '2021-12-13', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(198, '2021-12-14', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(199, '2021-12-15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(200, '2021-12-16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(201, '2021-12-17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', ''),
(202, '2021-12-18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', ''),
(203, '2021-12-19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', ''),
(204, '2021-12-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', ''),
(205, '2021-12-21', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', ''),
(206, '2021-12-22', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', ''),
(207, '2021-12-23', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', ''),
(208, '2021-12-24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya'),
(209, '2021-12-25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(210, '2021-12-26', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(211, '2021-12-27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(212, '2021-12-28', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(213, '2021-12-29', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(214, '2021-12-30', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(215, '2021-12-31', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `limasboilerkedua`
--

CREATE TABLE `limasboilerkedua` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `sbc1toc4unit1` varchar(2) NOT NULL,
  `sbc1toc4unit2` varchar(2) NOT NULL,
  `sbc5toc8unit1` varchar(2) NOT NULL,
  `sbc5toc8unit2` varchar(2) NOT NULL,
  `sbb1tob4unit1` varchar(2) NOT NULL,
  `sbb1tob4unit2` varchar(2) NOT NULL,
  `sbb5tob8unit1` varchar(2) NOT NULL,
  `sbb5tob8unit2` varchar(2) NOT NULL,
  `sbb9tob12unit1` varchar(2) NOT NULL,
  `sbb9tob12unit2` varchar(2) NOT NULL,
  `sbb13tob16unit1` varchar(2) NOT NULL,
  `sbb13tob16unit2` varchar(2) NOT NULL,
  `sbb17tob20unit1` varchar(2) NOT NULL,
  `sbb17tob20unit2` varchar(2) NOT NULL,
  `sbb21tob24unit1` varchar(2) NOT NULL,
  `sbb21tob24unit2` varchar(2) NOT NULL,
  `sbb25tob28unit1` varchar(2) NOT NULL,
  `sbb25tob28unit2` varchar(2) NOT NULL,
  `paf1a` varchar(2) NOT NULL,
  `paf2a` varchar(2) NOT NULL,
  `paf1b` varchar(2) NOT NULL,
  `paf2b` varchar(2) NOT NULL,
  `saf1a` varchar(2) NOT NULL,
  `saf2a` varchar(2) NOT NULL,
  `saf1b` varchar(2) NOT NULL,
  `saf2b` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `limasboilerkedua`
--

INSERT INTO `limasboilerkedua` (`id`, `tanggal`, `sbc1toc4unit1`, `sbc1toc4unit2`, `sbc5toc8unit1`, `sbc5toc8unit2`, `sbb1tob4unit1`, `sbb1tob4unit2`, `sbb5tob8unit1`, `sbb5tob8unit2`, `sbb9tob12unit1`, `sbb9tob12unit2`, `sbb13tob16unit1`, `sbb13tob16unit2`, `sbb17tob20unit1`, `sbb17tob20unit2`, `sbb21tob24unit1`, `sbb21tob24unit2`, `sbb25tob28unit1`, `sbb25tob28unit2`, `paf1a`, `paf2a`, `paf1b`, `paf2b`, `saf1a`, `saf2a`, `saf1b`, `saf2b`) VALUES
(192, '2021-12-09', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', ''),
(193, '2021-12-10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', ''),
(194, '2021-12-11', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', ''),
(195, '2021-12-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya'),
(196, '2021-12-13', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(197, '2021-12-14', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(198, '2021-12-15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(199, '2021-12-16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(200, '2021-12-17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(201, '2021-12-18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(202, '2021-12-19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(203, '2021-12-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(204, '2021-12-21', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(205, '2021-12-22', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(206, '2021-12-23', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(207, '2021-12-24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(208, '2021-12-25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(209, '2021-12-26', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(210, '2021-12-27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(211, '2021-12-28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(212, '2021-12-29', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(213, '2021-12-30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(214, '2021-12-31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `limasboilerketiga`
--

CREATE TABLE `limasboilerketiga` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `hpff1a` varchar(2) NOT NULL,
  `hpff2a` varchar(2) NOT NULL,
  `hpff1b` varchar(2) NOT NULL,
  `hpff2b` varchar(2) NOT NULL,
  `hpff1c` varchar(2) NOT NULL,
  `hpff2c` varchar(2) NOT NULL,
  `mtrbottomashcooler1a` varchar(2) NOT NULL,
  `mtrbottomashcooler2a` varchar(2) NOT NULL,
  `mtrbottomashcooler1b` varchar(2) NOT NULL,
  `mtrbottomashcooler2b` varchar(2) NOT NULL,
  `movtoslagcooler1` varchar(2) NOT NULL,
  `movtoslagcooler2` varchar(2) NOT NULL,
  `lb1a` varchar(2) NOT NULL,
  `lb2a` varchar(2) NOT NULL,
  `lb1b` varchar(2) NOT NULL,
  `lb2b` varchar(2) NOT NULL,
  `lb1c` varchar(2) NOT NULL,
  `lb2c` varchar(2) NOT NULL,
  `lb1d` varchar(2) NOT NULL,
  `lb2d` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `limasboilerketiga`
--

INSERT INTO `limasboilerketiga` (`id`, `tanggal`, `hpff1a`, `hpff2a`, `hpff1b`, `hpff2b`, `hpff1c`, `hpff2c`, `mtrbottomashcooler1a`, `mtrbottomashcooler2a`, `mtrbottomashcooler1b`, `mtrbottomashcooler2b`, `movtoslagcooler1`, `movtoslagcooler2`, `lb1a`, `lb2a`, `lb1b`, `lb2b`, `lb1c`, `lb2c`, `lb1d`, `lb2d`) VALUES
(192, '2021-12-09', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(193, '2021-12-10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(194, '2021-12-11', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(195, '2021-12-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(196, '2021-12-13', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(197, '2021-12-14', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(198, '2021-12-15', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(199, '2021-12-16', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(200, '2021-12-17', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(201, '2021-12-18', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', ''),
(202, '2021-12-19', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', ''),
(203, '2021-12-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', ''),
(204, '2021-12-21', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', ''),
(205, '2021-12-22', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya'),
(206, '2021-12-23', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(207, '2021-12-24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(208, '2021-12-25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(209, '2021-12-26', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(210, '2021-12-27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(211, '2021-12-28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(212, '2021-12-29', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(213, '2021-12-30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(214, '2021-12-31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `limasboilerpertama`
--

CREATE TABLE `limasboilerpertama` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `oilburnercoolingpump1` varchar(2) NOT NULL,
  `oilburnercoolingpump2` varchar(2) NOT NULL,
  `cf1a` varchar(2) NOT NULL,
  `cf2a` varchar(2) NOT NULL,
  `cf1b` varchar(2) NOT NULL,
  `cf2b` varchar(2) NOT NULL,
  `cf1c` varchar(2) NOT NULL,
  `cf2c` varchar(2) NOT NULL,
  `cf1d` varchar(2) NOT NULL,
  `cf2d` varchar(2) NOT NULL,
  `cf1e` varchar(2) NOT NULL,
  `cf2e` varchar(2) NOT NULL,
  `cf1f` varchar(2) NOT NULL,
  `cf2f` varchar(2) NOT NULL,
  `idf1a` varchar(2) NOT NULL,
  `idf2a` varchar(2) NOT NULL,
  `idf1b` varchar(2) NOT NULL,
  `idf2b` varchar(2) NOT NULL,
  `coolingfan1a` varchar(2) NOT NULL,
  `coolingfan2a` varchar(2) NOT NULL,
  `coolingfan1b` varchar(2) NOT NULL,
  `coolingfan2b` varchar(2) NOT NULL,
  `valvedrainsampling1` varchar(2) NOT NULL,
  `valvedrainsampling2` varchar(2) NOT NULL,
  `feedingmatbed1` varchar(2) NOT NULL,
  `feedingmatbed2` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `limasboilerpertama`
--

INSERT INTO `limasboilerpertama` (`id`, `tanggal`, `oilburnercoolingpump1`, `oilburnercoolingpump2`, `cf1a`, `cf2a`, `cf1b`, `cf2b`, `cf1c`, `cf2c`, `cf1d`, `cf2d`, `cf1e`, `cf2e`, `cf1f`, `cf2f`, `idf1a`, `idf2a`, `idf1b`, `idf2b`, `coolingfan1a`, `coolingfan2a`, `coolingfan1b`, `coolingfan2b`, `valvedrainsampling1`, `valvedrainsampling2`, `feedingmatbed1`, `feedingmatbed2`) VALUES
(254, '2021-12-09', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(255, '2021-12-10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(256, '2021-12-11', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(257, '2021-12-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(258, '2021-12-13', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(259, '2021-12-14', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(260, '2021-12-15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(261, '2021-12-16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(262, '2021-12-17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(263, '2021-12-18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(264, '2021-12-19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(265, '2021-12-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(266, '2021-12-21', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(267, '2021-12-22', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(268, '2021-12-23', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(269, '2021-12-24', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(270, '2021-12-25', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(271, '2021-12-26', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(272, '2021-12-27', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(273, '2021-12-28', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(274, '2021-12-29', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(275, '2021-12-30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', ''),
(276, '2021-12-31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `limasturbinkedua`
--

CREATE TABLE `limasturbinkedua` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `acoilpump` varchar(2) NOT NULL,
  `dcoilpump` varchar(2) NOT NULL,
  `glandsealfan1` varchar(2) NOT NULL,
  `glandsealfan2` varchar(2) NOT NULL,
  `ogefan1` varchar(2) NOT NULL,
  `ogefan2` varchar(2) NOT NULL,
  `turninggear1` varchar(2) NOT NULL,
  `turninggear2` varchar(2) NOT NULL,
  `lpheaterdrainpump1a` varchar(2) NOT NULL,
  `lpheaterdrainpump2a` varchar(2) NOT NULL,
  `lpheaterdrainpump1b` varchar(2) NOT NULL,
  `lpheaterdrainpump2b` varchar(2) NOT NULL,
  `lpheater7unit1` varchar(2) NOT NULL,
  `lpheater7unit2` varchar(2) NOT NULL,
  `lpheater6unit1` varchar(2) NOT NULL,
  `lpheater6unit2` varchar(2) NOT NULL,
  `lpheater5unit1` varchar(2) NOT NULL,
  `lpheater5unit2` varchar(2) NOT NULL,
  `lpheater4unit1` varchar(2) NOT NULL,
  `lpheater4unit2` varchar(2) NOT NULL,
  `hpheater1a` varchar(2) NOT NULL,
  `hpheater2a` varchar(2) NOT NULL,
  `hpheater1b` varchar(2) NOT NULL,
  `hpheater2b` varchar(2) NOT NULL,
  `glandsteamcond1` varchar(2) NOT NULL,
  `glandsteamcond2` varchar(2) NOT NULL,
  `valvedaearator1` varchar(2) NOT NULL,
  `valvedaearator2` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `limasturbinkedua`
--

INSERT INTO `limasturbinkedua` (`id`, `tanggal`, `acoilpump`, `dcoilpump`, `glandsealfan1`, `glandsealfan2`, `ogefan1`, `ogefan2`, `turninggear1`, `turninggear2`, `lpheaterdrainpump1a`, `lpheaterdrainpump2a`, `lpheaterdrainpump1b`, `lpheaterdrainpump2b`, `lpheater7unit1`, `lpheater7unit2`, `lpheater6unit1`, `lpheater6unit2`, `lpheater5unit1`, `lpheater5unit2`, `lpheater4unit1`, `lpheater4unit2`, `hpheater1a`, `hpheater2a`, `hpheater1b`, `hpheater2b`, `glandsteamcond1`, `glandsteamcond2`, `valvedaearator1`, `valvedaearator2`) VALUES
(162, '2021-12-09', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(163, '2021-12-10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(164, '2021-12-11', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(165, '2021-12-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(166, '2021-12-13', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(167, '2021-12-14', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(168, '2021-12-15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(169, '2021-12-16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(170, '2021-12-17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', ''),
(171, '2021-12-18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(172, '2021-12-19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(173, '2021-12-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(174, '2021-12-21', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(175, '2021-12-22', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(176, '2021-12-23', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(177, '2021-12-24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(178, '2021-12-25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(179, '2021-12-26', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(180, '2021-12-27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(181, '2021-12-28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(182, '2021-12-29', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(183, '2021-12-30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(184, '2021-12-31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `limasturbinkeempat`
--

CREATE TABLE `limasturbinkeempat` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `ehoil1a` varchar(2) NOT NULL,
  `ehoil2a` varchar(2) NOT NULL,
  `ehoil1b` varchar(2) NOT NULL,
  `ehoil2b` varchar(2) NOT NULL,
  `boosterpump1a` varchar(2) NOT NULL,
  `boosterpump2a` varchar(2) NOT NULL,
  `boosterpump1b` varchar(2) NOT NULL,
  `boosterpump2b` varchar(2) NOT NULL,
  `boosterpump1c` varchar(2) NOT NULL,
  `boosterpump2c` varchar(2) NOT NULL,
  `boosterpump1d` varchar(2) NOT NULL,
  `boosterpump2d` varchar(2) NOT NULL,
  `valvedebrisfilter1a` varchar(2) NOT NULL,
  `valvedebrisfilter2a` varchar(2) NOT NULL,
  `valvedebrisfilter1b` varchar(2) NOT NULL,
  `valvedebrisfilter2b` varchar(2) NOT NULL,
  `heccwp1a` varchar(2) NOT NULL,
  `heccwp2a` varchar(2) NOT NULL,
  `heccwp1b` varchar(2) NOT NULL,
  `heccwp2b` varchar(2) NOT NULL,
  `cccwp1a` varchar(2) NOT NULL,
  `cccwp2a` varchar(2) NOT NULL,
  `cccwp1b` varchar(2) NOT NULL,
  `cccwp2b` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `limasturbinkeempat`
--

INSERT INTO `limasturbinkeempat` (`id`, `tanggal`, `ehoil1a`, `ehoil2a`, `ehoil1b`, `ehoil2b`, `boosterpump1a`, `boosterpump2a`, `boosterpump1b`, `boosterpump2b`, `boosterpump1c`, `boosterpump2c`, `boosterpump1d`, `boosterpump2d`, `valvedebrisfilter1a`, `valvedebrisfilter2a`, `valvedebrisfilter1b`, `valvedebrisfilter2b`, `heccwp1a`, `heccwp2a`, `heccwp1b`, `heccwp2b`, `cccwp1a`, `cccwp2a`, `cccwp1b`, `cccwp2b`) VALUES
(162, '2021-12-09', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(163, '2021-12-10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(164, '2021-12-11', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(165, '2021-12-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(166, '2021-12-13', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(167, '2021-12-14', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(168, '2021-12-15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(169, '2021-12-16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(170, '2021-12-17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(171, '2021-12-18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(172, '2021-12-19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(173, '2021-12-20', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(174, '2021-12-21', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(175, '2021-12-22', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(176, '2021-12-23', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(177, '2021-12-24', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(178, '2021-12-25', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', ''),
(179, '2021-12-26', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', ''),
(180, '2021-12-27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', ''),
(181, '2021-12-28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', ''),
(182, '2021-12-29', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', ''),
(183, '2021-12-30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', ''),
(184, '2021-12-31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `limasturbinketiga`
--

CREATE TABLE `limasturbinketiga` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `platheccw1a` varchar(2) NOT NULL,
  `platheccw2a` varchar(2) NOT NULL,
  `platheccw1b` varchar(2) NOT NULL,
  `platheccw2b` varchar(2) NOT NULL,
  `cep1a` varchar(2) NOT NULL,
  `cep2a` varchar(2) NOT NULL,
  `cep1b` varchar(2) NOT NULL,
  `cep2b` varchar(2) NOT NULL,
  `cwp1a` varchar(2) NOT NULL,
  `cwp2a` varchar(2) NOT NULL,
  `cwp1b` varchar(2) NOT NULL,
  `cwp2b` varchar(2) NOT NULL,
  `tvscreen1a` varchar(2) NOT NULL,
  `tvscreen2a` varchar(2) NOT NULL,
  `tvscreen1b` varchar(2) NOT NULL,
  `tvscreen2b` varchar(2) NOT NULL,
  `tvscreen1c` varchar(2) NOT NULL,
  `tvscreen2c` varchar(2) NOT NULL,
  `tvscreen1d` varchar(2) NOT NULL,
  `tvscreen2d` varchar(2) NOT NULL,
  `lubeoil1a` varchar(2) NOT NULL,
  `lubeoil2a` varchar(2) NOT NULL,
  `lubeoil1b` varchar(2) NOT NULL,
  `lubeoil2b` varchar(2) NOT NULL,
  `auxsteamheader1` varchar(2) NOT NULL,
  `auxsteamheader2` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `limasturbinketiga`
--

INSERT INTO `limasturbinketiga` (`id`, `tanggal`, `platheccw1a`, `platheccw2a`, `platheccw1b`, `platheccw2b`, `cep1a`, `cep2a`, `cep1b`, `cep2b`, `cwp1a`, `cwp2a`, `cwp1b`, `cwp2b`, `tvscreen1a`, `tvscreen2a`, `tvscreen1b`, `tvscreen2b`, `tvscreen1c`, `tvscreen2c`, `tvscreen1d`, `tvscreen2d`, `lubeoil1a`, `lubeoil2a`, `lubeoil1b`, `lubeoil2b`, `auxsteamheader1`, `auxsteamheader2`) VALUES
(162, '2021-12-09', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(163, '2021-12-10', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(164, '2021-12-11', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(165, '2021-12-12', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(166, '2021-12-13', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', '', ''),
(167, '2021-12-14', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', '', '', '', ''),
(168, '2021-12-15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', '', '', ''),
(169, '2021-12-16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(170, '2021-12-17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', '', ''),
(171, '2021-12-18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', '', '', ''),
(172, '2021-12-19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ya'),
(173, '2021-12-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(174, '2021-12-21', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(175, '2021-12-22', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(176, '2021-12-23', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(177, '2021-12-24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(178, '2021-12-25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(179, '2021-12-26', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(180, '2021-12-27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(181, '2021-12-28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(182, '2021-12-29', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(183, '2021-12-30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(184, '2021-12-31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `limasturbinpertama`
--

CREATE TABLE `limasturbinpertama` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `ballpumpapanel1` varchar(2) NOT NULL,
  `ballpumpapanel2` varchar(2) NOT NULL,
  `ballpumpbpanel1` varchar(2) NOT NULL,
  `ballpumpbpanel2` varchar(2) NOT NULL,
  `bfp1a` varchar(2) NOT NULL,
  `bfp2a` varchar(2) NOT NULL,
  `bfp1b` varchar(2) NOT NULL,
  `bfp2b` varchar(2) NOT NULL,
  `bfp1c` varchar(2) NOT NULL,
  `bfp2c` varchar(2) NOT NULL,
  `vacuumchambpump1a` varchar(2) NOT NULL,
  `vacuumchambpump2a` varchar(2) NOT NULL,
  `vacuumchambpump1b` varchar(2) NOT NULL,
  `vacuumchambpump2b` varchar(2) NOT NULL,
  `vacuumpump1a` varchar(2) NOT NULL,
  `vacuumpump2a` varchar(2) NOT NULL,
  `vacuumpump1b` varchar(2) NOT NULL,
  `vacuumpump2b` varchar(2) NOT NULL,
  `hppump1` varchar(2) NOT NULL,
  `hppump2` varchar(2) NOT NULL,
  `helubeoil1a` varchar(2) NOT NULL,
  `helubeoil2a` varchar(2) NOT NULL,
  `helubeoil1b` varchar(2) NOT NULL,
  `helubeoil2b` varchar(2) NOT NULL,
  `jopump1a` varchar(2) NOT NULL,
  `jopump2a` varchar(2) NOT NULL,
  `jopump1b` varchar(2) NOT NULL,
  `jopump2b` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `limasturbinpertama`
--

INSERT INTO `limasturbinpertama` (`id`, `tanggal`, `ballpumpapanel1`, `ballpumpapanel2`, `ballpumpbpanel1`, `ballpumpbpanel2`, `bfp1a`, `bfp2a`, `bfp1b`, `bfp2b`, `bfp1c`, `bfp2c`, `vacuumchambpump1a`, `vacuumchambpump2a`, `vacuumchambpump1b`, `vacuumchambpump2b`, `vacuumpump1a`, `vacuumpump2a`, `vacuumpump1b`, `vacuumpump2b`, `hppump1`, `hppump2`, `helubeoil1a`, `helubeoil2a`, `helubeoil1b`, `helubeoil2b`, `jopump1a`, `jopump2a`, `jopump1b`, `jopump2b`) VALUES
(162, '2021-12-09', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(163, '2021-12-10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(164, '2021-12-11', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(165, '2021-12-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(166, '2021-12-13', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(167, '2021-12-14', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(168, '2021-12-15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(169, '2021-12-16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(170, '2021-12-17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(171, '2021-12-18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(172, '2021-12-19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(173, '2021-12-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(174, '2021-12-21', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(175, '2021-12-22', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(176, '2021-12-23', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(177, '2021-12-24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(178, '2021-12-25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(179, '2021-12-26', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(180, '2021-12-27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(181, '2021-12-28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(182, '2021-12-29', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(183, '2021-12-30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(184, '2021-12-31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilailimas`
--

CREATE TABLE `nilailimas` (
  `id` int(11) NOT NULL,
  `nilai1` int(11) NOT NULL,
  `nilai2` int(11) NOT NULL,
  `nilai3` int(11) NOT NULL,
  `nilai4` int(11) NOT NULL,
  `nilai5` int(11) NOT NULL,
  `nilai6` int(11) NOT NULL,
  `nilai7` int(11) NOT NULL,
  `nilai8` int(11) NOT NULL,
  `nilai9` int(11) NOT NULL,
  `nilai10` int(11) NOT NULL,
  `nilai11` int(11) NOT NULL,
  `nilai12` int(11) NOT NULL,
  `nilai13` int(11) NOT NULL,
  `nilai14` int(11) NOT NULL,
  `nilai15` int(11) NOT NULL,
  `nilai16` int(11) NOT NULL,
  `nilai17` int(11) NOT NULL,
  `nilai18` int(11) NOT NULL,
  `nilai19` int(11) NOT NULL,
  `nilai20` int(11) NOT NULL,
  `nilai21` int(11) NOT NULL,
  `nilai22` int(11) NOT NULL,
  `nilai23` int(11) NOT NULL,
  `nilai24` int(11) NOT NULL,
  `nilai25` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilailimas`
--

INSERT INTO `nilailimas` (`id`, `nilai1`, `nilai2`, `nilai3`, `nilai4`, `nilai5`, `nilai6`, `nilai7`, `nilai8`, `nilai9`, `nilai10`, `nilai11`, `nilai12`, `nilai13`, `nilai14`, `nilai15`, `nilai16`, `nilai17`, `nilai18`, `nilai19`, `nilai20`, `nilai21`, `nilai22`, `nilai23`, `nilai24`, `nilai25`) VALUES
(11, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(12, 5, 4, 5, 5, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 4),
(13, 5, 5, 4, 4, 5, 5, 4, 4, 5, 4, 5, 5, 4, 5, 4, 5, 4, 4, 4, 4, 4, 4, 4, 5, 4),
(15, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(16, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(17, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(19, 4, 4, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 4, 5, 4, 5, 4, 4),
(20, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(21, 5, 5, 5, 5, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(22, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(23, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(24, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(25, 5, 5, 5, 5, 4, 5, 4, 4, 4, 5, 4, 4, 5, 4, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 4),
(26, 5, 5, 4, 5, 5, 5, 4, 5, 4, 5, 5, 4, 5, 4, 5, 5, 4, 4, 4, 5, 5, 5, 5, 5, 4),
(27, 5, 4, 5, 5, 4, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 4),
(28, 5, 4, 5, 5, 4, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 4),
(29, 5, 4, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 4, 4, 4, 5, 4, 5),
(31, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 4, 4, 4, 5, 4, 5),
(32, 5, 5, 4, 5, 5, 5, 4, 5, 4, 5, 5, 4, 5, 4, 5, 5, 5, 4, 4, 5, 5, 0, 5, 5, 5),
(33, 4, 4, 5, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 5, 4, 4, 4, 4),
(34, 5, 4, 5, 4, 5, 4, 4, 5, 4, 5, 5, 4, 5, 4, 4, 5, 4, 5, 5, 5, 5, 4, 4, 5, 5),
(35, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4),
(36, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 4, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(37, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 4, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(38, 5, 4, 5, 5, 4, 4, 5, 5, 4, 5, 5, 5, 5, 4, 5, 5, 4, 4, 5, 5, 5, 5, 4, 4, 4),
(39, 5, 4, 5, 5, 4, 5, 5, 4, 5, 5, 4, 5, 5, 5, 5, 5, 4, 4, 4, 5, 5, 5, 4, 4, 4),
(40, 5, 4, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5),
(41, 5, 4, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5),
(42, 5, 4, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5),
(43, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5),
(44, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(45, 5, 4, 5, 5, 5, 5, 5, 4, 4, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5),
(46, 5, 5, 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 4, 5),
(47, 5, 0, 4, 5, 5, 4, 4, 4, 4, 5, 5, 5, 5, 4, 5, 5, 5, 4, 4, 5, 4, 5, 5, 0, 5),
(48, 5, 4, 5, 5, 4, 4, 5, 4, 4, 4, 4, 5, 5, 4, 5, 5, 4, 4, 4, 5, 5, 5, 4, 4, 4),
(49, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(50, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(51, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(52, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(53, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(54, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(55, 5, 4, 5, 5, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 4, 4, 4, 5, 5, 5, 4, 5, 4),
(56, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 4, 5, 4, 4, 5, 5, 5, 4, 5, 4, 5, 5, 5, 4, 5),
(57, 5, 4, 5, 5, 5, 5, 4, 5, 5, 4, 5, 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5),
(58, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(59, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(60, 5, 4, 4, 4, 4, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 4, 4, 5, 5, 4, 4, 4, 4),
(61, 5, 4, 4, 5, 5, 5, 4, 4, 5, 4, 3, 5, 4, 4, 5, 5, 4, 3, 3, 5, 4, 4, 4, 4, 4),
(62, 4, 3, 3, 4, 4, 4, 4, 4, 4, 5, 2, 2, 3, 2, 2, 5, 4, 1, 3, 5, 5, 5, 5, 4, 5),
(63, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(64, 5, 4, 4, 5, 4, 5, 4, 4, 4, 4, 3, 5, 4, 4, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(65, 5, 5, 4, 5, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5),
(66, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(67, 4, 4, 4, 5, 5, 4, 4, 4, 4, 5, 4, 4, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(68, 5, 5, 4, 4, 5, 4, 4, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 5, 4, 4, 4, 5),
(69, 5, 4, 5, 5, 4, 4, 4, 4, 4, 5, 4, 4, 4, 4, 5, 5, 4, 4, 4, 5, 5, 4, 4, 4, 4),
(70, 5, 5, 5, 5, 5, 5, 5, 4, 4, 5, 5, 4, 4, 4, 5, 5, 5, 4, 5, 5, 5, 4, 5, 4, 4),
(71, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 4, 5, 5, 5, 5, 4, 5, 4, 4, 4, 4, 4),
(72, 5, 5, 5, 5, 3, 3, 4, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5),
(73, 5, 5, 5, 5, 3, 3, 4, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5),
(74, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(75, 5, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 5, 5, 5, 4, 4, 5, 5, 4, 4, 4, 4),
(76, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(77, 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(79, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5),
(80, 5, 4, 4, 4, 4, 4, 4, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4),
(81, 5, 5, 5, 5, 3, 5, 5, 5, 5, 4, 4, 4, 5, 4, 5, 5, 4, 4, 5, 4, 5, 5, 4, 4, 4),
(82, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 4, 4, 5, 4, 5, 5, 4, 4, 5, 4, 5, 5, 4, 4, 4),
(83, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 5, 5, 4, 4, 4, 5, 5, 4, 4, 4, 4),
(84, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(85, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 5, 4, 5, 4, 4, 5, 4, 4, 4, 4, 4, 5, 4, 4),
(86, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 4, 4, 4, 4, 4),
(88, 5, 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(90, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 4, 5, 4, 4, 5, 4, 4),
(91, 5, 5, 5, 5, 3, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(92, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(93, 5, 4, 4, 5, 5, 4, 4, 4, 0, 4, 4, 4, 5, 4, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 4),
(94, 5, 4, 4, 5, 5, 4, 4, 4, 0, 4, 4, 4, 5, 4, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 4),
(95, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(96, 5, 4, 4, 5, 4, 4, 4, 4, 4, 3, 3, 5, 5, 3, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(97, 5, 4, 5, 5, 4, 4, 5, 4, 4, 4, 4, 5, 5, 5, 5, 5, 4, 4, 4, 5, 5, 5, 4, 4, 4),
(98, 4, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 4, 5),
(99, 5, 5, 4, 5, 5, 5, 5, 5, 4, 4, 5, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 4, 4, 5, 5),
(100, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 3, 4, 5, 5, 5, 5, 4, 5, 4),
(101, 5, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 5, 5, 3, 5, 5, 4, 3, 4, 5, 4, 4, 4, 4, 4),
(102, 5, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 5, 5, 3, 5, 5, 4, 3, 4, 5, 4, 4, 4, 4, 4),
(103, 5, 4, 5, 5, 4, 4, 5, 4, 4, 4, 4, 5, 4, 4, 5, 5, 4, 4, 4, 5, 5, 5, 4, 4, 4),
(104, 4, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 4, 5),
(105, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(106, 5, 5, 5, 5, 4, 5, 4, 4, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5),
(107, 5, 4, 4, 5, 5, 4, 4, 4, 4, 5, 4, 4, 5, 4, 5, 5, 4, 4, 5, 5, 5, 5, 4, 4, 4),
(108, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 4, 4, 4, 5, 5, 5, 5, 4, 4),
(109, 5, 4, 4, 4, 4, 5, 5, 4, 5, 4, 4, 4, 5, 4, 5, 4, 5, 5, 5, 5, 0, 4, 4, 4, 4),
(110, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(111, 5, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 4, 5, 4, 4, 4, 4, 4),
(112, 5, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 4, 5, 4, 4, 4, 4, 4),
(113, 5, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 4, 5, 4, 4, 4, 4, 4),
(114, 4, 4, 5, 4, 4, 5, 4, 4, 5, 4, 4, 4, 5, 4, 5, 4, 4, 4, 4, 5, 4, 4, 5, 4, 5),
(115, 5, 5, 4, 5, 4, 4, 4, 4, 4, 4, 4, 5, 4, 5, 5, 5, 5, 4, 4, 5, 5, 4, 4, 5, 4),
(116, 5, 4, 5, 5, 5, 5, 3, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 4),
(117, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 4, 5, 5, 4, 5, 5, 5, 4, 4, 5, 4, 4, 4, 4, 4),
(118, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 4, 4, 4, 4),
(119, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(120, 5, 4, 4, 4, 4, 4, 4, 5, 4, 4, 5, 5, 5, 5, 5, 4, 5, 5, 4, 5, 5, 4, 5, 4, 5),
(121, 5, 4, 4, 5, 4, 4, 4, 4, 4, 4, 0, 4, 4, 4, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(122, 4, 5, 4, 5, 4, 4, 5, 4, 4, 5, 5, 4, 4, 4, 4, 4, 5, 4, 5, 5, 5, 4, 4, 5, 4),
(123, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4),
(124, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 4, 3, 4, 5, 4, 3, 4, 5, 4, 4, 4, 4, 4),
(125, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(126, 5, 5, 4, 5, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 4, 4, 5, 5, 5, 5, 4, 4, 4),
(127, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(128, 4, 4, 5, 4, 4, 4, 5, 5, 4, 4, 4, 5, 5, 4, 5, 5, 4, 5, 4, 5, 4, 4, 4, 4, 4),
(129, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(130, 5, 4, 5, 5, 5, 5, 4, 5, 4, 4, 4, 4, 5, 4, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 4),
(131, 5, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(132, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 5),
(133, 5, 5, 5, 4, 5, 5, 4, 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 4, 4, 4),
(134, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(135, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(136, 5, 5, 4, 5, 4, 5, 4, 4, 5, 5, 4, 4, 4, 4, 4, 5, 5, 4, 5, 5, 5, 5, 5, 4, 5),
(137, 5, 5, 4, 5, 3, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5),
(138, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(139, 5, 5, 0, 5, 5, 0, 4, 4, 4, 5, 4, 5, 4, 4, 5, 5, 4, 4, 4, 5, 0, 4, 5, 4, 4),
(140, 5, 4, 4, 4, 4, 5, 4, 4, 4, 4, 5, 5, 5, 4, 5, 4, 4, 4, 4, 5, 5, 4, 4, 4, 5),
(141, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 4, 5, 4, 4, 5, 4, 4, 4, 4, 4),
(142, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(143, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(144, 4, 4, 4, 5, 4, 5, 4, 4, 5, 4, 5, 4, 4, 5, 5, 4, 4, 4, 5, 4, 5, 4, 4, 4, 4),
(145, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(147, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(148, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(149, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(150, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(152, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 4, 5, 5, 5, 5, 4, 4, 4, 4),
(153, 5, 3, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(155, 5, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(156, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4),
(157, 5, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(158, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(159, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(160, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(161, 5, 5, 4, 5, 4, 5, 4, 5, 5, 4, 4, 5, 4, 4, 5, 5, 4, 4, 5, 5, 5, 5, 4, 4, 5),
(162, 5, 5, 5, 5, 5, 4, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(163, 4, 5, 4, 4, 5, 4, 4, 4, 5, 4, 4, 5, 4, 4, 4, 4, 4, 5, 4, 5, 4, 4, 4, 4, 5),
(164, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(165, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 5, 0, 5, 0, 5, 5, 5, 5, 5, 5, 5),
(166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(167, 5, 4, 5, 5, 4, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 4, 5, 4, 5, 4, 4),
(168, 5, 5, 4, 5, 0, 4, 4, 4, 4, 5, 4, 4, 5, 4, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 4),
(169, 5, 3, 5, 4, 4, 5, 4, 5, 4, 5, 4, 5, 5, 5, 5, 5, 3, 3, 5, 5, 5, 5, 5, 5, 4),
(170, 5, 5, 4, 5, 5, 4, 4, 4, 4, 5, 4, 4, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(171, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(172, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(173, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5),
(174, 4, 4, 4, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(175, 5, 4, 4, 5, 5, 4, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 5, 5, 4, 5, 5, 4),
(176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(177, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(178, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(179, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(180, 5, 5, 4, 5, 4, 5, 5, 5, 4, 5, 5, 5, 4, 4, 5, 5, 4, 5, 5, 5, 5, 4, 5, 5, 5),
(181, 5, 0, 5, 5, 5, 5, 4, 4, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(182, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 5, 5, 4, 4, 4, 4, 5, 4, 4, 4, 4),
(183, 5, 4, 5, 5, 5, 3, 5, 4, 3, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 5, 5, 5, 5, 5, 5),
(184, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(185, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(186, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(187, 5, 5, 4, 5, 5, 4, 5, 5, 5, 5, 4, 4, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4),
(188, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(189, 5, 4, 5, 4, 5, 5, 5, 4, 5, 5, 5, 5, 5, 4, 4, 4, 5, 5, 5, 4, 4, 4, 4, 5, 5),
(190, 5, 5, 4, 4, 4, 4, 5, 5, 5, 5, 4, 4, 4, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 4),
(191, 5, 5, 4, 4, 4, 4, 5, 5, 5, 5, 4, 4, 4, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 4),
(192, 5, 5, 4, 4, 4, 4, 5, 5, 5, 5, 4, 4, 4, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 4),
(193, 5, 4, 4, 5, 4, 4, 4, 4, 4, 3, 3, 5, 4, 3, 5, 5, 4, 3, 4, 5, 4, 4, 4, 4, 4),
(194, 5, 4, 4, 5, 4, 5, 4, 4, 5, 3, 4, 4, 4, 4, 5, 5, 4, 3, 4, 5, 4, 4, 4, 4, 4),
(195, 5, 4, 5, 5, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(196, 5, 4, 4, 4, 5, 3, 4, 4, 4, 4, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(197, 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 4, 4),
(198, 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 4, 4),
(199, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(200, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(201, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(202, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 5, 4, 5, 4, 4, 4, 4, 4),
(203, 5, 5, 5, 4, 4, 4, 5, 4, 4, 5, 4, 5, 4, 5, 5, 5, 5, 4, 4, 4, 5, 5, 4, 4, 4),
(204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(205, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 4, 4, 4, 4, 5, 5, 5, 4),
(206, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 4, 4, 4, 4, 5, 5, 5, 4),
(207, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 4, 4, 4, 4, 5, 5, 5, 4),
(208, 5, 4, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 4, 5, 5, 5, 4, 4, 4, 5, 5, 4, 4, 4),
(209, 5, 4, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 4, 5, 5, 5, 4, 4, 4, 5, 5, 4, 4, 4),
(210, 5, 5, 5, 5, 4, 5, 4, 5, 4, 4, 4, 5, 4, 5, 5, 5, 4, 4, 4, 5, 5, 5, 4, 4, 4),
(211, 5, 5, 5, 5, 4, 5, 4, 5, 4, 4, 4, 5, 4, 5, 5, 5, 4, 4, 4, 5, 5, 5, 4, 4, 4),
(212, 5, 5, 5, 5, 5, 4, 5, 5, 4, 4, 4, 5, 4, 4, 5, 5, 5, 4, 4, 4, 5, 5, 4, 4, 4),
(213, 5, 5, 5, 5, 5, 4, 5, 5, 4, 4, 4, 5, 4, 4, 5, 5, 5, 4, 4, 4, 5, 5, 4, 4, 4),
(214, 5, 5, 5, 5, 4, 5, 5, 4, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4),
(215, 5, 5, 5, 5, 4, 4, 5, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 4, 4),
(216, 5, 5, 5, 5, 4, 4, 5, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 4, 4),
(217, 5, 5, 5, 4, 5, 4, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 4, 4),
(218, 5, 4, 5, 5, 4, 4, 4, 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 4, 5),
(219, 5, 4, 5, 5, 4, 4, 4, 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 4, 5),
(220, 5, 4, 5, 5, 4, 4, 4, 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 4, 5),
(221, 5, 4, 4, 5, 4, 5, 4, 5, 4, 5, 5, 5, 4, 4, 5, 5, 4, 4, 4, 5, 5, 5, 5, 4, 5),
(222, 5, 5, 5, 0, 4, 4, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 4, 4),
(223, 5, 5, 4, 5, 4, 5, 4, 5, 4, 4, 4, 5, 5, 4, 5, 5, 4, 5, 5, 5, 5, 4, 5, 4, 5),
(224, 5, 4, 5, 5, 4, 4, 5, 4, 4, 4, 5, 5, 4, 5, 5, 5, 4, 5, 4, 5, 5, 5, 4, 5, 5),
(225, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5),
(226, 4, 4, 5, 4, 5, 5, 5, 5, 4, 4, 3, 3, 4, 4, 4, 5, 4, 5, 5, 5, 4, 5, 5, 5, 0),
(227, 4, 4, 5, 4, 5, 5, 5, 5, 4, 4, 3, 3, 4, 4, 4, 5, 4, 5, 5, 5, 4, 5, 5, 5, 0),
(228, 4, 4, 5, 4, 5, 5, 5, 5, 4, 4, 3, 3, 4, 4, 4, 5, 4, 5, 5, 5, 4, 5, 5, 5, 0),
(229, 5, 4, 4, 5, 5, 5, 4, 4, 4, 5, 4, 5, 5, 4, 5, 4, 5, 4, 5, 5, 5, 4, 5, 5, 5),
(230, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 5, 4, 3, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(231, 5, 4, 5, 5, 5, 4, 5, 5, 5, 5, 4, 0, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 5, 4, 5),
(232, 5, 5, 5, 5, 4, 4, 4, 5, 0, 4, 4, 4, 5, 4, 5, 5, 5, 4, 5, 5, 5, 4, 5, 5, 4),
(233, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 5, 5, 4, 4, 4, 4),
(234, 4, 0, 4, 5, 5, 4, 4, 4, 4, 4, 4, 4, 5, 4, 4, 5, 4, 4, 4, 4, 5, 4, 4, 4, 4),
(235, 5, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 5, 4, 4, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(236, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 4, 5, 4, 4, 5, 4, 4, 4),
(237, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(238, 5, 5, 4, 5, 5, 4, 5, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 4),
(239, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(241, 5, 4, 5, 4, 5, 5, 5, 5, 4, 4, 4, 5, 5, 4, 4, 5, 4, 3, 4, 5, 5, 5, 5, 4, 4),
(242, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(243, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(244, 4, 5, 4, 5, 5, 5, 5, 4, 5, 4, 4, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 5, 5, 5, 5),
(245, 5, 5, 5, 5, 5, 5, 5, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(246, 4, 4, 4, 5, 4, 3, 4, 4, 4, 3, 4, 4, 4, 4, 5, 5, 4, 3, 4, 5, 4, 4, 4, 4, 4),
(247, 5, 5, 4, 0, 5, 5, 4, 5, 4, 4, 4, 5, 5, 4, 0, 5, 5, 4, 4, 5, 5, 5, 5, 5, 4),
(248, 5, 5, 4, 5, 5, 4, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(249, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 4, 4, 4, 5, 5, 4, 4, 4, 5, 5, 4, 4, 4, 4),
(250, 5, 4, 4, 3, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 5, 5, 5, 4, 4, 5, 4, 4, 4, 4, 4),
(251, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(252, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(253, 5, 4, 5, 5, 4, 5, 0, 5, 5, 5, 4, 5, 4, 4, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5, 4),
(254, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(255, 5, 4, 4, 5, 4, 4, 4, 4, 4, 5, 4, 4, 4, 4, 5, 5, 5, 4, 4, 5, 5, 5, 4, 5, 4),
(256, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(257, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(258, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(259, 5, 5, 5, 5, 4, 5, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 4),
(260, 5, 5, 4, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5),
(261, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 5, 3, 4, 5, 5, 4, 3, 4, 5, 4, 4, 4, 4, 4),
(262, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(263, 4, 4, 4, 5, 4, 4, 5, 4, 5, 4, 4, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 5, 5),
(264, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(265, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(266, 5, 5, 4, 5, 4, 4, 4, 4, 5, 5, 4, 5, 5, 4, 5, 5, 4, 4, 4, 5, 5, 5, 5, 5, 4),
(267, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(268, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(269, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(270, 5, 4, 5, 5, 4, 5, 4, 5, 4, 5, 4, 5, 4, 4, 5, 5, 4, 5, 5, 4, 5, 5, 4, 4, 5),
(271, 5, 4, 4, 5, 4, 4, 4, 5, 4, 5, 4, 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 4, 5, 4, 5),
(272, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(273, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(274, 5, 5, 5, 5, 5, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(275, 5, 5, 5, 5, 4, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 4, 4, 4, 5, 5, 5),
(276, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 4, 5, 4, 5, 5, 4, 5, 4, 5, 5, 4, 5, 5, 5),
(277, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(278, 5, 5, 5, 4, 4, 4, 5, 5, 4, 5, 4, 5, 5, 5, 5, 5, 4, 4, 4, 5, 5, 5, 5, 5, 5),
(279, 5, 5, 5, 4, 4, 4, 5, 5, 4, 5, 4, 5, 5, 5, 5, 5, 4, 4, 4, 5, 5, 5, 5, 5, 5),
(280, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(281, 5, 5, 4, 5, 4, 4, 4, 0, 5, 4, 5, 4, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5),
(282, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(283, 5, 4, 4, 3, 4, 3, 4, 4, 4, 4, 4, 5, 5, 4, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(284, 5, 5, 5, 5, 5, 5, 4, 4, 4, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5),
(285, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 4, 5, 5, 4, 3, 4, 5, 4, 4, 4, 4, 4),
(286, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(287, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(288, 5, 5, 5, 5, 4, 5, 5, 4, 4, 5, 4, 4, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(289, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(290, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(291, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(292, 5, 5, 5, 5, 4, 4, 4, 5, 5, 5, 5, 5, 5, 4, 4, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5),
(293, 5, 4, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 4, 4, 4, 5, 5, 4, 4),
(294, 5, 4, 4, 5, 5, 5, 4, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 4, 4, 4, 5, 5, 4, 4, 4),
(295, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(296, 4, 4, 4, 5, 4, 4, 4, 4, 4, 3, 4, 4, 3, 3, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(297, 5, 4, 4, 5, 5, 4, 5, 5, 4, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 5, 5, 5),
(298, 5, 5, 4, 4, 4, 4, 5, 3, 4, 5, 4, 5, 4, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 5),
(299, 5, 5, 4, 4, 4, 4, 5, 3, 4, 5, 4, 5, 4, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 5),
(300, 4, 4, 4, 4, 5, 5, 5, 5, 4, 5, 5, 5, 3, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 5, 5),
(301, 5, 4, 5, 4, 4, 4, 5, 5, 4, 5, 4, 5, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 4, 5),
(302, 5, 5, 4, 5, 5, 4, 4, 4, 4, 4, 4, 4, 5, 4, 5, 5, 5, 4, 4, 5, 5, 5, 5, 4, 4),
(303, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(304, 4, 3, 4, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 5, 4, 4, 4, 5, 4),
(305, 5, 5, 5, 5, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 4, 5, 4, 4, 4, 4, 4, 4),
(306, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(307, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(308, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(309, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(310, 5, 4, 4, 5, 5, 4, 5, 5, 4, 5, 5, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 4, 4, 4),
(311, 5, 5, 4, 4, 4, 4, 5, 4, 4, 5, 4, 4, 5, 4, 4, 5, 4, 4, 4, 5, 4, 5, 4, 4, 4),
(312, 5, 5, 4, 4, 4, 4, 5, 4, 4, 5, 4, 4, 5, 4, 4, 5, 4, 4, 4, 5, 4, 5, 4, 4, 4),
(313, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 3, 4, 5, 4, 4, 4, 4, 4),
(314, 5, 4, 5, 5, 5, 4, 5, 4, 4, 5, 5, 5, 5, 4, 5, 5, 4, 4, 5, 5, 5, 4, 5, 4, 4),
(315, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 4),
(316, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(317, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 4, 4, 4, 4, 4, 4, 4),
(318, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(319, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(320, 5, 5, 4, 5, 5, 5, 5, 4, 4, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 4, 5),
(321, 5, 4, 4, 4, 4, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5),
(322, 5, 4, 4, 4, 5, 5, 5, 5, 4, 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 5, 5, 5, 5),
(323, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(324, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 5, 4, 3, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(325, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(326, 5, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(327, 5, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(328, 5, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(329, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 4, 3, 3, 3, 3, 4, 4, 4, 3, 3, 4),
(330, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 5, 4, 4, 4, 4, 4),
(331, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedulecommon`
--

CREATE TABLE `schedulecommon` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `compressorinstrumentservicea` varchar(2) NOT NULL,
  `compressorinstrumentserviceb` varchar(2) NOT NULL,
  `compressorinstrumentservicec` varchar(2) NOT NULL,
  `compressorconveyinga` varchar(2) NOT NULL,
  `compressorconveyingb` varchar(2) NOT NULL,
  `compressorconveyingc` varchar(2) NOT NULL,
  `ACcentralequipment1a` varchar(2) NOT NULL,
  `ACcentralequipment1b` varchar(2) NOT NULL,
  `ACcentralequipment2a` varchar(2) NOT NULL,
  `ACcentralequipment2b` varchar(2) NOT NULL,
  `ACcentralccra` varchar(2) NOT NULL,
  `ACcentralccrb` varchar(2) NOT NULL,
  `warmingupedg` varchar(2) NOT NULL,
  `warmingupauxboiler` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `schedulecommon`
--

INSERT INTO `schedulecommon` (`id`, `tanggal`, `compressorinstrumentservicea`, `compressorinstrumentserviceb`, `compressorinstrumentservicec`, `compressorconveyinga`, `compressorconveyingb`, `compressorconveyingc`, `ACcentralequipment1a`, `ACcentralequipment1b`, `ACcentralequipment2a`, `ACcentralequipment2b`, `ACcentralccra`, `ACcentralccrb`, `warmingupedg`, `warmingupauxboiler`) VALUES
(389, '2021-12-09', 'ya', 'ya', '', '', 'ya', 'ya', '', 'ya', 'ya', '', 'ya', '', '', ''),
(390, '2021-12-10', 'ya', 'ya', '', '', 'ya', 'ya', '', 'ya', 'ya', '', 'ya', '', '', ''),
(391, '2021-12-11', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', '', ''),
(392, '2021-12-12', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', '', ''),
(393, '2021-12-13', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', '', ''),
(394, '2021-12-14', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', '', 'ya', '', 'ya', '', ''),
(395, '2021-12-15', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', '', 'ya', '', 'ya', 'ya', ''),
(396, '2021-12-16', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', '', 'ya', '', 'ya', '', ''),
(397, '2021-12-17', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', '', 'ya', '', 'ya', '', ''),
(398, '2021-12-18', '', 'ya', 'ya', '', 'ya', 'ya', 'ya', '', '', 'ya', '', 'ya', '', ''),
(399, '2021-12-19', '', 'ya', 'ya', '', 'ya', 'ya', 'ya', '', '', 'ya', '', 'ya', '', ''),
(400, '2021-12-20', '', 'ya', 'ya', 'ya', '', 'ya', 'ya', '', '', 'ya', '', 'ya', '', ''),
(401, '2021-12-21', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', '', ''),
(402, '2021-12-22', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', '', ''),
(403, '2021-12-23', '', 'ya', 'ya', 'ya', 'ya', '', '', 'ya', 'ya', '', 'ya', '', '', ''),
(404, '2021-12-24', '', 'ya', 'ya', 'ya', 'ya', '', '', 'ya', 'ya', '', 'ya', '', '', ''),
(405, '2021-12-25', 'ya', 'ya', '', 'ya', 'ya', '', '', 'ya', 'ya', '', 'ya', '', '', ''),
(406, '2021-12-26', 'ya', 'ya', '', '', 'ya', 'ya', '', 'ya', 'ya', '', 'ya', '', '', ''),
(407, '2021-12-27', 'ya', 'ya', '', '', 'ya', 'ya', '', 'ya', 'ya', '', 'ya', '', '', ''),
(408, '2021-12-28', 'ya', 'ya', '', '', 'ya', 'ya', 'ya', '', '', 'ya', '', 'ya', '', ''),
(409, '2021-12-29', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', '', 'ya', '', 'ya', '', 'ya'),
(410, '2021-12-30', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', '', 'ya', '', 'ya', '', ''),
(411, '2021-12-31', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', '', 'ya', '', 'ya', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `scheduledua`
--

CREATE TABLE `scheduledua` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `cwpaboosterpumpa` varchar(2) NOT NULL,
  `cwpaboosterpumpb` varchar(2) NOT NULL,
  `cwpbboosterpumpa` varchar(2) NOT NULL,
  `cwpbboosterpumpb` varchar(2) NOT NULL,
  `ccwp2a` varchar(2) NOT NULL,
  `ccwp2b` varchar(2) NOT NULL,
  `cep2a` varchar(2) NOT NULL,
  `cep2b` varchar(2) NOT NULL,
  `vacuumpump2a` varchar(2) NOT NULL,
  `vacuumpump2b` varchar(2) NOT NULL,
  `bfp2a` varchar(2) NOT NULL,
  `bfp2b` varchar(2) NOT NULL,
  `bfp2c` varchar(2) NOT NULL,
  `ehoilpump2a` varchar(2) NOT NULL,
  `ehoilpump2b` varchar(2) NOT NULL,
  `glandsealfan2a` varchar(2) NOT NULL,
  `glandsealfan2b` varchar(2) NOT NULL,
  `hpff2a` varchar(2) NOT NULL,
  `hpff2b` varchar(2) NOT NULL,
  `hpff2c` varchar(2) NOT NULL,
  `ogefan2a` varchar(2) NOT NULL,
  `ogefan2b` varchar(2) NOT NULL,
  `coolingfan2a` varchar(2) NOT NULL,
  `coolingfan2b` varchar(2) NOT NULL,
  `ballcleaning2` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `scheduledua`
--

INSERT INTO `scheduledua` (`id`, `tanggal`, `cwpaboosterpumpa`, `cwpaboosterpumpb`, `cwpbboosterpumpa`, `cwpbboosterpumpb`, `ccwp2a`, `ccwp2b`, `cep2a`, `cep2b`, `vacuumpump2a`, `vacuumpump2b`, `bfp2a`, `bfp2b`, `bfp2c`, `ehoilpump2a`, `ehoilpump2b`, `glandsealfan2a`, `glandsealfan2b`, `hpff2a`, `hpff2b`, `hpff2c`, `ogefan2a`, `ogefan2b`, `coolingfan2a`, `coolingfan2b`, `ballcleaning2`) VALUES
(379, '2021-12-09', '', 'ya', 'ya', '', '', 'ya', 'ya', '', 'ya', '', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', '', ''),
(380, '2021-12-10', '', 'ya', 'ya', '', '', 'ya', 'ya', '', 'ya', '', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', '', 'ya', ''),
(381, '2021-12-11', '', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', '', '', 'ya', 'ya', 'ya', '', 'ya', '', '', 'ya', 'ya', 'ya', '', '', 'ya', ''),
(382, '2021-12-12', '', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', '', '', 'ya', 'ya', 'ya', '', 'ya', '', '', 'ya', 'ya', 'ya', '', '', 'ya', 'ya'),
(383, '2021-12-13', '', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', '', '', 'ya', 'ya', 'ya', '', 'ya', '', '', 'ya', 'ya', '', 'ya', '', 'ya', ''),
(384, '2021-12-14', '', 'ya', 'ya', '', 'ya', '', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', '', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', ''),
(385, '2021-12-15', '', 'ya', 'ya', '', 'ya', '', '', 'ya', '', 'ya', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', 'ya'),
(386, '2021-12-16', 'ya', '', '', 'ya', 'ya', '', '', 'ya', '', 'ya', 'ya', '', 'ya', 'ya', '', '', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', ''),
(387, '2021-12-17', 'ya', '', '', 'ya', 'ya', '', '', 'ya', '', 'ya', 'ya', '', 'ya', 'ya', '', '', 'ya', '', 'ya', 'ya', '', 'ya', 'ya', '', ''),
(388, '2021-12-18', 'ya', '', '', 'ya', 'ya', '', '', 'ya', '', 'ya', 'ya', '', 'ya', 'ya', '', '', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya'),
(389, '2021-12-19', 'ya', '', '', 'ya', 'ya', '', '', 'ya', '', 'ya', 'ya', '', 'ya', 'ya', '', '', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', ''),
(390, '2021-12-20', 'ya', '', '', 'ya', 'ya', '', '', 'ya', '', 'ya', 'ya', '', 'ya', 'ya', '', '', 'ya', 'ya', '', 'ya', 'ya', '', 'ya', '', ''),
(391, '2021-12-21', 'ya', '', '', 'ya', 'ya', '', '', 'ya', '', 'ya', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya'),
(392, '2021-12-22', 'ya', '', '', 'ya', 'ya', '', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', ''),
(393, '2021-12-23', 'ya', '', '', 'ya', 'ya', '', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', ''),
(394, '2021-12-24', 'ya', '', '', 'ya', 'ya', '', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', '', 'ya', 'ya'),
(395, '2021-12-25', 'ya', '', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', '', 'ya', ''),
(396, '2021-12-26', 'ya', '', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', '', 'ya', ''),
(397, '2021-12-27', 'ya', '', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', '', 'ya', '', 'ya', 'ya'),
(398, '2021-12-28', 'ya', '', '', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', '', 'ya', 'ya', 'ya', '', '', 'ya', '', 'ya', ''),
(399, '2021-12-29', 'ya', '', '', 'ya', '', 'ya', 'ya', '', 'ya', '', '', 'ya', 'ya', 'ya', 'ya', '', 'ya', 'ya', 'ya', '', '', 'ya', '', 'ya', ''),
(400, '2021-12-30', '', 'ya', 'ya', '', '', 'ya', 'ya', '', 'ya', '', '', 'ya', 'ya', 'ya', '', '', 'ya', 'ya', 'ya', '', '', 'ya', '', 'ya', 'ya'),
(401, '2021-12-31', '', 'ya', 'ya', '', '', 'ya', 'ya', '', 'ya', '', '', 'ya', 'ya', 'ya', '', '', 'ya', 'ya', 'ya', '', '', 'ya', 'ya', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedulesatu`
--

CREATE TABLE `schedulesatu` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `cwpcboosterpumpa` varchar(2) NOT NULL,
  `cwpcboosterpumpb` varchar(2) NOT NULL,
  `cwpdboosterpumpa` varchar(2) NOT NULL,
  `cwpdboosterpumpb` varchar(2) NOT NULL,
  `ccwp1a` varchar(2) NOT NULL,
  `ccwp1b` varchar(2) NOT NULL,
  `cep1a` varchar(2) NOT NULL,
  `cep1b` varchar(2) NOT NULL,
  `vacuumpump1a` varchar(2) NOT NULL,
  `vacuumpump1b` varchar(2) NOT NULL,
  `bfp1a` varchar(2) NOT NULL,
  `bfp1b` varchar(2) NOT NULL,
  `bfp1c` varchar(2) NOT NULL,
  `ehoilpump1a` varchar(2) NOT NULL,
  `ehoilpump1b` varchar(2) NOT NULL,
  `glandsealfan1a` varchar(2) NOT NULL,
  `glandsealfan1b` varchar(2) NOT NULL,
  `hpff1a` varchar(2) NOT NULL,
  `hpff1b` varchar(2) NOT NULL,
  `hpff1c` varchar(2) NOT NULL,
  `ogefan1a` varchar(2) NOT NULL,
  `ogefan1b` varchar(2) NOT NULL,
  `coolingfan1a` varchar(2) NOT NULL,
  `coolingfan1b` varchar(2) NOT NULL,
  `ballcleaning1` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `schedulesatu`
--

INSERT INTO `schedulesatu` (`id`, `tanggal`, `cwpcboosterpumpa`, `cwpcboosterpumpb`, `cwpdboosterpumpa`, `cwpdboosterpumpb`, `ccwp1a`, `ccwp1b`, `cep1a`, `cep1b`, `vacuumpump1a`, `vacuumpump1b`, `bfp1a`, `bfp1b`, `bfp1c`, `ehoilpump1a`, `ehoilpump1b`, `glandsealfan1a`, `glandsealfan1b`, `hpff1a`, `hpff1b`, `hpff1c`, `ogefan1a`, `ogefan1b`, `coolingfan1a`, `coolingfan1b`, `ballcleaning1`) VALUES
(1254, '2021-12-09', 'ya', '', '', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', '', 'ya', ''),
(1255, '2021-12-10', 'ya', '', '', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', '', 'ya', ''),
(1256, '2021-12-11', 'ya', '', '', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', '', 'ya', 'ya', 'ya', '', '', 'ya', 'ya'),
(1257, '2021-12-12', 'ya', '', '', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', '', 'ya', 'ya', 'ya', '', '', 'ya', ''),
(1258, '2021-12-13', 'ya', '', '', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', '', 'ya', 'ya', '', 'ya', '', 'ya', ''),
(1259, '2021-12-14', 'ya', '', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', 'ya', '', '', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', 'ya'),
(1260, '2021-12-15', 'ya', '', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', ''),
(1261, '2021-12-16', 'ya', '', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', '', 'ya', '', 'ya', 'ya', '', 'ya', 'ya', '', ''),
(1262, '2021-12-17', '', 'ya', 'ya', '', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', '', 'ya', '', 'ya', 'ya', '', 'ya', 'ya', '', 'ya'),
(1263, '2021-12-18', '', 'ya', 'ya', '', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', '', 'ya', 'ya', 'ya', '', '', 'ya', 'ya', '', ''),
(1264, '2021-12-19', '', 'ya', 'ya', '', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', '', 'ya', 'ya', 'ya', '', '', 'ya', 'ya', '', ''),
(1265, '2021-12-20', '', 'ya', 'ya', '', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya'),
(1266, '2021-12-21', '', 'ya', 'ya', '', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', '', ''),
(1267, '2021-12-22', '', 'ya', 'ya', '', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', 'ya', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', '', ''),
(1268, '2021-12-23', '', 'ya', 'ya', '', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', '', 'ya', 'ya'),
(1269, '2021-12-24', '', 'ya', 'ya', '', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', 'ya', '', '', 'ya', ''),
(1270, '2021-12-25', '', 'ya', 'ya', '', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', '', 'ya', ''),
(1271, '2021-12-26', '', 'ya', 'ya', '', 'ya', '', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', '', 'ya', 'ya'),
(1272, '2021-12-27', '', 'ya', 'ya', '', 'ya', '', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', '', 'ya', '', 'ya', ''),
(1273, '2021-12-28', '', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', '', '', 'ya', 'ya', 'ya', '', '', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', ''),
(1274, '2021-12-29', '', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', 'ya', '', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya'),
(1275, '2021-12-30', '', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', '', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', ''),
(1276, '2021-12-31', 'ya', '', '', 'ya', 'ya', '', 'ya', '', 'ya', '', 'ya', '', 'ya', 'ya', '', '', 'ya', 'ya', '', 'ya', '', 'ya', 'ya', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sddata`
--

CREATE TABLE `sddata` (
  `id` int(11) NOT NULL,
  `unit` int(1) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `a` varchar(1) NOT NULL,
  `b` varchar(1) NOT NULL,
  `c` varchar(1) NOT NULL,
  `d` varchar(1) NOT NULL,
  `wtp` varchar(255) NOT NULL,
  `analisa` varchar(255) NOT NULL,
  `boilerAux1` varchar(255) NOT NULL,
  `boilerAux2` varchar(255) NOT NULL,
  `turbinAux1` varchar(255) NOT NULL,
  `turbinAux2` varchar(255) NOT NULL,
  `electrical1` varchar(255) NOT NULL,
  `electrical2` varchar(255) NOT NULL,
  `sepatu` varchar(6) NOT NULL,
  `helm` varchar(4) NOT NULL,
  `earplug` varchar(7) NOT NULL,
  `masker` varchar(6) NOT NULL,
  `sTangan` varchar(13) NOT NULL,
  `aspek1` text NOT NULL,
  `aspek2` text NOT NULL,
  `pencegahan1` text NOT NULL,
  `pencegahan2` text NOT NULL,
  `jamSD` time NOT NULL,
  `bebanSD` varchar(10) NOT NULL,
  `lamaSD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sddata`
--

INSERT INTO `sddata` (`id`, `unit`, `waktu`, `a`, `b`, `c`, `d`, `wtp`, `analisa`, `boilerAux1`, `boilerAux2`, `turbinAux1`, `turbinAux2`, `electrical1`, `electrical2`, `sepatu`, `helm`, `earplug`, `masker`, `sTangan`, `aspek1`, `aspek2`, `pencegahan1`, `pencegahan2`, `jamSD`, `bebanSD`, `lamaSD`) VALUES
(5, 0, '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1. ', '2. ', '1. ', '2. ', '00:00:00', '', ''),
(6, 0, '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1. ', '2. ', '1. ', '2. ', '00:00:00', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sdgangguan`
--

CREATE TABLE `sdgangguan` (
  `id` int(11) NOT NULL,
  `gangguan1` varchar(255) NOT NULL,
  `ketgangguan1` varchar(255) NOT NULL,
  `gangguan2` varchar(255) NOT NULL,
  `ketgangguan2` varchar(255) NOT NULL,
  `gangguan3` varchar(255) NOT NULL,
  `ketgangguan3` varchar(255) NOT NULL,
  `gangguan4` varchar(255) NOT NULL,
  `ketgangguan4` varchar(255) NOT NULL,
  `gangguan5` varchar(255) NOT NULL,
  `ketgangguan5` varchar(255) NOT NULL,
  `gangguan6` varchar(255) NOT NULL,
  `ketgangguan6` varchar(255) NOT NULL,
  `gangguan7` varchar(255) NOT NULL,
  `ketgangguan7` varchar(255) NOT NULL,
  `gangguan8` varchar(255) NOT NULL,
  `ketgangguan8` varchar(255) NOT NULL,
  `gangguan9` varchar(255) NOT NULL,
  `ketgangguan9` varchar(255) NOT NULL,
  `gangguan10` varchar(255) NOT NULL,
  `ketgangguan10` varchar(255) NOT NULL,
  `gangguan11` varchar(255) NOT NULL,
  `ketgangguan11` varchar(255) NOT NULL,
  `gangguan12` varchar(255) NOT NULL,
  `ketgangguan12` varchar(255) NOT NULL,
  `gangguan13` varchar(255) NOT NULL,
  `ketgangguan13` varchar(255) NOT NULL,
  `gangguan14` varchar(255) NOT NULL,
  `ketgangguan14` varchar(255) NOT NULL,
  `gangguan15` varchar(255) NOT NULL,
  `ketgangguan15` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sdgangguan`
--

INSERT INTO `sdgangguan` (`id`, `gangguan1`, `ketgangguan1`, `gangguan2`, `ketgangguan2`, `gangguan3`, `ketgangguan3`, `gangguan4`, `ketgangguan4`, `gangguan5`, `ketgangguan5`, `gangguan6`, `ketgangguan6`, `gangguan7`, `ketgangguan7`, `gangguan8`, `ketgangguan8`, `gangguan9`, `ketgangguan9`, `gangguan10`, `ketgangguan10`, `gangguan11`, `ketgangguan11`, `gangguan12`, `ketgangguan12`, `gangguan13`, `ketgangguan13`, `gangguan14`, `ketgangguan14`, `gangguan15`, `ketgangguan15`) VALUES
(5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sdjawaban`
--

CREATE TABLE `sdjawaban` (
  `id` int(11) NOT NULL,
  `jawaban0` varchar(5) NOT NULL,
  `jawaban1` varchar(5) NOT NULL,
  `jawaban2` varchar(5) NOT NULL,
  `jawaban3` varchar(5) NOT NULL,
  `jawaban4` varchar(5) NOT NULL,
  `jawaban5` varchar(5) NOT NULL,
  `jawaban6` varchar(5) NOT NULL,
  `jawaban7` varchar(5) NOT NULL,
  `jawaban8` varchar(5) NOT NULL,
  `jawaban9` varchar(5) NOT NULL,
  `jawaban10` varchar(5) NOT NULL,
  `jawaban11` varchar(5) NOT NULL,
  `jawaban12` varchar(5) NOT NULL,
  `jawaban13` varchar(5) NOT NULL,
  `jawaban14` varchar(5) NOT NULL,
  `jawaban15` varchar(5) NOT NULL,
  `jawaban16` varchar(5) NOT NULL,
  `jawaban17` varchar(5) NOT NULL,
  `jawaban18` varchar(5) NOT NULL,
  `jawaban19` varchar(5) NOT NULL,
  `jawaban20` varchar(5) NOT NULL,
  `jawaban21` varchar(5) NOT NULL,
  `jawaban22` varchar(5) NOT NULL,
  `jawaban23` varchar(5) NOT NULL,
  `jawaban24` varchar(5) NOT NULL,
  `jawaban25` varchar(5) NOT NULL,
  `jawaban26` varchar(5) NOT NULL,
  `jawaban27` varchar(5) NOT NULL,
  `jawaban28` varchar(5) NOT NULL,
  `jawaban29` varchar(5) NOT NULL,
  `jawaban30` varchar(5) NOT NULL,
  `jawaban31` varchar(5) NOT NULL,
  `jawaban32` varchar(5) NOT NULL,
  `jawaban33` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sdjawaban`
--

INSERT INTO `sdjawaban` (`id`, `jawaban0`, `jawaban1`, `jawaban2`, `jawaban3`, `jawaban4`, `jawaban5`, `jawaban6`, `jawaban7`, `jawaban8`, `jawaban9`, `jawaban10`, `jawaban11`, `jawaban12`, `jawaban13`, `jawaban14`, `jawaban15`, `jawaban16`, `jawaban17`, `jawaban18`, `jawaban19`, `jawaban20`, `jawaban21`, `jawaban22`, `jawaban23`, `jawaban24`, `jawaban25`, `jawaban26`, `jawaban27`, `jawaban28`, `jawaban29`, `jawaban30`, `jawaban31`, `jawaban32`, `jawaban33`) VALUES
(5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sdket`
--

CREATE TABLE `sdket` (
  `id` int(11) NOT NULL,
  `ket0` varchar(255) NOT NULL,
  `ket1` varchar(255) NOT NULL,
  `ket2` varchar(255) NOT NULL,
  `ket3` varchar(255) NOT NULL,
  `ket4` varchar(255) NOT NULL,
  `ket5` varchar(255) NOT NULL,
  `ket6` varchar(255) NOT NULL,
  `ket7` varchar(255) NOT NULL,
  `ket8` varchar(255) NOT NULL,
  `ket9` varchar(255) NOT NULL,
  `ket10` varchar(255) NOT NULL,
  `ket11` varchar(255) NOT NULL,
  `ket12` varchar(255) NOT NULL,
  `ket13` varchar(255) NOT NULL,
  `ket14` varchar(255) NOT NULL,
  `ket15` varchar(255) NOT NULL,
  `ket16` varchar(255) NOT NULL,
  `ket17` varchar(255) NOT NULL,
  `ket18` varchar(255) NOT NULL,
  `ket19` varchar(255) NOT NULL,
  `ket20` varchar(255) NOT NULL,
  `ket21` varchar(255) NOT NULL,
  `ket22` varchar(255) NOT NULL,
  `ket23` varchar(255) NOT NULL,
  `ket24` varchar(255) NOT NULL,
  `ket25` varchar(255) NOT NULL,
  `ket26` varchar(255) NOT NULL,
  `ket27` varchar(255) NOT NULL,
  `ket28` varchar(255) NOT NULL,
  `ket29` varchar(255) NOT NULL,
  `ket30` varchar(255) NOT NULL,
  `ket31` varchar(255) NOT NULL,
  `ket32` varchar(255) NOT NULL,
  `ket33` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sdket`
--

INSERT INTO `sdket` (`id`, `ket0`, `ket1`, `ket2`, `ket3`, `ket4`, `ket5`, `ket6`, `ket7`, `ket8`, `ket9`, `ket10`, `ket11`, `ket12`, `ket13`, `ket14`, `ket15`, `ket16`, `ket17`, `ket18`, `ket19`, `ket20`, `ket21`, `ket22`, `ket23`, `ket24`, `ket25`, `ket26`, `ket27`, `ket28`, `ket29`, `ket30`, `ket31`, `ket32`, `ket33`) VALUES
(5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sdwaktu`
--

CREATE TABLE `sdwaktu` (
  `id` int(11) NOT NULL,
  `waktu0` time NOT NULL,
  `waktu1` time NOT NULL,
  `waktu2` time NOT NULL,
  `waktu3` time NOT NULL,
  `waktu4` time NOT NULL,
  `waktu5` time NOT NULL,
  `waktu6` time NOT NULL,
  `waktu7` time NOT NULL,
  `waktu8` time NOT NULL,
  `waktu9` time NOT NULL,
  `waktu10` time NOT NULL,
  `waktu11` time NOT NULL,
  `waktu12` time NOT NULL,
  `waktu13` time NOT NULL,
  `waktu14` time NOT NULL,
  `waktu15` time NOT NULL,
  `waktu16` time NOT NULL,
  `waktu17` time NOT NULL,
  `waktu18` time NOT NULL,
  `waktu19` time NOT NULL,
  `waktu20` time NOT NULL,
  `waktu21` time NOT NULL,
  `waktu22` time NOT NULL,
  `waktu23` time NOT NULL,
  `waktu24` time NOT NULL,
  `waktu25` time NOT NULL,
  `waktu26` time NOT NULL,
  `waktu27` time NOT NULL,
  `waktu28` time NOT NULL,
  `waktu29` time NOT NULL,
  `waktu30` time NOT NULL,
  `waktu31` time NOT NULL,
  `waktu32` time NOT NULL,
  `waktu33` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sdwaktu`
--

INSERT INTO `sdwaktu` (`id`, `waktu0`, `waktu1`, `waktu2`, `waktu3`, `waktu4`, `waktu5`, `waktu6`, `waktu7`, `waktu8`, `waktu9`, `waktu10`, `waktu11`, `waktu12`, `waktu13`, `waktu14`, `waktu15`, `waktu16`, `waktu17`, `waktu18`, `waktu19`, `waktu20`, `waktu21`, `waktu22`, `waktu23`, `waktu24`, `waktu25`, `waktu26`, `waktu27`, `waktu28`, `waktu29`, `waktu30`, `waktu31`, `waktu32`, `waktu33`) VALUES
(5, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00'),
(6, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `srcm`
--

CREATE TABLE `srcm` (
  `id` int(11) NOT NULL,
  `nomorSr` varchar(30) NOT NULL,
  `unit` char(2) NOT NULL,
  `area` varchar(15) NOT NULL,
  `namaPeralatan` varchar(100) NOT NULL,
  `kks` varchar(30) NOT NULL,
  `uraianGangguan1` text NOT NULL,
  `uraianGangguan2` text NOT NULL,
  `normalOperasi1` text NOT NULL,
  `normalOperasi2` text NOT NULL,
  `gejala1` text NOT NULL,
  `gejala2` text NOT NULL,
  `prioritas` varchar(9) NOT NULL,
  `akibatKerusakan1` text NOT NULL,
  `akibatKerusakan2` text NOT NULL,
  `kemungkinanDampak1` text NOT NULL,
  `kemungkinanDampak2` text NOT NULL,
  `tindakanSementara1` text NOT NULL,
  `tindakanSementara2` text NOT NULL,
  `tindakanSementara3` text NOT NULL,
  `diinput_oleh` varchar(30) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ket` char(3) NOT NULL,
  `evidence1` varchar(255) NOT NULL,
  `evidence2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `srcm`
--

INSERT INTO `srcm` (`id`, `nomorSr`, `unit`, `area`, `namaPeralatan`, `kks`, `uraianGangguan1`, `uraianGangguan2`, `normalOperasi1`, `normalOperasi2`, `gejala1`, `gejala2`, `prioritas`, `akibatKerusakan1`, `akibatKerusakan2`, `kemungkinanDampak1`, `kemungkinanDampak2`, `tindakanSementara1`, `tindakanSementara2`, `tindakanSementara3`, `diinput_oleh`, `tanggal`, `ket`, `evidence1`, `evidence2`) VALUES
(60, '2958', '#1', 'boiler', 'Induced Draft Fan B', '10HNC21AN001', 'Level pelumas bearing 1 kondisi Low', '', '- Level pelumas &gt;= 50%', '', 'Level pelumas 20% ', '', 'normal', 'Dalam waktu yang lama dapat mengakibatkan kenaikan temperature bearing', '', 'IDF TRIP', '', 'Membuat laporan gangguan', 'Melakukan FLM tambah pelumas', '', 'muhammad irfan', '2021-05-15 00:00:00', '', '60a097f2aab51.jpg', ''),
(63, '2959', '#1', 'boiler', 'Induced Draft Fan B', '10HNC21AN001', 'Level pelumas bearing 2 kondisi Low', '', '- Level pelumas &gt;= 50%', '', 'Level pelumas 30% ', '', 'normal', 'Dalam waktu yang lama dapat mengakibatkan kenaikan temperature bearing', '', 'IDF TRIP', '', 'Membuat laporan gangguan', 'Melakukan FLM tambah pelumas', '', 'supriyanto rante', '2021-05-15 00:00:00', '', '60a0c1d2220a8.jpg', ''),
(64, '2960', '#2', 'boiler', 'SCRAPPER CONVEYOR B', '20HDA20AF002', 'Motor scrapper conveyor tidak dapat beroperasi', '', 'Tidak ada ALARM DEV FAULT', 'Motor scrapper conveyor dapat beroperasi', 'ALARM DEF FAULT', '', 'normal', 'Tidak ada line drain material bed yang standby', '', 'Tidak dapat melakukan drain material bed pada line B ', '', 'Membuat laporan gangguan', 'Melakukan FLM', '', 'muhammad wahdi', '2021-05-16 00:00:00', '', '60a0c8661b220.jpg', ''),
(65, '2961', '#1', 'turbin', 'Pipeline inlet air laut plat HE sisi A', '', 'Terdapat kebocoran pada pipa', '', 'Tidak bocor', '', 'Air menetes dari pipa sampai ke lantai', '', 'normal', 'Unsafe condition, lantai basah', 'Pipa berkarat', 'Titik kebocoran semakin besar', '', 'Membuat laporan gangguan', 'Pemantauan lokal', '', 'andi rizal bangsawan', '2021-05-16 00:00:00', '', '60a0e94729a91.jpeg', ''),
(68, '', '#2', 'boiler', 'Hpff 2C', '20HLF30AN001', 'Filter HPFF kotor', '', 'Arus HPFF A &amp; C sama', '', '', '', 'urgent', '', '', 'Arus HPFF A &amp; C tidak sama s', 'Bukaan dumper HPFF C 93%', 'Membersihkan Filter', '', '', 'yoyong herawan', '2021-05-28 14:46:00', 'FLM', '60b1e4283974c.jpg', ''),
(69, '', '#1', 'boiler', 'Cooling FAN A', '', 'Level pelumas low 30%', '', 'Level pelumas normal 50%', '', '', '', 'urgent', 'Temperature bearing tinggi', '', '', '', 'Menambah level pelumas di 60%', '', '', 'yoyong herawan', '0000-00-00 00:00:00', 'FLM', '60cb04a8c049c.jpg', '60cb04a8c070f.jpg'),
(72, '3022', '#1', 'boiler', 'Cooling FAN A', '10HHQ11AN001', 'Level pelumas low 30%', '', 'Level pelumas normal 50%', '', '', '', 'emergency', '', '', 'Resiko pelumas habis temperature bearing naik', '', 'Menambah level pelumas di 60%', '', '', 'yoyong herawan', '2021-06-18 09:14:00', 'FLM', '60ce96bc6ff2a.jpg', '60ce96bc70199.jpg'),
(73, '', '#2', 'boiler', 'HPFF A', '20HLB12CY104', 'Level pelumas low 10%', '', 'Level pelumas normal 50%', '', '', '', 'urgent', '', '', 'Resiko pelumas habis temperature bearing naik', '', 'Menambah level pelumas di 80%', '', '', 'yoyong herawan', '2021-06-22 11:40:00', 'FLM', '60d15beba53e1.jpg', '60d15beba554d.jpg'),
(74, '3023', '#2', 'boiler', 'HPFF A', '20HLB12CY104', 'Level pelumas low 10%', '', 'Level pelumas normal 50%', '', '', '', 'urgent', '', '', 'Resiko pelumas habis temperature bearing naik', '', 'Menambah level pelumas di 80%', '', '', 'yoyong herawan', '2021-06-22 11:40:00', 'FLM', '60d15c1bdfe24.jpg', '60d15c1bdff77.jpg'),
(75, '3026', '#2', 'boiler', 'HPFF A', '20HLB12CY104', 'Level pelumas low 10%', '', 'Level pelumas normal 50%', '', '', '', 'urgent', '', '', 'Resiko pelumas habis temperature bearing naik', '', 'Menambah level pelumas di 80%', '', '', 'yoyong herawan', '2021-06-22 11:30:00', 'FLM', '60d16814c676c.jpg', '60d16814c688d.jpg'),
(76, '3032', '#1', 'boiler', 'High primary fluidized fan 1A', '10HLF10AN001', 'Level pelumas sisi fan low', '', 'Level pelumas normal', '', 'Level pelumas 30% ', '', 'normal', 'Kenaikan temperature bearing', '', 'Hpff 1a trip', '', 'Melakukan penambahan pelumas', '', '', 'muhammad irfan', '2021-06-30 10:40:00', 'FLM', '60dbdf4c4d613.jpg', '60dbdf4c4d7e2.jpg'),
(77, '3035', '#2', 'boiler', 'HPFF 2A', '20HLF 10AN001', 'Pelumas HPFF 2A sisi fan low', '', 'Pelumas normal ( 30% - 100%)', '', 'Pelumas HPFF 2A sisi fan 10%', '', 'normal', 'Bearing HPFF 2A sisi fan rusak', '', 'Temperature HPFF 2A tinggi ', '', 'Melakukan FLM ( penambahan pelumas dari 10 % ke 60%)', '', '', 'bakri wahid', '2021-07-04 09:57:00', 'FLM', '60e123f3bbe2c.jpeg', '60e123f3bc01d.jpeg'),
(78, '', '#2', 'boiler', 'PAF B', '20HLB12AN001', 'Vibrasi motor sisi back 5,2mm/s', '', 'Vibrasi dibawah 5 mm/s', '', '', '', 'urgent', '', '', 'Trip PAF B', '', 'Melakan greasing motor sisi de 5x &amp; Nde 10x', '', '', 'yoyong herawan', '2021-07-12 10:11:00', 'FLM', '60ebcf2ee47ec.jpg', '60ebcf2ee4951.jpg'),
(79, '3052', '#2', 'boiler', 'PAF B', '20HLF30AN001', 'Vibrasi motor sisi back 5,1mm/s ', '', 'Vibrasi dibawah 5 mm/s', '', '', '', 'emergency', '', '', '', '', 'Melakan greasing motor sisi de 5x &amp; Nde 10x', '', '', 'yoyong herawan', '2021-07-12 08:31:00', 'FLM', '60ebdf750932a.jpg', '60ebdf7509490.jpg'),
(80, '3053', '#2', 'boiler', 'PAF B', '20HLB12AN001', 'Vibrasi motor sisi back 5,1mm/s ', '', 'Vibrasi dibawah 5 mm/s', '', '', '', 'emergency', '', '', '', '', 'Melakan greasing motor sisi de 5x &amp; Nde 10x', '', '', 'yoyong herawan', '2021-07-11 08:05:00', 'FLM', '60ed1fdddd10d.jpg', '60ed1fdddd3ea.jpg'),
(81, '3061/SR/SPNG/2021', '#1', 'boiler', 'Combustion Chamber lower temp B (1)', '10HBK20CT101', ' temperatur terpantau lebih rendah (579 ),cenderung terus menurun', '', ' temp diatas 700', '', ' temp tetap di 579 sedangkan pembacaan lain diatas 700', '', 'normal', 'pembacaan temperature furnace berbeda', '', 'bed temp &lt; 550 boiler trip. ', '', 'Block signal alarm average bed temperatur', 'Melakukan FLM', 'menurunkan flow batubara pada CF 1f', 'muhammad irfan', '2021-10-05 04:20:09', 'FLM', '60fa3cf62fbb8.jpg', '60fa3cf62ff1f.jpg'),
(82, '3074', '#2', 'boiler', 'PAF B', '', 'Vibrasi motor sisi back 5mm/s ', '', 'Vibrasi dibawah 5 mm/s', '', '', '', 'emergency', '', '', 'PAF B trip', '', 'Melakan greasing motor sisi de 5x &amp; Nde 10x', '', '', 'yoyong herawan', '2021-08-05 09:19:00', 'FLM', '610b3cdfadea2.jpg', ''),
(83, 'SR130463', '#2', 'boiler', 'RIGHT SIDE SECONDARY AIR WINDBOX MOTOR DRIVEN REGULATING DAMPER', '20HLA72AA101', 'Bukaan aktual MCV valve tidak sesuai dengan di DCS. ', '', 'bukaan aktual valve di lokal sesuai demgan perintah di DCS', '', 'Bukaan di DCS sudah 100% tapi di lokal masih 70% untuk sisi A dan 85% untuk sisi B', '', 'normal', 'dapat memungkinkan terjadinya kekurangan udara pembakaran', '', 'flow udara SAF tidak maksimal', '', 'Membuat laporan gangguan', '', '', 'muhammad irfan', '2021-04-18 00:43:00', '', '61100bb33cffa.jpg', ''),
(84, '', '#2', '', 'FLAME DETECTOR COOLING FAN B', '20HHQ12AN001', 'LEVEL PELUMAS LOW', '', 'LEVEL PELUMAS DIATAS 50%', '', '', '', 'urgent', '', '', 'KERUSAKAN PADA BEARING MOTOR APABILA LEVEL PELUMAS HABIS', '', 'PENAMBAHAN PELUMAS', '', '', 'm. ihsan ramli', '2021-08-19 09:39:00', 'FLM', '611db8df55764.jpg', '611db8df55a71.jpg'),
(85, '3091', '#1', 'boiler', 'IDF 1A', '10HNC11AN001', 'LEVEL PELUMAS LOW', '', 'LEVEL PELUMAS DIATAS 50%', '', '', '', 'urgent', '', '', 'DAPAT MERUSAK BEARING POMPA APABILA LEVEL PELUMAS HABIS', '', 'MELAKUKAN PENAMBAH PELUMAS', '', '', 'm. syukur al munandar', '2021-08-19 10:18:00', 'FLM', '611dc09eaf741.jpg', '611dc09eafb1e.jpg'),
(86, '3091', '#1', 'boiler', 'IDF 1A', '10HNC11AN001', 'LEVEL PELUMAS LOW', '', 'LEVEL PELUMAS DIATAS 50%', '', '', '', 'urgent', '', '', 'DAPAT MERUSAK BEARING POMPA APABILA LEVEL PELUMAS HABIS', '', 'MELAKUKAN PENAMBAH PELUMAS', '', '', 'm. syukur al munandar', '2021-08-19 10:18:00', 'FLM', '611dc3555ebef.jpg', '611dc3555ee0c.jpg'),
(87, '3093/SR/SPNG/2021', '#2', 'turbin', 'Safety valve HPH 2 ', '20LAD20AA191', 'Terdapat kebocoran pada safety valve', '', 'Tidak terdapat kebocoran', '', 'Terdapat kebocoran', '', '', 'Terdapat genangan air (lantai licin) ', '', 'Unsafe condition', '', 'Melakukan pemantauan di lokal', '', '', 'ardiansyah nugraha m', '2021-08-19 12:30:00', '', '611de31e5705f.jpeg', ''),
(88, '3093/SR/SPNG/2021', '#2', 'turbin', 'Safety valve HPH 2 ', '20LAD20AA191', 'Terdapat kebocoran pada safety valve', '', 'Tidak terdapat kebocoran', '', 'Terdapat kebocoran', '', '', 'Terdapat genangan air (lantai licin) ', '', 'Unsafe condition', '', 'Melakukan pemantauan di lokal', '', '', 'ardiansyah nugraha m', '2021-08-19 12:30:00', '', '611de347b3456.jpeg', ''),
(89, '3093/SR/SPNG/2021', '#2', 'turbin', 'Safety valve HPH 2 ', '20LAD20AA191', 'Terdapat kebocoran pada safety valve', '', 'Tidak terdapat kebocoran', '', 'Terdapat kebocoran', '', '', 'Terdapat genangan air (lantai licin) ', '', 'Unsafe condition', '', 'Melakukan pemantauan di lokal', '', '', 'ardiansyah nugraha m', '2021-08-19 12:30:00', '', '611de4045497a.jpeg', ''),
(90, '3093/SR/SPNG/2021', '#2', 'turbin', 'Safety valve HPH 2 ', '20LAD20AA191', 'Terdapat kebocoran pada safety valve', '', 'Tidak terdapat kebocoran', '', 'Terdapat kebocoran', '', 'urgent', 'Terdapat genangan air (lantai licin) ', '', 'Unsafe condition', '', 'Melakukan pemantauan di lokal', '', '', 'ardiansyah nugraha m', '2021-08-19 12:30:00', '', '611de47b15576.jpeg', ''),
(91, '136606', '#1', 'turbin', 'Oil Gas Extractor Fan A Unit 1', '10MAV14AN001', '1. Terdapat kebocoran pada flange OGE A', '', '1. Tidak ada kebocoran', '', '1. Ditemukan rembesan pada flange OGE A', '', 'normal', '1. Lantai licin disekitar peralatan', '', '1. Koebocoran semakin besar', '', '1. Melakukan FLM', '2. Membuat laporan gangguan', '', 'harry fristian', '0000-00-00 00:00:00', 'FLM', '', '611e11a118604.jpg'),
(92, '136606', '#1', 'turbin', 'Oil Gas Extractor Fan A Unit 1', '10MAV14AN001', '1. Terdapat kebocoran pada flange OGE A', '', '1. Tidak ada kebocoran', '', '1. Ditemukan rembesan pada flange OGE A', '', 'normal', '1. Lantai licin disekitar peralatan', '', '1. Koebocoran semakin besar', '', '1. Melakukan FLM', '2. Membuat laporan gangguan', '', 'harry fristian', '0000-00-00 00:00:00', 'FLM', '611e11e198359.jpg', '611e11e198a36.jpg'),
(93, '136606', '#1', 'turbin', 'Oil Gas Extractor Fan A Unit 1', '10MAV14AN001', '1. Terdapat kebocoran pada flange OGE A', '', '1. Tidak ada kebocoran', '', '1. Ditemukan rembesan pada flange OGE A', '', 'normal', '1. Lantai licin disekitar peralatan', '', '1. Koebocoran semakin besar', '', '1. Melakukan FLM', '2. Membuat laporan gangguan', '', 'harry fristian', '2021-08-19 12:11:00', 'FLM', '611e12748e4b7.jpg', '611e12748eadc.jpg'),
(94, '3094/SR138873/SPNG/2021', '#2', 'turbin', 'Inlet Valve Ball Collector sisi A', '', 'Lampu indikator full closed tidak menyala', '', 'Lampu indikator menyala saat posisi valve full closed', '', 'Lampu indikator mati', '', 'normal', 'Pemantauan tidak maksimal', '', 'Operator tidak dapat memastikan valve sudah full closed atau belum', '', 'Membuat laporan gangguan', 'Membuat SR-CM maximo', '', 'andi rizal bangsawan', '2021-08-21 10:21:00', '', '6120647bd66c7.jpg', ''),
(95, '', '#2', 'boiler', 'PAF B', '20HLB12AN001', 'Vibrasi bearing Motor naik', '', 'Vibrasi &lt; 5 mm/s', '', 'Vibrasi terpantau naik ke 5.1 mm/s', '', 'emergency', '', '', 'PAF B Trip', '', 'Melakukan injection grease pada bearing motor sisi DE sebanyak 5x', 'Melakukan injection grease pada bearing motor sisi NDE sebanyak 10x', 'Setelah di grease, vibrasi cenderung turun ke 3.3 mm/s', 'm hery idswanto setiawan', '2021-08-30 08:17:00', 'FLM', '612d75d4e0c9e.jpg', '612d75d4e1028.jpg'),
(96, '3124', '#2', 'boiler', 'HPFF C', '20HLF30AN001', 'Filter HPFF kotor', '', 'Arus HPFF A &amp; C sama', '', '', '', 'emergency', '', '', 'Arus HPFF A &amp; C tidak sama ', '', 'Membersihkan Filter HPFF C', '', '', 'yoyong herawan', '0000-00-00 00:00:00', 'FLM', '612df2c0dd190.jpg', '612df2c0dd40d.jpg'),
(97, '3124', '#2', 'boiler', 'HPFF A', '20HLF10AN001', 'Level pelumas low 10%', '', 'Level pelumas normal 50%', '', '', '', 'urgent', '', '', 'Resiko pelumas habis temperature bearing naik', '', 'Menambah level pelumas di 60%', '', '', 'yoyong herawan', '0000-00-00 00:00:00', 'FLM', '612df33f5810d.jpg', '612df33f58236.jpg'),
(98, '3128.pembersihan filter HE Vac', '#2', 'turbin', 'Vacum pump B', '20MAJ12BN001', 'Pressure pendingin terbaca 0 Bar', 'Filter HE kotor', 'Pressure pendingin terbaca 0.6Bar', 'Filter bersih', 'Pressure pendingin rendah', 'Aliran air pendingin kurang', 'normal', 'Temperatur separator naik', 'Tekanan Vacum turun', 'Temperatur pendingin naik', 'Vacum turun', 'Pembersihan filter Vacum pump', '', '', 'mansyur', '2021-09-13 10:45:00', 'FLM', '613f1162ae7a0.jpg', '613f1162aea4b.jpg'),
(99, '3128.pembersihan filter HE Vac', '#2', 'turbin', 'Vacum pump B', '20MAJ12BN001', 'Pressure pendingin terbaca 0 Bar', 'Filter HE kotor', 'Pressure pendingin terbaca 0.6Bar', 'Filter bersih', 'Pressure pendingin rendah', 'Aliran air pendingin kurang', 'normal', 'Temperatur separator naik', 'Tekanan Vacum turun', 'Temperatur pendingin naik', 'Vacum turun', 'Pembersihan filter Vacum pump', '', '', 'mansyur', '2021-09-13 10:21:00', 'FLM', '613f185584dd9.jpg', '613f185584f5b.jpg'),
(100, '3129/SR/SPNG/2021', '#1', 'turbin', 'HPH 1 water inlet pressure', '10LAB51CP501', 'Terdapat tetesan air pada pressure indikator HPH 1 inlet water', '', 'Tidak terdapat tetesan air', '', 'Terdapat tetesan air pada pressure indikator', '', '', 'Terdapat genangan air di sekitar peralatan', '', '', '', 'Melakukan pengencangan mur pada pressure indikator', '', '', 'ardiansyah nugraha m', '2021-09-14 11:20:00', 'FLM', '61402bc7983c7.png', '61402bc798546.jpeg'),
(101, '3129/SR/SPNG/2021', '#1', 'turbin', 'HPH 1 water inlet pressure', '10LAB51CP501', 'Terdapat tetesan air pada pressure indikator HPH 1 inlet water', '', 'Tidak terdapat tetesan air', '', 'Terdapat tetesan air pada pressure indikator', '', '', 'Terdapat genangan air di sekitar peralatan', '', '', '', 'Melakukan pengencangan mur pada pressure indikator', '', '', 'ardiansyah nugraha m', '2021-09-14 11:20:00', 'FLM', '61402c0a3c089.png', '61402c0a3c384.jpeg'),
(103, '3167/SR/SPNG/2021', '#1', 'boiler', 'Sootblower b2', '10HCB11AT005', 'level pelumas motor sootblower B2 #1 kondisi low', '', 'level pelumas motor sootblower B2 &gt; 30%', '', 'level pelumas terpantau 10 %', '', 'normal', 'motor sootblower B2 akan sulit beroperasi', '', 'kerusakan pada motor sootblower B2', '', 'Melakukan flm penambahan pelumas pada motor sootblower B2', '', '', 'irfan', '2021-10-05 14:24:00', 'FLM', '615bf222dc319.jpg', '615bf222dc500.jpg'),
(104, '3169/SR/SPNG/2021', '#1', 'boiler', 'Sootblower B3 #1', '10HCB11AT006', '1. Level pelumas Sootbolower B3 low ( 10%)', '', 'Level pelumas tidak low ( 30% - 100 %)', '', '1. Level pelumas 10%', '', '', '1. Sootblower B3 tidak bisa dioperasikan ', '', '1. Bearing motor rusak ', '', '1. Melakukan FLM dengan menambah pelumas dari 10% ke 60%', '', '', 'bakri wahid 98', '2021-10-05 11:30:00', 'FLM', '615c0194bbc3b.jpeg', '615c0194bbe39.jpeg'),
(105, '3169/SR/SPNG/2021', '#1', 'boiler', 'Sootblower B3', '10HCB11AT006', '1. Terdapat pelumas low pada sootblower B3', '', 'Pelumas sootblower tidak low', '', 'Pelumas sootblower 10% ', '', 'normal', '1. Motor tidak bisa dioperasikan ', '', '1. Bearing motor rusak ', '', 'Melakukan FLM dengan penambahan pelumas dari 10% ke 60 %', '', '', 'bakri wahid 98', '2021-10-05 11:30:00', 'FLM', '615c033451804.jpeg', '615c0334519c0.jpeg'),
(106, '', '#2', 'boiler', 'Slag cooler 1A', '20HDA10AH001', 'Dari DCS terbaca operasi &amp; local tidak operasi ( over load)', '', 'Operasi normal', '', 'Terpantau dilocal tidak operasi', '', 'urgent', 'Tidak dapat drain material bed menggunakan slagcooler A', '', 'Pressure wind box tinggi', '', 'Menutup discharge valve', 'Membuka drain emergency', 'Membersihkan inlet slag cooler &amp; mengoperasikan dari local &amp; DCS', 'mayong', '0000-00-00 00:00:00', 'FLM', '615d9aaa2ca89.jpg', ''),
(107, '3172', '#2', 'boiler', 'Slag cooler 1A', '20HDA10AH001', 'Dari DCS terbaca operasi &amp; local tidak operasi ( over load)', '', 'Operasi normal', '', 'Terpantau dilocal tidak operasi', '', 'urgent', 'Tidak dapat drain material bed menggunakan slagcooler A', '', 'Pressure wind box tinggi', '', 'Menutup discharge valve', 'Membuka drain emergency', 'Membersihkan inlet slag cooler &amp; mengoperasikan dari local &amp; DCS', 'mayong', '2021-10-06 06:47:00', 'FLM', '615d9ae3b22b0.jpg', ''),
(108, '3174', '#1', 'boiler', 'Chain Bucket Conveyor B', '10HDA20AF001', 'Chain bucket conveyor B sering trip ketika dioperasikan _+ 30 menit', 'Kode error pada panel &quot;F0001&quot;', 'Chain bucket conveyor B tidak trip ketika dioperasikan', '', 'Penumpukan material di jalur chain bucket conveyor B', '', 'urgent', 'Chain bucket B tidak dapat dioperasikan lama', '', 'Penumpukan material semakin banyak pada jalur chain bucket conveyor B', '', 'Change over ke chain bucket conveyor A', '', '', 'andar', '2021-10-08 19:02:00', '', '616027705cad5.jpg', ''),
(109, '3182', '#2', 'boiler', 'Selang udara sonic sensor of boiler #7', '20CFB01CS007', 'Kebocoran udara pada selang', '', 'Tidak ada kebocoran udara pada selang', '', 'Terdengar bunyi bising dan terlihat adanya kebocoran pada selang', '', 'urgent', 'Tekanan udara pada selang sensor of boiler #7 tidak maksimal', '', 'Kebocoran semakin besar', 'Dapat merusak sensor of boiler #7', 'Melakukan penggantian selang', '', '', 'andar', '2021-10-23 07:29:00', 'FLM', '61734b7337f71.jpg', '61734b73381d6.jpg'),
(110, '3185', '#2', 'boiler', 'ID FAN ', '20HNC11AN0001', 'Pelumas Low', '', 'Pelumas normal 30%-100%', '', 'ID FAN Trip', '', 'normal', 'Temperatur bearing naik', '', 'Level Low', '', 'Penambahan pelumas', '', '', 'supriyanto.rante', '0000-00-00 00:00:00', 'FLM', '6177783a8efb3.jpeg', '6177783a8f1e6.jpeg'),
(111, '3186', '#1', 'boiler', 'IDF 1A', '10HNC11AN001', 'Pelumas low ( 20%)', '', 'Pelumas 30% - 100%', '', 'Pelumas terindikasi low ', '', 'normal', 'Bearing IDF sisi motor rusak ', '', 'Temperature bearing IDF sisi motor  tinggi', '', 'Melakukan FLM dengan penambahan pelumas dari 20% ke 100%', '', '', 'bakri wahid 98', '2021-10-26 11:30:00', 'FLM', '61778c6e59cbb.jpeg', '61778c6e59fcd.jpeg'),
(112, '', '#2', 'turbin', 'CWP', 'JOPAC10AP001', 'Display pembacaan vibrasi dipanel lokal CWP OFF', '', 'Display pembacaan panel lokal terbaca / ON', '', 'Tidak ada power ke display panel lokal', '', 'urgent', 'Pembacaan vibrasi di lokal tidak termonitor', '', 'CWP Trip', '', 'Membuat laporan gangguan', 'Memonitor pembacaan vibrasi dari DCS', '', 'bahar y', '0000-00-00 00:00:00', '', '6184a00c067d7.jpg', ''),
(113, '3200', '#1', 'boiler', 'Slag Cooler A', '10HDA10AH001', 'Drain material bed windbox pressure 14.0  Terdengar suara abnormal ', '', 'Tidak terdapat suara Abnormal', '', 'vibrasi area belakang slagcooler', '', '', 'Pengoperasian slag cooler tidak dilanjutkan, change over pengoperasian ke Slag Cooler B', '', 'sirkulasi material bed didalam slag cooler tidak lancar', '', 'Change over ke slag cooler B', '', '', 'muhammad_aswin', '2021-11-05 14:45:00', '', '6184d3fb49d96.jpg', ''),
(114, '140550', '#2', 'turbin', 'MSV steam inlet pipe drain Valve 1', '20LBA10AA405', 'Pipa supply udara Valve pneumatic terlepas', '', 'Pipa supply udara Valve pneumatic tidak terlepas', '', 'Udara keluar dari pipe supply udara pneumatic', '', 'urgent', 'Valve Pneumatic tidak bisa di Operasikan', '', '', '', 'Pemasangan pipa udara', '', '', 'muhlis', '2021-11-05 07:30:00', 'FLM', '618548ad1eaf3.jpg', '618548ad1ed0f.jpg'),
(115, '3210/SR/UPKPNG/2021', '#1', 'boiler', 'High pressure fluidized fan 1A', '10HLF10AN001', 'Level tabung pelumas sisi fan low', '', 'Level tabung pelumas normal', '', 'level tabung pelumas terpantau 10 %', '', 'normal', 'Tidak ada ketersediaan pelumas untuk sisi fan ', '', 'Pelumas sisi fan low', '', 'Melakukan flm penambahan pelumas pada tabung sisi fan', '', '', 'irfan', '2021-11-10 12:12:00', 'FLM', '618b4a5655b36.jpg', '618b4a5655cee.jpg'),
(116, 'SR 3214', '#2', 'boiler', 'COAL FDR C OUTLET MOV', '20HFB21AA002', 'Indikasi Slide Valve di Lokal Tidak Bergerak', '', 'Slide valve di lokal dapat bergerak', '', 'MOV normal Open Close tetapi Slide Valve Tidak dapat bergerak', '', 'urgent', 'Slide valve tidak dapat di close', '', 'MOV outlet Coal Feeder C tidak dapat di Close', '', 'Tes open close by DCS &amp; Lokal', '', '', 'jovapratama26', '2021-11-11 06:43:00', '', '618c4c33d7dc8.jpg', ''),
(117, 'SR 3221', '#2', 'boiler', 'Coal Feeder 2F', '20HFB32AF001', 'Coal Flow CF 2F hunting (dari 5 ke 3 t/h) ', '', 'Tidak Hunting', '', 'Pembacaan Coal Flow Di DCS hunting', '', 'urgent', 'Coal flow CF 2F hunting', '', 'Menyebabkan MSP naik karena flow tidak akurat', '', 'Pengecekan Terminasi modul saimo', 'Pengencangan terminasi', 'Pengecekan modul saimo', 'jovapratama26', '2021-11-20 05:01:00', 'FLM', '619821efbe6ed.jpg', '619821efbea8b.jpg'),
(118, 'SR 3221', '#2', 'boiler', 'Sootblower B28', '20HCB12AT018', 'Tuas Penggerak Poppet Valve Bengkok', '', 'Tuas Penggerak poppet Valve tidak bengkok', '', 'Tidak Keluarnya Steam dikarenakan tuas poppet valve bengkok dan tidak mengenai Tuas Gearbox', '', 'normal', 'Penumpukan ash pada area sootblower b28', '', 'Tidak dapat melakukan sootblower ndi area b28', '', 'Pengecekan di lokal', 'Tagging pada DCS', '', 'jovapratama26', '2021-11-20 17:40:00', '', '6198c3bcc586a.jpg', ''),
(119, '3224 Terdengar Suara Abnormal ', '#2', 'boiler', 'Sootblower B26', '20HCB12AT017', 'Terdengar Suara Abnormal Pada Saat Proses Backward', '', 'Tidak Ada Suara', '', 'Terjadi Kebocoran', '', '', 'Sootblower B26 Tidak Dapat Dioperasikan', '', 'Terjadi Penumpukan Fly Ash Area Sootblower B26', '', 'TAG Peralatan', '', '', 'asriadi.abdurrahman', '2021-11-22 09:32:00', '', '619af36e53495.jpg', ''),
(120, '', '#1', 'turbin', 'HP CYLINDER SHAFT SEALING STEAM SUPPLYPIPING DRAIN GLOBE VALVE', '100MAW20AA411', 'KEBOCORAN', '', 'TIDAK ADA KEBOCORAN', '', 'AIR MEREMBES DARI SHAFT VALVE', '', 'normal', 'MENYEBABKAN GENANGAN DISEKITAR PERALATAN', '', '', '', 'MENGENCANGKAN BAUT SHAFT VALVE MENGGUNAKAN KUNCI PAS RING NOMOR 17', '', '', 'nursan', '0000-00-00 00:00:00', 'FLM', '619b1355c29a6.jpeg', ''),
(121, '3226', '', 'boiler', 'IDF 2B', '10HNC21AN001', 'Pelumas IDF 2B sisi motor low', '', 'Pelumas IDF normal ', '', 'Terindikasi pelumas IDF 1B sisi motor low', '', 'normal', 'Kerusakan bearing IDF sisi motor', '', 'Temperature bearing tinggi ', '', 'Melakukan penambahan pelumas dari 20% ke 60% ( FLM )', '', '', 'bakri wahid 98', '2021-11-24 15:30:00', 'FLM', '619dfe570ff52.jpeg', '619dfe57101da.jpeg'),
(122, '3226', '', 'boiler', 'IDF 1B', '10HNC21AN001', 'Terdapat pelumas low di IDF 1B sisi motor', '', 'Pelumas normal ', '', 'Pelumas IDF 1B sisi motor low', '', 'normal', 'Bearing IDF 1B aus', '', 'IDF trip', '', 'Melakukan penambahan pelumas ( FLM) ', '', '', 'bakri wahid 98', '2021-11-24 15:30:00', 'FLM', '619e0b9e78596.jpeg', '619e0b9e787cc.jpeg'),
(123, '3228', '#2', 'boiler', 'Safety valve superheater', '20HAH86AA192', 'Kebocoran steam pada vent safety valve', '', 'Tidak ada kebocoran ', '', 'Suara bising dan temperatur tinggi ', '', 'normal', 'Steam terbuang', '', 'Penurunan pressure superheater', '', 'Pemantauan', 'Pemasangan safety line disekitar area Peralatan ', '', 'eko', '2021-11-29 21:04:00', '', '61a4d028b1eae.jpg', ''),
(124, '3229', '', '', 'Strainer Vacum pump sisi air laut', '20MAJ12BN001', 'Strainer kotor', '', 'Strainer bersih dan perbedaan temp tidak jauh', '', 'Perbedaan temp inlet dan outlet HE', '', 'normal', 'Kenaikan pressure Vacum ', '', 'Beban kerja bertambah di karenakan kenaikan temp pada vacum pump', '', 'Sudah di lakukan pembersihan strainer ', 'Sudah normal', '', 'syahruljuliant0', '2021-11-30 10:30:00', 'FLM', '61a5c60ac6bc1.jpeg', '61a5c60ac6fdd.jpeg'),
(125, '', '#1', 'boiler', 'Vib monitoring PAF 1A ', '', 'Display monitoring di lokal mati', '', 'Disolay terbaca di lokal', '', 'Nilai vib tidak termonitor', '', 'normal', 'Tidak dapat memantau vib di lokal', '', 'Tidak dapat memonitor vib dengan baik', '', 'Memantau vib di lokal dengan vibrotik', '', '', 'taslim', '0000-00-00 00:00:00', '', '61a70c9e50b7e.jpg', ''),
(126, '', '#1', 'boiler', 'Vib monitoring PAF 1A ', '', 'Display monitoring di lokal mati', '', 'Disolay terbaca di lokal', '', 'Nilai vib tidak termonitor', '', 'normal', 'Tidak dapat memantau vib di lokal', '', 'Tidak dapat memonitor vib dengan baik', '', 'Memantau vib di lokal dengan vibrotik', '', '', 'taslim', '0000-00-00 00:00:00', '', '61a70cddd12e1.jpg', ''),
(127, '3230', '#1', 'boiler', 'Vib monitoring PAF 1A ', '', 'Display monitoring di lokal mati', '', 'Disolay terbaca di lokal', '', 'Nilai vib tidak termonitor', '', 'normal', 'Tidak dapat memantau vib di lokal', '', 'Tidak dapat memonitor vib dengan baik', '', 'Memantau vib di lokal dengan vibrotik', '', '', 'taslim', '2021-12-01 13:49:00', '', '61a70d2fb5c7a.jpg', ''),
(128, '3236', '#1', 'boiler', 'Sootblower B16', '10HCB12AT012', 'Terindikasih pelumas Sootblower B16 low', '', 'Pelumas sootblower tidak normal 30% - 100 %', '', 'Pelumas low', '', 'normal', 'Bearing rusak', '', 'Temperature bearing tinggi ', '', 'Melakukan penambahan pelumas/ FLM dari 20% ke 70%', '', '', 'bakri wahid 98', '2021-12-05 09:20:00', 'FLM', '61ac25172367d.jpeg', '61ac2517238a5.jpeg'),
(129, '3237/SR/SPNG/2021', '#2', 'turbin', 'Main Steam Piping to Auxiliary Steam Header Piping Drain Valve', '', 'Terdapat kebocoran steam', '', 'Steam tidak keluar dari pipa', '', 'Kebocoran steam di pipa', '', 'urgent', 'Air kondensasi menyebabkan genangan air', '', 'Unsafe condition, tergelincir akibat lantai licin', '', 'Membersihkan genangan air dan menutup menggunakan majun', 'Membuat SR-CM maximo', '', 'rizal.bangsawan', '2021-12-05 11:34:00', '', '61ac34135598b.jpg', ''),
(130, '3240', '#2', 'electrical', 'COMPRESSOR INSTRUMEN A', '', 'Compressore instrumen Trip', 'Muncul alarm high ic pressure', 'Tidak muncul alarm', '', '', '', 'urgent', 'Tidak beroperasinya valva pneumatic transporter', '', 'Kurangnya supply udara instrumen', '', 'Melakukan setting valve butterfly', 'Co kompressor ins B ke C', '', 'adhiim.maarif', '2021-12-06 17:32:00', '', '61addc2579d72.jpeg', ''),
(131, '3241', '#1', 'boiler', 'Coal Feeder 1B', '10HFB12AF001VS14', 'Coal Flow DCS dan Lokal Berbeda', '', 'Coal Flow DCS dan Lokal Sama', '', 'Coal Flow Turun dari 13t/h ke 6t/h', '', 'urgent', 'MSP naik 8.3 ke 8.8', '', 'Over pressure dan beban naik', '', 'Pengencangan baut terminasi', '', '', 'alwi aries', '2021-12-06 16:30:00', 'FLM', '61adfc3563776.jpg', '61adfc35639f3.jpg'),
(132, '', '#2', 'electrical', 'EMERGENCY DIESEL GENERATOR', '', 'MUNCUL ALARM GEN-SETS ', '', 'Tidak muncul alarm', '', '', '', 'urgent', 'EDG TIDAK DAPAT DI OPERASIKAN', '', 'TIDAK DAPAT MENYUPLAI TEGANGAN UNIT KETIKA B.0', '', 'RESET DCS KEMUDIAN DI OPERASIKAN KEMBALI (EDG TIDAK DAPAT DI OPERASIKAN)', '', '', 'adhiim.maarif', '2021-12-09 14:26:00', '', '61b1a2b6919b3.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `shift` char(1) NOT NULL,
  `nipUser` varchar(10) NOT NULL,
  `namaUser` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nipAtasan` varchar(10) NOT NULL,
  `namaAtasan` varchar(30) NOT NULL,
  `ttdUser` varchar(50) NOT NULL,
  `ttdAtasan` varchar(50) NOT NULL,
  `fotoUser` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `shift`, `nipUser`, `namaUser`, `email`, `nipAtasan`, `namaAtasan`, `ttdUser`, `ttdAtasan`, `fotoUser`, `password`) VALUES
(15, 'irfan', 'D', '9617075fby', 'muhammad irfan', 'muhammadirfan187@outlook.com', '9218616zy', 'yoga fajar nugroho', '615c0ccdd8cb9.jpg', '60f988734ed65.jpg', '60fa422f893b2.jpg', '$2y$10$QcJmsQi9pk/jplJ77hwmKeDy3wnS0sTHsVH.vOG6W7KMMneBcemIy'),
(22, 'saprol', 'D', '9312035fy', 'supriyanto rante', '', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$q8AFnb8UbOEnEMCRRQgmDuEOMiwwDcHzJVKMtGkLQaGktmxcj96Uq'),
(23, 'wahdi', 'D', '9011007fy', 'muhammad wahdi', '', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$BBGvUvoIPdrB1oRFl0ngB.xexJ2.ueNwRnSpsWJCfpdHLk7LL6cui'),
(24, 'rizal.bangsawan', 'D', '9112098fy', 'andi rizal bangsawan', '', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$jOWEwZnP.VGghuaGZ8.C1ukrdQpYAoSSUj/xrsJ9ersn/Ip0Z6e1C'),
(25, 'mayong', 'C', '9717094fby', 'yoyong herawan', '', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$5UmbNOCTzgEOc2YxCGCr9OE5uDm1CpjuwCTTsXtfnI0UplFSA7HQe'),
(27, 'bakri wahid 98', 'D', '9817028fby', 'bakri wahid', 'bakriwahid98@gmail.com', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$lpREh35dJHuLLGiv5YOfve/L0YeNwXoeA7JBK04I.D4zzCrhkah9u'),
(28, 'randa', 'C', '9211037fy', 'randa', '', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$4BSrUVgj8THU9EJVsoR5fOdiuzKjjFOVY39S49gTJSVF47CKqiyT2'),
(29, 'akil', 'C', '9211036fy', 'akil', 'nurakil92@gmail.com', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$H99uPSLa4ISGDaVTd28zTeUluPDxt4UTpDRq/HqrYPrt3EVzHlCUq'),
(30, '9212036fy', 'D', '9212036fy', 'm. syukur al munandar', '', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$MGm1WKbMrWduP3T0Hf6y1OE6nnx4cwh/PtyJln8np7MqTqAiW4ZJW'),
(31, 'amr092', 'C', '9212047fy', 'andi muh. risman an.', '', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$f2DTy7BDSA/jD.ZtA0mpN.7CcM4hs.56Az1TsjIVNZr5Nv4Bomp/u'),
(32, 'eldo', 'B', '9717035fby', 'eldo lubaya tomo', '', '8810035f', 'muhamad imam ismail', '', '', '', '$2y$10$gTX3o0lXEI1Npn1jXc8MTucHrUA9RStzv4bQOKvdCnQGApLZzrR8e'),
(33, 'iwan_novianto', 'B', '9617051fby', 'iwan novianto', '', '8810035f', 'muhamad imam ismail', '', '', '', '$2y$10$y36d/m4tSoZXewRKaCqe1eeDAEO0vCv8D8TNa/66k1v4tlWIHf.Mu'),
(34, 'muhlis', 'C', '9717080fby', 'muhlis', '', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$bhc7ni1as6yWPcmNttkK2.PiPb4fWyyQOqYukJQu49Um8/JOoIlSm'),
(35, 'ardiansyah nugraha m', 'D', '9718083fby', 'ardiansyah nugraha m', '', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$zZKzIMOpuS/iDRynbD6xKuu59qs2g/d0Cenx.jRwJUWRs87u/29D6'),
(36, 'ihsan.r', 'D', '9010034f', 'm. ihsan ramli', 'iqbalramli1998@gmail.com', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$2TQ87zvwO7pLb.x.Tz0MXuZnywYBqrJ.CYpOrisRFF5KqDt5OyD3m'),
(37, 'adijn05', 'D', '9618001fby', 'asriadi janide', '', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$JVKqbIIiq8x5hkikqG/teO/r98.drqSJStV3t/BMjOIZyVfqS4b6G'),
(38, 'renop', '', 'operasi', 'renop', '', '', '', '', '', '', '$2y$10$CxjZma07CWU9yJ4Rwh9EzOLB/c.xg0skMJDif2e210OEe7inYPPdO'),
(39, 'andre', 'C', '9718092fby', 'andreas hayr', '', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$64LO8YD7m3k1AGcbHTYfVebmg6xecsAFOz3wNjlNBCVQ7ttNNXzd2'),
(40, 'hasrun044', 'C', '9817044fby', 'hasrun', '', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$t/LSG7ESm/4hh1zM4JalDOqnvUo0v0.NZPzVhBR/I0Zw0x0r3QP7G'),
(41, 'pusat\nabawi', 'C', '9011011fy', 'nabawi', '', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$8efGUOawSGVveaU4NEGp8ONqOtzMlIwtvSellJuQIbhflBdGp/6WG'),
(44, 'mansyur', 'D', '9312099fy', 'mansyur', '', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$bPJBzEMwWULizS5YKOZ.puXsmMaTLuq3IAzF93Cczn2TxfH/w3/bC'),
(45, 'hery idswanto', 'C', '9617055fby', 'm hery idswanto setiawan', '', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$BOzkQAIVt.OSsp2FXFGFNe9np7kDTIJqxLeYYVKcUrGotWQ.arF9K'),
(47, 'andi aswar', 'C', '9312038fy', 'andi aswar kasman', '', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$Q//0PHO22QI.788uQX0xD.43MDT2tBI4loy5V28NE7zqCMMhXPjYW'),
(48, 'isra.affandi', 'C', '9617077fby', 'isra.affandi', '', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$5H34KdGFXF1qWLnOQQS2tu9Dd5JnWOEOUjf78S7d32LFAHPvu5XH6'),
(49, 'sca', 'C', '9212050fy', 'syamsurya catur aprian', '', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$cIngYb.lEy9TFq.rChOx0.8E6cZOhetIKGGpAZhIBfOi6QslxNS6W'),
(50, 'leman', 'C', '9817054fby', 'leman dwiyulianto laode', '', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$PaQqzlU5oc.2n1rnNnlf9ezLDeOarE9YHIAlZzuRVTBcd4vyDmQku'),
(51, 'muhfahmiabin', 'C', '9618030fby', 'muh.fahmi abin', '', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$5Mz4Sk7UtF07C3D3E9S6yufSgZpql/N/R/khjBx9V/wN0pNVxOJZu'),
(52, 'irwan.burhan', 'C', '9312034fy', 'irwan burhan', '', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$ofxB/6Q0JZKONUQRgH8Gz.gaTOFKzDOw1gdA/l7ZfXhROeF4qvPTW'),
(53, 'aswar08', 'C', '9312038fy', 'andi aswar kasman', '', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$jbkASsHj9BcD2.L/ppbMa.OAtj6.qWPId5ny8btsE2FTcQcLLCD8O'),
(54, 'nursan', 'A', '9718075fby', 'nursan', 'nursaner7@gmail.com', '94171285zy', 'asharri rizal', '619c8aad8c1f4.jpg', '', '', '$2y$10$54j2Fle9zxOkAop04TEEkeMRDOEZMaq.DGbEiJBhhYSK7ZR6cO4Ke'),
(55, 'ryanratta', 'A', '9111015fy', 'ryan aditya ratta', '', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$ogcKyxiXQRZ0jtTD7SKkeubcxg7RIZZCAvtaly8e4idcs9ViEEGCq'),
(56, 'asriadi.abdurrahman', 'A', '9211027fy', 'asriadi', '', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$f1HUT/NDbVm59bJc76k0yuGycRn.DCpJLL5GyFGRk2B8VWePp9xmS'),
(57, 'syahrul.julianto', 'A', '9718073fby', 'muh syahrul julianto sugiman', '', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$YchpzQ9rAOWPQ98CWljAdOQx9Og9nDyPJ5BS.BJ37fYpK6DkXiHvi'),
(58, 'acr', 'A', '9111016fy', 'alim hambali', '', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$IrURsUVgbCrwjkvopcL2B.1ev8532j/ogZqH3Ph/xogA9GqYNzCg2'),
(59, 'adhiim.maarif', 'A', '9817003fby', 'abd adhiim maarif', '', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$/hv.eQNjM9OulrmErwHeEubhCy9a6SPuvpR/zvhZ9wMo6C2mf3d3O'),
(60, 'eko', 'A', '9717034fby', 'putra', '', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$1CW8kix1MEZqX.WBUo2AJ.ZfC8ODPhfZKxc5giA.imT0pKuLGnpOO'),
(61, 'taslim', 'A', '9112025fy', 'Taslim', '', '94171285zy', 'asharri rizal', '', '', '6115bb6e9c70b.jpg', '$2y$10$dKlZ/yffxxbGLns6n1HQteFQDT1udHQSb01s5kwW7BkFClYSktTbW'),
(62, 'muhammad asrul', 'A', '9110053f', 'la ode muhammad asrul', '', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$HaEu9Ual1m5VoF7fBcv.cOCnXceaW0hz8sMUGsu/InoSnNv2U0zEi'),
(63, 'mardin taridala', 'D', '9011009fy', 'mardin taridala', '', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$tYg0j.fy45ZUULiZNDSVMe6Ww/s5wiZh4w3zA5OaIA5pEdGXsfyuC'),
(64, 'arif1992', 'D', '9111018fy', 'muhammad arif', '', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$6aE.A1og9L8WUNj9CrBNYOwgCSmQg87iPH8S4nGWzPPuSWbvEsdWa'),
(65, 'muhammadfarhankurniawan', 'D', '9718068fby', 'muhammad farhan kurniawan i.', 'muhammadfarhankurniawan48@gmail.com', '9218616zy', 'yoga fajar nugroho', '611ba3a89e46a.jpeg', '', '', '$2y$10$xcD/2doAjf7KnsTf2xqwUOsm6mhhHn80Jse6rH8u6wBK3wTDExjVq'),
(66, 'andar', 'D', '9212036fy', 'm. syukur al munandar', 'andarmajene@gmail.com', '9218616zy', 'yoga fajar nugroho', '618b401597a60.jpg', '', '', '$2y$10$G5xo58n/R1ovoFGaqZYRB.1uHYa7XOaWr4unK/J5ia5ZcpgInGYCi'),
(67, 'muhammad.wahdi', 'D', '9011007fy', 'muhammad wahdi', 'muhammadwahdi22@gmail.com', '9218616zy', 'yoga fajar nugroho', '611bb01a0a236.jpeg', '611bb01a0a3f2.jpeg', '', '$2y$10$3w9i1dFpXQape6CNS4o.2OF25A1R.u/x/e42v5JKkUekmE5MTC7x.'),
(68, 'shandy02', 'D', '9111022fy', 'shandy sugih wibowo', '', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$A26Fu2ZUmFwWgdXayZIhsO.VMC8CGlEnj5KVzhhUORZGpNqFdsfgq'),
(69, 'supriyanto.rante', 'D', '9312035fy', 'supriyanto rante', '', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$aKNW1JQDLfwkc.o6dC1mBurQG2fz9/l9TEJb0cGX.VjcWdPjPZyFO'),
(70, 'iccank01', 'D', '9010034f', 'm. ihsan ramli', '', '9218616zy', 'yoga fajar nugroho', '61aadc24a66c9.jpeg', '', '', '$2y$10$93q92vCD18dAe.1G0N2s5u6zF3sA2at21/QdBCHDog/1/KKUKe92S'),
(71, 'harryfristian', 'D', '9312100fy', 'harry fristian', 'harryfristian@gmail.com', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$3WamwPrIg5KoiG.FgsHQkOEAJ4L5aw1Gld2i9672PQnjYGKydZu4S'),
(72, 'muhammad_aswin', 'B', '9618044fby', 'muhammad aswin', '', '8810035f', 'muhamad imam ismail', '', '', '', '$2y$10$OTfEpLePtmdz9a6QSpxAj.Wm0Z4TXLtmeto4wI1Yl52Ys0xG1l3.u'),
(73, 'muhjorvan', 'B', '9817070fby', 'muhamad jorvan', '', '8810035f', 'muhamad imam ismail', '', '', '', '$2y$10$eI6pVxb1p7IOs41ZZGxOMeItzsJvjOAA1LoHmiXrQhUq5rWShGBDy'),
(74, 'riswan', 'B', '9212103fy', 'riswan ismail', '', '8810035f', 'muhamad imam ismail', '', '', '', '$2y$10$ZFA92S8zSzCt/VArRHptoeO73j3feZbLcnFNXCgwJIGHwD2PfHBGq'),
(75, 'iwan', 'B', '9617051fby', 'iwan novianto', 'iwanwann20@gmail.com', '8810035f', 'muhamad imam ismail', '61248f81c6b5b.png', '61248f81c6c14.png', '61248f81c68d7.jpg', '$2y$10$diCVfkkGXCbi6ziNULEUxO0JkaXS/jXYu/0n4B9p93KzDts.Rn.na'),
(76, 'akbar210', 'B', '9111014fy', 'muhammad akbar asmadi', '', '8810035f', 'muhamad imam ismail', '', '', '', '$2y$10$RUSna3Cvy67XbtcIsDj8s.dqG.5ThChEb8JGiF/PmPdCVad6t1Qde'),
(77, 'zulfais', 'B', '9212101fy', 'zulfais', '', '8810035f', 'muhamad imam ismail', '', '', '', '$2y$10$8ZnBemIhHMf4.3sL81reLOMN7PTm1/iggB8m1vHrw5QbDXQ4dE0WG'),
(78, 'alfinsa_atmajaya', 'B', '9718072fby', 'alfinsa atmajaya', '', '8810035f', 'muhamad imam ismail', '', '', '', '$2y$10$AUS5OpO5qM5lf4FO6lF1ouLOtDasHHzWEa/lbfKKgqT.JNn3ZbIoS'),
(79, 'laode.budiman', 'B', '911124fy', 'laode m arief budiman husein', '', '8810035f', 'muhamad imam ismail', '', '', '', '$2y$10$YeiQfVnvrju364Tg2rnx6e2KPsSdpIcKdghbht/nDN1adlYaDa/fq'),
(80, 'akhnal', 'D', '9011005fy', 'akhnal murtham ', '', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$.ydV39WbAA3smwteiLCPgu/13hyZB2MNFj7tJxyu3E75TBYv5DcRG'),
(81, 'brocil', 'C', '9210036f', 'rezki anugrah', '', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$IQ39WRAusJI8Za6Hxk5GNuBO9h1hbri/7jmqoHMSZkBxZPWZpv2n6'),
(82, 'andi.aswar', 'C', '9312038fy', 'andi aswar kasman', 'aswar18893@gmail.com', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$H0MHOVSLtWwEvsxiXllqmuQrplTOTuDrm5.CoG/We1dgS44E5KImS'),
(83, 'alwi', 'A', '9011010fy ', 'muh. alwi aries', 'alwijr32@gmail.com', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$nh17XRWRJzCUUr4eHNlwuud2wJOiI.a4.WS6Bcd8HXWhBr2/W/Q0y'),
(84, 'mitra', 'B', '9618024fby', 'mitra', 'mitraspeed8@gmail.com', '8810035f', 'muhamad imam ismail', '', '', '', '$2y$10$IUonBQJGRVji8x7PT6.uKOdVZhoDnXqkSJ2BBImJn7zBx/ABDN6Mm'),
(85, 'bahar', 'B', '9112037-fy', 'baharuddin s', 'baharuddins@pln.co.id', '8810035f', 'muhamad imam ismail', '', '', '', '$2y$10$CNys/ZQHhlyXnECs5g5zlOxo0zcHNL21kgGvVBBdY0wEGOgSJCGUi'),
(86, 'eldo lubaya tomo', 'B', '9717035fby', 'eldo lubaya tomo', 'eldolubaya97@gmail.com', '8810035f', 'muhamad imam ismail', '', '', '', '$2y$10$.g15ynpcSX6x2rLGbHaPCuXHIKVZ9tKSy8BKEb7KzI1DCDHZCpSxC'),
(87, 'wandhy08', 'B', '9212097fy', 'muhammad wandi winarta', 'wandi.winarta@pln.co.id', '8810035f', 'muhamad imam ismail', '', '', '', '$2y$10$nRi1lhD1ziX8OVISIrhmN.4snJEIvCS2g1gBOoMoBsXRqhVfSPo3y'),
(88, 'bahar y', 'B', '9212049fy', 'baharuddin yasin', 'baharuddin.yasin@pln.co.id', '8810035f', 'muhamad imam ismail', '', '', '', '$2y$10$f6jxAJHOV0kmb23EWQG3IeJUj9M8sFFD.ZC2npT5NAU5L1dM/N1D6'),
(89, 'jovapratama26', 'A', '9718060fby', 'jova pratama taubarania', 'jovajie46@gmail.com', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$xetvsf/Nj/h52NTPt/lALe28qMP.8rMwi28NNSP/RyCb2i6LIDNEW'),
(90, 'alim hambali', 'A', '9111016fy', 'alim hambali', 'hambali.alim28@gmail.com', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$SzAaGcZ6HdOZL7prwlDvrurnGMN48ZACqoKM2ofzeJ1TdMunksL/e'),
(91, 'lianto d nugroho', 'B', '9212042fy', 'lianto dian nugroho', 'liannugroho92@yahoo.com', '8810035f', 'muhamad imam ismail', '', '', '', '$2y$10$7KNT19PKQL9lM7CYyXQQHOkcToCtun0XTS9J8yeCTWH6upS8cFp1W'),
(92, 'adi yusri ombe', 'B', '9212052fy', 'adi yusri ombe', 'adi.yusri@pln.co.id', '8810035f', 'muhamad imam ismail', '', '', '', '$2y$10$HsNVxAnZasUs8PBzRLxXAemCALmtANbPPd.e/I1pQJlwnoXwhmGe6'),
(93, 'asharri rizal', 'A', '94171285zy', 'asharri rizal', 'ashari.rizal25@gmail.com', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$z33A3Z2Ioo7fhpe3GV4dmuz9IV2yeeUv6aPrefvR89qO5223Rq3lC'),
(94, '9211037fy', 'C', '9211037fy', 'randa r', 'akr.randa022@gmail.com', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$mBNbIYKECMLNzvrAC.jaTuiEuhJ4OAVFTY4W3kyu12NTcAme2vnXS'),
(95, 'arif.alam', 'A', '9112041fy', 'muh arif alam. s', 'muharifalam@gmail.com', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$UYSPtCPQ.6kdulCPs0fK4.WZP6FKunopoGlPj2m7PDirXSkajhHHa'),
(96, 'muh', 'A', '9110053f', 'asrul', 'asrul1101@gmail.com', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$Vs4xpDNxC4N5UeI/TqrD4e41rDU2zRWlEc95mptKzGzGCJ5y67tVS'),
(97, 'muh.asrul', 'A', '9110053f', 'la ode muhammad asrul', 'asrul1101@gmail.com', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$28EPhgtEC0elVL/6NIKJ0eD87q1Fcd7pXtyNpIaJ.RpEggQsaUHyi'),
(98, 'aswandi', 'D', '9112106fy', 'aswandi', 'aswandi.al@gmail.com', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$0nKK9ESVUa9nDedYCvMmzOmSVD8PMRf.6FTYyPJtB8pPqaK6ge2ja'),
(99, 'mirad.maranu', 'A', '9717056fby', 'mirad maranu', 'mirad.maranu1997@gmail.com', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$V1YQ5JrmFlmlhuSvTUExiOJ2CJ5R8LAmr4cM8P7fu/KBHacbVqpj.'),
(100, 'fahmi', 'C', '9618030fby', 'muh.fahmi abin', 'muh.fahmi@pln.co.id', '94171286zy', 'dwi aji saputro', '', '', '', '$2y$10$SUiZEG3yJ6YseLhkxw3kduam6/qd/PhKDOCiUR1JzxnQ8XULwC6hu'),
(101, 'syahruljuliant0', 'A', '9718073fby', 'muh syahrul julianto', 'muhsyahruljulianto@gmail.com', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$l.M57Q3PBeM1M9X3LPoq8.n6TQbWLUMbFLITvdQVYYohlhbbdyxF.'),
(102, 'ihsan.ramli', 'D', '9010034f', 'm. ihsan ramli', 'iqbalramli1998@gmail.com', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$tdhwqIB9AjTrNuZxDpKiyuxo.u0xZJm0BXhG5odOhq5rUj/Ozj/3u'),
(103, 'arif91', 'D', '9111018fy', 'muhammad arif', 'ariefkamaluddin76@gmail.com', '9218616zy', 'yoga fajar nugroho', '', '', '', '$2y$10$SC4rRXygEqUZtuZOxpRoFellM8unMVNPAqPgBqKh/ZWm7CCV9w6ym'),
(104, 'bachruldj', 'A', '9011001fy', 'bachrul ulum dj', 'bachrul.ulum@pln.co.id', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$AiqdxHd2zrBR3g9j15CrYOAPLYQEFrGXD1Zy1WWj9QUqp1mvz6prO'),
(105, 'alwi aries', 'A', '9011010fy', 'muh. alwi aries ', 'alwijr32@gmail.com', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$W8GZ6ILJaJvopeqDJ7XQi.F193olcItEk4oLvhtESniUcvIcn9cmS'),
(106, 'mansal', 'B', '9818146fby', 'mansal', 'mansalmansal17@gmail.com', '8810035f', 'muhamad imam ismail', '', '', '', '$2y$10$f33PLXQaqgyYreldVzCMY.HfxN0VtmcIY9AnZFhW195sxoBaW9kc6'),
(107, 'awal', 'A', '9112043fy', 'awaluddin', 'awaluddin.pln@pln.co.id', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$xPtrrO4a4DjSQ8gaxwJafuB4RPsJwE2zEm4yA9u1iJpkd.HDi9TLS'),
(108, 'muhfajar', 'A', '9618011fby', 'muh fajar abdullah ', 'muh.fajar@pln.co.id', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$8eh4vbpvGusr8apVimhJgupEE3mxTvhtSIcIQEpu4aEuyuaE1hcYG'),
(109, 'azizul', 'A', '9312048fy', 'muhammad azizul gafur', 'azizul.gafur@pln.co.id', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$AWIRim6jl5cYWuzO1ZXuG.3O0DFWX8UJzx0hTR4Vz9zrJxY45HVIK'),
(110, 'wal', 'A', '9112043fy', 'awaluddin', 'awaljr0124@gmail.com', '94171285zy', 'asharri rizal', '', '', '', '$2y$10$.iHynog33YKXWh9c8TUgauz.nfs5SQ65wiLdYaav.bjw.KTU6OQVm');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `checklist`
--
ALTER TABLE `checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `daftar_pertanyaan`
--
ALTER TABLE `daftar_pertanyaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komen`
--
ALTER TABLE `komen`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `limas`
--
ALTER TABLE `limas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `limasalbakedua`
--
ALTER TABLE `limasalbakedua`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `limasalbapertama`
--
ALTER TABLE `limasalbapertama`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `limasboilerkedua`
--
ALTER TABLE `limasboilerkedua`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `limasboilerketiga`
--
ALTER TABLE `limasboilerketiga`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `limasboilerpertama`
--
ALTER TABLE `limasboilerpertama`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `limasturbinkedua`
--
ALTER TABLE `limasturbinkedua`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `limasturbinkeempat`
--
ALTER TABLE `limasturbinkeempat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `limasturbinketiga`
--
ALTER TABLE `limasturbinketiga`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `limasturbinpertama`
--
ALTER TABLE `limasturbinpertama`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilailimas`
--
ALTER TABLE `nilailimas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `schedulecommon`
--
ALTER TABLE `schedulecommon`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `scheduledua`
--
ALTER TABLE `scheduledua`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `schedulesatu`
--
ALTER TABLE `schedulesatu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sddata`
--
ALTER TABLE `sddata`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sdgangguan`
--
ALTER TABLE `sdgangguan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sdjawaban`
--
ALTER TABLE `sdjawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sdket`
--
ALTER TABLE `sdket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sdwaktu`
--
ALTER TABLE `sdwaktu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `srcm`
--
ALTER TABLE `srcm`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `checklist`
--
ALTER TABLE `checklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT untuk tabel `daftar_pertanyaan`
--
ALTER TABLE `daftar_pertanyaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1161;

--
-- AUTO_INCREMENT untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT untuk tabel `komen`
--
ALTER TABLE `komen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT untuk tabel `limas`
--
ALTER TABLE `limas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT untuk tabel `limasalbakedua`
--
ALTER TABLE `limasalbakedua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT untuk tabel `limasalbapertama`
--
ALTER TABLE `limasalbapertama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT untuk tabel `limasboilerkedua`
--
ALTER TABLE `limasboilerkedua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT untuk tabel `limasboilerketiga`
--
ALTER TABLE `limasboilerketiga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT untuk tabel `limasboilerpertama`
--
ALTER TABLE `limasboilerpertama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT untuk tabel `limasturbinkedua`
--
ALTER TABLE `limasturbinkedua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT untuk tabel `limasturbinkeempat`
--
ALTER TABLE `limasturbinkeempat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT untuk tabel `limasturbinketiga`
--
ALTER TABLE `limasturbinketiga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT untuk tabel `limasturbinpertama`
--
ALTER TABLE `limasturbinpertama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT untuk tabel `nilailimas`
--
ALTER TABLE `nilailimas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT untuk tabel `schedulecommon`
--
ALTER TABLE `schedulecommon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT untuk tabel `scheduledua`
--
ALTER TABLE `scheduledua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT untuk tabel `schedulesatu`
--
ALTER TABLE `schedulesatu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1277;

--
-- AUTO_INCREMENT untuk tabel `sddata`
--
ALTER TABLE `sddata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sdgangguan`
--
ALTER TABLE `sdgangguan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sdjawaban`
--
ALTER TABLE `sdjawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sdket`
--
ALTER TABLE `sdket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sdwaktu`
--
ALTER TABLE `sdwaktu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `srcm`
--
ALTER TABLE `srcm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `limas`
--
ALTER TABLE `limas`
  ADD CONSTRAINT `limas_ibfk_1` FOREIGN KEY (`id`) REFERENCES `nilailimas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
