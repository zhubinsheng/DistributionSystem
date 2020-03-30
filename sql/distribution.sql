/*
SQLyog Ultimate v11.41 (64 bit)
MySQL - 5.7.24 : Database - distribution
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`distribution` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `distribution`;

/*Table structure for table `dis_amount_situation` */

DROP TABLE IF EXISTS `dis_amount_situation`;

CREATE TABLE `dis_amount_situation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dis_user_id` varchar(50) DEFAULT NULL COMMENT '用户id',
  `type` varchar(10) DEFAULT NULL COMMENT '(0:收入,1:支出)',
  `before_change_amount` decimal(10,2) DEFAULT '0.00' COMMENT '总账户变动之前余额',
  `after_change_amount` decimal(10,2) DEFAULT '0.00' COMMENT '总账户变动之后余额',
  `add_time` varchar(20) DEFAULT NULL COMMENT '添加时间',
  `specific_before_change_amount` decimal(10,2) DEFAULT '0.00' COMMENT '具体账户变动之前金额',
  `specific_after_change_amount` decimal(10,2) DEFAULT '0.00' COMMENT '具体账户变动之后金额',
  `account_type` varchar(10) DEFAULT NULL COMMENT '具体账户类型',
  `change_amount` decimal(10,2) DEFAULT NULL COMMENT '账户变动金额',
  `describe` varchar(200) DEFAULT NULL COMMENT '具体变动描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=391 DEFAULT CHARSET=utf8 COMMENT='账户变动表，用于记录账户变动情况';

/*Data for the table `dis_amount_situation` */

insert  into `dis_amount_situation`(`id`,`dis_user_id`,`type`,`before_change_amount`,`after_change_amount`,`add_time`,`specific_before_change_amount`,`specific_after_change_amount`,`account_type`,`change_amount`,`describe`) values (341,'admin','2','0.00','0.00','2020-03-30 23:17:48','0.00','0.00','0','0.00','账户初始化'),(342,'admin','0','0.00','0.00','2020-03-30 23:28:53','0.00','0.00','0','0.00','zbs12345的trade账户交易，根据当前费率，admin获得60.0元，'),(343,'zbs1234','2','0.00','0.00','2020-03-30 23:22:33','0.00','0.00','0','0.00','账户初始化'),(344,'zbs1234','0','0.00','0.00','2020-03-30 23:28:54','0.00','0.00','0','0.00','zbs12345的trade账户交易，根据当前费率，zbs1234获得80.0元，'),(345,'zbs123','2','0.00','0.00','2020-03-30 23:21:52','0.00','0.00','0','0.00','账户初始化'),(346,'zbs123','0','0.00','0.00','2020-03-30 23:28:54','0.00','0.00','0','0.00','zbs12345的trade账户交易，根据当前费率，zbs123获得80.0元，'),(347,'admin','0','0.00','0.00','2020-03-30 23:28:54','0.00','0.00','0','0.00','zbs12345的trade账户交易，根据当前费率，admin获得80.0元，'),(361,'admin','0','0.00','20.00','2020-03-30 23:38:30','0.00','20.00','0','20.00','zbs12345的trade账户交易，根据当前费率，admin获得20.0元，'),(362,'zbs12345','2','0.00','0.00','2020-03-30 23:23:17','0.00','0.00','0','0.00','账户初始化'),(363,'zbs12345','0','0.00','60.00','2020-03-30 23:38:30','0.00','60.00','0','60.00','zbs12345的trade账户交易，根据当前费率，zbs12345获得60.0元，'),(364,'zbs1234','0','0.00','6.67','2020-03-30 23:38:30','0.00','6.67','0','6.67','zbs12345的trade账户交易，根据当前费率，zbs1234获得6.67元，'),(365,'zbs123','0','0.00','6.67','2020-03-30 23:38:30','0.00','6.67','0','6.67','zbs12345的trade账户交易，根据当前费率，zbs123获得6.67元，'),(366,'admin','0','20.00','60.00','2020-03-30 23:40:48','20.00','60.00','0','40.00','zbs1234的trade账户交易，根据当前费率，admin获得40.0元，'),(367,'zbs1234','0','6.67','126.67','2020-03-30 23:40:48','6.67','126.67','0','120.00','zbs1234的trade账户交易，根据当前费率，zbs1234获得120.0元，'),(368,'zbs123','0','6.67','26.67','2020-03-30 23:40:48','6.67','26.67','0','20.00','zbs1234的trade账户交易，根据当前费率，zbs123获得20.00元，'),(369,'admin','0','60.00','80.00','2020-03-30 23:40:48','0.00','20.00','0','20.00','zbs1234的trade账户交易，根据当前费率，admin获得20.00元，'),(370,'admin','0','80.00','140.00','2020-03-30 23:45:13','60.00','120.00','0','60.00','zbs12345的trade账户交易，根据当前费率，admin获得60.0元，'),(371,'zbs12345','0','60.00','240.00','2020-03-30 23:45:13','60.00','240.00','0','180.00','zbs12345的trade账户交易，根据当前费率，zbs12345获得180.0元，'),(372,'zbs1234','0','126.67','146.67','2020-03-30 23:45:13','126.67','146.67','0','20.00','zbs12345的trade账户交易，根据当前费率，zbs1234获得20.00元，'),(373,'zbs123','0','26.67','46.67','2020-03-30 23:45:13','26.67','46.67','0','20.00','zbs12345的trade账户交易，根据当前费率，zbs123获得20.00元，'),(374,'admin','0','140.00','160.00','2020-03-30 23:45:13','20.00','40.00','0','20.00','zbs12345的trade账户交易，根据当前费率，admin获得20.00元，'),(375,'admin','0','160.00','260.00','2020-03-30 23:46:41','120.00','220.00','0','100.00','zbs12345的trade账户交易，根据当前费率，admin获得100.0元，'),(376,'zbs12345','0','240.00','540.00','2020-03-30 23:46:41','240.00','540.00','0','300.00','zbs12345的trade账户交易，根据当前费率，zbs12345获得300.0元，'),(377,'zbs1234','0','146.67','180.00','2020-03-30 23:46:41','146.67','180.00','0','33.33','zbs12345的trade账户交易，根据当前费率，zbs1234获得33.33元，'),(378,'zbs123','0','46.67','80.00','2020-03-30 23:46:41','46.67','80.00','0','33.33','zbs12345的trade账户交易，根据当前费率，zbs123获得33.33元，'),(379,'admin','0','260.00','293.33','2020-03-30 23:46:41','40.00','73.33','0','33.33','zbs12345的trade账户交易，根据当前费率，admin获得33.33元，'),(380,'admin','0','293.33','393.33','2020-03-30 23:53:37','220.00','320.00','0','100.00','zbs12345的trade账户交易，根据当前费率，admin获得100.0元，'),(381,'zbs12345','0','540.00','840.00','2020-03-30 23:53:38','540.00','840.00','0','300.00','zbs12345的trade账户交易，根据当前费率，zbs12345获得300.0元，'),(382,'zbs1234','0','180.00','213.33','2020-03-30 23:53:38','180.00','213.33','0','33.33','zbs12345的trade账户交易，根据当前费率，zbs1234获得33.33元，'),(383,'zbs123','0','80.00','113.33','2020-03-30 23:53:38','80.00','113.33','0','33.33','zbs12345的trade账户交易，根据当前费率，zbs123获得33.33元，'),(384,'admin','0','393.33','426.66','2020-03-30 23:53:38','73.33','106.66','0','33.33','zbs12345的trade账户交易，根据当前费率，admin获得33.33元，'),(387,'admin','0','0.00','20.00','2020-03-31 00:01:12','0.00','20.00','0','20.00','zbs12345的trade账户交易，根据当前费率，admin获得20.0元，'),(388,'zbs12345','0','0.00','60.00','2020-03-31 00:01:12','0.00','60.00','0','60.00','zbs12345的trade账户交易，根据当前费率，zbs12345获得60.0元，'),(389,'zbs1234','0','0.00','10.00','2020-03-31 00:01:12','0.00','10.00','0','10.00','zbs12345的trade账户交易，根据当前费率，zbs1234获得10.00元，'),(390,'zbs123','0','0.00','10.00','2020-03-31 00:01:12','0.00','10.00','0','10.00','zbs12345的trade账户交易，根据当前费率，zbs123获得10.00元，');

