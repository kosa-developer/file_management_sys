-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.12-MariaDB-0ubuntu0.22.04.1 - Ubuntu 22.04
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for file_db
DROP DATABASE IF EXISTS `file_db`;
CREATE DATABASE IF NOT EXISTS `file_db` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `file_db`;

-- Dumping structure for table file_db.department
DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` text DEFAULT NULL,
  `Status` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table file_db.department: ~8 rows (approximately)
DELETE FROM `department`;
INSERT INTO `department` (`id`, `department_name`, `Status`) VALUES
	(7, 'IT', 1),
	(8, 'Directors office', 1),
	(9, 'ACCOUNTS G2G', 1),
	(10, 'HUMAN RESOURCE (HR)', 1),
	(11, 'RECORDS', 1),
	(12, 'Accountant MRRH', 1),
	(13, 'OPD', 1),
	(14, 'EEID', 1);

-- Dumping structure for table file_db.file
DROP TABLE IF EXISTS `file`;
CREATE TABLE IF NOT EXISTS `file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `file_name` text DEFAULT NULL,
  `file` text DEFAULT NULL,
  `passcode` text DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `Box_number` text DEFAULT NULL,
  `Shelve_number` text DEFAULT NULL,
  `Group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table file_db.file: ~55 rows (approximately)
DELETE FROM `file`;
INSERT INTO `file` (`file_id`, `staff_id`, `file_name`, `file`, `passcode`, `department_id`, `status`, `Box_number`, `Shelve_number`, `Group_id`) VALUES
	(9, 5, 'testing', '(METERITY REPORT).xls', 'QT7fyz', 7, 0, NULL, NULL, NULL),
	(10, 7, 'testing2', 'to convert-converted.pdf', NULL, 8, 0, NULL, NULL, NULL),
	(11, 6, 'tesing new', 'Computer template for chronic care2(1).docx', NULL, 7, 1, '', '', NULL),
	(12, 8, 'Mbarara RR Hospital Supplementary   Request 2020-2021 Final Draft', 'Mbarara RR Hospital Supplementary   Request 2020-2021 Final Draft.xlsx', NULL, 9, 1, '', '', NULL),
	(13, 5, 'VAT Reporting Guidelines', '1. Updated VAT reporting guidelines.pptx', NULL, 7, 1, '', '', NULL),
	(14, 5, ' PRIME VAT QUATERLY REPORT WORKSHEET', '2. PRIME VAT QUATERLY REPORT WORKSHEET.xls', NULL, 7, 1, '', '', NULL),
	(15, 5, 'VAT ANNUAL REPORT WORKSHEET ', '3. VAT ANNUAL REPORT WORKSHEET  (1).xls', NULL, 7, 1, '', '', NULL),
	(16, 5, 'MRRH_ Quarterly Financial Reporting Templates', '5. MRRH_ Quarterly Financial Reporting Templates.xlsx', NULL, 7, 1, '', '', NULL),
	(17, 5, 'G2G Equipment Budget', 'G2G Equipment Budget Revised.xlsx', NULL, 7, 1, '', '', NULL),
	(18, 10, 'MRRH PERFOMANCE REVIEW JULY_SEPT 2020 FINAL', 'MRRH PERFOMANCE REVIEW JULY_SEPT 2020 FINAL.pptx', NULL, 11, 1, '', '', NULL),
	(19, 8, 'IL', 'Mbarara G2G IL Amendment #1 as of July 8, 2020.pdf', NULL, 9, 1, '', '', NULL),
	(20, 8, 'PEPFAR REPORT', 'MRRH-Quarterly Financial Report-October 4th.xlsx', NULL, 9, 1, '', '', NULL),
	(21, 11, 'Financial statements 2019-20', 'Mbarara_RRH Interns Pay Schedule.pdf', NULL, 12, 1, '', '', NULL),
	(22, 5, '24 hour report', '24-Hour- Report Edited 24-06-2020.docx', NULL, 7, 1, '', '', NULL),
	(23, 8, 'END OF DEC 2020 FINANCIAL REPORT', 'MRRH G2G Financial Report Dec\'20 final.xlsx', NULL, 9, 1, '', '', NULL),
	(24, 8, 'ACCRUAL REPORT', 'MRRH FAR SF1034 & Financial Report   Apr- Jun\'20.xlsx', NULL, 9, 1, '', '', NULL),
	(25, 8, 'VAT REPORT', '2. PRIME VAT QUATERLY REPORT WORKSHEET.xls', NULL, 9, 1, '', '', NULL),
	(26, 8, 'DISBURSEMENT PLAN', 'MRRH FAR Letter to GATR April-June   qtr (1).docx', NULL, 9, 1, '', '', NULL),
	(27, 8, 'FINANCIAL REPORT', 'MRRH FAR SF1034  Financial Report    Apr- Jun\'20.xlsx', NULL, 9, 1, '', '', NULL),
	(28, 8, 'PENDING APN PAYMENTS DEC 2020', 'MRRH APN OUTREACH PENDING LIST.xlsx', NULL, 9, 1, '', '', NULL),
	(29, 5, 'testinj', 'proposal.docx', NULL, 7, 0, '', '', 1),
	(30, 5, 'Packing', 'MBARARA HOSPITAL PACKING SYSTEM.docx', NULL, 7, 1, '', '', 1),
	(31, 5, 'bnbnnb', 'WHO_NUT_97.4.pdf', NULL, 7, 0, '', '', 1),
	(32, 5, 'fff', 'WHO_NUT_97.4.pdf', NULL, 7, 0, '', '', 1),
	(33, 5, 'sds', 'WHO_NUT_97.4.pdf33.', NULL, 7, 0, '', '', 1),
	(34, 5, 'dfdg', 'WHO_NUT_9734.4', NULL, 7, 0, '', '', 1),
	(35, 5, 'Packing1', 'MBARARA HOSPITAL PACKING SYSTEM35.docx', NULL, 7, 0, '', '', 1),
	(36, 5, 'N computing requirements', 'N computing requirements36.docx', NULL, 7, 0, '', '', 1),
	(37, 9, 'Pension Form NS.14', 'Pension Form NS37.14', NULL, 10, 1, '', '', 2),
	(38, 9, 'Minutes of performance review', 'Minutes of the perfomance review presentation to external parties38.', NULL, 10, 1, '', '', 2),
	(39, 9, 'IT Needs', 'IT requirements for referral39.docx', NULL, 10, 1, '', '', 1),
	(40, 9, 'Implementation letter', 'MBARARA IL-617-IL-2020-MRRH (1) (2)40.pdf', NULL, 10, 1, '', '', 3),
	(41, 8, 'FUNDS REQUISITION QTR 3', 'FUNDS REQUISITION JAN 202141.docx', NULL, 9, 1, '', '', NULL),
	(42, 9, 'SHOs', 'Submission for SHOs42.docx', NULL, 10, 1, '', '', 3),
	(43, 7, 'audit responses to IAG', 'audit responses to IAG43.docx', NULL, 8, 1, '', '', NULL),
	(44, 7, 'MBARARA  HOSPITAL PRESSER word', 'MBARARA  HOSPITAL PRESSER word44.docx', NULL, 8, 1, '', '', NULL),
	(45, 7, 'appointment on locum', 'appointment on locum45.docx', NULL, 8, 1, '', '', NULL),
	(46, 7, 'ATWONGYERE_PAMELLAH_REPORT_APRIL_2020', 'ATWONGYERE_PAMELLAH_REPORT_APRIL_2020,,-1[1]46.docx', NULL, 8, 1, '', '', NULL),
	(47, 7, 'Biodata for the medical interns 2019-20', 'Biodata for the medical interns 2019-2047.doc', NULL, 8, 1, '', '', NULL),
	(48, 7, 'Computer maintenance  8-10-20', 'Computer maintenance  8-10-2048.docx', NULL, 8, 1, '', '', NULL),
	(49, 7, 'COMPUTERS MRRH', 'COMPUTERS MRRH49.docx', NULL, 8, 1, '', '', NULL),
	(50, 7, 'correspondaces_notes ', 'correspondaces_notes[1]50.docx', NULL, 8, 1, '', '', NULL),
	(51, 7, 'Course work - information behaviours', 'Course work - information behaviours51.docx', NULL, 8, 1, '', '', NULL),
	(52, 7, 'coursework - information behaviour', 'coursework - information behaviour52.docx', NULL, 8, 1, '', '', NULL),
	(53, 7, 'Data base  course work', 'Data base  course work53.docx', NULL, 8, 1, '', '', NULL),
	(54, 8, 'FAR ADVANCE REQUEST FEB 21', 'FAR ADVANCE REQUEST FEB 202154.pdf', NULL, 9, 1, '', '', NULL),
	(55, 8, 'CR ADVANCE REQUEST FEB 21', 'CR ADVANCE REQUEST FEB 202155.pdf', NULL, 9, 1, '', '', NULL),
	(56, 8, 'FAR ADVANCE REQUEST MARCH 21', 'FAR ADVANCE REQUEST MARCH 202156.pdf', NULL, 9, 1, '', '', NULL),
	(57, 8, 'CR ADVANCE REQUEST MARCH 21', 'CR ADVANCE REQUEST MARCH 202157.pdf', NULL, 9, 1, '', '', NULL),
	(58, 5, 'Mbarara RRH - ICT Needs Assessment Report 2020_Jul', 'Mbarara RRH - ICT Needs Assessment Report 2020_Jul58.pdf', NULL, 7, 1, '', '', NULL),
	(59, 14, 'hhh', 'ACTIVATORS FOR WINDOWS 10 PRO AND OFFICE 201959.txt', NULL, 14, 0, 'rr', 'ggg', NULL),
	(60, 14, 'bdp', 'BATWA HOUSEHOLDS UNDER BDP 169921148260.xls', NULL, 14, 0, '', '', 5),
	(61, 14, 'ff', 'CH&B & mChis (combined)61.pptx', NULL, 14, 0, '', '', NULL),
	(62, 13, 'hgr', 'AUG TIME TABLE62.xlsx', NULL, 14, 0, '', '', NULL),
	(63, 13, 'fghg', '1st anniversary organizing meeting63.docx', 'KxQwph', 14, 1, '', '', NULL);

-- Dumping structure for table file_db.grouped_files
DROP TABLE IF EXISTS `grouped_files`;
CREATE TABLE IF NOT EXISTS `grouped_files` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Receiver_id` int(11) DEFAULT NULL,
  `Sender_id` int(11) DEFAULT NULL,
  `Group_id` int(11) DEFAULT NULL,
  `Time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` int(11) DEFAULT 1,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table file_db.grouped_files: ~9 rows (approximately)
