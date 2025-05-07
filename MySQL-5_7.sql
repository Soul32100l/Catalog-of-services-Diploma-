-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: MySQL-5.7
-- Время создания: Май 07 2025 г., 18:13
-- Версия сервера: 5.7.44
-- Версия PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cource`
--
CREATE DATABASE IF NOT EXISTS `cource` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `cource`;

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(255) NOT NULL,
  `heading` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `article`
--

INSERT INTO `article` (`id`, `heading`, `description`, `img_name`, `img_path`, `file_name`, `file_path`, `uploaded_at`) VALUES
(13, 'Изучаем Python. Программирование игр, визуализация данных, веб-прило жения', 'Книга «Изучаем Python» — это ускоренный курс, который позволит вам сэкономить время\r\nи сразу начать писать работоспособные программы (игры, визуализации данных, веб-приложения\r\nи многое другое). Хотите стать программистом? В первой части книги вам предстоит узнать о базовых принципах программирования, познакомиться со списками, словарями, классами и циклами, вы\r\nнаучитесь создавать программы и тестировать код. Во второй части книги вы начнете использовать\r\nзнания на практике, работая над тремя крупными проектами: создадите собственную «стрелялку»\r\nс нарастающей сложностью уровней, займетесь работой с большими наборами данных и освоите их\r\nвизуализацию, и, наконец, создадите полноценное веб-приложение на базе Django, гарантирующее\r\nконфиденциальность пользовательской информации. Если вы решились разобраться в том, что такое\r\nпрограммирование, не нужно ждать. Ключ на старт и вперед!', '67ad96460ec97_1.png', '../src/uploads/67ad96460ec97_1.png', '67ad96460ec7b_00000E_metiz___Izuchaem_Python_Progra.pdf', '../src/uploads/67ad96460ec7b_00000E_metiz___Izuchaem_Python_Progra.pdf', '2025-02-13 06:50:46'),
(14, 'Герберт Шилдт: С++ базовый курс', 'В этой книге описаны все основные средства языка С++ - от элементарных понятий до\r\nсупервозможностей. После рассмотрения основ программирования на C++ (переменных,\r\nоператоров, инструкций управления, функций, классов и объектов) читатель освоит такие\r\nболее сложные средства языка, как механизм обработки исключительных ситуаций\r\n(исключений), шаблоны, пространства имен, динамическая идентификация типов,\r\nстандартная библиотека шаблонов (STL), а также познакомится с расширенным набором\r\nключевых слов, используемых в .NET-программировании. Автор справочника -\r\nобщепризнанный авторитет в области программирования на языках C и C++, Java и C# -\r\nвключил в текст своей кни', '67ad9696c8b4b_2.png', '../src/uploads/67ad9696c8b4b_2.png', '67ad9696c8b37_12_100229_1_98220.pdf', '../src/uploads/67ad9696c8b37_12_100229_1_98220.pdf', '2025-02-13 06:52:06'),
(15, 'А.А. Тюгашев ОСНОВЫ ПРОГРАММИРОВАНИЯ Учебное пособие. Часть I.', 'Учебное пособие содержит теоретический материал и лабораторный практикум \r\nдля изучения дисциплины «Основы программирования». Представлен \r\nпанорамный взгляд на предметную область, с представлением не только \r\nтрадиционной императивной, но и функциональной, и логической парадигм \r\nпрограммирования, исторической ретроспективы и связи с другими областями \r\nинформатики. Приводится сравнение программирования на языках высокого и \r\nнизкого уровней (ассемблер). Несмотря на обзорный характер, после прочтения \r\nи прохождения входящего в книгу лабораторного практикума студент будет \r\nспособен писать программы средней сложности на языках С/С++. Книга \r\nсодержит и специальные главы, посвященные жизненному циклу программных \r\nсредств современной ИТ-индустрии, проблеме ошибок в программах и методах \r\nверификации программного обеспечения, стилю программирования.', '67ad96f86e124_3.png', '../src/uploads/67ad96f86e124_3.png', '67ad96f86e111_1917.pdf', '../src/uploads/67ad96f86e111_1917.pdf', '2025-02-13 06:53:44'),
(16, 'Django Разработка вебприложений на Python', 'зином «Books.Ru – Книги России» единственный легальный способ\r\nполучения данного файла с книгой ISBN 9785932861677, назва\r\nние «Django. Разработка вебприложений на Python» – покупка в\r\nИнтернетмагазине «Books.Ru – Книги России». Если Вы получили\r\nданный файл какимлибо другим образом, Вы нарушили междуна\r\nродное законодательство и законодательство Российской Федерации\r\nоб охране авторского права. Вам необходимо удалить данный файл,\r\nа также сообщить издательству «Симво', '67ad97870ac2c_4.png', '../src/uploads/67ad97870ac2c_4.png', '67ad97870ac16_django_razrabotka_veb-prilozhenii_na_python_fail_pdf_668993.pdf', '../src/uploads/67ad97870ac16_django_razrabotka_veb-prilozhenii_na_python_fail_pdf_668993.pdf', '2025-02-13 06:56:07'),
(17, 'рррррррррррррррррррррррррррр', 'одождррорбррбдрд', '67b32228c8d66_2.png', '../src/uploads/67b32228c8d66_2.png', '67b32228c8b9b_django_razrabotka_veb-prilozhenii_na_python_fail_pdf_668993.pdf', '../src/uploads/67b32228c8b9b_django_razrabotka_veb-prilozhenii_na_python_fail_pdf_668993.pdf', '2025-02-17 11:48:56'),
(18, 'аааааааааааааа', 'уйааааааааааааааааааа', '67d1ddecd0434_Frame 1.png', '../src/uploads/67d1ddecd0434_Frame 1.png', '67d1ddecd0429_Дьяченко Отчёт.pdf', '../src/uploads/67d1ddecd0429_Дьяченко Отчёт.pdf', '2025-03-12 19:18:04');

-- --------------------------------------------------------

--
-- Структура таблицы `pdf_files`
--

DROP TABLE IF EXISTS `pdf_files`;
CREATE TABLE `pdf_files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pdf_files`
--

INSERT INTO `pdf_files` (`id`, `file_name`, `file_path`, `img_name`, `img_path`, `uploaded_at`) VALUES
(1, 'Вводный инструктаж по гражданской обороне (для просмотра используйте программу для чтения PDF) (1).pdf', '../uploads/Вводный инструктаж по гражданской обороне (для просмотра используйте программу для чтения PDF) (1).pdf', '', '', '2025-02-08 14:12:49'),
(2, '67a77456a14b7_Вводный инструктаж по гражданской обороне (для просмотра используйте программу для чтения PDF).pdf', '../uploads/67a77456a14b7_Вводный инструктаж по гражданской обороне (для просмотра используйте программу для чтения PDF).pdf', '67a77456a14c4_whatsapp_logo_icon_147205.png', '../uploads/67a77456a14c4_whatsapp_logo_icon_147205.png', '2025-02-08 15:12:22'),
(3, '67a7768b04c22_Бизнес план. Шаблон для заполнения.pdf', '../uploads/67a7768b04c22_Бизнес план. Шаблон для заполнения.pdf', '67a7768b04c2a_whatsapp_logo_icon_147205.png', '../uploads/67a7768b04c2a_whatsapp_logo_icon_147205.png', '2025-02-08 15:21:47');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_token_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `phone`, `reset_token`, `reset_token_expiry`) VALUES
(1, 'admin', '$2y$10$KNDHCmOeOSI6oPBMeyY5yOkT9VQzTFr9jHjLjqSBq0dxL4NPDkzoK', 'admin@admin.ru', '', NULL, NULL),
(2, 'admin1', '$2y$10$JUZ.qGQjnXwzr4s3sp2KiOb5pMrLz8C7Ozm/NkRTepG.cuTRYuJKe', 'soulpc32100@gmail.com', '', NULL, NULL),
(4, 'lol', '$2y$10$EMMdu/02jtLJB/dsWeqPvutwovfGxcS2EEy57DFDbWYqnb6RVJFe2', 'l3seg@yandex.rud', '', NULL, NULL),
(5, 'test', '$2y$10$Uj4auSp0db1ME5CSyPXah.slEo3CM3zGsq7iSwQEzY5FTZ.XlbAxe', 'l3seg@yandex.ru', NULL, '544dc617c8418e7be57783da358e7f5f6558db9d922d4bad9997a9051ad7a99431166c41a57a57b7a11755e64eea2c39b2ab', '2025-03-12 13:26:48');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pdf_files`
--
ALTER TABLE `pdf_files`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `article`
--
ALTER TABLE `article`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `pdf_files`
--
ALTER TABLE `pdf_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- База данных: `medical_services`
--
CREATE DATABASE IF NOT EXISTS `medical_services` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `medical_services`;

-- --------------------------------------------------------

--
-- Структура таблицы `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `facility_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `full_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `document_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `medical_facility`
--

DROP TABLE IF EXISTS `medical_facility`;
CREATE TABLE `medical_facility` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_info` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `medical_facility`
--