/*Table structure for table `dis_member_amount` */

DROP TABLE IF EXISTS `dis_member_amount`;

CREATE TABLE `dis_member_amount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dis_user_id` varchar(50) DEFAULT NULL COMMENT '用户标示id',
  `dis_user_name` varchar(20) DEFAULT NULL COMMENT '用户名称',
  `total_amount` decimal(12,2) DEFAULT '0.00' COMMENT '总金额',
  `frozen_amount` decimal(12,2) DEFAULT '0.00' COMMENT '冻结金额',
  `avaible_amount` decimal(12,2) DEFAULT '0.00' COMMENT '可用金额',
  `type` varchar(20) DEFAULT '0' COMMENT '类型（0会员 1 代理商）',
  `add_time` varchar(20) DEFAULT NULL COMMENT '添加时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `amount_status` varchar(10) DEFAULT '0' COMMENT '状态（0正常 1冻结）',
  `trade_total_amount` decimal(12,2) DEFAULT '0.00' COMMENT '扩展字段，交易账户总金额',
  `trade_frozen_amount` decimal(12,2) DEFAULT '0.00' COMMENT '扩展字段，交易账户冻结金额',
  `trade_avaible_amount` decimal(12,2) DEFAULT '0.00' COMMENT '扩展字段，交易账户可用金额',
  `level_total_amount` decimal(12,2) DEFAULT '0.00' COMMENT '扩展字段，等级账户总金额',
  `level_frozen_amount` decimal(12,2) DEFAULT '0.00' COMMENT '扩展字段，等级账户冻结金额',
  `level_avaible_amount` decimal(12,2) DEFAULT '0.00' COMMENT '扩展字段，等级账户可用金额',
  `invite_total_amount` decimal(12,2) DEFAULT '0.00' COMMENT '扩展字段，邀请用户总积分',
  `invite_frozen_amount` decimal(12,2) DEFAULT '0.00' COMMENT '扩展字段，邀请用户冻结积分',
  `invite_avaible_amount` decimal(12,2) DEFAULT '0.00' COMMENT '扩展字段，邀请用户可用积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COMMENT='账户金额表';

/*Data for the table `dis_member_amount` */