DELETE FROM `grouped_files`;
INSERT INTO `grouped_files` (`Id`, `Receiver_id`, `Sender_id`, `Group_id`, `Time`, `Status`) VALUES
	(1, 9, 5, 1, '2020-12-21 08:36:29', 1),
	(3, 7, 9, 2, '2020-12-22 09:25:58', 1),
	(4, 10, 9, 2, '2020-12-22 09:25:58', 1),
	(5, 11, 9, 2, '2020-12-22 09:25:58', 1),
	(7, 12, 9, 3, '2020-12-22 12:23:16', 1),
	(9, 9, 7, 4, '2021-01-13 09:05:23', 1),
	(10, 5, 13, 5, '2023-11-27 13:44:11', 1),
	(12, 5, 13, 6, '2023-11-27 13:48:11', 1),
	(14, 14, 13, 5, '2023-11-27 13:49:52', 1);

-- Dumping structure for table file_db.groups
DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `Group_id` int(11) NOT NULL AUTO_INCREMENT,
  `Group_name` varchar(100) DEFAULT NULL,
  `Staff_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Group_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table file_db.groups: ~6 rows (approximately)
DELETE FROM `groups`;
INSERT INTO `groups` (`Group_id`, `Group_name`, `Staff_id`) VALUES
	(1, 'IT department', 5),
	(2, 'FIN & ADMIN', 9),
	(3, 'HUMAN RESOURCE', 9),
	(4, 'SECRETARIAL WORK', 7),
	(5, 'ISAAC WEDDING', 13),
	(6, 'testing', 13);

-- Dumping structure for table file_db.messaging
DROP TABLE IF EXISTS `messaging`;
CREATE TABLE IF NOT EXISTS `messaging` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Sender_id` int(11) DEFAULT NULL,
  `Receiver_id` int(11) DEFAULT NULL,
  `Message` text DEFAULT NULL,
  `Time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` int(11) DEFAULT 1,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table file_db.messaging: ~26 rows (approximately)
