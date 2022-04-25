-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2022 at 06:18 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pti2`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'pengguna');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 32),
(2, 1, 44);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add berita', 8, 'add_berita'),
(30, 'Can change berita', 8, 'change_berita'),
(31, 'Can delete berita', 8, 'delete_berita'),
(32, 'Can view berita', 8, 'view_berita'),
(33, 'Can add topik', 9, 'add_topik'),
(34, 'Can change topik', 9, 'change_topik'),
(35, 'Can delete topik', 9, 'delete_topik'),
(36, 'Can view topik', 9, 'view_topik'),
(37, 'Can add komentar', 10, 'add_komentar'),
(38, 'Can change komentar', 10, 'change_komentar'),
(39, 'Can delete komentar', 10, 'delete_komentar'),
(40, 'Can view komentar', 10, 'view_komentar'),
(41, 'Can add data_umkm', 11, 'add_data_umkm'),
(42, 'Can change data_umkm', 11, 'change_data_umkm'),
(43, 'Can delete data_umkm', 11, 'delete_data_umkm'),
(44, 'Can view data_umkm', 11, 'view_data_umkm');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$R5KMKKchCDBG5GyTJEfYaK$MtKwM5rQyz8UnBGJY/C8qztjKHVFlbqTxscg12a0dho=', '2022-04-15 17:13:53.183554', 1, 'admin', '', '', 'admin@g.co', 1, 1, '2022-04-14 16:16:36.000000'),
(2, 'pbkdf2_sha256$260000$08Y5BzDV64ryzDMMV2PQT2$vxQqWRt45of3ynxPM8ClFZzjCGvM2bghAkjnLJk+RSw=', '2022-04-15 07:34:19.786555', 0, 'heksa', '', '', 'heksa@gmail.com', 0, 1, '2022-04-15 07:21:57.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44);

-- --------------------------------------------------------

--
-- Table structure for table `berita_berita`
--

CREATE TABLE `berita_berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `editor` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `isi_berita` longtext NOT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita_berita`
--

INSERT INTO `berita_berita` (`id`, `judul`, `tanggal`, `penulis`, `editor`, `gambar`, `isi_berita`, `slug`) VALUES
(4, 'Polisi Tangkap Pengedar 169 Gram Ganja di Metro', '2022-04-15', 'Hapis Yeager', 'Hapis Yeager', 'static/berita/2022/04/15/polisi-tangkap-pengedar-169-gram-ganja-di-metro_20220413150403_D8XSQy4.jpg', 'Kupastuntas.co, Metro - Satuan Reserse Narkoba Polres Metro berhasil menangkap Ari Budi Hidayat alias Cuplis (33) pengedar narkotika jenis ganja yang menjajakan di wilayah Bumi Sai Wawai.\r\n\r\nKasat Narkoba Polres Metro, IPTU Abdullah Efendi Siregar, melalui Kaur Bin Ops (KBO) IPDA Gunarto mengungkapkan, pelaku merupakan warga Jl. Kapten Tendean RT 011 RW 003 Kelurahan Margorejo, Kecamatan Metro Selatan.\r\n\r\n\"Tersangka diamankan pada hari Rabu tanggal 13 April 2022 sekira pukul 01.30 WIB,\" kata IPDA Gunarto, saat dikonfirmasi Kupastuntas.co, Rabu (13/4/2022).\r\n\r\nPolisi melakukan penangkapan terhadap Ari Budi Hidayat di rumahnya tanpa perlawanan. Saat dilakukan penggeledahan di rumah pelaku, polisi mendapati barang bukti ganja kering seberat ratusan Gram.\r\n\r\n\"Saat dilakukan penggeledahan, petugas menemukan 2 bundel gulungan lakban warna coklat berisi ganja dengan berat kurang lebih 169,9 gram berikut dengan 6 lembar kertas paper,\" ungkapnya.\r\n\r\nKepada polisi, pelaku mengaku membeli ganja tersebut dari seorang bandar besar di wilayah Bandar Lampung atas nama Feby dengan harga Rp500 Ribu.\r\n\r\n\"Pelaku juga mengaku bahwa dirinya sebagai penjual sekaligus pengkonsumsi. Kini penjualnya masih dalam penyelidikan,\" jelasnya.\r\n\r\nKini pelaku diamankan di Mapolres Metro dan terancam pasal 111 ayat (1) UU RI No. 35 tahun 2009 tentang narkotika dengan hukuman penjara paling lama 12 tahun.', 'polisi-tangkap-pengedar-169-gram-ganja-di-metro'),
(5, 'Longmarch Demonstran Blokade Jalan AH Nasution Kota Metro', '2022-04-15', 'Heksa Mikasa', 'Heksa Mikasa', 'static/berita/2022/04/15/longmarch-demonstran-blokade-jalan-ah-nasution-kot_202204131406_vXex14i.jpg', 'Kupastuntas.co, Metro - Usai berorasi di bundaran Tugu Pena Metro, ratusan massa mahasiswa melakukan longmarch dengan memblokade Jalan AH Nasution hingga gedung DPRD, Rabu (13/4/2022).\r\n\r\nDari pantauan Kupastuntas.co, ratusan mahasiswa dari aliansi Cipayung Plus berjalan kaki sejauh kurang lebih 1,9 Kilometer dari Tugu Pena di Metro Pusat hingga gedung DPRD di Kelurahan Yosodadi, Kecamatan Metro Timur.\r\n\r\nJalan AH Nasution yang menjadi rute perlintasan peserta aksi itu sempat terjadi kemacetan. Hal tersebut dikarenakan ratusan mahasiswa menutup total akses jalan AH Nasution.\r\n\r\nRatusan demonstrans tersebut masing-masing berasal dari Pergerakan Mahasiswa Islam Indonesia (PMII), Kesatuan Mahasiswa Hindu Dharma Indonesia (KMHDI), Gerakan Mahasiswa Nasional Indonesia (GMNI) dan Kesatuan Aksi Mahasiswa Muslim Indonesia (KAMMI) di Kota Metro.\r\n\r\nKetua PC PMII Kota Metro, Amanda Wijaya menjelaskan, dalam aksinya terhitung sebanyak 250 mahasiswa turun kejalan.\r\n\r\n\"Secara teknis kita tadi kumpul ditugu pena sebagaimana seruan aksi Tugu Pena Bersama Masyarakat. Estimasi massa hari ini sebanyak 250 orang, yang longmarch dari Tugu Pena gedung DPRD Kota Metro,\" pungkasnya.\r\n\r\nRatusan peserta aksi juga melengkapi dirinya dengan sejumlah atribut demo, mulai dari poster yang dipampang hingga keranda jenazah yang dipanggul sampai gedung DPRD.\r\n\r\nDalam aksi massa di Tugu Pena hingga gedung DPRD Kota setempat sempat membuat arus lalu lintas tersendat. Petugas Kepolisian dari Satlantas Polres Metro terlihat berjibaku melakukan penjagaan dan pengalihan arus lalu lintas disepanjang rute longmarch.', 'longmarch-demonstran-blokade-jalan-ah-nasution-kot'),
(6, 'Fasilitasi Pelaku Usaha, Pemkot Metro Gandeng Pemerintah Pusat', '2022-04-15', 'Faqih Walltitan', 'Faqih Walltitan', 'static/berita/2022/04/15/fasilitasi-pelaku-usaha-pemkot-metro-gandeng-pemer_20220414155621.jpg', 'Kupastuntas.co, Metro - Guna memfasilitasi pelaku usaha dalam upaya meningkatkan perekonomian, Pemerintah Kota (Pemkot) Metro berencana melakukan kerjasama dengan Pemerintah Provinsi DKI Jakarta.\r\n\r\nHal itu disampaikan Assisten II Pemkot Metro, Yeri Ehwan usai rapat rencana MoU pemasaran produk unggulan ke DKI Jakarta di aula lantai II kantor Bappeda Kota setempat, Kamis (14/4/2022).\r\n\r\n\"Tadi kita rapat untuk menindaklanjuti hasil Walikota Metro dengan pak Gubernur DKI tanggal 23 Maret lalu di Jakarta. Memang dalam pertemuan itu, dibahas kemungkinan kerjasama antara pemerintah Kota Metro dengan pemerintah DKI,\" kata Yeri.\r\n\r\nSelain itu, rencananya Pemkot juga akan memfasilitasi kerjasama antar pelaku usaha di Metro dan DKI Jakarta. Termasuk juga kemungkinan kerjasama antara pelaku usaha Metro dengan pelaku usaha di DKI untuk pemasaran produk dari Kota Metro ke DKI.\r\n\r\n\"Tadi kita kumpul bersama beberapa dinas terkait juga beberapa perwakilan pelaku usaha di Metro yang kita nilai potensial produk nya bisa dipasarkan masuk ke Jakarta,\" bebernya.\r\n\r\nYeri menjelaskan, kini pihaknya mulai melakukan identifikasi sejumlah produk yang bakal dipasarkan di DKI Jakarta.\r\n\r\n\"Tadi yang baru teridentifikasi produk-produk yang ada seperti beras, daging sapi, telur kemudian sayur-sayuran, termasuk pula pupuk organik, dan ayam probiotik. Salain itu ada pelaku UMKM seperti bakso,\" jelasnya.\r\n\r\nKedepan, Pemkot Metro berencana melakukan kerjasama yang dikuatkan dengan penandatanganan nota kesepahaman MoU antar pemerintah dan pelaku usaha.\r\n\r\n\"Jadi nanti skemanya akan ada MoU antara Pemkot Metro dengan Pemkot DKI, government to government. Kemudian nanti tindaklanjutnya adalah kerjasama antara pelaku bisnis dengan pelaku bisnis,\" imbuhnya.\r\n\r\nYeri menambahkan, nantinya peran Pemkot Metro hanya sebagai fasilitator dalam upaya meningkatkan perekonomian sektor dunia usaha di Bumi Sai Wawai.\r\n\r\n\"Jadi nanti pelaku usaha kita dengan pelaku usaha disana, dan pemerintah saling memfasilitasi saja dengan harapan nantinya pelaku-pelaku usaha yang ikut di proses perdagangan itu bisa terus kita pantau dan kita bina,\" tandasnya.', 'fasilitasi-pelaku-usaha-pemkot-metro-gandeng-pemer');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-04-14 17:37:48.251370', '1', 'berita object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2022-04-14 17:38:16.878072', '1', 'berita object (1)', 3, '', 8, 1),
(3, '2022-04-15 06:37:53.327877', '1', 'berita object (1)', 1, '[{\"added\": {}}]', 8, 1),
(4, '2022-04-15 06:57:16.956447', '1', 'berita object (1)', 1, '[{\"added\": {}}]', 8, 1),
(5, '2022-04-15 07:04:04.294555', '1', 'berita object (1)', 1, '[{\"added\": {}}]', 8, 1),
(6, '2022-04-15 07:09:57.648030', '2', 'berita object (2)', 1, '[{\"added\": {}}]', 8, 1),
(7, '2022-04-15 07:11:19.226109', '3', 'berita object (3)', 1, '[{\"added\": {}}]', 8, 1),
(8, '2022-04-15 07:23:51.134125', '1', 'pengguna', 1, '[{\"added\": {}}]', 3, 1),
(9, '2022-04-15 07:24:36.776020', '2', 'heksa', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(10, '2022-04-15 15:50:56.762119', '1', 'qwe rty', 1, '[{\"added\": {}}]', 8, 1),
(11, '2022-04-15 15:51:04.460315', '1', 'qwe rty', 2, '[]', 8, 1),
(12, '2022-04-15 16:45:29.306999', 'None', 'Polisi Tangkap Pengedar 169 Gram Ganja di Metro', 1, '[{\"added\": {}}]', 8, 1),
(13, '2022-04-15 16:51:33.266580', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(14, '2022-04-15 16:54:56.253690', 'None', 'Longmarch Demonstran Blokade Jalan AH Nasution Kota Metro', 1, '[{\"added\": {}}]', 8, 1),
(15, '2022-04-15 16:59:35.023818', 'None', 'Fasilitasi Pelaku Usaha, Pemkot Metro Gandeng Pemerintah Pusat', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'berita', 'berita'),
(5, 'contenttypes', 'contenttype'),
(10, 'forum', 'komentar'),
(9, 'forum', 'topik'),
(7, 'home', 'user'),
(6, 'sessions', 'session'),
(11, 'umkm', 'data_umkm');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-14 16:14:01.461902'),
(2, 'auth', '0001_initial', '2022-04-14 16:14:13.305625'),
(3, 'admin', '0001_initial', '2022-04-14 16:14:16.563302'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-14 16:14:16.593922'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-14 16:14:16.627203'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-14 16:14:17.277159'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-14 16:14:17.400730'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-14 16:14:17.588562'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-14 16:14:17.604186'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-14 16:14:19.303916'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-14 16:14:19.337327'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-14 16:14:19.384202'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-14 16:14:19.634376'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-14 16:14:20.601197'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-14 16:14:20.920266'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-14 16:14:21.038794'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-14 16:14:21.323071'),
(18, 'berita', '0001_initial', '2022-04-14 16:14:21.868814'),
(19, 'home', '0001_initial', '2022-04-14 16:14:22.211597'),
(20, 'forum', '0001_initial', '2022-04-14 16:14:25.811510'),
(21, 'sessions', '0001_initial', '2022-04-14 16:14:27.247901'),
(22, 'umkm', '0001_initial', '2022-04-14 16:14:27.560228'),
(23, 'berita', '0002_alter_berita_gambar', '2022-04-15 06:48:32.118282'),
(24, 'berita', '0003_alter_berita_gambar', '2022-04-15 06:53:43.905919'),
(25, 'berita', '0004_alter_berita_gambar', '2022-04-15 07:03:19.361904'),
(26, 'berita', '0005_berita_slug', '2022-04-15 15:48:33.970797'),
(27, 'berita', '0006_auto_20220415_2311', '2022-04-15 16:11:54.342530');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('qkla9ormzxbt2d2990n5ahmhul91bt51', '.eJxVjDsOwjAQBe_iGllrJ_GHkj5niN7GaxxAiZRPhbg7spQC2pnRvNWAYy_Dsck6TEldlVGXX8YYnzJXkR6Y74sel3lfJ9Y10afddL8ked3O9m9QsJW6HW0D01mHxBFEMTGYpYlebMjE1EXyOSB5Z9sItia0mWzTwYgQnPp8Aem6N-I:1nf2o3:InzzSJnQYb9tpH10QzS8Jpd4bY9fsjkPixyZoskQYho', '2022-04-28 16:58:55.785571');

-- --------------------------------------------------------

--
-- Table structure for table `forum_komentar`
--

CREATE TABLE `forum_komentar` (
  `id` bigint(20) NOT NULL,
  `tanggal_upload` date NOT NULL,
  `isi_komentar` longtext NOT NULL,
  `id_topik_id` bigint(20) NOT NULL,
  `username_user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topik`
--

CREATE TABLE `forum_topik` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi_topik` longtext NOT NULL,
  `tanggal_upload` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `username_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home_user`