insert  into `dis_member_amount`(`id`,`dis_user_id`,`dis_user_name`,`total_amount`,`frozen_amount`,`avaible_amount`,`type`,`add_time`,`update_time`,`amount_status`,`trade_total_amount`,`trade_frozen_amount`,`trade_avaible_amount`,`level_total_amount`,`level_frozen_amount`,`level_avaible_amount`,`invite_total_amount`,`invite_frozen_amount`,`invite_avaible_amount`) values (109,'admin','平台','20.00','0.00','20.00','1','2020-03-30 23:17:48','2020-03-30 23:17:48','0','20.00','0.00','20.00','0.00','0.00','0.00','0.00','0.00','0.00'),(110,'zbs123','朱斌生1','10.00','0.00','10.00','0','2020-03-30 23:21:52','2020-03-30 23:21:52','0','10.00','0.00','10.00','0.00','0.00','0.00','0.00','0.00','0.00'),(111,'zbs1234','朱斌生2','10.00','0.00','10.00','0','2020-03-30 23:22:33','2020-03-30 23:22:33','0','10.00','0.00','10.00','0.00','0.00','0.00','0.00','0.00','0.00'),(112,'zbs12345','朱斌生3','60.00','0.00','60.00','0','2020-03-30 23:23:17','2020-03-30 23:23:17','0','60.00','0.00','60.00','0.00','0.00','0.00','0.00','0.00','0.00');

/*Table structure for table `dis_member_info` */

DROP TABLE IF EXISTS `dis_member_info`;