DELETE FROM `messaging`;
INSERT INTO `messaging` (`Id`, `Sender_id`, `Receiver_id`, `Message`, `Time`, `Status`) VALUES
	(210, 6, 5, 'hello antony', '2020-11-07 16:16:52', 0),
	(211, 5, 6, 'very well boss', '2020-11-07 16:21:43', 0),
	(212, 6, 5, 'yap', '2020-11-07 16:17:29', 0),
	(213, 5, 8, 'Hello', '2020-11-23 09:02:48', 0),
	(214, 10, 5, 'Reda this file', '2020-11-23 09:03:22', 0),
	(215, 5, 9, 'hello Anton', '2020-11-25 13:10:12', 0),
	(216, 5, 8, 'Are you there', '2023-11-27 14:07:40', 0),
	(217, 9, 11, 'Ben', '2021-01-06 09:08:05', 0),
	(218, 8, 9, 'Good afternoon Mr Balikuddembe.', '2021-01-06 09:46:14', 0),
	(219, 9, 8, 'Good afternoon Madam', '2021-01-13 08:59:47', 0),
	(220, 7, 9, 'Hello Sir, hope are doing well', '2023-11-27 14:07:41', 0),
	(221, 5, 12, 'hi', '2023-11-27 14:07:40', 0),
	(222, 5, 12, 'hi', '2023-11-27 14:07:40', 0),
	(223, 5, 10, 'I am great', '2023-11-27 14:07:40', 0),
	(224, 14, 13, 'hi ahwera', '2023-11-27 13:26:53', 0),
	(225, 13, 14, 'hey charles', '2023-11-27 13:34:36', 0),
	(226, 13, 14, 'fgegh', '2023-11-27 13:34:36', 0),
	(227, 14, 13, 'hhhh', '2023-11-27 13:32:25', 0),
	(228, 13, 14, 'hey', '2023-11-27 13:34:36', 0),
	(229, 14, 13, 'fdsfdsf', '2023-11-27 13:32:25', 0),
	(230, 14, 13, 'njg', '2023-11-27 13:33:22', 0),
	(231, 13, 14, 'njh', '2023-11-27 13:34:36', 0),
	(232, 14, 13, 'ggdgdh', '2023-11-27 13:33:50', 0),
	(233, 14, 13, 'hello', '2023-11-27 13:53:45', 0),
	(234, 13, 14, 'hi', '2023-11-27 14:04:47', 0),
	(235, 14, 13, 'fdfs', '2023-11-27 14:05:22', 0);

