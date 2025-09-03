-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2025 at 02:33 PM
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
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Headwear', '2025-08-27 15:08:46', '2025-08-27 15:08:46'),
(2, 'Tops', '2025-08-27 15:08:46', '2025-08-27 15:08:46'),
(3, 'Bottoms', '2025-08-27 15:08:46', '2025-08-27 15:08:46'),
(4, 'Footwear', '2025-08-27 15:08:46', '2025-08-27 15:08:46');

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
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(13, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2023_04_23_203544_create_sessions_table', 1),
(17, '2023_05_01_112737_create_categories_table', 1),
(18, '2023_05_01_125620_create_products_table', 1),
(19, '2023_05_03_185136_create_carts_table', 1),
(20, '2023_05_04_102600_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `tracking_id` varchar(255) DEFAULT NULL,
  `delivery_status` enum('pending','processing','packaging','shipped','on_the_way','delivered') DEFAULT NULL,
  `payment_status` enum('pending','paid','cancelled','refunded','cash_on_delivery','failed') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `product_title`, `product_id`, `price`, `quantity`, `image`, `tracking_id`, `delivery_status`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '1', 'austin', 'austinaeden@gmail.com', '0719892432', '989', 'Classic Cotton T-Shirt', '1', '1200', '1', 'images/tshirt1.jpg', 'TRK68af1fb93534', 'pending', 'cash_on_delivery', '2025-08-27 12:09:45', '2025-08-27 12:09:45');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `discount_price` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `material` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `fit` varchar(100) NOT NULL,
  `style` varchar(255) NOT NULL,
  `sleeve_length` varchar(100) DEFAULT NULL,
  `length` varchar(100) DEFAULT NULL,
  `pattern` varchar(255) DEFAULT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `category`, `quantity`, `price`, `discount_price`, `brand`, `size`, `material`, `color`, `gender`, `fit`, `style`, `sleeve_length`, `length`, `pattern`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Classic Cotton T-Shirt', 'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/jnighv6j24navz8l7xa5/M+NSW+TEE+ICON+FUTURA.png', 'Tops', '49', '1500', '1200', 'Nike', 'M', '100% Cotton', 'Black', 'Men', 'Regular Fit', 'Casual', 'Short', NULL, 'Plain', 'Soft cotton T-shirt perfect for daily wear. Machine washable.', '2025-08-27 15:06:33', '2025-08-27 12:09:34'),
(2, 'Slim Fit Jeans', 'https://images-na.ssl-images-amazon.com/images/I/81wm-O38AxL._UL500_.jpg', 'Bottoms', '30', '3500', '2800', 'Levi’s', '32', 'Denim', 'Blue', 'Men', 'Slim Fit', 'Casual', NULL, 'Full Length', 'Faded', 'Durable slim-fit jeans with stretchable fabric.', '2025-08-27 15:06:33', '2025-08-27 15:06:33'),
(3, 'Floral Summer Dress', 'https://stylecaster.com/wp-content/uploads/2019/05/zara-summer-2019-49.jpg', 'Tops', '20', '4500', '4000', 'Zara', 'M', 'Cotton Blend', 'Red', 'Women', 'Regular Fit', 'Casual', 'Sleeveless', 'Knee Length', 'Floral Print', 'Lightweight summer dress, breathable fabric.', '2025-08-27 15:06:33', '2025-08-27 15:06:33'),
(4, 'Leather Jacket', 'https://image.hm.com/assets/hm/e3/e1/e3e1b7ac995f35de06fc831ed7a1cac3fb07c137.jpg?imwidth=768', 'Tops', '15', '12000', '10000', 'H&M', 'L', 'Genuine Leather', 'Brown', 'Men', 'Regular Fit', 'Formal', 'Long', 'Waist Length', 'Plain', 'Premium leather jacket with zip closure and inner lining.', '2025-08-27 15:06:33', '2025-08-27 15:06:33'),
(5, 'Sports Hoodie', 'https://static.super-shop.com/1236330-adidas-originals-trefoil-hd-hoodie-black-white.jpg?t=fb', 'Tops', '25', '5000', '4200', 'Adidas', 'L', 'Polyester', 'Grey', 'Unisex', 'Loose Fit', 'Sportswear', 'Long', NULL, 'Plain', 'Comfortable hoodie with front pocket and adjustable hood.', '2025-08-27 15:06:33', '2025-08-27 15:06:33'),
(6, 'Office Shirt', 'https://assets.digitalcontent.marksandspencer.app/image/upload/w_550,h_715,q_auto,f_auto,e_sharpen/OD_03_T11_2465K_F4_X_EC_0', 'Tops', '40', '2500', '2000', 'Marks & Spencer', 'M', 'Cotton', 'White', 'Men', 'Slim Fit', 'Formal', 'Long', NULL, 'Plain', 'Formal shirt with buttoned cuffs. Ideal for office wear.', '2025-08-27 15:06:33', '2025-08-27 15:06:33'),
(7, 'Maxi Dress', 'https://cdn.mall.adeptmind.ai/https://www.forever21.com/on/demandware.static/-/Sites-f21-master-catalog/default/dw7dc67bb1/1_front_750/00493857-01.jpg_large.webp', 'Tops', '18', '6000', '5500', 'Forever 21', 'L', 'Chiffon', 'Blue', 'Women', 'Regular Fit', 'Casual', 'Sleeveless', 'Full Length', 'Printed', 'Elegant maxi dress with floral design, lightweight fabric.', '2025-08-27 15:06:33', '2025-08-27 15:06:33'),
(8, 'Track Pants', 'https://images-cdn.ubuy.co.in/6545c575e926db5e817de2cd-puma-men-39-s-mercedes-amg-petronas-t7.jpg', 'Bottoms', '35', '3000', '2500', 'Puma', 'M', 'Polyester', 'Black', 'Unisex', 'Regular Fit', 'Sportswear', NULL, 'Full Length', 'Plain', 'Comfortable track pants with elastic waistband.', '2025-08-27 15:06:33', '2025-08-27 15:06:33'),
(9, 'Wool Sweater', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiD3Jq82O1yeGl2J3HWrMGdCD79rZw0ue76g&s', 'Tops', '22', '4000', '3600', 'Uniqlo', 'M', 'Wool', 'Grey', 'Women', 'Regular Fit', 'Casual', 'Long', 'Waist Length', 'Plain', 'Warm wool sweater, ideal for cold weather.', '2025-08-27 15:06:33', '2025-08-27 15:06:33'),
(10, 'Kids Polo Shirt', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1Uog7Hut_zhwB86z5g9xeh35tLFWzhWjiJQ&s', 'Tops', '28', '1800', '1500', 'Gap Kids', 'S', 'Cotton', 'Yellow', 'Kids', 'Regular Fit', 'Casual', 'Short', NULL, 'Striped', 'Comfortable kids polo shirt with soft fabric.', '2025-08-27 15:06:33', '2025-08-27 15:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('KsSHH5MFjPzYEvUMvTvLNHHrRDEcThRLcsz351wO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGI0emFnUTJiOG1JZmU3V3RCbnFTRDJWQWFoczV1bTZxS0t5WmFtMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL2xvZ291dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756313664),
('TfDVyqBPxFVpRBoorwgCOmhNGG73Frm6ZWPuvjav', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFdTRFUwVHN3R0VhV0lMdXRXUWFRS0lRUkFCcHdsR0lseWRwV0hneCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756314877);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'austin', 'austinaeden@gmail.com', '0719892432', '989', '0', NULL, '$2y$10$bGKTQRM3sWq3p6rd9m8RVOtWC8UxMtKpDq2wsQSOzp9Ijl9DeNcmK', NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 12:00:15', '2025-08-27 12:00:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