CREATE TABLE `dis_member_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dis_platform_id` varchar(100) DEFAULT NULL COMMENT '平台',
  `dis_user_id` varchar(100) DEFAULT NULL COMMENT '用户id',
  `dis_model_id` varchar(100) DEFAULT NULL COMMENT '上级id',
  `dis_full_index` varchar(4000) DEFAULT NULL COMMENT '全路径',
  `dis_user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `dis_level` int(11) DEFAULT NULL COMMENT '级别',
  `dis_user_type` varchar(10) DEFAULT '0' COMMENT '身份类型',
  `dis_user_rank` varchar(10) DEFAULT 'A' COMMENT '用户段位(青铜、黄金、白银等)',
  `dis_note` varchar(100) DEFAULT NULL COMMENT '备注',
  `add_time` varchar(20) DEFAULT NULL COMMENT '添加时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `is_delete` varchar(1) DEFAULT 'N' COMMENT '删除状态',
  `dis_plat_super` varchar(100) DEFAULT NULL COMMENT '上级代理商id',
  `dis_plat_full_index` varchar(4000) DEFAULT NULL COMMENT '代理商全路径',
  `dis_plat_level` int(11) DEFAULT NULL COMMENT '代理商等级',
  `type` varchar(10) DEFAULT '0' COMMENT '账户类型(0,会员，1：代理商)',
  `rank_integral` int(10) DEFAULT '0' COMMENT '段位积分',
  `total_rank_integral` int(10) DEFAULT '0' COMMENT '段位总积分',
  `confine_status` int(2) DEFAULT '0' COMMENT '限制状态，0为正常，1为禁止邀请用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `dis_member_info` */

insert  into `dis_member_info`(`id`,`dis_platform_id`,`dis_user_id`,`dis_model_id`,`dis_full_index`,`dis_user_name`,`dis_level`,`dis_user_type`,`dis_user_rank`,`dis_note`,`add_time`,`update_time`,`is_delete`,`dis_plat_super`,`dis_plat_full_index`,`dis_plat_level`,`type`,`rank_integral`,`total_rank_integral`,`confine_status`) values (91,'admin','admin',NULL,'admin','平台',0,'10000','A',NULL,'2020-03-30 23:17:48','2020-03-30 23:17:48','N',NULL,'admin',0,'1',0,0,0),(92,'admin','zbs123','admin','admin.zbs123','朱斌生1',1,'0','A','admin','2020-03-30 23:21:52','2020-03-30 23:21:52','N','admin','admin',0,'0',0,0,0),(93,'admin','zbs1234','zbs123','admin.zbs123.zbs1234','朱斌生2',2,'0','A','','2020-03-30 23:22:33','2020-03-30 23:22:33','N','admin','admin',0,'0',0,0,0),(94,'admin','zbs12345','zbs1234','admin.zbs123.zbs1234.zbs12345','朱斌生3',3,'0','A','','2020-03-30 23:23:17','2020-03-30 23:23:17','N','admin','admin',0,'0',0,0,0);

/*Table structure for table `dis_profit_param` */

DROP TABLE IF EXISTS `dis_profit_param`;

CREATE TABLE `dis_profit_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dis_platform_id` varchar(100) DEFAULT NULL COMMENT '平台id',
  `cal_model` varchar(100) NOT NULL COMMENT '计算模型，如 百分比和固定金额',
  `account_type` varchar(100) DEFAULT NULL COMMENT '账户类型，如上级发展下级分润 ，交易分润。。。。',
  `dis_pro_value` varchar(20) DEFAULT NULL COMMENT '分润值',
  `dis_pro_level` varchar(100) DEFAULT NULL COMMENT '从下往上对应的级别关系',
  `dis_user_type` varchar(10) DEFAULT NULL COMMENT '会员类型（1000：平台标示，其他为用户类型）',
  `is_delete` varchar(1) DEFAULT 'N' COMMENT '是否删除',
  `update_time` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `add_time` varchar(20) DEFAULT NULL COMMENT '添加时间',
  `dist_trade_mode` varchar(20) DEFAULT NULL COMMENT '交易方式(分润或者提现)',
  `dis_user_rank` varchar(10) DEFAULT 'A' COMMENT '用户段位（青铜等）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='分润参数设置';

/*Data for the table `dis_profit_param` */

insert  into `dis_profit_param`(`id`,`dis_platform_id`,`cal_model`,`account_type`,`dis_pro_value`,`dis_pro_level`,`dis_user_type`,`is_delete`,`update_time`,`add_time`,`dist_trade_mode`,`dis_user_rank`) values (19,'admin','0','0','0.2','1','10000','N',NULL,'2020-03-30 23:21:06',NULL,'N1'),(21,'admin','0','0','0.6','1','0','N',NULL,'2020-03-30 23:33:09',NULL,'A');

/*Table structure for table `dis_profit_record` */

DROP TABLE IF EXISTS `dis_profit_record`;

CREATE TABLE `dis_profit_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profit_num` varchar(50) DEFAULT NULL COMMENT '收入编号',
  `dis_platform_id` varchar(100) DEFAULT NULL,
  `dis_get_user_id` varchar(100) DEFAULT NULL,
  `dis_set_user_id` varchar(100) DEFAULT NULL,
  `dis_amount` decimal(12,2) DEFAULT NULL,
  `account_type` varchar(100) DEFAULT NULL COMMENT '账户类型',
  `dis_note` varchar(400) DEFAULT NULL COMMENT '备注',
  `dis_user_type` varchar(400) DEFAULT NULL,
  `dis_order_id` varchar(20) DEFAULT NULL COMMENT '对应第三方订单编号',
  `is_delete` varchar(1) DEFAULT NULL,
  `add_time` varchar(20) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT '0' COMMENT '分类（0：用户分润 1:平台分润）',
  `before_amount` decimal(12,2) DEFAULT NULL COMMENT '交易前金额',
  `after_amount` decimal(12,2) DEFAULT NULL COMMENT '交易后金额',
  `before_pro_amount` decimal(12,2) DEFAULT NULL COMMENT '交易类型交易前金额',
  `after_pro_amount` decimal(12,2) DEFAULT NULL COMMENT '交易类型交易后金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=488 DEFAULT CHARSET=utf8 COMMENT='分润记录表';

/*Data for the table `dis_profit_record` */

insert  into `dis_profit_record`(`id`,`profit_num`,`dis_platform_id`,`dis_get_user_id`,`dis_set_user_id`,`dis_amount`,`account_type`,`dis_note`,`dis_user_type`,`dis_order_id`,`is_delete`,`add_time`,`update_time`,`type`,`before_amount`,`after_amount`,`before_pro_amount`,`after_pro_amount`) values (444,'PRO02328536552','admin','admin','zbs12345','60.00','0',NULL,'10000','1234567899999','N','2020-03-30 23:28:53','2020-03-30 23:28:53','1',NULL,NULL,NULL,NULL),(445,'PRO02328545946','admin','zbs1234','zbs12345','80.00','0',NULL,'0','1234567899999','N','2020-03-30 23:28:54','2020-03-30 23:28:54','0',NULL,NULL,NULL,NULL),(446,'PRO02328544797','admin','zbs123','zbs12345','80.00','0',NULL,'0','1234567899999','N','2020-03-30 23:28:54','2020-03-30 23:28:54','0',NULL,NULL,NULL,NULL),(447,'PRO02328548644','admin','admin','zbs12345','80.00','0',NULL,'10000','1234567899999','N','2020-03-30 23:28:54','2020-03-30 23:28:54','0',NULL,NULL,NULL,NULL),(458,'PRO02338306101','admin','admin','zbs12345','20.00','0',NULL,'10000','1234567899999','N','2020-03-30 23:38:30','2020-03-30 23:38:30','1',NULL,NULL,NULL,NULL),(459,'PRO02338306228','admin','zbs12345','zbs12345','60.00','0',NULL,'0','1234567899999','N','2020-03-30 23:38:30','2020-03-30 23:38:30','0',NULL,NULL,NULL,NULL),(460,'PRO02338301800','admin','zbs1234','zbs12345','6.67','0',NULL,'0','1234567899999','N','2020-03-30 23:38:30','2020-03-30 23:38:30','0',NULL,NULL,NULL,NULL),(461,'PRO02338306916','admin','zbs123','zbs12345','6.67','0',NULL,'0','1234567899999','N','2020-03-30 23:38:30','2020-03-30 23:38:30','0',NULL,NULL,NULL,NULL),(462,'PRO02340482022','admin','admin','zbs1234','40.00','0',NULL,'10000','12312312999','N','2020-03-30 23:40:48','2020-03-30 23:40:48','1',NULL,NULL,NULL,NULL),(463,'PRO02340480017','admin','zbs1234','zbs1234','120.00','0',NULL,'0','12312312999','N','2020-03-30 23:40:48','2020-03-30 23:40:48','0',NULL,NULL,NULL,NULL),(464,'PRO02340489561','admin','zbs123','zbs1234','20.00','0',NULL,'0','12312312999','N','2020-03-30 23:40:48','2020-03-30 23:40:48','0',NULL,NULL,NULL,NULL),(465,'PRO02340480050','admin','admin','zbs1234','20.00','0',NULL,'10000','12312312999','N','2020-03-30 23:40:48','2020-03-30 23:40:48','0',NULL,NULL,NULL,NULL),(466,'PRO02345136891','admin','admin','zbs12345','60.00','0',NULL,'10000','12312312999123','N','2020-03-30 23:45:13','2020-03-30 23:45:13','1',NULL,NULL,NULL,NULL),(467,'PRO02345138875','admin','zbs12345','zbs12345','180.00','0',NULL,'0','12312312999123','N','2020-03-30 23:45:13','2020-03-30 23:45:13','0',NULL,NULL,NULL,NULL),(468,'PRO02345132249','admin','zbs1234','zbs12345','20.00','0',NULL,'0','12312312999123','N','2020-03-30 23:45:13','2020-03-30 23:45:13','0',NULL,NULL,NULL,NULL),(469,'PRO02345138292','admin','zbs123','zbs12345','20.00','0',NULL,'0','12312312999123','N','2020-03-30 23:45:13','2020-03-30 23:45:13','0',NULL,NULL,NULL,NULL),(470,'PRO02345136583','admin','admin','zbs12345','20.00','0',NULL,'10000','12312312999123','N','2020-03-30 23:45:13','2020-03-30 23:45:13','0',NULL,NULL,NULL,NULL),(471,'PRO02346419982','admin','admin','zbs12345','100.00','0',NULL,'10000','123456789999912323','N','2020-03-30 23:46:41','2020-03-30 23:46:41','1',NULL,NULL,NULL,NULL),(472,'PRO02346415898','admin','zbs12345','zbs12345','300.00','0',NULL,'0','123456789999912323','N','2020-03-30 23:46:41','2020-03-30 23:46:41','0',NULL,NULL,NULL,NULL),(473,'PRO02346415306','admin','zbs1234','zbs12345','33.33','0',NULL,'0','123456789999912323','N','2020-03-30 23:46:41','2020-03-30 23:46:41','0',NULL,NULL,NULL,NULL),(474,'PRO02346417634','admin','zbs123','zbs12345','33.33','0',NULL,'0','123456789999912323','N','2020-03-30 23:46:41','2020-03-30 23:46:41','0',NULL,NULL,NULL,NULL),(475,'PRO02346411674','admin','admin','zbs12345','33.33','0',NULL,'10000','123456789999912323','N','2020-03-30 23:46:41','2020-03-30 23:46:41','0',NULL,NULL,NULL,NULL),(476,'PRO02353378925','admin','admin','zbs12345','100.00','0',NULL,'10000','123456789999912323','N','2020-03-30 23:53:37','2020-03-30 23:53:37','1',NULL,NULL,NULL,NULL),(477,'PRO02353389416','admin','zbs12345','zbs12345','300.00','0',NULL,'0','123456789999912323','N','2020-03-30 23:53:38','2020-03-30 23:53:38','0',NULL,NULL,NULL,NULL),(478,'PRO02353381571','admin','zbs1234','zbs12345','33.33','0',NULL,'0','123456789999912323','N','2020-03-30 23:53:38','2020-03-30 23:53:38','0',NULL,NULL,NULL,NULL),(479,'PRO02353386269','admin','zbs123','zbs12345','33.33','0',NULL,'0','123456789999912323','N','2020-03-30 23:53:38','2020-03-30 23:53:38','0',NULL,NULL,NULL,NULL),(480,'PRO02353386398','admin','admin','zbs12345','33.33','0',NULL,'10000','123456789999912323','N','2020-03-30 23:53:38','2020-03-30 23:53:38','0',NULL,NULL,NULL,NULL),(484,'PRO10001129961','admin','admin','zbs12345','20.00','0',NULL,'10000','12312312999123123','N','2020-03-31 00:01:12','2020-03-31 00:01:12','1',NULL,NULL,NULL,NULL),(485,'PRO10001122247','admin','zbs12345','zbs12345','60.00','0',NULL,'0','12312312999123123','N','2020-03-31 00:01:12','2020-03-31 00:01:12','0',NULL,NULL,NULL,NULL),(486,'PRO10001128444','admin','zbs1234','zbs12345','10.00','0',NULL,'0','12312312999123123','N','2020-03-31 00:01:12','2020-03-31 00:01:12','0',NULL,NULL,NULL,NULL),(487,'PRO10001126849','admin','zbs123','zbs12345','10.00','0',NULL,'0','12312312999123123','N','2020-03-31 00:01:12','2020-03-31 00:01:12','0',NULL,NULL,NULL,NULL);

/*Table structure for table `dis_rank_integral_record` */

DROP TABLE IF EXISTS `dis_rank_integral_record`;

CREATE TABLE `dis_rank_integral_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `dis_user_id` varchar(100) DEFAULT NULL COMMENT '用户id',
  `sys_integral` int(10) DEFAULT NULL COMMENT '系统积分',
  `is_use` varchar(2) DEFAULT 'N' COMMENT '是否使用（Y:使用,N未使用）',
  `is_expire` varchar(2) DEFAULT 'N' COMMENT '是否过期(Y:已过期，N未过期) 暂时不用',
  `before_integral` int(10) DEFAULT NULL COMMENT '使用前积分',
  `after_integral` int(10) DEFAULT NULL COMMENT '使用后积分',
  `expire_time` varchar(20) DEFAULT NULL COMMENT '到期时间（暂时不用）',
  `add_time` varchar(20) DEFAULT NULL COMMENT '添加时间',
  `account_type` varchar(10) DEFAULT NULL COMMENT '来源(交易、升级，下级升级)',
  `source_user_id` varchar(100) DEFAULT NULL COMMENT '来源用户id',
  `source_remak` varchar(200) DEFAULT NULL COMMENT '来源备注',
  `use_time` varchar(20) DEFAULT NULL COMMENT '使用时间',
  `use_remark` varchar(100) DEFAULT NULL COMMENT '使用备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='系统积分记录表';

