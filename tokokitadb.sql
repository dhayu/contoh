/*
SQLyog Community v11.01 (32 bit)
MySQL - 5.5.24-log : Database - tokokitadb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tokokitadb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tokokitadb`;

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `permalink` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`permalink`,`description`) values (6,'Komputer','komputer',''),(7,'Ekonomi','ekonomi','');

/*Table structure for table `confirmations` */

DROP TABLE IF EXISTS `confirmations`;

CREATE TABLE `confirmations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sender_bank` varchar(255) DEFAULT NULL,
  `bank_account_name` varchar(255) NOT NULL,
  `receiver_bank` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `confirmations` */

/*Table structure for table `media` */

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `key` int(11) NOT NULL,
  `mime` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

/*Data for the table `media` */

insert  into `media`(`id`,`type`,`key`,`mime`,`description`,`path`,`created`,`modified`) values (29,'product',4,'image/jpeg','Product Baru','public/products/473006_2880359853694_1400991440_32352252_1190978322_o.jpg','2012-05-15 23:41:02','0000-00-00 00:00:00'),(30,'product',5,'image/jpeg','Product Name','public/products/538789_3277193142979_1662005979_2681788_1673459320_n.jpg','2012-05-16 10:33:31','0000-00-00 00:00:00'),(31,'slide',33,'image/jpeg','0','public/slides/1.jpg','2013-05-25 13:03:19','0000-00-00 00:00:00'),(32,'slide',34,'image/jpeg','0','public/slides/5.jpg','2013-05-25 13:03:34','0000-00-00 00:00:00');

/*Table structure for table `order_details` */

DROP TABLE IF EXISTS `order_details`;

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_percent` double DEFAULT NULL,
  `net_price` double NOT NULL,
  `order_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order_details` */

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `order_date` date NOT NULL,
  `payment_deadline` date DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `user_id` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permalink` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `pages` */

insert  into `pages`(`id`,`permalink`,`title`,`body`,`status`,`created`,`modified`) values (6,'about','About','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>',1,'2012-05-15 19:53:52','2012-05-15 19:54:01'),(7,'how-to-shop','How to Shop','<p>Ini adalah cara berbelanja di toko kita</p>',1,'2012-05-15 19:54:41','0000-00-00 00:00:00'),(8,'contact','Contact','<p>Main Address :</p>\n<p>&nbsp;</p>',1,'2012-05-16 22:52:06','0000-00-00 00:00:00');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `permalink` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `discount_percent` double NOT NULL,
  `net_price` double NOT NULL,
  `description` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`id`,`code`,`name`,`permalink`,`price`,`discount_percent`,`net_price`,`description`,`stock`,`status`,`category_id`) values (4,'ABCR34','Product Baru','product-baru',5000,20,4000,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>',18,1,6),(5,'234FS','Product Name','product-name',10000,25,7500,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud exercitation.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do e',75,1,6);

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `settings` */

insert  into `settings`(`id`,`key`,`value`,`description`) values (1,'paginationLimit','6','Global pagination limit'),(2,'imageAllowed','gif|jpg|png|jpeg',''),(3,'maxImageSize','200000',''),(4,'Order.DueDate','7','Days payment due'),(5,'Bank.Name','BCA,Mandiri,BNI','Bank name that receive transfer from customer'),(6,'Email.Admin','admin@tokokita.com','Email Admin');

/*Table structure for table `slides` */

DROP TABLE IF EXISTS `slides`;

CREATE TABLE `slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `description_en` text NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Data for the table `slides` */

insert  into `slides`(`id`,`title`,`description`,`title_en`,`description_en`,`position`,`status`) values (33,'Slider 1','Ini adalah slider image 1','','',33,1),(34,'Slider 2','Ini adalah slider image 2','','',34,1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `full_name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `last_login` datetime NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`email`,`password`,`reset_token`,`full_name`,`address`,`phone`,`zip`,`level`,`status`,`last_login`,`created`,`modified`) values (1,'admin@gie-art.com','21232f297a57a5a743894a0e4a801fc3',NULL,'sugiarto','Jl Tamansiswa, Yogyakarta','54674573',234234,1,1,'2013-05-25 12:58:06','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'agie0925@gmail.com','900150983cd24fb0d6963f7d28e17f72',NULL,'Agie','Yogyakarta','356363',0,0,1,'2012-05-16 22:44:03','0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
