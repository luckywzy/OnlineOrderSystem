###################################################
#########      用户数据			  #################
###################################################
INSERT INTO `onlineorder`.`t_user`(`user_id`, `username`, `password`, `rank`, `birth`, `email`,`phone_num`,`used`)
  VALUES ('00000000000000000001', '张三', '111111', 5, 20, '1998-02-04','2582366776@qq.com','18792470504', 1),
  ('00000000000000000002', '李四', '444444', 5, 20, '1998-02-04','2582366776@qq.com','18792470504', 1),
  ('00000000000000000003', '王五', '555555', 5, 20, '1998-02-04','2582366776@qq.com','18792470504', 1),
  ('00000000000000000004', '赵六', '666666', 5, 20, '1998-02-04','2582366776@qq.com','18792470504', 1),
  ('00000000000000000005', '孙七', '777777', 5, 20, '1998-02-04','2582366776@qq.com','18792470504', 1),
  ('00000000000000000006', '周八', '888888', 5, 20, '1998-02-04','2582366776@qq.com','18792470504', 1),
  ('00000000000000000007', '吴九', '999999', 5, 20, '1998-02-04','2582366776@qq.com','18792470504', 1),
  ('00000000000000000008', '郑十', '101010', 5, 20, '1998-02-04','2582366776@qq.com','18792470504', 1);

###################################################
#########      用户地址数据			  #################
###################################################
INSERT INTO `onlineorder`.`t_user_address`(`user_id`, `province`, `city`, `district`, `post_code`, `detail_addr`, `consignee`, `phone_num`)
  VALUES ('00000000000000000001', '浙江省', '杭州市', '余杭区', '456456', '航海路1588号', '孙先生收', '183092***73'),
  ('00000000000000000001', '浙江省', '宁波市', 'A区', '456456', 'bcd路1234号', '李先生', '183092***73'),
  ('00000000000000000002', '山东省', '杭州市', '余杭区', '456456', '航海路1588号', '王先生', '183092***73'),
  ('00000000000000000003', '江西省', '杭州市', '余杭区', '456456', '航海路1588号', '赵先生', '183092***73'),
  ('00000000000000000004', '浙吉林省', '杭州市', '余杭区', '456456', '航海路1588号', '孙先生', '183092***73'),
  ('00000000000000000005', '陕西省', '西安市', '未央区', '725021', '草滩镇陕西科技大学', '周先生', '158092***73'),
  ('00000000000000000005', '陕西省', '安康市', '汉滨区', '725022', ' 恒口镇66号', '吴先生', '150092***73');


###################################################
#########      用户订单数据			  #################
###################################################
INSERT INTO `onlineorder`.`t_order`(`order_id`, `user_id`, `order_content`, `order_price`, `dispatch_address`, `expect_time`, `order_status`)
  VALUES ('0000000000000001', '00000000000000000001', '2,1;4,2;', 123.99, 0000000003, '立即送达', 2),
  ('0000000000000002', '00000000000000000001', '3,1;4,2;', 123.99, 0000000003, '立即送达', 0),
  ('0000000000000003', '00000000000000000003', '4,1;5,2;', 123.99, 0000000003, '立即送达', 1),
  ('0000000000000004', '00000000000000000004', '5,1;6,2;', 123.99, 0000000003, '立即送达', 2);










###################################################
#########      等级数据			  #################
###################################################
insert into `t_rank`(id,rank_id,rank_desc) values(1,1,'游客'),
						(2,2,'普通用户'),
						(3,3,'高级用户'),
						(4,4,'特殊用户'),
						(5,5,'管理员'),
						(6,6,'超级管理员');


###################################################
#########      企业表数据			  #################
###################################################
insert into `t_enterprise_info`(id,enterprise_id,enterprise_company_name,enterprise_link_man,enterprise_phone_num,
  enterprise_address,enterprise_email) values
  (2,'00000000000000000001','京都川菜馆','abcd','13800000000','天安门广场北侧路边小胡同','12345679@163.com'),
  (3,'00013000000000000001','京都川菜馆','abcd','13800000000','天安门广场北侧路边小胡同','12345679@163.com'),
  (4,'23000000000000000001','s四川川菜馆','rose','13800000000','天安门广场北侧路边小胡同','12345679@163.com'),
  (5,'01234000000000000001','天津狗不理','jack','13800000000','天安门广场北侧路边小胡同','12345679@163.com'),
  (6,'01234567000000000001','北京烤鸭店','jion','13800000000','天安门广场北侧路边小胡同','12345679@163.com'),
  (7,'00000000000232323001','南京驴肉火烧','da.shan','13800000000','天安门广场北侧路边小胡同','12345679@163.com'),
  (8,'00000000015236000001','陕西家乡菜','max','13800000000','天安门广场北侧路边小胡同','12345679@163.com'),
  (9,'00052100000000000001','山西刀削面','banana','13800000000','天安门广场北侧路边小胡同','12345679@163.com'),
  (10,'14500000000000000001','湖南烧刀子','potato','13800000000','天安门广场北侧路边小胡同','12345679@163.com');
###################################################
#########      用户展示的商家表		  #################
###################################################
INSERT INTO `onlineorder`.`t_enter_info_for_user`(`enterprise_id`, `company_name`, `address`, `phone_num`,
 `feature_items`, `preferential_activities`, `parking_space`, `business_hours`, `wifi`, `average_price`, `enter_img`)
 VALUES ('00000000000000000001', '京都川菜馆', '天安门广场北侧路边小胡同', '13800000000',
  '毛肚、牛丸、滑虾、羊肉、香辣虾...', '暂无信息', '4个停车位（免费）', '09:00~22:00', '免费WIFI', '50元', 'upload/cc.jpg'),
  ('23000000000000000001', 's四川川菜馆', '天安门广场北侧路边小胡同', '13800000000',
  '毛肚、牛丸、滑虾、羊肉、香辣虾...', '暂无信息', '4个停车位（免费）', '09:00~22:00', '免费WIFI', '50元', 'upload/cc.jpg'),
  ('00013000000000000001', '京都川菜馆', '天安门广场北侧路边小胡同', '13800000000',
  '毛肚、牛丸、滑虾、羊肉、香辣虾...', '暂无信息', '4个停车位（免费）', '09:00~22:00', '免费WIFI', '50元', 'upload/cc.jpg');