/*Data for the table `dis_rank_integral_record` */

/*Table structure for table `dis_rank_param` */

DROP TABLE IF EXISTS `dis_rank_param`;

CREATE TABLE `dis_rank_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dis_platform_id` varchar(100) DEFAULT NULL COMMENT '平台id',
  `cal_model` varchar(100) NOT NULL COMMENT '计算模型，如 百分比和固定金额',
  `account_type` varchar(100) DEFAULT NULL COMMENT '账户类型，如上级发展下级分润 ，交易分润。。。。',
  `dis_integral_value` varchar(20) DEFAULT NULL COMMENT '积分值',
  `dis_pro_level` varchar(100) DEFAULT NULL COMMENT '从下往上对应的级别关系',
  `dis_user_type` varchar(10) DEFAULT NULL COMMENT '会员类型（1000：平台标示，其他为用户类型）',
  `is_delete` varchar(1) DEFAULT 'N' COMMENT '是否删除',
  `update_time` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `add_time` varchar(20) DEFAULT NULL COMMENT '添加时间',
  `dis_user_rank` varchar(10) DEFAULT 'A' COMMENT '用户段位（青铜等）',
  `dis_rank_name` varchar(50) DEFAULT NULL COMMENT '段位积分名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='分润参数设置';

/*Data for the table `dis_rank_param` */

