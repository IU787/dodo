-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 04 2020 г., 20:25
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dodo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(10) NOT NULL,
  `category` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  `text` varchar(250) NOT NULL,
  `price` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `category`, `name`, `img`, `text`, `price`) VALUES
(1, 'Пицца', 'Пепперони', 'pep.jpg', 'Пикантная пепперони, увеличенная порция моцареллы, томатный соус', 495),
(2, 'Пицца', 'Сырный цыпленок', 'chch.jpg', 'Цыпленок, сырный соус, моцарелла, томаты', 495),
(3, 'Пицца', 'Ветчина и сыр', 'hch.jpg', 'Ветчина, моцарелла, соус альфредо', 375),
(4, 'Пицца', 'Цыпленок ранч', 'https://dodopizza-a.akamaihd.net/static/Img/Products/Pizza/ru-RU/2822916b-039c-4dfc-916a-73ca0daa9320.jpg', 'Цыпленок, ветчина, соус ранч, моцарелла, томаты, чеснок', 545),
(5, 'Напитки', 'Coca-cola Orange', 'https://dodopizza-a.akamaihd.net/static/Img/Products/60db007019724c83a93e82b197169222_292x292.jpeg', '0,5 л', 115),
(6, 'Напитки', 'Марокканский пунш', 'https://dodopizza-a.akamaihd.net/static/Img/Products/c1b00331327145d285117c147257dd10_292x292.jpeg', 'Согревающий пряный напиток с мякотью апельсина, соком лайма, имбирем, корицей, бадьяном, кориандром и гвоздикой, 0,3 л', 125),
(7, 'Напитки', 'FuzeTea Черный с лимоном и лемонграссом', 'https://dodopizza-a.akamaihd.net/static/Img/Products/Drinks/ru-RU/1336cd2b-368a-4ff6-92a6-ea51020b76d6.jpg', '0,5 л', 115),
(8, 'Напитки', 'Пряный латте', 'https://dodopizza-a.akamaihd.net/static/Img/Products/104ae812d62e4987a8b2de1603dd8b30_292x292.jpeg', 'Горячий напиток на основе эспрессо с увеличенной порцией молока, корицей и сиропом с медово-пряным вкусом, 0,3 л', 165),
(9, 'Десерты', 'Мороженое 6 мини-эскимо', 'https://dodopizza-a.akamaihd.net/static/Img/Products/6d87e8a7b1c44be2a1daf842eb1c7d32_292x292.jpeg', 'Три изысканных вкуса: с миндалем, с кусочками брауни, с кешью и кукурузными хлопьями, 294 г. Пищевая ценность — в разделе «Калорийность и состав»', 445),
(10, 'Десерты', 'Чизкейк Нью-Йорк', 'https://dodopizza-a.akamaihd.net/static/Img/Products/Desserts/ru-RU/bff11e98-1ee7-4d9f-aa73-1923a9c85bb9.jpg', 'Классический американский творожный десерт', 139),
(11, 'Десерты', 'Пончик Три шоколада', 'https://dodopizza-a.akamaihd.net/static/Img/Products/779d5195e209478887aee4202d5e05ee_292x292.jpeg', 'Нежный пончик с шоколадной начинкой, глазурью и посыпкой', 109),
(12, 'Десерты', 'Шоколадный маффин', 'https://dodopizza-a.akamaihd.net/static/Img/Products/Desserts/ru-RU/e1e419f1-e924-4aa6-a42d-2ce93a573044.jpg', 'Сдобный шоколадный кекс', 99),
(13, 'Закуски', 'Ланчбокс с крыльями барбекю', 'https://dodopizza-a.akamaihd.net/static/Img/Products/b583f7299d8c4e4fa313f65ef72e7449_292x292.jpeg', 'Горячий сытный обед из куриных крыльев со специями и ароматом копчения, картофеля из печи с итальянскими травами и соуса барбекю', 345),
(14, 'Закуски', 'Паста Четыре сыра', 'https://dodopizza-a.akamaihd.net/static/Img/Products/bf64ba7bf4df4660b8ea22270d137e15_292x292.jpeg', 'Паста, сыры блю чиз, чеддер, пармезан и моцарелла, соус альфредо', 315),
(15, 'Закуски', 'Рулетики с пепперони + Рулетики с сыром, 16 шт', 'https://dodopizza-a.akamaihd.net/static/Img/Products/094f01e3ef054e108c9e48ea9b511d5d_292x292.jpeg', 'Микс горячих рулетиков с сырным соусом: 8 штук с пепперони и моцареллой, 8 штук с моцареллой', 295),
(16, 'Закуски', 'Салат Цезарь', 'https://dodopizza-a.akamaihd.net/static/Img/Products/0e40a10713204a34991fd45d757f9b68_292x292.jpeg', 'Запеченная куриная грудка, пшеничные гренки, салат айсберг, томаты черри, смесь сыров чеддер и пармезан, итальянские травы, соус цезарь', 275);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
