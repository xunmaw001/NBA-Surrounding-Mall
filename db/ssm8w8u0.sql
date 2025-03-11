/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50636
Source Host           : localhost:3306
Source Database       : ssm8w8u0

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2020-11-13 12:30:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605241692737 DEFAULT CHARSET=utf8 COMMENT='地址';

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '2020-11-13 11:15:43', '1', '湖南省长沙市岳麓区莲花镇083县道', '小吴', '16549878988', '是');
INSERT INTO `address` VALUES ('2', '2020-11-13 11:15:43', '2', '地址2', '收货人2', '电话2', '是否默认地址[是/否]2');
INSERT INTO `address` VALUES ('3', '2020-11-13 11:15:43', '3', '地址3', '收货人3', '电话3', '是否默认地址[是/否]3');
INSERT INTO `address` VALUES ('1605241692736', '2020-11-13 12:28:11', '1605241640164', '江西省赣州市章贡区潭东镇石子坑', '小刘', '16549878988', '是');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tablename` varchar(200) DEFAULT 'shangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605241712390 DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('2', '2020-11-13 11:15:42', '商品表名2', '2', '2', '商品名称2', 'http://localhost:8080/ssm8w8u0/upload/cart_picture2.jpg', '2', '2', '2');
INSERT INTO `cart` VALUES ('3', '2020-11-13 11:15:42', '商品表名3', '3', '3', '商品名称3', 'http://localhost:8080/ssm8w8u0/upload/cart_picture3.jpg', '3', '3', '3');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605241607219 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('1', '2020-11-13 11:15:42', '1', '1', '提问1', '回复1', '0');
INSERT INTO `chat` VALUES ('2', '2020-11-13 11:15:42', '2', '2', '提问2', '回复2', '2');
INSERT INTO `chat` VALUES ('3', '2020-11-13 11:15:42', '3', '3', '提问3', '回复3', '3');
INSERT INTO `chat` VALUES ('1605241607218', '2020-11-13 12:26:47', '1', '1', null, '你好', null);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(200) NOT NULL COMMENT '名称',
  `value` varchar(200) DEFAULT NULL COMMENT '值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='轮播图管理';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', '2020-11-13 11:15:43', 'picture1', 'http://localhost:8080/ssm8w8u0/upload/picture1.jpg');
INSERT INTO `config` VALUES ('2', '2020-11-13 11:15:43', 'picture2', 'http://localhost:8080/ssm8w8u0/upload/picture2.jpg');
INSERT INTO `config` VALUES ('3', '2020-11-13 11:15:43', 'picture3', 'http://localhost:8080/ssm8w8u0/upload/picture3.jpg');
INSERT INTO `config` VALUES ('4', '2020-11-13 11:15:43', 'picture4', 'http://localhost:8080/ssm8w8u0/upload/picture4.jpg');
INSERT INTO `config` VALUES ('5', '2020-11-13 11:15:43', 'picture5', 'http://localhost:8080/ssm8w8u0/upload/picture5.jpg');
INSERT INTO `config` VALUES ('6', '2020-11-13 11:15:43', 'homepage', null);

-- ----------------------------
-- Table structure for discussshangpin
-- ----------------------------
DROP TABLE IF EXISTS `discussshangpin`;
CREATE TABLE `discussshangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605241700074 DEFAULT CHARSET=utf8 COMMENT='商品评论表';

