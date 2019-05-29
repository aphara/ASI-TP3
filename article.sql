-- Adminer 4.7.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date` date DEFAULT NULL,
  `section` set('Politics','Cinema','Music') NOT NULL,
  `status` set('Edit','Submitted','Accepted','Published') NOT NULL,
  `text` text DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `article` (`article_id`, `author`, `title`, `date`, `section`, `status`, `text`) VALUES
(1,	'Alex',	'TEST',	'2019-05-20',	'Politics',	'Submitted',	'Blalblalfjeifjeijfe'),
(2,	'Alex',	'TEST',	'2019-05-20',	'Politics',	'Submitted',	'Blalblalfjeifjeijfe'),
(3,	'Alex',	'My first blog',	'2019-05-06',	'Cinema',	'Accepted',	'ifrhugrhufrughrughr'),
(4,	'Seb',	'Test2',	'2019-05-20',	'Politics',	'Published',	'eifeifhrughrughru');

-- 2019-05-28 17:40:32