insert  into `dis_rank_param`(`id`,`dis_platform_id`,`cal_model`,`account_type`,`dis_integral_value`,`dis_pro_level`,`dis_user_type`,`is_delete`,`update_time`,`add_time`,`dis_user_rank`,`dis_rank_name`) values (3,'dist','0','0','2','1','0','N',NULL,'2018-07-20 15:40:40','A','aaa'),(4,'dist','0','0','0.1','1','1','N',NULL,'2018-07-23 00:21:57','A','一级经理'),(5,'dist','0','0','0.2','0','0','N',NULL,'2018-07-23 00:23:47','A','自身_经理');

/*Table structure for table `dis_trade_record` */

DROP TABLE IF EXISTS `dis_trade_record`;

CREATE TABLE `dis_trade_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dis_user_id` varchar(100) DEFAULT NULL COMMENT '用户id',
  `trade_num` varchar(20) DEFAULT NULL COMMENT '第三方订单号',
  `trade_amount` decimal(12,2) DEFAULT '0.00' COMMENT '交易金额',
  `trade_time` varchar(20) DEFAULT NULL COMMENT '交易时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='交易金额记录表';

/*Data for the table `dis_trade_record` */

insert  into `dis_trade_record`(`id`,`dis_user_id`,`trade_num`,`trade_amount`,`trade_time`) values (33,'zbs12345','1234567899999','300.00','2020-03-30 23:28:54'),(34,'zbs12345','1234567899999','100.00','2020-03-30 23:38:30'),(35,'zbs1234','12312312999','200.00','2020-03-30 23:40:48'),(36,'zbs12345','12312312999123','300.00','2020-03-30 23:45:13'),(37,'zbs12345','123456789999912323','500.00','2020-03-30 23:46:41'),(38,'zbs12345','123456789999912323','500.00','2020-03-30 23:53:38'),(39,'zbs12345','12312312999123123','100.00','2020-03-31 00:01:13');

/*Table structure for table `dis_upgrade_param` */

DROP TABLE IF EXISTS `dis_upgrade_param`;

CREATE TABLE `dis_upgrade_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upgrade_name` varchar(100) DEFAULT NULL COMMENT '名称',
  `begin_integral` int(10) DEFAULT NULL COMMENT '开始金额',
  `end_integral` int(10) DEFAULT NULL COMMENT '结束金额',
  `dis_user_rank` varchar(10) DEFAULT NULL COMMENT '用户水平等级',
  `is_delete` varchar(2) DEFAULT 'N' COMMENT '是否删除',
  `add_time` varchar(20) DEFAULT NULL COMMENT '添加时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `identity_type` varchar(2) DEFAULT '0' COMMENT '0会员  1代理商',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='垂直升级配置表';

/*Data for the table `dis_upgrade_param` */

insert  into `dis_upgrade_param`(`id`,`upgrade_name`,`begin_integral`,`end_integral`,`dis_user_rank`,`is_delete`,`add_time`,`update_time`,`identity_type`) values (4,'23',1,2,'A','N','2018-10-19 19:09:22',NULL,'0');

/*Table structure for table `dis_upgrade_record` */

DROP TABLE IF EXISTS `dis_upgrade_record`;

