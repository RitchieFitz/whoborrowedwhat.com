-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 11, 2015 at 11:13 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `who_borrowed_what`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
`account_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_created` date NOT NULL,
  `last_updated` date NOT NULL,
  `last_updated_by` int(10) unsigned NOT NULL,
  `profile_picture` varchar(500) NOT NULL,
  `profile_description` text NOT NULL,
  `account_type` enum('user','admin') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `user_id`, `username`, `password`, `date_created`, `last_updated`, `last_updated_by`, `profile_picture`, `profile_description`, `account_type`) VALUES
(1, 1, 'richardhenke', 'cs313', '2015-02-04', '2015-02-04', 1, 'pictures/profile_pictures/my_profile.jpg', 'My name is Richard Henke and I live in Rexburg Idaho', 'admin'),
(2, 2, 'roberthenke', 'cs313', '2015-02-04', '2015-02-04', 1, 'pictures/profile_pictures/robert_pic.jpg', 'My name is Robert Henke and I live in Aztec New Mexico', 'user'),
(3, 3, 'ritchiefitzgerald', 'cs313', '2015-02-04', '2015-02-04', 1, 'pictures/profile_pictures/ritchie_pic.jpg', 'My name is Ritchie Fitzgerald and I live in Rexburg Idaho', 'user'),
(4, 4, 'beckyvanwagoner', 'cs313', '2015-02-04', '2015-02-04', 1, 'pictures/profile_pictures/becky_pic.jpg', 'My name is Becky Van Wagoner and I live in Idaho Falls', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
`item_id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `date_created` date NOT NULL,
  `last_updated` date NOT NULL,
  `last_updated_by` int(10) unsigned NOT NULL,
  `tags` text NOT NULL,
  `description` text NOT NULL,
  `item_picture` varchar(500) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `name`, `date_created`, `last_updated`, `last_updated_by`, `tags`, `description`, `item_picture`) VALUES
(1, 'Head First Java Book', '2015-02-04', '2015-02-04', 1, 'book, textbook', 'This is the textbook for CS 246', 'pictures/items/item1.jpg'),
(2, 'Shirt', '2015-02-04', '2015-02-04', 1, 'shirt, clothes', 'This is one of my favorite shirts', 'pictures/items/item2.jpg'),
(3, 'Xbox Drum Set', '2015-02-04', '2015-02-04', 1, 'video game accessory, drum set', 'This is the drum set for band hero', 'pictures/items/item3.jpg'),
(4, 'Friends Seasons 1-2', '2015-02-04', '2015-02-04', 1, 'tv shows, friends, movie, dvd', 'These are so awesome!', 'pictures/items/item4.jpg'),
(5, 'Watch', '2015-02-04', '2015-02-04', 1, 'jewlery, watch', 'This is the watch I won at work', 'pictures/items/item5.jpg'),
(6, 'Band Hero', '2015-02-04', '2015-02-04', 1, 'video game, xbox', 'This is a great game to play on xbox', 'pictures/items/item6.jpg'),
(7, 'Rip Stick', '2015-02-04', '2015-02-04', 1, 'sports, skateboard', 'This is what I got for christmas 2013', 'pictures/items/item7.jpg'),
(8, 'Trivial Pursuit', '2015-02-04', '2015-02-04', 1, 'game, board game, trivia', 'This is a great game to play with friends!', 'pictures/items/item8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
`transaction_id` int(10) unsigned NOT NULL,
  `date_created` date NOT NULL,
  `last_updated` date NOT NULL,
  `last_updated_by` int(10) unsigned NOT NULL,
  `return_date` date DEFAULT NULL,
  `owner_id` int(10) unsigned NOT NULL,
  `borrower_id` int(10) unsigned NOT NULL,
  `active` enum('YES','NO') NOT NULL,
  `item_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `date_created`, `last_updated`, `last_updated_by`, `return_date`, `owner_id`, `borrower_id`, `active`, `item_id`) VALUES
(1, '2015-02-04', '2015-02-04', 1, '2015-03-14', 1, 2, 'YES', 2),
(2, '2015-02-04', '2015-02-04', 1, '2015-03-14', 1, 3, 'YES', 1),
(3, '2015-02-04', '2015-02-04', 1, '2015-03-14', 4, 1, 'YES', 4),
(4, '2015-02-04', '2015-02-04', 1, '2015-03-14', 2, 3, 'YES', 7),
(5, '2015-02-04', '2015-02-04', 1, '2015-03-14', 3, 1, 'YES', 3),
(6, '2015-02-04', '2015-02-04', 1, '2015-03-14', 3, 1, 'YES', 6),
(7, '2015-02-04', '2015-02-04', 1, '2015-03-14', 2, 4, 'YES', 8),
(8, '2015-02-04', '2015-02-04', 1, '2015-03-14', 1, 2, 'YES', 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(10) unsigned NOT NULL,
  `date_created` date NOT NULL,
  `last_updated` date NOT NULL,
  `last_updated_by` int(10) unsigned NOT NULL,
  `name_first` varchar(100) NOT NULL,
  `name_last` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `date_created`, `last_updated`, `last_updated_by`, `name_first`, `name_last`, `email`, `phone_number`) VALUES
(1, '0000-00-00', '0000-00-00', 1, 'Richard', 'Henke', 'hen11013@byui.edu', '1234567890'),
(2, '0000-00-00', '0000-00-00', 1, 'Robert', 'Henke', 'rob@bob.com', '1111111111'),
(3, '0000-00-00', '0000-00-00', 1, 'Ritchie', 'Fitzgerald', 'ritchiefitz1@gmail.com', '3333333333'),
(4, '0000-00-00', '0000-00-00', 1, 'Becky', 'Van Wagoner', 'soccergirl2_7@yahoo.com', '2222222222');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
 ADD PRIMARY KEY (`account_id`), ADD KEY `fk_account_1` (`user_id`), ADD KEY `fk_account_2` (`last_updated_by`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
 ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
 ADD PRIMARY KEY (`transaction_id`), ADD KEY `fk_transaction_1` (`owner_id`), ADD KEY `fk_transaction_2` (`borrower_id`), ADD KEY `fk_transaction_3` (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
MODIFY `account_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
MODIFY `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
MODIFY `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
ADD CONSTRAINT `fk_account_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
ADD CONSTRAINT `fk_account_2` FOREIGN KEY (`last_updated_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
ADD CONSTRAINT `fk_transaction_1` FOREIGN KEY (`owner_id`) REFERENCES `user` (`user_id`),
ADD CONSTRAINT `fk_transaction_2` FOREIGN KEY (`borrower_id`) REFERENCES `user` (`user_id`),
ADD CONSTRAINT `fk_transaction_3` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
