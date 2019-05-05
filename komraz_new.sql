-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 05 2019 г., 05:51
-- Версия сервера: 10.1.38-MariaDB
-- Версия PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `komraz_new`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add kind service', 7, 'add_kindservice'),
(26, 'Can change kind service', 7, 'change_kindservice'),
(27, 'Can delete kind service', 7, 'delete_kindservice'),
(28, 'Can view kind service', 7, 'view_kindservice'),
(29, 'Can add kind detail', 8, 'add_kinddetail'),
(30, 'Can change kind detail', 8, 'change_kinddetail'),
(31, 'Can delete kind detail', 8, 'delete_kinddetail'),
(32, 'Can view kind detail', 8, 'view_kinddetail'),
(33, 'Can add kind device', 9, 'add_kinddevice'),
(34, 'Can change kind device', 9, 'change_kinddevice'),
(35, 'Can delete kind device', 9, 'delete_kinddevice'),
(36, 'Can view kind device', 9, 'view_kinddevice'),
(37, 'Can add сreator', 10, 'add_сreator'),
(38, 'Can change сreator', 10, 'change_сreator'),
(39, 'Can delete сreator', 10, 'delete_сreator'),
(40, 'Can view сreator', 10, 'view_сreator');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `creator`
--

CREATE TABLE `creator` (
  `Id_creator` int(11) NOT NULL,
  `Name_creator` varchar(255) NOT NULL,
  `Cifer_creator` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `creator`
--

INSERT INTO `creator` (`Id_creator`, `Name_creator`, `Cifer_creator`) VALUES
(1, 'Samsung', 'SCDC1'),
(2, 'LG', 'SCDC2'),
(3, 'Sony', 'SCDC3'),
(4, 'Xiaomi', 'SCDC4'),
(5, 'Huawei', 'SCDC5'),
(6, 'Meizu', 'SCDC7'),
(7, 'Apple', 'SCDC6'),
(8, 'Toshiba', 'SCDC8'),
(9, 'Panasonic', 'SCDC9'),
(10, 'SUPRA', 'SCDC10');

-- --------------------------------------------------------

--
-- Структура таблицы `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(8, 'top_komraz', 'kinddetail'),
(9, 'top_komraz', 'kinddevice'),
(7, 'top_komraz', 'kindservice'),
(10, 'top_komraz', 'сreator');

-- --------------------------------------------------------

--
-- Структура таблицы `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-05-04 09:42:26.358481'),
(2, 'auth', '0001_initial', '2019-05-04 09:42:26.608318'),
(3, 'admin', '0001_initial', '2019-05-04 09:42:27.045761'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-05-04 09:42:27.171509'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-05-04 09:42:27.186562'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-05-04 09:42:27.295759'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-05-04 09:42:27.342638'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-05-04 09:42:27.420760'),
(9, 'auth', '0004_alter_user_username_opts', '2019-05-04 09:42:27.420760'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-05-04 09:42:27.467680'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-05-04 09:42:27.467680'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-05-04 09:42:27.483267'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-05-04 09:42:27.530138'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-05-04 09:42:27.577012'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-05-04 09:42:27.655160'),
(16, 'auth', '0011_update_proxy_permissions', '2019-05-04 09:42:27.670763'),
(17, 'sessions', '0001_initial', '2019-05-04 09:42:27.702069'),
(18, 'top_komraz', '0001_initial', '2019-05-04 11:19:08.518615'),
(19, 'top_komraz', '0002_kinddetail', '2019-05-04 12:03:27.936192'),
(20, 'top_komraz', '0003_kinddevice', '2019-05-04 13:09:21.139951'),
(21, 'top_komraz', '0004_сreator', '2019-05-04 13:12:51.693192');

-- --------------------------------------------------------

--
-- Структура таблицы `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kinddetail`
--

CREATE TABLE `kinddetail` (
  `Id_KindDetail` int(11) NOT NULL,
  `Name_Detail` varchar(255) NOT NULL,
  `Cifer_kind` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kinddetail`
--

INSERT INTO `kinddetail` (`Id_KindDetail`, `Name_Detail`, `Cifer_kind`) VALUES
(1, 'Блок питания', 'SCKD1'),
(2, 'Инвертор', 'SCKD2'),
(3, 'Лампа подсветки', 'SCKD3'),
(4, 'Разъём', 'SCKD4'),
(5, 'Тюнер', 'SCKD5'),
(6, 'Процессор', 'SCKD7'),
(7, 'Модуль Wi-Fi', 'SCKD6'),
(8, 'Шлейф', 'SCKD8'),
(9, 'Динамик', 'SCKD9'),
(10, 'Микрофон', 'SCKD10'),
(11, 'Дисплей', 'SCKD11');

-- --------------------------------------------------------

--
-- Структура таблицы `kinddevice`
--

CREATE TABLE `kinddevice` (
  `Id_KindDevice` int(11) NOT NULL,
  `NameDevice` varchar(255) NOT NULL,
  `Cifer_kind` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kinddevice`
--

INSERT INTO `kinddevice` (`Id_KindDevice`, `NameDevice`, `Cifer_kind`) VALUES
(1, 'Телевизор', 'SCD1'),
(2, 'Видеокамера', 'SCD2'),
(3, 'Фотоаппарат', 'SCD3'),
(4, 'Музыкальный центр', 'SCD4'),
(5, 'Телефон', 'SCD5'),
(6, 'Наушники', 'SCD6'),
(7, 'MP3-плеер', 'SCD7'),
(8, 'Видеорегистратор', 'SCD8');

-- --------------------------------------------------------

--
-- Структура таблицы `kindservice`
--

CREATE TABLE `kindservice` (
  `Id_KindService` int(11) NOT NULL,
  `Name_work` varchar(255) NOT NULL,
  `Cifer_service` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kindservice`
--

INSERT INTO `kindservice` (`Id_KindService`, `Name_work`, `Cifer_service`) VALUES
(22, 'Диагностика', 'SCS1'),
(23, 'Ремонт блока питания', 'SCS2'),
(24, 'Замена лампы подсветки', 'SCS3'),
(25, 'Замена разъёма', 'SCS5'),
(26, 'Замена тюнера', 'SCS6'),
(27, 'Перепрошивка системной платы', 'SCS7'),
(28, 'Ремонт усилителя НЧ', 'SCS8'),
(29, 'Ремонт платы контроллера матрицы', 'SCS9'),
(30, 'Замена процессора', 'SCS10'),
(31, 'Замена модуля Wi-Fi', 'SCS11'),
(32, 'Пайка BGA Аудио-кодека', 'SCS12'),
(33, 'Замена шлейфа', 'SCS13'),
(34, 'Замена динамика', 'SCS14'),
(35, 'Замена микрофона', 'SCS16'),
(36, 'Общий ремонт', 'SCS17'),
(37, 'Замена', 'SCS18'),
(38, 'Замена дисплея', 'SCS19'),
(39, 'Гарантийный ремонт', 'SCS15');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индексы таблицы `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индексы таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `creator`
--
ALTER TABLE `creator`
  ADD PRIMARY KEY (`Id_creator`);

--
-- Индексы таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индексы таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индексы таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Индексы таблицы `kinddetail`
--
ALTER TABLE `kinddetail`
  ADD PRIMARY KEY (`Id_KindDetail`);

--
-- Индексы таблицы `kinddevice`
--
ALTER TABLE `kinddevice`
  ADD PRIMARY KEY (`Id_KindDevice`);

--
-- Индексы таблицы `kindservice`
--
ALTER TABLE `kindservice`
  ADD PRIMARY KEY (`Id_KindService`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `creator`
--
ALTER TABLE `creator`
  MODIFY `Id_creator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `kinddetail`
--
ALTER TABLE `kinddetail`
  MODIFY `Id_KindDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `kinddevice`
--
ALTER TABLE `kinddevice`
  MODIFY `Id_KindDevice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `kindservice`
--
ALTER TABLE `kindservice`
  MODIFY `Id_KindService` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