CREATE TABLE `dis_upgrade_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dis_user_id` varchar(100) DEFAULT NULL COMMENT '用户id',
  `before_upgrade_level` varchar(10) DEFAULT NULL COMMENT '升级前等级',
  `after_upgrade_level` varchar(10) DEFAULT NULL COMMENT '升级后等级',
  `level_differ` varchar(2) DEFAULT NULL COMMENT '等级差额',
  `upgrade_time` varchar(20) DEFAULT NULL COMMENT '升级时间',
  `level_type` varchar(2) DEFAULT '0' COMMENT '升级类型(0:垂直升级 1：水平升级)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户升级记录表';

/*Data for the table `dis_upgrade_record` */

/*Table structure for table `dis_withdraw_record` */

DROP TABLE IF EXISTS `dis_withdraw_record`;

CREATE TABLE `dis_withdraw_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dis_user_id` varchar(50) DEFAULT NULL COMMENT '用户id',
  `withdraw_num` varchar(50) DEFAULT NULL COMMENT '提现单号',
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '提现金额',
  `fee_amount` decimal(10,2) DEFAULT NULL COMMENT '手续费',
  `real_amount` decimal(10,2) DEFAULT NULL COMMENT '实际到账金额',
  `withdraw_time` varchar(20) DEFAULT NULL COMMENT '提现时间',
  `handle_time` varchar(20) DEFAULT NULL COMMENT '处理时间',
  `withdraw_status` varchar(10) DEFAULT NULL COMMENT '处理状态',
  `account_type` varchar(10) DEFAULT NULL COMMENT '提现账户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='提现表';

/*Data for the table `dis_withdraw_record` */

/*Table structure for table `dist_withdraw_param` */

DROP TABLE IF EXISTS `dist_withdraw_param`;

CREATE TABLE `dist_withdraw_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin_amount` decimal(10,2) DEFAULT NULL COMMENT '开始金额',
  `end_amount` decimal(10,2) DEFAULT NULL COMMENT '结束时间',
  `cal_model` varchar(10) DEFAULT NULL COMMENT '计算模型，如 百分比和固定金额',
  `dis_withdraw_value` varchar(50) DEFAULT NULL COMMENT '提现值',
  `is_delete` varchar(2) DEFAULT 'N' COMMENT '是否删除',
  `add_time` varchar(20) DEFAULT NULL COMMENT '添加时间',
  `update_time` varchar(20) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='提现收费配置表';

/*Data for the table `dist_withdraw_param` */

insert  into `dist_withdraw_param`(`id`,`begin_amount`,`end_amount`,`cal_model`,`dis_withdraw_value`,`is_delete`,`add_time`,`update_time`) values (4,'0.00','1000.00','1','2','N','2018-05-31 21:50:19',NULL),(5,'1001.00','9999.00','1','1','N','2018-10-18 22:50:05',NULL);

/*Table structure for table `sys_dic` */

DROP TABLE IF EXISTS `sys_dic`;

