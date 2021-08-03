/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.41-community-nt : Database - jobs
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`jobs` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jobs`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `user` char(40) default NULL,
  `pass` char(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`user`,`pass`) values ('sudhangshudas165@gmail.com','123456');

/*Table structure for table `bank` */

DROP TABLE IF EXISTS `bank`;

CREATE TABLE `bank` (
  `id` char(30) default NULL,
  `bankname` char(30) default NULL,
  `address` char(30) default NULL,
  `city` char(30) default NULL,
  `amount` char(30) default NULL,
  `modeofpay` char(30) default NULL,
  `cheque` char(30) default NULL,
  `dat` char(30) default NULL,
  `type` char(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bank` */

insert  into `bank`(`id`,`bankname`,`address`,`city`,`amount`,`modeofpay`,`cheque`,`dat`,`type`) values ('CAN/01/01','sba','d-90','Delhi','500','Cheque','676888','8/9/09','IT');

/*Table structure for table `candidates` */

DROP TABLE IF EXISTS `candidates`;

CREATE TABLE `candidates` (
  `id` char(30) default NULL,
  `name` char(30) default NULL,
  `address` char(50) default NULL,
  `city` char(50) default NULL,
  `state` char(50) default NULL,
  `email` char(40) default NULL,
  `phone` char(30) default NULL,
  `dob` char(30) default NULL,
  `age` char(3) default NULL,
  `qual` char(30) default NULL,
  `certi` char(30) default NULL,
  `status` char(30) default NULL,
  `exp` char(30) default NULL,
  `mstatus` char(30) default NULL,
  `skills` char(30) default NULL,
  `nagosal` char(30) default NULL,
  `moredet` char(100) default NULL,
  `type` char(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `candidates` */

insert  into `candidates`(`id`,`name`,`address`,`city`,`state`,`email`,`phone`,`dob`,`age`,`qual`,`certi`,`status`,`exp`,`mstatus`,`skills`,`nagosal`,`moredet`,`type`) values ('CAN/2009/1','Anu Roi','d-90','Delhi','Delhi','gvs@ya.com','9313565406','3/3/09','34','B.Sc.','cer','Fresher','1','un','nil','76870','nil','HR'),('CAN/2009/2','Tanu Roi','d-90','Delhi','Delhi','gvs@ya.com','9313565406','3/3/09','34','B.Sc.','cer','Fresher','1','un','nil','76870','nil','IT');

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `id` char(30) default NULL,
  `name` char(30) default NULL,
  `address` char(30) default NULL,
  `city` char(30) default NULL,
  `state` char(30) default NULL,
  `contactper` char(30) default NULL,
  `email` char(30) default NULL,
  `idate` char(30) default NULL,
  `typevacc` char(30) default NULL,
  `qual` char(30) default NULL,
  `cer` char(30) default NULL,
  `status` char(30) default NULL,
  `exp` char(30) default NULL,
  `sal` char(30) default NULL,
  `Moredet` char(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `company` */

insert  into `company`(`id`,`name`,`address`,`city`,`state`,`contactper`,`email`,`idate`,`typevacc`,`qual`,`cer`,`status`,`exp`,`sal`,`Moredet`) values ('COM/2009/1','n','a','Delhi','s','e','d','nil','IT','PGDCA',NULL,'Fresher','1',NULL,'fgfg'),('COM/2009/2','S.Weccnob Te','S-90,D.Nagar','Delhi','Delhi','gvs@ya.com','4/9/09','nil','HR','B.Sc.',NULL,'Fresher','1',NULL,'nil');

/*Table structure for table `emp_auth` */

DROP TABLE IF EXISTS `emp_auth`;

CREATE TABLE `emp_auth` (
  `id` char(30) default NULL,
  `name` char(30) default NULL,
  `password` char(30) default NULL,
  `ip` char(30) default NULL,
  `department` char(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emp_auth` */

insert  into `emp_auth`(`id`,`name`,`password`,`ip`,`department`) values ('E01','Raj','1234','1','HR'),('E02','Sam','1234','127.0.0.1','IT'),('E03','Mayank','1234','3','Marketing'),('E04','Deepak','1234','4','Others'),('E05','Admin','1234','127.0.0.1','All');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `Name` char(25) default NULL,
  `Email_id` char(25) default NULL,
  `Phone_no` char(25) default NULL,
  `State` char(25) default NULL,
  `Comment` char(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`Name`,`Email_id`,`Phone_no`,`State`,`Comment`) values ('S.S.ANA','gvsbaluja@yahoo.com','9313565406','delhi','nil');

/*Table structure for table `hits` */

DROP TABLE IF EXISTS `hits`;

CREATE TABLE `hits` (
  `id` char(30) default NULL,
  `hits` decimal(6,0) default NULL,
  `dateofacc` char(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hits` */

insert  into `hits`(`id`,`hits`,`dateofacc`) values ('IT','1','Fri Sep 10 22:55:10 IST 2010'),('HR','1','Fri Sep 10 22:55:16 IST 2010'),('IT','1','Fri Sep 10 22:56:10 IST 2010'),('IT','1','Fri Sep 10 23:12:19 IST 2010'),('IT','1','Fri Sep 10 23:17:01 IST 2010'),('HR','1','Fri Sep 10 23:17:06 IST 2010'),('Marketing','1','Fri Sep 10 23:17:10 IST 2010'),('IT','1','Fri Sep 10 23:58:35 IST 2010'),('IT','1','Fri Sep 10 23:59:08 IST 2010'),('IT','1','Sat Sep 11 00:00:33 IST 2010');

/*Table structure for table `interview` */

DROP TABLE IF EXISTS `interview`;

CREATE TABLE `interview` (
  `id` char(30) default NULL,
  `name` char(30) default NULL,
  `address` char(30) default NULL,
  `city` char(30) default NULL,
  `state` char(30) default NULL,
  `contactper` char(30) default NULL,
  `email` char(30) default NULL,
  `idate` char(30) default NULL,
  `typevacc` char(30) default NULL,
  `qual` char(30) default NULL,
  `cer` char(30) default NULL,
  `status` char(30) default NULL,
  `exp` char(30) default NULL,
  `sal` char(30) default NULL,
  `Moredet` char(100) default NULL,
  `type` char(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `interview` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `name` char(25) default NULL,
  `id` char(25) default NULL,
  `email` char(25) default NULL,
  `password` char(25) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`name`,`id`,`email`,`password`) values ('Sam','U001','gvsbaluja@yahoo.com','123456');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
