-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2024 pada 14.39
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ptsei`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `user_id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`user_id`, `username`, `password`, `name`, `email`) VALUES
(1, 'Rakawibowo', 'karawang', 'Raka', 'raka@gmail.com'),
(2, 'Rani', 'raanii', 'Niaaa', 'nia@gmail.com'),
(3, 'akmal', 'akmal123', 'Aekkmal123', 'akmal@gmail.com'),
(4, 'Rai', '123', 'Ruski', 'ruski@gmail.com'),
(5, 'Rika', '123', 'rusko', 'rusk0@gmail.com'),
(6, 'Rain', '123', 'ruskin', 'ruskni@gmail.com'),
(7, 'Rian', '123', 'ruskiq', 'ruskqi@gmail.com'),
(8, 'Ryan', '1234', 'Ryanadriansyah', 'ryan@upi.edu'),
(9, 'Nani', 'nani123', 'Nani Kusumawaty', 'nani123@gmail.com'),
(12, 'Fairus', 'halo123', 'Uus', 'uus@upi.edu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
