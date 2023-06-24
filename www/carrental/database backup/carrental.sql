/*
SQLyog Community v12.09 (32 bit)
MySQL - 5.6.17 : Database - carrental
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`carrental` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `carrental`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`UserName`,`Password`,`updationDate`) values (1,'admin','1f3870be274f6c49b3e31a0c6728957f','2018-01-18 07:01:10');

/*Table structure for table `tblbooking` */

DROP TABLE IF EXISTS `tblbooking`;

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tblbooking` */

insert  into `tblbooking`(`id`,`userEmail`,`VehicleId`,`FromDate`,`ToDate`,`message`,`Status`,`PostingDate`) values (1,'test@gmail.com',2,'22/06/2017','25/06/2017','The new Booking Messages interface is now available to customers in both the Android and iOS versions',1,'2017-06-19 13:15:43'),(2,'test@gmail.com',3,'30/06/2017','02/07/2017','The new Booking Messages interface is now available to customers in both the Android and iOS versions',2,'2017-06-26 13:15:43'),(3,'test@gmail.com',4,'02/07/2017','07/07/2017','The new Booking Messages interface is now available to customers in both the Android and iOS versions',0,'2017-06-26 14:10:06'),(4,'anuj@gmail.com',4,'2018-01-18','2018-01-23','OH Good system',1,'2018-01-18 07:03:17'),(5,'yog@gmail.com',2,'2018-01-18','2018-01-30','yogeh patil has book thsi cars',0,'2018-01-24 06:14:42'),(6,'yog@gmail.com',3,'2018-01-19','2018-02-05','book now',0,'2018-01-24 06:19:30');

/*Table structure for table `tblbrands` */

DROP TABLE IF EXISTS `tblbrands`;

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tblbrands` */

insert  into `tblbrands`(`id`,`BrandName`,`CreationDate`,`UpdationDate`) values (1,'Maruti','2017-06-18 09:24:34','2017-06-18 23:42:23'),(2,'BMW','2017-06-18 09:24:50',NULL),(3,'Audi','2017-06-18 09:25:03',NULL),(4,'Nissan','2017-06-18 09:25:13',NULL),(5,'Toyota','2017-06-18 09:25:24',NULL),(7,'Maruti','2017-06-18 23:22:13','2018-01-24 14:14:27');

/*Table structure for table `tblcontactusinfo` */

DROP TABLE IF EXISTS `tblcontactusinfo`;

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tblcontactusinfo` */

insert  into `tblcontactusinfo`(`id`,`Address`,`EmailId`,`ContactNo`) values (1,'Ekata Nagar Jalgaon\r\nPin 522571 																								','Suraj@gmail.com','963025871');

/*Table structure for table `tblcontactusquery` */

DROP TABLE IF EXISTS `tblcontactusquery`;

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tblcontactusquery` */

insert  into `tblcontactusquery`(`id`,`name`,`EmailId`,`ContactNumber`,`Message`,`PostingDate`,`status`) values (1,'Anuj Kumar','webhostingamigo@gmail.com','2147483647','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum','2017-06-18 03:03:07',1);

/*Table structure for table `tblpages` */

DROP TABLE IF EXISTS `tblpages`;

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `tblpages` */

