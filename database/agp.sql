-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2022 at 07:00 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agp`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '20 Oktober – 30 November 2020', '2022-01-25 18:35:57', '2022-01-25 23:17:30', NULL),
(2, '3 Desember 2020 (Tentatif)', '2022-01-25 18:35:57', '2022-01-26 09:34:00', NULL),
(3, '5 Desember 2020 (Tentatif)', '2022-01-25 18:35:57', '2022-01-26 09:33:52', NULL),
(4, 'Coming Soon', '2022-01-25 18:35:57', '2022-01-26 09:33:32', NULL),
(5, '20 Oktober – 30 November 2020', '2022-01-25 18:35:57', '2022-01-25 23:06:19', NULL),
(6, '1 Desember 2020 – 20 Januari 2021', '2022-01-25 18:35:57', '2022-01-25 23:18:52', NULL),
(7, '25 Januari 2021 (Tentatif)', '2022-01-25 23:06:29', '2022-01-26 09:33:45', NULL),
(8, '27 Januari 2021 (Tentatif)', '2022-01-25 23:19:15', '2022-01-26 09:33:39', NULL),
(9, 'Coming Soon', '2022-01-25 23:34:48', '2022-01-26 09:33:06', NULL),
(10, 'Rp. 3.000.000,-', '2022-01-25 23:35:55', '2022-01-25 23:40:19', NULL),
(11, 'Rp. 4.000.000,-', '2022-01-25 23:36:05', '2022-01-25 23:40:13', NULL),
(12, 'Rp. 1.500.000,-', '2022-01-25 23:36:16', '2022-01-25 23:40:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `amenity_pmb`
--

CREATE TABLE `amenity_pmb` (
  `pmb_id` int(10) UNSIGNED NOT NULL,
  `amenity_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenity_pmb`
--

INSERT INTO `amenity_pmb` (`pmb_id`, `amenity_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(1, 4),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(1, 10),
(1, 11),
(1, 12),
(2, 10),
(2, 11),
(2, 12);

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`id`, `name`, `address`, `description`, `rating`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Teknologi Geologi', 'Program Diploma III', 'Prodi Teknik Geologi mempelajari ilmu tentang bumi dengan berbagai aspeknya, termasuk di dalamnya adalah batuan, bentuk atau struktur dan hubungan antar batuan serta proses kejadiannya. Ilmu-ilmu yang dipelajari di Teknik Geologi bertujuan untuk memberikan teman-teman pengetahuan agar mampu menjelaskan keadaan alam dan proses yang terjadi di permukaan bumi dan dari dalam bumi. Disamping itu, setelah mendapatkan kuliah di program studi ini, teman-teman diharapkan dapat memanfaatkan potensi sumberdaya alam yang ada, serta memberikan saran dalam bidang keteknikan, lingkungan dan bencana, yang berkaitan dengan kebumian.', 5, '2022-01-25 18:35:51', '2022-01-26 10:42:40', NULL),
(2, 'Teknologi Pertambangan Mineral', 'Program Diploma III', 'Program Studi Teknologi Pertambangan Mineral mempelajari berbagai macam hal yang berhubungan dengan proses penambangan terutama mineral berharga dan batubara. Untuk melakukan proses penambangan ada beberapa hal yang harus dipersiapkan seperti ilmu tentang mineral yang akan ditambang. Prodi Teknik Pertambangan Mineral akan membantu mahasiswanya untuk mengembangkan ilmu pertambangan dengan penyediaan fasilitas yang mendukung dan metode belajar yang bervariasi. Mahasiswa Teknologi Pertambangan Mineral memiliki kesempatan untuk mengaplikasikan ilmunya melalui Kerja Praktek dan atau Tugas Akhir.', 5, '2022-01-25 18:35:52', '2022-01-26 10:43:53', NULL),
(3, 'Manajemen Informatika (Geo-Informatika)', 'Program Diploma III', 'Manajemen Informatika adalah ilmu yang mempelajari teori-teori teknologi informasi serta penggunaannya agar membuat bisnis perusahaan menjadi lebih mudah. Manajemen Informatika mengkaji desain suatu sistem yang tepat dan sesuai dengan tujuan organisasi yang sifatnya mendukung kebutuhan dan proses bisnis. Sedangkan Geoinformatika adalah Ilmu pengetahuan terpadu berbasis spasial hasil kombinasi ilmu komputer,   teknologi informasi, RS-GIS, aplikasi database, dan sumberdaya manusia.  Geoinformatika berhubungan dengan Geokomputasi dan pengembangan penggunaan SIG atau Sistem Pendukung Keputusan berbasis spasial.', 5, '2022-01-25 18:35:52', '2022-01-26 10:58:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dolor ut assumenda commodi expedita non.', 'Perspiciatis sed voluptas officia nam vel. Veritatis vel ut aut at velit vel. Aspernatur eligendi nemo ratione voluptatum sit in.', '2022-01-25 18:35:57', '2022-01-25 18:35:57', NULL),
(2, 'Et eum saepe rerum aperiam sed est sed.', 'Officiis quia qui nulla fugiat. Amet quasi delectus voluptatum mollitia fugit incidunt. Commodi quidem est aut a commodi dolor amet. Sunt quos blanditiis quibusdam blanditiis.', '2022-01-25 18:35:57', '2022-01-25 18:35:57', NULL),
(3, 'Incidunt ut quidem molestiae quia accusamus.', 'Incidunt voluptatem nostrum autem minus quo ad ut voluptas. Quia eos voluptatem et sed. Dolorem mollitia est repellat qui exercitationem eum corrupti. Et minus expedita itaque illo non quaerat.', '2022-01-25 18:35:57', '2022-01-25 18:35:57', NULL),
(4, 'Accusantium qui eos sapiente at recusandae at maiores.', 'Tempora facere eligendi quod maxime explicabo doloremque. Velit nobis quisquam autem possimus iste. Molestiae deleniti neque quasi.', '2022-01-25 18:35:57', '2022-01-25 18:35:57', NULL),
(5, 'Sit sint quaerat aliquid dignissimos.', 'Hic molestias quis hic voluptas ullam. Tempore praesentium omnis ut repellat eum. Eligendi est nesciunt neque ea quisquam accusamus. Eveniet est et sint ut incidunt rerum.', '2022-01-25 18:35:57', '2022-01-25 18:35:57', NULL),
(6, 'Vel et excepturi labore.', 'Perspiciatis accusantium eum dicta architecto. Quod sit vero molestiae. Perferendis rem placeat reiciendis dignissimos omnis aut.', '2022-01-25 18:35:57', '2022-01-25 18:35:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Wisuda IX', '2022-01-25 18:35:52', '2022-01-25 22:25:20', NULL),
(2, 'Wisuda', '2022-01-25 22:20:53', '2022-01-25 22:26:22', '2022-01-25 22:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`id`, `name`, `description`, `twitter`, `facebook`, `linkedin`, `full_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ade Mubarok, M.Kom., MM.', 'Dosen Manajemen Informatika (MI)', '#', '#', '#', 'Pariatur ut dolores eius praesentium tenetur sed non. Sapiente sed aut qui. Suscipit qui repellat itaque voluptate.', '2022-01-25 18:35:47', '2022-01-25 20:13:09', NULL),
(2, 'Hubert Hirthe', 'Consequuntur odio aut', '#', '#', '#', 'Temporibus ipsam in eaque unde rerum perspiciatis. Alias eos quo ut facere et doloremque ipsa. Pariatur rem et ut autem voluptatem quisquam.', '2022-01-25 18:35:48', '2022-01-25 18:35:48', NULL),
(3, 'Cole Emmerich', 'Fugiat laborum et', '#', '#', '#', 'Nemo molestiae et officia accusantium velit nesciunt. Omnis architecto dolor consequatur rerum dolorem. Non quam sit voluptatibus enim eos eligendi. Hic fugiat veniam fugiat qui est est.', '2022-01-25 18:35:48', '2022-01-25 18:35:48', NULL),
(4, 'Jack Christiansen', 'Debitis iure vero', '#', '#', '#', 'Ea aut saepe doloremque perferendis. Ut optio facere aspernatur non et et. Eum ut placeat velit dolores dolorum in. Natus eligendi id non voluptatibus aut.', '2022-01-25 18:35:48', '2022-01-25 18:35:48', NULL),
(5, 'Alejandrin Littel', 'Qui molestiae natus', '#', '#', '#', 'Quos quis voluptatibus amet error sapiente quia dolor. Ut et totam reiciendis consequatur ut. Ad voluptas praesentium expedita aut et. Alias dolorum sapiente id ab. Hic aut qui nihil sunt fugit id aut ut.', '2022-01-25 18:35:48', '2022-01-25 18:35:48', NULL),
(6, 'Willow Trantow', 'Non autem dicta', '#', '#', '#', 'Voluptatum laboriosam omnis esse dolor omnis quas. Praesentium error deserunt id rerum.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Lecturer', 1, '112bf572-c8dd-4260-b3c2-5b450b63b08a', 'photo', '1', '1.jpg', 'image/jpeg', 'public', 'public', 44376, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 1, '2022-01-25 18:35:47', '2022-01-25 18:35:48'),
(2, 'App\\Lecturer', 2, 'ab4d1398-6e86-4e4b-89ed-317e6de405fb', 'photo', '2', '2.jpg', 'image/jpeg', 'public', 'public', 49380, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 2, '2022-01-25 18:35:48', '2022-01-25 18:35:48'),
(3, 'App\\Lecturer', 3, '056f9fa8-f04f-46b6-b6f0-5c7157cdd0ab', 'photo', '3', '3.jpg', 'image/jpeg', 'public', 'public', 14278, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 3, '2022-01-25 18:35:48', '2022-01-25 18:35:48'),
(4, 'App\\Lecturer', 4, '1924e26a-9a43-4156-bdfe-1ce5340e4902', 'photo', '4', '4.jpg', 'image/jpeg', 'public', 'public', 53251, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 4, '2022-01-25 18:35:48', '2022-01-25 18:35:48'),
(5, 'App\\Lecturer', 5, 'fde507b6-ba0f-4b26-a6d8-56c31b702397', 'photo', '5', '5.jpg', 'image/jpeg', 'public', 'public', 30301, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 5, '2022-01-25 18:35:48', '2022-01-25 18:35:49'),
(6, 'App\\Lecturer', 6, '89095400-093a-4786-8fbb-4b367928099e', 'photo', '6', '6.jpg', 'image/jpeg', 'public', 'public', 16133, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 6, '2022-01-25 18:35:49', '2022-01-25 18:35:49'),
(15, 'App\\Classroom', 1, '13969544-bfaf-492a-b60c-7137dbb5a3df', 'photo', '1', '1.jpg', 'image/jpeg', 'public', 'public', 176612, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 15, '2022-01-25 18:35:51', '2022-01-25 18:35:52'),
(16, 'App\\Classroom', 2, 'e34868e6-533c-4c53-8998-6cafaa39acbc', 'photo', '2', '2.jpg', 'image/jpeg', 'public', 'public', 207771, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 16, '2022-01-25 18:35:52', '2022-01-25 18:35:52'),
(17, 'App\\Classroom', 3, '1692946c-311a-45ba-9b2b-7386ec73a491', 'photo', '3', '3.jpg', 'image/jpeg', 'public', 'public', 164509, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 17, '2022-01-25 18:35:52', '2022-01-25 18:35:52'),
(26, 'App\\Sponsor', 1, '204b1fc5-6968-452a-97b1-7eea7467d71b', 'logo', '1', '1.png', 'image/png', 'public', 'public', 3994, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 26, '2022-01-25 18:35:55', '2022-01-25 18:35:55'),
(27, 'App\\Sponsor', 2, 'e62398b1-22d8-48cf-90b5-f3bd17f6331f', 'logo', '2', '2.png', 'image/png', 'public', 'public', 2749, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 27, '2022-01-25 18:35:55', '2022-01-25 18:35:55'),
(28, 'App\\Sponsor', 3, '24afc931-d210-42f2-8853-71c3bde8fb6d', 'logo', '3', '3.png', 'image/png', 'public', 'public', 3281, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 28, '2022-01-25 18:35:55', '2022-01-25 18:35:55'),
(29, 'App\\Sponsor', 4, 'cdfea8c5-566a-47a9-91ea-84b65194e917', 'logo', '4', '4.png', 'image/png', 'public', 'public', 2201, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 29, '2022-01-25 18:35:55', '2022-01-25 18:35:56'),
(30, 'App\\Sponsor', 5, 'd45c392e-266b-48ca-8794-728603a20aff', 'logo', '5', '5.png', 'image/png', 'public', 'public', 3748, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 30, '2022-01-25 18:35:56', '2022-01-25 18:35:56'),
(31, 'App\\Sponsor', 6, '0d36cae0-0e2e-4566-bcdf-f71eedbaacce', 'logo', '6', '6.png', 'image/png', 'public', 'public', 2150, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 31, '2022-01-25 18:35:56', '2022-01-25 18:35:56'),
(32, 'App\\Sponsor', 7, 'fceec4e4-c6bb-49f3-a5f9-7e0a00ce1866', 'logo', '7', '7.png', 'image/png', 'public', 'public', 2195, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 32, '2022-01-25 18:35:56', '2022-01-25 18:35:56'),
(33, 'App\\Sponsor', 8, '7519babf-4467-4223-a8d1-78f390b67ee8', 'logo', '8', '8.png', 'image/png', 'public', 'public', 1984, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 33, '2022-01-25 18:35:56', '2022-01-25 18:35:57'),
(34, 'App\\Speaker', 1, '4c8542e5-5f21-4083-8629-6fde32e83210', 'photo', '61f0b19321ff8_1', '61f0b19321ff8_1.jpg', 'image/jpeg', 'public', 'public', 44376, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 34, '2022-01-25 19:27:32', '2022-01-25 19:27:33'),
(35, 'App\\Speaker', 1, '596e5fc1-26d4-488f-9aa5-df255fc40618', 'photo', '61f0bb2f459f7_amuba', '61f0bb2f459f7_amuba.jpg', 'image/jpeg', 'public', 'public', 204684, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 35, '2022-01-25 20:08:33', '2022-01-25 20:08:34'),
(36, 'App\\Speaker', 1, '9a66b02f-fb65-4ed7-9ddd-710f730c6de5', 'photo', '61f0bbe677e60_amuba', '61f0bbe677e60_amuba.jpg', 'image/jpeg', 'public', 'public', 223794, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 36, '2022-01-25 20:11:36', '2022-01-25 20:11:36'),
(37, 'App\\Gallery', 2, 'd1da71ae-a6fc-41f4-940a-a0ada35ebc23', 'photos', '61f0da2406afc_1', '61f0da2406afc_1.jpg', 'image/jpeg', 'public', 'public', 212139, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 37, '2022-01-25 22:20:54', '2022-01-25 22:20:56'),
(38, 'App\\Gallery', 2, '72b7a281-c52d-4eae-a6f6-3868928fba00', 'photos', '61f0da249154b_2', '61f0da249154b_2.jpg', 'image/jpeg', 'public', 'public', 257459, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 38, '2022-01-25 22:20:56', '2022-01-25 22:20:57'),
(39, 'App\\Gallery', 2, '6806801e-f1f8-4681-9cba-826beb6743ad', 'photos', '61f0da2515934_3', '61f0da2515934_3.jpg', 'image/jpeg', 'public', 'public', 225435, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 39, '2022-01-25 22:20:57', '2022-01-25 22:20:58'),
(40, 'App\\Gallery', 2, 'a168c043-1f44-458a-a9fb-1f24f0a3d782', 'photos', '61f0da25912b1_4', '61f0da25912b1_4.jpg', 'image/jpeg', 'public', 'public', 431542, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 40, '2022-01-25 22:20:58', '2022-01-25 22:20:59'),
(41, 'App\\Gallery', 2, 'ddad24b4-0d34-478d-9b08-7cdcf44a09e9', 'photos', '61f0da2617901_5', '61f0da2617901_5.jpg', 'image/jpeg', 'public', 'public', 378239, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 41, '2022-01-25 22:20:59', '2022-01-25 22:21:00'),
(42, 'App\\Gallery', 2, 'fd0579c7-4242-489c-bc42-c928b6a20901', 'photos', '61f0da2698b2a_6', '61f0da2698b2a_6.jpg', 'image/jpeg', 'public', 'public', 287889, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 42, '2022-01-25 22:21:00', '2022-01-25 22:21:01'),
(43, 'App\\Gallery', 2, '81512400-9551-42e2-8f65-74635ad4d1ab', 'photos', '61f0da271c017_7', '61f0da271c017_7.jpg', 'image/jpeg', 'public', 'public', 365111, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 43, '2022-01-25 22:21:01', '2022-01-25 22:21:02'),
(44, 'App\\Gallery', 2, 'cb2982ca-8f0a-47b2-b1ea-f3509c32f564', 'photos', '61f0da27934d6_8', '61f0da27934d6_8.jpg', 'image/jpeg', 'public', 'public', 407763, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 44, '2022-01-25 22:21:02', '2022-01-25 22:21:03'),
(45, 'App\\Gallery', 2, '75d28db9-654f-4c4d-ae60-089c45bdeec7', 'photos', '61f0da281ad99_9', '61f0da281ad99_9.jpg', 'image/jpeg', 'public', 'public', 303724, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 45, '2022-01-25 22:21:03', '2022-01-25 22:21:04'),
(46, 'App\\Gallery', 2, '8ebb1117-f107-4a9b-b210-72ab4a189848', 'photos', '61f0da2884006_10', '61f0da2884006_10.jpg', 'image/jpeg', 'public', 'public', 365376, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 46, '2022-01-25 22:21:04', '2022-01-25 22:21:05'),
(47, 'App\\Gallery', 2, '6af7ec96-a45e-40a8-9a44-5c23b2b5ad88', 'photos', '61f0da28ef55b_11', '61f0da28ef55b_11.jpg', 'image/jpeg', 'public', 'public', 257234, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 47, '2022-01-25 22:21:05', '2022-01-25 22:21:06'),
(48, 'App\\Gallery', 2, '9ce4dbce-37bb-4b68-ab3c-49c2679d7f40', 'photos', '61f0da2960894_12', '61f0da2960894_12.jpg', 'image/jpeg', 'public', 'public', 305718, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 48, '2022-01-25 22:21:06', '2022-01-25 22:21:07'),
(49, 'App\\Gallery', 2, '32248048-3233-41e1-a2a3-557085c01df0', 'photos', '61f0da29ca619_13', '61f0da29ca619_13.jpg', 'image/jpeg', 'public', 'public', 245653, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 49, '2022-01-25 22:21:07', '2022-01-25 22:21:08'),
(50, 'App\\Gallery', 2, '9a854cd9-68e1-4815-a6d1-2ca67be3fbf3', 'photos', '61f0da2a3effb_14', '61f0da2a3effb_14.jpg', 'image/jpeg', 'public', 'public', 272445, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 50, '2022-01-25 22:21:08', '2022-01-25 22:21:09'),
(51, 'App\\Gallery', 2, 'dff486a1-3c77-4c5b-b794-901d4dfcf4f1', 'photos', '61f0da2aa9eb1_15', '61f0da2aa9eb1_15.jpg', 'image/jpeg', 'public', 'public', 260139, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 51, '2022-01-25 22:21:09', '2022-01-25 22:21:10'),
(52, 'App\\Gallery', 2, '233c1f48-fe5a-4973-9877-aeb898bed4ca', 'photos', '61f0da2b24c27_16', '61f0da2b24c27_16.jpg', 'image/jpeg', 'public', 'public', 303994, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 52, '2022-01-25 22:21:10', '2022-01-25 22:21:11'),
(53, 'App\\Gallery', 2, 'dd46611e-892a-4e8b-92fb-87c999d755b1', 'photos', '61f0da2b8f175_17', '61f0da2b8f175_17.jpg', 'image/jpeg', 'public', 'public', 292866, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 53, '2022-01-25 22:21:11', '2022-01-25 22:21:11'),
(54, 'App\\Gallery', 2, 'e07c5960-82f0-41b0-bba8-e3f508fddeed', 'photos', '61f0da2c0902a_18', '61f0da2c0902a_18.jpg', 'image/jpeg', 'public', 'public', 247288, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 54, '2022-01-25 22:21:11', '2022-01-25 22:21:12'),
(55, 'App\\Gallery', 2, '24e698f3-0c84-4eac-a4ab-4a6b1898d59b', 'photos', '61f0da2c73c79_19', '61f0da2c73c79_19.jpg', 'image/jpeg', 'public', 'public', 284268, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 55, '2022-01-25 22:21:12', '2022-01-25 22:21:13'),
(56, 'App\\Gallery', 2, '199e3cfe-3625-4359-b186-5216ab9aab05', 'photos', '61f0da2cdc62d_20', '61f0da2cdc62d_20.jpg', 'image/jpeg', 'public', 'public', 248859, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 56, '2022-01-25 22:21:13', '2022-01-25 22:21:14'),
(57, 'App\\Gallery', 2, '8caabe36-6471-4f7c-951d-24cd45abfe2d', 'photos', '61f0da2d517b8_21', '61f0da2d517b8_21.jpg', 'image/jpeg', 'public', 'public', 293876, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 57, '2022-01-25 22:21:14', '2022-01-25 22:21:15'),
(58, 'App\\Gallery', 2, '021c7846-3fd2-477b-ab54-c010ff96a275', 'photos', '61f0da2dbc8f6_22', '61f0da2dbc8f6_22.jpg', 'image/jpeg', 'public', 'public', 264561, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 58, '2022-01-25 22:21:15', '2022-01-25 22:21:16'),
(59, 'App\\Gallery', 2, '203e59e7-b2a8-4108-98b3-683fbfa9027b', 'photos', '61f0da2e32678_23', '61f0da2e32678_23.jpg', 'image/jpeg', 'public', 'public', 330715, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 59, '2022-01-25 22:21:16', '2022-01-25 22:21:17'),
(60, 'App\\Gallery', 2, '16265f40-98b7-4abd-8a48-94d1ef4b2bda', 'photos', '61f0da2e9b1e4_24', '61f0da2e9b1e4_24.jpg', 'image/jpeg', 'public', 'public', 320042, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 60, '2022-01-25 22:21:17', '2022-01-25 22:21:18'),
(61, 'App\\Gallery', 2, '93d3eada-40de-474c-86f4-ad620313b7c0', 'photos', '61f0da2f14807_25', '61f0da2f14807_25.jpg', 'image/jpeg', 'public', 'public', 291907, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 61, '2022-01-25 22:21:18', '2022-01-25 22:21:19'),
(62, 'App\\Gallery', 2, '2b12c330-ae8f-4001-9764-da23cc8f7373', 'photos', '61f0da2f7eb18_26', '61f0da2f7eb18_26.jpg', 'image/jpeg', 'public', 'public', 406402, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 62, '2022-01-25 22:21:19', '2022-01-25 22:21:20'),
(63, 'App\\Gallery', 2, '8b5e67d5-73d4-40d5-b2ac-c1013d34f3c2', 'photos', '61f0da2feb995_27', '61f0da2feb995_27.jpg', 'image/jpeg', 'public', 'public', 402835, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 63, '2022-01-25 22:21:20', '2022-01-25 22:21:21'),
(64, 'App\\Gallery', 2, 'caf0f0e0-b5ad-4efd-834f-01cd6132292e', 'photos', '61f0da3068555_28', '61f0da3068555_28.jpg', 'image/jpeg', 'public', 'public', 495948, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 64, '2022-01-25 22:21:21', '2022-01-25 22:21:22'),
(65, 'App\\Gallery', 2, '31d154e5-73fe-41f7-bdfa-80efe3ef00be', 'photos', '61f0da30d5bf6_29', '61f0da30d5bf6_29.jpg', 'image/jpeg', 'public', 'public', 339030, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 65, '2022-01-25 22:21:22', '2022-01-25 22:21:23'),
(66, 'App\\Gallery', 2, '1a86772c-1cd9-442e-9780-5b99e336747d', 'photos', '61f0da314ade7_30', '61f0da314ade7_30.jpg', 'image/jpeg', 'public', 'public', 266197, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 66, '2022-01-25 22:21:23', '2022-01-25 22:21:24'),
(67, 'App\\Gallery', 2, 'c37778c1-a0da-4d4c-a9a6-6946d4ca2db8', 'photos', '61f0da31baa45_31', '61f0da31baa45_31.jpg', 'image/jpeg', 'public', 'public', 340920, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 67, '2022-01-25 22:21:24', '2022-01-25 22:21:25'),
(68, 'App\\Gallery', 2, '9cb8fbcc-850b-4da3-9d27-c71b9cf2049a', 'photos', '61f0da322ed4a_32', '61f0da322ed4a_32.jpg', 'image/jpeg', 'public', 'public', 338849, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 68, '2022-01-25 22:21:25', '2022-01-25 22:21:26'),
(69, 'App\\Gallery', 2, '4b4e3e89-9e3b-4e37-b7b9-5ca8435f16d2', 'photos', '61f0da329b85a_33', '61f0da329b85a_33.jpg', 'image/jpeg', 'public', 'public', 308385, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 69, '2022-01-25 22:21:26', '2022-01-25 22:21:27'),
(70, 'App\\Gallery', 2, '420edf10-83a1-4619-a4ee-e7bd26699b4c', 'photos', '61f0da3311143_34', '61f0da3311143_34.jpg', 'image/jpeg', 'public', 'public', 409446, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 70, '2022-01-25 22:21:27', '2022-01-25 22:21:28'),
(71, 'App\\Gallery', 1, '342b0d5f-5fe5-49b9-911a-ff8f6a94f1bc', 'photos', '61f0db27794f7_1', '61f0db27794f7_1.jpg', 'image/jpeg', 'public', 'public', 212139, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 71, '2022-01-25 22:25:20', '2022-01-25 22:25:21'),
(72, 'App\\Gallery', 1, '2422e2cc-b402-4279-bb85-0ab1629a7312', 'photos', '61f0db280404e_2', '61f0db280404e_2.jpg', 'image/jpeg', 'public', 'public', 257459, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 72, '2022-01-25 22:25:21', '2022-01-25 22:25:22'),
(73, 'App\\Gallery', 1, '00915911-eb31-4020-87cc-5a40ebe91553', 'photos', '61f0db2885bf4_3', '61f0db2885bf4_3.jpg', 'image/jpeg', 'public', 'public', 225435, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 73, '2022-01-25 22:25:22', '2022-01-25 22:25:23'),
(74, 'App\\Gallery', 1, 'd71c6a50-2bc4-4077-a071-57e1376556c9', 'photos', '61f0db290cf04_4', '61f0db290cf04_4.jpg', 'image/jpeg', 'public', 'public', 431542, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 74, '2022-01-25 22:25:23', '2022-01-25 22:25:24'),
(75, 'App\\Gallery', 1, 'be7b953d-6989-4113-8642-12fe08f4be1b', 'photos', '61f0db298c335_5', '61f0db298c335_5.jpg', 'image/jpeg', 'public', 'public', 378239, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 75, '2022-01-25 22:25:24', '2022-01-25 22:25:25'),
(76, 'App\\Gallery', 1, 'f68fd7f5-75e3-4569-a486-269e03bbca95', 'photos', '61f0db2a14db0_6', '61f0db2a14db0_6.jpg', 'image/jpeg', 'public', 'public', 287889, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 76, '2022-01-25 22:25:25', '2022-01-25 22:25:25'),
(77, 'App\\Gallery', 1, '95c118b7-0e58-4d51-b702-be04ecef6aaa', 'photos', '61f0db2a95374_7', '61f0db2a95374_7.jpg', 'image/jpeg', 'public', 'public', 365111, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 77, '2022-01-25 22:25:26', '2022-01-25 22:25:26'),
(78, 'App\\Gallery', 1, 'f41e1921-0264-4130-9a0f-4229962920c3', 'photos', '61f0db2b193b0_8', '61f0db2b193b0_8.jpg', 'image/jpeg', 'public', 'public', 407763, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 78, '2022-01-25 22:25:26', '2022-01-25 22:25:27'),
(79, 'App\\Gallery', 1, '93e79bde-95b4-4880-b916-37037e608435', 'photos', '61f0db2b9698e_9', '61f0db2b9698e_9.jpg', 'image/jpeg', 'public', 'public', 303724, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 79, '2022-01-25 22:25:27', '2022-01-25 22:25:28'),
(80, 'App\\Gallery', 1, '5c510a59-5bd4-45d2-b34f-cab4476df7fc', 'photos', '61f0db2c175c8_10', '61f0db2c175c8_10.jpg', 'image/jpeg', 'public', 'public', 365376, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 80, '2022-01-25 22:25:28', '2022-01-25 22:25:29'),
(81, 'App\\Gallery', 1, '625f86b9-47b4-457d-a12a-94c9e10ca206', 'photos', '61f0db2c8f0ba_11', '61f0db2c8f0ba_11.jpg', 'image/jpeg', 'public', 'public', 257234, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 81, '2022-01-25 22:25:29', '2022-01-25 22:25:30'),
(82, 'App\\Gallery', 1, '71052c18-1420-4f91-b914-a65ff4b4f661', 'photos', '61f0db2d07140_12', '61f0db2d07140_12.jpg', 'image/jpeg', 'public', 'public', 305718, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 82, '2022-01-25 22:25:30', '2022-01-25 22:25:31'),
(83, 'App\\Gallery', 1, '150b6031-82d9-4baf-9fe9-305f721a9c97', 'photos', '61f0db2d73159_13', '61f0db2d73159_13.jpg', 'image/jpeg', 'public', 'public', 245653, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 83, '2022-01-25 22:25:31', '2022-01-25 22:25:32'),
(84, 'App\\Gallery', 1, '6844302d-a950-48f3-8b63-6687a9776138', 'photos', '61f0db2ddbf84_14', '61f0db2ddbf84_14.jpg', 'image/jpeg', 'public', 'public', 272445, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 84, '2022-01-25 22:25:32', '2022-01-25 22:25:33'),
(85, 'App\\Gallery', 1, '086d9dbc-b2f2-43b6-9f2f-c7c3ab45f499', 'photos', '61f0db2e52dd4_15', '61f0db2e52dd4_15.jpg', 'image/jpeg', 'public', 'public', 260139, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 85, '2022-01-25 22:25:33', '2022-01-25 22:25:34'),
(86, 'App\\Gallery', 1, 'e4194e05-6e7d-45ed-8edc-c0f198efa44a', 'photos', '61f0db2ebdeb2_16', '61f0db2ebdeb2_16.jpg', 'image/jpeg', 'public', 'public', 303994, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 86, '2022-01-25 22:25:34', '2022-01-25 22:25:35'),
(87, 'App\\Gallery', 1, '60679402-8562-434c-91be-327bab8bba7e', 'photos', '61f0db2f33023_17', '61f0db2f33023_17.jpg', 'image/jpeg', 'public', 'public', 292866, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 87, '2022-01-25 22:25:35', '2022-01-25 22:25:36'),
(88, 'App\\Gallery', 1, '3c4bbf2e-1685-447d-8ade-4a0eea8a75aa', 'photos', '61f0db2f9a357_18', '61f0db2f9a357_18.jpg', 'image/jpeg', 'public', 'public', 247288, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 88, '2022-01-25 22:25:36', '2022-01-25 22:25:37'),
(89, 'App\\Gallery', 1, 'f66f11ee-a117-4296-8008-7c2ea231c3db', 'photos', '61f0db300fc61_19', '61f0db300fc61_19.jpg', 'image/jpeg', 'public', 'public', 284268, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 89, '2022-01-25 22:25:37', '2022-01-25 22:25:38'),
(90, 'App\\Gallery', 1, 'f10dc6ad-a485-43b9-8139-d1d5334ba3e4', 'photos', '61f0db307743e_20', '61f0db307743e_20.jpg', 'image/jpeg', 'public', 'public', 248859, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 90, '2022-01-25 22:25:38', '2022-01-25 22:25:39'),
(91, 'App\\Gallery', 1, 'e7e0848e-0021-4149-b8b1-2e77b8cce8a5', 'photos', '61f0db30ea7a7_21', '61f0db30ea7a7_21.jpg', 'image/jpeg', 'public', 'public', 293876, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 91, '2022-01-25 22:25:39', '2022-01-25 22:25:39'),
(92, 'App\\Gallery', 1, 'fe7825b5-c270-42ac-9ee1-54e97bc00072', 'photos', '61f0db316aeaa_22', '61f0db316aeaa_22.jpg', 'image/jpeg', 'public', 'public', 264561, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 92, '2022-01-25 22:25:39', '2022-01-25 22:25:40'),
(93, 'App\\Gallery', 1, '0df93c62-ee10-4015-9b5d-c0361ca85801', 'photos', '61f0db31d183f_23', '61f0db31d183f_23.jpg', 'image/jpeg', 'public', 'public', 330715, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 93, '2022-01-25 22:25:40', '2022-01-25 22:25:41'),
(94, 'App\\Gallery', 1, '65c9d6b9-f3b5-4c1c-985d-e736b063d5f3', 'photos', '61f0db324c84d_24', '61f0db324c84d_24.jpg', 'image/jpeg', 'public', 'public', 320042, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 94, '2022-01-25 22:25:41', '2022-01-25 22:25:42'),
(95, 'App\\Gallery', 1, 'd8389087-808d-4552-b6b5-9a8ec15b7aff', 'photos', '61f0db32ba8a2_25', '61f0db32ba8a2_25.jpg', 'image/jpeg', 'public', 'public', 291907, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 95, '2022-01-25 22:25:42', '2022-01-25 22:25:43'),
(96, 'App\\Gallery', 1, '86e137b3-a714-4f9f-96eb-d76ee39e9956', 'photos', '61f0db3337923_26', '61f0db3337923_26.jpg', 'image/jpeg', 'public', 'public', 406402, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 96, '2022-01-25 22:25:43', '2022-01-25 22:25:44'),
(97, 'App\\Gallery', 1, 'f3e94e85-b776-4975-96cc-19f5024372ec', 'photos', '61f0db33a62b3_27', '61f0db33a62b3_27.jpg', 'image/jpeg', 'public', 'public', 402835, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 97, '2022-01-25 22:25:44', '2022-01-25 22:25:45'),
(98, 'App\\Gallery', 1, 'd3c11586-5155-42bc-a5a5-b35ca19a1b71', 'photos', '61f0db341f5d8_28', '61f0db341f5d8_28.jpg', 'image/jpeg', 'public', 'public', 495948, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 98, '2022-01-25 22:25:45', '2022-01-25 22:25:46'),
(99, 'App\\Gallery', 1, 'd010bb53-0a4e-427c-ae16-2ece88b03200', 'photos', '61f0db348cdfe_29', '61f0db348cdfe_29.jpg', 'image/jpeg', 'public', 'public', 339030, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 99, '2022-01-25 22:25:46', '2022-01-25 22:25:47'),
(100, 'App\\Gallery', 1, '01d51276-6bb6-4428-99c3-d5e0f432de94', 'photos', '61f0db3503735_30', '61f0db3503735_30.jpg', 'image/jpeg', 'public', 'public', 266197, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 100, '2022-01-25 22:25:47', '2022-01-25 22:25:48'),
(101, 'App\\Gallery', 1, '9e2145dd-c4a2-4897-8434-99a9e50e60f4', 'photos', '61f0db356f0df_31', '61f0db356f0df_31.jpg', 'image/jpeg', 'public', 'public', 340920, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 101, '2022-01-25 22:25:48', '2022-01-25 22:25:49'),
(102, 'App\\Gallery', 1, 'db2ba266-8a61-4b7a-976a-dcdb2f460fcd', 'photos', '61f0db35d8255_32', '61f0db35d8255_32.jpg', 'image/jpeg', 'public', 'public', 338849, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 102, '2022-01-25 22:25:49', '2022-01-25 22:25:50'),
(103, 'App\\Gallery', 1, 'db12e9d3-eb93-4bc8-9749-b198f095427c', 'photos', '61f0db3652b61_33', '61f0db3652b61_33.jpg', 'image/jpeg', 'public', 'public', 308385, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 103, '2022-01-25 22:25:50', '2022-01-25 22:25:51'),
(104, 'App\\Gallery', 1, '7c72a103-42e2-4040-98e2-20cd185df863', 'photos', '61f0db36bc4db_34', '61f0db36bc4db_34.jpg', 'image/jpeg', 'public', 'public', 409446, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 104, '2022-01-25 22:25:51', '2022-01-25 22:25:51'),
(105, 'App\\Hotel', 1, 'd746c083-32e7-42e8-892d-236032ba0ffb', 'photo', '61f0dbae29df3_1', '61f0dbae29df3_1.jpg', 'image/jpeg', 'public', 'public', 263083, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 105, '2022-01-25 22:27:12', '2022-01-25 22:27:12'),
(106, 'App\\Hotel', 2, '86b0e933-5c26-46ba-9ff4-a8c27b8f30c5', 'photo', '61f0dd55e4970_2', '61f0dd55e4970_2.jpg', 'image/jpeg', 'public', 'public', 251580, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 106, '2022-01-25 22:34:15', '2022-01-25 22:34:16'),
(107, 'App\\Hotel', 3, 'd84bb013-e404-438e-9266-2790792e8d0f', 'photo', '61f0ddb4e582d_3', '61f0ddb4e582d_3.jpg', 'image/jpeg', 'public', 'public', 399996, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 107, '2022-01-25 22:35:50', '2022-01-25 22:35:51'),
(109, 'App\\Venue', 1, '7a9aae21-500b-4767-81d6-d667a9ac6be8', 'photos', '61f0df04edabb_2', '61f0df04edabb_2.jpg', 'image/jpeg', 'public', 'public', 160494, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 109, '2022-01-25 22:41:27', '2022-01-25 22:41:28'),
(110, 'App\\Venue', 1, 'b41e6caa-2b54-4c8c-b5ce-ef81252e6a3f', 'photos', '61f0df05222cf_3', '61f0df05222cf_3.jpg', 'image/jpeg', 'public', 'public', 117977, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 110, '2022-01-25 22:41:28', '2022-01-25 22:41:28'),
(111, 'App\\Venue', 1, '6f71f1d3-64ab-4c54-aab2-df4b951b845c', 'photos', '61f0df054e638_4', '61f0df054e638_4.jpg', 'image/jpeg', 'public', 'public', 109461, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 111, '2022-01-25 22:41:28', '2022-01-25 22:41:29'),
(112, 'App\\Venue', 1, 'bd36f7f9-4071-4344-a079-6351f603b4a2', 'photos', '61f0df0573a0d_5', '61f0df0573a0d_5.jpg', 'image/jpeg', 'public', 'public', 131036, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 112, '2022-01-25 22:41:29', '2022-01-25 22:41:29'),
(124, 'App\\Lecturer', 1, '2af58ac6-3309-427e-b7cd-786ee1f3a45c', 'photo', '61f10a9cd06ab_amuba', '61f10a9cd06ab_amuba.jpg', 'image/jpeg', 'public', 'public', 223794, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 113, '2022-01-26 01:47:26', '2022-01-26 01:47:26'),
(125, 'App\\Classroom', 3, '65bc8db4-daa7-4e72-9ee5-a084d0b12006', 'photo', '61f11376d835a_1', '61f11376d835a_1.jpg', 'image/jpeg', 'public', 'public', 263083, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 114, '2022-01-26 02:25:15', '2022-01-26 02:25:15'),
(126, 'App\\Classroom', 2, '79aea5f0-8b71-47da-bde3-a2b83575bda7', 'photo', '61f113b14c5a6_2', '61f113b14c5a6_2.jpg', 'image/jpeg', 'public', 'public', 251580, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 115, '2022-01-26 02:26:11', '2022-01-26 02:26:11'),
(127, 'App\\Classroom', 1, '532e1708-0d6b-4f8f-9c48-e47a655743ea', 'photo', '61f113c62c720_3', '61f113c62c720_3.jpg', 'image/jpeg', 'public', 'public', 399996, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 116, '2022-01-26 02:26:32', '2022-01-26 02:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_09_24_000000_create_media_table', 1),
(8, '2019_09_24_000001_create_permissions_table', 1),
(9, '2019_09_24_000002_create_faqs_table', 1),
(10, '2019_09_24_000003_create_prices_table', 1),
(11, '2019_09_24_000004_create_users_table', 1),
(12, '2019_09_24_000005_create_amenities_table', 1),
(13, '2019_09_24_000006_create_settings_table', 1),
(14, '2019_09_24_000007_create_speakers_table', 1),
(15, '2019_09_24_000008_create_schedules_table', 1),
(16, '2019_09_24_000009_create_roles_table', 1),
(17, '2019_09_24_000010_create_venues_table', 1),
(18, '2019_09_24_000011_create_hotels_table', 1),
(19, '2019_09_24_000012_create_galleries_table', 1),
(20, '2019_09_24_000013_create_sponsors_table', 1),
(21, '2019_09_24_000014_create_amenity_price_pivot_table', 1),
(22, '2019_09_24_000015_create_role_user_pivot_table', 1),
(23, '2019_09_24_000016_create_permission_role_pivot_table', 1),
(24, '2019_09_24_000017_add_relationship_fields_to_schedules_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(2, 'permission_create', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(3, 'permission_edit', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(4, 'permission_show', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(5, 'permission_delete', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(6, 'permission_access', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(7, 'role_create', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(8, 'role_edit', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(9, 'role_show', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(10, 'role_delete', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(11, 'role_access', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(12, 'user_create', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(13, 'user_edit', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(14, 'user_show', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(15, 'user_delete', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(16, 'user_access', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(17, 'setting_create', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(18, 'setting_edit', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(19, 'setting_show', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(20, 'setting_delete', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(21, 'setting_access', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(22, 'lecturer_create', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(23, 'lecturer_edit', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(24, 'lecturer_show', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(25, 'lecturer_delete', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(26, 'lecturer_access', '2019-09-24 12:16:02', '2022-01-26 01:28:23', NULL),
(27, 'schedule_create', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(28, 'schedule_edit', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(29, 'schedule_show', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(30, 'schedule_delete', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(31, 'schedule_access', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(32, 'venue_create', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(33, 'venue_edit', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(34, 'venue_show', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(35, 'venue_delete', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(36, 'venue_access', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(37, 'classroom_create', '2019-09-24 12:16:02', '2022-01-26 02:19:35', NULL),
(38, 'classroom_edit', '2019-09-24 12:16:02', '2022-01-26 02:19:23', NULL),
(39, 'classroom_show', '2019-09-24 12:16:02', '2022-01-26 02:19:13', NULL),
(40, 'classroom_delete', '2019-09-24 12:16:02', '2022-01-26 02:19:01', NULL),
(41, 'classroom_access', '2019-09-24 12:16:02', '2022-01-26 02:18:49', NULL),
(42, 'gallery_create', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(43, 'gallery_edit', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(44, 'gallery_show', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(45, 'gallery_delete', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(46, 'gallery_access', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(47, 'sponsor_create', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(48, 'sponsor_edit', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(49, 'sponsor_show', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(50, 'sponsor_delete', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(51, 'sponsor_access', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(52, 'faq_create', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(53, 'faq_edit', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(54, 'faq_show', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(55, 'faq_delete', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(56, 'faq_access', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(57, 'amenity_create', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(58, 'amenity_edit', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(59, 'amenity_show', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(60, 'amenity_delete', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(61, 'amenity_access', '2019-09-24 12:16:02', '2019-09-24 12:16:02', NULL),
(62, 'pmb_create', '2019-09-24 12:16:02', '2022-01-26 08:46:58', NULL),
(63, 'pmb_edit', '2019-09-24 12:16:02', '2022-01-26 08:46:50', NULL),
(64, 'pmb_show', '2019-09-24 12:16:02', '2022-01-26 08:46:43', NULL),
(65, 'pmb_delete', '2019-09-24 12:16:02', '2022-01-26 08:46:36', NULL),
(66, 'pmb_access', '2019-09-24 12:16:02', '2022-01-26 08:46:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(2, 58),
(2, 59),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 65),
(2, 66),
(3, 14),
(3, 19),
(3, 24),
(3, 29),
(3, 34),
(3, 39),
(3, 44),
(3, 49),
(3, 54),
(3, 59),
(3, 64);

-- --------------------------------------------------------

--
-- Table structure for table `pmbs`
--

CREATE TABLE `pmbs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pmbs`
--

INSERT INTO `pmbs` (`id`, `name`, `cost`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Gelombang I', '8500000.00', '2022-01-25 18:35:57', '2022-01-25 23:36:49', NULL),
(2, 'Gelombang II', '8500000.00', '2022-01-25 18:35:57', '2022-01-26 09:21:31', NULL),
(3, 'Premium Access', '350.00', '2022-01-25 18:35:57', '2022-01-25 23:17:03', '2022-01-25 23:17:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Developer', '2019-09-24 12:16:02', '2022-01-26 09:22:51', NULL),
(2, 'Admin', '2019-09-24 12:16:02', '2022-01-26 09:23:27', NULL),
(3, 'User', '2022-01-26 09:26:22', '2022-01-26 09:26:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `day_number` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lecturer_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `day_number`, `start_time`, `title`, `subtitle`, `created_at`, `updated_at`, `deleted_at`, `lecturer_id`) VALUES
(1, 1, '09:30:00', 'Registration', 'Fugit voluptas iusto maiores temporibus autem numquam magnam.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, NULL),
(2, 1, '10:00:00', 'Keynote', 'Facere provident incidunt quos voluptas.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 1),
(3, 1, '11:00:00', 'Et voluptatem iusto dicta nobis.', 'Maiores dignissimos neque qui cum accusantium ut sit sint inventore.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 2),
(4, 1, '12:00:00', 'Explicabo et rerum quis et ut ea.', 'Veniam accusantium laborum nihil eos eaque accusantium aspernatur.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 3),
(5, 1, '14:00:00', 'Qui non qui vel amet culpa sequi.', 'Nam ex distinctio voluptatem doloremque suscipit iusto.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 4),
(6, 1, '15:00:00', 'Quos ratione neque expedita asperiores.', 'Eligendi quo eveniet est nobis et ad temporibus odio quo.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 5),
(7, 1, '16:00:00', 'Quo qui praesentium nesciunt', 'Voluptatem et alias dolorum est aut sit enim neque veritatis.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 6),
(8, 2, '10:00:00', 'Libero corrupti explicabo itaque.', 'Facere provident incidunt quos voluptas.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 1),
(9, 2, '11:00:00', 'Et voluptatem iusto dicta nobis.', 'Maiores dignissimos neque qui cum accusantium ut sit sint inventore.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 2),
(10, 2, '12:00:00', 'Explicabo et rerum quis et ut ea.', 'Veniam accusantium laborum nihil eos eaque accusantium aspernatur.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 3),
(11, 2, '14:00:00', 'Qui non qui vel amet culpa sequi.', 'Nam ex distinctio voluptatem doloremque suscipit iusto.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 4),
(12, 2, '15:00:00', 'Quos ratione neque expedita asperiores.', 'Eligendi quo eveniet est nobis et ad temporibus odio quo.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 5),
(13, 2, '16:00:00', 'Quo qui praesentium nesciunt', 'Voluptatem et alias dolorum est aut sit enim neque veritatis.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 6),
(14, 3, '10:00:00', 'Et voluptatem iusto dicta nobis.', 'Maiores dignissimos neque qui cum accusantium ut sit sint inventore.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 2),
(15, 3, '11:00:00', 'Explicabo et rerum quis et ut ea.', 'Veniam accusantium laborum nihil eos eaque accusantium aspernatur.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 3),
(16, 3, '12:00:00', 'Libero corrupti explicabo itaque.', 'Facere provident incidunt quos voluptas.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 1),
(17, 3, '14:00:00', 'Qui non qui vel amet culpa sequi.', 'Nam ex distinctio voluptatem doloremque suscipit iusto.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 4),
(18, 3, '15:00:00', 'Quos ratione neque expedita asperiores.', 'Eligendi quo eveniet est nobis et ad temporibus odio quo.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 5),
(19, 3, '16:00:00', 'Quo qui praesentium nesciunt', 'Voluptatem et alias dolorum est aut sit enim neque veritatis.', '2022-01-25 18:35:49', '2022-01-25 18:35:49', NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'title', 'Polgeta<br><span>AGP</span>', '2022-01-25 18:35:47', '2022-01-25 20:01:46', NULL),
(2, 'subtitle', 'Politeknik Geologi dan Pertambangan AGP', '2022-01-25 18:35:47', '2022-01-25 20:02:21', NULL),
(3, 'youtube_link', 'https://www.youtube.com/watch?v=jDDaplaOz7Q', '2022-01-25 18:35:47', '2022-01-25 18:35:47', NULL),
(4, 'about_description', 'Politeknik Geologi dan Pertambangan “AGP” adalah nama resmi berdasarkan Keputusan Menteri Pendidikan Nasional Republik Indonesia Nomor 179/D/O/2007 dengan Jenjang Pendidikan Diploma III. Politeknik Geologi dan Pertambangan “AGP” lebih akrab disebut Poltek “AGP” adapun sebutan lainnya adalah PGP.AGP', '2022-01-25 18:35:47', '2022-01-25 20:05:24', NULL),
(5, 'about_where', 'Jl. Cisaranten Kulon No.40 Arcamanik, Bandung', '2022-01-25 18:35:47', '2022-01-25 20:05:50', NULL),
(6, 'about_when', 'Berdiri sejak tahun 2002 Politeknik Geologi dan Pertambangan “AGP” Bandung di bawah naungan Yayasan Winaya Karya Bhakti.', '2022-01-25 18:35:47', '2022-01-25 20:06:40', NULL),
(7, 'contact_address', 'Jl. Cisaranten Kulon No.40 Arcamanik, Bandung', '2022-01-25 18:35:47', '2022-01-25 22:05:49', NULL),
(8, 'contact_phone', '(022) 63730828', '2022-01-25 18:35:47', '2022-01-25 22:05:15', NULL),
(9, 'contact_email', 'pgp.agp@gmail.com', '2022-01-25 18:35:47', '2022-01-25 22:05:26', NULL),
(10, 'footer_description', 'Politeknik Geologi dan Pertambangan “AGP” adalah nama resmi berdasarkan Keputusan Menteri Pendidikan Nasional Republik Indonesia Nomor 179/D/O/2007 dengan Jenjang Pendidikan Diploma III. Politeknik Geologi dan Pertambangan “AGP” lebih akrab disebut Poltek “AGP” adapun sebutan lainnya adalah PGP.AGP', '2022-01-25 18:35:47', '2022-01-25 22:54:10', NULL),
(11, 'footer_address', 'Jl. Cisaranten Kulon No.40 <br> Arcamanik<br> Bandung', '2022-01-25 18:35:47', '2022-01-25 22:53:36', NULL),
(12, 'footer_twitter', '#', '2022-01-25 18:35:47', '2022-01-25 18:35:47', NULL),
(13, 'footer_facebook', 'https://www.facebook.com/pgp.agp/', '2022-01-25 18:35:47', '2022-01-25 22:55:16', NULL),
(14, 'footer_instagram', '#', '2022-01-25 18:35:47', '2022-01-25 18:35:47', NULL),
(15, 'footer_googleplus', '#', '2022-01-25 18:35:47', '2022-01-25 18:35:47', NULL),
(16, 'footer_linkedin', '#', '2022-01-25 18:35:47', '2022-01-25 18:35:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`id`, `name`, `link`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Strider', '#', '2022-01-25 18:35:55', '2022-01-25 18:35:55', NULL),
(2, 'Runtastic', '#', '2022-01-25 18:35:55', '2022-01-25 18:35:55', NULL),
(3, 'EditShare', '#', '2022-01-25 18:35:55', '2022-01-25 18:35:55', NULL),
(4, 'InFocus', '#', '2022-01-25 18:35:55', '2022-01-25 18:35:55', NULL),
(5, 'gategroup', '#', '2022-01-25 18:35:56', '2022-01-25 18:35:56', NULL),
(6, 'Cadent', '#', '2022-01-25 18:35:56', '2022-01-25 18:35:56', NULL),
(7, 'Ceph', '#', '2022-01-25 18:35:56', '2022-01-25 18:35:56', NULL),
(8, 'Alitalia', '#', '2022-01-25 18:35:56', '2022-01-25 18:35:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Developer', 'developer@agp.ac.id', NULL, '$2y$10$7Xn/8bPJ89ypj0cIxwoH9OOXnbK/.9xrLfFh2G4LUSRkw6j7Agn0K', NULL, '2019-09-24 12:16:02', '2022-01-26 09:27:03', NULL),
(2, 'Admin', 'admin@agp.ac.id', NULL, '$2y$10$urzIL7AQIaH1fofSiFjG5.nbaRTzumkKuKtjg8NUxCNFfmztUxNcG', NULL, '2022-01-26 09:27:28', '2022-01-26 09:27:28', NULL),
(3, 'User', 'user@agp.ac.id', NULL, '$2y$10$1oZ2wPadyMMwaOY/C5kquOky.uEEA97qkloqwaT1KoyJG2Ox9EqEK', NULL, '2022-01-26 09:27:45', '2022-01-26 09:27:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `address`, `latitude`, `longitude`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Seminar Event', 'Jl. Pahlawan No.83, Sukaluyu, Kec. Cibeunying Kaler, Kota Bandung, Jawa Barat 40123', '-6.894151592248243', '107.63440927125703', 'Iste nobis eum sapiente sunt enim dolores labore accusantium autem. Cumque beatae ipsam. Est quae sit qui voluptatem corporis velit. Qui maxime accusamus possimus. Consequatur sequi et ea suscipit enim nesciunt quia velit.', '2022-01-25 18:35:49', '2022-01-26 06:04:32', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenity_pmb`
--
ALTER TABLE `amenity_pmb`
  ADD KEY `pmb_id_fk_384063` (`pmb_id`) USING BTREE,
  ADD KEY `amenity_id_fk_384063` (`amenity_id`) USING BTREE;

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_383833` (`role_id`),
  ADD KEY `permission_id_fk_383833` (`permission_id`);

--
-- Indexes for table `pmbs`
--
ALTER TABLE `pmbs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_383842` (`user_id`),
  ADD KEY `role_id_fk_383842` (`role_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `speaker_fk_383954` (`lecturer_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `pmbs`
--
ALTER TABLE `pmbs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `amenity_pmb`
--
ALTER TABLE `amenity_pmb`
  ADD CONSTRAINT `amenity_id_fk_384063` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `price_id_fk_384063` FOREIGN KEY (`pmb_id`) REFERENCES `pmbs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_383833` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_383833` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_383842` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_383842` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `speaker_fk_383954` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
