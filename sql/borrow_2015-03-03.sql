# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.22)
# Database: borrow
# Generation Time: 2015-03-04 03:29:23 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table account
# ------------------------------------------------------------

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `account_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_created` date NOT NULL,
  `last_updated` date NOT NULL,
  `last_updated_by` int(10) unsigned NOT NULL,
  `profile_picture` varchar(500) NOT NULL,
  `profile_description` text NOT NULL,
  `account_type` enum('user','admin') NOT NULL,
  PRIMARY KEY (`account_id`),
  KEY `fk_account_1` (`user_id`),
  KEY `fk_account_2` (`last_updated_by`),
  CONSTRAINT `fk_account_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_account_2` FOREIGN KEY (`last_updated_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;

INSERT INTO `account` (`account_id`, `user_id`, `username`, `password`, `date_created`, `last_updated`, `last_updated_by`, `profile_picture`, `profile_description`, `account_type`)
VALUES
	(1,1,'richardhenke','cs313','2015-02-04','2015-02-04',1,'pictures/profile_pictures/my_profile.jpg','My name is Richard Henke and I live in Rexburg Idaho','admin'),
	(2,2,'roberthenke','cs313','2015-02-04','2015-02-04',1,'pictures/profile_pictures/robert_pic.jpg','My name is Robert Henke and I live in Aztec New Mexico','user'),
	(3,3,'ritchiefitzgerald','cs313','2015-02-04','2015-02-04',1,'pictures/profile_pictures/ritchie_pic.jpg','My name is Ritchie Fitzgerald and I live in Rexburg Idaho','user'),
	(4,4,'beckyvanwagoner','cs313','2015-02-04','2015-02-04',1,'pictures/profile_pictures/becky_pic.jpg','My name is Becky Van Wagoner and I live in Idaho Falls','user'),
	(29,30,'example@example.com','cs313','2015-02-19','2015-02-19',1,'pictures/profile_pictures/generic_profile.png','No description has been entered for somename yet.','user'),
	(30,31,'test1@yahoo.com','cs313','2015-02-21','2015-02-21',1,'pictures/profile_pictures/generic_profile.png','No description has been entered for Test yet.','user'),
	(31,32,'asd@d','asd','2015-02-21','2015-02-21',1,'pictures/profile_pictures/generic_profile.png','No description has been entered for asd yet.','user'),
	(32,33,'soccergirl2_7@yahoo.com','listen2leo','2015-02-22','2015-02-22',1,'pictures/profile_pictures/generic_profile.png','No description has been entered for Becky yet.','user'),
	(33,34,'ritchie.fitzgerald@gmail.com','ritchie','2015-03-03','2015-03-03',1,'pictures/profile_pictures/generic_profile.png','No description has been entered for Ritchie yet.','user');

/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `date_created` date NOT NULL,
  `last_updated` date NOT NULL,
  `last_updated_by` int(10) unsigned NOT NULL,
  `tags` text NOT NULL,
  `description` text NOT NULL,
  `item_picture` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;

INSERT INTO `item` (`item_id`, `name`, `date_created`, `last_updated`, `last_updated_by`, `tags`, `description`, `item_picture`)
VALUES
	(1,'Head First Java Book','2015-02-04','2015-02-04',1,'book, textbook','This is the textbook for CS 246','pictures/items/item1.jpg'),
	(2,'Shirt','2015-02-04','2015-02-04',1,'shirt, clothes','This is one of my favorite shirts','pictures/items/item2.jpg'),
	(3,'Xbox Drum Set','2015-02-04','2015-02-04',1,'video game accessory, drum set','This is the drum set for band hero','pictures/items/item3.jpg'),
	(4,'Friends Seasons 1-2','2015-02-04','2015-02-04',1,'tv shows, friends, movie, dvd','These are so awesome!','pictures/items/item4.jpg'),
	(5,'Watch','2015-02-04','2015-02-04',1,'jewlery, watch','This is the watch I won at work','pictures/items/item5.jpg'),
	(6,'Band Hero','2015-02-04','2015-02-04',1,'video game, xbox','This is a great game to play on xbox','pictures/items/item6.jpg'),
	(7,'Rip Stick','2015-02-04','2015-02-04',1,'sports, skateboard','This is what I got for christmas 2013','pictures/items/item7.jpg'),
	(8,'Trivial Pursuit','2015-02-04','2015-02-04',1,'game, board game, trivia','This is a great game to play with friends!','pictures/items/item8.jpg'),
	(37,'zcvz','2015-02-20','2015-02-20',0,'cvzxcv','zxcvz','pictures/items/item9.jpg'),
	(38,'Test complete','2015-02-20','2015-02-20',0,'transaction','sdsdf','pictures/items/item38.jpg'),
	(39,'zxcvzxcv','2015-02-20','2015-02-20',0,'zxcvzxcv','zxcvzxcv','pictures/items/item39.jpg'),
	(40,'333333333','2015-02-20','2015-02-20',0,'xcvzxcv','zxcvzxcv','pictures/items/item40.jpg'),
	(41,'55555555','2015-02-20','2015-02-20',0,'fgsdfg','sdfgsdfg','pictures/items/item41.jpg'),
	(42,'55555555','2015-02-20','2015-02-20',0,'fgsdfg','sdfgsdfg','pictures/items/item42.jpg'),
	(43,'test update transaction','2015-02-20','2015-02-20',0,'dfsdf','sdfgsdf','pictures/items/item43.jpg'),
	(44,'Test3333333','2015-02-22','2015-02-22',0,'333333','333333333333','pictures/items/item44.jpg'),
	(45,'eeg','2015-02-22','2015-02-22',0,'dfg','dfg','pictures/items/item45.jpg'),
	(46,'Picture of Richard','2015-02-22','2015-02-22',0,'Photo','Picture of the best man in the whole world!','pictures/items/item46.jpg'),
	(47,'Picture','2015-02-27','2015-02-27',0,'Me','Coolest Cousin','pictures/items/item47.jpg'),
	(48,'blah','2015-02-27','2015-02-27',0,'blah','blahdblah','pictures/items/item48.jpg'),
	(49,'aasdg','2015-03-03','2015-03-03',0,'asg','asfgasgasf','pictures/items/item49.jpg'),
	(50,'aasdg','2015-03-03','2015-03-03',0,'asdgasgd','asgasg','pictures/items/item50.jpg'),
	(51,'aasdg','2015-03-03','2015-03-03',0,'asdgasgd','asgasg','pictures/items/item51.jpg'),
	(52,'aasdg','2015-03-03','2015-03-03',0,'asdgasgd','asgasg','pictures/items/item52.jpg'),
	(53,'aasdg','2015-03-03','2015-03-03',0,'asdgasgd','asgasg','pictures/items/item53.jpg'),
	(54,'aasdg','2015-03-03','2015-03-03',0,'asdgasgd','asgasg','pictures/items/item54.jpg'),
	(55,'aasdg','2015-03-03','2015-03-03',0,'asdgasgd','asgasg','pictures/items/item55.jpg');

/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table transaction
# ------------------------------------------------------------

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_created` date NOT NULL,
  `last_updated` date NOT NULL,
  `last_updated_by` int(10) unsigned NOT NULL,
  `return_date` date DEFAULT NULL,
  `owner_id` int(10) unsigned NOT NULL,
  `borrower_id` int(10) unsigned NOT NULL,
  `active` enum('YES','NO') NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `fk_transaction_1` (`owner_id`),
  KEY `fk_transaction_2` (`borrower_id`),
  KEY `fk_transaction_3` (`item_id`),
  CONSTRAINT `fk_transaction_1` FOREIGN KEY (`owner_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_transaction_2` FOREIGN KEY (`borrower_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_transaction_3` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;

INSERT INTO `transaction` (`transaction_id`, `date_created`, `last_updated`, `last_updated_by`, `return_date`, `owner_id`, `borrower_id`, `active`, `item_id`)
VALUES
	(1,'2015-02-04','2015-02-04',1,'2015-03-14',1,2,'NO',2),
	(2,'2015-02-04','2015-02-04',1,'2015-03-14',1,3,'NO',1),
	(3,'2015-02-04','2015-02-22',1,'2015-03-14',4,1,'NO',4),
	(4,'2015-02-04','2015-02-04',1,'2015-03-14',2,3,'NO',7),
	(5,'2015-02-04','2015-02-27',1,'2015-03-14',3,1,'NO',3),
	(6,'2015-02-04','2015-02-21',1,'2015-03-14',3,1,'NO',6),
	(7,'2015-02-04','2015-02-04',1,'2015-03-14',2,4,'NO',8),
	(8,'2015-02-04','2015-02-04',1,'2015-03-14',1,2,'NO',5),
	(37,'2015-02-20','2015-02-20',0,'2015-02-05',1,2,'NO',37),
	(38,'2015-02-20','2015-02-20',0,'0000-00-00',1,30,'NO',38),
	(39,'2015-02-20','2015-02-20',0,'0000-00-00',1,2,'NO',39),
	(40,'2015-02-20','2015-02-21',0,'0000-00-00',1,2,'NO',40),
	(41,'2015-02-20','2015-02-21',0,'0000-00-00',1,2,'NO',41),
	(42,'2015-02-20','2015-02-20',0,'0000-00-00',1,2,'NO',42),
	(43,'2015-02-20','2015-02-21',0,'0000-00-00',1,2,'NO',43),
	(44,'2015-02-22','2015-02-22',0,'0000-00-00',1,2,'YES',44),
	(45,'2015-02-22','2015-02-22',0,'0000-00-00',1,2,'YES',45),
	(46,'2015-02-22','2015-02-22',0,'2015-03-20',4,2,'YES',46),
	(47,'2015-02-27','2015-03-03',0,'2015-02-10',3,1,'NO',47),
	(48,'2015-02-27','2015-03-03',0,'0000-00-00',3,1,'NO',48),
	(49,'2015-03-03','2015-03-03',0,'0000-00-00',3,1,'NO',49),
	(50,'2015-03-03','2015-03-03',0,'2015-03-03',3,1,'NO',50),
	(51,'2015-03-03','2015-03-03',0,'2015-03-03',3,1,'NO',51),
	(52,'2015-03-03','2015-03-03',0,'2015-03-03',3,1,'NO',52),
	(53,'2015-03-03','2015-03-03',0,'2015-03-03',3,1,'NO',53),
	(54,'2015-03-03','2015-03-03',0,'2015-03-03',3,1,'NO',54),
	(55,'2015-03-03','2015-03-03',0,'2015-03-03',3,1,'NO',55);

/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_created` date NOT NULL,
  `last_updated` date NOT NULL,
  `last_updated_by` int(10) unsigned NOT NULL,
  `name_first` varchar(100) NOT NULL,
  `name_last` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`user_id`, `date_created`, `last_updated`, `last_updated_by`, `name_first`, `name_last`, `email`, `phone_number`)
VALUES
	(1,'0000-00-00','0000-00-00',1,'Richard','Henke','hen11013@byui.edu','1234567890'),
	(2,'0000-00-00','0000-00-00',1,'Robert','Henke','rob@bob.com','1111111111'),
	(3,'0000-00-00','0000-00-00',1,'Ritchie','Fitzgerald','ritchiefitz1@gmail.com','3333333333'),
	(4,'0000-00-00','0000-00-00',1,'Becky','Van Wagoner','soccergirl2_7@yahoo.com','2222222222'),
	(30,'2015-02-19','2015-02-19',0,'somename','someone','example@example.com','2082010166'),
	(31,'2015-02-21','2015-02-21',0,'Test','Person','test1@yahoo.com','1234123412'),
	(32,'2015-02-21','2015-02-21',0,'asd','asd','asd@d','asd'),
	(33,'2015-02-22','2015-02-22',0,'Becky','Van Wagoner','soccergirl2_7@yahoo.com','2082010166'),
	(34,'2015-03-03','2015-03-03',0,'Ritchie','Fitzgerald','ritchie.fitzgerald@gmail.com','208-881-1252');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