insert  into `tblpages`(`id`,`PageName`,`type`,`detail`) values (1,'Terms and Conditions','terms','																														<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br></strong></font></p><h2>Terms of Use</h2>\r\n				<p>\r\n					Welcome to Cheap car rental.com, your online travel advisor (\'Car Rental\'). \r\n					Cheap-auto-rentals is owned and operated by Car Rental Pvt LTD, Inc. (the\r\n					\'Company\', \"We\", \"our\", or \"Us\"). Please read carefully the \r\n					following terms and conditions (the \"Terms\", or \"Terms of Use\"), \r\n					because they constitute a binding agreement between you and the \r\n					Company. By accessing Cheap-auto-rentals or by using it in any other manner, \r\n					you signify your acceptance to these Terms. If you do not agree to \r\n					these Terms of Use, you may not access Cheap-auto-rentals or use it in any \r\n					other manner. Please feel free to submit any questions that you may \r\n					have regarding the Terms to info@carrentals.com.<br></p><p>\r\n					The following Terms define the acceptable use of Cheap-auto-rentals.\r\n				</p>\r\n				<p>\r\n					You may use Car rentals for private and personal purposes only. You \r\n					agree not to use Cheap-auto-rentals for any other purpose without our prior \r\n					explicit written consent, and while using Car rentals you agree to \r\n					refrain from willfully, or carelessly - \r\n				</p>\r\n				<ol><li>Interfering with or disrupting the functionality of Cheap-auto-rentals;</li><li>Disobey or breach these Terms or any other applicable instructions conveyed by the Company and its officers;</li><li>Using robots, crawlers and similar applications to collect and compile content from Car rentals;</li><li>Displaying Car rentals or any part thereof in an exposed or concealed frame;</li><li>Violating any applicable local, state, national or international law, statute, ordinance, rule or regulation;</li><li>Impersonating any person or entity, or making any false \r\nstatement pertaining to your identity, employment, agency or affiliation\r\n with any person or entity;</li><li>Linking to certain elements on Cheap-auto-rentals independently from the web pages on which they originally appear.</li></ol>\r\n										\r\n										'),(2,'Privacy Policy','privacy','By providing us your Information or by making use of the facilities \r\nprovided by the Website, You hereby consent to the collection, storage, \r\nprocessing and transfer of any or all of Your Personal Information and \r\nNon-Personal Information by carrental, as specified under this Policy. You\r\n further represent and warrant that such collection, use, storage and \r\ntransfer of Your Information shall not cause any loss or wrongful gain \r\nto you or any other person.&nbsp;\r\n<br>\r\n<br>\r\nThis Policy is a legally binding contract between You and carrental, whose\r\n Website, You use or access or You otherwise deal with. This Policy \r\nshall be read together with the other terms and condition of the Website\r\n viz, Membership Agreement and Fees Policy being displayed on the \r\nwebsite on carrental.com <br>'),(3,'About Us ','aboutus','<span>No more worries about petrol mileage, insurance, and car \r\nbreakdowns! carrental has enabled driving convenience for travellers \r\naround the country and is fast expanding its reach to cities including \r\nAhmedabad, Bangalore, Chandigarh, Chennai, Coimbatore, Delhi-NCR, \r\nHyderabad, Jaipur, Kochi, Kolkata, Ludhiana, Mangalore, Mumbai, Mysore, \r\nPune, Siliguri and Vizag.&nbsp;<br>Self-drive&nbsp;cars from </span><span><span>carrental</span>have given \r\ncustomers more control, privacy, and freedom.&nbsp;Book a&nbsp;self-drive&nbsp;car in \r\nany city you visit with the </span><span><span>carrental</span>app on your phone and feel at home \r\nwherever you go. <br></span>'),(11,'FAQs','faqs','																																								<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address<br>Car Rental Pvt. Ltd <br>plot on 37 Ganesh Nagar <br>Jalgaon, Maharashtra<br>Pin 522512<br><br></span>\r\n										');

/*Table structure for table `tblsubscribers` */

DROP TABLE IF EXISTS `tblsubscribers`;

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tblsubscribers` */

insert  into `tblsubscribers`(`id`,`SubscriberEmail`,`PostingDate`) values (1,'anuj.lpu1@gmail.com','2017-06-22 09:35:32'),(2,'yogeshfengade@gmail.com','2018-01-29 14:14:04');

/*Table structure for table `tbltestimonial` */

DROP TABLE IF EXISTS `tbltestimonial`;

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbltestimonial` */

insert  into `tbltestimonial`(`id`,`UserEmail`,`Testimonial`,`PostingDate`,`status`) values (1,'test@gmail.com','Test Test','2017-06-18 00:44:31',1),(2,'test@gmail.com','The new Booking Messages interface is now available to customers in both the Android and iOS versions','2017-06-18 00:46:05',1),(3,'yog@gmail.com','hi Admin This goood','2018-01-24 06:20:40',NULL);

/*Table structure for table `tblusers` */

DROP TABLE IF EXISTS `tblusers`;

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tblusers` */

insert  into `tblusers`(`id`,`FullName`,`EmailId`,`Password`,`ContactNo`,`dob`,`Address`,`City`,`Country`,`RegDate`,`UpdationDate`) values (1,'Anuj Kumar','demo@gmail.com','1f3870be274f6c49b3e31a0c6728957f','2147483647',NULL,NULL,NULL,NULL,'2017-06-17 12:59:27','2018-01-18 07:00:51'),(2,'AK','anuj@gmail.com','1f3870be274f6c49b3e31a0c6728957f','8285703354',NULL,NULL,NULL,NULL,'2017-06-17 13:00:49','2018-01-18 07:00:55'),(3,'yogesh patil','yog@gmail.com','1f3870be274f6c49b3e31a0c6728957f','09999857868','03/02/1990','Indira Nagar plot no 39 gut 26 \r\nJalgaon','jalgaon','jalgaon','2017-06-17 13:01:43','2018-01-29 14:16:57'),(4,'prachi Chaudhari','prachi@gmail.com','1f3870be274f6c49b3e31a0c6728957f','8520147963','','Shiv Colony Jalgaon','Jalgaon','India','2017-06-17 13:03:36','2018-01-24 14:36:51');

/*Table structure for table `tblvehicles` */

DROP TABLE IF EXISTS `tblvehicles`;

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tblvehicles` */

