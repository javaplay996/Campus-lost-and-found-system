/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyaunshiwuzhaolingxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyaunshiwuzhaolingxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyaunshiwuzhaolingxitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-03 10:55:26'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-03 10:55:26'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-03 10:55:26'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-03 10:55:26'),(5,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-05-03 10:55:26'),(6,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-05-03 10:55:26'),(7,'shiwu_types','失物类型',1,'失物类型1',NULL,NULL,'2023-05-03 10:55:26'),(8,'shiwu_types','失物类型',2,'失物类型2',NULL,NULL,'2023-05-03 10:55:26'),(9,'shiwu_types','失物类型',3,'失物类型3',NULL,NULL,'2023-05-03 10:55:26'),(10,'shiwu_types','失物类型',4,'失物类型4',NULL,NULL,'2023-05-03 10:55:26'),(11,'shiwu_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-05-03 10:55:26'),(12,'shiwu_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-05-03 10:55:26'),(13,'shiwu_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-05-03 10:55:26'),(14,'shiwu_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-05-03 10:55:26'),(15,'shiwu_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-05-03 10:55:26'),(16,'shiwu_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-05-03 10:55:26'),(17,'shangxia_types','上下架',1,'未认领',NULL,NULL,'2023-05-03 10:55:26'),(18,'shangxia_types','上下架',2,'已认领',NULL,NULL,'2023-05-03 10:55:26'),(19,'xunwu_types','寻物类型',1,'寻物类型1',NULL,NULL,'2023-05-03 10:55:26'),(20,'xunwu_types','寻物类型',2,'寻物类型2',NULL,NULL,'2023-05-03 10:55:26'),(21,'xunwu_types','寻物类型',3,'寻物类型3',NULL,NULL,'2023-05-03 10:55:26'),(22,'xunwu_types','寻物类型',4,'寻物类型4',NULL,NULL,'2023-05-03 10:55:26'),(23,'xunwu_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-05-03 10:55:26'),(24,'xunwu_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-05-03 10:55:26'),(25,'xunwu_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-05-03 10:55:26'),(26,'xunwu_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-05-03 10:55:26'),(27,'xunwu_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-05-03 10:55:26'),(28,'xunwu_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-05-03 10:55:26');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',283,1,'2023-05-03 10:55:41','2023-05-03 10:55:41','2023-05-03 10:55:41'),(2,'帖子标题2',3,NULL,'发布内容2',474,1,'2023-05-03 10:55:41','2023-05-03 10:55:41','2023-05-03 10:55:41'),(3,'帖子标题3',3,NULL,'发布内容3',173,1,'2023-05-03 10:55:41','2023-05-03 10:55:41','2023-05-03 10:55:41'),(4,'帖子标题4',1,NULL,'发布内容4',479,1,'2023-05-03 10:55:41','2023-05-03 10:55:41','2023-05-03 10:55:41'),(5,'帖子标题5',2,NULL,'发布内容5',81,1,'2023-05-03 10:55:41','2023-05-03 10:55:41','2023-05-03 10:55:41'),(6,'帖子标题6',3,NULL,'发布内容6',412,1,'2023-05-03 10:55:41','2023-05-03 10:55:41','2023-05-03 10:55:41'),(7,'帖子标题7',2,NULL,'发布内容7',180,1,'2023-05-03 10:55:41','2023-05-03 10:55:41','2023-05-03 10:55:41'),(8,'帖子标题8',1,NULL,'发布内容8',293,1,'2023-05-03 10:55:41','2023-05-03 10:55:41','2023-05-03 10:55:41'),(9,'帖子标题9',3,NULL,'发布内容9',208,1,'2023-05-03 10:55:41','2023-05-03 10:55:41','2023-05-03 10:55:41'),(10,'帖子标题10',2,NULL,'发布内容10',189,1,'2023-05-03 10:55:41','2023-05-03 10:55:41','2023-05-03 10:55:41'),(11,'帖子标题11',3,NULL,'发布内容11',43,1,'2023-05-03 10:55:41','2023-05-03 10:55:41','2023-05-03 10:55:41'),(12,'帖子标题12',2,NULL,'发布内容12',48,1,'2023-05-03 10:55:41','2023-05-03 10:55:41','2023-05-03 10:55:41'),(13,'帖子标题13',3,NULL,'发布内容13',156,1,'2023-05-03 10:55:41','2023-05-03 10:55:41','2023-05-03 10:55:41'),(14,'帖子标题14',2,NULL,'发布内容14',4,1,'2023-05-03 10:55:41','2023-05-03 10:55:41','2023-05-03 10:55:41'),(16,'测试',1,NULL,'<p>测试</p>',NULL,1,'2023-05-03 11:14:02',NULL,'2023-05-03 11:14:02'),(17,NULL,NULL,1,'测试',16,2,'2023-05-03 11:16:19',NULL,'2023-05-03 11:16:19');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-05-03 10:55:41','公告详情1','2023-05-03 10:55:41'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-05-03 10:55:41','公告详情2','2023-05-03 10:55:41'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-05-03 10:55:41','公告详情3','2023-05-03 10:55:41'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-05-03 10:55:41','公告详情4','2023-05-03 10:55:41'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-05-03 10:55:41','公告详情5','2023-05-03 10:55:41'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-05-03 10:55:41','公告详情6','2023-05-03 10:55:41'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-05-03 10:55:41','公告详情7','2023-05-03 10:55:41'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-05-03 10:55:41','公告详情8','2023-05-03 10:55:41'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-05-03 10:55:41','公告详情9','2023-05-03 10:55:41'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-05-03 10:55:41','公告详情10','2023-05-03 10:55:41'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-05-03 10:55:41','公告详情11','2023-05-03 10:55:41'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-05-03 10:55:41','公告详情12','2023-05-03 10:55:41'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-05-03 10:55:41','公告详情13','2023-05-03 10:55:41'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-05-03 10:55:41','公告详情14','2023-05-03 10:55:41');

