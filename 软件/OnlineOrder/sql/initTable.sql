####################################################
###### 用户表							########
####################################################
CREATE TABLE if not exists `t_user`(
    `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT "自增ID",
	`userid` varchar(12)  NOT NULL DEFAULT '000000000000' COMMENT "用户ID",
	`username` varchar(20) NOT NULL DEFAULT '' COMMENT "用户名",
	`password` varchar(32) NOT NULL DEFAULT '' COMMENT "密码",
	`rank` tinyint NOT NULL DEFAULT 1 COMMENT "用户级别：1 游客， 2 普通用户， 3 高级用户， 4 特殊用户，5 管理员，6 超级管理员",
	`age` tinyint unsigned NOT NULL DEFAULT 0 COMMENT "年龄",
	`birth` date NOT NULL DEFAULT '1001:01:01' COMMENT "生日",
	`use` tinyint NOT NULL DEFAULT 1 COMMENT "iscan use: 0 cannot use, 1 can use",
	`create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "create_time",
	`update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "update_time",
	primary key(id),
	unique(userid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

####################################################
###### 用户等级表							########
####################################################
CREATE TABLE if not exists `t_rank`(
	`id` int unsigned NOT NULL AUTO_INCREMENT COMMENT "自增ID",
	`rank_id` tinyint unsigned NOT NULL DEFAULT 0 COMMENT "等级ID",
	`rank_desc` varchar(5) NOT NULL DEFAULT '' COMMENT "等级描述",
	 primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户等级表';

###################################################
#########      商户表			  #################
###################################################
DROP TABLE IF EXISTS `t_enterprise_info`;
CREATE TABLE `t_enterprise_info`(
	`id` int unsigned NOT NULL AUTO_INCREMENT COMMENT "自增ID",
	`enterprise_id` varchar(20) NOT NULL DEFAULT '00000000000000000000' COMMENT "企业ID",
	`enterprise_company_name` varchar(50) NOT NULL DEFAULT '' COMMENT "企业名称",
	`enterprise_link_man` varchar(30) NOT NULL DEFAULT '' COMMENT "企业联系人",
	`enterprise_phone_num` varchar(30) NOT NULL DEFAULT '' COMMENT "企业联系电话",
	`enterprise_address` varchar(100) NOT NULL DEFAULT '' COMMENT "企业地址",
	`enterprise_email` varchar(50) NOT NULL DEFAULT '' COMMENT "企业邮箱",
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
	primary key(id),
	unique(item_type_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜品分类表';

###################################################
########### 菜品表					###############
###################################################
DROP TABLE IF EXISTS `t_item`;
CREATE TABLE `t_item` (
	`id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
	`item_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '菜品id，同时也是商品编号',
	`item_name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜品名',
	`item_price` DECIMAL(5,2) NOT NULL DEFAULT 0.01 COMMENT '菜品价格',
	`item_pic` varchar(100) NOT NULL DEFAULT '' COMMENT '菜品配图',
	`item_enterprise` varchar(20) NOT NULL DEFAULT '00000000000000000000' COMMENT "所属企业ID",
	primary key(id),
	unique(item_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜品表';

###################################################
########### 订单表					###############
###################################################