-- ----------------------------
-- Records of discussshangpin
-- ----------------------------
INSERT INTO `discussshangpin` VALUES ('1', '2020-11-13 11:15:43', '1', '评论内容1', '1');
INSERT INTO `discussshangpin` VALUES ('2', '2020-11-13 11:15:43', '2', '评论内容2', '2');
INSERT INTO `discussshangpin` VALUES ('3', '2020-11-13 11:15:43', '3', '评论内容3', '3');
INSERT INTO `discussshangpin` VALUES ('1605241700073', '2020-11-13 12:28:19', '2', '1', '1605241640164');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '2020-11-13 11:15:43', '标题1', 'http://localhost:8080/ssm8w8u0/upload/1605237482924.jpg', '<p>上新</p>');
INSERT INTO `news` VALUES ('2', '2020-11-13 11:15:43', '标题2', 'http://localhost:8080/ssm8w8u0/upload/1605237497482.jpg', '<p>上新	</p><p><br></p>');
INSERT INTO `news` VALUES ('3', '2020-11-13 11:15:43', '标题3', 'http://localhost:8080/ssm8w8u0/upload/1605237516675.jpg', '<p>内容3</p>');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `tablename` varchar(200) DEFAULT 'shangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT NULL COMMENT '支付类型（1：现金 2：积分）',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1605241719935 DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '2020-11-13 11:15:43', '订单id1', '商品表名1', '1', '1', '商品名称1', 'http://localhost:8080/ssm8w8u0/upload/orders_picture1.jpg', '1', '1', '1', '1', '1', '1', '状态1', '地址1');
INSERT INTO `orders` VALUES ('2', '2020-11-13 11:15:43', '订单id2', '商品表名2', '2', '2', '商品名称2', 'http://localhost:8080/ssm8w8u0/upload/orders_picture2.jpg', '2', '2', '2', '2', '2', '2', '状态2', '地址2');
INSERT INTO `orders` VALUES ('3', '2020-11-13 11:15:43', '订单id3', '商品表名3', '3', '3', '商品名称3', 'http://localhost:8080/ssm8w8u0/upload/orders_picture3.jpg', '3', '3', '3', '3', '3', '3', '状态3', '地址3');
INSERT INTO `orders` VALUES ('1605237753230', '2020-11-13 11:22:32', '2020111311194815477719', 'shangpin', '1', '2', '商品名称2', 'http://localhost:8080/ssm8w8u0/upload/shangpin_tupian2.jpg', '1', '88', '88', '88', '88', '1', '已完成', '地址1');
INSERT INTO `orders` VALUES ('1605237799780', '2020-11-13 11:23:19', '2020111311203485134638', 'shangpin', '1', '1605237689243', '球鞋', 'http://localhost:8080/ssm8w8u0/upload/1605237667117.jpg', '2', '398', '398', '796', '796', '1', '已完成', '湖南省长沙市岳麓区莲花镇083县道');
INSERT INTO `orders` VALUES ('1605241703834', '2020-11-13 12:28:23', '2020111312282365544634', 'shangpin', '1605241640164', '2', '商品名称2', 'http://localhost:8080/ssm8w8u0/upload/shangpin_tupian2.jpg', '1', '88', '88', '88', '88', '1', '已支付', '江西省赣州市章贡区潭东镇石子坑');
INSERT INTO `orders` VALUES ('1605241719934', '2020-11-13 12:28:39', '2020111312283913924835', 'shangpin', '1605241640164', '1605237689243', '球鞋', 'http://localhost:8080/ssm8w8u0/upload/1605237667117.jpg', '2', '398', '398', '796', '796', '1', '已支付', '江西省赣州市章贡区潭东镇石子坑');

-- ----------------------------
-- Table structure for qiudui
-- ----------------------------
DROP TABLE IF EXISTS `qiudui`;
CREATE TABLE `qiudui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qiudui` varchar(200) NOT NULL COMMENT '球队',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiudui` (`qiudui`)
) ENGINE=InnoDB AUTO_INCREMENT=1605241543727 DEFAULT CHARSET=utf8 COMMENT='球队';

-- ----------------------------
-- Records of qiudui
-- ----------------------------
INSERT INTO `qiudui` VALUES ('1', '2020-11-13 11:15:42', '火箭');
INSERT INTO `qiudui` VALUES ('2', '2020-11-13 11:15:42', '湖人');
INSERT INTO `qiudui` VALUES ('3', '2020-11-13 11:15:42', '雄鹿');
INSERT INTO `qiudui` VALUES ('1605237567049', '2020-11-13 11:19:26', '篮网');
INSERT INTO `qiudui` VALUES ('1605241543726', '2020-11-13 12:25:43', '勇士');

-- ----------------------------
-- Table structure for shangpin
-- ----------------------------
DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE `shangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `qiudui` varchar(200) DEFAULT NULL COMMENT '球队',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `xiangqing` longtext COMMENT '详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605237724189 DEFAULT CHARSET=utf8 COMMENT='商品';