-- Dumping structure for table file_db.restrict_member
DROP TABLE IF EXISTS `restrict_member`;
CREATE TABLE IF NOT EXISTS `restrict_member` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Staff_id` int(11) DEFAULT NULL,
  `File_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table file_db.restrict_member: ~0 rows (approximately)
DELETE FROM `restrict_member`;

-- Dumping structure for table file_db.shared_files
DROP TABLE IF EXISTS `shared_files`;
CREATE TABLE IF NOT EXISTS `shared_files` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Receiver_id` int(11) DEFAULT NULL,
  `Sender_id` int(11) DEFAULT NULL,
  `File_id` int(11) DEFAULT NULL,
  `Time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` int(11) DEFAULT 1,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table file_db.shared_files: ~12 rows (approximately)
DELETE FROM `shared_files`;
INSERT INTO `shared_files` (`Id`, `Receiver_id`, `Sender_id`, `File_id`, `Time`, `Status`) VALUES
	(153, 5, 6, 11, '2020-11-07 16:18:35', 0),
	(154, 8, 5, 13, '2020-11-13 08:11:31', 1),
	(155, 8, 5, 14, '2020-11-13 08:11:39', 1),
	(156, 8, 5, 15, '2020-11-13 08:11:48', 1),
	(157, 8, 5, 16, '2020-11-13 08:11:58', 1),
	(158, 8, 5, 12, '2020-11-13 08:12:17', 1),
	(159, 9, 10, 18, '2020-11-25 13:10:55', 0),
	(160, 8, 11, 21, '2020-12-08 11:30:13', 1),
	(161, 13, 5, 13, '2023-11-27 13:39:38', 0),
	(162, 13, 14, 60, '2023-11-27 13:53:16', 0),
	(163, 13, 14, 61, '2023-11-27 13:56:44', 0),
	(164, 5, 13, 63, '2023-11-27 14:03:02', 1),
	(165, 14, 13, 63, '2023-11-27 14:04:14', 0);

-- Dumping structure for table file_db.staff
DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `staff_title` text DEFAULT NULL,
  `user_name` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `Status` int(11) DEFAULT 1,
  `user_type` text DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table file_db.staff: ~9 rows (approximately)
DELETE FROM `staff`;
INSERT INTO `staff` (`staff_id`, `department_id`, `name`, `staff_title`, `user_name`, `password`, `Status`, `user_type`) VALUES
	(5, 7, 'Muganzi Anton', 'IT', 'anton', '4bc541b25a86c89108fedb3d60396ac8', 1, 'Admin'),
	(6, 7, 'testing', 'IT', 'testing', 'ae2b1fca515949e5d54fb22b8ed95575', 0, 'User'),
	(7, 8, 'Esther', 'Secretary', 'esther', 'c7ec7622a90bff8a4f08ba7f4a3dd490', 1, 'User'),
	(8, 9, 'NAKAZIBA JULIET', 'SENIOR ASSISTANT ACCOUNTANT', 'nakaziba', 'dd15c018195613878893a8450b761286', 1, 'User'),
	(9, 10, 'Barikudembe Joseph', 'HR', 'hr', '369d808aadf3274f80e186f442d089c2', 1, 'Admin'),
	(10, 11, 'Sanyu Frank', 'RECORDS HOD', 'records', 'e887efb4b1c99b95bcf32dcaddae8e57', 1, 'User'),
	(11, 12, 'Ben Ahabwe', 'Account', 'ben', '7fe4771c008a22eb763df47d19e2c6aa', 1, 'User'),
	(12, 10, 'Emojong Pius', 'PHR', 'pemojong', 'b266e47eb657161825cded6cc0dd5730', 1, 'User'),
	(13, 14, 'Isaac Ahwera', 'Clinician', 'ahwera', 'fb50bd21dc174554e4f0230d80c1381f', 1, 'User'),
	(14, 14, 'Mugisa Charles', 'Clinician', 'mugisa', 'f51c9e145c7dfbc90eb8bf33c5359fe5', 1, 'User');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
