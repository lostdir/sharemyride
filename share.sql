/*
SQLyog Trial v13.1.8 (64 bit)
MySQL - 10.4.6-MariaDB : Database - ride
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ride` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ride`;

/*Table structure for table `alert` */

DROP TABLE IF EXISTS `alert`;

CREATE TABLE `alert` (
  `alert_id` int(11) NOT NULL AUTO_INCREMENT,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `alert` varchar(100) NOT NULL,
  PRIMARY KEY (`alert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `alert` */

insert  into `alert`(`alert_id`,`time`,`date`,`alert`) values 
(9,'09:54:43','2022-04-14','road blocked'),
(11,'14:40:02','2022-04-21','hhhhh'),
(12,'13:24:54','2022-04-27','hurricane');

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add chat',7,'add_chat'),
(26,'Can change chat',7,'change_chat'),
(27,'Can delete chat',7,'delete_chat'),
(28,'Can view chat',7,'view_chat'),
(29,'Can add complaint',8,'add_complaint'),
(30,'Can change complaint',8,'change_complaint'),
(31,'Can delete complaint',8,'delete_complaint'),
(32,'Can view complaint',8,'view_complaint'),
(33,'Can add emergencynumber',9,'add_emergencynumber'),
(34,'Can change emergencynumber',9,'change_emergencynumber'),
(35,'Can delete emergencynumber',9,'delete_emergencynumber'),
(36,'Can view emergencynumber',9,'view_emergencynumber'),
(37,'Can add login',10,'add_login'),
(38,'Can change login',10,'change_login'),
(39,'Can delete login',10,'delete_login'),
(40,'Can view login',10,'view_login'),
(41,'Can add payment',11,'add_payment'),
(42,'Can change payment',11,'change_payment'),
(43,'Can delete payment',11,'delete_payment'),
(44,'Can view payment',11,'view_payment'),
(45,'Can add rating',12,'add_rating'),
(46,'Can change rating',12,'change_rating'),
(47,'Can delete rating',12,'delete_rating'),
(48,'Can view rating',12,'view_rating');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user` */

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT current_timestamp(),
  `time` time DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL,
  `route_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert  into `booking`(`booking_id`,`date`,`time`,`status`,`route_id`,`user_id`) values 
(1,'2000-06-06','12:55:00','booked',0,0),
(2,'2000-06-06','12:55:00','rejected',0,0),
(3,'2000-06-06','12:55:00','booked',0,0),
(4,'2001-01-05','11:21:00','Booked',0,0),
(5,'2022-03-02','20:32:00','Approved',0,0),
(6,'2022-03-29','12:59:00','pending',0,0),
(7,'2022-04-14','21:42:53','Booked',1,0),
(8,'2022-04-14','21:43:31','Booked',1,0),
(9,'2022-04-14','23:29:06','cancelled',2,5),
(10,'2022-04-20','12:20:13','cancelled',1,3),
(11,'2022-04-20','12:21:58','Booked',1,3),
(12,'2022-04-20','15:56:04','cancelled',3,5),
(13,'2022-04-21','10:06:40','Approved',4,5),
(14,'2022-04-21','12:45:25','Booked',1,7),
(15,'2022-04-21','12:57:21','Booked',1,7),
(16,'2022-04-21','14:29:00','Booked',11,3),
(17,'2022-04-21','14:33:06','Approved',8,3),
(18,'2022-04-27','12:22:19','Booked',14,3),
(19,'2022-04-27','12:33:02','Approved',15,7),
(20,'2022-04-27','13:27:26','Approved',17,14);

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `chat` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `to_id` int(11) NOT NULL,
  `time` time NOT NULL,
  `fromm_id` int(11) NOT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `chat` */

insert  into `chat`(`chat_id`,`chat`,`date`,`to_id`,`time`,`fromm_id`) values 
(1,'ffdfdfd','0000-00-00',1,'00:00:00',0),
(2,'yhh','0000-00-00',1,'00:00:00',0),
(3,'sasa','0000-00-00',1,'00:00:00',0),
(4,'hyyy','0000-00-00',1,'00:00:00',0),
(5,'hyyy','2022-04-11',4,'12:20:30',3),
(6,'dfsdgf','2022-04-15',3,'00:01:31',3),
(7,'fgevf','2022-04-15',3,'00:02:25',3),
(8,'hyy','2022-04-15',5,'00:03:40',3),
(9,'yee','2022-04-15',5,'00:06:00',5),
(10,'dfd','2022-04-15',3,'00:10:15',3),
(11,'fegrthrt','2022-04-15',5,'00:11:09',5),
(12,'gnb','2022-04-21',1,'14:37:58',7),
(13,'ukukh','2022-04-27',6,'13:29:49',3),
(14,'ghh','2022-04-27',3,'13:30:32',3);

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `complaint` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `reply` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

insert  into `complaint`(`complaint_id`,`complaint`,`date`,`time`,`reply`,`user_id`) values 
(1,'\';\';\'','2022-03-02','16:35:20','okk',1),
(2,'','2022-03-02','16:38:10','hfjfjf',1),
(3,'cdcdcdccccc','2022-03-06','14:23:54','ddddd',1),
(4,'JKFWDHGFIUEHRG','2022-04-14','12:14:10','SDDDDSF',3),
(5,'accident','2022-04-21','12:04:06','sorry we are unavailable\r\n',4),
(6,'arun is rash driving','2022-04-23','12:52:53','pending',11),
(7,'rash driving\r\n','2022-04-27','12:37:46','pending',7),
(8,'rash driving @arun','2022-04-27','13:30:57','pending',3);

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(7,'chat','chat'),
(8,'complaint','complaint'),
(5,'contenttypes','contenttype'),
(9,'emergencyno','emergencynumber'),
(10,'login','login'),
(11,'payment','payment'),
(12,'rating','rating'),
(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2022-02-23 10:56:57.443192'),
(2,'auth','0001_initial','2022-02-23 10:56:59.783963'),
(3,'admin','0001_initial','2022-02-23 10:57:06.803133'),
(4,'admin','0002_logentry_remove_auto_add','2022-02-23 10:57:08.483967'),
(5,'admin','0003_logentry_add_action_flag_choices','2022-02-23 10:57:08.539676'),
(6,'contenttypes','0002_remove_content_type_name','2022-02-23 10:57:09.175071'),
(7,'auth','0002_alter_permission_name_max_length','2022-02-23 10:57:09.361950'),
(8,'auth','0003_alter_user_email_max_length','2022-02-23 10:57:09.483766'),
(9,'auth','0004_alter_user_username_opts','2022-02-23 10:57:09.585551'),
(10,'auth','0005_alter_user_last_login_null','2022-02-23 10:57:11.103118'),
(11,'auth','0006_require_contenttypes_0002','2022-02-23 10:57:11.152086'),
(12,'auth','0007_alter_validators_add_error_messages','2022-02-23 10:57:11.208055'),
(13,'auth','0008_alter_user_username_max_length','2022-02-23 10:57:11.306992'),
(14,'auth','0009_alter_user_last_name_max_length','2022-02-23 10:57:11.444084'),
(15,'auth','0010_alter_group_name_max_length','2022-02-23 10:57:11.572005'),
(16,'auth','0011_update_proxy_permissions','2022-02-23 10:57:11.637966'),
(17,'chat','0001_initial','2022-02-23 10:57:11.686934'),
(18,'complaint','0001_initial','2022-02-23 10:57:11.753162'),
(19,'emergencyno','0001_initial','2022-02-23 10:57:11.809326'),
(20,'login','0001_initial','2022-02-23 10:57:11.859989'),
(21,'payment','0001_initial','2022-02-23 10:57:11.910956'),
(22,'rating','0001_initial','2022-02-23 10:57:11.936940'),
(23,'sessions','0001_initial','2022-02-23 10:57:12.278956');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('23yxh8ngr07jbowwho943us54k6btkdg','eyJ1aWQiOjE0fQ:1njccS:YeH5NFrJZG-855xMbURXL0G9zcznlMlA1regG1tlP2U','2022-05-11 08:01:52.698677'),
('2wtiu0p2p75jd4egbxajkd08l12auwid','eyJ1aWQiOjN9:1ni7uC:8A1EV9Ouey4wokwgNaP2SKs871olvYQAyT0CNf0bj_g','2022-05-07 05:02:00.343658'),
('4ikwi7reoqjzcvp7a55fq27pe052dve1','eyJ1aWQiOjN9:1nhPRa:upI7H4B2tzW91STSZ0g8593S09LqMIV5mZp0RekBXfE','2022-05-05 05:33:30.727408'),
('60mww990muy5pbtpgkvl2m5u7xidxid1','eyJ1aWQiOjExfQ:1ni9ly:lVEYbgIn69DQokBUHwsnIb4vPjHKk46DUilKGFMT_yM','2022-05-07 07:01:38.156225'),
('70xhtndsmw0t6pvxajh4bm6hmbepcbdx','eyJ1aWQiOjN9:1nh4Vg:3jrzYyeUSk_Aqow7qxGrxbq95enekHf1Yp8LlIwiC5I','2022-05-04 07:12:20.379003'),
('9jjp5vcu8i76zljqle7co6wkmlri23ci','eyJ1aWQiOjN9:1nh7YE:ZsHK4Iv3l9xZODMUNAxjCS8r23AcLXtfFrz53YrCOrU','2022-05-04 10:27:10.804985'),
('ably1machpwgxxnqbgdw0rvvfu21kfv2','eyJ1aWQiOjN9:1njbRU:rxq-qAIajSMBMN2_8GpXbedjlxgub7WA6SNhdLxmn6U','2022-05-11 06:46:28.914432'),
('dk0jf4k4izdcxvhvf0480vej7m0uijah','eyJ1aWQiOjExfQ:1ni9Vx:JmIZzuSGNYgKRiZkZ1u4t254kbkHkvIYxXzXgVpphio','2022-05-07 06:45:05.243706'),
('f74sygx79sfnqq521oihi0d904d2q0j6','ZjU2Yjk3NGU2Y2IxMDBjOTkzNmE1YzAzZTEzYWRiZjM2MzRjNWYxZTp7InVpZCI6NX0=','2022-04-28 18:40:53.957508'),
('flnmohxcmii5kt6qhhcr5oljsoxhxl2d','NjJlZjBkZGJlMWM1NjY5YWI0OTc2Njc0ODU2MTgyYTk2YjNlNDA3ZDp7InVpZCI6M30=','2022-04-24 09:58:04.885896'),
('j1t1yl7gl6zwz2nyy9mbtfw425strdot','eyJ1aWQiOjN9:1nh4WE:V9wCFq_Y7bwEN-698taVA4LE3f3JCVRXEN3JWlWp4_o','2022-05-04 07:12:54.102218'),
('mqvaxmvz032w58e8rwwh8knqgiyj5kzu','eyJ1aWQiOjd9:1njbh0:vhlVcS1f_vBRvTUUYhdVDAzmNoq8KVPr77dWFjmeuSc','2022-05-11 07:02:30.972341'),
('n9pt93j15ryj998iey5b3t9tun49bcz3','eyJ1aWQiOjN9:1njcYZ:jAaxmZRAtPO2jFx3xPzKzKi4oFccZQZ6tITbGPJW9jw','2022-05-11 07:57:51.060584'),
('oaejhei0hdt3ccu3dsj4pveg15obpdsh','eyJ1aWQiOjExfQ:1ni8rz:BTXp9U_gFDO0A--zaR4Y6_daTmE7cJqGfG2QYDsXGcw','2022-05-07 06:03:47.152631'),
('sh0fzekxzpm677q5gomm7ysbam3w9ir0','NjJlZjBkZGJlMWM1NjY5YWI0OTc2Njc0ODU2MTgyYTk2YjNlNDA3ZDp7InVpZCI6M30=','2022-04-28 04:26:54.080796'),
('tir6setixgin7kre22qziw2hhp0gr1fd','eyJ1aWQiOjExfQ:1niBWi:vsos3s5CU7llH6p5YvN26YviaFulqPOdlsX_LUInaH4','2022-05-07 08:54:00.249682'),
('u8qdmc3zbdh66wt7mtrh6k5iv69mxjov','eyJ1aWQiOjN9:1nhROo:rmxpukiTWbqxsiiPwwTgIyS5sQYH0nfNMUNtLWq2aqY','2022-05-05 07:38:46.706098'),
('ys4i0lgt46meon4av6k0fewkx0ek426s','NjJlZjBkZGJlMWM1NjY5YWI0OTc2Njc0ODU2MTgyYTk2YjNlNDA3ZDp7InVpZCI6M30=','2022-04-28 10:14:46.815206');

/*Table structure for table `emergencynumber` */

DROP TABLE IF EXISTS `emergencynumber`;

CREATE TABLE `emergencynumber` (
  `emgno_id` int(11) NOT NULL AUTO_INCREMENT,
  `emg_no` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`emgno_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `emergencynumber` */

insert  into `emergencynumber`(`emgno_id`,`emg_no`,`name`) values 
(3,108,'fire force'),
(4,44240,'beypore police station'),
(5,12123232,'baby memorial '),
(6,100,'police');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`type`,`user_id`) values 
(1,'arun','arun@123','user',3),
(2,'admin','admin@123','admin',4),
(4,'user','user','user',6),
(5,'alan','alan@123','user',7),
(6,'abc','ihrgs','user',8),
(7,'pinky123','pink','user',9),
(9,'hrsl','hrsl','user',11),
(10,'gfgfgf','123','pending',12),
(11,'ertt','12345678','user',13),
(12,'hrsl','hrsl@123','user',14),
(13,'arunnn','12345678','user',15);

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment` varchar(25) NOT NULL,
  `status` varchar(40) NOT NULL,
  `book_id` int(11) NOT NULL,
  `type` varchar(40) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert  into `payment`(`payment_id`,`payment`,`status`,`book_id`,`type`) values 
(1,'400','pending',9,'ONLINE'),
(2,'2000','pending',12,'ONLINE'),
(3,'1','pending',13,'ONLINE'),
(4,'1','pending',13,'ONLINE'),
(5,'1','pending',13,'ONLINE'),
(6,'155','pending',17,'CASH IN HAND'),
(7,'2000','pending',19,'CASH IN HAND'),
(8,'100','pending',20,'ONLINE');

/*Table structure for table `rating` */

DROP TABLE IF EXISTS `rating`;

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `fromm_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `rating` */

insert  into `rating`(`rating_id`,`fromm_id`,`to_id`,`rating`) values 
(1,1,2,3),
(2,1,2,2),
(3,1,2,3),
(4,2,2,4),
(5,3,2,3),
(6,7,6,4),
(7,14,7,5);

/*Table structure for table `route` */

DROP TABLE IF EXISTS `route`;

CREATE TABLE `route` (
  `route_id` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `route` varchar(50) NOT NULL,
  `u_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `route` */

insert  into `route`(`route_id`,`latitude`,`longitude`,`route`,`u_id`,`date`,`time`) values 
(1,'21332143','5346543','calicut',4,'2022-04-21','01:08:00'),
(3,'1344','345','alappuzha',3,'2022-04-30','15:55:00'),
(8,'212131314313','1341','clt',7,'2022-04-21','14:20:00'),
(9,'145555','598885','vkd',7,'2022-01-03','05:02:00'),
(10,'1111111','22222222','mukkam',7,'2022-04-21','02:22:00'),
(11,'545445','545455','mukkam',7,'2022-04-21','05:55:00'),
(12,'564546464','45545454','clt',3,'2022-04-22','05:45:00'),
(13,'tsy','mukkam','omassery',3,'2022-04-30','17:11:00'),
(14,'kkd','dng','delhi',7,'2022-04-29','04:55:00'),
(15,'kannur','clt','tsr',14,'2022-04-08','14:32:00'),
(16,'kannur','clt','tsr',14,'2022-04-08','14:32:00'),
(17,'tsy','mukkam','ern',3,'2022-04-29','18:25:00');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `license` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `age` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`user_id`,`name`,`address`,`phone`,`email`,`license`,`gender`,`age`,`username`,`password`,`status`) values 
(3,'anshii','wdwdfsedsd','1234567890','beyporep@gmail.com','4524353','male','22','qwe','123','Approved'),
(6,'harshal','Gehjs','7896672881','hhsjw@hg','778','male','7','user','user','pending'),
(7,'alan','hhfhfgfggfghfgfgfh','3356464646','kskk@gmail.com','kl25454676','OTHERS','22','alan','alan','Rejected'),
(8,'uhaha','ha\r\nger','45465','a@gmail.com','6464f','male','22','abc','ihrgs','Rejected'),
(11,'HARSHAL','Dhshhshsjsjsjshdbbba','9526816478','haha@gmail.com','Kl18374774','male','19','hrsl','hrsl','Rejected'),
(12,'rachel david','calicut,kerala','8086396546','racheldavid369@gmail.com','kl12gd5','male','4','gfgfgf','123','pending'),
(13,'rachel david','calicut,kerala','8086396546','racheldavid369@gmail.com','kl12gd5','male','4','ertt','12345678','Rejected'),
(14,'HARSHAl','Kodakaparambil house,maikave post,kodenchery,near IPC church kanjirad.','+918086396','david369@gmail.com','lk2343434','male','18','hrsl','hrsl@123','pending'),
(15,'arun paulose','Kodakaparambil house,maikave post,kodenchery,near IPC church kanjirad.','8086396546','racheldavid369@gmail.com','45205','male','22','arunnn','12345678','pending');

/*Table structure for table `vehicles` */

DROP TABLE IF EXISTS `vehicles`;

CREATE TABLE `vehicles` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_name` varchar(25) NOT NULL,
  `model` varchar(25) NOT NULL,
  `registered_no` varchar(30) NOT NULL,
  `type` varchar(25) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `vehicles` */

insert  into `vehicles`(`vehicle_id`,`vehicle_name`,`model`,`registered_no`,`type`,`user_id`,`status`) values 
(1,'fsfsf','234','343','hghg',1,'Approved'),
(2,'gtg','rtrtr','578464747','rtrtrt',1,'Rejected'),
(3,'wqwqwq','wqwq','543656565','hghgh',1,'Rejected'),
(4,'BMW','200','KL11369','Car',3,''),
(5,'BMW','200','KL11369','Car',3,'Approved'),
(6,'dfgh','yui','55','yugti',3,'Approved'),
(7,'audi ','a3','KL4488477','car',3,'Approved'),
(8,'audi','a5','kl224223423','car',3,'Approved'),
(9,'audi','a4','451','car',7,'Approved'),
(10,'audi ','a3','KL44477','car',3,'pending');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
