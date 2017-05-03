/*
SQLyog v10.2 
MySQL - 5.0.22-community : Database - traffic
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`traffic` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `traffic`;

/*Table structure for table `crossroads` */

DROP TABLE IF EXISTS `crossroads`;

CREATE TABLE `crossroads` (
  `cross_id` int(11) NOT NULL auto_increment,
  `cross_road_name` varchar(40) NOT NULL default '人民路,解放路' COMMENT '交汇道路名',
  `cross_green` varchar(50) NOT NULL default '8s' COMMENT '路口绿灯时间',
  `cross_type` varchar(20) NOT NULL default '十字路口' COMMENT '路口类型',
  `cross_image` varchar(1000) NOT NULL COMMENT '图片',
  `cross_desc` varchar(1000) NOT NULL default '此交叉路口信号灯采用双向对行方案,即方向相反的两个路口同时直行或左转' COMMENT '路口描述',
  `shangZgreen` int(11) default NULL COMMENT '上边直行绿灯',
  `shangZyellow` int(11) default NULL COMMENT '上边直行黄灯',
  `shangLgreen` int(11) default NULL COMMENT '上边左转绿灯',
  `shangLyellow` int(11) default NULL COMMENT '上边左转黄灯',
  `zuoZgreen` int(11) default NULL COMMENT '左边直行绿灯',
  `zuoZyellow` int(11) default NULL COMMENT '左边直行黄灯',
  `zuoLgreen` int(11) default NULL COMMENT '左边左转绿灯',
  `zuoLyellow` int(11) default NULL COMMENT '左边左转黄灯',
  `xiaZgreen` int(11) default NULL COMMENT '下边直行绿灯',
  `xiaZyellow` int(11) default NULL COMMENT '下边直行黄灯',
  `xiaLgreen` int(11) default NULL COMMENT '下边左转绿灯',
  `xiaLyellow` int(11) default NULL COMMENT '下边左转黄灯',
  `youZgreen` int(11) default NULL COMMENT '右边直行绿灯',
  `youZyellow` int(11) default NULL COMMENT '右边直行黄灯',
  `youLgreen` int(11) default NULL COMMENT '右边左转绿灯',
  `youLyellow` int(11) default NULL COMMENT '右边左转黄灯',
  PRIMARY KEY  (`cross_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `crossroads` */

insert  into `crossroads`(`cross_id`,`cross_road_name`,`cross_green`,`cross_type`,`cross_image`,`cross_desc`,`shangZgreen`,`shangZyellow`,`shangLgreen`,`shangLyellow`,`zuoZgreen`,`zuoZyellow`,`zuoLgreen`,`zuoLyellow`,`xiaZgreen`,`xiaZyellow`,`xiaLgreen`,`xiaLyellow`,`youZgreen`,`youZyellow`,`youLgreen`,`youLyellow`) values (1,'人民路,爱国路','8s,5s','light.do','c4151789-3f02-4942-a943-ed976bd6220d.jpg','此交叉路口信号灯采用双向对行方案,即方向相反的两个路口同时直行或左转\r\n     	\r\n     	',15000,3000,30000,3000,15000,3000,30000,3000,0,0,0,0,0,0,0,0),(2,'人民路，书院路','3s','light2.do','3317d62c-feef-4c53-8d35-5d40845f3894.jpg','此交叉路口信号灯采用单路口通行方案,即只有一个路口同时直行和左拐,其他路口等待',2000,1000,2000,1000,2000,1000,2000,1000,2000,1000,2000,1000,2000,1000,2000,1000),(3,'韶山路,枫林路','8s,5s','light3.do','a5f46b70-3b11-4322-bb0c-84f1d0c664c5.jpg','此交叉路口信号灯采用单路口通行方案,即只有一个路口同时直行和左拐,其他路口等待',5000,1000,0,0,0,0,5000,1000,5000,1000,0,0,0,0,0,0),(4,'三一大道,车站路','8s,5s','light.do','66821922-551e-4726-8798-2b8012d3add9.jpg','此交叉路口信号灯采用双向对行方案,即方向相反的两个路口同时直行或左转',1000,1000,1000,1000,1000,1000,1000,1000,0,NULL,0,0,0,0,0,0),(5,'曙光路,五一大道','8s,5s','light2.do','9fefff7b-6ff9-469a-885d-53a7d9ec87ed.jpg','此交叉路口信号灯采用双向对行方案,即方向相反的两个路口同时直行或左转',1000,3000,1000,3000,1000,3000,1000,3000,1000,3000,1000,3000,1000,3000,1000,3000),(6,'锦兴路,解放路','8s,5s','light3.do','90c01fc1-2dbe-4616-95fe-fb3bbb7af734.jpg','此交叉路口信号灯采用双向对行方案,即方向相反的两个路口同时直行或左转',5000,1000,0,0,0,0,5000,1000,5000,1000,0,0,0,0,0,0),(8,'潇湘大道,白云路','8s,5s','light2.do','14ccd087-333d-44a0-9380-2f7494807cbf.jpg','此交叉路口信号灯采用双向对行方案,即方向相反的两个路口同时直行或左转',5000,3000,5000,3000,5000,3000,5000,3000,5000,3000,5000,3000,5000,3000,5000,3000),(11,'银双路,和平路','20#30','light3.do','a01bf325-f3a4-4039-a753-894bb7f56d9b.jpg','此交叉路口信号灯采用双向对行方案,即方向相反的两个路口同时直行或左转',5000,1000,0,0,0,0,5000,1000,5000,1000,0,0,0,0,0,0);

/*Table structure for table `drilicense` */

DROP TABLE IF EXISTS `drilicense`;

CREATE TABLE `drilicense` (
  `id` int(11) NOT NULL auto_increment,
  `issue_date` varchar(100) default NULL,
  `vehicle_type` varchar(100) default NULL,
  `issued_by` varchar(100) default NULL,
  `vin` varchar(100) default NULL,
  `plate_no` varchar(100) default NULL,
  `use_character` varchar(100) default NULL,
  `address` varchar(100) default NULL,
  `owner` varchar(100) default NULL,
  `model` varchar(100) default NULL,
  `register_date` varchar(100) default NULL,
  `engine_no` varchar(100) default NULL,
  `uid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `drilicense_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `traffic_user` (`uId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `drilicense` */

/*Table structure for table `driving` */

DROP TABLE IF EXISTS `driving`;

CREATE TABLE `driving` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `gender` varchar(100) default NULL,
  `issued_by` varchar(100) default NULL,
  `issue_date` varchar(100) default NULL,
  `license_number` varchar(100) default NULL,
  `birthday` varchar(100) default NULL,
  `version` varchar(100) default NULL,
  `address` varchar(100) default NULL,
  `nationality` varchar(100) default NULL,
  `valid_date` varchar(100) default NULL,
  `valid_for` varchar(100) default NULL,
  `uid` int(11) default NULL COMMENT '用户外键',
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `driving_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `traffic_user` (`uId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `driving` */

/*Table structure for table `idcard` */

DROP TABLE IF EXISTS `idcard`;

CREATE TABLE `idcard` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  `gender` varchar(10) default NULL,
  `idCardNumber` varchar(20) default NULL,
  `birthday` varchar(20) default NULL,
  `race` varchar(20) default NULL,
  `address` varchar(100) default NULL,
  `uid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `idcard_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `traffic_user` (`uId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `idcard` */

/*Table structure for table `road` */

DROP TABLE IF EXISTS `road`;

CREATE TABLE `road` (
  `road_id` int(11) NOT NULL auto_increment,
  `road_name` varchar(20) NOT NULL default '默认' COMMENT '道路',
  `road_status` int(10) NOT NULL default '1' COMMENT '道路状况 1:正常 2:施工',
  `road_speed` int(100) NOT NULL default '30' COMMENT '限速',
  `grade_id` int(11) default NULL COMMENT '道路级别外键',
  PRIMARY KEY  (`road_id`),
  KEY `grade_id` (`grade_id`),
  CONSTRAINT `road_ibfk_1` FOREIGN KEY (`grade_id`) REFERENCES `road_grade` (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `road` */

insert  into `road`(`road_id`,`road_name`,`road_status`,`road_speed`,`grade_id`) values (1,'人民路',1,40,2),(2,'解放路',1,40,1);

/*Table structure for table `road_grade` */

DROP TABLE IF EXISTS `road_grade`;

CREATE TABLE `road_grade` (
  `grade_id` int(11) NOT NULL auto_increment,
  `grade_level` int(10) NOT NULL default '4' COMMENT '道路级别(1-4级)',
  `grade_unidi_nubmer` int(10) NOT NULL default '2' COMMENT '单向机动车道数(条)',
  `grade_width` float NOT NULL default '3.5' COMMENT '机动车道宽度(m)',
  `grade_total_width` float NOT NULL default '16' COMMENT '道路总宽(m)',
  `grade_speed` int(100) NOT NULL default '30' COMMENT '设计车速(km/h)',
  `grade_is_zone` int(10) NOT NULL default '0' COMMENT '隔离带设置 0:不设 1:可设 2:应设 3:必须设',
  PRIMARY KEY  (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `road_grade` */

insert  into `road_grade`(`grade_id`,`grade_level`,`grade_unidi_nubmer`,`grade_width`,`grade_total_width`,`grade_speed`,`grade_is_zone`) values (1,4,2,3.5,16,30,0),(2,3,2,3.5,20,40,1),(3,2,4,3.5,30,60,2),(4,1,4,3.75,40,80,3);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `sid` int(11) NOT NULL auto_increment,
  `sname` varchar(30) NOT NULL,
  `tid` int(11) default NULL,
  PRIMARY KEY  (`sid`),
  KEY `fk` (`tid`),
  CONSTRAINT `fk` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`sid`,`sname`,`tid`) values (201501,'张三',1),(201502,'李四',NULL),(201503,'王五',NULL);

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL auto_increment,
  `tname` varchar(30) NOT NULL,
  PRIMARY KEY  (`tid`),
  KEY `tname` (`tname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`tid`,`tname`) values (1,'李老师');

/*Table structure for table `traffic_user` */

DROP TABLE IF EXISTS `traffic_user`;

CREATE TABLE `traffic_user` (
  `uId` int(11) NOT NULL auto_increment,
  `uName` varchar(50) default NULL,
  `uImg` varchar(100) default NULL,
  `uPassword` varchar(40) default NULL,
  `uEmail` varchar(60) default NULL,
  PRIMARY KEY  (`uId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `traffic_user` */

insert  into `traffic_user`(`uId`,`uName`,`uImg`,`uPassword`,`uEmail`) values (10,'lovis','6NXrBMpTrGgk4K/7B00v5Q==','123123','1585481246@qq.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
