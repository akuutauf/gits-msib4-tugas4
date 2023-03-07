-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 07 Mar 2023 pada 07.24
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
-- Database: `db_msib_mentees`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mentees`
--

CREATE TABLE `tb_mentees` (
  `id` int(10) NOT NULL,
  `full_name` varchar(128) NOT NULL,
  `university` varchar(128) NOT NULL,
  `mentor` varchar(128) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_mentees`
--

INSERT INTO `tb_mentees` (`id`, `full_name`, `university`, `mentor`, `created_at`, `updated_at`) VALUES
(1, 'Taufik Hidayat', 'Politeknik Negeri Banyuwangi', 'Ala Rai Abdiallah', '2023-02-28 10:19:05', '2023-02-28 10:19:05'),
(2, 'M. Zaini Ilham', 'STMIK Syaikh Zainuddin Nahdlatul Wathan', 'Muhammad Rizki Alif Pramanarasa', '2023-02-28 10:19:05', '2023-02-28 10:19:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mentors`
--

CREATE TABLE `tb_mentors` (
  `id_mentor` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `gender` enum('pria','wanita') NOT NULL,
  `division` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_mentors`
--

INSERT INTO `tb_mentors` (`id_mentor`, `full_name`, `nickname`, `gender`, `division`, `created_at`, `updated_at`) VALUES
(1, 'Ala Rai Abdiallah', 'Ala Rai', 'pria', 'Software Engineer', '2023-02-28 10:24:58', '2023-02-28 10:24:58'),
(2, 'Villian Fadhilah Areksa', 'Villian', 'pria', 'Backend Developper', '2023-02-28 10:24:58', '2023-02-28 10:31:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `university` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mentor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `university`, `mentor`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Taufik Hidayat', 'Politeknik Negeri Banyuwangi', 'Ala Rai Abdiallah', 'taufikhidayat09121@gmail.com', NULL, '', NULL, NULL, NULL),
(2, 'Siti Mutamimah', 'Universitas Amikom Purwokerto', 'Ala Rai Abdiallah', 'siti@gmail.com', NULL, '', NULL, NULL, NULL),
(3, 'Harry Mochty Agus Setiawan', 'Universitas Dian Nuswantoro ', 'Ala Rai Abdiallah', 'harry@gmail.com', NULL, '', NULL, NULL, NULL),
(4, 'Faniel Sianipar ', 'Universitas Lampung ', 'Ala Rai Abdiallah', 'faniel@gmail.com', NULL, '', NULL, NULL, NULL),
(5, 'Aqil Jawadal Furqon ', 'Institut Teknologi Telkom Purwokerto', 'Ala Rai Abdiallah', 'aqil@gmail.com', NULL, '', NULL, NULL, NULL),
(6, 'Mukhamad Imam Muslih ', 'Universitas Amikom Purwokerto ', 'Ala Rai Abdiallah', 'imam@gmail.com', NULL, '', NULL, NULL, NULL),
(7, 'Rizki Minta Maito ', 'Universitas Malikussaleh ', 'Ala Rai Abdiallah', 'rizky@gmail.com', NULL, '', NULL, NULL, NULL),
(8, 'Rahmat Hidayat', 'STMIK IKMI Cirebon ', 'Ala Rai Abdiallah', 'rahmat@gmail.com', NULL, '', NULL, NULL, NULL),
(9, 'Irfan Surya Ramadhan', 'Universitas Dian Nuswantoro ', 'Ala Rai Abdiallah', 'irfan@gmail.com', NULL, '', NULL, NULL, NULL),
(10, 'Ida Fitrotun Khasanah ', 'Universitas Sains Alqur an ', 'Ala Rai Abdiallah', 'ida@gmail.com', NULL, '', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `tb_mentees`
--
ALTER TABLE `tb_mentees`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_mentors`
--
ALTER TABLE `tb_mentors`
  ADD PRIMARY KEY (`id_mentor`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_mentees`
--
ALTER TABLE `tb_mentees`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_mentors`
--
ALTER TABLE `tb_mentors`
  MODIFY `id_mentor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
