-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 03:33 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `real_estates`
--

CREATE TABLE `real_estate_types_of_construction` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `real_estate_types_of_construction` (`id`, `title`) VALUES
(1, 'Панел'),
(2, 'ЕПК'),
(3, 'Тухла'),
(4, 'Гредоред');

CREATE TABLE `real_estate_level` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `real_estate_level` (`id`, `title`) VALUES
(1, 'АКТ16'),
(2, 'АКТ14'),
(3, 'В строеж');

 ALTER TABLE `real_estate_types_of_construction`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `real_estate_level`
  ADD PRIMARY KEY (`id`);

CREATE TABLE `real_estates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `finished_at` date DEFAULT NULL,
  `price` decimal(15,2) UNSIGNED DEFAULT NULL,
  `area` smallint(5) UNSIGNED DEFAULT NULL,
  `type_id` smallint(5) UNSIGNED DEFAULT NULL,
  `construction_id` smallint(5) UNSIGNED DEFAULT NULL,
  `level_id` smallint(5) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `garages` tinyint(3) UNSIGNED DEFAULT NULL,
  `bedrooms` tinyint(3) UNSIGNED DEFAULT NULL,
  `bathrooms` tinyint(3) UNSIGNED DEFAULT NULL,
  `living_rooms` tinyint(3) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE real_estates
ADD CONSTRAINT fk_construction_id
FOREIGN KEY(construction_id) REFERENCES real_estate_types_of_construction(id);

ALTER TABLE real_estates
ADD CONSTRAINT fk_level_id
FOREIGN KEY(level_id) REFERENCES real_estate_level(id);

--
-- Dumping data for table `real_estates`
--

INSERT INTO `real_estates` (`id`, `title`, `finished_at`, `price`, `area`, `type_id`, `user_id`, `address`, `garages`, `bedrooms`, `bathrooms`, `living_rooms`, `description`, `created_at`) VALUES
(1, 'Къща в с. Кранево', '2021-11-25', '466953.00', 693, 2, 3, 'с. Кранево', 5, 6, 4, 6, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2021-10-29 22:41:54'),
(2, 'eget tincidunt eget tempus', '2022-08-04', '892062.00', 572, 3, 10, '60703 Arizona Center', 3, 3, 3, 4, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-05-02 14:56:05'),
(3, 'Луксозна Къща Виница', '2021-10-28', '332899.00', 201, 2, 7, 'Виница', 1, 2, 4, 4, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-10-16 23:11:43'),
(4, 'venenatis turpis', '2022-09-05', '81826.00', 45, 1, 5, '5 Northland Hill', 6, 4, 5, 2, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-01-13 09:30:36'),
(5, 'tellus nisi eu orci', '2022-03-28', '452123.00', 431, 1, 12, '5 Continental Park', 5, 2, 1, 2, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-03-08 13:30:40'),
(6, 'nisi venenatis', '2022-03-23', '821193.00', 536, 2, 5, '8587 Laurel Pass', 5, 6, 2, 3, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-08-21 16:51:59'),
(7, 'donec', '2021-10-26', '183391.00', 731, 4, 4, '01 Butterfield Avenue', 4, 2, 1, 3, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-04-02 09:45:47'),
(8, '3-стаен Апартамент в Центъра на Варна', '2022-09-25', '599213.00', 177, 1, 14, 'ВИНС', 0, 6, 3, 1, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-08-25 11:22:26'),
(9, 'Пентхаус кв. Бриз', '2022-09-20', '461197.00', 492, 2, 12, 'кв. Бриз', 6, 2, 3, 6, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-08-29 03:52:27'),
(10, 'varius integer', '2022-05-17', '147604.00', 532, 1, 14, '619 Crowley Junction', 6, 5, 6, 5, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-01-06 03:57:52'),
(11, 'euismod', '2022-01-26', '499927.00', 135, 3, 10, '84 Superior Parkway', 2, 5, 3, 4, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-07-18 18:51:17'),
(12, 'Пентхауъс Варна', '2022-10-08', '833715.00', 755, 3, 5, 'ул. Княз Борис 1', 0, 1, 4, 3, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2021-12-14 07:38:40'),
(13, '4-стаен Апартамент в Нова Сграда', '2022-07-27', '174104.00', 388, 4, 7, 'До х-л Черно Море', 4, 3, 2, 5, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-10-12 10:33:24'),
(14, 'dui nec nisi', '2022-05-04', '398787.00', 73, 2, 7, '8652 Sutherland Alley', 5, 3, 2, 2, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-01-16 09:17:53'),
(15, 'mi', '2022-10-06', '953191.00', 768, 3, 14, '3 Truax Park', 1, 4, 4, 1, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-05-27 14:17:40'),
(16, 'Луксозна Къща в с. Казашко', '2021-12-17', '306499.00', 363, 3, 7, 'Бряг на с. Казашко', 4, 1, 1, 2, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-05-27 07:16:17'),
(17, 'vel dapibus at', '2021-12-29', '246756.00', 235, 3, 12, '67628 Pond Place', 1, 1, 5, 4, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-07-16 21:09:57'),
(18, 'consequat nulla nisl', '2022-10-21', '15713.00', 283, 1, 5, '8 Westend Circle', 2, 4, 4, 3, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-07-21 17:29:20'),
(19, 'duis at', '2022-07-20', '716137.00', 479, 1, 14, '746 Parkside Terrace', 0, 5, 6, 3, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-05-18 17:49:09'),
(20, 'Луксозна Къща в Центъра на с. Калиманци', '2022-02-03', '711917.00', 29, 2, 14, 'с. Калиманци', 0, 3, 3, 1, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2021-12-26 03:19:12'),
(21, '3-стаен апартамент в центъра на Варна', '2010-10-12', '110000.00', 80, 1, 3, 'ул. \"Васил Друмев\"', 0, 2, 1, 1, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-05-29 04:09:16'),
(22, 'Старинна Къща в Центъра на Варна', '2022-07-30', '308762.00', 409, 3, 10, 'До х-л Черно Море', 5, 1, 4, 3, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-09-12 15:30:27'),
(23, 'imperdiet', '2022-03-22', '258528.00', 746, 2, 7, '59 Wayridge Trail', 3, 4, 2, 4, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-08-12 02:36:37'),
(24, 'consequat', '2021-12-09', '448365.00', 327, 4, 4, '7645 Boyd Road', 3, 1, 6, 1, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-08-24 22:35:00'),
(25, '3-стаен Апартамент в кв. Бриз', '2021-11-15', '983864.00', 11, 4, 12, 'кв. Бриз', 6, 2, 2, 6, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-09-21 23:08:08'),
(26, 'interdum', '2022-06-03', '154414.00', 619, 4, 7, '44170 Muir Lane', 5, 6, 6, 6, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-04-13 08:18:23'),
(27, 'turpis nec', '2022-09-21', '519447.00', 890, 4, 12, '1 West Plaza', 1, 6, 1, 3, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-05-15 09:40:56'),
(28, 'egestas metus', '2021-11-01', '606492.00', 69, 4, 12, '7253 Southridge Hill', 5, 3, 2, 6, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-02-24 17:10:20'),
(29, 'tristique tortor eu', '2022-02-25', '29537.00', 191, 3, 1, '85 Jackson Way', 1, 2, 4, 1, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-07-02 21:22:23'),
(30, 'primis in faucibus orci', '2022-06-30', '802060.00', 837, 2, 14, '9 Granby Pass', 5, 5, 4, 1, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-07-07 12:08:56'),
(31, 'Test Real estate', '2022-11-02', '500000.00', 250, 2, 3, 'Trakata', 2, 4, 3, 3, 'Lorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.', '2022-11-09 08:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `real_estate_images`
--

CREATE TABLE `real_estate_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `real_estate_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `real_estate_images`
--

INSERT INTO `real_estate_images` (`id`, `path`, `real_estate_id`) VALUES
(1, 'storage/property-9.jpg', 13),
(2, 'storage/property-5.jpg', 20),
(3, 'storage/post-4.jpg', 23),
(4, 'storage/property-5.jpg', 30),
(5, 'storage/post-3.jpg', 15),
(6, 'storage/property-6.jpg', 27),
(7, 'storage/post-3.jpg', 17),
(8, 'storage/property-6.jpg', 19),
(9, 'storage/post-1.jpg', 22),
(10, 'storage/post-1.jpg', 29),
(11, 'storage/property-10.jpg', 4),
(12, 'storage/property-2.jpg', 7),
(13, 'storage/property-4.jpg', 30),
(14, 'storage/property-10.jpg', 24),
(15, 'storage/post-6.jpg', 21),
(16, 'storage/post-6.jpg', 21),
(17, 'storage/post-5.jpg', 13),
(18, 'storage/post-3.jpg', 7),
(19, 'storage/post-5.jpg', 21),
(20, 'storage/post-4.jpg', 20),
(21, 'storage/post-4.jpg', 16),
(22, 'storage/property-8.jpg', 13),
(23, 'storage/property-2.jpg', 7),
(24, 'storage/post-4.jpg', 5),
(25, 'storage/post-4.jpg', 28),
(26, 'storage/property-9.jpg', 13),
(27, 'storage/property-1.jpg', 29),
(28, 'storage/property-6.jpg', 24),
(29, 'storage/post-5.jpg', 9),
(30, 'storage/property-10.jpg', 8),
(31, 'storage/property-2.jpg', 14),
(32, 'storage/post-7.jpg', 15),
(33, 'storage/property-9.jpg', 25),
(34, 'storage/property-9.jpg', 24),
(35, 'storage/property-7.jpg', 12),
(36, 'storage/post-4.jpg', 7),
(37, 'storage/property-8.jpg', 27),
(38, 'storage/property-2.jpg', 19),
(39, 'storage/property-1.jpg', 3),
(40, 'storage/property-3.jpg', 18),
(41, 'storage/post-2.jpg', 28),
(42, 'storage/post-4.jpg', 20),
(43, 'storage/property-1.jpg', 10),
(44, 'storage/property-9.jpg', 26),
(45, 'storage/property-7.jpg', 6),
(46, '\\storage\\67f9f74795a139d4261b8a7593060aa6.jpg', 31);

-- --------------------------------------------------------

--
-- Table structure for table `real_estate_types`
--

CREATE TABLE `real_estate_types` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `real_estate_types`
--

INSERT INTO `real_estate_types` (`id`, `title`) VALUES
(1, 'Апартамент'),
(2, 'Къща'),
(3, 'Парцел'),
(4, 'Търговско Помещение');

-- --------------------------------------------------------

--
-- Table structure for table `real_estate_user`
--

CREATE TABLE `real_estate_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `real_estate_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `real_estate_user`
--

INSERT INTO `real_estate_user` (`user_id`, `real_estate_id`) VALUES
(1, 9),
(1, 18),
(1, 23),
(1, 24),
(2, 2),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 26),
(6, 4),
(6, 6),
(6, 9),
(6, 13),
(6, 22),
(6, 24),
(6, 28),
(7, 24),
(8, 10),
(8, 13),
(8, 14),
(8, 24),
(8, 27),
(11, 2),
(11, 8),
(11, 10),
(11, 18),
(11, 20),
(11, 21),
(11, 22),
(11, 25),
(11, 28),
(15, 7),
(15, 14),
(15, 20),
(15, 28);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_picture` varchar(128) DEFAULT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `type_id` smallint(5) UNSIGNED DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `phone_number` varchar(32) NOT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `profile_picture`, `first_name`, `last_name`, `type_id`, `email`, `phone_number`, `bio`, `password`) VALUES
(1, NULL, 'Георги', 'Стаменов', 1, 'jferagh0@vk.com', '+359 876 24 74 10', 'Клиент', '$2a$10$TOCrxMqWNWVNq7ZkcEBvC.NJMhgi8qRWPy2wXFF0eg4my9GGm/K4C'),
(2, NULL, 'Карла', 'Ганчева', 1, 'kgancheva@gmail.com', '+591-793-539-3457', 'Клиент', '$2a$10$6AKNBxJF.r6DxjpjY7HTd.VpTddHnh14.7vcKBXYR.Lp5uyoePq/q'),
(3, 'storage/agent-4.jpg', 'Теодора', 'Василева', 2, 'tvasileva@estateagency.bg', '+359-174-659-6289', 'Брокер на Недвижими Имоти', '$2a$10$Dzdro5dj261AdKFSN4Y3XucRYILyx7elimtkrp5xaF2dqUtZjQbBK'),
(4, 'storage/agent-1.jpg', 'Бранимир', 'Станков', 2, 'bstankov@mail.bg', '+62-122-669-3012', 'Брокер на Недвижими Имоти', '$2a$10$efx6bejxPpqTWyQINAoTuOfnEhQzLfvh92i0zfadv7woiZydFoZdG'),
(5, 'storage/agent-5.jpg', 'Ивайла', 'Бакалов', 2, 'ibakalova@abv.bg', '+7-218-773-9038', 'Брокер на Недвижими Имоти', '$2a$10$IeViRPDQPcjwaauGdHckLOTVI1uf4XTOoG9VCM.U9Ns5CXuO6mD1.'),
(6, NULL, 'Лео', 'Господинов', 1, 'lgospodinov@abv.bg', '+57-550-137-6276', 'Клиент', '$2a$10$FiztjLmMKUWzgVBq0nj2oegm3ANm8DcfKfxUe.azVkeQcWEdo236a'),
(7, 'storage/agent-6.jpg', 'Герасим', 'Георгиев', 2, 'ggeorgiev@abv.bg', '+420-150-884-1751', 'Брокер на Недвижими Имоти', '$2a$10$XNeFEsKe56F1Y54THX5Jbe0I6SSIZhV4xkXHv.5.Fx.CuQHFdHiYy'),
(8, NULL, 'Ulric', 'Scarse', 1, 'uscarse7@ustream.tv', '+359-898-609-7147', 'Innovative high-level data-warehouse', '$2a$10$64x48YAKLCKiPnPIP/hoeeKLL5bnwj1Zv4aNzDVPlaFY0j6rzlIQy'),
(9, NULL, 'Erna', 'McMonnies', 1, 'emcmonnies8@state.gov', '+351-178-879-6242', 'Multi-tiered eco-centric encoding', '$2a$10$DSPOhTuLewJt0hpfVwTse.hvtQ15q25YpInby9BCNmDOb8Fm5bXmy'),
(10, 'storage/agent-2.jpg', 'Бранко', 'Станимиров', 2, 'bstanimirov@estageagency.bg', '+1-405-201-7994', 'Брокер на Недвижими Имоти', '$2a$10$ID4OXH3IlW/meaRXTRs0dO5tYUiW9UdYy7aO4UhbUu8BuPan3uiWS'),
(11, NULL, 'Valerye', 'Hathorn', 1, 'vhathorna@taobao.com', '+86-549-333-1349', 'Inverse 3rd generation hub', '$2a$10$cKF6sJ21BhGLbKF3cJJMnubsoP2uU/2nF5XvD/agulMFoZcXIyO5a'),
(12, 'storage/agent-7.jpg', 'Ева', 'Иванова', 2, 'eivanova@estateagency.bg', '+58-287-422-4689', 'Брокер на Недвижими Имоти', '$2a$10$HBABLfsRgzMeLhZ9sS2.luUgSorZzGalPc2aH9ZpfmmwJaZ6Mu.da'),
(13, 'storage/agent-2.jpg', 'Марин', 'Делон', 2, 'mdelon@estateagency.bg', '+95-699-240-4719', 'Брокер на Недвижими Имоти', '$2a$10$9fYtwYk9eJo7B/AP0SHxU.8yQK2GjtEkhYZuSoETptnwB2sheoJG.'),
(14, 'storage/agent-8.jpg', 'Даниела', 'Иванова', 2, 'divanova@estateagency.bg', '+359 878 21 45 76', 'Фокусирана върху качеството възможност от 6-то поколение', '$2a$10$F3WJp.Gb8jLJlt0.7m51feBfCTnVe0uSnB7bgjCVSHPrZvkOsnRsO'),
(15, NULL, 'Corabelle', 'Noades', 1, 'cnoadese@mozilla.org', '+62-369-751-2726', 'Multi-lateral executive utilisation', '$2a$10$DN7WKlTjiN98X.OM0IkF9OMNuKGBD0drnIaDEctxEpeIVBvlLKP1i'),
(16, '\\storage\\982037348cb1243604468605142b9653.jpg', 'N.', 'Dechev', 1, 'n.dechev@abv.bg', '0878222222', NULL, '$2y$10$/QcPIPTKhHmHm9CfHpf9beUq3AvHpSrzK5K5P2m4l6sjneabkNxje'),
(17, '\\storage\\8e80496cdaef860f96542c9a5c19e893.', 'Иван', 'Иванов', 1, 'iivanov@abv.bg', '0878232145', NULL, '$2y$10$heHEPAmnoEWPSzkx/NttNOpiL5R0utpKA3sm4xS4TVTvEBNibPLKu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `real_estates`
--
ALTER TABLE `real_estates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `real_estate_images`
--
ALTER TABLE `real_estate_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `real_estate_id` (`real_estate_id`);

--
-- Indexes for table `real_estate_types`
--
ALTER TABLE `real_estate_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `real_estate_user`
--
ALTER TABLE `real_estate_user`
  ADD PRIMARY KEY (`user_id`,`real_estate_id`),
  ADD KEY `real_estate_id` (`real_estate_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `real_estates`
--
ALTER TABLE `real_estates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `real_estate_images`
--
ALTER TABLE `real_estate_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `real_estate_types`
--
ALTER TABLE `real_estate_types`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `real_estates`
--
ALTER TABLE `real_estates`
  ADD CONSTRAINT `real_estates_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `real_estate_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `real_estates_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `real_estate_images`
--
ALTER TABLE `real_estate_images`
  ADD CONSTRAINT `real_estate_images_ibfk_1` FOREIGN KEY (`real_estate_id`) REFERENCES `real_estates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `real_estate_user`
--
ALTER TABLE `real_estate_user`
  ADD CONSTRAINT `real_estate_user_ibfk_1` FOREIGN KEY (`real_estate_id`) REFERENCES `real_estates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `real_estate_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;