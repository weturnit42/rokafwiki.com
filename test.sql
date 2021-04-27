-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.5.9-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- board 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `board` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `board`;

-- 테이블 board.tbl_board 구조 내보내기
CREATE TABLE IF NOT EXISTS `tbl_board` (
  `bno` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `writer` varchar(30) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `viewCnt` int(11) DEFAULT 0,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 테이블 데이터 board.tbl_board:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tbl_board` DISABLE KEYS */;
INSERT INTO `tbl_board` (`bno`, `title`, `content`, `writer`, `regDate`, `viewCnt`) VALUES
	(1, '테스트 제목1', '테스트 내용', '작성자', '2021-04-25 17:14:08', 0),
	(2, '테스트 제목2', '테스트 내용', '작성자', '2021-04-25 17:14:08', 0),
	(3, '테스트 제목3', '테스트 내용', '작성자', '2021-04-25 17:14:08', 0),
	(4, '테스트 제목4', '테스트 내용', '작성자', '2021-04-25 17:14:08', 0),
	(5, '테스트 제목5', '테스트 내용', '작성자', '2021-04-25 17:14:08', 0);
/*!40000 ALTER TABLE `tbl_board` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