CREATE TABLE `sys_dic` (
  `dic_id` int(11) NOT NULL AUTO_INCREMENT,
  `dic_no` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dic_notes` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dic_order` int(11) DEFAULT NULL,
  `dic_type_no` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dic_value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `is_delete` varchar(20) COLLATE utf8_bin DEFAULT 'N',
  `add_time` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `update_time` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `ext_field` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '扩展字段',
  `ext_field2` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`dic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10065 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='字典类型表';

/*Data for the table `sys_dic` */

insert  into `sys_dic`(`dic_id`,`dic_no`,`dic_notes`,`dic_order`,`dic_type_no`,`dic_value`,`is_delete`,`add_time`,`update_time`,`ext_field`,`ext_field2`) values (101,'1',NULL,NULL,'quanxianid','5','N',NULL,NULL,NULL,NULL),(102,'2',NULL,NULL,'quanxianid','7','N',NULL,NULL,NULL,NULL),(103,'3',NULL,NULL,'quanxianid','8','N',NULL,NULL,NULL,NULL),(104,'4',NULL,NULL,'quanxianid','9','N',NULL,NULL,NULL,NULL),(105,'5',NULL,NULL,'quanxianid','10','N',NULL,NULL,NULL,NULL),(10003,'1',NULL,NULL,'withdrawStatus','申请中','N',NULL,NULL,NULL,NULL),(10004,'2',NULL,NULL,'withdrawStatus','审核成功','N',NULL,NULL,NULL,NULL),(10005,'3',NULL,NULL,'withdrawStatus','审核拒绝','N',NULL,NULL,NULL,NULL),(10006,'profit','分润',NULL,'orderPrefix','PRO','N',NULL,NULL,NULL,NULL),(10007,'withdrawl','提现',NULL,'orderPrefix','TX','N',NULL,NULL,NULL,NULL),(10012,'99',NULL,NULL,'maxLevel','会员最大级别','N',NULL,NULL,NULL,NULL),(10013,'A',NULL,NULL,'disUserRank','青铜','N',NULL,NULL,NULL,NULL),(10014,'B',NULL,NULL,'disUserRank','黄金','N',NULL,NULL,NULL,NULL),(10015,'C',NULL,NULL,'disUserRank','铂金','N',NULL,NULL,NULL,NULL),(10016,'D',NULL,NULL,'disUserRank','钻石','N',NULL,NULL,NULL,NULL),(10024,'0','trade',NULL,'eventType','商品交易','N',NULL,NULL,NULL,NULL),(10025,'1','level',NULL,'eventType','升级','N',NULL,NULL,NULL,NULL),(10026,'2','invation',NULL,'eventType','邀请会员','N',NULL,NULL,NULL,NULL),(10029,'1000','单位为天，备用数据',NULL,'effectiveTime','积分有效时间','N',NULL,NULL,NULL,NULL),(10030,'Y',NULL,NULL,'isTotalIntegral','是否按照总积分计算','N',NULL,NULL,NULL,NULL),(10037,'0','即总金额*百分之比',NULL,'calModel','百分比','N',NULL,NULL,NULL,NULL),(10038,'1','固定金额',NULL,'calModel','固定金额','N',NULL,NULL,NULL,NULL),(10039,'0',NULL,NULL,'disRankLevel','自身','N',NULL,NULL,NULL,NULL),(10040,'1',NULL,NULL,'disRankLevel','一级','N',NULL,NULL,NULL,NULL),(10041,'2',NULL,NULL,'disRankLevel','二级','N',NULL,NULL,NULL,NULL),(10042,'3',NULL,NULL,'disRankLevel','三级','N',NULL,NULL,NULL,NULL),(10043,'4',NULL,NULL,'disRankLevel','四级','N',NULL,NULL,NULL,NULL),(10044,'1',NULL,NULL,'disProLevel','一级','N',NULL,NULL,NULL,NULL),(10045,'2',NULL,NULL,'disProLevel','二级','N',NULL,NULL,NULL,NULL),(10046,'3',NULL,NULL,'disProLevel','三级','N',NULL,NULL,NULL,NULL),(10047,'4',NULL,NULL,'disProLevel','四级','N',NULL,NULL,NULL,NULL),(10048,'0','trade',NULL,'accountType','交易分润','N',NULL,NULL,NULL,NULL),(10049,'1','level',NULL,'accountType','升级分润','N',NULL,NULL,NULL,NULL),(10050,'2','invite',NULL,'accountType','邀请分润','N',NULL,NULL,NULL,NULL),(10051,'N1',NULL,NULL,'agentRank','初级分销商','N',NULL,NULL,NULL,NULL),(10052,'N2',NULL,NULL,'agentRank','中级分销商','N',NULL,NULL,NULL,NULL),(10053,'N3',NULL,NULL,'agentRank','高级分销商','N',NULL,NULL,NULL,NULL),(10054,'0',NULL,NULL,'disUserType','游客','N',NULL,NULL,NULL,NULL),(10055,'1',NULL,NULL,'disUserType','经理','N',NULL,NULL,NULL,NULL),(10056,'2',NULL,NULL,'disUserType','老板','N',NULL,NULL,NULL,NULL),(10061,'0',NULL,NULL,'disUserPlatType','游客','N',NULL,NULL,NULL,NULL),(10062,'1',NULL,NULL,'disUserPlatType','经理','N',NULL,NULL,NULL,NULL),(10063,'2',NULL,NULL,'disUserPlatType','老板','N',NULL,NULL,NULL,NULL),(10064,'10000',NULL,NULL,'disUserPlatType','平台标识','N',NULL,NULL,NULL,NULL);

/*Table structure for table `sys_dic_type` */

DROP TABLE IF EXISTS `sys_dic_type`;

CREATE TABLE `sys_dic_type` (
  `dic_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `dic_type_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dic_type_no` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dic_type_notes` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dic_type_order` int(11) DEFAULT NULL,
  `system_no` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `is_delete` varchar(20) COLLATE utf8_bin DEFAULT 'N',
  `add_time` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `update_time` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`dic_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='字典表';

/*Data for the table `sys_dic_type` */

insert  into `sys_dic_type`(`dic_type_id`,`dic_type_name`,`dic_type_no`,`dic_type_notes`,`dic_type_order`,`system_no`,`is_delete`,`add_time`,`update_time`) values (42,'权限id','quanxianid',NULL,NULL,'pc','N',NULL,NULL),(44,'提现状态','withdrawStatus',NULL,NULL,'pc','N',NULL,NULL),(45,'订单前缀','orderPrefix',NULL,NULL,'pc','N',NULL,NULL),(47,'会员最大级别','maxLevel',NULL,NULL,'pc','N',NULL,NULL),(48,'段位','disUserRank',NULL,NULL,'pc','N',NULL,NULL),(52,'事件类型','eventType',NULL,NULL,'pc','N',NULL,NULL),(55,'积分有效时间','effectiveTime',NULL,NULL,'pc','N',NULL,NULL),(56,'是否按照总积分计算','isTotalIntegral',NULL,NULL,'pc','N',NULL,NULL),(59,'计算模型','calModel',NULL,NULL,'pc','N',NULL,NULL),(60,'积分等级','disRankLevel',NULL,NULL,'pc','N',NULL,NULL),(61,'用户等级','disProLevel',NULL,NULL,'pc','N',NULL,NULL),(62,'账户类型','accountType',NULL,NULL,'pc','N',NULL,NULL),(63,'代理级别','agentRank',NULL,NULL,'pc','N',NULL,NULL),(64,'用户类型','disUserType',NULL,NULL,'pc','N',NULL,NULL),(66,'用户平台类型','disUserPlatType',NULL,NULL,'pc','N',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
