-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 17, 2013 at 07:25 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

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
(1, 'Avaleht', '	<div class="newsfeed">\n			<img src="img/image1.jpg" class="newsimage">\n			<!-- Tõstsin pildid eraldi kataloogi ning seetõttu peab nende asukohaviitele lisama kataloogi (img/) -->\n			<p><strong>AHHAAMuuseumi ekspositsioon on suletud uuendamiseks. Avame uuenenud ekspositsiooni 2014. aasta kevadel.</strong>\n			</p>\n\n			<p>Uuendamise ajal jätkab muuseumi näituste ja loodushariduse osakond õpetajatele, üpilastele ja loodushuvilistele\n				suunatud haridustegevust.</p>\n		</div>\n');

-- --------------------------------------------------------

--
-- Table structure for table `forum_comments`
--

DROP TABLE IF EXISTS `forum_comments`;
CREATE TABLE IF NOT EXISTS `forum_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `forum_posts_id` int(10) unsigned NOT NULL,
  `comments_author` varchar(255) NOT NULL,
  `comments_title` varchar(255) NOT NULL,
  `comments_content` text NOT NULL,
  `comments_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `forum_posts_id` (`forum_posts_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `forum_comments`
--

INSERT INTO `forum_comments` (`id`, `forum_posts_id`, `comments_author`, `comments_title`, `comments_content`, `comments_timestamp`) VALUES
(1, 1, 'kia', 'Vanaema nõuanne', 'Mingeid heinu tuleb kappi panna', '2013-09-27 07:32:11'),
(2, 2, 'aisa', 'kui veab', 'Kuivata pliidi peal?', '2013-09-27 07:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--

DROP TABLE IF EXISTS `forum_posts`;
CREATE TABLE IF NOT EXISTS `forum_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `posts_title` varchar(255) NOT NULL,
  `posts_content` text NOT NULL,
  `posts_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `topic_id` int(10) unsigned NOT NULL,
  `posts_author` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_id` (`topic_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `forum_posts`
--

INSERT INTO `forum_posts` (`id`, `posts_title`, `posts_content`, `posts_timestamp`, `topic_id`, `posts_author`) VALUES
(1, 'koid teevad riietele liiga', '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, ', '2013-09-27 07:27:14', 2, ''),
(2, 'Liblikakollektsioon hallitab', 'mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and', '2013-09-27 07:27:14', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

DROP TABLE IF EXISTS `forum_topics`;
CREATE TABLE IF NOT EXISTS `forum_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `forum_topics`
--

INSERT INTO `forum_topics` (`id`, `title`, `description`, `image_url`) VALUES
(1, 'Putukate kogumine', 'Arutelu konserveerimisest, prepareerimisest', 'img/image1.jpg'),
(2, 'Putukate vältimine', 'Kogemuste ja teadmiste vahetus mitmesuguste kahjurite teem,a;l', 'img/image2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `excerpt` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text NOT NULL,
  `image_url` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `author`, `excerpt`, `date`, `content`, `image_url`) VALUES
(1, 'Muuseumi ekspositsioon on suletud uuendamiseks. Av', 'kaia', 'Uuendamise ajal...', '2013-09-02 21:00:00', 'Uuendamise ajal jätkab muuseumi näituste ja loodushariduse osakond õpetajatele, õpilastele ja loodushuvilistele suunatud haridustegevust.', 'img/image2.jpg'),
(2, 'looduspealkiri', 'Aia', 'Lühitutvustus Sed ut perspiciatis...', '2013-09-17 06:55:52', 'Uuendamise ajal jätkab muuseumi näituste ja loodushariduse osakond õpetajatele, õpilastele ja loodushuvilistele suunatud haridustegevust.Uuendamise ajal jätkab muuseumi näituste ja loodushariduse osakond õpetajatele, õpilastele ja loodushuvilistele suunatud haridustegevust.', 'img/image1.jpg'),
(3, 'Sed ut perspiciatis unde omnis iste natus error ', 'jäääär', 'Sed ut perspiciatis unde omnis iste natus error sit', '2013-09-20 13:21:07', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"', 'img/image1.jpg'),
(4, 'But I must explain to you how all this mistake', 'Kaisa', 'But I must explain to you how all this mistaken idea', '2013-09-20 13:21:07', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 'img/image2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `the_table`
--

DROP TABLE IF EXISTS `the_table`;
CREATE TABLE IF NOT EXISTS `the_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `insect_name` varchar(50) NOT NULL,
  `price_per_unit` decimal(4,2) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `due_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `the_table`
--

INSERT INTO `the_table` (`id`, `insect_name`, `price_per_unit`, `quantity`, `due_time`) VALUES
(1, 'Sipelgad', '0.90', 4, 7),
(2, 'Lutikad', '1.00', 9, 14),
(3, 'ritsikad', '1.00', 6, 14);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD CONSTRAINT `forum_comments_ibfk_1` FOREIGN KEY (`forum_posts_id`) REFERENCES `forum_posts` (`id`);

--
-- Constraints for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD CONSTRAINT `forum_posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `forum_topics` (`id`);
SET FOREIGN_KEY_CHECKS=1;