/*Table structure for table `shiwu` */

DROP TABLE IF EXISTS `shiwu`;

CREATE TABLE `shiwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shiwu_name` varchar(200) DEFAULT NULL COMMENT '失物名称  Search111 ',
  `shiwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '失物编号',
  `shiwu_photo` varchar(200) DEFAULT NULL COMMENT '失物照片',
  `shiwu_time` timestamp NULL DEFAULT NULL COMMENT '时间 Search111',
  `shiwu_address` varchar(200) DEFAULT NULL COMMENT '失物地点 Search111',
  `shiwu_types` int(11) DEFAULT NULL COMMENT '失物类型 Search111',
  `shiwu_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `shiwu_yesno_text` longtext COMMENT '审核意见',
  `shiwu_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `shiwu_content` longtext COMMENT '失物介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shiwu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='失物招领';

/*Data for the table `shiwu` */

insert  into `shiwu`(`id`,`yonghu_id`,`shiwu_name`,`shiwu_uuid_number`,`shiwu_photo`,`shiwu_time`,`shiwu_address`,`shiwu_types`,`shiwu_yesno_types`,`shiwu_yesno_text`,`shiwu_shenhe_time`,`shiwu_content`,`shangxia_types`,`shiwu_delete`,`insert_time`,`create_time`) values (1,2,'失物名称1','1683082541239','upload/shiwuzhaoling1.jpg','2023-05-03 10:55:41','失物地点1',4,2,NULL,NULL,'失物介绍1',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(2,2,'失物名称2','1683082541310','upload/shiwuzhaoling2.jpg','2023-05-03 10:55:41','失物地点2',3,2,NULL,NULL,'失物介绍2',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(3,2,'失物名称3','1683082541302','upload/shiwuzhaoling3.jpg','2023-05-03 10:55:41','失物地点3',4,2,NULL,NULL,'失物介绍3',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(4,1,'失物名称4','1683082541239','upload/shiwuzhaoling4.jpg','2023-05-03 10:55:41','失物地点4',1,2,NULL,NULL,'失物介绍4',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(5,2,'失物名称5','1683082541245','upload/shiwuzhaoling5.jpg','2023-05-03 10:55:41','失物地点5',2,2,NULL,NULL,'失物介绍5',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(6,2,'失物名称6','1683082541257','upload/shiwuzhaoling6.jpg','2023-05-03 10:55:41','失物地点6',4,2,NULL,NULL,'失物介绍6',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(7,1,'失物名称7','1683082541265','upload/shiwuzhaoling7.jpg','2023-05-03 10:55:41','失物地点7',3,2,NULL,NULL,'失物介绍7',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(8,2,'失物名称8','1683082541267','upload/shiwuzhaoling8.jpg','2023-05-03 10:55:41','失物地点8',1,2,NULL,NULL,'失物介绍8',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(9,1,'失物名称9','1683082541277','upload/shiwuzhaoling9.jpg','2023-05-03 10:55:41','失物地点9',4,2,NULL,NULL,'失物介绍9',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(10,3,'失物名称10','1683082541310','upload/shiwuzhaoling10.jpg','2023-05-03 10:55:41','失物地点10',3,2,NULL,NULL,'失物介绍10',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(11,1,'失物名称11','1683082541220','upload/shiwuzhaoling11.jpg','2023-05-03 10:55:41','失物地点11',4,2,NULL,NULL,'失物介绍11',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(12,3,'失物名称12','1683082541220','upload/shiwuzhaoling12.jpg','2023-05-03 10:55:41','失物地点12',4,2,NULL,NULL,'失物介绍12',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(13,1,'失物名称13','1683082541271','upload/shiwuzhaoling13.jpg','2023-05-03 10:55:41','失物地点13',4,2,NULL,NULL,'失物介绍13',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(14,3,'失物名称14','1683082541223','upload/shiwuzhaoling14.jpg','2023-05-03 10:55:41','失物地点14',2,2,NULL,NULL,'失物介绍14',2,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(15,1,'sadsad','1683083725465','upload/1683083729819.jpg','2023-05-03 00:00:00','阿萨德',3,2,'海报','2023-05-03 11:16:42','sad',1,1,'2023-05-03 11:15:37','2023-05-03 11:15:37');

/*Table structure for table `shiwu_yuyue` */

DROP TABLE IF EXISTS `shiwu_yuyue`;

CREATE TABLE `shiwu_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiwu_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `shiwu_id` int(11) DEFAULT NULL COMMENT '寻物启示',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shiwu_yuyue_text` longtext COMMENT '报名理由',
  `shiwu_yuyue_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '寻物启示报名时间',
  `shiwu_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `shiwu_yuyue_yesno_text` longtext COMMENT '审核回复',
  `shiwu_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='失物认领';

