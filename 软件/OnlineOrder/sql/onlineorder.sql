/*
 Navicat MySQL Data Transfer

 Source Server         : onlineOrder
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : onlineorder

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 11/02/2019 22:35:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_enter_info_for_dispatch
-- ----------------------------
DROP TABLE IF EXISTS `t_enter_info_for_dispatch`;
CREATE TABLE `t_enter_info_for_dispatch`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `enterprise_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '00000000000000000000' COMMENT '企业ID',
  `company_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '餐厅名称',
  `enter_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商家门面图',
  `rank` tinyint(3) UNSIGNED NOT NULL DEFAULT 5 COMMENT '餐厅评价分数 1-5分',
  `send_price` smallint(5) UNSIGNED NOT NULL DEFAULT 20 COMMENT '起送价格',
  `dispatch_price` smallint(5) UNSIGNED NOT NULL DEFAULT 3 COMMENT '配送费',
  `dispatch_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '20分钟' COMMENT '配送时间',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `enterprise_id`(`enterprise_id`) USING BTREE,
  CONSTRAINT `enterprise_id` FOREIGN KEY (`enterprise_id`) REFERENCES `t_enterprise_info` (`enterprise_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商家配送安排表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_enter_info_for_dispatch
-- ----------------------------
INSERT INTO `t_enter_info_for_dispatch` VALUES (1, '23000000000000000001', 's四川川菜馆', 'upload/cc.jpg', 3, 20, 3, '20分钟', '2018-05-16 14:18:11', '2018-05-16 19:48:32');
INSERT INTO `t_enter_info_for_dispatch` VALUES (2, '00013000000000000001', '芙蓉记成都名小吃', 'upload/c9a13f5a11c6eddb5d26a507bd5af6b336729.jpg', 4, 20, 3, '20分钟', '2018-05-16 14:18:44', '2018-05-25 13:47:03');
INSERT INTO `t_enter_info_for_dispatch` VALUES (3, '00000000015236000001', '香满苑川湘菜馆', 'upload/cc2.jpg', 4, 25, 5, '15分钟', '2018-05-25 13:40:31', '2018-05-25 13:45:07');
INSERT INTO `t_enter_info_for_dispatch` VALUES (5, '00000000000000000011', '泰熙家（印象城店）', 'upload/f81249ddff71d0491bb18dceb02acf8f38552.jpg', 4, 15, 4, '30分钟', '2018-05-28 12:45:41', '2018-05-28 12:45:41');

-- ----------------------------
-- Table structure for t_enter_info_for_user
-- ----------------------------
DROP TABLE IF EXISTS `t_enter_info_for_user`;
CREATE TABLE `t_enter_info_for_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `enterprise_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '00000000000000000000' COMMENT '企业ID',
  `company_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '餐厅名称',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '餐厅地址',
  `phone_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '餐厅电话',
  `feature_items` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '特色菜品',
  `preferential_activities` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '优惠活动',
  `parking_space` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '停车位',
  `business_hours` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '营业时间',
  `wifi` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '是否有wifi',
  `average_price` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '人均价格',
  `enter_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商家门面图',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `enterprise_id`(`enterprise_id`) USING BTREE,
  CONSTRAINT `t_enter_info_for_user_ibfk_1` FOREIGN KEY (`enterprise_id`) REFERENCES `t_enterprise_info` (`enterprise_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户展示的商家表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_enter_info_for_user
-- ----------------------------
INSERT INTO `t_enter_info_for_user` VALUES (1, '00000000000000000001', '京都川菜馆', '天安门广场北侧路边小胡同', '13800000000', '毛肚、牛丸、滑虾、羊肉、香辣虾...', '暂无信息', '4个停车位（免费）', '09:00~22:00', '免费WIFI', '50元', 'upload/cc.jpg', '2018-05-16 12:41:17', '2018-05-16 12:41:17');
INSERT INTO `t_enter_info_for_user` VALUES (5, '23000000000000000001', 's四川川菜馆', '天安门广场北侧路边小胡同', '13800000000', '毛肚、牛丸、滑虾、羊肉、香辣虾...', '暂无信息', '4个停车位（免费）', '09:00~22:00', '免费WIFI', '50元', 'upload/cc.jpg', '2018-05-16 12:49:03', '2018-05-16 12:49:03');
INSERT INTO `t_enter_info_for_user` VALUES (6, '00013000000000000001', '京都川菜馆', '天安门广场北侧路边小胡同', '13800000000', '毛肚、牛丸、滑虾、羊肉、香辣虾...', '暂无信息', '4个停车位（免费）', '09:00~22:00', '免费WIFI', '50元', 'upload/cc.jpg', '2018-05-16 12:49:03', '2018-05-16 12:49:03');

-- ----------------------------
-- Table structure for t_enterprise_info
-- ----------------------------
DROP TABLE IF EXISTS `t_enterprise_info`;
CREATE TABLE `t_enterprise_info`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `enterprise_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '00000000000000000000' COMMENT '企业ID',
  `enterprise_company_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '企业名称',
  `enterprise_link_man` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '企业联系人',
  `enterprise_phone_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '企业联系电话',
  `enterprise_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '企业地址',
  `enterprise_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '企业邮箱',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `enterprise_id`(`enterprise_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_enterprise_info
-- ----------------------------
INSERT INTO `t_enterprise_info` VALUES (2, '00000000000000000001', '京都川菜馆', 'abcd', '13800000000', '天安门广场北侧路边小胡同', '12345679@163.com', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_enterprise_info` VALUES (3, '00013000000000000001', '芙蓉记成都名小吃', 'abcd', '13800000000', '天安门广场北侧路边小胡同', '12345679@163.com', '2018-04-21 20:17:27', '2018-05-25 13:47:17');
INSERT INTO `t_enterprise_info` VALUES (4, '23000000000000000001', 's四川川菜馆', 'rose', '13800000000', '天安门广场北侧路边小胡同', '12345679@163.com', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_enterprise_info` VALUES (5, '01234000000000000001', '天津狗不理', 'jack', '13800000000', '天安门广场北侧路边小胡同', '12345679@163.com', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_enterprise_info` VALUES (6, '01234567000000000001', '北京烤鸭店', 'jion', '13800000000', '天安门广场北侧路边小胡同', '12345679@163.com', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_enterprise_info` VALUES (7, '00000000000232323001', '南京驴肉火烧', 'da.shan', '13800000000', '天安门广场北侧路边小胡同', '12345679@163.com', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_enterprise_info` VALUES (8, '00000000015236000001', '香满苑川湘菜馆', 'max', '13800000000', '天安门广场北侧路边小胡同', '12345679@163.com', '2018-04-21 20:17:27', '2018-05-25 13:45:16');
INSERT INTO `t_enterprise_info` VALUES (9, '00052100000000000001', '山西刀削面', 'banana', '13800000000', '天安门广场北侧路边小胡同', '12345679@163.com', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_enterprise_info` VALUES (10, '14500000000000000001', '湖南烧刀子', 'potato', '13800000000', '天安门广场北侧路边小胡同', '12345679@163.com', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_enterprise_info` VALUES (11, '00000000000000000011', '泰熙家（印象城店）', 'ABCdef', '13800000000', '西安市龙首原北路印象城店', '12345679@163.com', '2018-05-28 12:44:25', '2018-05-28 12:45:39');

-- ----------------------------
-- Table structure for t_item
-- ----------------------------
DROP TABLE IF EXISTS `t_item`;
CREATE TABLE `t_item`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `enterprise_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '00000000000000000000' COMMENT '企业ID',
  `item_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '菜品id，同时也是商品编号',
  `item_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '菜品名',
  `item_price` decimal(5, 2) NOT NULL DEFAULT 0.01 COMMENT '菜品价格',
  `item_pic` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '菜品配图',
  `item_desc` varchar(600) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '菜品描述',
  `item_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '菜品所属分类',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `item_id`(`item_id`) USING BTREE,
  INDEX `enterprise_id`(`enterprise_id`) USING BTREE,
  INDEX `item_type`(`item_type`) USING BTREE,
  CONSTRAINT `t_item_ibfk_1` FOREIGN KEY (`enterprise_id`) REFERENCES `t_enterprise_info` (`enterprise_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_item_ibfk_2` FOREIGN KEY (`item_type`) REFERENCES `t_item_type` (`item_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_item
-- ----------------------------
INSERT INTO `t_item` VALUES (9, '00013000000000000001', '00000000000000000001', '鱼香肉丝', 59.00, 'http://site.meishij.net/r/41/203/113291/s113291_142060269205572.jpg', '鱼香肉丝是一道人人喜欢的家常菜，有些厨房新手做出的味道总是没有饭店的好吃，不过不要紧，现在超市有卖鱼香肉丝的调料包了。只用一包调料就可以做出一道美味经典的川菜，厨房新手们不妨试试哟', 2, '2018-04-21 20:20:50', '2018-05-02 17:50:31');
INSERT INTO `t_item` VALUES (10, '00013000000000000001', '00000000000000000011', '糖醋排骨111', 23.00, 'https://i8.meishichina.com/attachment/recipe/201009/201009081533069.JPG@!p800', '糖醋排骨（Sweet and Sour Spare Ribs），是糖醋味型中具有代表性的一道大众喜爱的特色传统名菜。它选用新鲜猪子排作主料，肉质鲜嫩，成莱色泽红亮油润', 2, '2018-04-21 20:20:50', '2018-05-21 16:00:08');
INSERT INTO `t_item` VALUES (11, '00013000000000000001', '00000000000000000021', '黄焖鸡翅', 31.50, 'https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike116%2C5%2C5%2C116%2C38/sign=621af1919aef76c6c4dff379fc7f969f/9358d109b3de9c82569fda3f6681800a18d84383.jpg', '黄焖鸡翅是中原豫菜系，由鸡翅为主要食材做成的一道菜品，属于家常菜。该菜肉质鲜美，色香味具全，对于保持皮肤光泽、增强皮肤弹性均有好处。一般人群均可食用，老人、病人、体弱者更宜食用', 2, '2018-04-21 20:20:50', '2018-04-21 22:29:22');
INSERT INTO `t_item` VALUES (12, '00013000000000000001', '00000000000000000031', '红烧冬瓜球', 14.50, 'https://gss2.bdstatic.com/-fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike92%2C5%2C5%2C92%2C30/sign=75ed194fceea15ce55e3e85bd7695196/7e3e6709c93d70cf4d11ddc7ffdcd100bba12b14.jpg', '红烧冬瓜球是一道由冬瓜等食材制成的食品', 2, '2018-04-21 20:20:50', '2018-04-21 22:29:42');
INSERT INTO `t_item` VALUES (13, '23000000000000000001', '00000000000000000041', '红烧肉', 30.00, 'https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike116%2C5%2C5%2C116%2C38/sign=52a01280d939b60059c307e588395e4f/77094b36acaf2edde4a2588a811001e939019305.jpg', '红烧肉是一道著名的大众菜肴，属于热菜。其以五花肉为制作主料，最好选用肥瘦相间的三层肉（五花肉）来做，做法多达二三十种。红烧肉的烹饪技巧以砂锅为主，肥瘦相间，香甜松软，入口即化。红烧肉在我国各地流传甚广，具有一定的营养价值', 2, '2018-04-21 20:20:50', '2018-04-21 22:29:52');
INSERT INTO `t_item` VALUES (14, '23000000000000000001', '00000000000000000051', '可乐鸡翅', 40.00, '/upload/kelejichi.jpg', '可乐鸡翅是一道以鸡翅和可乐为主料，以料酒、葱、姜、酱油、盐、鸡精作为调料制作而成的美食。可乐鸡翅具有味道鲜美、色泽艳丽、鸡肉嫩滑、咸甜适中的特点。 [1] 一般人群均可食用。不适合感冒发热、内火偏旺、痰湿偏重之人；患有热毒疖肿、高血压、血脂偏高、胆囊炎、胆石症患者忌食', 2, '2018-04-21 20:20:50', '2018-05-17 13:20:40');
INSERT INTO `t_item` VALUES (15, '23000000000000000001', '00000000000000000061', '北京烤鸭', 90.00, 'https://gss1.bdstatic.com/9vo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike80%2C5%2C5%2C80%2C26/sign=a7828fb83987e950561afb3e71513826/738b4710b912c8fcd24c76b6ff039245d6882109.jpg', '烤鸭是具有世界声誉的北京著名菜式，起源于中国南北朝时期，《食珍录》中已记有炙鸭，在当时是宫廷食品。用料为优质肉食鸭北京鸭，果木炭火烤制，色泽红润，肉质肥而不腻，外脆里嫩。北京烤鸭分为两大流派，而北京最著名的烤鸭店也即是两派的代表。它以色泽红艳，肉质细嫩，味道醇厚，肥而不腻的特色，被誉为“天下美味”', 2, '2018-04-21 20:20:50', '2018-04-21 22:30:05');
INSERT INTO `t_item` VALUES (16, '23000000000000000001', '00000000000000000071', '耗油虾球', 45.00, 'https://gss0.bdstatic.com/-4o3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike72%2C5%2C5%2C72%2C24/sign=60230fd9a4c27d1eb12b33967abcc60b/4e4a20a4462309f7244e106f720e0cf3d7cad6ae.jpg', '蚝油虾仁是一道以虾仁、蚝油、生抽等为主要食材制作的美食', 2, '2018-04-21 20:20:50', '2018-04-21 22:56:51');
INSERT INTO `t_item` VALUES (17, '00013000000000000001', '00000000000000000100', '糖醋排骨2', 23.00, 'https://i8.meishichina.com/attachment/recipe/201009/201009081533069.JPG@!p800', '糖醋排骨（Sweet and Sour Spare Ribs），是糖醋味型中具有代表性的一道大众喜爱的特色传统名菜。它选用新鲜猪子排作主料，肉质鲜嫩，成莱色泽红亮油润', 2, '2018-05-21 14:14:44', '2018-05-21 14:14:44');
INSERT INTO `t_item` VALUES (18, '00013000000000000001', '00000000000000000101', '糖醋排骨3', 23.00, 'https://i8.meishichina.com/attachment/recipe/201009/201009081533069.JPG@!p800', '糖醋排骨（Sweet and Sour Spare Ribs），是糖醋味型中具有代表性的一道大众喜爱的特色传统名菜。它选用新鲜猪子排作主料，肉质鲜嫩，成莱色泽红亮油润', 2, '2018-05-21 14:14:52', '2018-05-21 14:14:52');
INSERT INTO `t_item` VALUES (19, '00013000000000000001', '00000000000000000102', '糖醋排骨4', 23.00, 'https://i8.meishichina.com/attachment/recipe/201009/201009081533069.JPG@!p800', '糖醋排骨（Sweet and Sour Spare Ribs），是糖醋味型中具有代表性的一道大众喜爱的特色传统名菜。它选用新鲜猪子排作主料，肉质鲜嫩，成莱色泽红亮油润', 2, '2018-05-21 14:14:58', '2018-05-21 14:14:58');
INSERT INTO `t_item` VALUES (20, '00013000000000000001', '999623999023509504', '卤蛋', 3.00, '/upload/999623972716834816.jpg', '卤蛋（Marinated Egg），又名卤水蛋。是用各种调料或肉汁加工成的熟制蛋。卤蛋是熟食店经营禽蛋品中的一个大众化食品，普遍受到人民的欢迎', 14, '2018-05-24 20:11:48', '2018-05-24 20:11:48');
INSERT INTO `t_item` VALUES (21, '00013000000000000001', '999987942019571712', 'ABCD', 12.00, '/upload/999987910482599936.jpg', 'ABCDABCDABCD', 2, '2018-05-25 20:17:58', '2018-05-25 20:17:58');
INSERT INTO `t_item` VALUES (22, '00013000000000000001', '1004631224481812480', 'asd', 23.00, '/upload/1004631164222246912.png', 'asdasdssadasdsadda', 13, '2018-06-07 15:48:43', '2018-06-07 15:48:43');

-- ----------------------------
-- Table structure for t_item_type
-- ----------------------------
DROP TABLE IF EXISTS `t_item_type`;
CREATE TABLE `t_item_type`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `item_type_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '菜品分类ID',
  `item_type_desc` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '菜品分类信息描述',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `item_type_id`(`item_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_item_type
-- ----------------------------
INSERT INTO `t_item_type` VALUES (1, 1, '热菜', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_item_type` VALUES (2, 2, '凉菜', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_item_type` VALUES (3, 3, '汤羹', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_item_type` VALUES (4, 4, '主食', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_item_type` VALUES (5, 5, '小吃', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_item_type` VALUES (6, 6, '家常菜', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_item_type` VALUES (7, 7, '跑酱腌菜', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_item_type` VALUES (8, 8, '西餐', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_item_type` VALUES (9, 9, '烘焙', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_item_type` VALUES (10, 10, '烤箱菜', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_item_type` VALUES (11, 11, '饮品', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_item_type` VALUES (12, 12, '零食', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_item_type` VALUES (13, 13, '火锅', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_item_type` VALUES (14, 14, '自制食材', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_item_type` VALUES (15, 15, '海鲜', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_item_type` VALUES (16, 16, '宴客菜', '2018-04-21 20:17:27', '2018-04-21 20:17:27');

-- ----------------------------
-- Table structure for t_leave_words_for_order
-- ----------------------------
DROP TABLE IF EXISTS `t_leave_words_for_order`;
CREATE TABLE `t_leave_words_for_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '00000000000000000000' COMMENT '用户ID',
  `order_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单号码',
  `leave_words` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户留言',
  `reply` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '店家回复',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE,
  CONSTRAINT `t_leave_words_for_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与订单关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_leave_words_for_order
-- ----------------------------
INSERT INTO `t_leave_words_for_order` VALUES (1, '00000000000000000002', '9951401106033008', '少放醋', '', '2018-05-12 11:14:25', '2018-05-12 11:14:25');
INSERT INTO `t_leave_words_for_order` VALUES (2, '00000000000000000001', '9952186798535557', '多加米饭', '', '2018-05-12 16:26:38', '2018-05-12 16:26:38');
INSERT INTO `t_leave_words_for_order` VALUES (3, '00000000000000000001', '9958836737210327', '黄焖鸡翅', '', '2018-05-14 12:29:05', '2018-05-14 12:29:05');
INSERT INTO `t_leave_words_for_order` VALUES (4, '00000000000000000001', '9999123189534064', '多加米饭', '', '2018-05-25 15:17:29', '2018-05-25 15:17:29');
INSERT INTO `t_leave_words_for_order` VALUES (5, '00000000000000000001', '9999124738951905', '多加米饭', '', '2018-05-25 15:18:06', '2018-05-25 15:18:06');
INSERT INTO `t_leave_words_for_order` VALUES (6, '00000000000000000001', '9999715190419046', '多加米饭', '好的米饭一元', '2018-05-25 19:12:43', '2018-06-11 19:37:34');
INSERT INTO `t_leave_words_for_order` VALUES (7, '1000926087607246848', '1001070471527067', '多加米饭，少放醋', '', '2018-05-28 19:59:34', '2018-05-28 19:59:34');
INSERT INTO `t_leave_words_for_order` VALUES (8, '00000000000000000001', '1004347245027590', '多加米饭', '', '2018-06-06 21:00:17', '2018-06-06 21:00:17');
INSERT INTO `t_leave_words_for_order` VALUES (9, '00000000000000000001', '1004348136522747', '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈', '', '2018-06-06 21:03:50', '2018-06-06 21:03:50');
INSERT INTO `t_leave_words_for_order` VALUES (10, '00000000000000000001', '1004358140881285', '挺好的', '', '2018-06-06 21:43:35', '2018-06-06 21:43:35');
INSERT INTO `t_leave_words_for_order` VALUES (11, '00000000000000000001', '1004358141917278', '挺好的', '', '2018-06-06 21:43:35', '2018-06-06 21:43:35');
INSERT INTO `t_leave_words_for_order` VALUES (12, '1004625596958920704', '1004627722619604', '', '', '2018-06-07 15:34:48', '2018-06-07 15:34:48');
INSERT INTO `t_leave_words_for_order` VALUES (13, '00000000000000000002', '1006153232524816', '让我们干了这杯酒', '好的，来干！！！', '2018-06-11 20:36:38', '2018-06-11 20:38:01');
INSERT INTO `t_leave_words_for_order` VALUES (14, '1004625596958920704', '1006466660216893', '', '', '2018-06-12 17:22:05', '2018-06-12 17:22:05');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `order_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单号码',
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  `order_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单内容：填入的是商品Id,数量,以逗号分隔,每个商品之间以分号分隔',
  `order_price` decimal(5, 2) NOT NULL DEFAULT 0.01 COMMENT '订单价格',
  `dispatch_address` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT '配送地址编号',
  `expect_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '立即送达' COMMENT '期望送达时间',
  `order_status` tinyint(4) NOT NULL DEFAULT -1 COMMENT '订单状态：-1 默认，0 准备中，1 派送中，2 已完成，3 已评价',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '订单修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_id`(`order_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (1, '0000000000000001', '00000000000000000001', '9,1;10,2;', 123.99, 0000000003, '立即送达', 2, '2018-05-09 08:39:36', '2018-05-25 16:56:27');
INSERT INTO `t_order` VALUES (14, '0000000000000005', '00000000000000000001', '12,1;14,2;', 94.50, 0000000003, '立即送达', 2, '2018-05-09 13:38:55', '2018-05-09 16:23:15');
INSERT INTO `t_order` VALUES (16, '0000000000000003', '00000000000000000003', '14,1;15,2;', 123.99, 0000000003, '立即送达', 2, '2018-05-09 13:38:55', '2018-05-21 15:01:30');
INSERT INTO `t_order` VALUES (17, '0000000000000004', '00000000000000000004', '15,1;16,2;', 123.99, 0000000003, '立即送达', 2, '2018-05-09 13:38:55', '2018-05-09 16:20:34');
INSERT INTO `t_order` VALUES (21, '9951401106033008', '00000000000000000002', '10,2;', 52.00, 0000000004, '立即送达', 3, '2018-05-12 11:14:25', '2018-06-11 17:24:50');
INSERT INTO `t_order` VALUES (22, '9952186798535557', '00000000000000000001', '11,1;', 37.50, 0000000001, '立即送达', 2, '2018-05-12 16:26:38', '2018-05-21 15:02:16');
INSERT INTO `t_order` VALUES (25, '9999124738951905', '00000000000000000001', '13,1;', 36.00, 0000000003, '立即送达', 2, '2018-05-25 15:18:05', '2018-05-25 16:59:06');
INSERT INTO `t_order` VALUES (26, '9999715190419046', '00000000000000000001', '13,1;14,1;', 46.00, 0000000002, '立即送达', 0, '2018-05-25 19:12:43', '2018-05-25 19:12:43');
INSERT INTO `t_order` VALUES (27, '1001070471527067', '1000926087607246848', '13,1;14,1;', 73.00, 0000000009, '立即送达', 0, '2018-05-28 19:59:34', '2018-05-28 19:59:34');
INSERT INTO `t_order` VALUES (28, '1004347245027590', '00000000000000000001', '10,1;', 26.00, 0000000003, '立即送达', 0, '2018-06-06 21:00:17', '2018-06-06 21:00:17');
INSERT INTO `t_order` VALUES (29, '1004348136522747', '00000000000000000001', '10,1;', 26.00, 0000000003, '立即送达', 0, '2018-06-06 21:03:50', '2018-06-06 21:03:50');
INSERT INTO `t_order` VALUES (30, '1004358140881285', '00000000000000000001', '20,1;', 6.00, 0000000003, '立即送达', 0, '2018-06-06 21:43:35', '2018-06-06 21:43:35');
INSERT INTO `t_order` VALUES (31, '1004358141917278', '00000000000000000001', '20,1;', 6.00, 0000000003, '立即送达', 0, '2018-06-06 21:43:35', '2018-06-06 21:43:35');
INSERT INTO `t_order` VALUES (32, '1004627722619604', '1004625596958920704', '10,2;13,2;', 109.00, 0000000011, '立即送达', 3, '2018-06-07 15:34:48', '2018-06-11 16:53:33');
INSERT INTO `t_order` VALUES (37, '1006153232524816', '00000000000000000002', '9,1;11,2;14,1;', 165.00, 0000000012, '立即送达', 0, '2018-06-11 20:36:38', '2018-06-11 20:36:38');
INSERT INTO `t_order` VALUES (38, '1006466660216893', '1004625596958920704', '14,1;', 43.00, 0000000011, '立即送达', 0, '2018-06-12 17:22:05', '2018-06-12 17:22:05');

-- ----------------------------
-- Table structure for t_order_access
-- ----------------------------
DROP TABLE IF EXISTS `t_order_access`;
CREATE TABLE `t_order_access`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '00000000000000000000' COMMENT '用户ID',
  `item_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '所购商品ID',
  `pay_count` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所购商品数量',
  `access_words` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '评价内容',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `t_order_access_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单评价表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_access
-- ----------------------------
INSERT INTO `t_order_access` VALUES (1, '00000000000000000001', '15', 10, '很不错', '2018-05-13 16:42:29', '2018-05-14 12:39:48');
INSERT INTO `t_order_access` VALUES (3, '00000000000000000001', '11', 1, '送餐速度很快。。。', '2018-05-14 12:29:41', '2018-05-25 13:49:44');
INSERT INTO `t_order_access` VALUES (4, '1004625596958920704', '10', 2, 'ashdashdjhasjd', '2018-06-07 15:49:39', '2018-06-07 15:49:39');
INSERT INTO `t_order_access` VALUES (5, '1004625596958920704', '13', 2, 'ashdashdjhasjd', '2018-06-07 15:49:39', '2018-06-07 15:49:39');
INSERT INTO `t_order_access` VALUES (6, '1004625596958920704', '10', 2, '', '2018-06-07 15:51:43', '2018-06-07 15:51:43');
INSERT INTO `t_order_access` VALUES (7, '1004625596958920704', '13', 2, '', '2018-06-07 15:51:43', '2018-06-07 15:51:43');
INSERT INTO `t_order_access` VALUES (8, '1004625596958920704', '10', 2, '还真是不错哦', '2018-06-11 16:09:46', '2018-06-11 16:09:46');
INSERT INTO `t_order_access` VALUES (9, '1004625596958920704', '13', 2, '还真是不错哦', '2018-06-11 16:09:46', '2018-06-11 16:09:46');
INSERT INTO `t_order_access` VALUES (10, '1004625596958920704', '10', 2, '阿萨德', '2018-06-11 16:11:48', '2018-06-11 16:11:48');
INSERT INTO `t_order_access` VALUES (11, '1004625596958920704', '13', 2, '阿萨德', '2018-06-11 16:11:48', '2018-06-11 16:11:48');
INSERT INTO `t_order_access` VALUES (12, '1004625596958920704', '10', 2, 'dsa', '2018-06-11 16:19:20', '2018-06-11 16:19:20');
INSERT INTO `t_order_access` VALUES (13, '1004625596958920704', '13', 2, 'dsa', '2018-06-11 16:19:20', '2018-06-11 16:19:20');
INSERT INTO `t_order_access` VALUES (14, '1004625596958920704', '10', 2, '大青蛙多大叔大婶', '2018-06-11 16:22:00', '2018-06-11 16:22:00');
INSERT INTO `t_order_access` VALUES (15, '1004625596958920704', '13', 2, '大青蛙多大叔大婶', '2018-06-11 16:22:00', '2018-06-11 16:22:00');
INSERT INTO `t_order_access` VALUES (16, '1004625596958920704', '10', 2, '来看看是否生效啦', '2018-06-11 16:53:33', '2018-06-11 16:53:33');
INSERT INTO `t_order_access` VALUES (17, '1004625596958920704', '13', 2, '来看看是否生效啦', '2018-06-11 16:53:33', '2018-06-11 16:53:33');
INSERT INTO `t_order_access` VALUES (18, '00000000000000000002', '10', 2, '不错不错哦，再接再厉', '2018-06-11 17:24:50', '2018-06-11 17:24:50');

-- ----------------------------
-- Table structure for t_rank
-- ----------------------------
DROP TABLE IF EXISTS `t_rank`;
CREATE TABLE `t_rank`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `rank_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '等级ID',
  `rank_desc` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '等级描述',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rank_id`(`rank_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户等级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_rank
-- ----------------------------
INSERT INTO `t_rank` VALUES (1, 1, '游客', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_rank` VALUES (2, 2, '普通用户', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_rank` VALUES (3, 3, '高级用户', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_rank` VALUES (4, 4, '特殊用户', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_rank` VALUES (5, 5, '管理员', '2018-04-21 20:17:27', '2018-04-21 20:17:27');
INSERT INTO `t_rank` VALUES (6, 6, '超级管理员', '2018-04-21 20:17:27', '2018-04-21 20:17:27');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '00000000000000000000' COMMENT '用户ID',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `rank` tinyint(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '用户级别：1 游客， 2 普通用户， 3 高级用户， 4 特殊用户，5 管理员，6 超级管理员',
  `birth` date NOT NULL DEFAULT '1001-01-01' COMMENT '生日',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `phone_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电话',
  `used` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'iscan use: 0 cannot use, 1 can use',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create_time',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT 'update_time',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `rank`(`rank`) USING BTREE,
  CONSTRAINT `t_user_ibfk_1` FOREIGN KEY (`rank`) REFERENCES `t_rank` (`rank_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (2, '00000000000000000001', '张三', '111111', 5, '1998-02-04', '2582366776@qq.com', '18792470504', 1, '2018-05-07 13:55:12', '2018-05-08 11:01:42');
INSERT INTO `t_user` VALUES (3, '00000000000000000002', '李四', '444444', 5, '1998-02-04', '2582366776@qq.com', '18792470504', 1, '2018-05-07 13:55:12', '2018-05-08 11:01:43');
INSERT INTO `t_user` VALUES (4, '00000000000000000003', '王五', '555555', 5, '1998-02-04', '2582366776@qq.com', '18792470504', 1, '2018-05-07 13:55:12', '2018-05-08 11:01:44');
INSERT INTO `t_user` VALUES (5, '00000000000000000004', '赵六', '666666', 5, '1998-02-04', '2582366776@qq.com', '18792470504', 1, '2018-05-07 13:55:12', '2018-05-08 11:01:46');
INSERT INTO `t_user` VALUES (6, '00000000000000000005', '孙七', '777777', 5, '1998-02-04', '2582366776@qq.com', '18792470504', 1, '2018-05-07 13:55:12', '2018-05-08 11:01:47');
INSERT INTO `t_user` VALUES (7, '00000000000000000006', '周八', '888888', 5, '1998-02-04', '2582366776@qq.com', '18792470504', 1, '2018-05-07 13:55:12', '2018-05-08 11:01:48');
INSERT INTO `t_user` VALUES (8, '00000000000000000007', '吴九', '999999', 5, '1998-02-04', '2582366776@qq.com', '18792470504', 1, '2018-05-07 13:55:12', '2018-05-08 11:01:50');
INSERT INTO `t_user` VALUES (9, '00000000000000000008', '郑十', '101010', 5, '1998-02-04', '2582366776@qq.com', '18792470504', 1, '2018-05-07 13:55:12', '2018-05-08 11:01:54');
INSERT INTO `t_user` VALUES (10, '997038670068420608', '哈哈', '123', 2, '1001-01-01', '123@qq.com', '12345678910', 1, '2018-05-17 16:58:37', '2018-05-17 16:58:37');
INSERT INTO `t_user` VALUES (11, '1000926087607246848', '201406060128', '123', 2, '1001-01-01', '2582366776@qq.com', '12345678910', 1, '2018-05-28 10:25:50', '2018-05-28 10:25:50');
INSERT INTO `t_user` VALUES (12, '1000928278720045056', '201406060128', '123', 2, '1001-01-01', '2582366776@qq.com', '12345678910', 1, '2018-05-28 10:34:32', '2018-05-28 10:34:32');
INSERT INTO `t_user` VALUES (13, '1000942938643070976', '201406060127', '123', 2, '1001-01-01', '2582366777@qq.com', '12345678910', 1, '2018-05-28 11:32:47', '2018-05-28 11:32:47');
INSERT INTO `t_user` VALUES (14, '1000943263395446784', '201406060126', '123', 2, '1001-01-01', '2582366778@qq.com', '12345678910', 1, '2018-05-28 11:34:05', '2018-05-28 11:34:05');
INSERT INTO `t_user` VALUES (15, '1004625596958920704', '123', '123', 2, '1001-01-01', '23@qq.com', '12312312312', 1, '2018-06-07 15:26:22', '2018-06-07 15:26:22');

-- ----------------------------
-- Table structure for t_user_address
-- ----------------------------
DROP TABLE IF EXISTS `t_user_address`;
CREATE TABLE `t_user_address`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '00000000000000000000' COMMENT '用户ID',
  `province` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'XX省',
  `city` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'XX市',
  `district` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'XX区/县',
  `post_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮政编码',
  `detail_addr` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '详细地址',
  `consignee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人',
  `phone_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人手机号码',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `t_user_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_address
-- ----------------------------
INSERT INTO `t_user_address` VALUES (1, '00000000000000000001', '浙江省', '杭州市', '余杭区', '456456', '航海路1588号', '孙先生收', '183092***73', '2018-05-07 13:57:20', '2018-05-07 13:57:20');
INSERT INTO `t_user_address` VALUES (2, '00000000000000000001', '浙江省', '杭州市', '余杭区', '456456', '航海路1588号', '孙先生收', '183092***73', '2018-05-07 14:03:28', '2018-05-07 14:03:28');
INSERT INTO `t_user_address` VALUES (3, '00000000000000000001', '浙江省', '宁波市', 'A区', '456456', 'bcd路1234号', '李先生', '183092***73', '2018-05-07 14:03:28', '2018-05-07 14:03:28');
INSERT INTO `t_user_address` VALUES (4, '00000000000000000002', '山东省', '杭州市', '余杭区', '456456', '航海路1588号', '王先生', '183092***73', '2018-05-07 14:03:28', '2018-05-07 14:03:28');
INSERT INTO `t_user_address` VALUES (5, '00000000000000000003', '江西省', '杭州市', '余杭区', '456456', '航海路1588号', '赵先生', '183092***73', '2018-05-07 14:03:28', '2018-05-07 14:03:28');
INSERT INTO `t_user_address` VALUES (6, '00000000000000000004', '浙吉林省', '杭州市', '余杭区', '456456', '航海路1588号', '孙先生', '183092***73', '2018-05-07 14:03:28', '2018-05-07 14:03:28');
INSERT INTO `t_user_address` VALUES (7, '00000000000000000005', '陕西省', '西安市', '未央区', '725021', '草滩镇陕西科技大学', '周先生', '158092***73', '2018-05-07 14:03:28', '2018-05-07 14:03:28');
INSERT INTO `t_user_address` VALUES (8, '00000000000000000005', '陕西省', '安康市', '汉滨区', '725022', ' 恒口镇66号', '吴先生', '150092***73', '2018-05-07 14:03:28', '2018-05-07 14:03:28');
INSERT INTO `t_user_address` VALUES (9, '1000926087607246848', '陕西省', '西安市', '雁塔区', '721000', '东南西北街124号', '哈哈哈', '12312312312', '2018-05-28 19:59:06', '2018-05-28 19:59:06');
INSERT INTO `t_user_address` VALUES (10, '1004625596958920704', '陕西省', '西安市', '雁塔区', '721000', '东南西北街124号', '哈哈哈', '12312312312', '2018-06-07 15:31:54', '2018-06-07 15:31:54');
INSERT INTO `t_user_address` VALUES (11, '1004625596958920704', '陕西省', '西安市', '雁塔区', '725000', '', 'fg', '12345678911', '2018-06-07 15:33:06', '2018-06-07 15:33:06');
INSERT INTO `t_user_address` VALUES (12, '00000000000000000002', '陕西省', '西安市', '临潼区', '721000', '东南西北街123215号', '不知道', '16789090987', '2018-06-11 20:33:11', '2018-06-11 20:33:11');

-- ----------------------------
-- Table structure for t_user_and_order_relation
-- ----------------------------
DROP TABLE IF EXISTS `t_user_and_order_relation`;
CREATE TABLE `t_user_and_order_relation`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '00000000000000000000' COMMENT '用户ID',
  `order_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单号码',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE,
  CONSTRAINT `t_user_and_order_relation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_user_and_order_relation_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与订单关系表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
