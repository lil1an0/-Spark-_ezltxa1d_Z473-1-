-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: pythonezltxa1d
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `pythonezltxa1d`
--

/*!40000 DROP DATABASE IF EXISTS `pythonezltxa1d`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `pythonezltxa1d` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `pythonezltxa1d`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg',NULL),(2,'picture2','upload/picture2.jpg',NULL),(3,'picture3','upload/picture3.jpg',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ditu`
--

DROP TABLE IF EXISTS `ditu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ditu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shengfen` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '省份',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='地图';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ditu`
--

LOCK TABLES `ditu` WRITE;
/*!40000 ALTER TABLE `ditu` DISABLE KEYS */;
INSERT INTO `ditu` VALUES (1,'2025-03-24 16:02:49','省份1',1),(2,'2025-03-24 16:02:49','省份2',2),(3,'2025-03-24 16:02:49','省份3',3),(4,'2025-03-24 16:02:49','省份4',4),(5,'2025-03-24 16:02:49','省份5',5),(6,'2025-03-24 16:02:49','省份6',6),(7,'2025-03-24 16:02:49','省份7',7),(8,'2025-03-24 16:02:49','省份8',8);
/*!40000 ALTER TABLE `ditu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qixiangshuju`
--

DROP TABLE IF EXISTS `qixiangshuju`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qixiangshuju` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nianfen` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年份',
  `yuefen` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '月份',
  `diqumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地区名称',
  `pingjunqiwen` double DEFAULT NULL COMMENT '平均气温（℃）',
  `zuidiqiwen` double DEFAULT NULL COMMENT '平均最低气温（℃）',
  `zuigaoqiwen` double DEFAULT NULL COMMENT '平均最高气温（℃）',
  `kongqishidu` double DEFAULT NULL COMMENT '平均空气湿度（%）',
  `pingjunfengsu` double DEFAULT NULL COMMENT '平均风速（m/s）',
  `pingjunfengxiang` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '平均风向',
  `guangzhaoshizhang` double DEFAULT NULL COMMENT '平均光照时长（小时）',
  `guangzhaoqiangdu` double DEFAULT NULL COMMENT '平均光照强度（W/m²）',
  `junziwaixian` int(11) DEFAULT NULL COMMENT '平均紫外线强度（UV Index）',
  `bianhuamiaoshu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '春耕气候变化描述',
  `qiushouqihou` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '秋收气候变化描述',
  `qixiangyinsu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '影响春耕秋收的气象因素',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='气象数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qixiangshuju`
--

LOCK TABLES `qixiangshuju` WRITE;
/*!40000 ALTER TABLE `qixiangshuju` DISABLE KEYS */;
INSERT INTO `qixiangshuju` VALUES (1,'2025-03-24 16:02:49','年份1','月份1','地区名称1',1,1,1,1,1,'平均风向1',1,1,1,'春耕气候变化描述1','秋收气候变化描述1','影响春耕秋收的气象因素1'),(2,'2025-03-24 16:02:49','年份2','月份2','地区名称2',2,2,2,2,2,'平均风向2',2,2,2,'春耕气候变化描述2','秋收气候变化描述2','影响春耕秋收的气象因素2'),(3,'2025-03-24 16:02:49','年份3','月份3','地区名称3',3,3,3,3,3,'平均风向3',3,3,3,'春耕气候变化描述3','秋收气候变化描述3','影响春耕秋收的气象因素3'),(4,'2025-03-24 16:02:49','年份4','月份4','地区名称4',4,4,4,4,4,'平均风向4',4,4,4,'春耕气候变化描述4','秋收气候变化描述4','影响春耕秋收的气象因素4'),(5,'2025-03-24 16:02:49','年份5','月份5','地区名称5',5,5,5,5,5,'平均风向5',5,5,5,'春耕气候变化描述5','秋收气候变化描述5','影响春耕秋收的气象因素5'),(6,'2025-03-24 16:02:49','年份6','月份6','地区名称6',6,6,6,6,6,'平均风向6',6,6,6,'春耕气候变化描述6','秋收气候变化描述6','影响春耕秋收的气象因素6'),(7,'2025-03-24 16:02:49','年份7','月份7','地区名称7',7,7,7,7,7,'平均风向7',7,7,7,'春耕气候变化描述7','秋收气候变化描述7','影响春耕秋收的气象因素7'),(8,'2025-03-24 16:02:49','年份8','月份8','地区名称8',8,8,8,8,8,'平均风向8',8,8,8,'春耕气候变化描述8','秋收气候变化描述8','影响春耕秋收的气象因素8');
/*!40000 ALTER TABLE `qixiangshuju` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','upload/image1.jpg','管理员','2025-03-24 16:02:49');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-27 13:44:20
