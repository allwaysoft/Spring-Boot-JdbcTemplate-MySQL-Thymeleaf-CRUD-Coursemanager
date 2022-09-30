-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.22 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 classroster 的数据库结构
CREATE DATABASE IF NOT EXISTS `classroster` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `classroster`;

-- 导出  表 classroster.course 结构
CREATE TABLE IF NOT EXISTS `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacherId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  classroster.course 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT IGNORE INTO `course` (`id`, `name`, `description`, `teacherId`) VALUES
	(2, '五班', '五班', 1);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;

-- 导出  表 classroster.course_student 结构
CREATE TABLE IF NOT EXISTS `course_student` (
  `courseId` int DEFAULT NULL,
  `studentId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  classroster.course_student 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `course_student` DISABLE KEYS */;
INSERT IGNORE INTO `course_student` (`courseId`, `studentId`) VALUES
	(2, 1),
	(2, 2);
/*!40000 ALTER TABLE `course_student` ENABLE KEYS */;

-- 导出  表 classroster.student 结构
CREATE TABLE IF NOT EXISTS `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `lastName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  classroster.student 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT IGNORE INTO `student` (`id`, `firstName`, `lastName`) VALUES
	(1, '小虎学生', '马'),
	(2, '大虎学生', '刘');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- 导出  表 classroster.teacher 结构
CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `lastName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `specialty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在导出表  classroster.teacher 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT IGNORE INTO `teacher` (`id`, `firstName`, `lastName`, `specialty`) VALUES
	(1, '五老师', '王', '数学'),
	(2, '三老师', '张', '语文'),
	(3, '四老师', '李', '英语');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
