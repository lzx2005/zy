# Host: localhost  (Version: 5.7.10-log)
# Date: 2016-05-04 16:48:57
# Generator: MySQL-Front 5.3  (Build 4.271)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "order"
#

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `progress` int(3) DEFAULT '0' COMMENT '进度',
  `mission` varchar(255) DEFAULT NULL COMMENT '任务',
  `in_charge` varchar(255) DEFAULT NULL COMMENT '负责人',
  `create_date` date DEFAULT '2016-01-01' COMMENT '创建日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

#
# Data for table "order"
#

INSERT INTO `order` VALUES (8,'12',1,'124','124','2016-06-01'),(9,'dd',1,'f','12','2016-06-02'),(10,'12',3,'4','5','2016-05-17'),(11,'123',2,'3','4','2016-05-16'),(12,'12',1,'1','2','2016-05-20'),(13,'143',99,'fw','wef','2016-06-01'),(14,'5',4,'3','2','2016-05-25'),(15,'f',1,'231','123','2016-05-27'),(16,'4',3,'2','1','2016-05-04'),(17,'fe',0,'fae','awfe','2016-06-02'),(18,'1',14,'12','12','2016-05-17'),(19,'1',5,'2','124','2016-06-07'),(20,'1234',1,'1','1','2016-06-02'),(21,'123',1,'123','1','2016-05-25'),(22,'12',4,'5','6','2016-06-04'),(23,'12',2,'3','45','2016-06-11'),(24,'111',100,'444','11','2016-06-04'),(25,'asdas',1,'1','2','2016-05-23'),(26,'asdasd',1,'asdasd','fafaw','2016-05-30'),(27,'ad',1,'2','3','2016-06-01'),(28,'12',1,'2','3','2016-05-18'),(29,'12',2,'3','4','2016-06-10');

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'lzx2005','123456'),(2,'lzx2005','123456'),(3,'lzx2005','123456');