insert  into `tblvehicles`(`id`,`VehiclesTitle`,`VehiclesBrand`,`VehiclesOverview`,`PricePerDay`,`FuelType`,`ModelYear`,`SeatingCapacity`,`Vimage1`,`Vimage2`,`Vimage3`,`Vimage4`,`Vimage5`,`AirConditioner`,`PowerDoorLocks`,`AntiLockBrakingSystem`,`BrakeAssist`,`PowerSteering`,`DriverAirbag`,`PassengerAirbag`,`PowerWindows`,`CDPlayer`,`CentralLocking`,`CrashSensor`,`LeatherSeats`,`RegDate`,`UpdationDate`) values (1,'BMW M-6',2,'The BMW E-chassis and F-chassis codes are obvious. But another code refers to the type of engine used in your BMW. BMW engines evolve from one generation to the next but generally derive from one original design. For example, the inline-6 cylinder engines in the E34, E36, E39, E46, E53, Z3 and Z4 can all trace their ...',30000,'Petrol',3453,7,'knowledge_base_bg.jpg','bmw43.jpg','bmw1.jpg','bmw12.jpg','',1,1,1,1,1,1,1,1,1,1,1,1,'2017-06-19 04:46:23','2018-01-24 12:53:09'),(2,'BMW X5-M',2,'The BMW X5 M is a high-performance derivative of the X5. \r\nThe E53 was developed at a time when BMW owned Land Rover and benefitted from Land Rover technology.',25000,'CNG',2015,4,'car_755x430.png','looking-used-car.png','new-bmw_4-series-coupe-2014-02-1680.jpg','bmw_2-series-m-performance-2014-013-1680.jpg','',1,1,1,1,1,1,1,NULL,1,1,NULL,NULL,'2017-06-19 09:16:17','2018-01-24 14:04:55'),(3,'Nissan Terrano',4,'Made for the smarter you who understands the importance of technology in a car. \r\nThe new Nissan Terrano smartly integrates high-tech features into its brave appearance which makes it absolutely flawless. ',5000,'Petrol',2012,5,'nissan1234.jpg','Nissan Terrano.jpg','Nissan Terrano AMT.jpg','Nissan Terrano123.jpg','',1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,'2017-06-19 09:18:20','2018-01-24 14:13:20'),(4,'Lorem ipsum',1,'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum',5636,'CNG',2012,5,'featured-img-3.jpg','featured-img-1.jpg','featured-img-1.jpg','featured-img-1.jpg','',1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,'2017-06-19 09:18:43','2017-06-20 11:44:12'),(5,'Toyota Innova Crysta',5,'vtretrvet',345345,'CNG',3453,7,'Toyota-Innova-Crysta-HD-Wallpaper12.jpg','Toyota-Innova-Crysta-HD-Picture.jpg','Toyota-Innova-Crysta-Side-View89.jpg','Toyota-Innova-Crysta-Rear-View100.jpg',NULL,1,1,1,1,1,1,1,1,1,1,1,1,'2017-06-20 10:57:09','2018-01-24 12:49:46'),(6,'Maruti Swift Dzire',1,'sf',15000,'Petrol',2000,5,'Maruti Dzire12.jpg','Maruti DzireNew123.jpg','Maruti DzireNewjpg.jpg','Maruti DzirenewQ.jpg','',1,1,NULL,1,NULL,NULL,NULL,1,1,NULL,1,1,'2018-01-24 14:27:21','2018-01-24 14:30:45'),(7,'Maruti Swift',1,'Maruti Swift',4000,'Petrol',2014,5,'Swift.jpg','Swift1.jpg','Swift12.jpg','Swift33.jpg','',1,1,1,1,1,1,1,1,1,1,1,1,'2018-01-24 14:34:28',NULL),(8,'A4  Audi x51',3,'The A4 has been one of the most popular model from the German car maker and has helped Audi build a brand for itself along with the Q7 SUV. The all-new 2016 Audi A4 made its official debut at the 2015 Frankfurt Motor Show and was showcased at the Auto Expo 2016 held in Greater Noida earlier this year. This is the third generation of the Audi A4 in India.',9000,'CNG',2014,5,'audi.jpg','audi44.jpg','audi22.jpg','audi11.jpg','',1,1,1,1,1,1,1,1,1,1,1,1,'2018-01-29 13:40:13',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