INSERT INTO `medical_facility` (`id`, `name`, `address`, `contact_info`, `website`) VALUES
(11, 'Шпаковская районная больница, поликлиника', 'Ставропольский край, город Михайловск, улица Ленина, дом №1', '+7 (86553) 2-13-51, +7 (86553) 3-37-01', 'https://shpakrb.ru/'),
(12, 'Краевой эндокринологический диспансер', 'Ставропольский край, город Ставрополь, улица Дзержинского, дом 127, корпус 1', '+7 (8652) 99-78-07,  +7 (8652) 99-78-08,  +7 (8652) 99-79-67, Бухгалтерия: +7 (8652) 29-63-91, Приемная: +7 (8652) 26-43-72, +7 (8652) 29-70-02 ', 'http://stavendocrin.ru/');

-- --------------------------------------------------------

--
-- Структура таблицы `service_list`
--

DROP TABLE IF EXISTS `service_list`;
CREATE TABLE `service_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text,
  `required_documents` text,
  `institution_id` int(11) NOT NULL,
  `available_dates` text,
  `occupied_dates` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `service_list`
--

INSERT INTO `service_list` (`id`, `name`, `image_url`, `description`, `required_documents`, `institution_id`, `available_dates`, `occupied_dates`) VALUES
(9, 'Анализ крови. Гепатит \"В\" и \"С\"', '', 'Что такое гепатит В и С?\n- Гепатит В: Это вирусное заболевание, передающееся через кровь, биологические жидкости, а также при половом контакте. Может вызывать острые и хронические поражения печени.\n- Гепатит С: Также передается через кровь, чаще всего при использовании нестерильных медицинских инструментов или при переливании крови. Этот вирус часто протекает бессимптомно, но может привести к хроническому воспалению печени.\n\nДля чего делается анализ?\n- Диагностика: Анализ помогает определить наличие вируса в организме.\n- Оценка состояния здоровья: Выявляет степень поражения печени и активность вируса.\n- Контроль лечения: Помогает оценить эффективность терапии.\n- Профилактика: Анализ может быть частью скрининга для предотвращения распространения инфекции.\n', NULL, 11, '', ''),
(10, 'dsdsdb', '', 'sdvsdv', NULL, 11, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('admin','guest') COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `last_name`, `first_name`, `middle_name`, `phone`, `email`, `status`, `password_hash`) VALUES
(3, 'admin', 'Дьяченко', 'Дмитрий', 'Сергеевич', '89886288131', 'admin@admin.com', 'admin', '$2b$12$PT86rThSvodKz7D/5QFZE.WxgY2aP6TU8Pe1xwyYXyzVhf6.dfEia');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facility_id` (`facility_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Индексы таблицы `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`);

--
-- Индексы таблицы `medical_facility`
--
ALTER TABLE `medical_facility`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_institution` (`institution_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `medical_facility`
--
ALTER TABLE `medical_facility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`facility_id`) REFERENCES `medical_facility` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `service_list` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service_list` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `service_list`
--
ALTER TABLE `service_list`
  ADD CONSTRAINT `fk_institution` FOREIGN KEY (`institution_id`) REFERENCES `medical_facility` (`id`) ON DELETE CASCADE;
--
-- База данных: `mi`
--
CREATE DATABASE IF NOT EXISTS `mi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `mi`;

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `status`) VALUES
(1, 'soul', '$2y$10$9dEEE2Z1advEf5FEpbOs0O84KVCSSEuCbGlpsgMtOCFq0E4/1w8I.', 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `repo_url` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demo_url` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_image` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `skills`
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_url` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_url` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `status`, `avatar_url`, `background_url`) VALUES
(1, 'soul', 'status soul', 'uploads/avatars/avatar_1_67f66bf7426dc.jpg', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user_skills`
--

DROP TABLE IF EXISTS `user_skills`;
CREATE TABLE `user_skills` (
  `user_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `level` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_skills`
--
ALTER TABLE `user_skills`
  ADD PRIMARY KEY (`user_id`,`skill_id`),
  ADD KEY `skill_id` (`skill_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_skills`
--
ALTER TABLE `user_skills`
  ADD CONSTRAINT `user_skills_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_skills_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`);
--
-- База данных: `portpholio`
--
CREATE DATABASE IF NOT EXISTS `portpholio` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `portpholio`;
--
-- База данных: `python_db`
--
CREATE DATABASE IF NOT EXISTS `python_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `python_db`;
--
-- База данных: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- База данных: `WordPress`
--
CREATE DATABASE IF NOT EXISTS `WordPress` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `WordPress`;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_agronomycfs_sessions`
--

DROP TABLE IF EXISTS `wp_agronomycfs_sessions`;
CREATE TABLE `wp_agronomycfs_sessions` (
  `id` varchar(32) NOT NULL,
  `data` text,
  `expires` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_agronomycfs_sessions`
--

INSERT INTO `wp_agronomycfs_sessions` (`id`, `data`, `expires`) VALUES
('13c117d385110d0e5892c41a369813a0', 'a:7:{s:7:\"post_id\";i:27;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:35;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1719930744'),
('63caad4d586b48f31a9002c6c815424e', 'a:7:{s:7:\"post_id\";i:27;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:35;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1719930701'),
('aa39c3b4c7a2da0b734ce2a176da6f8f', 'a:7:{s:7:\"post_id\";i:27;s:9:\"post_type\";s:4:\"post\";s:11:\"post_status\";s:5:\"draft\";s:12:\"field_groups\";a:1:{i:0;i:35;}s:20:\"confirmation_message\";s:0:\"\";s:16:\"confirmation_url\";s:0:\"\";s:9:\"front_end\";b:0;}', '1720193393');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_agronomycfs_values`
--

DROP TABLE IF EXISTS `wp_agronomycfs_values`;
CREATE TABLE `wp_agronomycfs_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED DEFAULT NULL,
  `meta_id` int(10) UNSIGNED DEFAULT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `base_field_id` int(10) UNSIGNED DEFAULT '0',
  `hierarchy` text,
  `depth` int(10) UNSIGNED DEFAULT '0',
  `weight` int(10) UNSIGNED DEFAULT '0',
  `sub_weight` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_agronomycfs_values`
--

INSERT INTO `wp_agronomycfs_values` (`id`, `field_id`, `meta_id`, `post_id`, `base_field_id`, `hierarchy`, `depth`, `weight`, `sub_weight`) VALUES
(3, 1, 72, 37, 0, '', 0, 0, 0),
(4, 2, 73, 37, 0, '', 0, 0, 0),
(5, 1, 78, 39, 0, '', 0, 0, 0),
(6, 2, 79, 39, 0, '', 0, 0, 0),
(7, 1, 84, 41, 0, '', 0, 0, 0),
(8, 2, 85, 41, 0, '', 0, 0, 0),
(9, 1, 90, 43, 0, '', 0, 0, 0),
(10, 2, 91, 43, 0, '', 0, 0, 0),
(11, 1, 96, 45, 0, '', 0, 0, 0),
(12, 2, 97, 45, 0, '', 0, 0, 0),
(13, 1, 102, 47, 0, '', 0, 0, 0),
(14, 2, 103, 47, 0, '', 0, 0, 0),
(15, 1, 215, 27, 0, '', 0, 0, 0),
(16, 2, 216, 27, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_agronomycommentmeta`
--

DROP TABLE IF EXISTS `wp_agronomycommentmeta`;
CREATE TABLE `wp_agronomycommentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_agronomycomments`
--

DROP TABLE IF EXISTS `wp_agronomycomments`;
CREATE TABLE `wp_agronomycomments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_agronomylinks`
--

DROP TABLE IF EXISTS `wp_agronomylinks`;
CREATE TABLE `wp_agronomylinks` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_agronomyoptions`
--

DROP TABLE IF EXISTS `wp_agronomyoptions`;
CREATE TABLE `wp_agronomyoptions` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_agronomyoptions`
--

INSERT INTO `wp_agronomyoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://agr', 'yes'),
(2, 'home', 'https://agr', 'yes'),
(3, 'blogname', 'Agronomy', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'soulpc32100@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:111:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:31:\"cfs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"cfs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"cfs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"cfs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"cfs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"cfs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"cfs/([^/]+)/embed/?$\";s:51:\"index.php?post_type=cfs&name=$matches[1]&embed=true\";s:24:\"cfs/([^/]+)/trackback/?$\";s:45:\"index.php?post_type=cfs&name=$matches[1]&tb=1\";s:32:\"cfs/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?post_type=cfs&name=$matches[1]&paged=$matches[2]\";s:39:\"cfs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:58:\"index.php?post_type=cfs&name=$matches[1]&cpage=$matches[2]\";s:28:\"cfs/([^/]+)(?:/([0-9]+))?/?$\";s:57:\"index.php?post_type=cfs&name=$matches[1]&page=$matches[2]\";s:20:\"cfs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"cfs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"cfs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"cfs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"cfs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"cfs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=27&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:26:\"custom-field-suite/cfs.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Agronomy', 'yes'),
(41, 'stylesheet', 'Agronomy', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '57155', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '30', 'yes'),
(82, 'page_on_front', '27', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '22', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1735321762', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '57155', 'yes'),
(101, 'wp_agronomyuser_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'WPLANG', 'ru_RU', 'yes'),
(104, 'user_count', '1', 'no'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:7:{i:1745750965;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1745776165;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1745776167;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1745776170;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1745776171;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1745862565;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.5.4\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(124, 'recovery_keys', 'a:0:{}', 'yes'),
(140, 'can_compress_scripts', '1', 'yes'),
(151, 'theme_mods_twentytwentyfour', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1719769782;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'no'),
(152, 'current_theme', 'Agronomy', 'yes'),
(153, 'theme_mods_Agronomy', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"header\";i:2;s:6:\"burger\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:20;s:10:\"burger_ico\";s:53:\"https://agr/wp-content/uploads/2024/06/burgermenu.png\";s:11:\"tg_link_ico\";s:55:\"https://agr/wp-content/uploads/2024/06/telegram.ico.png\";s:11:\"vk_link_ico\";s:49:\"https://agr/wp-content/uploads/2024/06/vk.ico.png\";}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(159, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"soulpc32100@gmail.com\";s:7:\"version\";s:3:\"6.8\";s:9:\"timestamp\";i:1745748490;}', 'off'),
(162, 'finished_updating_comment_type', '1', 'yes'),
(171, 'site_logo', '20', 'yes'),
(172, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'no'),
(173, 'recently_activated', 'a:0:{}', 'yes'),
(178, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1745748489;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}s:7:\"checked\";a:1:{s:26:\"custom-field-suite/cfs.php\";s:5:\"2.6.7\";}}', 'off'),
(180, 'cfs_next_field_id', '3', 'yes'),
(181, 'cfs_version', '2.6.7', 'yes'),
(186, 'category_children', 'a:0:{}', 'yes'),
(197, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(208, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(213, '_transient_health-check-site-status-result', '{\"good\":19,\"recommended\":4,\"critical\":0}', 'yes'),
(238, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"750f89796968216d1e5016ffd34a930e\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(243, '_site_transient_timeout_theme_roots', '1745750171', 'off'),
(244, '_site_transient_theme_roots', 'a:6:{s:8:\"Agronomy\";s:7:\"/themes\";s:15:\"hello-elementor\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'off'),
(246, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.8\";s:7:\"version\";s:3:\"6.8\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.8.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.8-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.8-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.8\";s:7:\"version\";s:3:\"6.8\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.8.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.8\";s:7:\"version\";s:3:\"6.8\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1745748489;s:15:\"version_checked\";s:5:\"6.7.2\";s:12:\"translations\";a:0:{}}', 'off'),
(247, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1745748489;s:7:\"checked\";a:6:{s:8:\"Agronomy\";s:0:\"\";s:15:\"hello-elementor\";s:5:\"3.1.0\";s:16:\"twentytwentyfive\";s:3:\"1.0\";s:16:\"twentytwentyfour\";s:3:\"1.1\";s:17:\"twentytwentythree\";s:3:\"1.4\";s:15:\"twentytwentytwo\";s:3:\"1.7\";}s:8:\"response\";a:5:{s:15:\"hello-elementor\";a:6:{s:5:\"theme\";s:15:\"hello-elementor\";s:11:\"new_version\";s:5:\"3.3.0\";s:3:\"url\";s:45:\"https://wordpress.org/themes/hello-elementor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/hello-elementor.3.3.0.zip\";s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";}s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.2.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.2.0.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(248, '_site_transient_timeout_php_check_990bfacb848fa087bcfc06850f5e4447', '1746353290', 'off'),
(249, '_site_transient_php_check_990bfacb848fa087bcfc06850f5e4447', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(250, '_site_transient_timeout_wp_theme_files_patterns-5b74cd2d930bc146410be5d03a78c181', '1745750294', 'off'),
(251, '_site_transient_wp_theme_files_patterns-5b74cd2d930bc146410be5d03a78c181', 'a:2:{s:7:\"version\";s:0:\"\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_agronomypostmeta`
--

DROP TABLE IF EXISTS `wp_agronomypostmeta`;
CREATE TABLE `wp_agronomypostmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_agronomypostmeta`
--

INSERT INTO `wp_agronomypostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'template/policy.php'),
(3, 5, '_wp_attached_file', '2024/06/telegram_icon_130816-1.png'),
(4, 5, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:34:\"2024/06/telegram_icon_130816-1.png\";s:8:\"filesize\";i:1226;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_wp_attached_file', '2024/06/Vector.png'),
(6, 6, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:30;s:6:\"height\";i:30;s:4:\"file\";s:18:\"2024/06/Vector.png\";s:8:\"filesize\";i:340;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 7, '_wp_attached_file', '2024/06/vk.ico.png'),
(8, 7, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:24;s:6:\"height\";i:24;s:4:\"file\";s:18:\"2024/06/vk.ico.png\";s:8:\"filesize\";i:463;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 8, '_wp_attached_file', '2024/06/Youtube_icon-icons.com_66802-1.png'),
(10, 8, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:42:\"2024/06/Youtube_icon-icons.com_66802-1.png\";s:8:\"filesize\";i:703;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 9, '_wp_attached_file', '2024/06/background.png'),
(12, 9, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:970;s:4:\"file\";s:22:\"2024/06/background.png\";s:8:\"filesize\";i:3095938;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"background-300x152.png\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:96717;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"background-1024x517.png\";s:5:\"width\";i:1024;s:6:\"height\";i:517;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1038010;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"background-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:51036;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"background-768x388.png\";s:5:\"width\";i:768;s:6:\"height\";i:388;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:598067;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"background-1536x776.png\";s:5:\"width\";i:1536;s:6:\"height\";i:776;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2148316;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 10, '_wp_attached_file', '2024/06/burgermenu.png'),
(14, 10, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:60;s:6:\"height\";i:50;s:4:\"file\";s:22:\"2024/06/burgermenu.png\";s:8:\"filesize\";i:371;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 11, '_wp_attached_file', '2024/06/doc.ico.png'),
(16, 11, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:18;s:6:\"height\";i:24;s:4:\"file\";s:19:\"2024/06/doc.ico.png\";s:8:\"filesize\";i:270;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 12, '_wp_attached_file', '2024/06/iconfinder-social-media-applications-32vk-4102593_113806-1.png'),
(18, 12, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:70:\"2024/06/iconfinder-social-media-applications-32vk-4102593_113806-1.png\";s:8:\"filesize\";i:1131;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 13, '_wp_attached_file', '2024/06/image-2-1-1.png'),
(20, 13, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:434;s:6:\"height\";i:434;s:4:\"file\";s:23:\"2024/06/image-2-1-1.png\";s:8:\"filesize\";i:173847;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"image-2-1-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:87353;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"image-2-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:29109;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 14, '_wp_attached_file', '2024/06/logo-mini.png'),
(22, 14, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:35;s:6:\"height\";i:30;s:4:\"file\";s:21:\"2024/06/logo-mini.png\";s:8:\"filesize\";i:883;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 15, '_wp_attached_file', '2024/06/logo.png'),
(24, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:303;s:6:\"height\";i:64;s:4:\"file\";s:16:\"2024/06/logo.png\";s:8:\"filesize\";i:9022;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"logo-300x63.png\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15926;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"logo-150x64.png\";s:5:\"width\";i:150;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6243;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 16, '_wp_attached_file', '2024/06/point.png'),
(26, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:19;s:6:\"height\";i:24;s:4:\"file\";s:17:\"2024/06/point.png\";s:8:\"filesize\";i:370;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 17, '_wp_attached_file', '2024/06/primer_towar.png'),
(28, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:267;s:6:\"height\";i:249;s:4:\"file\";s:24:\"2024/06/primer_towar.png\";s:8:\"filesize\";i:56243;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"primer_towar-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21948;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 18, '_wp_attached_file', '2024/06/Rectangle-6.png'),
(30, 18, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:30;s:6:\"height\";i:4;s:4:\"file\";s:23:\"2024/06/Rectangle-6.png\";s:8:\"filesize\";i:165;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 19, '_wp_attached_file', '2024/06/telegram.ico.png'),
(32, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:29;s:6:\"height\";i:24;s:4:\"file\";s:24:\"2024/06/telegram.ico.png\";s:8:\"filesize\";i:448;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 20, '_wp_attached_file', '2024/06/cropped-logo.png'),
(34, 20, '_wp_attachment_context', 'custom-logo'),
(35, 20, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:60;s:4:\"file\";s:24:\"2024/06/cropped-logo.png\";s:8:\"filesize\";i:15877;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"cropped-logo-150x60.png\";s:5:\"width\";i:150;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9921;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 22, '_wp_attached_file', '2024/06/cropped-logo-mini.png'),
(38, 22, '_wp_attachment_context', 'site-icon'),
(39, 22, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:29:\"2024/06/cropped-logo-mini.png\";s:8:\"filesize\";i:41624;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"cropped-logo-mini-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22163;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"cropped-logo-mini-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9187;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:29:\"cropped-logo-mini-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18783;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:29:\"cropped-logo-mini-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12726;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:29:\"cropped-logo-mini-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11631;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:27:\"cropped-logo-mini-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1381;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 3, '_edit_last', '1'),
(50, 3, '_edit_lock', '1719772654:1'),
(51, 27, '_edit_lock', '1720179056:1'),
(52, 27, '_edit_last', '1'),
(53, 27, '_wp_page_template', 'index.php'),
(54, 30, '_edit_lock', '1719773024:1'),
(55, 30, '_edit_last', '1'),
(56, 30, '_wp_page_template', 'template/AboutUs.php'),
(58, 33, '_edit_lock', '1719772902:1'),
(59, 35, '_edit_last', '1'),
(60, 35, '_edit_lock', '1719804059:1'),
(61, 35, 'cfs_fields', 'a:2:{i:0;a:8:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:17:\"background_up_img\";s:5:\"label\";s:17:\"background_up_img\";s:4:\"type\";s:4:\"file\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:0;s:6:\"weight\";i:0;s:7:\"options\";a:3:{s:9:\"file_type\";s:5:\"image\";s:12:\"return_value\";s:3:\"url\";s:8:\"required\";s:1:\"0\";}}i:1;a:8:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:19:\"background_up_video\";s:5:\"label\";s:19:\"background_up_video\";s:4:\"type\";s:4:\"file\";s:5:\"notes\";s:0:\"\";s:9:\"parent_id\";i:0;s:6:\"weight\";i:1;s:7:\"options\";a:3:{s:9:\"file_type\";s:5:\"video\";s:12:\"return_value\";s:3:\"url\";s:8:\"required\";s:1:\"0\";}}}'),
(62, 35, 'cfs_rules', 'a:1:{s:14:\"page_templates\";a:2:{s:8:\"operator\";s:2:\"==\";s:6:\"values\";a:1:{i:0;s:9:\"index.php\";}}}'),
(63, 35, 'cfs_extras', 'a:3:{s:5:\"order\";s:1:\"0\";s:7:\"context\";s:4:\"side\";s:11:\"hide_editor\";s:1:\"0\";}'),
(70, 37, '_edit_lock', '1720192104:1'),
(72, 37, 'background_up_img', ''),
(73, 37, 'background_up_video', ''),
(74, 37, '_edit_last', '1'),
(76, 39, '_edit_lock', '1719803967:1'),
(78, 39, 'background_up_img', ''),
(79, 39, 'background_up_video', ''),
(80, 39, '_edit_last', '1'),
(82, 41, '_edit_lock', '1719803984:1'),
(84, 41, 'background_up_img', ''),
(85, 41, 'background_up_video', ''),
(86, 41, '_edit_last', '1'),
(88, 43, '_edit_lock', '1719804000:1'),
(90, 43, 'background_up_img', ''),
(91, 43, 'background_up_video', ''),
(92, 43, '_edit_last', '1'),
(94, 45, '_edit_lock', '1719804044:1'),
(96, 45, 'background_up_img', ''),
(97, 45, 'background_up_video', ''),
(98, 45, '_edit_last', '1'),
(100, 47, '_edit_lock', '1719804082:1'),
(102, 47, 'background_up_img', ''),
(103, 47, 'background_up_video', ''),
(104, 47, '_edit_last', '1'),
(105, 47, '_encloseme', '1'),
(106, 49, '_menu_item_type', 'post_type'),
(107, 49, '_menu_item_menu_item_parent', '0'),
(108, 49, '_menu_item_object_id', '33'),
(109, 49, '_menu_item_object', 'page'),
(110, 49, '_menu_item_target', ''),
(111, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 49, '_menu_item_xfn', ''),
(113, 49, '_menu_item_url', ''),
(115, 50, '_menu_item_type', 'post_type'),
(116, 50, '_menu_item_menu_item_parent', '0'),
(117, 50, '_menu_item_object_id', '30'),
(118, 50, '_menu_item_object', 'page'),
(119, 50, '_menu_item_target', ''),
(120, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 50, '_menu_item_xfn', ''),
(122, 50, '_menu_item_url', ''),
(124, 51, '_menu_item_type', 'post_type'),
(125, 51, '_menu_item_menu_item_parent', '0'),
(126, 51, '_menu_item_object_id', '45'),
(127, 51, '_menu_item_object', 'post'),
(128, 51, '_menu_item_target', ''),
(129, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 51, '_menu_item_xfn', ''),
(131, 51, '_menu_item_url', ''),
(133, 52, '_menu_item_type', 'post_type'),
(134, 52, '_menu_item_menu_item_parent', '0'),
(135, 52, '_menu_item_object_id', '37'),
(136, 52, '_menu_item_object', 'post'),
(137, 52, '_menu_item_target', ''),
(138, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 52, '_menu_item_xfn', ''),
(140, 52, '_menu_item_url', ''),
(142, 53, '_menu_item_type', 'post_type'),
(143, 53, '_menu_item_menu_item_parent', '0'),
(144, 53, '_menu_item_object_id', '41'),
(145, 53, '_menu_item_object', 'post'),
(146, 53, '_menu_item_target', ''),
(147, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 53, '_menu_item_xfn', ''),
(149, 53, '_menu_item_url', ''),
(151, 54, '_menu_item_type', 'post_type'),
(152, 54, '_menu_item_menu_item_parent', '0'),
(153, 54, '_menu_item_object_id', '47'),
(154, 54, '_menu_item_object', 'post'),
(155, 54, '_menu_item_target', ''),
(156, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(157, 54, '_menu_item_xfn', ''),
(158, 54, '_menu_item_url', ''),
(160, 55, '_menu_item_type', 'post_type'),
(161, 55, '_menu_item_menu_item_parent', '0'),
(162, 55, '_menu_item_object_id', '39'),
(163, 55, '_menu_item_object', 'post'),
(164, 55, '_menu_item_target', ''),
(165, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(166, 55, '_menu_item_xfn', ''),
(167, 55, '_menu_item_url', ''),
(169, 56, '_menu_item_type', 'post_type'),
(170, 56, '_menu_item_menu_item_parent', '0'),
(171, 56, '_menu_item_object_id', '43'),
(172, 56, '_menu_item_object', 'post'),
(173, 56, '_menu_item_target', ''),
(174, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(175, 56, '_menu_item_xfn', ''),
(176, 56, '_menu_item_url', ''),
(179, 58, '_menu_item_type', 'post_type'),
(180, 58, '_menu_item_menu_item_parent', '0'),
(181, 58, '_menu_item_object_id', '27'),
(182, 58, '_menu_item_object', 'page'),
(183, 58, '_menu_item_target', ''),
(184, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 58, '_menu_item_xfn', ''),
(186, 58, '_menu_item_url', ''),
(187, 59, '_menu_item_type', 'post_type'),
(188, 59, '_menu_item_menu_item_parent', '0'),
(189, 59, '_menu_item_object_id', '30'),
(190, 59, '_menu_item_object', 'page'),
(191, 59, '_menu_item_target', ''),
(192, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(193, 59, '_menu_item_xfn', ''),
(194, 59, '_menu_item_url', ''),
(195, 60, '_menu_item_type', 'post_type'),
(196, 60, '_menu_item_menu_item_parent', '0'),
(197, 60, '_menu_item_object_id', '39'),
(198, 60, '_menu_item_object', 'post'),
(199, 60, '_menu_item_target', ''),
(200, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(201, 60, '_menu_item_xfn', ''),
(202, 60, '_menu_item_url', ''),
(203, 61, '_menu_item_type', 'post_type'),
(204, 61, '_menu_item_menu_item_parent', '0'),
(205, 61, '_menu_item_object_id', '37'),
(206, 61, '_menu_item_object', 'post'),
(207, 61, '_menu_item_target', ''),
(208, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(209, 61, '_menu_item_xfn', ''),
(210, 61, '_menu_item_url', ''),
(213, 62, '_wp_attached_file', '2024/07/ЦЕОЛИТ-ZION-ЦИОН-есть-решение-в-150-РАЗ-ДЕШЕВЛЕ-ЗА-КОПЕЙКИ-БИОАКТИВАЦИЯ-ЦЕОЛИТА-ваш-ПРОФИТ.mp4'),
(214, 62, '_wp_attachment_metadata', 'a:11:{s:7:\"bitrate\";i:350034;s:8:\"filesize\";i:36402268;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:609;s:16:\"length_formatted\";s:5:\"10:09\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:9:{s:10:\"dataformat\";s:3:\"mp4\";s:7:\"bitrate\";i:127999;s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:44100;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";s:17:\"compression_ratio\";d:0.09070223922902494;}s:17:\"created_timestamp\";i:-2082844800;}'),
(215, 27, 'background_up_img', ''),
(216, 27, 'background_up_video', '62');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_agronomyposts`
--

DROP TABLE IF EXISTS `wp_agronomyposts`;
CREATE TABLE `wp_agronomyposts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_agronomyposts`
--

INSERT INTO `wp_agronomyposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2024-06-30 20:49:22', '2024-06-30 17:49:22', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Кто мы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: https://agr.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Комментарии</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Медиафайлы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куки</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Встраиваемое содержимое других вебсайтов</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">С кем мы делимся вашими данными</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Как долго мы храним ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Какие у вас права на ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куда отправляются ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p>\n<!-- /wp:paragraph -->\n', 'Политика конфиденциальности', '', 'draft', 'closed', 'closed', '', 'privacy-policy', '', '', '2024-06-30 21:37:34', '2024-06-30 18:37:34', '', 0, 'https://agr/?page_id=3', 0, 'page', '', 0),
(5, 1, '2024-06-30 21:29:15', '2024-06-30 18:29:15', '', 'telegram_icon_130816 1', '', 'inherit', 'open', 'closed', '', 'telegram_icon_130816-1', '', '', '2024-06-30 21:29:15', '2024-06-30 18:29:15', '', 0, 'https://agr/wp-content/uploads/2024/06/telegram_icon_130816-1.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2024-06-30 21:29:15', '2024-06-30 18:29:15', '', 'Vector', '', 'inherit', 'open', 'closed', '', 'vector', '', '', '2024-06-30 21:29:15', '2024-06-30 18:29:15', '', 0, 'https://agr/wp-content/uploads/2024/06/Vector.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2024-06-30 21:29:15', '2024-06-30 18:29:15', '', 'vk.ico', '', 'inherit', 'open', 'closed', '', 'vk-ico', '', '', '2024-06-30 21:29:15', '2024-06-30 18:29:15', '', 0, 'https://agr/wp-content/uploads/2024/06/vk.ico.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2024-06-30 21:29:16', '2024-06-30 18:29:16', '', 'Youtube_icon-icons.com_66802 1', '', 'inherit', 'open', 'closed', '', 'youtube_icon-icons-com_66802-1', '', '', '2024-06-30 21:29:16', '2024-06-30 18:29:16', '', 0, 'https://agr/wp-content/uploads/2024/06/Youtube_icon-icons.com_66802-1.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2024-06-30 21:29:17', '2024-06-30 18:29:17', '', 'background', '', 'inherit', 'open', 'closed', '', 'background', '', '', '2024-06-30 21:29:17', '2024-06-30 18:29:17', '', 0, 'https://agr/wp-content/uploads/2024/06/background.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2024-06-30 21:29:20', '2024-06-30 18:29:20', '', 'burgermenu', '', 'inherit', 'open', 'closed', '', 'burgermenu', '', '', '2024-06-30 21:29:20', '2024-06-30 18:29:20', '', 0, 'https://agr/wp-content/uploads/2024/06/burgermenu.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2024-06-30 21:29:20', '2024-06-30 18:29:20', '', 'doc.ico', '', 'inherit', 'open', 'closed', '', 'doc-ico', '', '', '2024-06-30 21:29:20', '2024-06-30 18:29:20', '', 0, 'https://agr/wp-content/uploads/2024/06/doc.ico.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2024-06-30 21:29:20', '2024-06-30 18:29:20', '', 'iconfinder-social-media-applications-32vk-4102593_113806 1', '', 'inherit', 'open', 'closed', '', 'iconfinder-social-media-applications-32vk-4102593_113806-1', '', '', '2024-06-30 21:29:20', '2024-06-30 18:29:20', '', 0, 'https://agr/wp-content/uploads/2024/06/iconfinder-social-media-applications-32vk-4102593_113806-1.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2024-06-30 21:29:21', '2024-06-30 18:29:21', '', 'image 2 (1) 1', '', 'inherit', 'open', 'closed', '', 'image-2-1-1', '', '', '2024-06-30 21:29:21', '2024-06-30 18:29:21', '', 0, 'https://agr/wp-content/uploads/2024/06/image-2-1-1.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2024-06-30 21:29:21', '2024-06-30 18:29:21', '', 'logo mini', '', 'inherit', 'open', 'closed', '', 'logo-mini', '', '', '2024-06-30 21:29:21', '2024-06-30 18:29:21', '', 0, 'https://agr/wp-content/uploads/2024/06/logo-mini.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2024-06-30 21:29:22', '2024-06-30 18:29:22', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2024-06-30 21:29:22', '2024-06-30 18:29:22', '', 0, 'https://agr/wp-content/uploads/2024/06/logo.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2024-06-30 21:29:22', '2024-06-30 18:29:22', '', 'point', '', 'inherit', 'open', 'closed', '', 'point', '', '', '2024-06-30 21:29:22', '2024-06-30 18:29:22', '', 0, 'https://agr/wp-content/uploads/2024/06/point.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2024-06-30 21:29:22', '2024-06-30 18:29:22', '', 'primer_towar', '', 'inherit', 'open', 'closed', '', 'primer_towar', '', '', '2024-06-30 21:29:22', '2024-06-30 18:29:22', '', 0, 'https://agr/wp-content/uploads/2024/06/primer_towar.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2024-06-30 21:29:23', '2024-06-30 18:29:23', '', 'Rectangle 6', '', 'inherit', 'open', 'closed', '', 'rectangle-6', '', '', '2024-06-30 21:29:23', '2024-06-30 18:29:23', '', 0, 'https://agr/wp-content/uploads/2024/06/Rectangle-6.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2024-06-30 21:29:23', '2024-06-30 18:29:23', '', 'telegram.ico', '', 'inherit', 'open', 'closed', '', 'telegram-ico', '', '', '2024-06-30 21:29:23', '2024-06-30 18:29:23', '', 0, 'https://agr/wp-content/uploads/2024/06/telegram.ico.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2024-06-30 21:30:23', '2024-06-30 18:30:23', 'https://agr/wp-content/uploads/2024/06/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2024-06-30 21:30:23', '2024-06-30 18:30:23', '', 15, 'https://agr/wp-content/uploads/2024/06/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2024-06-30 21:32:33', '2024-06-30 18:32:33', 'https://agr/wp-content/uploads/2024/06/cropped-logo-mini.png', 'cropped-logo-mini.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-mini-png', '', '', '2024-06-30 21:32:33', '2024-06-30 18:32:33', '', 14, 'https://agr/wp-content/uploads/2024/06/cropped-logo-mini.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2024-06-30 21:37:34', '2024-06-30 18:37:34', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Кто мы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: https://agr.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Комментарии</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Медиафайлы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куки</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Встраиваемое содержимое других вебсайтов</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">С кем мы делимся вашими данными</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Как долго мы храним ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Какие у вас права на ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куда отправляются ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p>\n<!-- /wp:paragraph -->\n', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2024-06-30 21:37:34', '2024-06-30 18:37:34', '', 3, 'https://agr/?p=26', 0, 'revision', '', 0),
(27, 1, '2024-06-30 21:37:48', '2024-06-30 18:37:48', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2024-07-02 13:32:23', '2024-07-02 10:32:23', '', 0, 'https://agr/?page_id=27', 0, 'page', '', 0),
(28, 1, '2024-06-30 21:37:48', '2024-06-30 18:37:48', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2024-06-30 21:37:48', '2024-06-30 18:37:48', '', 27, 'https://agr/?p=28', 0, 'revision', '', 0),
(30, 1, '2024-06-30 21:43:29', '2024-06-30 18:43:29', '', 'О компании', '', 'publish', 'closed', 'closed', '', '%d0%be-%d0%ba%d0%be%d0%bc%d0%bf%d0%b0%d0%bd%d0%b8%d0%b8', '', '', '2024-06-30 21:43:44', '2024-06-30 18:43:44', '', 0, 'https://agr/?page_id=30', 0, 'page', '', 0),
(31, 1, '2024-06-30 21:43:29', '2024-06-30 18:43:29', '', 'О компании', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2024-06-30 21:43:29', '2024-06-30 18:43:29', '', 30, 'https://agr/?p=31', 0, 'revision', '', 0),
(33, 1, '2024-06-30 21:44:06', '2024-06-30 18:44:06', '', 'Доставка', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%be%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0', '', '', '2024-06-30 21:44:06', '2024-06-30 18:44:06', '', 0, 'https://agr/?page_id=33', 0, 'page', '', 0),
(34, 1, '2024-06-30 21:44:06', '2024-06-30 18:44:06', '', 'Доставка', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2024-06-30 21:44:06', '2024-06-30 18:44:06', '', 33, 'https://agr/?p=34', 0, 'revision', '', 0),
(35, 1, '2024-06-30 21:46:19', '2024-06-30 18:46:19', '', 'Background_carousel', '', 'publish', 'closed', 'closed', '', 'background', '', '', '2024-07-01 06:23:03', '2024-07-01 03:23:03', '', 0, 'https://agr/?post_type=cfs&#038;p=35', 0, 'cfs', '', 0),
(37, 1, '2024-07-01 06:18:54', '2024-07-01 03:18:54', '', 'Наша продукция', '', 'publish', 'open', 'open', '', '%d0%bd%d0%b0%d1%88%d0%b0-%d0%bf%d1%80%d0%be%d0%b4%d1%83%d0%ba%d1%86%d0%b8%d1%8f', '', '', '2024-07-01 06:18:56', '2024-07-01 03:18:56', '', 0, 'https://agr/?p=37', 0, 'post', '', 0),
(38, 1, '2024-07-01 06:18:54', '2024-07-01 03:18:54', '', 'Наша продукция', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2024-07-01 06:18:54', '2024-07-01 03:18:54', '', 37, 'https://agr/?p=38', 0, 'revision', '', 0),
(39, 1, '2024-07-01 06:19:25', '2024-07-01 03:19:25', '', 'Преимущества продукции', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b5%d0%b8%d0%bc%d1%83%d1%89%d0%b5%d1%81%d1%82%d0%b2%d0%b0-%d0%bf%d1%80%d0%be%d0%b4%d1%83%d0%ba%d1%86%d0%b8%d0%b8', '', '', '2024-07-01 06:19:27', '2024-07-01 03:19:27', '', 0, 'https://agr/?p=39', 0, 'post', '', 0),
(40, 1, '2024-07-01 06:19:25', '2024-07-01 03:19:25', '', 'Преимущества продукции', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2024-07-01 06:19:25', '2024-07-01 03:19:25', '', 39, 'https://agr/?p=40', 0, 'revision', '', 0),
(41, 1, '2024-07-01 06:19:43', '2024-07-01 03:19:43', '', 'Отзывы', '', 'publish', 'open', 'open', '', '%d0%be%d1%82%d0%b7%d1%8b%d0%b2%d1%8b', '', '', '2024-07-01 06:19:44', '2024-07-01 03:19:44', '', 0, 'https://agr/?p=41', 0, 'post', '', 0),
(42, 1, '2024-07-01 06:19:43', '2024-07-01 03:19:43', '', 'Отзывы', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2024-07-01 06:19:43', '2024-07-01 03:19:43', '', 41, 'https://agr/?p=42', 0, 'revision', '', 0),
(43, 1, '2024-07-01 06:19:59', '2024-07-01 03:19:59', '', 'Что говорят агрономы', '', 'publish', 'open', 'open', '', '%d1%87%d1%82%d0%be-%d0%b3%d0%be%d0%b2%d0%be%d1%80%d1%8f%d1%82-%d0%b0%d0%b3%d1%80%d0%be%d0%bd%d0%be%d0%bc%d1%8b', '', '', '2024-07-01 06:20:00', '2024-07-01 03:20:00', '', 0, 'https://agr/?p=43', 0, 'post', '', 0),
(44, 1, '2024-07-01 06:19:59', '2024-07-01 03:19:59', '', 'Что говорят агрономы', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2024-07-01 06:19:59', '2024-07-01 03:19:59', '', 43, 'https://agr/?p=44', 0, 'revision', '', 0),
(45, 1, '2024-07-01 06:20:43', '2024-07-01 03:20:43', '', 'Контакты', '', 'publish', 'open', 'open', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2024-07-01 06:20:44', '2024-07-01 03:20:44', '', 0, 'https://agr/?p=45', 0, 'post', '', 0),
(46, 1, '2024-07-01 06:20:43', '2024-07-01 03:20:43', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2024-07-01 06:20:43', '2024-07-01 03:20:43', '', 45, 'https://agr/?p=46', 0, 'revision', '', 0),
(47, 1, '2024-07-01 06:21:20', '2024-07-01 03:21:20', '', 'Получить консультацию', '', 'publish', 'open', 'open', '', '%d0%bf%d0%be%d0%bb%d1%83%d1%87%d0%b8%d1%82%d1%8c-%d0%ba%d0%be%d0%bd%d1%81%d1%83%d0%bb%d1%8c%d1%82%d0%b0%d1%86%d0%b8%d1%8e', '', '', '2024-07-01 06:21:21', '2024-07-01 03:21:21', '', 0, 'https://agr/?p=47', 0, 'post', '', 0),
(48, 1, '2024-07-01 06:21:20', '2024-07-01 03:21:20', '', 'Получить консультацию', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2024-07-01 06:21:20', '2024-07-01 03:21:20', '', 47, 'https://agr/?p=48', 0, 'revision', '', 0),
(49, 1, '2024-07-01 06:27:35', '2024-07-01 03:27:35', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2024-07-01 06:27:35', '2024-07-01 03:27:35', '', 0, 'https://agr/?p=49', 1, 'nav_menu_item', '', 0),
(50, 1, '2024-07-01 06:27:35', '2024-07-01 03:27:35', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2024-07-01 06:27:35', '2024-07-01 03:27:35', '', 0, 'https://agr/?p=50', 2, 'nav_menu_item', '', 0),
(51, 1, '2024-07-01 06:27:35', '2024-07-01 03:27:35', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2024-07-01 06:27:35', '2024-07-01 03:27:35', '', 0, 'https://agr/?p=51', 3, 'nav_menu_item', '', 0),
(52, 1, '2024-07-01 06:27:36', '2024-07-01 03:27:36', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2024-07-01 06:27:36', '2024-07-01 03:27:36', '', 0, 'https://agr/?p=52', 4, 'nav_menu_item', '', 0),
(53, 1, '2024-07-01 06:27:36', '2024-07-01 03:27:36', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2024-07-01 06:27:36', '2024-07-01 03:27:36', '', 0, 'https://agr/?p=53', 5, 'nav_menu_item', '', 0),
(54, 1, '2024-07-01 06:27:36', '2024-07-01 03:27:36', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2024-07-01 06:27:36', '2024-07-01 03:27:36', '', 0, 'https://agr/?p=54', 6, 'nav_menu_item', '', 0),
(55, 1, '2024-07-01 06:27:36', '2024-07-01 03:27:36', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2024-07-01 06:27:36', '2024-07-01 03:27:36', '', 0, 'https://agr/?p=55', 7, 'nav_menu_item', '', 0),
(56, 1, '2024-07-01 06:27:36', '2024-07-01 03:27:36', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2024-07-01 06:27:36', '2024-07-01 03:27:36', '', 0, 'https://agr/?p=56', 8, 'nav_menu_item', '', 0),
(58, 1, '2024-07-01 06:29:46', '2024-07-01 03:29:46', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2024-07-01 06:29:46', '2024-07-01 03:29:46', '', 0, 'https://agr/58/', 1, 'nav_menu_item', '', 0),
(59, 1, '2024-07-01 06:29:46', '2024-07-01 03:29:46', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2024-07-01 06:29:46', '2024-07-01 03:29:46', '', 0, 'https://agr/59/', 2, 'nav_menu_item', '', 0),
(60, 1, '2024-07-01 06:29:46', '2024-07-01 03:29:46', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2024-07-01 06:29:46', '2024-07-01 03:29:46', '', 0, 'https://agr/60/', 4, 'nav_menu_item', '', 0),
(61, 1, '2024-07-01 06:29:46', '2024-07-01 03:29:46', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2024-07-01 06:29:46', '2024-07-01 03:29:46', '', 0, 'https://agr/61/', 3, 'nav_menu_item', '', 0),
(62, 1, '2024-07-02 13:32:11', '2024-07-02 10:32:11', '', 'ЦЕОЛИТ ZION ЦИОН - есть решение в 150 РАЗ ДЕШЕВЛЕ - ЗА КОПЕЙКИ!!! БИОАКТИВАЦИЯ ЦЕОЛИТА - ваш ПРОФИТ!', '', 'inherit', 'open', 'closed', '', '%d1%86%d0%b5%d0%be%d0%bb%d0%b8%d1%82-zion-%d1%86%d0%b8%d0%be%d0%bd-%d0%b5%d1%81%d1%82%d1%8c-%d1%80%d0%b5%d1%88%d0%b5%d0%bd%d0%b8%d0%b5-%d0%b2-150-%d1%80%d0%b0%d0%b7-%d0%b4%d0%b5%d1%88%d0%b5%d0%b2', '', '', '2024-07-02 13:32:11', '2024-07-02 10:32:11', '', 27, 'https://agr/wp-content/uploads/2024/07/ЦЕОЛИТ-ZION-ЦИОН-есть-решение-в-150-РАЗ-ДЕШЕВЛЕ-ЗА-КОПЕЙКИ-БИОАКТИВАЦИЯ-ЦЕОЛИТА-ваш-ПРОФИТ.mp4', 0, 'attachment', 'video/mp4', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_agronomytermmeta`
--

DROP TABLE IF EXISTS `wp_agronomytermmeta`;
CREATE TABLE `wp_agronomytermmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_agronomyterms`
--

DROP TABLE IF EXISTS `wp_agronomyterms`;
CREATE TABLE `wp_agronomyterms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_agronomyterms`
--

INSERT INTO `wp_agronomyterms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Верхнее меню', '%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(3, 'Burger_menu', 'burger_menu', 0),
(4, 'Продукция', '%d0%bf%d1%80%d0%be%d0%b4%d1%83%d0%ba%d1%86%d0%b8%d1%8f', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_agronomyterm_relationships`
--

DROP TABLE IF EXISTS `wp_agronomyterm_relationships`;
CREATE TABLE `wp_agronomyterm_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_agronomyterm_relationships`
--

INSERT INTO `wp_agronomyterm_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(37, 1, 0),
(39, 1, 0),
(41, 1, 0),
(43, 1, 0),
(45, 1, 0),
(47, 1, 0),
(49, 3, 0),
(50, 3, 0),
(51, 3, 0),
(52, 3, 0),
(53, 3, 0),
(54, 3, 0),
(55, 3, 0),
(56, 3, 0),
(58, 2, 0),
(59, 2, 0),
(60, 2, 0),
(61, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_agronomyterm_taxonomy`
--

DROP TABLE IF EXISTS `wp_agronomyterm_taxonomy`;
CREATE TABLE `wp_agronomyterm_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_agronomyterm_taxonomy`
--

INSERT INTO `wp_agronomyterm_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 8),
(4, 4, 'post_tag', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_agronomyusermeta`
--

DROP TABLE IF EXISTS `wp_agronomyusermeta`;
CREATE TABLE `wp_agronomyusermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_agronomyusermeta`
--

INSERT INTO `wp_agronomyusermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_agronomycapabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_agronomyuser_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"ebec48e95ade0c4e75af0aeac350058d3d60a2932bccc371180435658c66b06a\";a:4:{s:10:\"expiration\";i:1720979369;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:130:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36\";s:5:\"login\";i:1719769769;}}'),
(17, 1, 'wp_agronomydashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_agronomyuser-settings', 'libraryContent=browse'),
(20, 1, 'wp_agronomyuser-settings-time', '1719772446'),
(21, 1, 'wp_agronomypersisted_preferences', 'a:3:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-07-05T15:10:45.935Z\";s:4:\"core\";a:1:{s:10:\"openPanels\";a:1:{i:0;s:11:\"post-status\";}}}'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'closedpostboxes_cfs', 'a:0:{}'),
(25, 1, 'metaboxhidden_cfs', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(26, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_agronomyusers`
--

DROP TABLE IF EXISTS `wp_agronomyusers`;
CREATE TABLE `wp_agronomyusers` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_agronomyusers`
--

INSERT INTO `wp_agronomyusers` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BZz21AugoczaZ.OcO4ysvfKl.7xPM//', 'admin', 'soulpc32100@gmail.com', 'https://agr', '2024-06-30 17:49:22', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_agronomycfs_sessions`
--
ALTER TABLE `wp_agronomycfs_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_agronomycfs_values`
--
ALTER TABLE `wp_agronomycfs_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_id_idx` (`field_id`),
  ADD KEY `post_id_idx` (`post_id`);

--
-- Индексы таблицы `wp_agronomycommentmeta`
--
ALTER TABLE `wp_agronomycommentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_agronomycomments`
--
ALTER TABLE `wp_agronomycomments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_agronomylinks`
--
ALTER TABLE `wp_agronomylinks`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_agronomyoptions`
--
ALTER TABLE `wp_agronomyoptions`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_agronomypostmeta`
--
ALTER TABLE `wp_agronomypostmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_agronomyposts`
--
ALTER TABLE `wp_agronomyposts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_agronomytermmeta`
--
ALTER TABLE `wp_agronomytermmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_agronomyterms`
--
ALTER TABLE `wp_agronomyterms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_agronomyterm_relationships`
--
ALTER TABLE `wp_agronomyterm_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_agronomyterm_taxonomy`
--
ALTER TABLE `wp_agronomyterm_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_agronomyusermeta`
--
ALTER TABLE `wp_agronomyusermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_agronomyusers`
--
ALTER TABLE `wp_agronomyusers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_agronomycfs_values`
--
ALTER TABLE `wp_agronomycfs_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `wp_agronomycommentmeta`
--
ALTER TABLE `wp_agronomycommentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_agronomycomments`
--
ALTER TABLE `wp_agronomycomments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_agronomylinks`
--
ALTER TABLE `wp_agronomylinks`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_agronomyoptions`
--
ALTER TABLE `wp_agronomyoptions`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT для таблицы `wp_agronomypostmeta`
--
ALTER TABLE `wp_agronomypostmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT для таблицы `wp_agronomyposts`
--
ALTER TABLE `wp_agronomyposts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT для таблицы `wp_agronomytermmeta`
--
ALTER TABLE `wp_agronomytermmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_agronomyterms`
--
ALTER TABLE `wp_agronomyterms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_agronomyterm_taxonomy`
--
ALTER TABLE `wp_agronomyterm_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_agronomyusermeta`
--
ALTER TABLE `wp_agronomyusermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `wp_agronomyusers`
--
ALTER TABLE `wp_agronomyusers`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