--

CREATE TABLE `home_user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `alamat` longtext NOT NULL,
  `nomor_handphone` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `umkm_data_umkm`
--

CREATE TABLE `umkm_data_umkm` (
  `id` bigint(20) NOT NULL,
  `nama_pemilik` varchar(200) NOT NULL,
  `nama_umkm` varchar(200) NOT NULL,
  `alamat` longtext NOT NULL,
  `kecamatan` varchar(200) NOT NULL,
  `foto_kedai` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `daftar_produk` longtext NOT NULL,
  `foto_produk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `umkm_data_umkm`
--

INSERT INTO `umkm_data_umkm` (`id`, `nama_pemilik`, `nama_umkm`, `alamat`, `kecamatan`, `foto_kedai`, `logo`, `daftar_produk`, `foto_produk`) VALUES
(1, '', 'CITRA PRIMADONA PERKASA, PT', 'JL. RAJA BASA NO. 9 YOSOREJO KOTA METRO - METRO (KOTA)', 'Metro Pusat', '', '', '', ''),
(2, '', 'KARYA MUDA JAYA, PT', 'JL. GATOT SUBROTO NO. 19 KEL. YOSODADI KEC. METRO TIMUR', 'Metro Timur', '', '', '', ''),
(3, '', 'PAROSAI, PT', 'JL. VETERAN NO. 31 KEL. HADIMULYO KEC. METRO PUSAT', 'Metro Pusat', '', '', '', ''),
(4, '', 'GEMUNTUR ALAM NUSANTARA, PT', 'JL. KEDONDONG NO. 303 KEL. YOSOMULYO KEC. METRO PUSAT', 'Metro Pusat', '', '', '', ''),
(5, '', 'INDOSEMAR MAS SAKTI, PT', 'JL. KENCANA INDAH RT/RW 009/002 KEL. MARGOREJO KEC. METRO SELATAN', 'Metro Selatan', '', '', '', ''),
(6, 'KUS', 'JUAL SAYUR KELILING', 'GANG PAVING JL ABIMANYU', 'Metro Selatan', '', '', '', ''),
(7, 'SUPARMAN', 'PENGGILINGAN PADI', 'JL ABIMANYU', 'Metro Selatan', '', '', '', ''),
(8, 'MUHLISIN', 'PENYEWAAN RUMAH', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(9, 'AWI', 'WARUNG GERABATAN', 'JL ARJUNA', 'Metro Selatan', '', '', '', ''),
(10, 'TAUFIK', 'BAKSO KELILING', 'JL PUNTODEWO', 'Metro Selatan', '', '', '', ''),
(11, 'ASEP', 'BAKSO KELILING', 'JL PUNTODEWO', 'Metro Selatan', '', '', '', ''),
(12, 'RUDI', 'GILINGAN KELILING', 'JL BARU', 'Metro Selatan', '', '', '', ''),
(13, 'UDIN', 'WARUNG KELONTONG', 'JL GATOT KACA', 'Metro Selatan', '', '', '', ''),
(14, 'YATI', 'WARUNG KELONTONG', 'JL GATOT KACA', 'Metro Selatan', '', '', '', ''),
(15, 'SURYANA', 'PEMBUAT RANJANG BESI', 'JL GATOT KACA', 'Metro Selatan', '', '', '', ''),
(16, 'LELY', 'JUAL PAKAIAN KELILING', 'JL GATOT KACA', 'Metro Selatan', '', '', '', ''),
(17, 'HADI', 'JUAL ALAT PERTANIAN', 'JL GATOT KACA', 'Metro Selatan', '', '', '', ''),
(18, '', 'SLB NEGERI METRO', 'JL GATOT KACA', 'Metro Selatan', '', '', '', ''),
(19, 'WENANG', 'GILINGAN PADI', 'JL GATOT KACA', 'Metro Selatan', '', '', '', ''),
(20, 'SARBANI', 'GILINGAN PADI KELILING', 'JL GATOT KACA 17', 'Metro Selatan', '', '', '', ''),
(21, 'SIROP', 'PENYEWAAN RUMAH', '	JL GATOT KACA', 'Metro Selatan', '', '', '', ''),
(22, 'DIAH', 'WARUNG GERABATAN', 'JL ARJUNA', 'Metro Selatan', '', '', '', ''),
(23, 'ERLIS', 'DAGANG BUAH KELILING', 'JL PUNTODEWO', 'Metro Selatan', '', '', '', ''),
(24, '', 'KB MIFTAHUL KHOIR', 'JL WISANGGENI', 'Metro Selatan', '', '', '', ''),
(25, '', 'TK MIFTAHUL KHOIR', 'JL WISANGGENI', 'Metro Selatan', '', '', '', ''),
(26, 'BAGUS', 'WARUNG GERABATAN', 'JL WISANGGENI', 'Metro Selatan', '', '', '', ''),
(27, 'BAGUS', 'JUAL SOSIS KELILING', 'JL WISANGGENI', 'Metro Selatan', '', '', '', ''),
(28, 'HAMIFAH', 'WARUNG GERABATAN', 'JL GATOT KACA 21', 'Metro Selatan', '', '', '', ''),
(29, 'ROMLAH', 'TUKANG JAHIT', 'JL GATOT KACA', 'Metro Selatan', '', '', '', ''),
(30, 'WAGINO', 'JUAL AYAM KELILING', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(31, 'SULAMI', 'JUAL MAKANAN KELILING', 'JL ARJUNA', 'Metro Selatan', '', '', '', ''),
(32, 'NANANG', 'PEMBORONG SUMUR BOR', 'JL ARJUNA', 'Metro Selatan', '', '', '', ''),
(33, 'HERNA', 'TOKO KELONTONG', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(34, 'SUKAMTO', 'KIOS PERTANIAN', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(35, 'SUKAMTO', 'KAMPAS ROTI', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(36, 'MUHLISIN', 'MEBEL', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(37, 'MUH', 'INDUSTRI SERBUK JAHE', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(38, 'IRMAWATI', 'JUAL BERAS', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(39, 'SANTI', 'JUAL IKAN LELE', 'SUMBERSARI', 'Metro Selatan', '', '', '', ''),
(40, '', 'MI YPI SUMBER SARI', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(41, 'KARNA', 'WARUNG KELONTONG', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(42, 'MUHAYIN', 'BENGKEL MOTOR MUHAYIN', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(43, 'MUHAYIN', 'JUAL GORENGAN', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(44, 'AWI', 'PERDAGANGAN GAS', 'JL PURTODEWO', 'Metro Selatan', '', '', '', ''),
(45, 'AWI', 'PERDAGANGAN GALON', 'JL PURTODEWO', 'Metro Selatan', '', '', '', ''),
(46, 'AWI', 'PERDAGANGAN BENSIN', 'JL PURTODEWO', 'Metro Selatan', '', '', '', ''),
(47, 'UDIN', 'PERDAGANGAN GALON', 'JL GATOT KACA', 'Metro Selatan', '', '', '', ''),
(48, 'UDIN', 'PERDAGANGAN GAS', 'JL GATOT KACA', 'Metro Selatan', '', '', '', ''),
(49, 'DIAH', 'PERDAGANGAN GALON', 'JL PUNTODEWO', 'Metro Selatan', '', '', '', ''),
(50, 'DIAH', 'PERDAGANGAN GAS', 'JL PUNTODEWO', 'Metro Selatan', '', '', '', ''),
(51, 'DIAH', 'PERDAGANGAN BENSIN', 'JL PUNTODEWO', 'Metro Selatan', '', '', '', ''),
(52, 'HANIFA', 'PERDAGANGAN GAS', 'JL GATOT KACA', 'Metro Selatan', '', '', '', ''),
(53, '', 'PERDAGANGAN PULSA HP', 'JL GATOT KACA', 'Metro Selatan', '', '', '', ''),
(54, 'HERNA', 'PERDAGANGAN BENSIN', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(55, 'HERNA', 'PERDAGANGAN GAS', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(56, 'KARNA', 'PERDAGANGAN GALON', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(57, 'KARNA', 'PERDAGANGAN GAS', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(58, 'KARNA', 'PERDAGANGAN BENSIN', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(59, 'MUNIYAH', 'PERDAGANGAN SPREPART MOTOR', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(60, 'SUROSO', 'PABRIK MEBEL', 'JL SADEWO', 'Metro Selatan', '', '', '', ''),
(61, 'UMI YAH', 'SAYUR KELILING', 'JL SADEWO', 'Metro Selatan', '', '', '', ''),
(62, 'SUKATMAN', 'JUAL PULSA', 'JL SADEWO', 'Metro Selatan', '', '', '', ''),
(63, 'LEGIYEM', 'PEMULUNG', 'JL KILISUCI', 'Metro Selatan', '', '', '', ''),
(64, 'AGUS', 'MEBEL', 'JL ONTOREJO', 'Metro Selatan', '', '', '', ''),
(65, 'TRI', 'WARUNG KELONTONGAN', 'JL KILISUCI B', 'Metro Selatan', '', '', '', ''),
(66, 'TAJUDIN', 'BAKSO PANGKI', 'GANG PAVING JL KILISUCI', 'Metro Selatan', '', '', '', ''),
(67, '', 'POSKESKEL SUMBERSARI', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(68, 'DENI', 'GILINGAN PADI KELILING', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(69, 'DENI', 'WARUNG KELONTONG', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(70, 'SUGIYANTO', 'WARUNG KELONTONG', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(71, 'LANGGENG', 'PENGEBORAN SUMUR', 'JL PAVING ONTOSENO', 'Metro Selatan', '', '', '', ''),
(72, 'ADI', 'PENYEWAAN TARUB', 'JL PAVING ONTOSENO', 'Metro Selatan', '', '', '', ''),
(73, 'SRI', 'JUAL JAJANAN KELILING', 'JL PAVING ONTOSENO', 'Metro Selatan', '', '', '', ''),
(74, 'DEWI', 'WARUNG GERABATAN', '	JL ONTO SENO', 'Metro Selatan', '', '', '', ''),
(75, 'SUTINAH', 'JUAL RONGSOK', 'JL PAVING ONTOSENO', 'Metro Selatan', '', '', '', ''),
(76, 'ANDI', 'TUKANG JAHIT', 'JL ONTOSENO', 'Metro Selatan', '', '', '', ''),
(77, 'WIWIN', 'JUAL KOPI BUBUK', 'JL ONTOSENO', 'Metro Selatan', '', '', '', ''),
(78, 'YULI', 'WARUNG GERABATAN', 'JL ONTOSENO', 'Metro Selatan', '', '', '', ''),
(79, 'HENDRI', 'JUAL SAYUR KELILING', 'JL ONTOSENO', 'Metro Selatan', '', '', '', ''),
(80, 'IBNU', 'BENGKEL MOTOR', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(81, 'IKE', 'JUAL GORENGAN', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(82, 'ROKHMAN', 'JUAL ROTI KELILING', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(83, 'MUSLIMIN', 'JUAL ROTI KELILING', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(84, 'TRI', 'PERDAGANGAN GAS', 'JL KILI SUCI', 'Metro Selatan', '', '', '', ''),
(85, 'DENI', 'PERDAGANGAN BENSIN', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(86, 'DENI', 'PERDAGANGAN GALON', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(87, 'DENI', 'PERDAGANGAN GAS', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(88, 'SUGIYANTO', 'PERDAGANGAN GAS', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(89, 'SUGIYANTO', 'PERDAGANGAN GALON', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(90, 'SUGIYANTO', 'PERDAGANGAN BENSIN', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(91, 'DEWI', 'PERDAGANGAN GAS', 'JL ONTOREJO', 'Metro Selatan', '', '', '', ''),
(92, 'DEWI', 'PERDAGANGAN GALON', 'JL ONTOREJO', 'Metro Selatan', '', '', '', ''),
(93, 'DEWI', 'PERDAGANGAN BENSIN', 'JL ONTOREJO', 'Metro Selatan', '', '', '', ''),
(94, 'YULI', 'PERDAGANGAN GAS', 'JL ONTOREJO', 'Metro Selatan', '', '', '', ''),
(95, 'YULI', 'PERDAGANGAN GALON', 'JL ONTOREJO', 'Metro Selatan', '', '', '', ''),
(96, 'YULI', 'PERDAGANGAN PULSA', 'JL ONTOREJO', 'Metro Selatan', '', '', '', ''),
(97, 'IBNU', 'PERDAGANGAN SPAREPART MOTOR', 'JL INSPEKSI', 'Metro Selatan', '', '', '', ''),
(98, 'JOKO', 'BENGKEL MOTOR', 'JL JEND SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(99, 'SINGGIH', 'PENYEWAAN RUKO', 'JL JEND SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(100, 'MOKO', 'WARUNG KELONTONG', 'JL JEND SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(101, '', 'RPM FOTO KOPI', 'JL JEND SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(102, 'ZURA', 'WARUNG ZURA', 'JL JEND SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(103, 'IVO', 'PENYEWAAN RUKO', 'JL JEND SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(104, 'DARLI', 'MINI ATM BANK BRI', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(105, 'SUSINAH', 'TOKO PERTANIAN', 'JL JEND SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(106, '', 'WARUNG MAKAN PODOMORO', 'JL JEND SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(107, '', 'AMELEA FASHION', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(108, '', 'TK AISYAH BUSTANUL ANFAL', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(109, 'IBID', 'TUKANG PIJIT', 'JL GEMBIRA 12', 'Metro Selatan', '', '', '', ''),
(110, 'SETIYANI', 'JUAL GORENGAN KELILING', 'JL GEMBIRA 18', 'Metro Selatan', '', '', '', ''),
(111, 'SUHARTI', 'RENTAL PS', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(112, 'RATNA', 'KLINIK DOKTER', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(113, 'LIA', 'KERIPIK PISANG', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(114, 'LIA', 'TUPPERWARE', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(115, 'DASIO', 'TUKANG OJEK', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(116, 'WAHADI', 'TUKANG JAHIT', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(117, 'HADI', 'JUAL DEDAK DAN BERAS', '	SUMBERSARI', 'Metro Selatan', '', '', '', ''),
(118, 'SARWAN', 'TUKANG PIJIT', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(119, 'YATI', 'WARUNG KELONTONG', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(120, 'BUDI', 'JUAL KELAPA DAN NANGKA', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(121, 'MUJI', 'PEMBORONG BANGUNAN', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(122, '', 'SD N 8 METRO SELATAN', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(123, 'ISAH', 'KANTIN SEKOLAH', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(124, 'MARYATI', 'KANTIN SEKOLAH', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(125, 'FATMA', 'ONLINE SHOP', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(126, 'NILWAN', 'PEMBUAT LOSTER', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(127, 'FEFI', 'WARUNG GERABATAN', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(128, 'YUDI', 'PEMULUNG', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(129, 'JOKO', 'PERDAGANGAN SUKU CADANG', 'JL R SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(130, 'MOKO', 'PERDAGANGAN BENSIN', 'JL R SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(131, 'MOKO', 'PERDAGANGAN AIR MINERAL', 'JL R SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(132, 'MOKO', 'PERDAGANGAN ELPIJI', 'JL R SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(133, 'RPM', 'PENJUAL ATK', 'JL R SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(134, 'ZURA', 'PENJUAL PULSA', 'JL R SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(135, 'ZURA', 'PENJUAL GALON AIR MINERAL', 'JL R SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(136, 'ZURA', 'PENJUAL GAS ELPIJI', 'JL R SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(137, 'TRISTIANA', 'PERDAGANGAN PULSA PLN', 'JL R SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(138, 'FEFI', 'PERDAGANGAN GAS', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(139, 'FEFI', 'PERDAGANGAN PULSA HP', 'JL GEMBIRA', 'Metro Selatan', '', '', '', ''),
(140, 'SURYA', 'INDUSTRI TEMPE', 'JALAN SUKOCO', 'Metro Selatan', '', '', '', ''),
(141, 'HENDI', 'WARUNG KELONTONG', 'JALAN SUKOCO', 'Metro Selatan', '', '', '', ''),
(142, 'SETU', 'TARUP', 'JALAN PAVING BLOK', 'Metro Selatan', '', '', '', ''),
(143, 'DAYAT', 'PEMOTONGAN UNGGAS', 'JALAN SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(144, 'MELI', 'INDUSTRI KERIPIK', 'JALAN SUKOCO', 'Metro Selatan', '', '', '', ''),
(145, 'DESIANA', 'GURU PRIVAT', 'JALAN SUKOCO', 'Metro Selatan', '', '', '', ''),
(146, 'RUDI', 'WARUNG KLONTONG', 'JALAN SUKOCO', 'Metro Selatan', '', '', '', ''),
(147, '', 'PENUNJANG TB BERKAH', 'JALAN SUPRAPTO', 'Metro Selatan', '', '', '', ''),
(148, '', 'PEDAGANG PAKAN TERNAK', 'JALAN ANTASARI', 'Metro Selatan', '', '', '', ''),
(149, 'KUSBANI', 'BIG STAR MUSIKS', 'JALAN PENDOWO NO.17', 'Metro Selatan', '', '', '', ''),
(150, 'ALI', 'INDUSTRI MEBELLER', 'JALAN SUKOCO', 'Metro Selatan', '', '', '', ''),
(151, '', 'PENUNJANG BIG STAR MUSIK', 'JALAN SUKOCO', 'Metro Selatan', '', '', '', ''),
(152, 'BARDI', 'WARUNG KELONTONG', 'JALAN PENDOWO', 'Metro Selatan', '', '', '', ''),
(153, 'NAHSAN', 'AGEN GAS ELPIJI', 'JALAN PENDOWO', 'Metro Selatan', '', '', '', ''),
(154, 'TUMINI', 'PEDAGANG SAYURAN', 'JALAN PENDOWO', 'Metro Selatan', '', '', '', ''),
(155, 'TUKINEM', 'PEDAGANG AYAM', 'JALAN PENDOWO', 'Metro Selatan', '', '', '', ''),
(156, 'TUMINI', 'RONGSOKAN', 'JALAN SETO', 'Metro Selatan', '', '', '', ''),
(157, 'TUMINI', 'PIJAT', 'JALAN SETO', 'Metro Selatan', '', '', '', ''),
(158, 'SUGIATI', 'PEDAGANG SAYURAN', 'JALAN SETO', 'Metro Selatan', '', '', '', ''),
(159, 'FETI', 'JUAL PULSA', 'JALAN SETO', 'Metro Selatan', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `berita_berita`
--
ALTER TABLE `berita_berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `berita_berita_slug_a37f1c05` (`slug`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `forum_komentar`
--
ALTER TABLE `forum_komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_komentar_id_topik_id_6741ba37_fk_forum_topik_id` (`id_topik_id`),
  ADD KEY `forum_komentar_username_user_id_f95438c6_fk_home_user_username` (`username_user_id`);

--
-- Indexes for table `forum_topik`
--
ALTER TABLE `forum_topik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_topik_username_id_c20d8195_fk_home_user_username` (`username_id`);

--
-- Indexes for table `home_user`
--
ALTER TABLE `home_user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `umkm_data_umkm`
--
ALTER TABLE `umkm_data_umkm`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `berita_berita`
--
ALTER TABLE `berita_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `forum_komentar`
--
ALTER TABLE `forum_komentar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_topik`
--
ALTER TABLE `forum_topik`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `umkm_data_umkm`
--
ALTER TABLE `umkm_data_umkm`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `forum_komentar`
--
ALTER TABLE `forum_komentar`
  ADD CONSTRAINT `forum_komentar_id_topik_id_6741ba37_fk_forum_topik_id` FOREIGN KEY (`id_topik_id`) REFERENCES `forum_topik` (`id`),
  ADD CONSTRAINT `forum_komentar_username_user_id_f95438c6_fk_home_user_username` FOREIGN KEY (`username_user_id`) REFERENCES `home_user` (`username`);

--
-- Constraints for table `forum_topik`
--
ALTER TABLE `forum_topik`
  ADD CONSTRAINT `forum_topik_username_id_c20d8195_fk_home_user_username` FOREIGN KEY (`username_id`) REFERENCES `home_user` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
