-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 07:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(33, '2019_08_19_000000_create_failed_jobs_table', 1),
(34, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(35, '2023_06_11_061353_create_product_table', 1),
(36, '2023_06_11_062120_create_product_type_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(2550) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `image`, `product_type`, `created_at`, `updated_at`) VALUES
(1, 'IFB 6 kg 5 Star 2X Power Steam,Hard Water Wash Fully Automatic Front Load Washing Machine with In-built Heater White (DIVA AQUA VSS 6008)', 'With features that ensure a great wash every time, this IFB Front Load Washing Machine lets you relax while enjoying a fantastic washing session. IFB\'s Front Load Washing Machine keeps track of all your laundry needs, from Aqua Energie, a filtration procedure for hard water, to up to 2x Power Dual Steam for a sanitary wash and power cleaning. Additionally, other features like Active Color Protection, Auto Tub Clean, Laundry Add, and Time Saver improve your entire washing experience while saving water, power, detergent, and time. Moreover, IFB\'s sturdy crescent moon drum made of stainless steel offers a soft water cushion that shields clothing from damage.', 21990, 'http://127.0.0.1:8000/storage/images/dojaGXkZctTkPbo2DrsOkWJj29xRMnFyAAoJu978.webp', 'washing_machine', '2023-06-14 23:56:18', '2023-06-14 23:56:18'),
(2, 'REDMI 10 Power (Power Black, 128 GB) (8 GB RAM)', 'You can get a lot done every day using the REDMI 10 Power Smartphone and make your life easy. It is integrated with a powerful battery with a capacity of up to 6000 mAh, which lets you operate it for a long time without worrying about any interruptions. Also, this smartphone is built with a large screen of up to 17.04 cm (6.71), letting you have a good view of your documents, pictures, and much more. Furthermore, its internal storage of up to 128 GB is ideal for storing a large amount of data, including pictures, videos, apps, and more.', 12385, 'http://127.0.0.1:8000/storage/images/h8ZMKsH47xYStpVH2bFSWtEvLdWnte6Gb2TyPDbX.webp', 'mobile', '2023-06-14 23:59:51', '2023-06-14 23:59:51'),
(3, 'Redmi 10 Prime (Astral White, 64 GB) (4 GB RAM)', 'You can get a lot done every day using the REDMI 10 Power Smartphone and make your life easy. It is integrated with a powerful battery with a capacity of up to 6000 mAh, which lets you operate it for a long time without worrying about any interruptions. Also, this smartphone is built with a large screen of up to 17.04 cm (6.71), letting you have a good view of your documents, pictures, and much more. Furthermore, its internal storage of up to 128 GB is ideal for storing a large amount of data, including pictures, videos, apps, and more.', 12250, 'http://127.0.0.1:8000/storage/images/lR6QnuzrVB8fbOkJHNbrDcCho2IjCRJtcd2yI7gK.webp', 'mobile', '2023-06-15 00:01:01', '2023-06-15 00:01:01'),
(4, 'SONY Bravia 125.7 cm (50 inch) Ultra HD (4K) LED Smart Google TV (KD - 50X74K)', 'Experience a jitter-free and colour-enriched visual experience with the Sony TV which is designed to take your entertainment to an elevated level. This TV is driven by the X1 processor which helps in reducing the noise and boosts the visual quality. Furthermore, the impressive 4K X-Reality PRO of this TV amplifies the visuals and enables you to appreciate up to 4K picture clarity. Additionally, with Motionflow XR 100 sported in this TV, there is no stopping for your entertainment, and you can flawlessly enjoy stutter-free visuals no matter how graphically rich the content is.', 50999, 'http://127.0.0.1:8000/storage/images/bYLytDQDxrGiv6Y9J5yBwOKP6jVHNysRZnbGiMjB.webp', 'led TV', '2023-06-15 00:03:04', '2023-06-15 00:03:04'),
(5, 'SAMSUNG Crystal 4K Neo Series 108 cm (43 inch) Ultra HD (4K) LED Smart Tizen TV with Voice Search (UA43AUE65AKXXL)', 'Experience watching all your favourite content in 4K quality by bringing home the Samsung UHD (4K) Neo Smart TV. Powered by Crystal Technology, the television boasts some best-in-segment features such as One Billion True Colours for authentic representation of every colour, HDR10+ for crisp visuals even during dark scenes and a Bezel-less Design for an immersive viewing experience. The crystal 4k Neo comes with Dolby Digital Plus and Adaptive sound technology so that you can indulge in a theatrical sound experience. Keeping in line with modern entertainment needs, this TV features a built-in Voice assistant, Universal Guide, PC Mode, Samsung TV Plus, thus making your TV watching experience engaging. Moreover, the Auto Game Mode and Motion Xcelerator features bring out the gaming enthusiast in you as it helps in fast frame transition and low latency for an engrossing gaming experience.', 28990, 'http://127.0.0.1:8000/storage/images/HQ9qb4eQjKuFmCR0ytZa7VeXfioETO3XAIe53SQm.webp', 'led TV', '2023-06-15 00:04:13', '2023-06-15 00:04:13'),
(6, 'Men Solid Polo Neck Pure Cotton White T-Shirt', 'Experience watching all your favourite content in 4K quality by bringing home the Samsung UHD (4K) Neo Smart TV. Powered by Crystal Technology, the television boasts some best-in-segment features such as One Billion True Colours for authentic representation of every colour, HDR10+ for crisp visuals even during dark scenes and a Bezel-less Design for an immersive viewing experience. The crystal 4k Neo comes with Dolby Digital Plus and Adaptive sound technology so that you can indulge in a theatrical sound experience. Keeping in line with modern entertainment needs, this TV features a built-in Voice assistant, Universal Guide, PC Mode, Samsung TV Plus, thus making your TV watching experience engaging. Moreover, the Auto Game Mode and Motion Xcelerator features bring out the gaming enthusiast in you as it helps in fast frame transition and low latency for an engrossing gaming experience.', 449, 'http://127.0.0.1:8000/storage/images/I1mew8nwkFLan3bIXT9qJHweHTiwj6qT2tKQ3rys.webp', 't-shirt', '2023-06-15 00:06:11', '2023-06-15 00:06:11'),
(7, 'Men Striped Round Neck Cotton Blend Blue, Black T-Shirt', NULL, 269, 'http://127.0.0.1:8000/storage/images/toPsCXkmRAwwBFZpsQsWlOt6kEhcnSMLHwOHTQBX.webp', 't-shirt', '2023-06-15 00:09:25', '2023-06-15 00:09:25'),
(8, 'Voltas 1.5 Ton 3 Star Split Inverter AC - White (183V Vectra Pride(4503445), Copper Condenser)', NULL, 32999, 'http://127.0.0.1:8000/storage/images/TUtq1SR2FZLJqvXhuPYGyvT5EHkxiiTLTNh5EPp6.webp', 'ac', '2023-06-15 00:12:31', '2023-06-15 00:12:31'),
(9, 'Lenovo IdeaPad Gaming 3 Intel Core i5 11th Gen - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce GTX 1650) 82K101B6IN|82K101FTIN Gaming Laptop (39.62 cm, Shadow Black, 2.25 kg)', 'High-performance and portable, the Lenovo IdeaPad Gaming Laptop offers you the flexibility of use. It is suitable for on-the-go gaming because of its sleek and lightweight design, allowing you to bring your high-performance gaming system to your college, or on trips. Additionally, this laptop\'s 11th generation Intel processor provides optimal performance. The GTX 1650 GPU also offers increased power for demanding gaming and content streaming, thanks to its 3rd generation tensor cores, 2nd generation raytracing, and NVIDIA\'s DLSS, Reflex, Broadcast, and Studio technologies.', 49990, 'http://127.0.0.1:8000/storage/images/uJV7kJBbgusLYE2iz4aH9S1RMS1T0lj6A9HXS489.webp', 'laptop', '2023-06-15 00:16:05', '2023-06-15 00:16:05'),
(10, 'Lenovo IdeaPad Gaming 3 Ryzen 5 Hexa Core 5600H - (8 GB/1 TB HDD/256 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce GTX 1650/120 Hz) Ideapad Gaming3 15ACH6D1 Gaming Laptop (15.6 Inch, Shadow Black, 2.25 Kg)', 'High-performance and portable, the Lenovo IdeaPad Gaming Laptop offers you the flexibility of use. It is suitable for on-the-go gaming because of its sleek and lightweight design, allowing you to bring your high-performance gaming system to your college, or on trips. Additionally, this laptop\'s 11th generation Intel processor provides optimal performance. The GTX 1650 GPU also offers increased power for demanding gaming and content streaming, thanks to its 3rd generation tensor cores, 2nd generation raytracing, and NVIDIA\'s DLSS, Reflex, Broadcast, and Studio technologies.', 49990, 'http://127.0.0.1:8000/storage/images/CIcSfCATSr3Bu3GkQL6h6ZsfP2P4wuDbOjNt3NZd.webp', 'laptop', '2023-06-15 00:17:00', '2023-06-15 00:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `tid` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`tid`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `tid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
