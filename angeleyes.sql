/*
SQLyog Community Edition- MySQL GUI v8.03 
MySQL - 5.5.20-log : Database - angeleyes
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`angeleyes` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `angeleyes`;

/*Table structure for table `blind` */

DROP TABLE IF EXISTS `blind`;

CREATE TABLE `blind` (
  `blind_id` int(20) NOT NULL AUTO_INCREMENT,
  `blind_name` varchar(200) DEFAULT NULL,
  `number` varchar(200) DEFAULT NULL,
  `place` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `caretaker_id` varchar(200) NOT NULL,
  PRIMARY KEY (`blind_id`,`caretaker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `blind` */

insert  into `blind`(`blind_id`,`blind_name`,`number`,`place`,`email`,`caretaker_id`) values (4,'adi','9876543210','ramanthali','thambak@gmail.com','2'),(5,'hari','9496097719','kannur','thambak@gmail.com','2'),(6,'roshan','89744534356','pekadam','rosh@gmail.com','2'),(7,'surya','7846442340','kannur','su@gmail.com','5'),(8,'hari','897523140','karivellur','ak house','5');

/*Table structure for table `caretakerlist` */

DROP TABLE IF EXISTS `caretakerlist`;

CREATE TABLE `caretakerlist` (
  `caretaker_id` int(20) NOT NULL AUTO_INCREMENT,
  `caretaker_name` varchar(200) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `number` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`caretaker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `caretakerlist` */

insert  into `caretakerlist`(`caretaker_id`,`caretaker_name`,`email`,`number`,`address`) values (5,'adi','thambak@gmail.com','9876543210','kannur'),(10,'adi','thambak@gmail.com','9876543210','kannur'),(14,'adi','adi@gmail.com','768894532','ramanthali');

/*Table structure for table `emrgencyalert` */

DROP TABLE IF EXISTS `emrgencyalert`;

CREATE TABLE `emrgencyalert` (
  `emergencyalert_id` int(20) NOT NULL AUTO_INCREMENT,
  `alert` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `blind_id` int(20) DEFAULT NULL,
  `latitude` varchar(200) DEFAULT NULL,
  `longitude` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`emergencyalert_id`),
  UNIQUE KEY `emergencyalert_id` (`emergencyalert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emrgencyalert` */

/*Table structure for table `location` */

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `location_id` int(20) NOT NULL AUTO_INCREMENT,
  `blind_id` int(20) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `location` */

insert  into `location`(`location_id`,`blind_id`,`latitude`,`longitude`) values (1,5,'11.8683645','75.3631755'),(2,2147483647,'11.8683652','75.3631748');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `usertype` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`usertype`) values (1,'admin','234','admin'),(5,'caretaker','098','caretaker'),(11,'thambak@gmail.com','4664','blind'),(12,'rosh@gmail.com','9701','blind'),(13,'su@gmail.com','9970','blind'),(14,'adi@gmail.com','098','caretaker'),(15,'ak house','7588','blind');

/*Table structure for table `peoplelist` */

DROP TABLE IF EXISTS `peoplelist`;

CREATE TABLE `peoplelist` (
  `knowpeople_id` int(20) NOT NULL AUTO_INCREMENT,
  `knownpeople_name` varchar(200) DEFAULT NULL,
  `house_name` varchar(200) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `blind_id` int(20) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`knowpeople_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `peoplelist` */

insert  into `peoplelist`(`knowpeople_id`,`knownpeople_name`,`house_name`,`number`,`email`,`blind_id`,`pic`) values (2,'hari','srinilayam ','9496097719','hari@gmail.com',5,'/static/blnd_pic_path/d.jpg'),(12,'amar','KK house','7656354677','amar1232gmail.com',4,'/static/blnd_pic_path/2023-0314151655.jpg'),(13,'adith pp','thamban house','8789546730','fizz@gmail.com',6,'/static/blnd_pic_path/2023-0314155220.jpg'),(14,'adith pp','pp house','784634262','adithpp@gmail.com',7,'/static/blnd_pic_path/2023-0314160351.jpg');

/*Table structure for table `reviews` */

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `review_id` int(20) NOT NULL AUTO_INCREMENT,
  `caretaker_id` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `review` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `reviews` */

insert  into `reviews`(`review_id`,`caretaker_id`,`date`,`review`) values (1,'5','2023-03-07','gooodddd'),(2,'5','2023-03-07','asasfwvbwweb'),(3,'5','2023-03-07','vsdvdc'),(4,'5','2023-03-07','goood\r\n'),(5,'5','2023-03-14','nee shooperada'),(6,'5','2023-03-14','hii'),(7,'5','2023-03-14','jklj'),(8,'5','2023-03-14','nee shooperada');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
