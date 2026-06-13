-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2026 pada 18.06
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `id_penulis` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `hari_tanggal` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `id_penulis`, `id_kategori`, `judul`, `isi`, `gambar`, `hari_tanggal`, `created_at`, `updated_at`) VALUES
(2, 3, 3, 'Memahami Arsitektur MVC pada Framework Laravel untuk Pemula', '<p>Laravel merupakan salah satu framework PHP paling populer di dunia saat ini. Salah satu alasan utama di balik popularitasnya adalah penerapan arsitektur MVC atau Model-View-Controller. Pendekatan ini memisahkan logika bisnis, tampilan antarmuka, dan pengelolaan data secara terstruktur, sehingga kode aplikasi menjadi lebih mudah dibaca dan dipelihara.</p>\r\n\r\n<p>Model bertanggung jawab penuh atas segala sesuatu yang berkaitan dengan data dan interaksi ke database. Di Laravel, hal ini dipermudah dengan adanya Eloquent ORM. Selanjutnya, View bertugas menangani tampilan visual yang akan dilihat oleh pengguna menggunakan Blade Template Engine. Terakhir, Controller bertindak sebagai jembatan yang mengatur aliran data antara Model dan View.</p>\r\n\r\n<p>Dengan memisahkan ketiga komponen ini, proses pengembangan aplikasi web skala besar dapat dilakukan secara lebih efisien dan rapi tanpa mencampuradukkan kode query database ke dalam tampilan HTML.</p>', '6a2ccb0cd22bf.jpeg', 'Sabtu, 13 Juni 2026 | 10:14', '2026-06-12 20:14:20', '2026-06-12 20:14:20'),
(3, 4, 4, 'Pentingnya Penggunaan Auto Layout dalam Desain UI Antarmuka Modern', '<p>Dalam dunia UI/UX design, membuat komponen yang responsif adalah sebuah keharusan. Salah satu fitur mendasar yang sangat membantu desainer dalam mewujudkan hal ini adalah Auto Layout. Fitur ini memungkinkan sebuah komponen atau tata letak desain untuk menyesuaikan ukurannya secara otomatis berdasarkan konten di dalamnya.</p>\r\n\r\n<p>Saat membuat tombol, menu navigasi, atau daftar kartu informasi, desainer tidak perlu lagi mengubah ukuran kotak secara manual ketika teksnya bertambah panjang. Jarak antar elemen (padding dan spacing) akan tetap konsisten sesuai dengan aturan yang telah ditentukan sebelumnya.</p>\r\n\r\n<p>Penerapan Auto Layout yang baik tidak hanya mempercepat proses kerja desainer, tetapi juga mempermudah tim developer atau programmer web dalam menerjemahkan desain tersebut ke dalam kode CSS atau framework front-end seperti Bootstrap.</p>', '6a2cd6bc5777a.jpeg', 'Sabtu, 13 Juni 2026 | 11:04', '2026-06-12 21:04:12', '2026-06-12 21:04:12'),
(4, 5, 5, 'Daya Tarik Eksplorasi Elemen Dunia Terbuka dalam Industri Game Modern', '<p>Genre game Open-World atau dunia terbuka terus mengalami perkembangan pesat dalam beberapa tahun terakhir. Kebebasan yang diberikan kepada pemain untuk menjelajahi peta yang luas tanpa batasan kaku menjadi daya tarik utama yang membuat genre ini sangat diminati oleh para gamer di berbagai platform.</p>\r\n\r\n<p>Keberhasilan sebuah game dunia terbuka tidak hanya diukur dari seberapa besar ukuran petanya, melainkan dari seberapa hidup dunia tersebut. Adanya siklus cuaca, interaksi karakter non-pemain (NPC) yang dinamis, rahasia tersembunyi, hingga misi sampingan yang naratif sangat menentukan tingkat kenyamanan dan keterikatan pemain di dalamnya.</p>\r\n\r\n<p>Melalui desain visual lingkungan yang memukau dan kebebasan menentukan jalur petualangan sendiri, game bergenre ini mampu memberikan pengalaman imersif yang mendalam bagi siapa saja yang memainkannya.</p>', '6a2cd7683a29b.jpeg', 'Sabtu, 13 Juni 2026 | 11:07', '2026-06-12 21:07:04', '2026-06-12 21:07:04'),
(5, 4, 6, 'Simulasi BGP dan Subnetting IP Menggunakan Cisco Packet Tracer', '<p>Dalam mempelajari ilmu jaringan komputer, pemahaman teoritis saja tidak cukup. Dibutuhkan praktik langsung untuk memahami bagaimana aliran data bergerak antar router. Salah satu alat terbaik untuk kebutuhan ini adalah Cisco Packet Tracer, sebuah simulator visual yang memungkinkan kita merancang topologi jaringan kompleks tanpa perlu perangkat keras fisik.</p>\r\n\r\n<p>Dua konsep krusial yang sering disimulasikan adalah IP Subnetting dan konfigurasi BGP (Border Gateway Protocol). Subnetting memegang peran penting dalam memecah jaringan besar menjadi segmen-segmen kecil yang efisien, mencegah pemborosan alamat IP. Sementara itu, BGP adalah protokol routing inti dari internet yang mengatur bagaimana paket data dialihkan melintasi berbagai Autonomous System (AS).</p>\r\n\r\n<p>Dengan menerapkan langkah-langkah simulasi yang tepat di Packet Tracer, administrator jaringan dapat menguji skenario kegagalan routing dan memastikan konfigurasi BGP berjalan optimal sebelum menerapkannya di server nyata.</p>', '6a2d78758bced.jpeg', 'Sabtu, 13 Juni 2026 | 22:34', '2026-06-13 08:34:14', '2026-06-13 08:34:14'),
(7, 4, 8, 'Analisis Kekuatan Karakter dan Konsep \"Path\" dalam Manhwa Lookism', '<p>Manhwa Lookism telah berkembang jauh dari sekadar cerita drama sekolah menjadi salah satu komik aksi dengan sistem pertarungan yang sangat mendetail. Salah satu elemen yang paling menarik untuk didiskusikan oleh para penggemar adalah skala kekuatan (power scaling) antar karakternya yang terus berevolusi seiring berjalannya chapter.</p>\r\n\r\n<p>Puncak dari sistem pertarungan ini adalah konsep \"Path\" (Jalan) yang dicapai oleh karakter-karakter papan atas. Pengembangan teknik tempur ini tidak lagi sekadar mengandalkan kekuatan fisik mentah, melainkan kebangkitan naluri tingkat tinggi seperti penguasaan \"5 Senses\" (5 Indera) yang memungkinkan petarung membaca pergerakan lawan dengan presisi mutlak.</p>\r\n\r\n<p>Selain itu, kemunculan \"Infinite Technique\" (Teknik Tanpa Batas) semakin memperlebar jurang kekuatan antara petarung biasa dan sang legenda. Pemahaman terhadap konsep-konsep ini menjadi kunci untuk memprediksi hasil dari pertarungan epik yang akan datang di manhwa ini.</p>', '6a2d7abaeeaba.jpeg', 'Sabtu, 13 Juni 2026 | 22:43', '2026-06-13 08:43:55', '2026-06-13 08:43:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_artikel`
--

CREATE TABLE `kategori_artikel` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_artikel`
--

INSERT INTO `kategori_artikel` (`id`, `nama_kategori`, `keterangan`, `created_at`, `updated_at`) VALUES
(3, 'Teknologi', NULL, '2026-06-12 20:11:02', '2026-06-12 20:11:02'),
(4, 'Desain', NULL, '2026-06-12 20:11:17', '2026-06-12 20:11:17'),
(5, 'Game', NULL, '2026-06-12 20:11:33', '2026-06-12 20:11:33'),
(6, 'Jaringan', NULL, '2026-06-13 08:23:26', '2026-06-13 08:23:26'),
(8, 'Hiburan', NULL, '2026-06-13 08:40:08', '2026-06-13 08:40:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penulis`
--

CREATE TABLE `penulis` (
  `id` int(11) NOT NULL,
  `nama_depan` varchar(100) NOT NULL,
  `nama_belakang` varchar(100) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penulis`
--

INSERT INTO `penulis` (`id`, `nama_depan`, `nama_belakang`, `user_name`, `password`, `foto`, `created_at`, `updated_at`) VALUES
(3, 'Admin', 'Utama', 'admin', '$2y$12$b0wM/kygvcLYCOGpBmIduenWmHP5Y/K0B1NmpjKZ5kfZtoTAmaVcS', 'default.png', NULL, NULL),
(4, 'Saleh', 'Basyaib', 'Salehbsy', '$2y$12$mHKu9d7Mo44hCbfPC/Qq4OmKjqzJ86f9i0fOO1uj//e/IYO/QgN6O', 'default.png', NULL, NULL),
(5, 'Akmalul', 'Fikri', 'Akmal', '$2y$12$Fr7K5Nv9XSyrZIY6/2W7VeYvjbFSoA6G2XJn7TO6GIbYkBF21WJPi', 'default.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
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
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('hvDBfDxGJFuAflfWGsasYZjnG35UJY184BlVZvdq', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiY0RJbk9mWEt6bEFsbks3dzJKQXBObnVId0NMNW42MVlxbHVyUDVUVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6OToiZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDtzOjExOiJ3YWt0dV9sb2dpbiI7czoyNzoiU2FidHUsIDEzIEp1bmkgMjAyNiB8IDIyOjQ4Ijt9', 1781365736);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_artikel_penulis` (`id_penulis`),
  ADD KEY `fk_artikel_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_nama_kategori` (`nama_kategori`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_user_name` (`user_name`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `fk_artikel_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_artikel` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_artikel_penulis` FOREIGN KEY (`id_penulis`) REFERENCES `penulis` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
