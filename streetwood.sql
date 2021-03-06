-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 22 Lut 2017, 16:58
-- Wersja serwera: 10.1.21-MariaDB
-- Wersja PHP: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `streetwood`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `adresy`
--

CREATE TABLE `adresy` (
  `id_adresu` int(11) NOT NULL,
  `miasto` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `ulica` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `nr_domu` varchar(10) COLLATE utf8mb4_polish_ci NOT NULL,
  `kod_pocztowy` varchar(6) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `adresy`
--

INSERT INTO `adresy` (`id_adresu`, `miasto`, `ulica`, `nr_domu`, `kod_pocztowy`) VALUES
(20, 'Biłgoraj', 'Kościuszki', '30/49', '23-400'),
(21, 'Kraków', 'Wysoka', '78', '77-789'),
(22, 'Kraków', 'Wysoka', '79', '77-789'),
(23, 'Warszawa', 'Zjazdowa', '77', '01-025'),
(24, 'Biłgoraj', 'Kościuszki', '30/49', '23-400'),
(25, 'Biłgoraj', 'Kościuszki', '30/49', '23-400'),
(26, 'Biłgoraj', 'Kościuszki', '30/49', '23-400'),
(27, 'Aleksandrów', 'Szeroka', '23', '23-408'),
(28, 'Biłgoraj', 'Kościuszki', '30/49', '23-400'),
(29, 'Biłgoraj', 'Kościuszki', '30/49', '23-400'),
(30, 'Kraków', 'Wysoka', '78', '77-789'),
(31, 'Warszawa', 'Zjazdowa', '77', '01-025'),
(32, 'Warszawa', 'Zjazdowa', '77', '01-025'),
(33, 'Aleksandrów', 'Szeroka', '23', '23-408'),
(34, 'Sdfsfdsdsdf', 'Qq', '234', '23-408'),
(35, 'Ważywniak', 'Kręta', '78', '88-555'),
(36, 'Biłgoraj ', 'Kościuszki', '30/49', '23-400');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dostawa`
--

CREATE TABLE `dostawa` (
  `id_dostawy` int(11) NOT NULL,
  `nazwa_dostawy` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `cena` int(11) NOT NULL,
  `rodzaj_dostawy` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `id_kategorii` int(11) NOT NULL,
  `nazwa_kategorii` varchar(150) COLLATE utf8mb4_polish_ci NOT NULL,
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `kategorie`
--

INSERT INTO `kategorie` (`id_kategorii`, `nazwa_kategorii`, `parent`) VALUES
(1, 'Bransoletki', NULL),
(2, 'Case_', NULL),
(3, 'Odziez', NULL),
(4, 'Plecak', NULL),
(5, 'Sznureczek', 1),
(6, 'Kotwica', 1),
(7, 'Guzik', 1),
(8, 'IPhone', 2),
(10, 'Koraliki', 1),
(11, 'Inne Modele', 2),
(12, 'Czapki', 3),
(13, 'T-shirt', 3),
(14, 'BackPack', 4),
(15, 'Zawieszki', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie_zawieszek`
--

CREATE TABLE `kategorie_zawieszek` (
  `id_kategorii_zawieszek` int(11) NOT NULL,
  `nazwa_kategorii_zawieszek` varchar(100) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `kategorie_zawieszek`
--

INSERT INTO `kategorie_zawieszek` (`id_kategorii_zawieszek`, `nazwa_kategorii_zawieszek`) VALUES
(1, 'Emoji'),
(2, 'Krew'),
(3, 'Puzzle');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id_produktu` int(11) NOT NULL,
  `nazwa` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `cena` double NOT NULL,
  `id_kategorii` int(11) NOT NULL,
  `stan` tinyint(1) NOT NULL,
  `opis` longtext COLLATE utf8mb4_polish_ci NOT NULL,
  `id_kategorii_zawieszek` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id_produktu`, `nazwa`, `cena`, `id_kategorii`, `stan`, `opis`, `id_kategorii_zawieszek`) VALUES
(35, 'Test2', 222, 1, 0, 'asdasda', NULL),
(37, 'Mata Wiklinowa', 65, 1, 1, 'est to naturalne, ekologiczne ogrodzenie wiklinowe wykonane z wysokiej jakości wikliny. Mata wiklinowa szyta jest co 10 cm drutem owijającym o grubości 0,4 mm i prowadzącym 0,8 mm. Do produkcji płotów wiklinowych używamy wyłącznie polskiego, ocynkowanego drutu. Początek i koniec każdej maty wiklinowej posiada kilkucentymetrowy odcinek drutu, aby można było połączyć nim kolejną matę. Dzięki temu możemy połączyć ze sobą dowolną liczbę mat wiklinowych, bez widocznych oznak łączenia.', NULL),
(38, 'Mata Krzywa', 75, 1, 0, '2est to naturalne, ekologiczne ogrodzenie wiklinowe wykonane z wysokiej jakości wikliny. Mata wiklinowa szyta jest co 10 cm drutem owijającym o grubości 0,4 mm i prowadzącym 0,8 mm. Do produkcji płotów wiklinowych używamy wyłącznie polskiego, ocynkowanego drutu. Początek i koniec każdej maty wiklinowej posiada kilkucentymetrowy odcinek drutu, aby można było połączyć nim kolejną matę. Dzięki temu możemy połączyć ze sobą dowolną liczbę mat wiklinowych, bez widocznych oznak łączenia.', NULL),
(39, 'Mata Skrętna', 78, 3, 1, 'est to naturalne, ekologiczne ogrodzenie wiklinowe wykonane z wysokiej jakości wikliny. Mata wiklinowa szyta jest co 10 cm drutem owijającym o grubości 0,4 mm i prowadzącym 0,8 mm. Do produkcji płotów wiklinowych używamy wyłącznie polskiego, ocynkowanego drutu. Początek i koniec każdej maty wiklinowej posiada kilkucentymetrowy odcinek drutu, aby można było połączyć nim kolejną matę. Dzięki temu możemy połączyć ze sobą dowolną liczbę mat wiklinowych, bez widocznych oznak łączenia.', NULL),
(40, 'NAzwa', 120, 1, 0, 'qqqfdzdfd', NULL),
(41, 'Paragon', 20, 4, 1, 'QWERTY', NULL),
(42, 'Test Nr 1', 20, 1, 1, 'Brans', NULL),
(43, 'Obrazek', 78, 1, 1, 'qweer', NULL),
(44, 'Asd', 0, 1, 1, '456', NULL),
(45, 'Tescik', 78, 1, 1, '84', NULL),
(46, 'Moje Zdjęcia', 75, 19, 1, 'Qwer', NULL),
(47, 'Tescik', 54, 20, 1, 'dfdfgsdgs g', NULL),
(48, 'Nazwa', 54, 21, 1, 'dfgdfg ', NULL),
(49, 'Asdasda', 231, 22, 1, 'sdgsddsgdg', NULL),
(50, 'Tyutyu', 345, 23, 0, 'dsfdf s', NULL),
(51, 'Tyrty', 345, 24, 1, 'bcxcbbcxxbccbx', NULL),
(52, 'Qwe', 234, 25, 1, '3453we f df s', NULL),
(53, 'Test2ffff', 222, 1, 1, '', NULL),
(54, 'Nazwa', 54, 21, 1, 'dfgdfg ', NULL),
(69, 'Case IPhone 6', 20, 27, 1, 'Case dla telefonu iPhone 6', NULL),
(71, 'Case IPhone 6', 55, 29, 1, 'Caw', NULL),
(72, 'Czapka', 45, 29, 1, 'qweeqwe', NULL),
(73, 'Wszystko', 45, 29, 1, 'sdfsdfsdf', NULL),
(74, 'Qqqq', 6, 29, 1, 'asdasd', NULL),
(75, 'Case IPhone 6', 584, 30, 1, 'qwe', NULL),
(76, 'Case IPhone', 35, 8, 1, 'a,sdnbasdkasdkbaskhdasds as\r\na\r\nsdasldkaskjdbasd', NULL),
(78, 'Czapki', 55, 3, 1, 'Czapki fajnie', NULL),
(79, 'Case', 45, 8, 1, 'erwerwerwerwer', NULL),
(94, 'Brazowy', 20, 5, 1, 'AAAAA', NULL),
(95, 'Brzoskwinia', 20, 5, 1, 'ppppp', NULL),
(96, 'Czarny', 20, 5, 1, 'qqq', NULL),
(97, 'Czerwony', 30, 5, 1, 'BB', NULL),
(98, 'Ecru', 30, 5, 1, '222', NULL),
(99, 'Fiolet', 30, 5, 1, 'Fiolet', NULL),
(100, 'Granat', 30, 5, 1, 'Granat', NULL),
(101, 'Khaki', 30, 5, 1, 'Khaki', NULL),
(102, 'Niebieski', 30, 5, 1, 'Niebieski', NULL),
(103, 'Pomaranczowy', 30, 5, 1, 'Pomaranczowy', NULL),
(104, 'Rozowy', 30, 5, 1, 'Rozowy', NULL),
(105, 'Szary', 30, 5, 1, 'Szary', NULL),
(106, 'Zielony', 30, 5, 1, 'Zielony', NULL),
(107, 'Żółty', 30, 5, 1, 'Zółty', NULL),
(108, 'BDSM', 1, 15, 1, 'qqqq', 1),
(110, 'Devil', 1, 15, 1, 'Zawieszka', 1),
(111, 'Face 2', 1, 15, 1, 'Zawieszka', 1),
(112, 'Face Okulary', 1, 15, 1, 'Zawieszka', 1),
(113, 'Face Pack', 1, 15, 1, 'Zawieszka', 1),
(114, '0 RH', 1, 15, 1, 'Zawieszka', 2),
(115, '0 RH', 1, 15, 1, 'Zawieszka', 2),
(116, 'Abrh', 1, 15, 1, 'Zawieszka', 2),
(117, 'Abrh -', 1, 15, 1, 'Zawieszka', 2),
(118, 'A Rh -', 1, 15, 1, 'Zawieszka', 2),
(119, 'A Rh +', 1, 15, 1, 'Zawieszka', 2),
(120, 'B Rh +', 1, 15, 1, 'Zawieszka', 2),
(121, 'B Rh -', 1, 15, 1, 'Zawieszka', 2),
(122, 'A', 1, 15, 1, 'Zawieszka', 3),
(123, 'B', 1, 15, 1, 'Zawieszka', 3),
(124, 'C', 1, 15, 1, 'Zawieszka', 3),
(125, 'D', 1, 15, 1, 'Zawieszka', 3),
(126, 'E', 1, 15, 1, 'Zawieszka', 3),
(127, 'F', 1, 15, 1, 'Zawieszka', 3),
(128, 'G', 1, 15, 1, 'Zawieszka', 3),
(129, 'Guzik Zielony', 35, 7, 1, 'Bleeeeeeeee', NULL),
(130, 'Niebieski W Ciapki', 35, 7, 1, 'Bleeeeeeeee', NULL),
(131, 'Zółty W Ciapki', 35, 7, 1, 'Bleeeeeeeee', NULL),
(132, 'Czarny', 35, 7, 1, 'Bleeeeeeeee', NULL),
(133, 'Beanie Biała', 35, 12, 1, 'Bleeeeeeeee', NULL),
(134, 'Beanie Butelkowa', 35, 12, 1, 'Bleeeeeeeee', NULL),
(135, 'Beanie Czarna', 35, 12, 1, 'Bleeeeeeeee', NULL),
(136, 'Beanie Czerwona', 35, 12, 1, 'Bleeeeeeeee', NULL),
(137, 'Beanie Oliwka', 35, 12, 1, 'Bleeeeeeeee', NULL),
(138, 'Beanie Szara', 35, 12, 1, 'Bleeeeeeeee', NULL),
(139, 'Koszulka Biała', 35, 13, 1, 'Bleeeeeeeee', NULL),
(140, 'Kotwica Błękitna', 222, 6, 1, 'Kotwica', NULL),
(141, 'Kotwica Biała', 222, 6, 1, 'Kotwica', NULL),
(142, 'Kotwica Czerwona', 222, 6, 1, 'Kotwica', NULL),
(143, 'Kotwica Granatowa', 222, 6, 1, 'Kotwica', NULL),
(144, 'Guzik Czarny', 222, 7, 1, 'Guzik Czarny', NULL),
(145, 'Guzik Różowy', 222, 7, 1, 'Guzik Różowy', NULL),
(146, 'Koraliki Czarne', 222, 10, 1, 'Koraliki', NULL),
(147, 'Koraliki Niebieskie', 222, 10, 1, 'Koraliki', NULL),
(148, 'Jednorożec', 35, 8, 1, 'Iphone Case', NULL),
(149, 'Korony', 35, 8, 1, 'Iphone Case', NULL),
(150, 'Tshirt Biały StreetWood', 35, 13, 1, 'Tshirt Biały StreetWood', NULL),
(151, 'Tshirt Biały Wrotki', 100, 13, 1, 'Tshirt Biały StreetWood', NULL),
(152, 'Beanie Biała', 70, 12, 1, 'Beanie Biała', NULL),
(153, 'Beanie Butelkowa', 70, 12, 1, 'Beanie Biała', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stale_ceny`
--

CREATE TABLE `stale_ceny` (
  `id_stalej_ceny` int(11) NOT NULL,
  `zawieszka1` int(11) NOT NULL,
  `zawieszka2` int(11) NOT NULL,
  `zawieszka3` int(11) NOT NULL,
  `zawieszka4` int(11) DEFAULT NULL,
  `zawieszka5` int(11) DEFAULT NULL,
  `opis` varchar(100) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `stale_ceny`
--

INSERT INTO `stale_ceny` (`id_stalej_ceny`, `zawieszka1`, `zawieszka2`, `zawieszka3`, `zawieszka4`, `zawieszka5`, `opis`) VALUES
(1, 20, 30, 40, NULL, NULL, 'Sznureczek'),
(2, 20, 25, 30, 45, 50, ''),
(3, 20, 25, 30, 35, 45, 'Kotwica'),
(4, 20, 25, 30, 35, 40, 'Koraliki');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id_uzytkownika` int(11) NOT NULL,
  `imie` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwisko` varchar(40) COLLATE utf8mb4_polish_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_polish_ci NOT NULL,
  `telefon` int(10) NOT NULL,
  `login` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `haslo` varchar(255) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `typ_konta` varchar(15) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `data_utowrzenia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id_uzytkownika`, `imie`, `nazwisko`, `email`, `telefon`, `login`, `haslo`, `typ_konta`, `data_utowrzenia`) VALUES
(1, 'Marcin', 'Stelmach', 'marcinxd4@gmail.com', 696589784, 'marcinxd4', '$2y$10$.dc/bisjUFYj4lqY5dyH8u16S7WQptc8UpIWXJDVjBoUReaObaagO', 'kupiec', 1471264124),
(2, 'Admin', 'Administrator', 'admin@o2.pl', 123456789, 'admin', '$2y$10$M53giCnwll.iU1I61KwwTeOXeUieT7CyzysGe3fAnIaV0JI.2tnc6', 'administrator', 1471264297),
(3, 'Stefan', 'Robaczyński', 'robson55@wp.pl', 123456789, 'rabaczek16', '$2y$10$wH/or.J6xNYE/Vq9rh5k5u6CBotwvgbt9jEOO735lpfVzwhbVeWoW', 'kupiec', 1472978010),
(4, 'Kamil', 'Komornik', 'lajos@po.pl', 987456123, 'lajos', '$2y$10$KAU/gGY172gYlZzXpmJ0.uFDdhDQ6/8tKtzXUT1voL4r1Mk0RdYiK', 'kupiec', 1473075717),
(5, 'Janek', 'Kowalski', 'qqq@o2.pl', 789456123, NULL, NULL, NULL, NULL),
(6, 'Paweł', 'Kowalski', 'ooo@o.pl', 789456123, NULL, NULL, NULL, NULL),
(7, 'Jan', 'Kowalski', 'wiesiek78@po.pl', 789456123, 'wiesiek78', '$2y$10$S86h3OiPhQvssKCJuZiQqO3Xk84OOxqzJ6IBns22lUpBA8ARsjk.i', 'kupiec', 1478630866);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zamowienia` int(11) NOT NULL,
  `id_uzytkownika` int(11) DEFAULT NULL,
  `id_adresu` int(11) NOT NULL,
  `czy_wyslano` tinyint(1) NOT NULL,
  `czy_zaplacono` tinyint(1) NOT NULL,
  `cena` double NOT NULL,
  `data_zamowienia` date NOT NULL,
  `dostawa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id_zamowienia`, `id_uzytkownika`, `id_adresu`, `czy_wyslano`, `czy_zaplacono`, `cena`, `data_zamowienia`, `dostawa`) VALUES
(11, 3, 20, 1, 1, 37239, '2016-11-17', 0),
(12, 1, 21, 0, 0, 698, '2016-11-16', 0),
(13, 1, 22, 1, 0, 1874, '0000-00-00', 0),
(14, 4, 23, 0, 0, 138605, '2016-11-24', 0),
(15, 1, 24, 0, 0, 31082, '2016-11-08', 0),
(17, 1, 26, 0, 0, 50, '2016-11-09', 0),
(18, 1, 27, 0, 0, 287, '2016-11-07', 0),
(19, 1, 28, 1, 1, 963, '2016-11-03', 0),
(20, 1, 29, 1, 1, 140, '2016-10-18', 0),
(21, NULL, 30, 0, 0, 218, '2016-09-13', 0),
(22, NULL, 31, 0, 0, 218, '2016-10-18', 0),
(23, 1, 32, 0, 0, 65, '2016-08-30', 0),
(24, 1, 33, 0, 0, 362, '2016-11-17', 0),
(25, 5, 34, 1, 1, 362, '2016-09-22', 0),
(26, 6, 35, 0, 0, 444, '2016-11-01', 0),
(27, 1, 36, 0, 0, 40, '2017-02-22', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zam_tow`
--

CREATE TABLE `zam_tow` (
  `id_zam_tow` int(11) NOT NULL,
  `id_produktu` int(11) NOT NULL,
  `id_zamowienia` int(11) NOT NULL,
  `ilosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `zam_tow`
--

INSERT INTO `zam_tow` (`id_zam_tow`, `id_produktu`, `id_zamowienia`, `ilosc`) VALUES
(19, 1, 11, 2),
(20, 2, 11, 1),
(21, 13, 11, 4),
(22, 18, 11, 1),
(23, 20, 12, 2),
(24, 26, 12, 1),
(25, 1, 12, 1),
(26, 21, 13, 1),
(27, 13, 13, 4),
(28, 2, 13, 1),
(29, 19, 14, 2),
(30, 14, 14, 2),
(31, 3, 14, 9),
(32, 17, 15, 1),
(33, 14, 15, 25),
(34, 20, 15, 1),
(35, 2, 15, 1),
(36, 1, 17, 1),
(37, 2, 17, 1),
(38, 35, 18, 1),
(39, 37, 18, 1),
(40, 35, 19, 4),
(41, 38, 19, 1),
(42, 38, 20, 1),
(43, 37, 20, 1),
(44, 37, 21, 1),
(45, 38, 21, 1),
(46, 39, 21, 1),
(47, 37, 22, 1),
(48, 38, 22, 1),
(49, 39, 22, 1),
(50, 37, 23, 1),
(51, 35, 24, 1),
(52, 37, 24, 1),
(53, 38, 24, 1),
(54, 37, 25, 1),
(55, 38, 25, 1),
(56, 35, 25, 1),
(57, 35, 26, 2),
(58, 1, 27, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zdjecia`
--

CREATE TABLE `zdjecia` (
  `id_zdjecia` int(11) NOT NULL,
  `nazwa_zdjecia` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `id_produktu` int(11) NOT NULL,
  `glowne` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `zdjecia`
--

INSERT INTO `zdjecia` (`id_zdjecia`, `nazwa_zdjecia`, `id_produktu`, `glowne`) VALUES
(64, '1.jpg', 69, 0),
(65, '2.jpg', 69, 0),
(66, '1.jpg', 70, 0),
(67, '2.jpg', 70, 0),
(77, '1.jpg', 75, 0),
(78, '2.jpg', 75, 0),
(79, '3.jpg', 75, 0),
(80, '4.jpg', 75, 0),
(81, '5.jpg', 75, 0),
(82, '1.jpg', 76, 0),
(83, '2.jpg', 76, 0),
(86, '4.jpg', 78, 0),
(87, '3.jpg', 79, 0),
(88, '3.jpg', 77, 0),
(90, '4.jpg', 80, 0),
(91, '01.png', 81, 0),
(92, '02.png', 82, 0),
(93, '03.png', 83, 0),
(94, '6.png', 84, 0),
(95, '7.png', 85, 0),
(96, '13.png', 86, 0),
(97, 'brazowy.png', 87, 0),
(98, 'brzoskwinia.png', 88, 0),
(100, 'czerwony.png', 90, 0),
(101, 'fiolet.png', 91, 0),
(102, 'khaki.png', 92, 0),
(103, 'granat.png', 93, 0),
(104, 'brazowy.png', 94, 0),
(105, 'brzoskwinia.png', 95, 0),
(106, 'czarny.png', 96, 0),
(107, 'czerwony.png', 97, 0),
(108, 'ecru.png', 98, 0),
(109, 'fiolet.png', 99, 0),
(110, 'granat.png', 100, 0),
(111, 'khaki.png', 101, 0),
(112, 'niebieski.png', 102, 0),
(113, 'pomaranczowy.png', 103, 0),
(114, 'rozowy.png', 104, 0),
(115, 'szary.png', 105, 0),
(116, 'zielony.png', 106, 0),
(117, 'zolty.png', 107, 0),
(118, 'BDSM_pack-1-3000px kopia.png', 108, 0),
(119, 'christmas-wallpaper-2.jpg', 109, 0),
(120, 'DEVIL_pack-1-3000px kopia.png', 110, 0),
(121, 'FACE_2_pack-1-3000px kopia.png', 111, 0),
(122, 'FACE_OKULARYpack-1-3000px kopia.png', 112, 0),
(123, 'FACE_pack-1-3000px kopia.png', 113, 0),
(124, '0RH+grupy-krwi kopia.png', 114, 0),
(125, '0RH-grupy-krwi kopia.png', 115, 0),
(126, 'ABRH+grupy-krwi kopia.png', 116, 0),
(127, 'ABRH-grupy-krwi kopia.png', 117, 0),
(128, 'ABRH-grupy-krwi_2 kopia.png', 118, 0),
(129, 'ARH+grupy-krwi kopia.png', 119, 0),
(130, 'BRH+grupy-krwi kopia.png', 120, 0),
(131, 'BRH-grupy-krwi kopia.png', 121, 0),
(132, 'A_alfabet---puzzle kopia.png', 122, 0),
(133, 'B_alfabet---puzzle kopia.png', 123, 0),
(134, 'C_alfabet---puzzle kopia.png', 124, 0),
(135, 'D_alfabet---puzzle kopia.png', 125, 0),
(136, 'E_alfabet---puzzle kopia.png', 126, 0),
(137, 'F_alfabet---puzzle kopia.png', 127, 0),
(138, 'G_alfabet---puzzle kopia.png', 128, 0),
(139, '_P3B1506_.jpg', 129, 0),
(140, '_P3B1527_.jpg', 129, 0),
(141, '_P3B1507_.jpg', 130, 0),
(142, '_P3B1532_.jpg', 130, 0),
(143, '_P3B1512_.jpg', 131, 0),
(144, '_P3B1536_.jpg', 131, 0),
(145, '_P3B1509_.jpg', 132, 0),
(146, '_P3B1539_.jpg', 132, 0),
(147, 'biala.jpg', 133, 0),
(148, 'butelkowa.jpg', 134, 0),
(149, 'czarna.jpg', 135, 0),
(150, 'czerwona.jpg', 136, 0),
(151, 'oliwka.jpg', 137, 0),
(152, 'szara.jpg', 138, 0),
(154, 'biała jednorozec.jpg', 139, 0),
(155, 'biała sw.jpg', 139, 0),
(156, 'biała tył.jpg', 139, 0),
(157, 'biała wrotki.jpg', 139, 0),
(158, 'czarna sw.jpg', 139, 0),
(159, '_P3B1482_.jpg', 140, 1),
(160, '_P3B1484_.jpg', 141, 1),
(161, '_P3B1486_.jpg', 142, 1),
(162, '_P3B1488_.jpg', 143, 1),
(163, '_P3B1509_.jpg', 144, 1),
(164, '_P3B1539_.jpg', 144, 0),
(165, '_P3B1519_.jpg', 145, 1),
(166, '_P3B1546_.jpg', 145, 0),
(167, '_P3B6159.jpg', 146, 1),
(168, '_P3B6163.jpg', 147, 1),
(169, '5s jednorozec.jpg', 148, 1),
(170, '6s jednorozec.jpg', 148, 0),
(171, '5s korony.jpg', 149, 1),
(172, '6s korony.jpg', 149, 0),
(173, 'biala sw.jpg', 150, 1),
(174, 'biała wrotki.jpg', 151, 1),
(175, 'biala.jpg', 152, 1),
(176, 'butelkowa.jpg', 153, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `adresy`
--
ALTER TABLE `adresy`
  ADD PRIMARY KEY (`id_adresu`);

--
-- Indexes for table `dostawa`
--
ALTER TABLE `dostawa`
  ADD PRIMARY KEY (`id_dostawy`);

--
-- Indexes for table `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id_kategorii`);

--
-- Indexes for table `kategorie_zawieszek`
--
ALTER TABLE `kategorie_zawieszek`
  ADD PRIMARY KEY (`id_kategorii_zawieszek`);

--
-- Indexes for table `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id_produktu`);

--
-- Indexes for table `stale_ceny`
--
ALTER TABLE `stale_ceny`
  ADD PRIMARY KEY (`id_stalej_ceny`);

--
-- Indexes for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id_uzytkownika`);

--
-- Indexes for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zamowienia`);

--
-- Indexes for table `zam_tow`
--
ALTER TABLE `zam_tow`
  ADD PRIMARY KEY (`id_zam_tow`);

--
-- Indexes for table `zdjecia`
--
ALTER TABLE `zdjecia`
  ADD PRIMARY KEY (`id_zdjecia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `adresy`
--
ALTER TABLE `adresy`
  MODIFY `id_adresu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT dla tabeli `dostawa`
--
ALTER TABLE `dostawa`
  MODIFY `id_dostawy` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id_kategorii` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT dla tabeli `kategorie_zawieszek`
--
ALTER TABLE `kategorie_zawieszek`
  MODIFY `id_kategorii_zawieszek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id_produktu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT dla tabeli `stale_ceny`
--
ALTER TABLE `stale_ceny`
  MODIFY `id_stalej_ceny` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id_uzytkownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id_zamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT dla tabeli `zam_tow`
--
ALTER TABLE `zam_tow`
  MODIFY `id_zam_tow` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  MODIFY `id_zdjecia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
