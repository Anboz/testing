-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 04 2020 г., 11:56
-- Версия сервера: 8.0.15
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_meetingroom`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_bron_room`
--

CREATE TABLE `tbl_bron_room` (
  `id` int(11) NOT NULL,
  `fromdate` date NOT NULL,
  `totime` time NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fromtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_bron_room`
--

INSERT INTO `tbl_bron_room` (`id`, `fromdate`, `totime`, `name`, `fromtime`) VALUES
(6, '2020-04-04', '14:00:00', 'testname', '13:07:00'),
(2, '2020-04-04', '22:00:00', 'testname', '21:59:00'),
(2, '2020-04-05', '01:59:00', 'testname', '00:00:00'),
(2, '2020-04-06', '02:00:00', 'testname', '01:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_free_rooms`
--

CREATE TABLE `tbl_free_rooms` (
  `id` int(11) NOT NULL,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_free_rooms`
--

INSERT INTO `tbl_free_rooms` (`id`, `title`) VALUES
(1, 'Meeteng room1'),
(2, 'Meeteng room2'),
(3, 'Meeteng room 3'),
(4, 'Meeteng room4'),
(5, 'Meeteng room 5'),
(6, 'Meeteng room 6'),
(7, 'Meeteng room 7'),
(8, 'Meeteng room 8'),
(10, 'Meeteng room 9'),
(11, 'Meeteng room10'),
(12, 'Meeteng room11'),
(13, 'Meeteng room12'),
(14, 'Meeteng room13'),
(15, 'Meeteng room14'),
(16, 'Meeteng room15'),
(17, 'Meeteng room16'),
(18, 'Meeteng room17'),
(19, 'Meeteng room18'),
(20, 'Meeteng room19'),
(21, 'Meeteng room20'),
(22, 'Meeteng room21'),
(23, 'Meeteng room22'),
(24, 'Meeteng room23'),
(25, 'Meeteng room23'),
(26, 'Meeteng room24'),
(27, 'Meeteng room25'),
(28, 'Meeteng room26'),
(29, 'Meeteng room27'),
(30, 'Meeteng room28'),
(31, 'Meeteng room29'),
(32, 'Meeteng room 30'),
(33, 'Meeteng room 3'),
(34, 'Meeteng room 32'),
(35, 'Meeteng room 33'),
(36, 'Meeteng room 34'),
(37, 'Meeteng room 35'),
(38, 'Meeteng room 36'),
(39, 'Meeteng room 37'),
(40, 'Meeteng room 38'),
(41, 'Meeteng room 39'),
(42, 'Meeteng room4'),
(43, 'Meeteng room41'),
(44, 'Meeteng room42'),
(45, 'Meeteng room43'),
(46, 'Meeteng room44'),
(47, 'Meeteng room45'),
(48, 'Meeteng room46'),
(49, 'Meeteng room47'),
(50, 'Meeteng room48'),
(51, 'Meeteng room48'),
(52, 'Meeteng room49'),
(53, 'Meeteng room5'),
(54, 'Meeteng room50'),
(55, 'Meeteng room52'),
(56, 'Meeteng room53'),
(57, 'Meeteng room56'),
(58, 'Meeteng room57'),
(59, 'Meeteng room58'),
(60, 'Meeteng room59'),
(61, 'Meeteng room60'),
(62, 'Meeteng room61'),
(63, 'Meeteng room62');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tbl_free_rooms`
--
ALTER TABLE `tbl_free_rooms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tbl_free_rooms`
--
ALTER TABLE `tbl_free_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