-- ----------------------------
-- Records of shangpin
-- ----------------------------
INSERT INTO `shangpin` VALUES ('1', '2020-11-13 11:15:42', '商品名称1', '篮网', '童装', 'http://localhost:8080/ssm8w8u0/upload/shangpin_tupian1.jpg', '规格1', '品牌1', '<p><img src=\"http://localhost:8080/ssm8w8u0/upload/1605237622485.jpg\"></p>', '2020-11-13 12:25:58', '3', '88');
INSERT INTO `shangpin` VALUES ('2', '2020-11-13 11:15:42', '商品名称2', '雄鹿', '上衣', 'http://localhost:8080/ssm8w8u0/upload/shangpin_tupian2.jpg', '规格2', '品牌2', '<p><img src=\"http://localhost:8080/ssm8w8u0/upload/1605237640518.jpg\"></p>', '2020-11-13 12:28:23', '9', '88');
INSERT INTO `shangpin` VALUES ('3', '2020-11-13 11:15:42', '商品名称3', '火箭', '配件', 'http://localhost:8080/ssm8w8u0/upload/shangpin_tupian3.jpg', '规格3', '品牌3', '<p><img src=\"http://localhost:8080/ssm8w8u0/upload/1605237657520.jpg\"></p>', '2020-11-13 12:28:57', '5', '128');
INSERT INTO `shangpin` VALUES ('1605237689243', '2020-11-13 11:21:28', '球鞋', '湖人', '鞋类', 'http://localhost:8080/ssm8w8u0/upload/1605237667117.jpg', '对', '耐克', '<p><img src=\"http://localhost:8080/ssm8w8u0/upload/1605237687780.jpg\"></p>', '2020-11-13 12:28:39', '8', '398');
INSERT INTO `shangpin` VALUES ('1605237724188', '2020-11-13 11:22:03', '篮球', '篮网', '篮球', 'http://localhost:8080/ssm8w8u0/upload/1605237698740.jpg', '个', '火车头', '<p><img src=\"http://localhost:8080/ssm8w8u0/upload/1605237722965.jpg\"></p>', null, '0', '98');

-- ----------------------------
-- Table structure for shangpinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1605237604974 DEFAULT CHARSET=utf8 COMMENT='商品分类';

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES ('1', '2020-11-13 11:15:42', '上衣');
INSERT INTO `shangpinfenlei` VALUES ('2', '2020-11-13 11:15:42', '配件');
INSERT INTO `shangpinfenlei` VALUES ('3', '2020-11-13 11:15:42', '篮球');
INSERT INTO `shangpinfenlei` VALUES ('1605237584443', '2020-11-13 11:19:43', '童装');
INSERT INTO `shangpinfenlei` VALUES ('1605237593322', '2020-11-13 11:19:52', '下装');
INSERT INTO `shangpinfenlei` VALUES ('1605237596311', '2020-11-13 11:19:55', '鞋类');
INSERT INTO `shangpinfenlei` VALUES ('1605237604973', '2020-11-13 11:20:04', '球衣');

