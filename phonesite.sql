-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 23 2020 г., 18:16
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `phonesite`
--

-- --------------------------------------------------------

--
-- Структура таблицы `phonecreater`
--

CREATE TABLE `phonecreater` (
  `id` int(11) NOT NULL,
  `name` char(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` char(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `phonecreater`
--

INSERT INTO `phonecreater` (`id`, `name`, `country`) VALUES
(1, 'Apple', 'USA'),
(2, 'Samsung', 'South Korea'),
(3, 'Xiaomi', 'China');

-- --------------------------------------------------------

--
-- Структура таблицы `phones`
--

CREATE TABLE `phones` (
  `id` int(11) NOT NULL,
  `author` int(11) DEFAULT NULL,
  `name` char(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `phones`
--

INSERT INTO `phones` (`id`, `author`, `name`, `descriptin`, `img`, `price`) VALUES
(1, 1, 'Iphone 10', 'Представленный параллельно с «восьмёркой», iPhone с приставкой X (читается как «десять») выдался в разы оригинальнее классики. Экран смартфона юбилейного поколения граничит с боковыми гранями корпуса со всех сторон (за исключением выреза в верхней части, где разместилась фронталка с разрешением 7 МП и датчики системы FaceID). Вместо привычного способа разблокировки девайса по отпечатку пальцев на борту Apple iPhone X 64GB применяется аутентификация владельца устройства по лицу. Естественно, что лучшему из «айфонов» досталась самая прогрессивная на момент анонса «начинка» с существенным запасом мощности на отдалённую перспективу. Сдвоенная основная камера смартфона (12 + 12 МП) оснащена оптической стабилизацией (для каждого из объективов — широкоугольного со светосилой f/1.8 и портретного с максимальной апертурой f/2.4). Мобильный гаджет обзавёлся поддержкой технологии беспроводной зарядки, влагозащитой по стандарту IP67 и полным набором коммуникационных модулей, включая чип NFC.', '/images/goods/iphone.jpg', '37990.000'),
(2, 2, 'Galaxy S10', 'В отличии от S9 — крупнее дисплей, при практически тех же габаритах, но убран 3D Touch. Лучше камера (улучшены алгоритмы + матрица). Фронтальная камера снимает видео 2160р (у предшественника 1440р). Более емкий аккумулятор (3400 мАч против 3000 мАч)', '/images/goods/samsung.jpg', '44000.000'),
(3, 3, 'Poco F2 Pro', 'Долгожданное пополнение в ряду «Покофонов» — отдельной касты смартфонов Xiaomi, позиционируемой в качестве флагманской по доступной цене. С лица модель встречает пользователя цельным безрамочным экраном на подложке из матрицы типа Super AMOLED с размерами по диагонали 6.67 дюймов. С учётом пропорций 20:9 изображение выводится на дисплей гаджета в формате FullHD+ (2400х1080 пикселей). Экран Xiaomi Poco F2 Pro 128GB порадует встроенным сканером отпечатка пальцев и отсутствием надоедливых вырезов, что реализовано за счёт внедрения в конструкцию аппарата фронталки-перископа. 20 МП селфи-камера «выезжает» из верхнего торца корпуса смартфона по вызову. Система датчиков на её борту способна определить момент падения устройства и быстро спрятать камеру во избежание повреждений. Основная «фотообойма» смартфона объединяет под крылом 4 датчика изображения с ведущим 64 МП сенсором «во главе стола». Высокую производительность ворочания приложений вне зависимости от степени их «тяжести» обеспечивает флагманское «железо» в составе чипсета Snapdragon 865 с поддержкой 5G, 6 ГБ ОЗУ и графики Adreno 650. Объём нерасширяемой постоянной памяти у смартфона равен 128 ГБ. Прочее оснащение модели предусматривает наличие ИК-порта для управления домашней электроникой, NFC-чипа и долгоиграющей аккумуляторной батареи ёмкостью 4700 мАч. Дабы долго не «куковать» у розетки, батарее «подвезли» поддержку ускоренной 33-ваттной зарядки — восполнить энергетические запасы в её баках на все 100 % можно всего за 63 мин.', '/images/goods/xiaomi.jpg', '40000.000');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `phonecreater`
--
ALTER TABLE `phonecreater`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `phonecreater`
--
ALTER TABLE `phonecreater`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `phones`
--
ALTER TABLE `phones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `phones`
--
ALTER TABLE `phones`
  ADD CONSTRAINT `phones_ibfk_1` FOREIGN KEY (`author`) REFERENCES `phonecreater` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
