-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 02, 2011 at 09:33 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wall`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `msg_id_fk` int(11) DEFAULT NULL,
  `uid_fk` int(11) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `created` int(11) DEFAULT '1269249260',
  PRIMARY KEY (`com_id`),
  KEY `msg_id_fk` (`msg_id_fk`),
  KEY `uid_fk` (`uid_fk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `comment`, `msg_id_fk`, `uid_fk`, `ip`, `created`) VALUES
(1, 'My first comment ', 1, 1, '127.0.0.1', 1305209833),
(30, 'dfgdfg', 52, 1, '127.0.0.1', 1314251537),
(31, 'gfsdfg', 52, 1, '127.0.0.1', 1314251538),
(35, 'asdf sadf sadfsdfsd', 7, 1, '127.0.0.1', 1314251551),
(63, 'శ్రీనివాస్ తామాడా శ్రీనివాస్ తామాడా శ్రీనివాస్ తామ.', 182, 1, '127.0.0.1', 1315120291),
(62, 'శ్రీనివాస్ తామాడా', 159, 1, '127.0.0.1', 1315065347),
(61, '百度百科', 159, 1, '127.0.0.1', 1315065261),
(34, ' fsadfsdfsdfs df', 7, 1, '127.0.0.1', 1314251550),
(33, 'sda fasdfsda sadf sadf sadf', 7, 1, '127.0.0.1', 1314251548),
(32, 'fgdfg', 52, 1, '127.0.0.1', 1314251539),
(64, 'hello http://9lessons.info', 159, 1, '127.0.0.1', 1315120510),
(50, '&agrave;&deg;&para;&agrave;&plusmn;&agrave;&deg;&deg;&agrave;&plusmn;€&agrave;&deg;&uml;&agrave;&deg;&iquest;&agrave;&deg;&micro;&agrave;&deg;&frac34;&agrave;&deg;&cedil;&agrave;&plusmn; &agrave;&de', 54, 1, '127.0.0.1', 1314912879),
(76, 'Hi Arun.. ', 142, 1, '127.0.0.1', 1315687555),
(65, 'srinvas tamada http://9lessons.info', 182, 1, '127.0.0.1', 1315120528),
(57, 'Nice photos dude. ', 142, 3, '127.0.0.1', 1315054448),
(58, 'Demo comment.', 142, 2, '127.0.0.1', 1315054913),
(59, 'Thank you :)', 142, 1, '127.0.0.1', 1315055110),
(77, 'Google Logo creater.. ', 3, 1, '127.0.0.1', 1315688481),
(73, 'Expanding URLs.', 212, 1, '127.0.0.1', 1315687242),
(74, ':)', 212, 1, '127.0.0.1', 1315687248),
(75, 'HD quality.. ', 212, 1, '127.0.0.1', 1315687260);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `uid_fk` int(11) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `created` int(11) DEFAULT '1269249260',
  `uploads` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`msg_id`),
  KEY `uid_fk` (`uid_fk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=240 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `message`, `uid_fk`, `ip`, `created`, `uploads`) VALUES
(1, 'Hello', 1, '127.0.0.1', 1305209778, NULL),
(2, 'My little blog http://9lessons.info', 1, '127.0.0.1', 1305209846, NULL),
(3, 'Thought of You http://vimeo.com/14803194 ', 1, '127.0.0.1', 1305209884, NULL),
(6, 'Charlie bit my finger http://www.youtube.com/watch?v=_OBlgSz8sSM', 1, '127.0.0.1', 1305280091, NULL),
(7, '?????????? ??????', 1, '127.0.0.1', 1314005017, NULL),
(10, 'శ్రీనివాస్ తామాడా శ్రీనివాస్ తామాడా', 1, '127.0.0.1', 1314019338, NULL),
(21, 'test', 1, '127.0.0.1', 1314168004, ','),
(16, 'sdf sdfsdf sdf', 1, '127.0.0.1', 1314021884, ','),
(46, 'gfdgdfgsdfg ', 1, '127.0.0.1', 1314251524, 'undefined,'),
(47, 'sd fgsdfg sdfg sdfg', 1, '127.0.0.1', 1314251526, 'undefined,'),
(48, 'sddddddddddddddddddd', 1, '127.0.0.1', 1314251527, 'undefined,'),
(49, 'dfg dfgdf', 1, '127.0.0.1', 1314251529, 'undefined,'),
(51, 's dfgdsfg dfg fdg df gfd', 1, '127.0.0.1', 1314251533, 'undefined,'),
(52, 'gsd f gsdfg sdfg', 1, '127.0.0.1', 1314251535, 'undefined,'),
(54, 'శ్రీనివాస్ తామాడా శ్రీనివాస్ తామాడా శ్రీనివాస్ తామాడా శ్రీనివాస్ తామాడా శ్రీనివాస్ తామాడా శ్రీనివాస్ తామాడా', 1, '127.0.0.1', 1314253910, ','),
(55, 'శ్రీనివాస్ తామాడా', 1, '127.0.0.1', 1314253956, ','),
(56, 'O Re Piya - Rolling in the Deep http://www.youtube.com/watch?v=ipNB-ijxHiI', 1, '127.0.0.1', 1314278391, ','),
(143, 'Coming soon Facebook Wall Script 4.0 commercial edition with new features multiple images uploads web cam support.', 1, '127.0.0.1', 1315055495, 'undefined,'),
(144, 'Happy Birthday Lord Ganesh', 1, '127.0.0.1', 1315055515, '446,'),
(145, 'Working on Amazon EC2.  FTP Ubuntu setting.  ', 1, '127.0.0.1', 1315055560, 'undefined,'),
(149, 'New Post : Ajax Image Upload without Refreshing Page using Jquery and PHP http://t.co/MoluzRL', 1, '127.0.0.1', 1315055691, 'undefined,'),
(150, 'Working on Facebook Wall Script 4.0', 1, '127.0.0.1', 1315055734, 'undefined,'),
(151, 'Google search site links expanded', 1, '127.0.0.1', 1315055847, 'undefined,'),
(159, '中文释义 中文是大家熟悉的“我爱你”的意思，用以表达对恋人的爱意。现常常缩写为“I ❤ U”，现很多地方常用上图的图片来表达，杯子恰好是', 1, '127.0.0.1', 1315065239, 'undefined,'),
(221, 'My little programming blog www.9lessons.info', 1, '127.0.0.1', 1315688929, '0'),
(181, 'శ్రీనివాస్ తామాడా శ్రీనివాస్ తామాడా శ్రీనివాస్ తామ.', 1, '127.0.0.1', 1315120230, 'undefined,'),
(182, 'sdf శ్రీనివాస్ తామాడా శ్రీనివాస్ తామాడా శ్రీనివాస్ తామ.', 1, '127.0.0.1', 1315120286, 'undefined,'),
(176, 'select * from tables', 1, '127.0.0.1', 1315119731, 'undefined,'),
(212, 'A Journey Through Vietnam http://vimeo.com/28454865', 1, '127.0.0.1', 1315687210, '0'),
(197, '<script type=\\"text/javascript\\">alert(\\"Script Injection Free\\");</script>', 1, '127.0.0.1', 1315143268, '0'),
(142, 'My Vacation Photos :) ', 1, '127.0.0.1', 1315054165, '445,444,443,'),
(198, 'My Little Blog www.9lessons.info', 1, '127.0.0.1', 1315143301, '0'),
(199, 'My Email srinivas@9lessons.info', 1, '127.0.0.1', 1315143333, '0'),
(200, '<script type=\\''text/javascript\\''> alert( \\''Script Injection Free\\'' ); </script>', 1, '127.0.0.1', 1315143491, '0'),
(214, 'MAKE PEOPLE FALL in LOVE with your IDEAS.', 1, '127.0.0.1', 1315687969, '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `profile_pic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `password`, `email`, `profile_pic`) VALUES
(1, 'Srinivas ', 'aaa', 'srinivas@inbox.com', NULL),
(2, '9lessons', 'egglabs@gmail.com', 'egglabs@gmail.com', NULL),
(3, 'Arun', 'sdfsfsdfsdf', 'arunkfairy@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_uploads`
--

CREATE TABLE IF NOT EXISTS `user_uploads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(30) DEFAULT NULL,
  `uid_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_fk` (`uid_fk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=561 ;

