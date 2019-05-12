-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 12 2019 г., 16:27
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
-- База данных: `komraz_fix`
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
(25, 'Can add employee', 7, 'add_employee'),
(26, 'Can change employee', 7, 'change_employee'),
(27, 'Can delete employee', 7, 'delete_employee'),
(28, 'Can view employee', 7, 'view_employee'),
(29, 'Can add kind detail', 8, 'add_kinddetail'),
(30, 'Can change kind detail', 8, 'change_kinddetail'),
(31, 'Can delete kind detail', 8, 'delete_kinddetail'),
(32, 'Can view kind detail', 8, 'view_kinddetail'),
(33, 'Can add kind service', 9, 'add_kindservice'),
(34, 'Can change kind service', 9, 'change_kindservice'),
(35, 'Can delete kind service', 9, 'delete_kindservice'),
(36, 'Can view kind service', 9, 'view_kindservice'),
(37, 'Can add master', 10, 'add_master'),
(38, 'Can change master', 10, 'change_master'),
(39, 'Can delete master', 10, 'delete_master'),
(40, 'Can view master', 10, 'view_master'),
(41, 'Can add status', 11, 'add_status'),
(42, 'Can change status', 11, 'change_status'),
(43, 'Can delete status', 11, 'delete_status'),
(44, 'Can view status', 11, 'view_status'),
(45, 'Can add type_payment', 12, 'add_type_payment'),
(46, 'Can change type_payment', 12, 'change_type_payment'),
(47, 'Can delete type_payment', 12, 'delete_type_payment'),
(48, 'Can view type_payment', 12, 'view_type_payment'),
(49, 'Can add device', 13, 'add_device'),
(50, 'Can change device', 13, 'change_device'),
(51, 'Can delete device', 13, 'delete_device'),
(52, 'Can view device', 13, 'view_device'),
(53, 'Can add kind device', 14, 'add_kinddevice'),
(54, 'Can change kind device', 14, 'change_kinddevice'),
(55, 'Can delete kind device', 14, 'delete_kinddevice'),
(56, 'Can view kind device', 14, 'view_kinddevice'),
(57, 'Can add creator', 15, 'add_creator'),
(58, 'Can change creator', 15, 'change_creator'),
(59, 'Can delete creator', 15, 'delete_creator'),
(60, 'Can view creator', 15, 'view_creator'),
(61, 'Can add request_delivery', 16, 'add_request_delivery'),
(62, 'Can change request_delivery', 16, 'change_request_delivery'),
(63, 'Can delete request_delivery', 16, 'delete_request_delivery'),
(64, 'Can view request_delivery', 16, 'view_request_delivery'),
(65, 'Can add detail', 17, 'add_detail'),
(66, 'Can change detail', 17, 'change_detail'),
(67, 'Can delete detail', 17, 'delete_detail'),
(68, 'Can view detail', 17, 'view_detail'),
(69, 'Can add provider', 18, 'add_provider'),
(70, 'Can change provider', 18, 'change_provider'),
(71, 'Can delete provider', 18, 'delete_provider'),
(72, 'Can view provider', 18, 'view_provider'),
(73, 'Can add orderentity', 19, 'add_orderentity'),
(74, 'Can change orderentity', 19, 'change_orderentity'),
(75, 'Can delete orderentity', 19, 'delete_orderentity'),
(76, 'Can view orderentity', 19, 'view_orderentity'),
(77, 'Can add service', 20, 'add_service'),
(78, 'Can change service', 20, 'change_service'),
(79, 'Can delete service', 20, 'delete_service'),
(80, 'Can view service', 20, 'view_service'),
(81, 'Can add certificate', 21, 'add_certificate'),
(82, 'Can change certificate', 21, 'change_certificate'),
(83, 'Can delete certificate', 21, 'delete_certificate'),
(84, 'Can view certificate', 21, 'view_certificate'),
(85, 'Can add contract', 22, 'add_contract'),
(86, 'Can change contract', 22, 'change_contract'),
(87, 'Can delete contract', 22, 'delete_contract'),
(88, 'Can view contract', 22, 'view_contract'),
(89, 'Can add customer', 23, 'add_customer'),
(90, 'Can change customer', 23, 'change_customer'),
(91, 'Can delete customer', 23, 'delete_customer'),
(92, 'Can view customer', 23, 'view_customer'),
(93, 'Can add certificate_fix', 24, 'add_certificate_fix'),
(94, 'Can change certificate_fix', 24, 'change_certificate_fix'),
(95, 'Can delete certificate_fix', 24, 'delete_certificate_fix'),
(96, 'Can view certificate_fix', 24, 'view_certificate_fix'),
(97, 'Can add contract_fix', 25, 'add_contract_fix'),
(98, 'Can change contract_fix', 25, 'change_contract_fix'),
(99, 'Can delete contract_fix', 25, 'delete_contract_fix'),
(100, 'Can view contract_fix', 25, 'view_contract_fix'),
(101, 'Can add detail_fix', 26, 'add_detail_fix'),
(102, 'Can change detail_fix', 26, 'change_detail_fix'),
(103, 'Can delete detail_fix', 26, 'delete_detail_fix'),
(104, 'Can view detail_fix', 26, 'view_detail_fix'),
(105, 'Can add orderentity_fix', 27, 'add_orderentity_fix'),
(106, 'Can change orderentity_fix', 27, 'change_orderentity_fix'),
(107, 'Can delete orderentity_fix', 27, 'delete_orderentity_fix'),
(108, 'Can view orderentity_fix', 27, 'view_orderentity_fix'),
(109, 'Can add detail_fix2', 28, 'add_detail_fix2'),
(110, 'Can change detail_fix2', 28, 'change_detail_fix2'),
(111, 'Can delete detail_fix2', 28, 'delete_detail_fix2'),
(112, 'Can view detail_fix2', 28, 'view_detail_fix2'),
(113, 'Can add contract_fix2', 29, 'add_contract_fix2'),
(114, 'Can change contract_fix2', 29, 'change_contract_fix2'),
(115, 'Can delete contract_fix2', 29, 'delete_contract_fix2'),
(116, 'Can view contract_fix2', 29, 'view_contract_fix2'),
(117, 'Can add certificate_fix2', 30, 'add_certificate_fix2'),
(118, 'Can change certificate_fix2', 30, 'change_certificate_fix2'),
(119, 'Can delete certificate_fix2', 30, 'delete_certificate_fix2'),
(120, 'Can view certificate_fix2', 30, 'view_certificate_fix2'),
(121, 'Can add request_delivery2', 31, 'add_request_delivery2'),
(122, 'Can change request_delivery2', 31, 'change_request_delivery2'),
(123, 'Can delete request_delivery2', 31, 'delete_request_delivery2'),
(124, 'Can view request_delivery2', 31, 'view_request_delivery2'),
(125, 'Can add orderentity_fix2', 32, 'add_orderentity_fix2'),
(126, 'Can change orderentity_fix2', 32, 'change_orderentity_fix2'),
(127, 'Can delete orderentity_fix2', 32, 'delete_orderentity_fix2'),
(128, 'Can view orderentity_fix2', 32, 'view_orderentity_fix2');

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
-- Структура таблицы `certificate_fix2`
--