###################################################
#########      菜品分类数据			  #################
###################################################
insert into `t_item_type`(id,item_type_id,item_type_desc) values
  (1,1,'热菜'),
  (2,2,'凉菜'),
  (3,3,'汤羹'),
  (4,4,'主食'),
  (5,5,'小吃'),
  (6,6,'家常菜'),
  (7,7,'跑酱腌菜'),
  (8,8,'西餐'),
  (9,9,'烘焙'),
  (10,10,'烤箱菜'),
  (11,11,'饮品'),
  (12,12,'零食'),
  (13,13,'火锅'),
  (14,14,'自制食材'),
  (15,15,'海鲜'),
  (16,16,'宴客菜');

###################################################
#########      菜品默认数据			t_item  #################
###################################################
insert into `t_item`(enterprise_id,item_id,item_name,item_price,item_pic,item_desc,item_type) values
  ('00013000000000000001','00000000000000000001','鱼香肉丝',12.5,'yxrs.jpg', '鱼香肉丝是一道人人喜欢的家常菜，有些厨房新手做出的味道总是没有饭店的好吃，不过不要紧，现在超市有卖鱼香肉丝的调料包了。只用一包调料就可以做出一道美味经典的川菜，厨房新手们不妨试试哟',2),
  ('00013000000000000001','00000000000000000011','糖醋排骨',23,'tcpg.jpg', '糖醋排骨（Sweet and Sour Spare Ribs），是糖醋味型中具有代表性的一道大众喜爱的特色传统名菜。它选用新鲜猪子排作主料，肉质鲜嫩，成莱色泽红亮油润',2),
  ('00013000000000000001','00000000000000000021','黄焖鸡翅',31.5,'https://baike.baidu.com/pic/%E9%BB%84%E7%84%96%E9%B8%A1%E7%BF%85/392812/0/9358d109b3de9c82569fda3f6681800a18d84383?fr=lemma&ct=single', '黄焖鸡翅是中原豫菜系，由鸡翅为主要食材做成的一道菜品，属于家常菜。该菜肉质鲜美，色香味具全，对于保持皮肤光泽、增强皮肤弹性均有好处。一般人群均可食用，老人、病人、体弱者更宜食用',2),
  ('00013000000000000001','00000000000000000031','红烧冬瓜球',14.5,'https://baike.baidu.com/pic/%E7%BA%A2%E7%83%A7%E5%86%AC%E7%93%9C%E7%90%83/2994561/0/7e3e6709c93d70cf4d11ddc7ffdcd100bba12b14?fr=lemma&ct=single', '红烧冬瓜球是一道由冬瓜等食材制成的食品',2),
  ('23000000000000000001','00000000000000000041','红烧肉',30,'https://baike.baidu.com/pic/%E7%BA%A2%E7%83%A7%E8%82%89/571767/0/77094b36acaf2edde4a2588a811001e939019305?fr=lemma&ct=single', '红烧肉是一道著名的大众菜肴，属于热菜。其以五花肉为制作主料，最好选用肥瘦相间的三层肉（五花肉）来做，做法多达二三十种。红烧肉的烹饪技巧以砂锅为主，肥瘦相间，香甜松软，入口即化。红烧肉在我国各地流传甚广，具有一定的营养价值',2),
  ('23000000000000000001','00000000000000000051','可乐鸡翅',40,'https://baike.baidu.com/pic/%E5%8F%AF%E4%B9%90%E9%B8%A1%E7%BF%85/525019/0/8b13632762d0f70342fbeff703fa513d2697c554?fr=lemma&ct=single', '可乐鸡翅是一道以鸡翅和可乐为主料，以料酒、葱、姜、酱油、盐、鸡精作为调料制作而成的美食。可乐鸡翅具有味道鲜美、色泽艳丽、鸡肉嫩滑、咸甜适中的特点。 [1] 一般人群均可食用。不适合感冒发热、内火偏旺、痰湿偏重之人；患有热毒疖肿、高血压、血脂偏高、胆囊炎、胆石症患者忌食',2),
  ('23000000000000000001','00000000000000000061','北京烤鸭',90,'https://baike.baidu.com/pic/%E5%8C%97%E4%BA%AC%E7%83%A4%E9%B8%AD/664769/0/738b4710b912c8fcd24c76b6ff039245d6882109?fr=lemma&ct=single', '烤鸭是具有世界声誉的北京著名菜式，起源于中国南北朝时期，《食珍录》中已记有炙鸭，在当时是宫廷食品。用料为优质肉食鸭北京鸭，果木炭火烤制，色泽红润，肉质肥而不腻，外脆里嫩。北京烤鸭分为两大流派，而北京最著名的烤鸭店也即是两派的代表。它以色泽红艳，肉质细嫩，味道醇厚，肥而不腻的特色，被誉为“天下美味”',2),
  ('23000000000000000001','00000000000000000071','耗油虾球',45,'https://baike.baidu.com/pic/%E8%9A%9D%E6%B2%B9%E8%99%BE%E4%BB%81/10839454/0/d66b7e5991315c672834f0cf?fr=lemma&ct=single', '蚝油虾仁是一道以虾仁、蚝油、生抽等为主要食材制作的美食',2);
