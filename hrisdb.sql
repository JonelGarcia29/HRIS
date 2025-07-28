-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2025 at 01:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrisdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time_in_am` time DEFAULT NULL,
  `time_out_am` time DEFAULT NULL,
  `time_in_pm` time DEFAULT NULL,
  `time_out_pm` time DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `task_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `name`, `task_date`) VALUES
(1, 'No Work', '2023-09-06'),
(2, 'Ninoy Aquino', '2023-09-15'),
(3, 'Seminar', '2023-10-27'),
(4, 'SK Christmas Party', '2023-12-15'),
(5, 'Lorem Ipsum', '2024-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(10) DEFAULT 0,
  `civil_status` varchar(255) DEFAULT NULL,
  `blood` varchar(255) DEFAULT NULL,
  `philhealth` varchar(255) DEFAULT NULL,
  `sss` varchar(255) DEFAULT NULL,
  `gsis` varchar(255) DEFAULT NULL,
  `pagibig` varchar(255) DEFAULT NULL,
  `tin` varchar(255) DEFAULT NULL,
  `salary_grade` varchar(255) DEFAULT NULL,
  `hider` varchar(255) DEFAULT NULL,
  `app` varchar(255) DEFAULT NULL,
  `app_status` varchar(255) DEFAULT NULL,
  `emp_stat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `user_id`, `empid`, `photo`, `name`, `address`, `gender`, `birthday`, `department`, `position`, `created_date`, `status`, `civil_status`, `blood`, `philhealth`, `sss`, `gsis`, `pagibig`, `tin`, `salary_grade`, `hider`, `app`, `app_status`, `emp_stat`) VALUES
(13, 21, '2022004', NULL, 'Napoleon V. Arceo', 'San Nicolas, Batangas', 'Male', '2025-03-26', 'OFFICE OF THE MAYOR', 'Vice Mayor', '2025-05-21 06:10:12', 0, 'Married', 'A', '3456789', '87654', '87654', '345678', '8765345665', '17780970', '2022-05-05', '2022-05-15', 'No', 'Regular'),
(15, 27, '2022064', NULL, 'Jocelyn R. Atienza', 'Poblacion, San Nicolas Batangas', NULL, '2025-04-28', 'OFFICE OF THE MSWDO', 'MGDH', '2025-03-24 09:16:59', 0, 'Married', 'A', '89385', '06996', '237723', '2897724', '28984', '23', '2017-07-23', '2020-09-21', 'Yes', 'Regular'),
(16, 28, '2022031', NULL, 'Melba M. Casabuena', 'Maabud South, San Nicolas Batangas', NULL, '2025-04-26', 'OFFICE OF THE MCR', 'MGDH', '2025-03-24 09:17:21', 0, 'Married', 'O+', '838', '36882', '2894', '2309', '28421', '14', '2016-03-17', '2019-06-27', 'Yes', 'Regular'),
(17, 29, '2022042', NULL, 'Lorelyn T. Alinas', 'Tagudtod, San Nicolas Batangas', NULL, '2025-03-03', 'OFFICE OF AGRICULTURIST', 'Adm.Aide I', '2025-04-01 18:52:57', 0, 'Married', 'O-', '8383', '09430', '5939', '22446', '563', '11', '2018-08-18', '2017-04-30', 'Yes', 'Regular'),
(18, 30, '2022070', NULL, 'Deanna Joy M. Marco', 'San Nicolas, Batangas', NULL, '2025-03-28', 'OFFICE OF AGRICULTURIST', 'MA', '2025-03-24 09:18:24', 0, 'Single', 'O+', '2345678', '345678', '8765432', '9876543', '876543', '5', '2019-04-11', '2019-04-15', 'No', 'Regular'),
(19, 31, '2022039', NULL, 'Ruby B. Suarez', 'Bangin San Nicolas Batangas', NULL, '2025-06-02', 'OFFICE OF THE ACCOUNTANT', 'Adm. Asst. I', '2025-05-25 12:24:35', 0, 'Single', 'B+', '982', '47843', '89442', '320993', '3489492', '10', '2019-09-18', '2020-08-24', 'Yes', 'Regular'),
(20, 33, '2022071', NULL, 'Jerissa C. Sandoval', 'San Nicolas, Batangas', 'Male', '2025-06-06', 'OFFICE OF THE MAYOR', 'Admin Aide III', '2025-05-30 04:14:43', 0, 'Married', 'A', '2345678', '3456789', '765432', '9876432', '8765432', '5', '2020-05-13', '2020-05-20', 'No', 'Regular'),
(21, 35, '2022072', NULL, 'Roschard Sheen A. Alvarez', 'San Nicolas, Batangas', NULL, '2025-05-30', 'OFFICE OF AGRICULTURIST', 'Admin Aide III', '2025-05-25 12:23:48', 0, 'Single', 'A', '234567', '98765433', '9864322', '9876543450', '789065432', '5', '2020-06-06', '2020-06-12', 'No', 'Regular'),
(23, 37, '2022087', NULL, 'Kimberly Christine D. Luya', 'San Nicolas, Batangas', NULL, '2025-06-05', 'MUNICIPAL LDRRMO', 'LDRRM ASST.', '2025-05-25 12:23:34', 0, 'Single', 'A', '34567898', '7654345', '9876543', '123456789', '0987654345', '7', '2019-05-07', '2019-05-14', 'No', 'Regular'),
(24, 38, '2022085', NULL, 'Dulce M. De Sagun', 'San Nicolas, Batangas', NULL, '2025-05-31', 'OPERATION OF WATERWORKS', 'Mtr. Reader II', '2025-05-25 12:23:15', 0, 'Married', 'A', '1234567', '876543', '76543', '4567890', '09876543', '5', '2018-12-11', '2018-12-21', 'No', 'Regular'),
(25, 42, '2022086', NULL, 'Mharlon B. Gonzales', 'San Nicolas, Batangas', NULL, '2025-05-29', 'OPERATION OF WATERWORKS', 'Mtr. Reader I', '2025-05-25 12:23:02', 0, 'Single', 'A', '354767645', '96753423', '253465768798', '876543', '908543543', '5', '2018-03-12', '2018-03-15', 'No', 'Regular'),
(26, 46, '2022073', NULL, 'Guillerma M. Matienzo', 'San Nicolas, Batangas', NULL, '2025-05-26', 'OFFICE OF THE ENGINEER', 'MGDH', '2025-05-25 12:22:51', 0, 'Married', 'A', '14253647586', '7654332', '2536457689', '42534657687', '236475898', '11', '2018-03-12', '2018-03-15', 'No', 'Regular'),
(27, 47, '2022074', NULL, 'Maria Monica M. Matienzo', 'San Nicolas, Batangas', NULL, '2025-04-23', 'OFFICE OF THE ENGINEER', 'Engr. II', '2025-03-24 09:16:44', 0, 'Single', 'A', '235467887', '98756434', '2343546', '42536475', '534657687', '11', '2018-06-23', '2018-06-29', 'No', 'Regular'),
(28, 48, '2022016', NULL, 'Mariya B. Ensina', 'Maabud North, san Nicolas Batangas', NULL, '2025-03-12', 'OFFICE OF THE SB SECRETARY', 'SB Secretary', '2025-04-01 18:53:33', 0, 'Married', 'O+', '234567', '6767', '0876', '23456', '98765', '24', '2019-03-08', '2020-09-27', 'Yes', 'Regular'),
(29, 50, '4343', NULL, 'John Dan Doe', 'test XOXO', NULL, '2025-03-26', 'OFFICE OF MPDC', 'HR', '2025-03-24 09:15:55', 0, 'Single', 'A-', '9283982', '323232', '434343', '43434', '666634', '24', '2023-12-12', '2023-12-13', 'Yes', 'Regular'),
(32, 54, '0499495', NULL, 'Angela G. Manalo', 'Maabud North, san Nicolas Batangas', NULL, '2025-04-01', 'OFFICE OF THE MAYOR', 'Midwife III', '2025-04-18 11:39:49', 0, 'Single', 'B', '89385', '2222', '2763', '44444', '9873787843', '11', '2024-05-02', '2024-05-02', 'Yes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_files`
--

CREATE TABLE `employee_files` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `size` varchar(50) NOT NULL,
  `creator` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave`
--

CREATE TABLE `employee_leave` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `status` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `type` varchar(50) NOT NULL,
  `reason` text NOT NULL,
  `file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_leave`
--

INSERT INTO `employee_leave` (`id`, `user_id`, `employee_id`, `name`, `department`, `position`, `status`, `created_at`, `leave_from`, `leave_to`, `type`, `reason`, `file`) VALUES
(18, '21', 13, 'Napoleon V. Arceo', 'OFFICE OF SB', 'Vice Mayor', 3, '2025-05-11 09:36:28', '2024-05-22', '2024-05-29', 'Vacation Leave', 'Out of the country with family and relatives for a family reunion', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_performance`
--

CREATE TABLE `employee_performance` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(50) DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `sp` int(255) NOT NULL,
  `cf` varchar(255) NOT NULL,
  `sf` varchar(255) NOT NULL,
  `fr` varchar(255) NOT NULL,
  `ar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_performance`
--

INSERT INTO `employee_performance` (`id`, `employee_id`, `count`, `month`, `year`, `added_by`, `created_date`, `updated_at`, `created_at`, `sp`, `cf`, `sf`, `fr`, `ar`) VALUES
(1, '10', NULL, NULL, '2023', NULL, '2023-12-03 01:38:25', '2023-12-03 01:38:25', '2023-12-03 01:38:25', 89, '96', '78', '99', '100'),
(3, '10', NULL, NULL, '2022', NULL, '2023-12-03 01:39:25', '2023-12-03 01:39:25', '2023-12-03 01:39:25', 89, '96', '78', '99', '100'),
(4, '13', NULL, NULL, '2018', NULL, '2023-12-04 03:49:02', '2023-12-04 03:49:02', '2023-12-04 03:49:02', 45, '30', '25', '45', '45'),
(5, '16', NULL, NULL, '2018', NULL, '2023-12-04 05:55:31', '2023-12-04 05:55:31', '2023-12-04 05:55:31', 35, '30', '35', '45', '35'),
(6, '16', NULL, NULL, '2018', NULL, '2023-12-04 05:55:31', '2023-12-04 05:55:31', '2023-12-04 05:55:31', 35, '30', '35', '45', '35'),
(7, '16', NULL, NULL, '2019', NULL, '2023-12-04 05:56:27', '2023-12-04 05:56:27', '2023-12-04 05:56:27', 32, '30', '34', '40', '40'),
(8, '16', NULL, NULL, '2020', NULL, '2023-12-04 05:57:16', '2023-12-04 05:57:16', '2023-12-04 05:57:16', 33, '34', '35', '45', '40'),
(9, '16', NULL, NULL, '2021', NULL, '2023-12-04 05:58:29', '2023-12-04 05:58:29', '2023-12-04 05:58:29', 35, '35', '40', '45', '40'),
(10, '16', NULL, NULL, '2022', NULL, '2023-12-04 05:59:04', '2023-12-04 05:59:04', '2023-12-04 05:59:04', 35, '35', '40', '45', '40'),
(11, '14', NULL, NULL, '45', NULL, '2023-12-13 15:36:48', '2023-12-13 15:36:48', '2023-12-13 15:36:48', 30, '35', '40', '45', '45'),
(12, '14', NULL, NULL, '2018', NULL, '2023-12-13 15:37:32', '2023-12-13 15:37:32', '2023-12-13 15:37:32', 35, '30', '40', '45', '45'),
(13, '13', NULL, NULL, '2023', NULL, '2025-02-10 08:11:18', '2025-02-10 08:11:18', '2025-02-10 08:11:18', 12, '21', '31', '21', '21'),
(32, '43', NULL, NULL, '2023', NULL, '2025-05-19 15:16:49', '2025-05-19 15:16:49', '2025-05-19 15:16:49', 88, '33', '55', '77', '99');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `files_uploaded`
--

CREATE TABLE `files_uploaded` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `file_name` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files_uploaded`
--

INSERT INTO `files_uploaded` (`id`, `employee_id`, `title`, `file_name`, `created_at`) VALUES
(1, '1', 'test', '546927748.png', '2023-09-05 05:16:07'),
(2, '2', 'test 123', '1007979900.png', '2023-09-05 15:24:44'),
(4, '10', 'Diploma', '1876873985.pdf', '2023-12-03 01:58:08'),
(6, '5', 'test 2', '524378542.jpg', '2023-09-06 04:54:47'),
(7, '2', 'CIVIL SERVICE', '1336004423.png', '2023-09-28 07:47:34'),
(8, '6', 'Test', '620879800.png', '2023-10-20 08:03:59'),
(9, '10', 'e2weew', '271175177.jpg', '2023-11-23 00:46:52'),
(10, '12', 'test123', '261255135.jpg', '2023-12-04 03:32:36'),
(11, '12', 'test', '1853583497.pdf', '2023-12-04 03:41:35'),
(12, '13', 'sss', '2026844654.png', '2023-12-04 04:08:13'),
(13, '13', 'oki', '968468820.pdf', '2023-12-04 04:19:04'),
(14, '16', 'OATH OF OFFICE', '362077213.pdf', '2023-12-04 06:02:06'),
(15, '16', 'ASSUMPTION TO DUTY', '1863722232.pdf', '2023-12-04 06:02:42'),
(16, '16', 'CS FORM NO. 33-A', '225457780.pdf', '2023-12-04 06:03:14'),
(17, '16', 'ACCOUNTANT LETTER', '1929324904.pdf', '2023-12-04 06:03:39'),
(18, '16', 'CERTIFICATION', '504783955.pdf', '2023-12-04 06:04:05'),
(19, '14', 'CS FORM NO. 33-A', '1265831886.pdf', '2023-12-13 15:20:06'),
(20, '14', 'LETTER OF ACCOUNTANT', '1406909702.pdf', '2023-12-13 15:20:51'),
(21, '41', 'Summary', '88673035.pdf', '2025-02-10 11:14:24');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `recipient_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `is_starred` tinyint(1) DEFAULT 0,
  `folder` varchar(255) DEFAULT 'inbox',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message_attachments`
--

CREATE TABLE `message_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_size` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_validation`
--

CREATE TABLE `request_validation` (
  `id` int(11) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `file` varchar(50) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_validation`
--

INSERT INTO `request_validation` (`id`, `employee_id`, `purpose`, `note`, `file`, `status`, `created_date`) VALUES
(8, 13, 'ihhi', 'gutftf', NULL, 1, '2025-04-15 00:38:46'),
(9, 13, 'qwe', 'qwe', NULL, 2, '2025-04-09 05:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `barangay` varchar(50) DEFAULT NULL,
  `ZIP` int(11) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `verification_code` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `photo`, `first_name`, `last_name`, `middle_name`, `email`, `password`, `role`, `status`, `address`, `gender`, `birthday`, `phone`, `country`, `province`, `city`, `barangay`, `ZIP`, `number`, `email_verified_at`, `remember_token`, `verification_code`, `created_at`, `updated_at`) VALUES
(6, NULL, 'John', 'Dan', '', 'john@gmail.com', '$2y$10$Q1Ygyk2EghSeFmw94Exm.eyKQpOFN5zuIJt4e/4LUaOkYhpfA1Kii', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dC3Wdcb7gbrqCPZJjD4X6qkmXcXQay49OBwp0OJiwe0NkcSXeYpQdA4DittO', NULL, '2023-09-05 06:26:30', '2023-09-05 06:26:30'),
(7, NULL, 'Admin', '', '', 'admin@gmail.com', '$2y$10$LvTnMhhrJwpS/oOc8yMhE.vAe2VQlv4HNnN7D2H2eyJV5nKn98qiK', 'Admin', 0, NULL, NULL, '2025-03-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '019CWCnf4IqfmloWHLTtVqK7EV3VmZWI3U5ok9nAFogH4V1z5LKfQVogdTpS', 'OLELOH', '2023-09-06 04:41:21', '2025-05-21 17:35:09'),
(8, NULL, 'karl', 'cali', '', 'karl@gmail.com', '$2y$10$lrL7RsnygmwrSgf6okNCfODraV/0TRcmKpCAxZxLbKypV5YKmexNi', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SD3gK3025B', NULL, '2023-09-06 08:45:51', '2023-09-06 08:45:51'),
(9, NULL, 'KARL', 'KARL', '', 'karl123@gmail.com', '$2y$10$v4GNYVckSjeCX0WJNdasOePzWrEHb628B08Mbrvj7Wxjryw/N4pFm', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ePJ32K9r7xc4UoqNAiohR3hTPeOhZwQK0AFHZiDNNwEs2G5RuAw7CrCqxqkr', NULL, '2023-09-06 08:46:59', '2023-09-06 08:46:59'),
(14, NULL, 'Dow', 'Danny', 'Sab', 'danny@gmail.com', '$2y$10$b/lqmPuh4CbGLoqMCpDx3eTjzXXO4txa4MSUKonpHFdPTKQ8jegku', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pjI0J02b8V7hDTpnlLTbUaEdN6y77O0LvrnQomkWO0QzvnbRoCUHjrPWzb9A', NULL, '2023-11-22 07:56:11', '2023-11-22 07:56:11'),
(16, NULL, 'Dow', 'Danny', 'Sab', 'danny1@gmail.com', '$2y$10$m40nyqjdxcQMkzNwD1WVrOcdmpQja88Wppz9gVap9RF9bpbrfcEkO', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bwPXaZqnAA', NULL, '2023-11-22 07:56:47', '2023-11-22 07:56:47'),
(18, NULL, 'Dow', 'Danny', 'Sab', 'danny2@gmail.com', '$2y$10$4pQ7k5x.mNQXsNpF2SDNIelttUCzBJd7dnLM/xmv5cJd.jxvFZtcq', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'USV1cDonbCj57763m585JVZvFDr4IAS5eqqgHdavJdyyZdf5KEYRT6tp26ve', NULL, '2023-11-22 07:57:20', '2023-11-22 07:57:20'),
(19, NULL, 'sasa', 'sasa', 'sasas', 'danny123@gmail.com', '$2y$10$5URvQR1gjaOTWfiFxB/b..dyWqwpBcHRc3UfpBrOh6.2DvfcZkwni', 'Admin', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9bByZ03G4t', NULL, '2023-11-22 16:46:32', '2023-11-22 16:46:32'),
(20, NULL, 'test', 'test', 'test', 'test@gmail.com', '$2y$10$rET2/VX2p02BWyPC/gfS1utgmcgM/sdJYWt.HaKA4P5jrS1V8CR5O', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'qnaC5abXIp', NULL, '2023-12-04 08:32:21', '2023-12-04 08:32:21'),
(21, NULL, 'Napoleon', 'Arceo', 'V.', '2022004@gmail.com', '$2y$10$uBJ.ejpCYq14gZE9ek0N/OZlznOidJ2B1o6dAiomhBh0Ea91vT7Qi', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AyiZQg2Ws94lp9nTdJ0IX807IvNj9o6StR0srHqbSKxCFQs1vdjNkOyHXsYy', NULL, '2023-12-04 08:34:48', '2023-12-04 08:34:48'),
(22, NULL, 'Analee', 'Arenas', 'M.', '2022056@gmail.com', '$2y$10$ebppAvF/jCN7Y1wynoARa.O2sMNltv5Xcltk5ne7VjCZ9ZPlGj4la', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0oZmh5pOv9mtt4SUtWxx0ubiMtd9lj5TgNF6Ta0SlkugPKU6Rx1nKX09YyMC', NULL, '2023-12-04 09:58:29', '2023-12-04 09:58:29'),
(27, NULL, 'Jocelyn', 'Atienza', 'R.', '2022064@gmail.com', '$2y$10$r39nrxKeq5wquLH5KIiOyOnSujBJ4x4oOE9G6/gRuIEnI5TqkMwxu', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'n6hXL0Kf8m', NULL, '2023-12-04 10:09:03', '2023-12-04 10:09:03'),
(28, NULL, 'Melba', 'Casabuena', 'M.', '2022031@gmail.com', '$2y$10$ZMP/eeEdP4mDbPRLZBP5ieMIOfpYQcrYwKVV7KFVv/m4.HFgwYVCK', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1FQyTGpVmAfCItTDZ278dNIG0JOIsVxFiXoOmlBfD4KCOgJ060zu7i6p3AXd', NULL, '2023-12-04 10:11:46', '2023-12-04 10:11:46'),
(29, NULL, 'Lorelyn', 'Alinas', 'T.', '2022042@gmail.com', '$2y$10$iQrZc/.l6nN2Uz1GznVeS.CaFYr39jjyCaOkwp.qYZUk.p7T2xYUe', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cCM6xbls7H', NULL, '2023-12-04 10:14:09', '2023-12-04 10:14:09'),
(30, NULL, 'Deanna Joy', 'Marco', 'M.', '2022070@gmail.com', '$2y$10$3BFA8kIzXxLKLx56BXIKi.PowawS/bB.pyQ5PB0Dxvrh6jAEriF9G', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zibZnsbn0E', NULL, '2023-12-04 10:16:45', '2023-12-04 10:16:45'),
(31, NULL, 'Ruby', 'Suarez', 'B.', '2022039@gmail.com', '$2y$10$TbgNwB5ErC4yQ/mHyf2Vf.FsOizZhyedWwHlb3yc0gGTWYsXcquLe', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1UMdqip8Ds', NULL, '2023-12-04 10:17:20', '2023-12-04 10:17:20'),
(33, NULL, 'Jerissa', 'Sandoval', 'C.', '2022071@gmail.com', '$2y$10$7xgVuzZ.fF2n0PrDeGDSlOLVKwPAqP6nCcntc8yBcv1z/87rl7ZwW', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YvvALsbKVI', NULL, '2023-12-04 10:18:43', '2023-12-04 10:18:43'),
(35, NULL, 'Roschard Sheen', 'Alvarez', 'A.', '2022072@gmail.com', '$2y$10$3PILmINdMkI/1zANpvuA2eyFb6UJWFv026igHgo1hgd6mi2nazDDu', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'skGaaH5D7D', NULL, '2023-12-04 10:28:11', '2023-12-04 10:28:11'),
(36, NULL, 'Anelyn', 'De Sagun', 'S.', '2022069@gmail.com', '$2y$10$pbL1Cguo7GE5ikLqw9ogkeNRmJ5l/9rpa/lucQ4uJldIhsAQz6DFK', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rQ7U2knlzk', NULL, '2023-12-04 10:30:34', '2023-12-04 10:30:34'),
(37, NULL, 'Kimberly Christine', 'Luya', 'D.', '2022087@gmail.com', '$2y$10$1HloxZe7xv8XodLdXgT33.DuzlfDCPi6N5N.a9djQa017ha9jlcnS', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vvWvzNL8a2', NULL, '2023-12-04 10:32:10', '2023-12-04 10:32:10'),
(38, NULL, 'Dulce', 'De Sagun', 'M.', '20022085@gmail.com', '$2y$10$N9vc18FZCQcPI24qPrxsgu0wax3qkZI7XCh3ykOlBmHmzOLyCx29S', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jQAKfx1rXm', NULL, '2023-12-04 10:34:26', '2023-12-04 10:34:26'),
(42, NULL, 'Mharlon', 'Gonzales', 'B.', '2022086@gmail.com', '$2y$10$ciHn9q1XVjiAIvTZOz3GhuvNj25oxv8.mX9LFGUKbaqzd7VQbJ83u', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0b4gmBURho', NULL, '2023-12-04 10:37:04', '2023-12-04 10:37:04'),
(46, NULL, 'Guillerma', 'Matienzo', 'M.', '2022073@gmail.com', '$2y$10$yXVNp5qkAxWVOIiDoHfL9OA8f0qHCiaJbwgL6sJUTfb3p3nCGvBhi', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2tp59BHagc', NULL, '2023-12-04 10:50:31', '2023-12-04 10:50:31'),
(47, NULL, 'Maria Monica', 'Matienzo', 'M.', '2022074@mgail.com', '$2y$10$ApnF3dSiDkyye1LKPAeEAujxGjtToeprdMm/FUh5qB2OnuFHqSGt2', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No5WbzM3UI', NULL, '2023-12-04 10:52:04', '2023-12-04 10:52:04'),
(48, NULL, 'Mariya', 'Ensina', 'B.', '2022016@gmail.com', '$2y$10$8lDJGddCErim4.NHPGIezezu6wLNNLh/xEuar5e1zggHyttMlOMhy', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AX1xB3WAjgAEQB5clomCLyAXS5KEaPJmCz7dqxgfwf53FLPghiIP3Y7k3BYa', NULL, '2023-12-09 18:04:37', '2023-12-09 18:04:37'),
(50, NULL, 'John', 'Doe', 'Dan', 'john1@gmail.com', '$2y$10$IbcJhRCOcQpVCSZKSd0uT.1ForX5HtDl2pc2Cyw0VksTR.IlTHqeG', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ybrz5QtvEI9vX5goeZE1fgbPEe0QSB244aEZz0BX0a80UpaaGQarRyXEX6Cm', NULL, '2023-12-11 09:43:17', '2023-12-11 09:43:17'),
(52, NULL, 'karl', 'karl', 'karl', 'karl12345@gmail.com', '$2y$10$zXQE8Q/JyI8SHgNOu9D6KOUuX85EqUOW7muUjBd8mKzsqrmHngTyi', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'y2W44DLZMC', NULL, '2023-12-16 18:36:37', '2023-12-16 18:36:37'),
(54, NULL, 'Angela', 'Manalo', 'G.', 'angelam@gmail.com', '$2y$10$LsJAO0vcHnMIH5ZNt/kBjuo202pS049tFPYrrO7s2X6r0r1qFvYHC', 'Employee', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sDOHUQU0t7', NULL, '2024-05-02 13:42:13', '2024-05-02 13:42:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_date_index` (`employee_id`,`date`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_files`
--
ALTER TABLE `employee_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_performance`
--
ALTER TABLE `employee_performance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files_uploaded`
--
ALTER TABLE `files_uploaded`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sender` (`sender_id`),
  ADD KEY `fk_recipient` (`recipient_id`);

--
-- Indexes for table `message_attachments`
--
ALTER TABLE `message_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_message` (`message_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `request_validation`
--
ALTER TABLE `request_validation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_id_unique` (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_remember_token_unique` (`remember_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `employee_files`
--
ALTER TABLE `employee_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `employee_leave`
--
ALTER TABLE `employee_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `employee_performance`
--
ALTER TABLE `employee_performance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_uploaded`
--
ALTER TABLE `files_uploaded`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `message_attachments`
--
ALTER TABLE `message_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `request_validation`
--
ALTER TABLE `request_validation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_files`
--
ALTER TABLE `employee_files`
  ADD CONSTRAINT `employee_files_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `fk_recipient` FOREIGN KEY (`recipient_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_sender` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `message_attachments`
--
ALTER TABLE `message_attachments`
  ADD CONSTRAINT `fk_message` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
