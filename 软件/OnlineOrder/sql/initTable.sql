################################
########创建数据库
##################################
DROP database IF EXISTS `onlineOrder`;
create database onlineOrder;
use onlineOrder;

####################################################
###### 用户表							########
####################################################
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`(
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT "自增ID",
	`user_id` varchar(20)  NOT NULL DEFAULT '00000000000000000000' COMMENT "用户ID",
	`username` varchar(20) NOT NULL DEFAULT '' COMMENT "用户名",
	`password` varchar(32) NOT NULL DEFAULT '' COMMENT "密码",
	`rank` tinyint NOT NULL DEFAULT 1 COMMENT "用户级别：1 游客， 2 普通用户， 3 高级用户， 4 特殊用户，5 管理员，6 超级管理员",
	`age` tinyint unsigned NOT NULL DEFAULT 0 COMMENT "年龄",
	`birth` date NOT NULL DEFAULT '1001:01:01' COMMENT "生日",
	`use` tinyint NOT NULL DEFAULT 1 COMMENT "iscan use: 0 cannot use, 1 can use",
	`create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "create_time",
	`update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "update_time",
	primary key(id),
	unique(user_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

####################################################
###### 用户等级表							########
####################################################
DROP TABLE IF EXISTS `t_rank`;
CREATE TABLE `t_rank`(
	`id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
	`rank_id` tinyint unsigned NOT NULL DEFAULT 0 COMMENT '等级ID',
	`rank_desc` varchar(5) NOT NULL DEFAULT '' COMMENT '等级描述',
	`create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
	 primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户等级表';

###################################################
#########      企业表			  #################
###################################################
DROP TABLE IF EXISTS `t_enterprise_info`;
CREATE TABLE `t_enterprise_info`(
	`id` int unsigned NOT NULL AUTO_INCREMENT COMMENT "自增ID",
	`enterprise_id` varchar(20) NOT NULL DEFAULT '00000000000000000000' COMMENT "企业ID",
	`enterprise_company_name` varchar(50) NOT NULL DEFAULT '' COMMENT "企业名称",
	`enterprise_link_man` varchar(30) NOT NULL DEFAULT '' COMMENT "企业联系人",
	`enterprise_phone_num` varchar(20) NOT NULL DEFAULT '' COMMENT "企业联系电话",
	`enterprise_address` varchar(100) NOT NULL DEFAULT '' COMMENT "企业地址",
	`enterprise_email` varchar(50) NOT NULL DEFAULT '' COMMENT "企业邮箱",
	`create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
	primary key(id),
	unique(enterprise_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商户表';

###################################################
#########      菜品分类表		  #################
###################################################
DROP TABLE IF EXISTS `t_item_type`;
CREATE TABLE `t_item_type`(
	`id` int unsigned NOT NULL AUTO_INCREMENT COMMENT "自增ID",
	`item_type_id` tinyint unsigned NOT NULL DEFAULT 0 COMMENT "菜品分类ID",
	`item_type_desc` varchar(8) NOT NULL DEFAULT '' COMMENT "菜品分类信息描述",
	`create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
	primary key(id),
	unique(item_type_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜品分类表';

###################################################
########### 菜品表					###############
###################################################
DROP TABLE IF EXISTS `t_item`;
CREATE TABLE `t_item` (
	`id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
	`enterprise_id` varchar(20) NOT NULL DEFAULT '00000000000000000000' COMMENT "企业ID",
	`item_id` varchar(20) NOT NULL DEFAULT '' COMMENT '菜品id，同时也是商品编号',
	`item_name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜品名',
	`item_price` DECIMAL(5,2) NOT NULL DEFAULT 0.01 COMMENT '菜品价格',
	`item_pic` varchar(300) NOT NULL DEFAULT '' COMMENT '菜品配图',
	`item_desc` varchar(600) NOT NULL DEFAULT '' COMMENT '菜品描述',
	`item_type`  tinyint unsigned NOT NULL DEFAULT 0 COMMENT '菜品所属分类',
	`create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
	primary key(id),
	unique(item_id),
	FOREIGN KEY(enterprise_id) REFERENCES `t_enterprise_info`(enterprise_id),
	FOREIGN KEY(item_type) REFERENCES `t_item_type`(item_type_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜品表';

###################################################
########### 订单表					###############
###################################################
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
	`id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
	`order_id` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '订单号码',
	`order_content` VARCHAR(100)  NOT NULL DEFAULT '' COMMENT '订单内容：填入的是商品Id,以逗号分隔',
	`order_price` DECIMAL(5,2) NOT NULL DEFAULT 0.01 COMMENT '订单价格',
	`dispatch_address` VARCHAR(100) NOT NULL DEFAULT '' COMMENT '配送地址',
	`expect_time` VARCHAR(20) NOT NULL DEFAULT '立即送达' COMMENT '期望送达时间',
	`order_status` tinyint NOT NULL DEFAULT -1  COMMENT '订单状态：-1 默认，0 准备中，1 派送中，2 已完成',
	`create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '订单创建时间',
	`update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '订单修改时间',
	primary key(id),
	unique(order_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

###################################################
########### 用户与订单关系表					###############
###################################################
DROP TABLE IF EXISTS `t_user_and_order_relation`;
CREATE TABLE `t_user_and_order_relation` (
	`id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
	`user_id` varchar(20)  NOT NULL DEFAULT '00000000000000000000' COMMENT "用户ID",
	`order_id` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '订单号码',
	`create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
	primary key(id),
  FOREIGN KEY(user_id) REFERENCES `t_user`(user_id),
  FOREIGN KEY(order_id) REFERENCES `t_order`(order_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与订单关系表';




