-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 05:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test-varnion`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--
-- Creation: Feb 19, 2024 at 03:29 PM
-- Last update: Feb 19, 2024 at 03:44 PM
--

CREATE TABLE `barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `kd_kategori` varchar(10) NOT NULL,
  `kd_satuan` varchar(10) NOT NULL,
  `kode` varchar(6) NOT NULL,
  `jumlah` int(10) UNSIGNED DEFAULT 0,
  `id_user_insert` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `barang`:
--   `kd_kategori`
--       `kategori_barang` -> `kode`
--   `kd_satuan`
--       `satuan_barang` -> `kode`
--

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `kd_kategori`, `kd_satuan`, `kode`, `jumlah`, `id_user_insert`, `created_at`, `updated_at`) VALUES
(1, 'Kitchen Set', 'kts', 'm', 'a2E3Vj', 12, 123, '2024-02-19 08:27:44', '2024-02-19 08:42:49'),
(3, 'Kitchen Set2', 'kts', 'm', 'go4JTM', 86, 123, '2024-02-19 08:30:17', '2024-02-19 08:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--
-- Creation: Feb 19, 2024 at 11:50 AM
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `failed_jobs`:
--

-- --------------------------------------------------------

--
-- Table structure for table `hasil_response`
--
-- Creation: Feb 19, 2024 at 11:50 AM
-- Last update: Feb 19, 2024 at 01:06 PM
--

CREATE TABLE `hasil_response` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_kelamin` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nama_jalan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `angka_kurang` int(11) NOT NULL,
  `angka_lebih` int(11) NOT NULL,
  `profesi` char(255) NOT NULL,
  `plain_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`plain_json`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `hasil_response`:
--

--
-- Dumping data for table `hasil_response`
--

INSERT INTO `hasil_response` (`id`, `jenis_kelamin`, `nama`, `nama_jalan`, `email`, `angka_kurang`, `angka_lebih`, `profesi`, `plain_json`, `created_at`, `updated_at`) VALUES
(53, 2, 'Anusha Almeida', 'Santhekatte', 'anusha.almeida@example.com', 11, 21, 'A', '{\"gender\":\"female\",\"name\":{\"title\":\"Mrs\",\"first\":\"Anusha\",\"last\":\"Almeida\"},\"location\":{\"street\":{\"number\":5903,\"name\":\"Santhekatte\"},\"city\":\"Nagercoil\",\"state\":\"Telangana\",\"country\":\"India\",\"postcode\":77363,\"coordinates\":{\"latitude\":\"4.5685\",\"longitude\":\"156.4802\"},\"timezone\":{\"offset\":\"+4:00\",\"description\":\"Abu Dhabi, Muscat, Baku, Tbilisi\"}},\"email\":\"anusha.almeida@example.com\",\"login\":{\"uuid\":\"10899dae-be3b-4e48-bfa4-0e8b7625384e\",\"username\":\"crazybird942\",\"password\":\"ou812\",\"salt\":\"4mR6sIn7\",\"md5\":\"3e21c08eee0df806fbf94f00881a43ce\",\"sha1\":\"6dfdb98fbb3b6f2e6b31e794c1b737a1454f0164\",\"sha256\":\"ad7b64269843e6e8ec13839fddaca0271f5fd9d88b3cd0180ec748736d141c6b\"},\"dob\":{\"date\":\"1974-04-19T21:53:46.037Z\",\"age\":49},\"registered\":{\"date\":\"2017-03-02T23:37:58.590Z\",\"age\":6},\"phone\":\"8132528220\",\"cell\":\"8247733214\",\"id\":{\"name\":\"UIDAI\",\"value\":\"544525394270\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/48.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/48.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/48.jpg\"},\"nat\":\"IN\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(54, 2, 'Marisol Mayorga', 'Viaducto Ucrania', 'marisol.mayorga@example.com', 15, 17, 'E', '{\"gender\":\"female\",\"name\":{\"title\":\"Mrs\",\"first\":\"Marisol\",\"last\":\"Mayorga\"},\"location\":{\"street\":{\"number\":3160,\"name\":\"Viaducto Ucrania\"},\"city\":\"Y\\u00e1varos (Isla Las Viejas)\",\"state\":\"Chihuahua\",\"country\":\"Mexico\",\"postcode\":87098,\"coordinates\":{\"latitude\":\"-52.2965\",\"longitude\":\"-92.5224\"},\"timezone\":{\"offset\":\"-3:00\",\"description\":\"Brazil, Buenos Aires, Georgetown\"}},\"email\":\"marisol.mayorga@example.com\",\"login\":{\"uuid\":\"1837bb56-3278-4679-b85e-73b0aba8855f\",\"username\":\"goldenbear791\",\"password\":\"bigbear\",\"salt\":\"7w8BdJFu\",\"md5\":\"5f368964df7acc9978c727eaa026eb4d\",\"sha1\":\"5a06c02436d2ae589e653be706b334b5ffbcb9b1\",\"sha256\":\"513ce0a3fb28daf0840357c97c82516ec03a9286664366557451439e60e9c6e2\"},\"dob\":{\"date\":\"1953-09-06T20:39:05.735Z\",\"age\":70},\"registered\":{\"date\":\"2003-03-01T07:01:38.202Z\",\"age\":20},\"phone\":\"(646) 933 6738\",\"cell\":\"(651) 494 8548\",\"id\":{\"name\":\"NSS\",\"value\":\"97 32 90 3572 6\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/51.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/51.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/51.jpg\"},\"nat\":\"MX\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(55, 1, 'Adam Harris', 'Argyle St', 'adam.harris@example.com', 12, 20, 'A', '{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Adam\",\"last\":\"Harris\"},\"location\":{\"street\":{\"number\":8087,\"name\":\"Argyle St\"},\"city\":\"Port Elgin\",\"state\":\"New Brunswick\",\"country\":\"Canada\",\"postcode\":\"S5K 8W3\",\"coordinates\":{\"latitude\":\"86.2160\",\"longitude\":\"-115.0620\"},\"timezone\":{\"offset\":\"-10:00\",\"description\":\"Hawaii\"}},\"email\":\"adam.harris@example.com\",\"login\":{\"uuid\":\"df5f6098-5250-4c20-869f-55ab6c816f6e\",\"username\":\"whiteleopard407\",\"password\":\"sandwich\",\"salt\":\"SFPeG4GB\",\"md5\":\"2d642ddaea4774c40a290a233a7cdb95\",\"sha1\":\"3be453ecd26fc95e57813482b08e8cf6c06dcee6\",\"sha256\":\"3cc49be9087725aaa90b9f8ecf7fae8eca6b73d9635ad257a4eca1e6234391b5\"},\"dob\":{\"date\":\"1975-12-16T09:58:16.527Z\",\"age\":48},\"registered\":{\"date\":\"2004-10-26T11:16:21.164Z\",\"age\":19},\"phone\":\"B76 C48-2718\",\"cell\":\"J26 K69-4289\",\"id\":{\"name\":\"SIN\",\"value\":\"307612127\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/28.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/28.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/28.jpg\"},\"nat\":\"CA\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(56, 2, 'Catherine Walker', 'N Stelling Rd', 'catherine.walker@example.com', 8, 24, 'E', '{\"gender\":\"female\",\"name\":{\"title\":\"Miss\",\"first\":\"Catherine\",\"last\":\"Walker\"},\"location\":{\"street\":{\"number\":9017,\"name\":\"N Stelling Rd\"},\"city\":\"Orange\",\"state\":\"Northern Territory\",\"country\":\"Australia\",\"postcode\":6226,\"coordinates\":{\"latitude\":\"11.2725\",\"longitude\":\"-7.2636\"},\"timezone\":{\"offset\":\"+4:30\",\"description\":\"Kabul\"}},\"email\":\"catherine.walker@example.com\",\"login\":{\"uuid\":\"dfb54f14-8c49-4120-a1c2-a45b8a18e87c\",\"username\":\"angryleopard715\",\"password\":\"paranoid\",\"salt\":\"nymDAZof\",\"md5\":\"e5d16e5f922ca209bcb1a43696c9d783\",\"sha1\":\"1e1a9c2aa6750eee65412e1079584397e136811a\",\"sha256\":\"4892de6f1f68ed0a31d04eb6ad501baeae2389c168d11b8a284f1b7cd86d6fe4\"},\"dob\":{\"date\":\"1947-06-24T13:04:43.547Z\",\"age\":76},\"registered\":{\"date\":\"2016-11-16T10:15:01.805Z\",\"age\":7},\"phone\":\"01-0843-9267\",\"cell\":\"0411-235-231\",\"id\":{\"name\":\"TFN\",\"value\":\"224167628\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/44.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/44.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/44.jpg\"},\"nat\":\"AU\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(57, 2, 'Saranya Bhat', 'Jagadamba Centre', 'saranya.bhat@example.com', 11, 21, 'A', '{\"gender\":\"female\",\"name\":{\"title\":\"Mrs\",\"first\":\"Saranya\",\"last\":\"Bhat\"},\"location\":{\"street\":{\"number\":5749,\"name\":\"Jagadamba Centre\"},\"city\":\"Panipat\",\"state\":\"Rajasthan\",\"country\":\"India\",\"postcode\":19030,\"coordinates\":{\"latitude\":\"79.8867\",\"longitude\":\"6.1789\"},\"timezone\":{\"offset\":\"-6:00\",\"description\":\"Central Time (US & Canada), Mexico City\"}},\"email\":\"saranya.bhat@example.com\",\"login\":{\"uuid\":\"58240ca1-7d4b-41d5-8a69-e73df05b697f\",\"username\":\"angrypeacock246\",\"password\":\"casey1\",\"salt\":\"FMnHGtW2\",\"md5\":\"7ffd4051a166011c916d5f2af9f45417\",\"sha1\":\"ef1ea349e87caabee3dbf3c23a5dd7d1a2f2823a\",\"sha256\":\"bd5cf5aa31c6902473c1979a8b63c6768fcf1844743b1505fd6178e2a5d3feae\"},\"dob\":{\"date\":\"1955-05-29T04:31:03.041Z\",\"age\":68},\"registered\":{\"date\":\"2007-07-04T04:13:52.547Z\",\"age\":16},\"phone\":\"7006418029\",\"cell\":\"7081269179\",\"id\":{\"name\":\"UIDAI\",\"value\":\"901734845591\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/51.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/51.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/51.jpg\"},\"nat\":\"IN\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(58, 1, 'Baljiwan Fernandes', 'Janpath', 'baljiwan.fernandes@example.com', 17, 15, 'E', '{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Baljiwan\",\"last\":\"Fernandes\"},\"location\":{\"street\":{\"number\":6310,\"name\":\"Janpath\"},\"city\":\"Tirunelveli\",\"state\":\"Haryana\",\"country\":\"India\",\"postcode\":91769,\"coordinates\":{\"latitude\":\"58.1380\",\"longitude\":\"-3.2767\"},\"timezone\":{\"offset\":\"-9:00\",\"description\":\"Alaska\"}},\"email\":\"baljiwan.fernandes@example.com\",\"login\":{\"uuid\":\"b4b038ca-77b8-455e-884d-7d98f38d53df\",\"username\":\"crazyladybug633\",\"password\":\"ghost\",\"salt\":\"cJwPM6Jl\",\"md5\":\"3a451599f1014234ea045397afa7f57d\",\"sha1\":\"0e2988538f85129facaad1666e4d9a58b2aae829\",\"sha256\":\"118fd6cda262b2419a3d09c29edfc32830b4f44c17534a7f727d4ae61befdcca\"},\"dob\":{\"date\":\"1976-04-13T06:33:29.922Z\",\"age\":47},\"registered\":{\"date\":\"2008-04-04T04:03:23.888Z\",\"age\":15},\"phone\":\"7292919091\",\"cell\":\"9283437354\",\"id\":{\"name\":\"UIDAI\",\"value\":\"247477740331\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/57.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/57.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/57.jpg\"},\"nat\":\"IN\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(59, 2, 'Iina Moilanen', 'Hermiankatu', 'iina.moilanen@example.com', 15, 17, 'C', '{\"gender\":\"female\",\"name\":{\"title\":\"Mrs\",\"first\":\"Iina\",\"last\":\"Moilanen\"},\"location\":{\"street\":{\"number\":192,\"name\":\"Hermiankatu\"},\"city\":\"Luum\\u00e4ki\",\"state\":\"Northern Savonia\",\"country\":\"Finland\",\"postcode\":94826,\"coordinates\":{\"latitude\":\"84.0815\",\"longitude\":\"143.7800\"},\"timezone\":{\"offset\":\"+9:00\",\"description\":\"Tokyo, Seoul, Osaka, Sapporo, Yakutsk\"}},\"email\":\"iina.moilanen@example.com\",\"login\":{\"uuid\":\"a9b46910-2bdc-4620-ba38-afde099c15a1\",\"username\":\"whiterabbit985\",\"password\":\"1111111\",\"salt\":\"KgA0e7UT\",\"md5\":\"81a6c6c046e0219468826e4d72112c7f\",\"sha1\":\"07e35bf8efe467657f5bd19df8e90d910dd16f3b\",\"sha256\":\"d936b893c1a78845d9565000d1e89087a61df5369b225b6ae7926c658fe268d4\"},\"dob\":{\"date\":\"1970-08-18T08:46:33.328Z\",\"age\":53},\"registered\":{\"date\":\"2006-04-11T10:45:57.089Z\",\"age\":17},\"phone\":\"09-685-653\",\"cell\":\"049-433-66-53\",\"id\":{\"name\":\"HETU\",\"value\":\"NaNNA900undefined\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/46.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/46.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/46.jpg\"},\"nat\":\"FI\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(60, 2, 'Rachana Babu', 'NAD X Rd', 'rachana.babu@example.com', 18, 14, 'A', '{\"gender\":\"female\",\"name\":{\"title\":\"Mrs\",\"first\":\"Rachana\",\"last\":\"Babu\"},\"location\":{\"street\":{\"number\":9614,\"name\":\"NAD X Rd\"},\"city\":\"Kollam\",\"state\":\"Kerala\",\"country\":\"India\",\"postcode\":61818,\"coordinates\":{\"latitude\":\"-6.9267\",\"longitude\":\"-61.6501\"},\"timezone\":{\"offset\":\"-12:00\",\"description\":\"Eniwetok, Kwajalein\"}},\"email\":\"rachana.babu@example.com\",\"login\":{\"uuid\":\"e76a7fdf-09b6-4811-bda9-21d9322e477d\",\"username\":\"sadbird490\",\"password\":\"200000\",\"salt\":\"VRWKHggu\",\"md5\":\"1c074e54191dc1fad0ee8603f7d059a4\",\"sha1\":\"389ba46f9a8732263f9e5c609e6bcd2565293dee\",\"sha256\":\"0769f69ecb88d632a93938d8feeb222df9c785fe60a1a213d5950e6999bb0a53\"},\"dob\":{\"date\":\"1959-09-27T12:34:56.775Z\",\"age\":64},\"registered\":{\"date\":\"2011-09-30T19:30:01.797Z\",\"age\":12},\"phone\":\"8597435232\",\"cell\":\"8220859066\",\"id\":{\"name\":\"UIDAI\",\"value\":\"750902618350\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/51.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/51.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/51.jpg\"},\"nat\":\"IN\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(61, 1, 'Sander Jørgensen', 'Erantisvej', 'sander.jorgensen@example.com', 14, 18, 'E', '{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Sander\",\"last\":\"J\\u00f8rgensen\"},\"location\":{\"street\":{\"number\":2138,\"name\":\"Erantisvej\"},\"city\":\"Amager\",\"state\":\"Sj\\u00e6lland\",\"country\":\"Denmark\",\"postcode\":30018,\"coordinates\":{\"latitude\":\"-56.9306\",\"longitude\":\"-7.5833\"},\"timezone\":{\"offset\":\"+3:30\",\"description\":\"Tehran\"}},\"email\":\"sander.jorgensen@example.com\",\"login\":{\"uuid\":\"3526dc09-e655-4bb0-a84e-6adad440aa3a\",\"username\":\"tinypanda721\",\"password\":\"reggie\",\"salt\":\"sIvKtXin\",\"md5\":\"f869f7a9bcca6ad0f2a9a6648e002fd4\",\"sha1\":\"64176c800d1bbe39b1a8c1e16cf1e65254d0c9b4\",\"sha256\":\"300c760ac232ee5f93a9e1fc51d7700567026ec8202ac822907802086428a6c5\"},\"dob\":{\"date\":\"1979-10-22T01:21:03.620Z\",\"age\":44},\"registered\":{\"date\":\"2008-11-01T22:13:12.527Z\",\"age\":15},\"phone\":\"33914995\",\"cell\":\"66778859\",\"id\":{\"name\":\"CPR\",\"value\":\"211079-7767\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/83.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/83.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/83.jpg\"},\"nat\":\"DK\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(62, 2, 'Inger Nyvold', 'Brageveien', 'inger.nyvold@example.com', 18, 14, 'B', '{\"gender\":\"female\",\"name\":{\"title\":\"Miss\",\"first\":\"Inger\",\"last\":\"Nyvold\"},\"location\":{\"street\":{\"number\":6551,\"name\":\"Brageveien\"},\"city\":\"Lillesand\",\"state\":\"Troms - Romsa\",\"country\":\"Norway\",\"postcode\":\"3131\",\"coordinates\":{\"latitude\":\"-66.4077\",\"longitude\":\"113.8697\"},\"timezone\":{\"offset\":\"+4:00\",\"description\":\"Abu Dhabi, Muscat, Baku, Tbilisi\"}},\"email\":\"inger.nyvold@example.com\",\"login\":{\"uuid\":\"bb92b004-8856-450c-a232-3bb96ed60c2e\",\"username\":\"organicbird410\",\"password\":\"february\",\"salt\":\"Jp1kl1UB\",\"md5\":\"12ea2b279fb14b3d66d13fd300aaec45\",\"sha1\":\"b4a3bce087de4d317fda3ae2833e0d8670b8b15d\",\"sha256\":\"0f9e185d87ddbdfa445481ad7ed926f4c2e25443a9ee6822fb5459619c0c1db6\"},\"dob\":{\"date\":\"1955-05-03T16:15:39.804Z\",\"age\":68},\"registered\":{\"date\":\"2015-11-11T09:49:41.779Z\",\"age\":8},\"phone\":\"82700492\",\"cell\":\"46666010\",\"id\":{\"name\":\"FN\",\"value\":\"03055517478\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/2.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/2.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/2.jpg\"},\"nat\":\"NO\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(63, 2, 'Saana Korpela', 'Aleksanterinkatu', 'saana.korpela@example.com', 13, 19, 'D', '{\"gender\":\"female\",\"name\":{\"title\":\"Mrs\",\"first\":\"Saana\",\"last\":\"Korpela\"},\"location\":{\"street\":{\"number\":3467,\"name\":\"Aleksanterinkatu\"},\"city\":\"K\\u00f6kar\",\"state\":\"Pirkanmaa\",\"country\":\"Finland\",\"postcode\":56171,\"coordinates\":{\"latitude\":\"-68.6443\",\"longitude\":\"55.2527\"},\"timezone\":{\"offset\":\"+2:00\",\"description\":\"Kaliningrad, South Africa\"}},\"email\":\"saana.korpela@example.com\",\"login\":{\"uuid\":\"e8a42363-76d3-41a0-8a0b-721d74e39c21\",\"username\":\"silverrabbit666\",\"password\":\"mitch\",\"salt\":\"ZBVLou78\",\"md5\":\"7c001118bc3b7fbdf01aaba646de2d6e\",\"sha1\":\"c27bd7b2ba19e495620db7c63c85474d4ab549d7\",\"sha256\":\"b5018db3f02c4794fa9ef2c61c73b39f776333ff66af255d03b34b782811fd92\"},\"dob\":{\"date\":\"1957-11-06T00:06:32.168Z\",\"age\":66},\"registered\":{\"date\":\"2010-05-09T22:15:35.978Z\",\"age\":13},\"phone\":\"02-332-113\",\"cell\":\"045-333-20-44\",\"id\":{\"name\":\"HETU\",\"value\":\"NaNNA300undefined\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/45.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/45.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/45.jpg\"},\"nat\":\"FI\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(64, 2, 'Ciciane Gomes', 'Travessa dos Açorianos', 'ciciane.gomes@example.com', 10, 22, 'E', '{\"gender\":\"female\",\"name\":{\"title\":\"Mrs\",\"first\":\"Ciciane\",\"last\":\"Gomes\"},\"location\":{\"street\":{\"number\":6054,\"name\":\"Travessa dos A\\u00e7orianos\"},\"city\":\"Curitiba\",\"state\":\"Alagoas\",\"country\":\"Brazil\",\"postcode\":92759,\"coordinates\":{\"latitude\":\"-42.4176\",\"longitude\":\"-38.0206\"},\"timezone\":{\"offset\":\"-9:00\",\"description\":\"Alaska\"}},\"email\":\"ciciane.gomes@example.com\",\"login\":{\"uuid\":\"84623472-ac93-4e99-9b2a-395bd1893885\",\"username\":\"goldengoose762\",\"password\":\"quest\",\"salt\":\"VpCnPPXQ\",\"md5\":\"578761e2f912d14db3451488a45f4a5d\",\"sha1\":\"a7ac74e2979578ff2ebfe03f14403371a0190c4f\",\"sha256\":\"3bf012a5a830e0a0d4468495bd20534303253182ce83c2eca002c8c9d155dab4\"},\"dob\":{\"date\":\"1967-01-20T06:08:56.889Z\",\"age\":57},\"registered\":{\"date\":\"2014-08-21T06:34:39.407Z\",\"age\":9},\"phone\":\"(48) 4393-2014\",\"cell\":\"(22) 6402-3139\",\"id\":{\"name\":\"CPF\",\"value\":\"749.951.598-80\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/2.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/2.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/2.jpg\"},\"nat\":\"BR\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(65, 1, 'Joel Kim', 'White Oak Dr', 'joel.kim@example.com', 15, 17, 'B', '{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Joel\",\"last\":\"Kim\"},\"location\":{\"street\":{\"number\":6040,\"name\":\"White Oak Dr\"},\"city\":\"Corona\",\"state\":\"Michigan\",\"country\":\"United States\",\"postcode\":28238,\"coordinates\":{\"latitude\":\"51.0168\",\"longitude\":\"130.5738\"},\"timezone\":{\"offset\":\"+9:00\",\"description\":\"Tokyo, Seoul, Osaka, Sapporo, Yakutsk\"}},\"email\":\"joel.kim@example.com\",\"login\":{\"uuid\":\"30b23482-00a7-42d0-be31-d14bf2bfe01c\",\"username\":\"purpleduck428\",\"password\":\"1992\",\"salt\":\"dntCJxHc\",\"md5\":\"433fa7b4ba179c701a5791689e2d650c\",\"sha1\":\"4a94e9d6615522d8912a40553a3a1be9bc61a923\",\"sha256\":\"e4f2965445443176e5fd7220ddda6cc9141713f00b2122f11665c473e4f143d3\"},\"dob\":{\"date\":\"1960-11-04T17:44:34.616Z\",\"age\":63},\"registered\":{\"date\":\"2020-02-22T02:31:29.476Z\",\"age\":3},\"phone\":\"(205) 437-2831\",\"cell\":\"(966) 945-2262\",\"id\":{\"name\":\"SSN\",\"value\":\"819-32-8736\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/70.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/70.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/70.jpg\"},\"nat\":\"US\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(66, 2, 'Lena Wilson', 'Preston Rd', 'lena.wilson@example.com', 14, 18, 'D', '{\"gender\":\"female\",\"name\":{\"title\":\"Ms\",\"first\":\"Lena\",\"last\":\"Wilson\"},\"location\":{\"street\":{\"number\":8257,\"name\":\"Preston Rd\"},\"city\":\"Fort Worth\",\"state\":\"Indiana\",\"country\":\"United States\",\"postcode\":41037,\"coordinates\":{\"latitude\":\"-18.0198\",\"longitude\":\"-27.0694\"},\"timezone\":{\"offset\":\"-10:00\",\"description\":\"Hawaii\"}},\"email\":\"lena.wilson@example.com\",\"login\":{\"uuid\":\"e688f184-342a-45f5-a095-aae936479849\",\"username\":\"goldengorilla494\",\"password\":\"cubs\",\"salt\":\"a4Z31wZe\",\"md5\":\"a3f8983f08db83c2c7052e3bbc3e3995\",\"sha1\":\"1675b0384b522fe510fd9847ba02a17585844f57\",\"sha256\":\"8faf4efba235a76266d6bdf7db1caaad97c74dfb47ab6af851f22436179aaf23\"},\"dob\":{\"date\":\"2000-10-27T22:13:47.487Z\",\"age\":23},\"registered\":{\"date\":\"2019-03-17T22:26:42.023Z\",\"age\":4},\"phone\":\"(471) 696-9838\",\"cell\":\"(320) 272-1345\",\"id\":{\"name\":\"SSN\",\"value\":\"616-22-0315\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/33.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/33.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/33.jpg\"},\"nat\":\"US\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(67, 2, 'Gül Aybar', 'Vatan Cd', 'gul.aybar@example.com', 15, 17, 'D', '{\"gender\":\"female\",\"name\":{\"title\":\"Miss\",\"first\":\"G\\u00fcl\",\"last\":\"Aybar\"},\"location\":{\"street\":{\"number\":9374,\"name\":\"Vatan Cd\"},\"city\":\"Gaziantep\",\"state\":\"Burdur\",\"country\":\"Turkey\",\"postcode\":14975,\"coordinates\":{\"latitude\":\"-73.0219\",\"longitude\":\"-80.3300\"},\"timezone\":{\"offset\":\"+11:00\",\"description\":\"Magadan, Solomon Islands, New Caledonia\"}},\"email\":\"gul.aybar@example.com\",\"login\":{\"uuid\":\"f4f2f1e2-b3d4-465b-8863-6c7bbc705525\",\"username\":\"orangeswan530\",\"password\":\"kuai\",\"salt\":\"b35qd9VX\",\"md5\":\"998710516390f0242a4ba96f395fb01c\",\"sha1\":\"7c22b3de911af729df32575d574f92c72b8f48b8\",\"sha256\":\"6e95014449be961f8cc6cf28d134513d497328390081e0d4025fe1455021b783\"},\"dob\":{\"date\":\"1964-03-01T11:05:12.991Z\",\"age\":59},\"registered\":{\"date\":\"2021-05-20T21:49:47.753Z\",\"age\":2},\"phone\":\"(414)-448-2348\",\"cell\":\"(673)-533-7265\",\"id\":{\"name\":\"\",\"value\":null},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/1.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/1.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/1.jpg\"},\"nat\":\"TR\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(68, 1, 'Rowen De Witt', 'Kwir', 'rowen.dewitt@example.com', 11, 21, 'C', '{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Rowen\",\"last\":\"De Witt\"},\"location\":{\"street\":{\"number\":9543,\"name\":\"Kwir\"},\"city\":\"Tinte\",\"state\":\"Noord-Holland\",\"country\":\"Netherlands\",\"postcode\":\"5143 ST\",\"coordinates\":{\"latitude\":\"72.1271\",\"longitude\":\"-54.0407\"},\"timezone\":{\"offset\":\"+11:00\",\"description\":\"Magadan, Solomon Islands, New Caledonia\"}},\"email\":\"rowen.dewitt@example.com\",\"login\":{\"uuid\":\"99d0377f-916f-41fc-b0ec-f737fac9a84f\",\"username\":\"organicwolf516\",\"password\":\"pistons\",\"salt\":\"DIWE97Mq\",\"md5\":\"c2a399ec6cc3ec44eb549ddb6c725b80\",\"sha1\":\"c506253d9c3434e8449ae3fe8d8527bfc8b0c2db\",\"sha256\":\"11588f785a00a746fd0092ff23fc7f20719485baed80dc9c2f034b5eb979aa38\"},\"dob\":{\"date\":\"1959-03-26T04:34:59.062Z\",\"age\":64},\"registered\":{\"date\":\"2012-02-14T18:48:15.421Z\",\"age\":12},\"phone\":\"(0712) 997921\",\"cell\":\"(06) 31218592\",\"id\":{\"name\":\"BSN\",\"value\":\"52736122\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/95.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/95.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/95.jpg\"},\"nat\":\"NL\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(69, 1, 'Juho Raisanen', 'Nordenskiöldinkatu', 'juho.raisanen@example.com', 17, 15, 'A', '{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Juho\",\"last\":\"Raisanen\"},\"location\":{\"street\":{\"number\":2276,\"name\":\"Nordenski\\u00f6ldinkatu\"},\"city\":\"Hankasalmi\",\"state\":\"Southern Ostrobothnia\",\"country\":\"Finland\",\"postcode\":75698,\"coordinates\":{\"latitude\":\"-2.6865\",\"longitude\":\"-47.9564\"},\"timezone\":{\"offset\":\"-12:00\",\"description\":\"Eniwetok, Kwajalein\"}},\"email\":\"juho.raisanen@example.com\",\"login\":{\"uuid\":\"6aa95f01-8b91-490f-9889-cbc981150b16\",\"username\":\"sadlion663\",\"password\":\"french\",\"salt\":\"EiiGTqAQ\",\"md5\":\"da4dabdbc53e44e634283675f5031d67\",\"sha1\":\"be70071863a0a748aacd844f759dd6998985d9c8\",\"sha256\":\"96b9b2c15093b1db52a7ebf20ae5896c22fdbea3b9e7d3b3df71f884bcb8a132\"},\"dob\":{\"date\":\"1994-03-23T20:04:30.113Z\",\"age\":29},\"registered\":{\"date\":\"2016-11-04T05:09:21.046Z\",\"age\":7},\"phone\":\"03-526-671\",\"cell\":\"044-354-85-03\",\"id\":{\"name\":\"HETU\",\"value\":\"NaNNA955undefined\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/31.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/31.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/31.jpg\"},\"nat\":\"FI\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(70, 1, 'Esat Pekkan', 'Bağdat Cd', 'esat.pekkan@example.com', 12, 20, 'B', '{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Esat\",\"last\":\"Pekkan\"},\"location\":{\"street\":{\"number\":5414,\"name\":\"Ba\\u011fdat Cd\"},\"city\":\"Bitlis\",\"state\":\"Adana\",\"country\":\"Turkey\",\"postcode\":66899,\"coordinates\":{\"latitude\":\"-42.1499\",\"longitude\":\"-9.9550\"},\"timezone\":{\"offset\":\"-6:00\",\"description\":\"Central Time (US & Canada), Mexico City\"}},\"email\":\"esat.pekkan@example.com\",\"login\":{\"uuid\":\"8a9eb759-3448-4441-98e0-aac91f13a2d5\",\"username\":\"goldenpeacock707\",\"password\":\"classics\",\"salt\":\"Xq2tpcwy\",\"md5\":\"43140dc32314576acdb8b83a86eaf087\",\"sha1\":\"a86f5b6dfed78779788a019c3b845ce89091cbc1\",\"sha256\":\"a32fb65e2fdd80a141b5f6461241f9d95372d669d347e20f33e9d5456dde4650\"},\"dob\":{\"date\":\"1951-02-06T01:37:18.498Z\",\"age\":73},\"registered\":{\"date\":\"2022-05-08T06:29:42.073Z\",\"age\":1},\"phone\":\"(646)-892-0901\",\"cell\":\"(720)-884-6509\",\"id\":{\"name\":\"\",\"value\":null},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/40.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/40.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/40.jpg\"},\"nat\":\"TR\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(71, 1, 'Nino Gonçalves', 'Rua Castro Alves ', 'nino.goncalves@example.com', 15, 17, 'C', '{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Nino\",\"last\":\"Gon\\u00e7alves\"},\"location\":{\"street\":{\"number\":7610,\"name\":\"Rua Castro Alves \"},\"city\":\"Rio de Janeiro\",\"state\":\"Mato Grosso\",\"country\":\"Brazil\",\"postcode\":25732,\"coordinates\":{\"latitude\":\"7.7354\",\"longitude\":\"-175.3162\"},\"timezone\":{\"offset\":\"+11:00\",\"description\":\"Magadan, Solomon Islands, New Caledonia\"}},\"email\":\"nino.goncalves@example.com\",\"login\":{\"uuid\":\"43c49321-c348-4595-823b-ebb95d54f26e\",\"username\":\"heavylion410\",\"password\":\"philips\",\"salt\":\"fLy9xPkq\",\"md5\":\"966be6defa0d5f6798c9899039a96c47\",\"sha1\":\"1748857fb64792c6817a00203626b11aa32d4773\",\"sha256\":\"33f97f0b4747aab323d99d9fb8c69dd2c2d02c20a915aa3827df454d26c5550b\"},\"dob\":{\"date\":\"1965-07-11T06:35:18.585Z\",\"age\":58},\"registered\":{\"date\":\"2021-05-28T05:59:23.944Z\",\"age\":2},\"phone\":\"(65) 0482-5440\",\"cell\":\"(59) 5784-7478\",\"id\":{\"name\":\"CPF\",\"value\":\"076.544.571-76\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/26.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/26.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/26.jpg\"},\"nat\":\"BR\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(72, 2, 'Sham Mykland', 'Bomveien', 'sham.mykland@example.com', 15, 17, 'D', '{\"gender\":\"female\",\"name\":{\"title\":\"Ms\",\"first\":\"Sham\",\"last\":\"Mykland\"},\"location\":{\"street\":{\"number\":502,\"name\":\"Bomveien\"},\"city\":\"Sysle\",\"state\":\"Telemark\",\"country\":\"Norway\",\"postcode\":\"0450\",\"coordinates\":{\"latitude\":\"81.2978\",\"longitude\":\"24.3454\"},\"timezone\":{\"offset\":\"-3:00\",\"description\":\"Brazil, Buenos Aires, Georgetown\"}},\"email\":\"sham.mykland@example.com\",\"login\":{\"uuid\":\"99cbdc8e-ccac-4c96-929a-17da93d22db7\",\"username\":\"bigswan291\",\"password\":\"generic\",\"salt\":\"JuJ5ZYZ6\",\"md5\":\"49352502ebc545df26a83089a9eb5988\",\"sha1\":\"d2b2b562eaded80e296ad62c91edbb92915308c4\",\"sha256\":\"5a5d09d8f2ef2ef05823f208a887c5d7dc24b91526e5679f94bc3a5cf1078816\"},\"dob\":{\"date\":\"1959-11-28T15:34:27.812Z\",\"age\":64},\"registered\":{\"date\":\"2009-02-23T12:01:41.868Z\",\"age\":14},\"phone\":\"85072823\",\"cell\":\"46028669\",\"id\":{\"name\":\"FN\",\"value\":\"28115922604\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/89.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/89.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/89.jpg\"},\"nat\":\"NO\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(73, 2, 'Sofia Poulsen', 'Skovtoften', 'sofia.poulsen@example.com', 13, 19, 'C', '{\"gender\":\"female\",\"name\":{\"title\":\"Miss\",\"first\":\"Sofia\",\"last\":\"Poulsen\"},\"location\":{\"street\":{\"number\":7281,\"name\":\"Skovtoften\"},\"city\":\"Stokkemarke\",\"state\":\"Nordjylland\",\"country\":\"Denmark\",\"postcode\":85778,\"coordinates\":{\"latitude\":\"-27.9094\",\"longitude\":\"23.4811\"},\"timezone\":{\"offset\":\"-7:00\",\"description\":\"Mountain Time (US & Canada)\"}},\"email\":\"sofia.poulsen@example.com\",\"login\":{\"uuid\":\"053a0d4c-006f-440b-aaa0-202a56dd5985\",\"username\":\"lazytiger774\",\"password\":\"joshua1\",\"salt\":\"GJQgBONK\",\"md5\":\"45b2ce2845ff4f1152b34454d18e204f\",\"sha1\":\"4ea3d3207a1250bbe95468b0ab5fcc03a9e5c1db\",\"sha256\":\"c1bd149bc26630c0d5a83043f5f3a945bba2468ad57410d6a6c9d74891d9547d\"},\"dob\":{\"date\":\"1999-01-18T17:43:49.126Z\",\"age\":25},\"registered\":{\"date\":\"2014-12-04T21:46:19.525Z\",\"age\":9},\"phone\":\"50695626\",\"cell\":\"57516365\",\"id\":{\"name\":\"CPR\",\"value\":\"180199-0357\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/67.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/67.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/67.jpg\"},\"nat\":\"DK\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(74, 2, 'Sanni Seppanen', 'Mechelininkatu', 'sanni.seppanen@example.com', 14, 18, 'B', '{\"gender\":\"female\",\"name\":{\"title\":\"Miss\",\"first\":\"Sanni\",\"last\":\"Seppanen\"},\"location\":{\"street\":{\"number\":2557,\"name\":\"Mechelininkatu\"},\"city\":\"Utsjoki\",\"state\":\"Uusimaa\",\"country\":\"Finland\",\"postcode\":50637,\"coordinates\":{\"latitude\":\"-83.8383\",\"longitude\":\"-36.8294\"},\"timezone\":{\"offset\":\"+10:00\",\"description\":\"Eastern Australia, Guam, Vladivostok\"}},\"email\":\"sanni.seppanen@example.com\",\"login\":{\"uuid\":\"88d7c935-ff9c-4ca3-a705-542258555316\",\"username\":\"beautifulladybug345\",\"password\":\"tinman\",\"salt\":\"gfgf7rlB\",\"md5\":\"e4fd79e28e4565a086357e9130bc6167\",\"sha1\":\"a15841f8e599bebe52e42deb62c34067f533f45a\",\"sha256\":\"1bb74ec61765f612d655eeb8d88d28beae2b27c5f875989d051dff926a24abb6\"},\"dob\":{\"date\":\"1990-07-13T11:06:42.509Z\",\"age\":33},\"registered\":{\"date\":\"2009-10-14T18:53:13.029Z\",\"age\":14},\"phone\":\"09-038-273\",\"cell\":\"042-232-45-14\",\"id\":{\"name\":\"HETU\",\"value\":\"NaNNA992undefined\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/76.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/76.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/76.jpg\"},\"nat\":\"FI\"}', '2024-02-19 06:06:44', '2024-02-19 06:06:44'),
(75, 1, 'Erwan Mercier', 'Rue de Cuire', 'erwan.mercier@example.com', 11, 21, 'E', '{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Erwan\",\"last\":\"Mercier\"},\"location\":{\"street\":{\"number\":5860,\"name\":\"Rue de Cuire\"},\"city\":\"Besan\\u00e7on\",\"state\":\"Vosges\",\"country\":\"France\",\"postcode\":19033,\"coordinates\":{\"latitude\":\"-5.7905\",\"longitude\":\"-53.5060\"},\"timezone\":{\"offset\":\"+5:00\",\"description\":\"Ekaterinburg, Islamabad, Karachi, Tashkent\"}},\"email\":\"erwan.mercier@example.com\",\"login\":{\"uuid\":\"12092751-9f41-4ec4-b3aa-cab55b6906d6\",\"username\":\"ticklishfrog525\",\"password\":\"hongkong\",\"salt\":\"J2oPuAwU\",\"md5\":\"994e40fbe200e293c7f9d85d7895ddaf\",\"sha1\":\"576f1c06cc6e042f8b35358a7518d30e5564930a\",\"sha256\":\"87a50ebd2a8711d940c81bd979a3246d33104944adbfc3cfe666539ee0e0e796\"},\"dob\":{\"date\":\"1962-03-06T03:14:10.499Z\",\"age\":61},\"registered\":{\"date\":\"2004-11-09T15:14:27.809Z\",\"age\":19},\"phone\":\"02-66-16-59-28\",\"cell\":\"06-28-29-04-57\",\"id\":{\"name\":\"INSEE\",\"value\":\"1620282935433 03\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/74.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/74.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/74.jpg\"},\"nat\":\"FR\"}', '2024-02-19 06:06:45', '2024-02-19 06:06:45'),
(76, 1, 'Mar Ramos', 'Rua Principal', 'mar.ramos@example.com', 14, 18, 'E', '{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Mar\",\"last\":\"Ramos\"},\"location\":{\"street\":{\"number\":6312,\"name\":\"Rua Principal\"},\"city\":\"S\\u00e3o Gon\\u00e7alo\",\"state\":\"Rio Grande do Sul\",\"country\":\"Brazil\",\"postcode\":44811,\"coordinates\":{\"latitude\":\"-19.6745\",\"longitude\":\"178.7427\"},\"timezone\":{\"offset\":\"+3:00\",\"description\":\"Baghdad, Riyadh, Moscow, St. Petersburg\"}},\"email\":\"mar.ramos@example.com\",\"login\":{\"uuid\":\"5411744a-6045-424f-b6fe-828ede1f287d\",\"username\":\"bluebear957\",\"password\":\"tennis1\",\"salt\":\"jRxbQibE\",\"md5\":\"9b319d04f72413db59e4299caa42cb6b\",\"sha1\":\"8c421ef7283cd3236b975719a23d3db464f140ed\",\"sha256\":\"3aa510e4ae2945d0942d67cf7b5a677d6296d818c5a33d2caad70e10b98a717f\"},\"dob\":{\"date\":\"1962-05-30T07:31:01.049Z\",\"age\":61},\"registered\":{\"date\":\"2014-11-16T00:34:56.406Z\",\"age\":9},\"phone\":\"(45) 5278-4123\",\"cell\":\"(08) 5371-1909\",\"id\":{\"name\":\"CPF\",\"value\":\"631.031.606-48\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/63.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/63.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/63.jpg\"},\"nat\":\"BR\"}', '2024-02-19 06:06:45', '2024-02-19 06:06:45'),
(77, 2, 'Simona Dutka', 'Uzviz Gercena', 'simona.dutka@example.com', 14, 18, 'A', '{\"gender\":\"female\",\"name\":{\"title\":\"Miss\",\"first\":\"Simona\",\"last\":\"Dutka\"},\"location\":{\"street\":{\"number\":7874,\"name\":\"Uzviz Gercena\"},\"city\":\"Kramatorsk\",\"state\":\"Zaporizka\",\"country\":\"Ukraine\",\"postcode\":85721,\"coordinates\":{\"latitude\":\"18.7229\",\"longitude\":\"169.5929\"},\"timezone\":{\"offset\":\"-10:00\",\"description\":\"Hawaii\"}},\"email\":\"simona.dutka@example.com\",\"login\":{\"uuid\":\"36303579-6800-4935-8eb0-0955b4d52fa9\",\"username\":\"lazytiger742\",\"password\":\"better\",\"salt\":\"ma6R7dUo\",\"md5\":\"00076ea6f85426610d49051376e8ce96\",\"sha1\":\"6ba29f3463932f22bd84014cbebb424385965659\",\"sha256\":\"6d12007c0c69591fcf45389b536f67529e83c7114e78fdd34f88bdface18b4ec\"},\"dob\":{\"date\":\"1991-06-13T20:16:35.835Z\",\"age\":32},\"registered\":{\"date\":\"2005-02-03T17:44:54.220Z\",\"age\":19},\"phone\":\"(096) R72-7582\",\"cell\":\"(096) T58-5171\",\"id\":{\"name\":\"\",\"value\":null},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/11.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/11.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/11.jpg\"},\"nat\":\"UA\"}', '2024-02-19 06:06:45', '2024-02-19 06:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kelamin`
--
-- Creation: Feb 19, 2024 at 01:08 PM
-- Last update: Feb 19, 2024 at 12:55 PM
--

CREATE TABLE `jenis_kelamin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `jenis_kelamin`:
--

--
-- Dumping data for table `jenis_kelamin`
--

INSERT INTO `jenis_kelamin` (`id`, `kode`, `jenis_kelamin`, `created_at`, `updated_at`) VALUES
(1, '1', 'laki-laki', '2024-02-19 05:55:35', '2024-02-19 05:55:35'),
(2, '2', 'perempuan', '2024-02-19 05:55:35', '2024-02-19 05:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_barang`
--
-- Creation: Feb 19, 2024 at 02:19 PM
-- Last update: Feb 19, 2024 at 03:59 PM
--

CREATE TABLE `kategori_barang` (
  `kode` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `kategori_barang`:
--

--
-- Dumping data for table `kategori_barang`
--

INSERT INTO `kategori_barang` (`kode`, `nama`, `created_at`, `updated_at`) VALUES
('bds', 'Bedroom Set', '2024-02-19 08:11:15', '2024-02-19 08:11:15'),
('fms', 'Family Room set', '2024-02-19 08:11:15', '2024-02-19 08:11:15'),
('kts', 'Kitchen Set', '2024-02-19 08:11:15', '2024-02-19 08:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--
-- Creation: Feb 19, 2024 at 11:50 AM
-- Last update: Feb 19, 2024 at 02:18 PM
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `migrations`:
--

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_19_112706_create_hasil_responses_table', 1),
(6, '2024_02_19_112954_create_jenis_kelamin_table', 1),
(7, '2024_02_19_113052_create_tabel_profesi_table', 1),
(10, '2024_02_19_134256_create_kategori_barang_table', 2),
(11, '2024_02_19_134306_create_satuan_barang_table', 2),
(12, '2024_02_19_141403_create_barang_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--
-- Creation: Feb 19, 2024 at 11:50 AM
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `password_reset_tokens`:
--

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--
-- Creation: Feb 19, 2024 at 11:50 AM
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `personal_access_tokens`:
--

-- --------------------------------------------------------

--
-- Table structure for table `satuan_barang`
--
-- Creation: Feb 19, 2024 at 02:19 PM
-- Last update: Feb 19, 2024 at 03:59 PM
--

CREATE TABLE `satuan_barang` (
  `kode` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `satuan_barang`:
--

--
-- Dumping data for table `satuan_barang`
--

INSERT INTO `satuan_barang` (`kode`, `nama`, `created_at`, `updated_at`) VALUES
('kg', 'Kilogram', '2024-02-19 08:03:40', '2024-02-19 08:03:40'),
('lt', 'Liter', '2024-02-19 08:03:40', '2024-02-19 08:03:40'),
('m', 'Meter', '2024-02-19 08:03:40', '2024-02-19 08:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_profesi`
--
-- Creation: Feb 19, 2024 at 01:08 PM
-- Last update: Feb 19, 2024 at 12:55 PM
--

CREATE TABLE `tabel_profesi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama_profesi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `tabel_profesi`:
--

--
-- Dumping data for table `tabel_profesi`
--

INSERT INTO `tabel_profesi` (`id`, `kode`, `nama_profesi`, `created_at`, `updated_at`) VALUES
(1, 'A', 'Petani', '2024-02-19 05:55:35', '2024-02-19 05:55:35'),
(2, 'B', 'Teknisi', '2024-02-19 05:55:35', '2024-02-19 05:55:35'),
(3, 'C', 'Guru', '2024-02-19 05:55:35', '2024-02-19 05:55:35'),
(4, 'D', 'Nelayan', '2024-02-19 05:55:35', '2024-02-19 05:55:35'),
(5, 'E', 'Seniman', '2024-02-19 05:55:35', '2024-02-19 05:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Feb 19, 2024 at 11:50 AM
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `users`:
--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barang_kode_unique` (`kode`),
  ADD KEY `barang_id_user_insert_foreign` (`id_user_insert`),
  ADD KEY `barang_kd_kategori_foreign` (`kd_kategori`),
  ADD KEY `barang_kd_satuan_foreign` (`kd_satuan`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hasil_response`
--
ALTER TABLE `hasil_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jenis_kelamin_kode_unique` (`kode`);

--
-- Indexes for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `satuan_barang`
--
ALTER TABLE `satuan_barang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tabel_profesi`
--
ALTER TABLE `tabel_profesi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tabel_profesi_kode_unique` (`kode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hasil_response`
--
ALTER TABLE `hasil_response`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabel_profesi`
--
ALTER TABLE `tabel_profesi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_kd_kategori_foreign` FOREIGN KEY (`kd_kategori`) REFERENCES `kategori_barang` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_kd_satuan_foreign` FOREIGN KEY (`kd_satuan`) REFERENCES `satuan_barang` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