/*Data for the table `shiwu_yuyue` */

insert  into `shiwu_yuyue`(`id`,`shiwu_yuyue_uuid_number`,`shiwu_id`,`yonghu_id`,`shiwu_yuyue_text`,`shiwu_yuyue_photo`,`insert_time`,`shiwu_yuyue_yesno_types`,`shiwu_yuyue_yesno_text`,`shiwu_yuyue_shenhe_time`,`create_time`) values (1,'1683082541295',1,1,'报名理由1','upload/shiwu_yuyue1.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(2,'1683082541226',2,1,'报名理由2','upload/shiwu_yuyue2.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(3,'1683082541296',3,1,'报名理由3','upload/shiwu_yuyue3.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(4,'1683082541306',4,1,'报名理由4','upload/shiwu_yuyue4.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(5,'1683082541251',5,1,'报名理由5','upload/shiwu_yuyue5.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(6,'1683082541312',6,1,'报名理由6','upload/shiwu_yuyue6.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(7,'1683082541317',7,2,'报名理由7','upload/shiwu_yuyue7.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(8,'1683082541260',8,2,'报名理由8','upload/shiwu_yuyue8.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(9,'1683082541300',9,1,'报名理由9','upload/shiwu_yuyue9.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(10,'1683082541231',10,3,'报名理由10','upload/shiwu_yuyue10.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(11,'1683082541271',11,3,'报名理由11','upload/shiwu_yuyue11.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(12,'1683082541264',12,3,'报名理由12','upload/shiwu_yuyue12.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(13,'1683082541313',13,1,'报名理由13','upload/shiwu_yuyue13.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(14,'1683082541298',14,1,'报名理由14','upload/shiwu_yuyue14.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(15,'1683083665018',14,1,'我丢的','upload/1683083679267.jpg','2023-05-03 11:14:41',2,'好的','2023-05-03 11:22:54','2023-05-03 11:14:41');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','zlzbcs85snb25gsod18g6w8hsyt2a8uu','2023-05-03 10:56:35','2023-05-03 12:13:17'),(2,1,'admin','users','管理员','xdk5aitsja60889uh1m8v7bcc9gkpuza','2023-05-03 10:56:37','2023-05-03 12:16:00');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-03 10:55:26');

/*Table structure for table `xunwu` */

DROP TABLE IF EXISTS `xunwu`;

CREATE TABLE `xunwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xunwu_name` varchar(200) DEFAULT NULL COMMENT '寻物名称  Search111 ',
  `xunwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '寻物编号',
  `xunwu_photo` varchar(200) DEFAULT NULL COMMENT '寻物照片',
  `xunwu_time` timestamp NULL DEFAULT NULL COMMENT '时间 Search111',
  `xunwu_address` varchar(200) DEFAULT NULL COMMENT '寻物地点 Search111',
  `xunwu_types` int(11) DEFAULT NULL COMMENT '寻物类型 Search111',
  `xunwu_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `xunwu_yesno_text` longtext COMMENT '审核意见',
  `xunwu_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `xunwu_content` longtext COMMENT '寻物介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `xunwu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='寻物启示';

/*Data for the table `xunwu` */

insert  into `xunwu`(`id`,`yonghu_id`,`xunwu_name`,`xunwu_uuid_number`,`xunwu_photo`,`xunwu_time`,`xunwu_address`,`xunwu_types`,`xunwu_yesno_types`,`xunwu_yesno_text`,`xunwu_shenhe_time`,`xunwu_content`,`shangxia_types`,`xunwu_delete`,`insert_time`,`create_time`) values (1,2,'寻物名称1','1683082541238','upload/shiwuzhaoling1.jpg','2023-05-03 10:55:41','寻物地点1',3,2,NULL,NULL,'寻物介绍1',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(2,1,'寻物名称2','1683082541258','upload/shiwuzhaoling2.jpg','2023-05-03 10:55:41','寻物地点2',1,2,NULL,NULL,'寻物介绍2',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(3,2,'寻物名称3','1683082541311','upload/shiwuzhaoling3.jpg','2023-05-03 10:55:41','寻物地点3',3,2,NULL,NULL,'寻物介绍3',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(4,2,'寻物名称4','1683082541255','upload/shiwuzhaoling4.jpg','2023-05-03 10:55:41','寻物地点4',2,2,NULL,NULL,'寻物介绍4',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(5,2,'寻物名称5','1683082541319','upload/shiwuzhaoling5.jpg','2023-05-03 10:55:41','寻物地点5',3,2,NULL,NULL,'寻物介绍5',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(6,3,'寻物名称6','1683082541252','upload/shiwuzhaoling6.jpg','2023-05-03 10:55:41','寻物地点6',2,2,NULL,NULL,'寻物介绍6',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(7,3,'寻物名称7','1683082541306','upload/shiwuzhaoling7.jpg','2023-05-03 10:55:41','寻物地点7',4,2,NULL,NULL,'寻物介绍7',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(8,1,'寻物名称8','1683082541319','upload/shiwuzhaoling8.jpg','2023-05-03 10:55:41','寻物地点8',2,2,NULL,NULL,'寻物介绍8',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(9,3,'寻物名称9','1683082541316','upload/shiwuzhaoling9.jpg','2023-05-03 10:55:41','寻物地点9',3,2,NULL,NULL,'寻物介绍9',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(10,3,'寻物名称10','1683082541263','upload/shiwuzhaoling10.jpg','2023-05-03 10:55:41','寻物地点10',4,2,NULL,NULL,'寻物介绍10',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(11,3,'寻物名称11','1683082541311','upload/shiwuzhaoling11.jpg','2023-05-03 10:55:41','寻物地点11',2,2,NULL,NULL,'寻物介绍11',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(12,2,'寻物名称12','1683082541242','upload/shiwuzhaoling12.jpg','2023-05-03 10:55:41','寻物地点12',4,2,NULL,NULL,'寻物介绍12',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(13,3,'寻物名称13','1683082541285','upload/shiwuzhaoling13.jpg','2023-05-03 10:55:41','寻物地点13',2,2,NULL,NULL,'寻物介绍13',1,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(14,3,'寻物名称14','1683082541286','upload/shiwuzhaoling14.jpg','2023-05-03 10:55:41','寻物地点14',4,2,NULL,NULL,'寻物介绍14',2,1,'2023-05-03 10:55:41','2023-05-03 10:55:41'),(15,1,'测试','1683083745017',NULL,'2023-05-03 00:00:00','测试',2,2,'海报','2023-05-03 11:23:48','测试的',1,1,'2023-05-03 11:15:53','2023-05-03 11:15:53');

/*Table structure for table `xunwu_yuyue` */

DROP TABLE IF EXISTS `xunwu_yuyue`;

CREATE TABLE `xunwu_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xunwu_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `xunwu_id` int(11) DEFAULT NULL COMMENT '寻物启示',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xunwu_yuyue_text` longtext COMMENT '报名理由',
  `xunwu_yuyue_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '寻物启示报名时间',
  `xunwu_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `xunwu_yuyue_yesno_text` longtext COMMENT '审核回复',
  `xunwu_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='寻物认领';

/*Data for the table `xunwu_yuyue` */

insert  into `xunwu_yuyue`(`id`,`xunwu_yuyue_uuid_number`,`xunwu_id`,`yonghu_id`,`xunwu_yuyue_text`,`xunwu_yuyue_photo`,`insert_time`,`xunwu_yuyue_yesno_types`,`xunwu_yuyue_yesno_text`,`xunwu_yuyue_shenhe_time`,`create_time`) values (1,'1683082541233',1,2,'报名理由1','upload/xunwu_yuyue1.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(2,'1683082541253',2,1,'报名理由2','upload/xunwu_yuyue2.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(3,'1683082541278',3,2,'报名理由3','upload/xunwu_yuyue3.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(4,'1683082541268',4,2,'报名理由4','upload/xunwu_yuyue4.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(5,'1683082541251',5,2,'报名理由5','upload/xunwu_yuyue5.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(6,'1683082541275',6,1,'报名理由6','upload/xunwu_yuyue6.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(7,'1683082541302',7,1,'报名理由7','upload/xunwu_yuyue7.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(8,'1683082541284',8,2,'报名理由8','upload/xunwu_yuyue8.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(9,'1683082541264',9,3,'报名理由9','upload/xunwu_yuyue9.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(10,'1683082541250',10,1,'报名理由10','upload/xunwu_yuyue10.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(11,'1683082541313',11,1,'报名理由11','upload/xunwu_yuyue11.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(12,'1683082541319',12,3,'报名理由12','upload/xunwu_yuyue12.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(13,'1683082541229',13,3,'报名理由13','upload/xunwu_yuyue13.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(14,'1683082541279',14,3,'报名理由14','upload/xunwu_yuyue14.jpg','2023-05-03 10:55:41',1,NULL,NULL,'2023-05-03 10:55:41'),(15,'1683083698359',14,1,'我要认领','upload/1683083704889.jpg','2023-05-03 11:15:06',2,'海报','2023-05-03 11:24:07','2023-05-03 11:15:06');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','1683082541325','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','2023-05-03 10:55:41'),(2,'a2','123456','1683082541295','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-05-03 10:55:41'),(3,'a3','123456','1683082541305','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','2023-05-03 10:55:41');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