-- ----------------------------
-- Table structure for shangpinpingjia
-- ----------------------------
DROP TABLE IF EXISTS `shangpinpingjia`;
CREATE TABLE `shangpinpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `qiudui` varchar(200) DEFAULT NULL COMMENT '球队',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605241764345 DEFAULT CHARSET=utf8 COMMENT='商品评价';

-- ----------------------------
-- Records of shangpinpingjia
-- ----------------------------
INSERT INTO `shangpinpingjia` VALUES ('1', '2020-11-13 11:15:42', '商品名称1', '球队1', '分类1', 'http://localhost:8080/ssm8w8u0/upload/shangpinpingjia_tupian1.jpg', '1', '评价内容1', '2020-11-13', '用户名1', '否', '');
INSERT INTO `shangpinpingjia` VALUES ('2', '2020-11-13 11:15:42', '商品名称2', '球队2', '分类2', 'http://localhost:8080/ssm8w8u0/upload/shangpinpingjia_tupian2.jpg', '1', '评价内容2', '2020-11-13', '用户名2', '否', '');
INSERT INTO `shangpinpingjia` VALUES ('3', '2020-11-13 11:15:42', '商品名称3', '球队3', '分类3', 'http://localhost:8080/ssm8w8u0/upload/shangpinpingjia_tupian3.jpg', '1', '评价内容3', '2020-11-13', '用户名3', '否', '');
INSERT INTO `shangpinpingjia` VALUES ('1605237824630', '2020-11-13 11:23:44', '球鞋', '湖人', '鞋类', 'http://localhost:8080/ssm8w8u0/upload/1605237667117.jpg', '4', '<p>1111</p>', '2020-11-16', '001', '是', '收到 谢谢');
INSERT INTO `shangpinpingjia` VALUES ('1605241764344', '2020-11-13 12:29:23', '商品名称3', '火箭', '配件', 'http://localhost:8080/ssm8w8u0/upload/shangpin_tupian3.jpg', '4', '<p>1111</p>', null, '001', '', '');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605241738376 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('3', '2020-11-13 11:15:43', '3', '3', '表名3', '收藏名称3', 'http://localhost:8080/ssm8w8u0/upload/storeup_picture3.jpg');
INSERT INTO `storeup` VALUES ('1605237791611', '2020-11-13 11:23:11', '1', '1605237689243', 'shangpin', '球鞋', 'http://localhost:8080/ssm8w8u0/upload/1605237667117.jpg');
INSERT INTO `storeup` VALUES ('1605241697404', '2020-11-13 12:28:16', '1605241640164', '2', 'shangpin', '商品名称2', 'http://localhost:8080/ssm8w8u0/upload/shangpin_tupian2.jpg');
INSERT INTO `storeup` VALUES ('1605241738375', '2020-11-13 12:28:58', '1', '3', 'shangpin', '商品名称3', 'http://localhost:8080/ssm8w8u0/upload/shangpin_tupian3.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', 'hwt8m0y21axk7c8j5icbnhgze8zkeh9d', '2020-11-13 11:17:43', '2020-11-13 13:25:23');
INSERT INTO `token` VALUES ('2', '1', '001', 'yonghu', '用户', '2k4j3gmzdvnbcsfzcxvcfl8yd6rp336s', '2020-11-13 11:22:20', '2020-11-13 13:28:51');
INSERT INTO `token` VALUES ('3', '2', '002', 'yonghu', '用户', '97uh95rj5kk0228ola8vgc1djl1unglm', '2020-11-13 11:23:57', '2020-11-13 12:23:58');
INSERT INTO `token` VALUES ('4', '1605241640164', '000', 'yonghu', '用户', '1c0wpgt0vgn2rlefr3375rve7l4nfqqu', '2020-11-13 12:27:25', '2020-11-13 13:27:26');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '123', '123', '管理员', '2020-11-13 11:15:43');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1605241640165 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '2020-11-13 11:15:42', '001', '001', '小吴', '男', 'http://localhost:8080/ssm8w8u0/upload/yonghu_touxiang1.jpg', '13823888881', '773890001@qq.com', '117');
INSERT INTO `yonghu` VALUES ('2', '2020-11-13 11:15:42', '002', '002', '小叶', '女', 'http://localhost:8080/ssm8w8u0/upload/yonghu_touxiang2.jpg', '13823888882', '773890002@qq.com', '2');
INSERT INTO `yonghu` VALUES ('3', '2020-11-13 11:15:42', '003', '003', '小周', '男', 'http://localhost:8080/ssm8w8u0/upload/yonghu_touxiang3.jpg', '13823888883', '773890003@qq.com', '3');
INSERT INTO `yonghu` VALUES ('1605241640164', '2020-11-13 12:27:20', '000', '000', '小刘', '男', 'http://localhost:8080/ssm8w8u0/upload/1605241656062.jpg', '12654565455', '1245@123.com', '116');
