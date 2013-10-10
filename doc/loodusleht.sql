-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 17, 2013 at 07:36 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `loodusleht`
--

-- --------------------------------------------------------

--
-- Table structure for table `common_pages`
--

DROP TABLE IF EXISTS `common_pages`;
CREATE TABLE IF NOT EXISTS `common_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page` varchar(30) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `common_pages`
--

INSERT INTO `common_pages` (`id`, `page`, `content`) VALUES
(1, 'Avaleht', '	<div class="newsfeed">\n			<img src="img/image1.jpg" class="newsimage">\n			<!-- Tõstsin pildid eraldi kataloogi ning seetõttu peab nende asukohaviitele lisama kataloogi (img/) -->\n			<p><strong>AHHAAMuuseumi ekspositsioon on suletud uuendamiseks. Avame uuenenud ekspositsiooni 2014. aasta kevadel.</strong>\n			</p>\n\n			<p>Uuendamise ajal jätkab muuseumi näituste ja loodushariduse osakond õpetajatele, üpilastele ja loodushuvilistele\n				suunatud haridustegevust.</p>\n		</div>\n\n		<div class="right_panel">\n			<ul class="links">\n				<li>Ülikooli loodusmuuseum ootab seenenäitusele</li>\n				<li>Eesti geoloogiliste vaatamisväärsuste koolitused õpetajatele ja õpilastele 2013. aasta sügisel</li>\n				<li>Seminar "Toit, tervis ja keskkond - õppevahendid koolidele" 13. septembril Pärnus</li>\n				<li>artu Ülikooli loodusmuuseumi kogud AHHAAs</li>\n				<li>Telli loodusmuuseumi uudiskiri</li>\n				<li>Tartu Ülikooli loodusmuuseum Facebookis!</li>\n			</ul>\n		</div>');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `intro`, `date`, `text`) VALUES
(1, 'Muuseumi ekspositsioon on suletud uuendamiseks. Avame uuenenud ekspositsiooni 2014. aasta 					kevadel.', 'Uuendamise ajal...', '0000-00-00 00:00:00', 'Uuendamise ajal jätkab muuseumi näituste ja loodushariduse osakond õpetajatele, õpilastele ja loodushuvilistele suunatud haridustegevust.'),
(2, 'looduspealkiri', 'Lühitutvustus...', '2013-09-17 06:55:52', 'Uuendamise ajal jätkab muuseumi näituste ja loodushariduse osakond õpetajatele, õpilastele ja loodushuvilistele suunatud haridustegevust.Uuendamise ajal jätkab muuseumi näituste ja loodushariduse osakond õpetajatele, õpilastele ja loodushuvilistele suunatud haridustegevust.');
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