CREATE TABLE `certificate_fix2` (
  `ID_certificate` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Guarantee` varchar(255) NOT NULL,
  `Sum` decimal(8,2) NOT NULL,
  `ID_Order_fix_id` int(11) NOT NULL,
  `ID_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `certificate_fix2`
--

INSERT INTO `certificate_fix2` (`ID_certificate`, `Date`, `Guarantee`, `Sum`, `ID_Order_fix_id`, `ID_type_id`) VALUES
(1, '2019-05-23', '1 год', '500.00', 1, 2),
(2, '2019-05-24', '1 год', '300.00', 2, 2),
(3, '2019-05-22', '1 год', '800.00', 3, 1),
(4, '2019-05-24', '1 год', '700.00', 4, 2),
(5, '2019-05-25', '1 год', '2200.00', 5, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `contract_fix2`
--

CREATE TABLE `contract_fix2` (
  `Id_contract` int(11) NOT NULL,
  `ConclusionDate` date NOT NULL,
  `PeriodExecute` date NOT NULL,
  `Defect` varchar(255) NOT NULL,
  `Appearance` varchar(255) NOT NULL,
  `ID_Detail_fix_id` int(11) NOT NULL,
  `ID_service_id` int(11) NOT NULL,
  `Id_Employee_id` int(11) NOT NULL,
  `Id_customer_id` int(11) NOT NULL,
  `Id_device_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contract_fix2`
--

INSERT INTO `contract_fix2` (`Id_contract`, `ConclusionDate`, `PeriodExecute`, `Defect`, `Appearance`, `ID_Detail_fix_id`, `ID_service_id`, `Id_Employee_id`, `Id_customer_id`, `Id_device_id`) VALUES
(1, '2019-05-13', '2019-05-17', 'fdsdsf', 'sdfsdf', 2, 4, 2, 4, 4),
(2, '2019-05-03', '2019-05-17', 'Отказал разъём', 'Царапина на верхней части корпуса', 2, 4, 2, 4, 4),
(3, '2019-05-02', '2019-05-16', 'Отказал динамик', 'Без повреждений', 3, 2, 3, 1, 1),
(4, '2019-05-05', '2019-05-19', 'Не работает процессор', 'Царапина слева от объектива', 4, 3, 2, 1, 2),
(5, '2019-05-04', '2019-05-19', 'Полосы на экране', 'Без повреждений', 5, 2, 1, 1, 3),
(6, '2019-05-09', '2019-05-16', '1', '1', 6, 16, 1, 6, 7),
(7, '2019-05-09', '2019-05-18', '2', '2', 6, 16, 1, 6, 8),
(8, '2019-05-09', '2019-05-18', '2', '2', 6, 16, 1, 6, 9),
(9, '2019-05-24', '2019-05-18', '3', '3', 6, 16, 1, 6, 10);

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
-- Структура таблицы `customer`
--

CREATE TABLE `customer` (
  `Id_customer` int(11) NOT NULL,
  `FIO` varchar(255) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Adress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `customer`
--

INSERT INTO `customer` (`Id_customer`, `FIO`, `Phone`, `Adress`) VALUES
(1, 'Петров Иван Владиславович', '+79617589625', 'ул. Малахова 153, кв. 15'),
(2, 'Коростылёв Фёдор Игнатьевич', '+79237458295', 'пер. Некрасова 17, кв. 2'),
(3, 'Вальрьев Иван Аркадьевич', '+79027520129', 'проспект Комсомольский 75, кв. 12'),
(4, 'Новиков Борис Станиславович', '+79602638210', 'ул. Антона Петрова 29, кв. 1'),
(5, 'Рыбалко Алиса Евгеньевна', '+79059251198', 'проспект Социалистический 73, кв 12'),
(6, 'Поддубная Анна Ростиславовна', '+79138240911', 'проспект Строителей 14, кв. 7');

-- --------------------------------------------------------

--
-- Структура таблицы `detail_fix2`
--

CREATE TABLE `detail_fix2` (
  `Id_Detail` int(11) NOT NULL,
  `NameDetail` varchar(255) NOT NULL,
  `PriceDetail` decimal(10,2) NOT NULL,
  `Market_price` decimal(10,2) NOT NULL,
  `Number` int(11) NOT NULL,
  `Id_KindDetail_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `detail_fix2`
--

INSERT INTO `detail_fix2` (`Id_Detail`, `NameDetail`, `PriceDetail`, `Market_price`, `Number`, `Id_KindDetail_id`) VALUES
(1, 'Black Archangel 2 НПД 100 гц', '150.00', '0.00', 4, 10),
(2, '5G Silverlight', '150.00', '0.00', 2, 7),
(3, 'Intel PD Standart', '350.00', '0.00', 2, 6),
(4, 'USB 3.0', '100.00', '0.00', 3, 4),
(5, 'Ugine Color World X2', '1500.00', '0.00', 1, 8),
(6, 'Realtek Simple Cast', '400.00', '0.00', 2, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `device`
--

CREATE TABLE `device` (
  `Id_device` int(11) NOT NULL,
  `Model_device` varchar(255) NOT NULL,
  `IMEI` varchar(255) NOT NULL,
  `Id_KindDevice_id` int(11) NOT NULL,
  `Id_creator_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `device`
--

INSERT INTO `device` (`Id_device`, `Model_device`, `IMEI`, `Id_KindDevice_id`, `Id_creator_id`) VALUES
(1, 'SG-1525', 'UEF0948SM54', 1, 1),
(2, 'P-170X', 'SM968KG4420HJ4', 5, 9),
(3, 'L-43H', 'SNG8582NFH553', 4, 2),
(4, 'Black Air', 'XMA353Y5NA294', 8, 4),
(5, 'Cyber-shot DSC-W810', 'K924G29H22KF4S9', 3, 3),
(6, '1', '1', 8, 10),
(7, '1', '1', 8, 10),
(8, '2', '2', 8, 10),
(9, '2', '2', 8, 10),
(10, '3', '3', 8, 10);

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
(21, 'top_komraz', 'certificate'),
(24, 'top_komraz', 'certificate_fix'),
(30, 'top_komraz', 'certificate_fix2'),
(22, 'top_komraz', 'contract'),
(25, 'top_komraz', 'contract_fix'),
(29, 'top_komraz', 'contract_fix2'),
(15, 'top_komraz', 'creator'),
(23, 'top_komraz', 'customer'),
(17, 'top_komraz', 'detail'),
(26, 'top_komraz', 'detail_fix'),
(28, 'top_komraz', 'detail_fix2'),
(13, 'top_komraz', 'device'),
(7, 'top_komraz', 'employee'),
(8, 'top_komraz', 'kinddetail'),
(14, 'top_komraz', 'kinddevice'),
(9, 'top_komraz', 'kindservice'),
(10, 'top_komraz', 'master'),
(19, 'top_komraz', 'orderentity'),
(27, 'top_komraz', 'orderentity_fix'),
(32, 'top_komraz', 'orderentity_fix2'),
(18, 'top_komraz', 'provider'),
(16, 'top_komraz', 'request_delivery'),
(31, 'top_komraz', 'request_delivery2'),
(20, 'top_komraz', 'service'),
(11, 'top_komraz', 'status'),
(12, 'top_komraz', 'type_payment');

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
(1, 'contenttypes', '0001_initial', '2019-05-10 12:07:58.843723'),
(2, 'auth', '0001_initial', '2019-05-10 12:07:59.052726'),
(3, 'admin', '0001_initial', '2019-05-10 12:07:59.440753'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-05-10 12:07:59.538224'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-05-10 12:07:59.545224'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-05-10 12:07:59.655723'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-05-10 12:07:59.705225'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-05-10 12:07:59.762225'),
(9, 'auth', '0004_alter_user_username_opts', '2019-05-10 12:07:59.771225'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-05-10 12:07:59.811225'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-05-10 12:07:59.813225'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-05-10 12:07:59.823225'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-05-10 12:07:59.866724'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-05-10 12:07:59.918723'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-05-10 12:07:59.982725'),
(16, 'auth', '0011_update_proxy_permissions', '2019-05-10 12:07:59.991725'),
(17, 'sessions', '0001_initial', '2019-05-10 12:08:00.030225'),
(18, 'top_komraz', '0001_initial', '2019-05-10 12:09:27.057750'),
(19, 'top_komraz', '0002_auto_20190510_1917', '2019-05-10 12:17:29.892223'),
(20, 'top_komraz', '0003_auto_20190512_1042', '2019-05-12 03:42:53.410819'),
(21, 'top_komraz', '0004_auto_20190512_1048', '2019-05-12 03:48:57.993316');

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
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `Id_Employee` int(11) NOT NULL,
  `FIO` varchar(255) NOT NULL,
  `Phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `employee`
--

INSERT INTO `employee` (`Id_Employee`, `FIO`, `Phone`) VALUES
(1, 'Дорохова Евгения Геннадьевна', '+79631185241'),
(2, 'Орлова Наталья Юрьевна', '+79019217043'),
(3, 'Корсун Вадим Евгеньевич', '+79612351192');

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

-- --------------------------------------------------------

--
-- Структура таблицы `master`
--

CREATE TABLE `master` (
  `Id_Master` int(11) NOT NULL,
  `FIO` varchar(255) NOT NULL,
  `Phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `master`
--

INSERT INTO `master` (`Id_Master`, `FIO`, `Phone`) VALUES
(1, 'Канаев Август Валерьевич', '+79619405175'),
(2, 'Коршунов Дмитрий Евграфович', '+79237358009'),
(3, 'Алехно Фёдор Игоревич', '+79032357624'),
(4, 'Макаров Глеб Иванович', '+79632226198');

-- --------------------------------------------------------

--
-- Структура таблицы `orderentity_fix2`
--

CREATE TABLE `orderentity_fix2` (
  `ID_Order` int(11) NOT NULL,
  `Id_Master_id` int(11) NOT NULL,
  `Id_Status_id` int(11) NOT NULL,
  `Id_contract_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orderentity_fix2`
--

INSERT INTO `orderentity_fix2` (`ID_Order`, `Id_Master_id`, `Id_Status_id`, `Id_contract_id`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 3, 4),
(5, 4, 2, 5),
(6, 4, 4, 8),
(7, 4, 3, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `provider`
--

CREATE TABLE `provider` (
  `ID_Provider` int(11) NOT NULL,
  `Organization_name` varchar(255) NOT NULL,
  `Organisation_Adress` varchar(255) NOT NULL,
  `Organisation_phone` varchar(50) NOT NULL,
  `Employee` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `provider`
--

INSERT INTO `provider` (`ID_Provider`, `Organization_name`, `Organisation_Adress`, `Organisation_phone`, `Employee`) VALUES
(1, 'ООО \"Сто деталей\"', 'проспект Ленина 154 А', '83852609509', 'Корюшкин Анатолий Евгеньевич'),
(2, 'ОАО \"ОлПромТорг\"', 'Новосибирск, ул. Песчаная 31, к.7', '89059228109', 'Воронова Алёна Эриковна'),
(3, 'ПОЗИТРОНИКА', 'ул. Льва Толстого 22', '89296501941', 'Насонов Алексей Викторович'),
(4, 'Компьютер в Доме', 'ул. Песчаная 81', '89139572453', 'Воробьёва Ксения Афанасьевна'),
(5, 'ООО \"Колосок\"', 'проспект Строителей 17', '89039106834', 'Чижиков Пётр Власович');

-- --------------------------------------------------------

--
-- Структура таблицы `request_delivery2`
--

CREATE TABLE `request_delivery2` (
  `ID_request` int(11) NOT NULL,
  `Date` date NOT NULL,
  `ID_Detail_id` int(11) NOT NULL,
  `ID_Provider_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `request_delivery2`
--

INSERT INTO `request_delivery2` (`ID_request`, `Date`, `ID_Detail_id`, `ID_Provider_id`) VALUES
(1, '2019-05-29', 1, 1),
(2, '2019-05-21', 2, 5),
(3, '2019-06-17', 3, 3),
(4, '2019-05-31', 4, 2),
(5, '2019-06-11', 5, 3),
(6, '2019-05-20', 6, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `service`
--

CREATE TABLE `service` (
  `IdService` int(11) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Id_service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `service`
--

INSERT INTO `service` (`IdService`, `Price`, `Id_service_id`) VALUES
(2, '2000.00', 23),
(3, '700.00', 24),
(4, '300.00', 22),
(5, '300.00', 25),
(6, '600.00', 26),
(7, '500.00', 27),
(8, '1100.00', 28),
(9, '1500.00', 29),
(10, '700.00', 30),
(11, '400.00', 31),
(12, '800.00', 34),
(13, '600.00', 32),
(14, '500.00', 35),
(15, '2000.00', 38),
(16, '2200.00', 33);

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `Id_Status` int(11) NOT NULL,
  `NameStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`Id_Status`, `NameStatus`) VALUES
(1, 'В очереди'),
(2, 'Выполняется'),
(3, 'Выполнен'),
(4, 'Отменён');

-- --------------------------------------------------------

--
-- Структура таблицы `type_payment`
--

CREATE TABLE `type_payment` (
  `ID_type` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `type_payment`
--

INSERT INTO `type_payment` (`ID_type`, `Name`) VALUES
(1, 'Наличный'),
(2, 'Безналичный');

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
-- Индексы таблицы `certificate_fix2`
--
ALTER TABLE `certificate_fix2`
  ADD PRIMARY KEY (`ID_certificate`),
  ADD KEY `certificate_fix2_ID_Order_fix_id_b2a894ef_fk_orderenti` (`ID_Order_fix_id`),
  ADD KEY `certificate_fix2_ID_type_id_f917ab44_fk_type_payment_ID_type` (`ID_type_id`);

--
-- Индексы таблицы `contract_fix2`
--
ALTER TABLE `contract_fix2`
  ADD PRIMARY KEY (`Id_contract`),
  ADD KEY `contract_fix2_ID_Detail_fix_id_e7c26b4c_fk_detail_fix2_Id_Detail` (`ID_Detail_fix_id`),
  ADD KEY `contract_fix2_ID_service_id_4b4d6195_fk_service_IdService` (`ID_service_id`),
  ADD KEY `contract_fix2_Id_Employee_id_e7022089_fk_employee_Id_Employee` (`Id_Employee_id`),
  ADD KEY `contract_fix2_Id_customer_id_cf8358f6_fk_customer_Id_customer` (`Id_customer_id`),
  ADD KEY `contract_fix2_Id_device_id_0ed79e37_fk_device_Id_device` (`Id_device_id`);

--
-- Индексы таблицы `creator`
--
ALTER TABLE `creator`
  ADD PRIMARY KEY (`Id_creator`);

--
-- Индексы таблицы `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id_customer`);

--
-- Индексы таблицы `detail_fix2`
--
ALTER TABLE `detail_fix2`
  ADD PRIMARY KEY (`Id_Detail`),
  ADD KEY `detail_fix2_Id_KindDetail_id_f16d4bfe_fk_kinddetai` (`Id_KindDetail_id`);

--
-- Индексы таблицы `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`Id_device`),
  ADD KEY `device_Id_KindDevice_id_1f1de97e_fk_kinddevice_Id_KindDevice` (`Id_KindDevice_id`),
  ADD KEY `device_Id_creator_id_4654f020_fk_creator_Id_creator` (`Id_creator_id`);

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
-- Индексы таблицы `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Id_Employee`);

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
-- Индексы таблицы `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`Id_Master`);

--
-- Индексы таблицы `orderentity_fix2`
--
ALTER TABLE `orderentity_fix2`
  ADD PRIMARY KEY (`ID_Order`),
  ADD KEY `orderentity_fix2_Id_Master_id_75c6cd42_fk_master_Id_Master` (`Id_Master_id`),
  ADD KEY `orderentity_fix2_Id_Status_id_6ed6e2b6_fk_status_Id_Status` (`Id_Status_id`),
  ADD KEY `orderentity_fix2_Id_contract_id_add2264e_fk_contract_` (`Id_contract_id`);

--
-- Индексы таблицы `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`ID_Provider`);

--
-- Индексы таблицы `request_delivery2`
--
ALTER TABLE `request_delivery2`
  ADD PRIMARY KEY (`ID_request`),
  ADD KEY `request_delivery2_ID_Detail_id_d36ac1fe_fk_detail_fix2_Id_Detail` (`ID_Detail_id`),
  ADD KEY `request_delivery2_ID_Provider_id_01e59867_fk_provider_` (`ID_Provider_id`);

--
-- Индексы таблицы `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`IdService`),
  ADD KEY `service_Id_service_id_e642f758_fk_kindservice_Id_KindService` (`Id_service_id`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`Id_Status`);

--
-- Индексы таблицы `type_payment`
--
ALTER TABLE `type_payment`
  ADD PRIMARY KEY (`ID_type`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

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
-- AUTO_INCREMENT для таблицы `certificate_fix2`
--
ALTER TABLE `certificate_fix2`
  MODIFY `ID_certificate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `contract_fix2`
--
ALTER TABLE `contract_fix2`
  MODIFY `Id_contract` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `creator`
--
ALTER TABLE `creator`
  MODIFY `Id_creator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `customer`
--
ALTER TABLE `customer`
  MODIFY `Id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `detail_fix2`
--
ALTER TABLE `detail_fix2`
  MODIFY `Id_Detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `device`
--
ALTER TABLE `device`
  MODIFY `Id_device` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `employee`
--
ALTER TABLE `employee`
  MODIFY `Id_Employee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT для таблицы `master`
--
ALTER TABLE `master`
  MODIFY `Id_Master` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `orderentity_fix2`
--
ALTER TABLE `orderentity_fix2`
  MODIFY `ID_Order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `provider`
--
ALTER TABLE `provider`
  MODIFY `ID_Provider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `request_delivery2`
--
ALTER TABLE `request_delivery2`
  MODIFY `ID_request` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `service`
--
ALTER TABLE `service`
  MODIFY `IdService` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `Id_Status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `type_payment`
--
ALTER TABLE `type_payment`
  MODIFY `ID_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Ограничения внешнего ключа таблицы `certificate_fix2`
--
ALTER TABLE `certificate_fix2`
  ADD CONSTRAINT `certificate_fix2_ID_Order_fix_id_b2a894ef_fk_orderenti` FOREIGN KEY (`ID_Order_fix_id`) REFERENCES `orderentity_fix2` (`ID_Order`),
  ADD CONSTRAINT `certificate_fix2_ID_type_id_f917ab44_fk_type_payment_ID_type` FOREIGN KEY (`ID_type_id`) REFERENCES `type_payment` (`ID_type`);

--
-- Ограничения внешнего ключа таблицы `contract_fix2`
--
ALTER TABLE `contract_fix2`
  ADD CONSTRAINT `contract_fix2_ID_Detail_fix_id_e7c26b4c_fk_detail_fix2_Id_Detail` FOREIGN KEY (`ID_Detail_fix_id`) REFERENCES `detail_fix2` (`Id_Detail`),
  ADD CONSTRAINT `contract_fix2_ID_service_id_4b4d6195_fk_service_IdService` FOREIGN KEY (`ID_service_id`) REFERENCES `service` (`IdService`),
  ADD CONSTRAINT `contract_fix2_Id_Employee_id_e7022089_fk_employee_Id_Employee` FOREIGN KEY (`Id_Employee_id`) REFERENCES `employee` (`Id_Employee`),
  ADD CONSTRAINT `contract_fix2_Id_customer_id_cf8358f6_fk_customer_Id_customer` FOREIGN KEY (`Id_customer_id`) REFERENCES `customer` (`Id_customer`),
  ADD CONSTRAINT `contract_fix2_Id_device_id_0ed79e37_fk_device_Id_device` FOREIGN KEY (`Id_device_id`) REFERENCES `device` (`Id_device`);

--
-- Ограничения внешнего ключа таблицы `detail_fix2`
--
ALTER TABLE `detail_fix2`
  ADD CONSTRAINT `detail_fix2_Id_KindDetail_id_f16d4bfe_fk_kinddetai` FOREIGN KEY (`Id_KindDetail_id`) REFERENCES `kinddetail` (`Id_KindDetail`);

--
-- Ограничения внешнего ключа таблицы `device`
--
ALTER TABLE `device`
  ADD CONSTRAINT `device_Id_KindDevice_id_1f1de97e_fk_kinddevice_Id_KindDevice` FOREIGN KEY (`Id_KindDevice_id`) REFERENCES `kinddevice` (`Id_KindDevice`),
  ADD CONSTRAINT `device_Id_creator_id_4654f020_fk_creator_Id_creator` FOREIGN KEY (`Id_creator_id`) REFERENCES `creator` (`Id_creator`);

--
-- Ограничения внешнего ключа таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `orderentity_fix2`
--
ALTER TABLE `orderentity_fix2`
  ADD CONSTRAINT `orderentity_fix2_Id_Master_id_75c6cd42_fk_master_Id_Master` FOREIGN KEY (`Id_Master_id`) REFERENCES `master` (`Id_Master`),
  ADD CONSTRAINT `orderentity_fix2_Id_Status_id_6ed6e2b6_fk_status_Id_Status` FOREIGN KEY (`Id_Status_id`) REFERENCES `status` (`Id_Status`),
  ADD CONSTRAINT `orderentity_fix2_Id_contract_id_add2264e_fk_contract_` FOREIGN KEY (`Id_contract_id`) REFERENCES `contract_fix2` (`Id_contract`);

--
-- Ограничения внешнего ключа таблицы `request_delivery2`
--
ALTER TABLE `request_delivery2`
  ADD CONSTRAINT `request_delivery2_ID_Detail_id_d36ac1fe_fk_detail_fix2_Id_Detail` FOREIGN KEY (`ID_Detail_id`) REFERENCES `detail_fix2` (`Id_Detail`),
  ADD CONSTRAINT `request_delivery2_ID_Provider_id_01e59867_fk_provider_` FOREIGN KEY (`ID_Provider_id`) REFERENCES `provider` (`ID_Provider`);

--
-- Ограничения внешнего ключа таблицы `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_Id_service_id_e642f758_fk_kindservice_Id_KindService` FOREIGN KEY (`Id_service_id`) REFERENCES `kindservice` (`Id_KindService`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
