-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2014 at 06:15 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `base_framework`
--

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE IF NOT EXISTS `tokens` (
  `token_id` varchar(23) COLLATE utf8_unicode_ci NOT NULL,
  `token_userid` int(11) NOT NULL,
  `token_device` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `token_string` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`token_id`),
  UNIQUE KEY `token_id` (`token_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE IF NOT EXISTS `userdata` (
  `userdata_userid` int(11) NOT NULL,
  `userdata_fullname` varchar(256) NOT NULL,
  `userdata_nickname` varchar(16) NOT NULL,
  `userdata_photo` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userlevels`
--

CREATE TABLE IF NOT EXISTS `userlevels` (
  `userlevel_id` int(11) NOT NULL AUTO_INCREMENT,
  `userlevel_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`userlevel_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `userlevels`
--

INSERT INTO `userlevels` (`userlevel_id`, `userlevel_name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_level` int(11) NOT NULL DEFAULT '0',
  `user_username` varchar(166) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_password` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_lastlogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:disabled; 1:enabled;',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UNIQUE` (`user_username`),
  KEY `INDEX` (`user_username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_level`, `user_username`, `user_password`, `user_lastlogin`, `user_status`) VALUES
(1, 1, 'admin', 'sha256:1000:X8XANzav53n9zDgO9Idm9Nb6U8Qw+lnf:i7JWERD/wcVj48rFH3mbyfS7OSHkrsem', '0000-00-00 00:00:00', 0),
(2, 2, 'user', 'sha256:1000:X8XANzav53n9zDgO9Idm9Nb6U8Qw+lnf:i7JWERD/wcVj48rFH3mbyfS7OSHkrsem', '2014-02-26 07:58:57', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
