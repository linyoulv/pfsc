/*
Navicat MySQL Data Transfer

Source Server         : wxbyxjf
Source Server Version : 50540
Source Host           : 139.196.16.145:3306
Source Database       : shyishop

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-08-12 15:36:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `access_token`
-- ----------------------------
DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `id` int(11) NOT NULL,
  `access_token` varchar(1000) DEFAULT NULL,
  `expires_in` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of access_token
-- ----------------------------
INSERT INTO `access_token` VALUES ('1', 'YiQUduxTAXVQnRnDlP6f91biVCN2y65ASR9cU809y3MQNE7GP_IfA2v6XqdJxc-eDqiG6H3qARQeuLDMtDjroiH-El5rTFrj7RspWJvKxbpymLgqlCXhhIyB9vvMnGq5GWZhAHAAQT', null, '1470061807515');

-- ----------------------------
-- Table structure for `tb_address`
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address` (
  `addr_id` int(11) NOT NULL AUTO_INCREMENT,
  `addr_user` varchar(255) DEFAULT NULL,
  `addr_name` varchar(255) DEFAULT NULL,
  `addr_tel` varchar(255) DEFAULT NULL,
  `oppen_id` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT '5',
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`addr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_address
-- ----------------------------
INSERT INTO `tb_address` VALUES ('11', ' ', '     1', '   ', '111', '20160409131928', null, null, null);
INSERT INTO `tb_address` VALUES ('13', '', '', '', 'oyqTtw3DsY4PXg1wVFfQp8ewOKh8', null, null, null, null);
INSERT INTO `tb_address` VALUES ('14', '123', '', '', 'oyqTtw3DsY4PXg1wVFfQp8ewOKh8', null, null, null, null);
INSERT INTO `tb_address` VALUES ('15', '123', '1234', '123', 'oyqTtw3DsY4PXg1wVFfQp8ewOKh8', null, null, null, null);
INSERT INTO `tb_address` VALUES ('16', '常振伟', '55', '13357823304', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', null, null, null, null);
INSERT INTO `tb_address` VALUES ('17', '哈', '111111', '11111', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '20160416103616', null, null, null);
INSERT INTO `tb_address` VALUES ('18', '尹翔', '南京市新街口政务大厦北楼306', '18260009902', 'oyqTtw2gjY17ntKIyba_i48EB26A', '20160426221551', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('19', '武蒙', '雨润大街123456789好好好好好好好好好好哈哈哈', '13800138000', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '20160504080620', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('20', '我的', '123', '13800138000', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('21', '哈哈哈', '你家', '1111111', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('22', '你好high糊涂推拿Jul图兔兔图图', '好好好好好好好好好好好好好好好好好好好好好好好好好', '13800138000', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '20160504080620', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('24', '雷锋', '水岸明珠3', '13184235048', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', null, '1', '16', '11');
INSERT INTO `tb_address` VALUES ('25', '楚荡', '永武街16号', '18977106731', 'oyqTtwx22xt4J9oujYfC3wjRD5Uk', null, '2', '7', '12');
INSERT INTO `tb_address` VALUES ('26', '晨', '大石桥', '18913834441', 'oyqTtw_dPj4Ne9iKxO-S2uK9tGkE', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('27', '晨', '大石桥', '18913834441', 'oyqTtw_d252V55C89XiqmkGrRpHM', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('28', '李祥', '卫巷29—2,80手机', '15005151906', 'oyqTtw0p_NhAaOjZH1OOG7Npg9FA', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('29', '胡翀宇', '大石桥19号', '13851759927', 'oyqTtw91DW4dmYULSdL7n-4-G9BY', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('30', 'robbin', '柳州东路', '18301985940', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('31', 'ssss', '玄武大道', 'ssss18301985940', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('32', '哈哈', '2号', '1111111111111', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('33', 'xxxx', 'xxxxxx', '18018673503', 'oyqTtw6su9NPDlAhgmGUYHukqQ7A', null, '2', '23', '1');
INSERT INTO `tb_address` VALUES ('34', 'test', '南京', '13524525133', 'oyqTtw2vfPMrtQczREkZYaQmMqt0', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('35', '你', '这', '18516187204', 'oyqTtw3-pP203p605MLi9iX1utyo', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('36', '陈好', '汉中黄金时间时间', '13815875144', 'oyqTtw4Fy9Fn31QnZKfd91w9e6jw', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('37', '看看', '做最去外婆哦破', '13357823304', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('38', '12312', '123123123', '3123123123123', 'oyqTtw7EM8Dfe5FtvSXZTP3JpSAI', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('39', '哈', '1', '13800138000', 'o9ejSvlPRAOP-28RWvhZiO2gK7yw', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('40', '张三', '123456', '13236496441', 'o9ejSvmhpiO9JomdofbDizDQvHe8', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('41', '宋金华', 'hhh', '15901643801', 'o9ejSviJrWFydDdDdyENatTqumLc', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('42', 'hhh', 'yyyy', '13712224211', 'o9ejSvmhpiO9JomdofbDizDQvHe8', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('43', 'test', 'f f d d', '1344422', 'o9ejSvmhpiO9JomdofbDizDQvHe8', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('44', 'Gghh', 'Hjj', '12233', 'o9ejSvl3cTL_JBHWfXJQd_1_ZPFk', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('45', '111', '关键时刻', '15151811111', 'o4m-hw9zFDVWLIBMlE8NhU30UKkQ', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('46', 'kum', '1111', '15151811111', 'o4m-hw9zFDVWLIBMlE8NhU30UKkQ', null, '1', '16', '3');

-- ----------------------------
-- Table structure for `tb_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- ----------------------------
-- Table structure for `tb_area`
-- ----------------------------
DROP TABLE IF EXISTS `tb_area`;
CREATE TABLE `tb_area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `sort` int(255) DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_area
-- ----------------------------
INSERT INTO `tb_area` VALUES ('33', '鼓楼区', '0', '1', '0');
INSERT INTO `tb_area` VALUES ('34', '玄武区', '0', '1', '0');
INSERT INTO `tb_area` VALUES ('35', '秦淮区', '0', '1', '0');
INSERT INTO `tb_area` VALUES ('36', '南京移动汉中门大街沟通100服务店', '33', '1', '0');
INSERT INTO `tb_area` VALUES ('37', '南京移动中央北路指定专营店', '33', '1', '0');
INSERT INTO `tb_area` VALUES ('38', '南京移动清凉门大街手机卖场', '33', '1', '0');
INSERT INTO `tb_area` VALUES ('39', '南京移动明故宫沟通100服务店', '34', '1', '0');
INSERT INTO `tb_area` VALUES ('40', '南京移动新庄指定专营店', '34', '1', '0');
INSERT INTO `tb_area` VALUES ('41', '丹凤街新街口政务大厦', '34', '1', '0');
INSERT INTO `tb_area` VALUES ('42', '南京移动升州路营业厅', '35', '1', '0');
INSERT INTO `tb_area` VALUES ('43', '南京移动火瓦巷指定专营店', '35', '1', '0');
INSERT INTO `tb_area` VALUES ('44', '建邺区', '0', '1', '0');
INSERT INTO `tb_area` VALUES ('45', '南京移动水西门沟通100服务店', '44', '1', '0');
INSERT INTO `tb_area` VALUES ('46', '南京移动河西万达营业厅', '44', '1', '0');

-- ----------------------------
-- Table structure for `tb_banner`
-- ----------------------------
DROP TABLE IF EXISTS `tb_banner`;
CREATE TABLE `tb_banner` (
  `ban_id` int(11) NOT NULL AUTO_INCREMENT,
  `ban_img` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`ban_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_banner
-- ----------------------------
INSERT INTO `tb_banner` VALUES ('1', '/xnshop/../upload/1457876411558.png', null, '1', '1', '0');
INSERT INTO `tb_banner` VALUES ('2', '/xnshop/../upload/1457922904544.png', null, '4', '1', '0');
INSERT INTO `tb_banner` VALUES ('3', '/xnshop/../upload/1466840233549.png', 'http://www.61songcai.com/xnshop/page/category.html?ctg_id=23', '2', '1', '0');
INSERT INTO `tb_banner` VALUES ('4', '/xnshop/../upload/1457922914911.png', null, '2', '1', '0');
INSERT INTO `tb_banner` VALUES ('5', '/xnshop/../upload/1464335304002.png', 'http://www.61songcai.com/xnshop/page/goodsListById.html?goods_id=40', '5', '2', '0');
INSERT INTO `tb_banner` VALUES ('6', '/xnshop/../upload/1465802492129.png', 'http://www.61songcai.com/xnshop/page/goodsListById.html?goods_id=72', '3', '2', '0');
INSERT INTO `tb_banner` VALUES ('7', '/xnshop/../upload/1466840222440.png', 'http://www.61songcai.com/xnshop/page/goodsListById.html?goods_id=39', '1', '1', '0');
INSERT INTO `tb_banner` VALUES ('8', '/xnshop/../upload/1464335248909.png', 'http://www.61songcai.com/xnshop/page/goodsListById.html?goods_id=66', '4', '2', '0');
INSERT INTO `tb_banner` VALUES ('9', '/xnshop/../upload/1470052130312.png', 'http://www.61songcai.com/xnshop/page/cpsAll.html', '0', '2', '0');
INSERT INTO `tb_banner` VALUES ('10', '/xnshop/../upload/1467004540850.png', 'http://www.61songcai.com/xnshop/page/goodsListById.html?goods_id=60', '0', '1', '0');
INSERT INTO `tb_banner` VALUES ('11', '/xnshop/../upload/1467004561444.png', 'http://www.61songcai.com/xnshop/page/goodsListById.html?goods_id=61', '0', '1', '0');

-- ----------------------------
-- Table structure for `tb_cart`
-- ----------------------------
DROP TABLE IF EXISTS `tb_cart`;
CREATE TABLE `tb_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_spe` varchar(255) DEFAULT NULL,
  `goods_price` float DEFAULT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `goods_total` float DEFAULT NULL,
  `oppen_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_cart
-- ----------------------------
INSERT INTO `tb_cart` VALUES ('150', '71', '生态黄金耳', '/chihaodian/../upload/1465718546056.png', '1袋', '12', '1', '12', 'oyqTtw7f1lYZFlKdCF5VAHePqcxI');
INSERT INTO `tb_cart` VALUES ('153', '25', '新疆库尔勒香梨', '/chihaodian/../upload/1463109011535.png', '16个', '25.8', '2', '51.6', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4');
INSERT INTO `tb_cart` VALUES ('158', '19', '蔬菜会员月卡', '/chihaodian/../upload/1465974795254.png', '1个月/8次 2-3人 每次6斤', '360', '3', '1080', 'oyqTtw4Fy9Fn31QnZKfd91w9e6jw');
INSERT INTO `tb_cart` VALUES ('160', '19', '蔬菜会员月卡', '/chihaodian/../upload/1465974795254.png', '1个月/8次 2-3人 每次6斤', '360', '1', '360', 'oyqTtwzEjo8pzJngr0jPsVoKWedo');
INSERT INTO `tb_cart` VALUES ('161', '20', '蔬菜会员月卡', '/chihaodian/../upload/1465975621288.png', '1个月/8次 3-5人 每次9斤', '520', '2', '1040', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU');
INSERT INTO `tb_cart` VALUES ('162', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', '1.0-1.2KG', '48', '1', '48', 'oyqTtw1zOWY0M3qayRdDu_XnHsfM');
INSERT INTO `tb_cart` VALUES ('164', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', '1.0-1.2KG', '48', '1', '48', 'oyqTtw6QkdoZjbSLlQbEsadb8Eu8');
INSERT INTO `tb_cart` VALUES ('165', '19', '蔬菜会员月卡', '/chihaodian/../upload/1465974795254.png', '1个月/8次 2-3人 每次6斤', '360', '1', '360', 'oyqTtw6QkdoZjbSLlQbEsadb8Eu8');
INSERT INTO `tb_cart` VALUES ('173', '78', '仙桃香粳米 50斤', '/chihaodian/../upload/1466818615476.png', '50斤', '180', '1', '180', 'o4m-hwxwWihifsZhV7eRYjC_4hWg');
INSERT INTO `tb_cart` VALUES ('174', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', '1.5kg', '19.8', '2', '39.6', 'o4m-hw8zFrtrQH08Vqv7pfOuplKI');
INSERT INTO `tb_cart` VALUES ('175', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', '2.25kg-2.5kg', '39.8', '2', '79.6', 'o4m-hwxK7lJfDzzDAKK26s4pvhlk');
INSERT INTO `tb_cart` VALUES ('176', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', '1.5kg', '19.8', '2', '39.6', 'o4m-hwxK7lJfDzzDAKK26s4pvhlk');
INSERT INTO `tb_cart` VALUES ('177', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', '1.0-1.2KG', '48', '1', '48', 'o4m-hwxK7lJfDzzDAKK26s4pvhlk');
INSERT INTO `tb_cart` VALUES ('178', '39', '生态柔玉米', '/chihaodian/../upload/1466730801733.png', '10斤', '48', '4', '192', 'o4m-hwxK7lJfDzzDAKK26s4pvhlk');
INSERT INTO `tb_cart` VALUES ('179', '73', '蔬菜会员卡年卡', '/chihaodian/../upload/1465977042091.png', '1年/52次 1-2人 每次4斤', '1588', '1', '1588', 'o4m-hw29iEkv11S9JH2PGHeY9WTs');
INSERT INTO `tb_cart` VALUES ('180', '65', '妃子笑荔枝', '/chihaodian/../upload/1465723952090.png', '1kg', '30', '1', '30', 'o4m-hw-A7gzIx-tF1BA2ALXSDk98');

-- ----------------------------
-- Table structure for `tb_category`
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category` (
  `ctg_id` int(11) NOT NULL AUTO_INCREMENT,
  `ctg_name` varchar(255) DEFAULT '',
  `ctg_img` varchar(255) DEFAULT '',
  `status` int(11) DEFAULT NULL COMMENT '0禁用，1启用',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`ctg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO `tb_category` VALUES ('1', '蔬菜卡', '/chihaodian/../upload/1460612766269.png', '0', '4');
INSERT INTO `tb_category` VALUES ('21', '五谷杂粮', '/chihaodian/../upload/1460602430649.png', '0', '2');
INSERT INTO `tb_category` VALUES ('22', '肉禽蛋类', '/chihaodian/../upload/1460602659462.png', '0', '3');
INSERT INTO `tb_category` VALUES ('23', '活力鲜果', '/chihaodian/../upload/1460612742253.png', '0', '0');
INSERT INTO `tb_category` VALUES ('25', '保健养生', '/chihaodian/../upload/1460612908722.png', '0', '5');
INSERT INTO `tb_category` VALUES ('26', '123', '', '0', '0');

-- ----------------------------
-- Table structure for `tb_coupons`
-- ----------------------------
DROP TABLE IF EXISTS `tb_coupons`;
CREATE TABLE `tb_coupons` (
  `cps_id` int(11) NOT NULL AUTO_INCREMENT,
  `cps_name` varchar(255) DEFAULT NULL,
  `cps_code` varchar(255) DEFAULT NULL COMMENT '优惠券兑换码',
  `cps_price` float DEFAULT NULL,
  `cps_time` varchar(255) DEFAULT NULL,
  `cps_level` int(11) DEFAULT NULL COMMENT '0系统总优惠券，!0用户优惠券',
  `oppen_id` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '0已用，1可用',
  PRIMARY KEY (`cps_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_coupons
-- ----------------------------
INSERT INTO `tb_coupons` VALUES ('42', '1', '77500', '1', '2016-03-29', '0', '0', '1');
INSERT INTO `tb_coupons` VALUES ('48', '端午节优惠券', '40868', '5', '2016-05-27', '43', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '0');
INSERT INTO `tb_coupons` VALUES ('49', '测试', '87093', '5', '2016-05-27', '45', 'oyqTtw2gjY17ntKIyba_i48EB26A', '1');
INSERT INTO `tb_coupons` VALUES ('50', '端午节优惠券', '40868', '5', '2016-05-31', '43', 'oyqTtw2gjY17ntKIyba_i48EB26A', '1');
INSERT INTO `tb_coupons` VALUES ('51', '测试', '87093', '5', '2016-05-27', '45', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '0');
INSERT INTO `tb_coupons` VALUES ('52', '新用户领券', '71233', '10', '2016-05-31', '0', '0', '1');
INSERT INTO `tb_coupons` VALUES ('53', '新用户领券', '71233', '10', '2016-05-31', '52', 'oyqTtw2gjY17ntKIyba_i48EB26A', '0');
INSERT INTO `tb_coupons` VALUES ('54', '新用户领券', '71233', '10', '2016-05-31', '52', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '1');
INSERT INTO `tb_coupons` VALUES ('55', '新手优惠', '13289', '10', '2016-12-31', '0', '0', '1');
INSERT INTO `tb_coupons` VALUES ('56', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw2gjY17ntKIyba_i48EB26A', '0');
INSERT INTO `tb_coupons` VALUES ('57', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw8UGbJh7XLMr1s5tSLrC2io', '1');
INSERT INTO `tb_coupons` VALUES ('58', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '1');
INSERT INTO `tb_coupons` VALUES ('59', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw91DW4dmYULSdL7n-4-G9BY', '0');
INSERT INTO `tb_coupons` VALUES ('60', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw_d252V55C89XiqmkGrRpHM', '0');
INSERT INTO `tb_coupons` VALUES ('61', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', '1');
INSERT INTO `tb_coupons` VALUES ('62', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw4Fy9Fn31QnZKfd91w9e6jw', '1');
INSERT INTO `tb_coupons` VALUES ('63', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtwzEjo8pzJngr0jPsVoKWedo', '1');
INSERT INTO `tb_coupons` VALUES ('64', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw7EM8Dfe5FtvSXZTP3JpSAI', '1');
INSERT INTO `tb_coupons` VALUES ('65', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw6QkdoZjbSLlQbEsadb8Eu8', '1');
INSERT INTO `tb_coupons` VALUES ('66', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw9Rx04TEd8pVCaVXxNFvRDw', '1');
INSERT INTO `tb_coupons` VALUES ('67', '新手优惠', '13289', '10', '2016-12-31', '55', 'o9ejSviJrWFydDdDdyENatTqumLc', '1');
INSERT INTO `tb_coupons` VALUES ('68', '新手优惠', '13289', '10', '2016-12-31', '55', 'o4m-hw9zFDVWLIBMlE8NhU30UKkQ', '1');
INSERT INTO `tb_coupons` VALUES ('69', '新手优惠', '13289', '10', '2016-12-31', '55', 'o4m-hw0ngqxdP82zHbjhR7JPTx3c', '1');
INSERT INTO `tb_coupons` VALUES ('70', '新手优惠', '13289', '10', '2016-12-31', '55', 'o4m-hwzJkGTDiw2OCy-_RNWGEuu8', '1');

-- ----------------------------
-- Table structure for `tb_freight`
-- ----------------------------
DROP TABLE IF EXISTS `tb_freight`;
CREATE TABLE `tb_freight` (
  `fgt_id` int(11) NOT NULL AUTO_INCREMENT,
  `fgt_price` float DEFAULT NULL,
  `free_price` float DEFAULT NULL,
  PRIMARY KEY (`fgt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_freight
-- ----------------------------
INSERT INTO `tb_freight` VALUES ('1', '6', '0');

-- ----------------------------
-- Table structure for `tb_goods`
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_spe` varchar(255) DEFAULT NULL COMMENT '规格',
  `goods_price` float DEFAULT NULL,
  `goods_detail` text,
  `goods_num` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `ctg_id` int(11) DEFAULT NULL COMMENT '是1否0热销',
  `is_recommend` int(11) DEFAULT NULL COMMENT '是否首页推荐',
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT '1' COMMENT '1普通商品2会员商品',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('2', '西瓜', '/chihaodian/../upload/1457923321834.png', '', '200', '阿斯蒂芬', null, '2016-03-13', '7', '1', '0', null);
INSERT INTO `tb_goods` VALUES ('16', '油麦菜', '/chihaodian/../upload/1464245268878.png', '1斤', '0', '', null, '2016-04-29', null, null, '0', '2');
INSERT INTO `tb_goods` VALUES ('19', '蔬菜会员月卡', '/chihaodian/../upload/1465974795254.png', '1个月/8次 2-3人 每次6斤', '360', '<p>\n	<img src=\"/chihaodian/../upload/image/20160615/20160615151535_211.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615151535_559.jpg\" alt=\"\" />\n</p>\n<p>\n	<span style=\"color:#333333;font-family:微软雅黑;font-size:16px;line-height:24px;background-color:#F8F8F8;\">如果您的附近没有自提点，而您又不想使用快递，那您只需凑齐六个人办会员卡，我们将为您在附近开设新的自提点！</span> \n</p>', null, '2016-05-12', '1', '1', '0', '1');
INSERT INTO `tb_goods` VALUES ('20', '蔬菜会员月卡', '/chihaodian/../upload/1465975621288.png', '1个月/8次 3-5人 每次9斤', '520', '<span style=\"color:#333333;font-family:微软雅黑;font-size:16px;line-height:24px;background-color:#F8F8F8;\"><img src=\"/chihaodian/../upload/image/20160615/20160615152713_944.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615152713_423.jpg\" alt=\"\" />如果您的附近没有自提点，而您又不想使用快递，那您只需凑齐六个人办会员卡，我们将为您在附近开设新的自提点！</span>', null, '2016-05-12', '1', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('21', '蔬菜会员半年卡', '/chihaodian/../upload/1465975865805.png', '半年/52次 2-3人 每次6斤', '2000', '<span style=\"color:#333333;font-family:微软雅黑;font-size:16px;line-height:24px;background-color:#F8F8F8;\"><img src=\"/chihaodian/../upload/image/20160615/20160615153117_614.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615153118_561.jpg\" alt=\"\" />如果您的附近没有自提点，而您又不想使用快递，那您只需凑齐六个人办会员卡，我们将为您在附近开设新的自提点！</span>', null, '2016-05-12', '1', '1', '0', '1');
INSERT INTO `tb_goods` VALUES ('22', '蔬菜会员半年卡', '/chihaodian/../upload/1465976834996.png', '半年/52次 3-5人 每次9斤', '2900', '<p>\n	<img src=\"/chihaodian/../upload/image/20160615/20160615154727_406.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615154727_241.jpg\" alt=\"\" />\n</p>\n<p>\n	<span style=\"color:#333333;font-family:微软雅黑;font-size:16px;line-height:24px;background-color:#F8F8F8;\">如果您的附近没有自提点，而您又不想使用快递，那您只需凑齐六个人办会员卡，我们将为您在附近开设新的自提点！</span> \n</p>', null, '2016-05-12', '1', '0', '0', '1');
INSERT INTO `tb_goods` VALUES ('23', '蔬菜会员年卡', '/chihaodian/../upload/1465976906449.png', '1年/104次 2-3人 每次6斤', '3600', '<img src=\"/chihaodian/../upload/image/20160615/20160615154839_620.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615154839_633.jpg\" alt=\"\" />', null, '2016-05-12', '1', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('24', '蔬菜会员年卡', '/chihaodian/../upload/1465976935715.png', '1年/104次 3-5人 每次9斤', '5300', '<img src=\"/chihaodian/../upload/image/20160615/20160615154908_679.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615154908_133.jpg\" alt=\"\" />', null, '2016-05-12', '1', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('25', '新疆库尔勒香梨', '/chihaodian/../upload/1463109011535.png', '16个', '25.8', '<img src=\"/upload/image/20160513/20160513111104_660.jpg\" alt=\"\" /><img src=\"/upload/image/20160513/20160513111118_958.jpg\" alt=\"\" /><img src=\"/upload/image/20160513/20160513111124_44.jpg\" alt=\"\" /><img src=\"/upload/image/20160513/20160513111132_415.jpg\" alt=\"\" />', null, '2016-05-13', '23', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('26', '东方蜜1号', '/chihaodian/../upload/1463110161194.png', '3个 约4-5斤', '29.9', '<img src=\"/upload/image/20160513/20160513112937_524.jpg\" alt=\"\" />', null, '2016-05-13', '23', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('27', '海南木瓜', '/chihaodian/../upload/1463110264179.png', '1个', '6.5', '<img src=\"/upload/image/20160513/20160513113119_408.jpg\" alt=\"\" />', null, '2016-05-13', '23', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('29', '四川柠檬', '/chihaodian/../upload/1465703766021.png', '4个', '7.9', '<img src=\"/upload/image/20160517/20160517161902_232.jpg\" alt=\"\" />', null, '2016-05-17', '23', '0', '0', '1');
INSERT INTO `tb_goods` VALUES ('30', '缅甸黄河蜜', '/chihaodian/../upload/1464250276685.png', '约4斤', '18.9', '<img src=\"/upload/image/20160517/20160517162017_401.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('31', '麒麟西瓜', '/chihaodian/../upload/1463473271392.png', '约5.5斤-6.5斤', '26.9', '<img src=\"/upload/image/20160517/20160517162206_337.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('32', '特小凤西瓜', '/chihaodian/../upload/1463473433361.png', '约4斤-5斤', null, '<img src=\"/upload/image/20160517/20160517162428_793.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('33', '烟台红富士80脆', '/chihaodian/../upload/1463473499830.png', '1斤', '4.8', '<img src=\"/upload/image/20160517/20160517162523_535.jpg\" alt=\"\" />', null, '2016-05-17', '23', '0', '0', '1');
INSERT INTO `tb_goods` VALUES ('34', '海南西州蜜', '/chihaodian/../upload/1463473570955.png', '约4斤', '27.9', '<img src=\"/upload/image/20160517/20160517162639_435.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('35', '小台农芒果', '/chihaodian/../upload/1463473632080.png', '12个', '17.8', '<img src=\"/upload/image/20160517/20160517162745_47.jpg\" alt=\"\" /><img src=\"/upload/image/20160517/20160517162751_93.jpg\" alt=\"\" /><img src=\"/upload/image/20160517/20160517162756_531.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('36', '越南红心火龙果', '/chihaodian/../upload/1463473711206.png', '1个 约675g', '20', '<img src=\"/upload/image/20160517/20160517163058_156.jpg\" alt=\"\" />', null, '2016-05-17', '23', '0', '0', '1');
INSERT INTO `tb_goods` VALUES ('37', '台湾传统小番茄 ', '/chihaodian/../upload/1463474160676.png', '1斤', '8', '<img src=\"/upload/image/20160517/20160517163621_933.jpg\" alt=\"\" />', null, '2016-05-17', '23', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('38', '有机葡聚糖胚芽米', '/chihaodian/../upload/1464165453285.png', '10斤', '228', '<img src=\"/upload/image/20160525/20160525163922_150.jpg\" alt=\"\" /><img src=\"/upload/image/20160525/20160525163927_913.jpg\" alt=\"\" /><img src=\"/upload/image/20160525/20160525163932_131.jpg\" alt=\"\" />', null, '2016-05-25', '21', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('39', '生态柔玉米', '/chihaodian/../upload/1466730801733.png', '10斤', '48', '<img src=\"/upload/image/20160624/20160624091338_96.jpg\" alt=\"\" />', null, '2016-05-25', '21', '1', '0', '1');
INSERT INTO `tb_goods` VALUES ('40', '新西兰佳沛阳', '/chihaodian/../upload/1465724169981.png', '6个', '60', '<img src=\"/upload/image/20160526/20160526140644_568.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526140648_727.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526140652_405.jpg\" alt=\"\" />', null, '2016-05-26', '23', '0', '0', '1');
INSERT INTO `tb_goods` VALUES ('42', '泰国金枕榴莲', '/chihaodian/../upload/1465724197732.png', '约5-7斤', '109', '<img src=\"/upload/image/20160526/20160526141141_970.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526141146_445.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526141150_602.jpg\" alt=\"\" />', null, '2016-05-26', '23', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('43', '泰国金枕榴莲', '/chihaodian/../upload/1465724208122.png', '约3.5-4.9斤', '89', '<img src=\"/upload/image/20160526/20160526141311_610.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526141315_276.jpg\" alt=\"\" /><img src=\"/upload/image/20160526/20160526141319_949.jpg\" alt=\"\" />', null, '2016-05-26', '23', '0', '0', '1');
INSERT INTO `tb_goods` VALUES ('44', '香葱', '/chihaodian/../upload/1464245310066.png', '一斤', '0', '', null, '2016-05-26', null, null, '0', '2');
INSERT INTO `tb_goods` VALUES ('45', '西蓝花', '/chihaodian/../upload/1464245343050.png', '一斤', '0', '', null, '2016-05-26', null, null, '0', '2');
INSERT INTO `tb_goods` VALUES ('46', '西葫芦', '/chihaodian/../upload/1464245387566.png', '一斤', '0', '', null, '2016-05-26', null, null, '0', '2');
INSERT INTO `tb_goods` VALUES ('47', '豌豆苗', '/chihaodian/../upload/1464245419066.png', '一斤', '0', '', null, '2016-05-26', null, null, '0', '2');
INSERT INTO `tb_goods` VALUES ('48', '茼蒿', '/chihaodian/../upload/1464245453129.png', '一斤', '0', '', null, '2016-05-26', null, null, '0', '2');
INSERT INTO `tb_goods` VALUES ('49', '榻菜', '/chihaodian/../upload/1464245485582.png', '一斤', '0', '', null, '2016-05-26', null, null, '0', '2');
INSERT INTO `tb_goods` VALUES ('50', '蒜薹', '/chihaodian/../upload/1464245516050.png', '一斤', '0', '', null, '2016-05-26', null, null, '0', '2');
INSERT INTO `tb_goods` VALUES ('51', '生菜', '/chihaodian/../upload/1464245592332.png', '一斤', '0', '', null, '2016-05-26', null, null, '0', '2');
INSERT INTO `tb_goods` VALUES ('52', '青椒', '/chihaodian/../upload/1464245620769.png', '一斤', '0', '', null, '2016-05-26', null, null, '0', '2');
INSERT INTO `tb_goods` VALUES ('53', '青菜', '/chihaodian/../upload/1464245647957.png', '一斤', '0', '', null, '2016-05-26', null, null, '0', '2');
INSERT INTO `tb_goods` VALUES ('54', '巴西原装翅中', '/chihaodian/../upload/1464316350243.png', '1KG', '58', '<img src=\"/upload/image/20160601/20160601163307_898.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601163459_674.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164856_426.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164905_212.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164912_311.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164919_196.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164925_118.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164932_981.jpg\" alt=\"\" /><img src=\"/upload/image/20160601/20160601164938_196.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('55', '加拿大AAA级牛小排', '/chihaodian/../upload/1464316409415.png', '500g(3-4片）', '228', '<img src=\"/upload/image/20160606/20160606094353_270.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094401_308.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094418_609.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094427_103.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094435_408.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094442_489.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094449_579.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094456_406.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094504_811.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094512_875.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606094518_415.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('56', '加拿大AAA板腱牛排', '/chihaodian/../upload/1464319904220.png', '3-4片', '89', '<img src=\"/upload/image/20160606/20160606114256_204.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114304_437.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114310_628.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114316_861.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114321_756.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114326_99.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('57', '澳洲草饲牛仔骨 500g（6-8片）', '/chihaodian/../upload/1464319978611.png', '6-8片', '89', '<img src=\"/upload/image/20160606/20160606110603_342.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110610_827.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110616_482.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110626_702.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110632_714.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110638_473.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110651_500.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110656_605.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110703_722.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606110710_991.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('58', '肥牛卷 透明托盒装', '/chihaodian/../upload/1464318053841.png', ' 500g', '59', '<img src=\"/upload/image/20160606/20160606114831_626.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114837_63.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114842_346.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114847_370.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114852_206.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114857_629.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606114901_5.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('59', '澳洲牛尾', '/chihaodian/../upload/1464320071736.png', '500g', '58', '<img src=\"/upload/image/20160606/20160606115420_775.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115426_235.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115431_832.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115436_598.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115441_281.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115450_882.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115454_290.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115459_387.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115504_193.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115510_375.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115514_465.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115520_889.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606115535_489.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('60', '澳洲草饲牛腩块', '/chihaodian/../upload/1464318370545.png', '500g', '56', '<img src=\"/upload/image/20160606/20160606135919_524.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606135927_492.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140003_418.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140008_567.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140017_948.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140022_917.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140028_783.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140033_800.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140038_961.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140044_227.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140053_999.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140057_239.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140102_152.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', '1.0-1.2KG', '48', '<img src=\"/upload/image/20160606/20160606140430_427.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140435_145.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140440_760.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140444_391.jpg\" alt=\"\" /><img src=\"/upload/image/20160606/20160606140450_406.jpg\" alt=\"\" />', null, '2016-05-27', '22', '1', '0', '1');
INSERT INTO `tb_goods` VALUES ('62', '台湾红标老母鸡', '/chihaodian/../upload/1465888267174.png', '2.0kg', '168', '<img src=\"/chihaodian/../upload/image/20160606/20160606152309_200.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152309_515.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_670.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_793.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_374.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_428.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_638.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_336.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152310_816.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152311_153.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152311_364.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606152311_941.jpg\" alt=\"\" />', null, '2016-05-27', '22', '0', '0', '1');
INSERT INTO `tb_goods` VALUES ('63', '同仁堂十全大补台湾红标老母鸡', '/chihaodian/../upload/1464319011485.png', '2.0KG', '228', '<img src=\"/chihaodian/../upload/image/20160606/20160606153659_117.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_414.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_71.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_547.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_55.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_164.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_211.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_857.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_250.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153700_90.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153701_822.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160606/20160606153701_971.jpg\" alt=\"\" />', null, '2016-05-27', '22', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('64', '生态稻田土鸡蛋', '/chihaodian/../upload/1466479271070.png', '48枚', '96', '<img src=\"/upload/image/20160615/20160615091200_871.jpg\" alt=\"\" />', null, '2016-05-27', '22', '0', '0', '1');
INSERT INTO `tb_goods` VALUES ('65', '妃子笑荔枝', '/chihaodian/../upload/1465723952090.png', '1kg', '30', '<img src=\"/chihaodian/../upload/image/20160607/20160607142334_888.jpg\" alt=\"\" />', null, '2016-06-07', '23', '0', '0', '1');
INSERT INTO `tb_goods` VALUES ('66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', '500g', '21.9', '<img src=\"/upload/image/20160607/20160607144646_538.jpg\" alt=\"\" />', null, '2016-06-07', '23', '0', '0', '1');
INSERT INTO `tb_goods` VALUES ('67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', '1.5kg', '19.8', '<img src=\"/upload/image/20160608/20160608093755_855.jpg\" alt=\"\" />', null, '2016-06-08', '23', '1', '0', '1');
INSERT INTO `tb_goods` VALUES ('68', '非转基因黄豆', '/chihaodian/../upload/1465701002059.png', '500g', '10', '<img src=\"/chihaodian/../upload/image/20160612/20160612111019_687.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612111019_150.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612111019_516.jpg\" alt=\"\" />', null, '2016-06-12', '21', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('69', '生态菜籽油', '/chihaodian/../upload/1465717197584.png', '2.5L', '60', '<img src=\"/chihaodian/../upload/image/20160612/20160612155635_29.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612155636_501.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612155636_968.jpg\" alt=\"\" />', null, '2016-06-12', '21', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('70', '生态菜籽油', '/chihaodian/../upload/1465718279680.png', '5L', '115', '<img src=\"/chihaodian/../upload/image/20160612/20160612155912_633.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612155912_584.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160612/20160612155912_783.jpg\" alt=\"\" />', null, '2016-06-12', '21', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('71', '生态黄金耳', '/chihaodian/../upload/1466474419051.png', '1袋', '12', '<img src=\"/upload/image/20160621/20160621100036_686.jpg\" alt=\"\" />', null, '2016-06-12', '21', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', '2.25kg-2.5kg', '39.8', '<img src=\"/upload/image/20160613/20160613152642_827.jpg\" alt=\"\" />', null, '2016-06-13', '23', '1', '0', '1');
INSERT INTO `tb_goods` VALUES ('73', '蔬菜会员卡年卡', '/chihaodian/../upload/1465977042091.png', '1年/52次 1-2人 每次4斤', '1588', '<img src=\"/chihaodian/../upload/image/20160615/20160615155134_9.jpg\" alt=\"\" /><img src=\"/chihaodian/../upload/image/20160615/20160615155135_852.jpg\" alt=\"\" />', null, '2016-06-15', '1', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('74', '冬虫夏草（鲜草）', '/chihaodian/../upload/1466479379008.png', '20条', '850', '<img src=\"/upload/image/20160621/20160621112332_761.jpg\" alt=\"\" />', null, '2016-06-21', '25', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('75', '冬虫夏草（鲜草）', '/chihaodian/../upload/1466479445305.png', '50条', '1998', '<img src=\"/upload/image/20160621/20160621112452_333.jpg\" alt=\"\" />', null, '2016-06-21', '25', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('76', '冬虫夏草（鲜草）', '/chihaodian/../upload/1466479517055.png', '100条', '3880', '<img src=\"/upload/image/20160621/20160621112538_490.jpg\" alt=\"\" />', null, '2016-06-21', '25', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('77', '山竹', '/chihaodian/../upload/1466736000313.png', '1个', '0.1', '<img src=\"/upload/image/20160624/20160624104011_926.jpg\" alt=\"\" />', null, '2016-06-24', '23', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('78', '仙桃香粳米 50斤', '/chihaodian/../upload/1466818615476.png', '50斤', '180', '<img src=\"/upload/image/20160625/20160625093709_160.jpg\" alt=\"\" />', null, '2016-06-25', '21', null, '0', '1');
INSERT INTO `tb_goods` VALUES ('79', '123', '/chihaodian/../upload/1467775704623.png', '213', '123', '<p>\n	asdasdsad\n</p>\n<p>\n	<br />\n</p>\n<p>\n	asd asdsadsad\n</p>', null, '2016-07-06', '21', '1', '0', '1');

-- ----------------------------
-- Table structure for `tb_menu`
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_price` float DEFAULT NULL,
  `goods_detail` text,
  `add_time` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES ('1', '菜单菜品1', '/chihaodian/upload/1457680109579.png', '150', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('2', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('3', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('4', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('5', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('6', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('7', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('8', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('9', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('10', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('11', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('12', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('13', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('14', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('15', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('16', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('17', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('18', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('19', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('20', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('21', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');

-- ----------------------------
-- Table structure for `tb_order`
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(255) DEFAULT NULL,
  `goods_name` text,
  `goods_img` text,
  `goods_spe` varchar(255) DEFAULT NULL,
  `goods_price` varchar(255) DEFAULT NULL,
  `goods_num` varchar(255) DEFAULT NULL,
  `goods_total` float DEFAULT NULL,
  `goods_total_num` int(11) DEFAULT NULL,
  `addr_name` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `receive` varchar(255) DEFAULT NULL COMMENT '收货方式，如果为自提点则记录自提点，如果是快递则记录收货地址',
  `cps_id` int(11) DEFAULT NULL,
  `cps_name` varchar(255) DEFAULT NULL,
  `cps_price` float DEFAULT NULL,
  `oppen_id` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0待付款，1待发货，2已发货',
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('47', '3', '西瓜', '/chihaodian/../upload/1460216501594.png', null, '0.1', '1', '0.1', '1', '武蒙 13800138000 1111', '鼓楼1', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-11 08:07:46', '0', null);
INSERT INTO `tb_order` VALUES ('48', '3,-=1', '西瓜,-=西红柿1', '/chihaodian/../upload/1460216501594.png,-=/chihaodian/../upload/1457923339965.png', null, '0.1,-=200.0', '1,-=1', '200.12', '2', '123 123 1234', '', null, '', '0', 'oyqTtw3DsY4PXg1wVFfQp8ewOKh8', '2016-04-11 21:23:37', '0', null);
INSERT INTO `tb_order` VALUES ('49', '3,-=1', '西瓜,-=西红柿1', '/chihaodian/../upload/1460216501594.png,-=/chihaodian/../upload/1457923339965.png', null, '0.1,-=200.0', '1,-=1', '200.12', '2', '武蒙 13800138000 1111', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-11 21:34:21', '0', null);
INSERT INTO `tb_order` VALUES ('50', '3,-=1', '西瓜,-=西红柿1', '/chihaodian/../upload/1460381914241.png,-=/chihaodian/../upload/1457923339965.png', null, '0.1,-=200.0', '1,-=1', '200.12', '2', '武蒙 13800138000 1111', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-11 21:39:26', '0', null);
INSERT INTO `tb_order` VALUES ('51', '3,-=1', '西瓜,-=西红柿1', '/chihaodian/../upload/1460381914241.png,-=/chihaodian/../upload/1457923339965.png', null, '0.1,-=200.0', '1,-=1', '200.12', '2', '武蒙 13800138000 1111', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-11 21:41:01', '0', null);
INSERT INTO `tb_order` VALUES ('52', '3,-=1', '西瓜,-=西红柿1', '/chihaodian/../upload/1460381914241.png,-=/chihaodian/../upload/1457923339965.png', null, '0.1,-=200.0', '1,-=1', '200.12', '2', '武蒙 13800138000 1111', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-11 21:59:15', '0', null);
INSERT INTO `tb_order` VALUES ('53', '3', '西瓜', '/chihaodian/../upload/1460381914241.png', null, '0.1', '1', '0.12', '1', '武蒙 13800138000 1111', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-12 23:38:36', '0', null);
INSERT INTO `tb_order` VALUES ('54', '3', '西瓜', '/chihaodian/../upload/1460381914241.png', null, '0.1', '1', '0.12', '1', '常振伟 13357823304 55', '', null, '', '0', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', '2016-04-13 16:26:19', '0', null);
INSERT INTO `tb_order` VALUES ('55', '1', '西红柿1', '/chihaodian/../upload/1457923339965.png', null, '200.0', '4', '800', '4', '常振伟 13357823304 55', '', null, '', '0', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', '2016-04-13 16:30:06', '0', null);
INSERT INTO `tb_order` VALUES ('56', '3', '西瓜', '/chihaodian/../upload/1460381914241.png', null, '0.1', '1', '0.1', '1', '常振伟 13357823304 55', '玄武区1', null, '', '0', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', '2016-04-13 16:36:27', '0', null);
INSERT INTO `tb_order` VALUES ('57', '3', '西瓜', '/chihaodian/../upload/1460381914241.png', null, '0.1', '1', '0.12', '1', '哈 11111 111111', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-14 17:51:54', '0', null);
INSERT INTO `tb_order` VALUES ('59', '3', '西瓜', '/chihaodian/../upload/1460381914241.png', null, '0.1', '1', '0.1', '1', '哈 11111 111111', '玄武区3', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-15 14:16:33', '2', null);
INSERT INTO `tb_order` VALUES ('61', '4', '????', '/chihaodian/../upload/1458972205809.png', null, '0.0', '1', '0.02', '1', '哈 11111 111111', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-21 17:44:37', '0', null);
INSERT INTO `tb_order` VALUES ('63', '3', '西瓜', '/chihaodian/../upload/1460381914241.png', null, '0.1', '15', '1.5', '15', '哈 11111 111111', '玄武区1', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-27 07:06:11', '0', null);
INSERT INTO `tb_order` VALUES ('64', '1', '西红柿1', '/chihaodian/../upload/1457923339965.png', null, '200.0', '8', '1600', '8', '哈 11111 111111', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-27 07:07:10', '0', null);
INSERT INTO `tb_order` VALUES ('65', '3', '西瓜', '/chihaodian/../upload/1460381914241.png', null, '0.1', '1', '0.1', '1', '哈 11111 111111', '玄武区1', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-27 20:45:29', '0', null);
INSERT INTO `tb_order` VALUES ('66', '3', '西瓜', '/chihaodian/../upload/1460381914241.png', null, '0.1', '1', '0.1', '1', '哈 11111 111111', '玄武区1', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-04-28 10:09:43', '2', null);
INSERT INTO `tb_order` VALUES ('67', '16,-=18', '特小凤西瓜,-=123', '/chihaodian/../upload/1461913791357.png,-=/chihaodian/../upload/1461908769781.png', null, '18.9,-=123.0', '1,-=1', '141.9', '2', '我的 13800138000 江苏 南京市 市辖区 123', '玄武区1', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-03 15:02:55', '0', null);
INSERT INTO `tb_order` VALUES ('68', '16,-=18', '特小凤西瓜,-=123', '/chihaodian/../upload/1461913791357.png,-=/chihaodian/../upload/1462258643458.png', null, '0.0,-=123.0', '1,-=1', '123.02', '2', '你好high糊涂推拿Jul图兔兔图图 13800138000    好好好好好好好好好好好好好好好好好好好好好好好好好', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-04 10:44:24', '0', null);
INSERT INTO `tb_order` VALUES ('70', '18', '123', '/chihaodian/../upload/1462258643458.png', null, '123.0', '1', '123.02', '1', '你好high糊涂推拿Jul图兔兔图图 138001380', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-04 11:49:57', '0', null);
INSERT INTO `tb_order` VALUES ('71', '18', '吃号店精品推荐', '/chihaodian/../upload/1462258643458.png', null, '0.01', '1', '0.01', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789', '玄武区1', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-06 16:24:57', '2', null);
INSERT INTO `tb_order` VALUES ('72', '18', '吃号店精品推荐', '/chihaodian/../upload/1462258643458.png', null, '0.01', '1', '0.01', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789', '玄武区1', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-06 16:39:27', '2', null);
INSERT INTO `tb_order` VALUES ('75', '18', '吃号店精品推荐', '/chihaodian/../upload/1462258643458.png', null, '0.01', '1', '0.03', '1', '你好high糊涂推拿Jul图兔兔图图 13800138000 江苏 南京市 玄武区 好好好好好好好好好好好好好好好好好好好好好好好好好', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-09 17:19:14', '0', null);
INSERT INTO `tb_order` VALUES ('76', '18', '吃号店精品推荐', '/chihaodian/../upload/1462258643458.png', null, '0.01', '1', '0.03', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-09 17:20:52', '0', null);
INSERT INTO `tb_order` VALUES ('77', '18', '吃号店精品推荐', '/chihaodian/../upload/1462258643458.png', null, '0.01', '15', '-4.85', '15', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '鼓楼区南京汉中门大街沟通100服务店', '44', '端午节优惠券', '5', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-10 22:26:26', '0', null);
INSERT INTO `tb_order` VALUES ('78', '27,-=28,-=26', '海南木瓜,-=伦晚橙,-=东方蜜1号', '/chihaodian/../upload/1463110264179.png,-=/chihaodian/../upload/1463192197542.png,-=/chihaodian/../upload/1463110161194.png', null, '25.9,-=32.9,-=29.9', '2,-=1,-=1', '114.6', '4', '雷锋 13184235048 江苏 南京市 江宁区 水岸明珠3', '鼓楼区南京汉中门大街沟通100服务店', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-16 21:26:38', '0', null);
INSERT INTO `tb_order` VALUES ('79', '19,-=22,-=23', '放心蔬菜,-=放心蔬菜会员半年卡 每次9斤,-=放心蔬菜会员年卡 每次6斤', '/chihaodian/../upload/1463108870113.png,-=/chihaodian/../upload/1463034781289.png,-=/chihaodian/../upload/1463035150649.png', null, '360.0,-=2900.0,-=3600.0', '3,-=1,-=6', '25580', '10', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '鼓楼区南京汉中门大街沟通100服务店', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-19 23:56:33', '0', null);
INSERT INTO `tb_order` VALUES ('80', '29,-=30', '四川柠檬,-=缅甸黄河蜜', '/chihaodian/../upload/1463473103033.png,-=/chihaodian/../upload/1463473177830.png', null, '7.9,-=18.9', '1,-=1', '32.8', '2', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-23 13:22:05', '0', null);
INSERT INTO `tb_order` VALUES ('81', '22', '放心蔬菜会员半年卡 每次9斤', '/chihaodian/../upload/1463034781289.png', null, '2900.0', '1', '2895', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '鼓楼区南京汉中门大街沟通100服务店', '48', '端午节优惠券', '5', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-23 13:48:01', '0', null);
INSERT INTO `tb_order` VALUES ('82', '24', '放心蔬菜会员年卡 每次9斤', '/chihaodian/../upload/1463035381900.png', null, '5300.0', '1', '5300', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-24 14:11:28', '0', null);
INSERT INTO `tb_order` VALUES ('83', '19', '放心蔬菜', '/chihaodian/../upload/1463108870113.png', null, '360.0', '1', '350', '1', '关机了 111111 江苏 南京市 白下区 112', '', '53', '新用户领券', '10', 'oyqTtw2gjY17ntKIyba_i48EB26A', '2016-05-25 10:37:05', '0', null);
INSERT INTO `tb_order` VALUES ('84', '16', '特小凤西瓜', '/chihaodian/../upload/1461913791357.png', null, '0.0', '1', '6', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-25 14:00:20', '0', null);
INSERT INTO `tb_order` VALUES ('85', '31', '麒麟西瓜', '/chihaodian/../upload/1463473271392.png', null, '26.9', '1', '32.9', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', 'undefined', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-25 14:01:35', '0', null);
INSERT INTO `tb_order` VALUES ('88', '30', '缅甸黄河蜜', '/chihaodian/../upload/1463473177830.png', null, '18.9', '1', '24.9', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-25 14:10:26', '0', null);
INSERT INTO `tb_order` VALUES ('89', '30', '缅甸黄河蜜', '/chihaodian/../upload/1463473177830.png', null, '18.9', '1', '24.9', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-25 14:11:28', '0', null);
INSERT INTO `tb_order` VALUES ('90', '33', '烟台红富士80脆', '/chihaodian/../upload/1463473499830.png', null, '4.8', '3', '10.4', '3', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', '54', '新用户领券', '10', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-05-25 14:12:23', '2', null);
INSERT INTO `tb_order` VALUES ('91', '44', '香葱', '/chihaodian/../upload/1464245310066.png', null, '0.0', '5', '0', '5', '关机了 111111 江苏 南京市 白下区 112', '秦淮区南京移动火瓦巷指定专营店', null, '', '0', 'oyqTtw2gjY17ntKIyba_i48EB26A', '2016-05-26 17:42:04', '2', null);
INSERT INTO `tb_order` VALUES ('92', '19', '蔬菜会员月卡', '/chihaodian/../upload/1463108870113.png', null, '360.0', '1', '360', '1', '楚荡 18977106731 广西 南宁市 宾阳县 永武街16号', '', null, '', '0', 'oyqTtwx22xt4J9oujYfC3wjRD5Uk', '2016-06-03 13:15:08', '0', null);
INSERT INTO `tb_order` VALUES ('93', '40', '新西兰佳沛阳光金果', '/chihaodian/../upload/1464249541340.png', null, '60.0', '1', '60', '1', '楚荡 18977106731 广西 南宁市 宾阳县 永武街16号', '', null, '', '0', 'oyqTtwx22xt4J9oujYfC3wjRD5Uk', '2016-06-03 13:18:30', '0', null);
INSERT INTO `tb_order` VALUES ('94', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '39.8', '1', '晨 18913834441 江苏 南京市 玄武区 大石桥', '玄武区丹凤街新街口政务大厦', null, '', '0', 'oyqTtw_d252V55C89XiqmkGrRpHM', '2016-06-13 16:50:46', '0', null);
INSERT INTO `tb_order` VALUES ('95', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '3', '125.4', '3', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-06-13 17:12:49', '-6', null);
INSERT INTO `tb_order` VALUES ('96', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '39.8', '1', '李祥 15005151906 江苏 南京市 玄武区 卫巷29—2,80手机', '玄武区丹凤街新街口政务大厦', null, '', '0', 'oyqTtw0p_NhAaOjZH1OOG7Npg9FA', '2016-06-15 09:56:44', '2', null);
INSERT INTO `tb_order` VALUES ('97', '39', '生态揉玉米', '/chihaodian/../upload/1464165603582.png', null, '48.0', '1', '38', '1', '胡翀宇 13851759927 江苏 南京市 玄武区 大石桥19号', '玄武区丹凤街新街口政务大厦', '59', '新手优惠', '10', 'oyqTtw91DW4dmYULSdL7n-4-G9BY', '2016-06-15 10:45:01', '2', null);
INSERT INTO `tb_order` VALUES ('98', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '54', '1', '雷锋 13184235048 江苏 南京市 江宁区 水岸明珠3', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-06-15 14:17:13', '0', null);
INSERT INTO `tb_order` VALUES ('99', '68', '非转基因黄豆', '/chihaodian/../upload/1465701002059.png', null, '10.0', '1', '0', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '玄武区丹凤街新街口政务大厦', '56', '新手优惠', '10', 'oyqTtw2gjY17ntKIyba_i48EB26A', '2016-06-15 16:51:12', '2', 'haoma13901581204+');
INSERT INTO `tb_order` VALUES ('100', '68', '非转基因黄豆', '/chihaodian/../upload/1465701002059.png', null, '10.0', '1', '0', '1', '晨 18913834441 江苏 南京市 玄武区 大石桥', '玄武区丹凤街新街口政务大厦', '60', '新手优惠', '10', 'oyqTtw_d252V55C89XiqmkGrRpHM', '2016-06-15 17:22:29', '2', null);
INSERT INTO `tb_order` VALUES ('101', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', null, '19.8', '1', '25.8', '1', 'robbin 18301985940 江苏 南京市 玄武区 柳州东路', '', null, '', '0', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', '2016-06-16 21:03:17', '0', null);
INSERT INTO `tb_order` VALUES ('102', '66,-=65', '澳大利亚无籽红提,-=妃子笑荔枝', '/chihaodian/../upload/1465724148153.png,-=/chihaodian/../upload/1465723952090.png', null, '21.9,-=30.0', '1,-=1', '57.9', '2', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-06-20 14:54:53', '0', '哈哈');
INSERT INTO `tb_order` VALUES ('103', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-06-20 14:56:08', '0', '');
INSERT INTO `tb_order` VALUES ('104', '61', '台湾土鸡仔', '/chihaodian/../upload/1465887400031.png', null, '48.0', '1', '54', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-06-21 10:09:55', '0', '');
INSERT INTO `tb_order` VALUES ('105', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '45.8', '1', '武蒙 13800138000 江苏 南京市 玄武区 雨润大街123456789好好好好好好好好好好哈哈哈', '', null, '', '0', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '2016-06-21 10:10:34', '0', '');
INSERT INTO `tb_order` VALUES ('106', '20', '蔬菜会员月卡', '/chihaodian/../upload/1465975621288.png', null, '520.0', '1', '520', '1', 'test 13524525133 江苏 南京市 玄武区 南京', '', null, '', '0', 'oyqTtw2vfPMrtQczREkZYaQmMqt0', '2016-06-21 13:47:53', '0', '');
INSERT INTO `tb_order` VALUES ('107', '70,-=68', '生态菜籽油,-=非转基因黄豆', '/chihaodian/../upload/1465718279680.png,-=/chihaodian/../upload/1465701002059.png', null, '115.0,-=10.0', '1,-=1', '125', '2', '你 18516187204 江苏 南京市 玄武区 这', '', null, '', '0', 'oyqTtw3-pP203p605MLi9iX1utyo', '2016-06-21 14:19:42', '0', '');
INSERT INTO `tb_order` VALUES ('108', '72', '新疆西州蜜', '/chihaodian/../upload/1465802535035.png', null, '39.8', '1', '39.8', '1', '陈好 13815875144 江苏 南京市 秦淮区 汉中黄金时间时间', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'oyqTtw4Fy9Fn31QnZKfd91w9e6jw', '2016-06-21 15:56:59', '0', '就堵堵堵');
INSERT INTO `tb_order` VALUES ('109', '67', '菲律宾大香蕉', '/chihaodian/../upload/1465723850965.png', null, '19.8', '1', '25.8', '1', '看看 13357823304 江苏 南京市 玄武区 做最去外婆哦破', '', null, '', '0', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', '2016-06-22 15:28:35', '0', '');
INSERT INTO `tb_order` VALUES ('110', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'oyqTtw2gjY17ntKIyba_i48EB26A', '2016-06-24 11:17:38', '2', '88888888');
INSERT INTO `tb_order` VALUES ('111', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '鼓楼区null', null, '', '0', 'oyqTtw2gjY17ntKIyba_i48EB26A', '2016-06-24 11:18:25', '0', '12345678');
INSERT INTO `tb_order` VALUES ('112', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '秦淮区南京移动升州路营业厅', null, '', '0', 'oyqTtw2gjY17ntKIyba_i48EB26A', '2016-06-24 11:18:43', '2', '12345678');
INSERT INTO `tb_order` VALUES ('113', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '玄武区南京移动明故宫沟通100服务店', null, '', '0', 'oyqTtw2gjY17ntKIyba_i48EB26A', '2016-06-24 11:19:24', '2', '12352698');
INSERT INTO `tb_order` VALUES ('114', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '尹翔 18260009902 江苏 南京市 玄武区 南京市新街口政务大厦北楼306', '建邺区南京移动河西万达营业厅', null, '', '0', 'oyqTtw2gjY17ntKIyba_i48EB26A', '2016-06-24 11:20:15', '2', '54269854');
INSERT INTO `tb_order` VALUES ('115', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '12312 3123123123123 江苏 南京市 玄武区 123123123', '', null, '', '0', 'oyqTtw7EM8Dfe5FtvSXZTP3JpSAI', '2016-06-24 23:28:33', '0', '');
INSERT INTO `tb_order` VALUES ('116', '66', '澳大利亚无籽红提', '/chihaodian/../upload/1465724148153.png', null, '21.9', '1', '27.9', '1', '12312 3123123123123 江苏 南京市 玄武区 123123123', '', null, '', '0', 'oyqTtw7EM8Dfe5FtvSXZTP3JpSAI', '2016-06-24 23:28:34', '0', '');
INSERT INTO `tb_order` VALUES ('117', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '6.1', '1', '哈 13800138000 江苏 南京市 市辖区 1', '', null, '', '0', 'o9ejSvlPRAOP-28RWvhZiO2gK7yw', '2016-06-29 15:25:28', '0', '');
INSERT INTO `tb_order` VALUES ('118', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '哈 13800138000 江苏 南京市 市辖区 1', '', null, '', '0', 'o9ejSvlPRAOP-28RWvhZiO2gK7yw', '2016-06-29 15:35:05', '0', '');
INSERT INTO `tb_order` VALUES ('119', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '哈 13800138000 江苏 南京市 市辖区 1', '', null, '', '0', 'o9ejSvlPRAOP-28RWvhZiO2gK7yw', '2016-06-29 15:56:46', '0', null);
INSERT INTO `tb_order` VALUES ('120', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '张三 13236496441 江苏 南京市 市辖区 123456', '', null, '', '0', 'o9ejSvmhpiO9JomdofbDizDQvHe8', '2016-06-29 16:07:30', '-6', 'test');
INSERT INTO `tb_order` VALUES ('121', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '哈 13800138000 江苏 南京市 市辖区 1', '', null, '', '0', 'o9ejSvlPRAOP-28RWvhZiO2gK7yw', '2016-06-29 16:10:57', '1', null);
INSERT INTO `tb_order` VALUES ('122', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '张三 13236496441 江苏 南京市 市辖区 123456', '', null, '', '0', 'o9ejSvmhpiO9JomdofbDizDQvHe8', '2016-06-29 16:49:59', '2', 'test');
INSERT INTO `tb_order` VALUES ('123', '39', '生态柔玉米', '/chihaodian/../upload/1466730801733.png', null, '48.0', '1', '48', '1', '宋金华 15901643801 江苏 南京市 市辖区 hhh', '', null, '', '0', 'o9ejSviJrWFydDdDdyENatTqumLc', '2016-06-29 20:41:19', '0', null);
INSERT INTO `tb_order` VALUES ('124', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '张三 13236496441 江苏 南京市 市辖区 123456', '', null, '', '0', 'o9ejSvmhpiO9JomdofbDizDQvHe8', '2016-06-30 13:25:51', '2', '');
INSERT INTO `tb_order` VALUES ('126', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', 'hhh 13712224211 江苏 南京市 市辖区 yyyy', '', null, '', '0', 'o9ejSvmhpiO9JomdofbDizDQvHe8', '2016-07-13 16:03:19', '2', null);
INSERT INTO `tb_order` VALUES ('127', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '张三 13236496441 江苏 南京市 市辖区 123456', '', null, '', '0', 'o9ejSvmhpiO9JomdofbDizDQvHe8', '2016-07-15 14:37:19', '0', '');
INSERT INTO `tb_order` VALUES ('128', '', '', '', null, '', '', '0', '0', '张三 13236496441 江苏 南京市 市辖区 123456', '鼓楼区南京移动汉中门大街沟通100服务店', null, '', '0', 'o9ejSvmhpiO9JomdofbDizDQvHe8', '2016-07-15 14:38:06', '-5', '');
INSERT INTO `tb_order` VALUES ('129', '', '', '', null, '', '', '0', '0', 'Gghh 12233 江苏 南京市 秦淮区 Hjj', '', null, '', '0', 'o9ejSvl3cTL_JBHWfXJQd_1_ZPFk', '2016-07-15 14:38:14', '2', '');
INSERT INTO `tb_order` VALUES ('130', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', 'Gghh 12233 江苏 南京市 秦淮区 Hjj', '', null, '', '0', 'o9ejSvl3cTL_JBHWfXJQd_1_ZPFk', '2016-07-15 14:39:29', '0', '');
INSERT INTO `tb_order` VALUES ('131', '', '', '', null, '', '', '0.1', '0', '张三 13236496441 江苏 南京市 市辖区 123456', '', null, '', '0', 'o9ejSvmhpiO9JomdofbDizDQvHe8', '2016-07-15 14:39:59', '0', '');
INSERT INTO `tb_order` VALUES ('132', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '张三 13236496441 江苏 南京市 市辖区 123456', '', null, '', '0', 'o9ejSvmhpiO9JomdofbDizDQvHe8', '2016-07-22 09:18:38', '1', '');
INSERT INTO `tb_order` VALUES ('133', '78', '仙桃香粳米 50斤', '/chihaodian/../upload/1466818615476.png', null, '180.0', '1', '180', '1', '111 15151811111 江苏 南京市 玄武区 关键时刻', '', null, '', '0', 'o4m-hw9zFDVWLIBMlE8NhU30UKkQ', '2016-07-30 18:03:05', '0', '111');
INSERT INTO `tb_order` VALUES ('134', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '111 15151811111 江苏 南京市 玄武区 关键时刻', '', null, '', '0', 'o4m-hw9zFDVWLIBMlE8NhU30UKkQ', '2016-07-30 22:44:21', '1', '123');
INSERT INTO `tb_order` VALUES ('135', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '111 15151811111 江苏 南京市 玄武区 关键时刻', '', null, '', '0', 'o4m-hw9zFDVWLIBMlE8NhU30UKkQ', '2016-08-01 22:27:12', '1', '123');
INSERT INTO `tb_order` VALUES ('136', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '111 15151811111 江苏 南京市 玄武区 关键时刻', '', null, '', '0', 'o4m-hw9zFDVWLIBMlE8NhU30UKkQ', '2016-08-02 11:06:37', '0', '111');
INSERT INTO `tb_order` VALUES ('137', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '111 15151811111 江苏 南京市 玄武区 关键时刻', '', null, '', '0', 'o4m-hw9zFDVWLIBMlE8NhU30UKkQ', '2016-08-02 14:12:35', '0', '111');
INSERT INTO `tb_order` VALUES ('138', '77', '山竹', '/chihaodian/../upload/1466736000313.png', null, '0.1', '1', '0.1', '1', '111 15151811111 江苏 南京市 玄武区 关键时刻', '', null, '', '0', 'o4m-hw9zFDVWLIBMlE8NhU30UKkQ', '2016-08-02 14:27:42', '0', '111');

-- ----------------------------
-- Table structure for `tb_order2`
-- ----------------------------
DROP TABLE IF EXISTS `tb_order2`;
CREATE TABLE `tb_order2` (
  `ord_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` float DEFAULT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `cps_id` int(11) DEFAULT NULL COMMENT '优惠券id、',
  `cps_name` varchar(255) DEFAULT NULL COMMENT '优惠券名称',
  `cps_price` float DEFAULT NULL COMMENT '优惠券价格',
  `goods_total` float DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order2
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_search`
-- ----------------------------
DROP TABLE IF EXISTS `tb_search`;
CREATE TABLE `tb_search` (
  `sec_id` int(11) NOT NULL AUTO_INCREMENT,
  `sec_name` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`sec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_search
-- ----------------------------
INSERT INTO `tb_search` VALUES ('1', '香蕉1', '1', '0');
INSERT INTO `tb_search` VALUES ('2', '苹果', '2', '1');
INSERT INTO `tb_search` VALUES ('3', '红标鸡', '0', '1');
INSERT INTO `tb_search` VALUES ('4', '香稻米', '0', '1');
INSERT INTO `tb_search` VALUES ('5', '土鸡蛋', '0', '1');
INSERT INTO `tb_search` VALUES ('6', '蔬菜卡', '0', '1');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `oppen_id` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL COMMENT '账号手机号',
  `realname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) DEFAULT NULL,
  `head_img` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `area_name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `member_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`oppen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('4', 'oyqTtw3DsY4PXg1wVFfQp8ewOKh8', '', null, null, null, '2016-04-11', '37', '鼓楼2', '1', null);
INSERT INTO `tb_user` VALUES ('5', 'oyqTtw2gjY17ntKIyba_i48EB26A', '', '尹翔', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDr5ibdIjO4rX8U4UDVE3Xf1WFAPcYw5Xqzd3phekO1be8j8fCjku6CVwvKkS3iaN9v8Q5uU3iauOdpA/0', '2016-04-11', '36', '南京汉中门大街沟通100服务店', '1', '');
INSERT INTO `tb_user` VALUES ('6', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', '', 'changzhenwei', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLEb7ib78No0HnFF2wEXaVnicBMwOvmeVFxuy4hOlSCjXLeeia42glF84mMCibmrW0ebM6TgCUqYB8nJb/0', '2016-04-13', '39', '玄武区1', '1', '');
INSERT INTO `tb_user` VALUES ('8', 'oyqTtwxQ7MQgfoqMwVd8mj03MyQQ', '', null, null, null, '2016-04-20', '36', '鼓楼1', '1', null);
INSERT INTO `tb_user` VALUES ('9', 'oyqTtw96SNP2q4ZZxcnIuVj7sYNk', '', '阿朱', null, 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLD94uicFLQ9Dmt6icfGDoop5lxH9sdiaLs3xocHC9wOhzddYTZ0T7K1fBTicN4rrGDpUclTJCuXia21ofHW2eFjer6O77A3HFWMn3bE/0', '2016-04-26', '39', '玄武区1', '1', '2016-05-25');
INSERT INTO `tb_user` VALUES ('10', 'oyqTtw1HH95lrkd5GJwqusVT6z5A', '', null, null, null, '2016-04-29', '36', '鼓楼1', '1', null);
INSERT INTO `tb_user` VALUES ('11', 'oyqTtw8UGbJh7XLMr1s5tSLrC2io', '', '乀_-Sherry', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxlZVicEmK4Jz87E2pGelZ0uxP1WoMotQI70mnPuF1ib3p2jRSeWHLBpXreqFibDqLDMpAM0qPFKRx15/0', '2016-05-06', '36', '鼓楼1', '1', null);
INSERT INTO `tb_user` VALUES ('12', 'oyqTtw_d252V55C89XiqmkGrRpHM', '', 'Rosarin*', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxmAAsZZI5Sr26AaDeyveYrGMTM5omicPsJp3zEuE7kj2tqBbHBSlyF54XvA2ArrEq90Aqb6ENEicd1/0', '2016-05-06', '36', '鼓楼1', '1', null);
INSERT INTO `tb_user` VALUES ('13', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '', 'wum', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn0aoSDNlW4dEib1Cmy66JZfon7BW6gtc1yBldTU7JDRe5SDcib90otODEJ9JqOQNjMaRpyAcSvf9Us/0', '2016-05-06', '36', '南京汉中门大街沟通100服务店', '1', '2016-06-08');
INSERT INTO `tb_user` VALUES ('14', 'oyqTtw3i2cte30LSHsGrXAkXVxqE', '', null, null, null, '2016-05-10', '42', '南京升州路营业厅', '1', null);
INSERT INTO `tb_user` VALUES ('15', 'oyqTtwzgJl31fSxOeeyny-ASSYQ4', '', null, null, null, '2016-05-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('16', 'oyqTtw1A-aDwocImx_r01EG0MioY', '', null, null, null, '2016-05-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('17', 'oyqTtw_dPj4Ne9iKxO-S2uK9tGkE', '', '吃号店大掌柜', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5ia4wIuzuiaszUibU71nMDFjfxUzjmbxhzb6kmuoYxlLVPInRJ9saE6q3iabEibvs37iaT9icuy4FwKXW9Q/0', '2016-05-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('18', 'oyqTtw3UjQfx_MINSCnQXbmAPqpY', '', null, null, null, '2016-05-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('19', 'oyqTtw3qfVPOKbbdt6v1hHiTVF1U', '', null, null, null, '2016-05-23', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('20', 'oyqTtw1TyV2TRmTIVeF1Z3R3wqaw', '', '胡哥', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn1yvHVIibexDJjcVXqicSmmWpyOuxw5Xiahuyia6c6icScfsDBv5PI6iaEBm3t9mmXKUHYMibHyUstBRgaib/0', '2016-05-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('21', 'oyqTtw_8nBavm1j7aPJwKlic_oqw', '', '夏日凉橙', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QlCS2lTGv7F7gA9B1NXiazYWSb8Pz6X1BYAycGE0lRCSDJnMiasNbxqVty4xRC5Mkpc07QAKoWNXGv/0', '2016-05-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('22', 'oyqTtwwPQXjq5CcUhNuDg-LMzN1A', '', '勐子', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM490yIClsWPyNYHLA0BQOR4Sk7icB9Snic1ZNwdSkZp0YMkq6PCx4ujHwMibcJkuWqmuWJOdwnU1nWJqsLIye0IRdiavKxcXAOr1yo/0', '2016-05-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('23', 'oyqTtw0mBWl6V0bqU-xD5-_vzuiY', '', '陈雪成', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxsS1YN5OIQEFzm4TekpwnYJdnMaaPicy0gLZ5hhicFEPyL4FakXo7DJG4LKZgcoUOFQ5XYwchdv1vK/0', '2016-05-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('24', 'oyqTtw9Rx04TEd8pVCaVXxNFvRDw', '', '姚瑾', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKWvAqK7ibqjicHWazmyBvssrbkTtFG1mEXQEdG8SiaAoMXnALliad0jwSHt7s1Vd7mh4D6fZGlANetibw/0', '2016-05-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('25', 'oyqTtw91DW4dmYULSdL7n-4-G9BY', '', '豆娘', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLGh8UD3J3I5GCmliaTcBBf54r827vvGoxNPUPSia0asRHRR9k5aSs83JE4wU9bF0rnwVO2LMmMMl9g/0', '2016-06-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('26', 'oyqTtwx22xt4J9oujYfC3wjRD5Uk', '', null, null, null, '2016-06-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('27', 'oyqTtw5jkAu9hSIYZUpyqylejx_8', '', 'angel', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIcFdm4G4fEaQRb5YoQPfupTobpR8z1wQwSlJGCnIiaft9o3rxHwFkRIcka8yO5VPCMRH7tv7Hic8hbgTFu0aicm6Y1Dooia7fafibE/0', '2016-06-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('28', 'oyqTtw_SHoOKbpNJoF6fU-vfXxFY', '', '→_→^o^⊙ω⊙(ง •̀_•́)ง', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65Qhs01vSPTts4kmTjEtTM5Cdicd82JFsj8TuhbWg1NHIB49B7tokiajbCmYu3dHIFiaPez6zfvD1GSeM/0', '2016-06-08', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('29', 'oyqTtw0p_NhAaOjZH1OOG7Npg9FA', '', '如果还有明天', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBSCGg65m04jn7RYIC6SsBB4WZ9fPQqBxd7QXOibn0HiaqYOa2ibMt1W9D7SPFoFRXUMejiaIQPNiahRQygkdEo0UOQFv/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('30', 'oyqTtw7f1lYZFlKdCF5VAHePqcxI', '', '王博', null, 'http://wx.qlogo.cn/mmopen/iahdQicCC5VBTbibyLs0XWpGVQk6QDKkuPvt8mJrn7W7Fgp0nTKjchS0ELYDiawLr4yiaTxJMYlZ3YDuWxswibWEuxjw/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('31', 'oyqTtw4N1B1s_rd4bJyLdfAfNGd8', '', '又变凹凸曼', null, 'http://wx.qlogo.cn/mmopen/xLj91RZ6kpDMtE6INGZUOOuYw6wOpVCJvibXeDPZVtXjqSibCZRImkODLrKLQHTXsuPGdJCZbTJXibUsenrz3WW89ib7gInO6OQM/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('32', 'oyqTtw_3J9QWix69R8lFyGcAwCoA', '', '岑岑', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLBlO3ibecznZklsJ2mSNT0CDiaMuibaIQ1gticiaJf2Qp5eSr4YIqEZicCS7gUXpLkp9Vr854K2rfKCIgt/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('33', 'oyqTtwzkMdmKiUdVDhnlM6GXGYq8', '', '蝶衣婚庆', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QgsFcUwibab06Mia9zG6W1lSh0AKhTCiberKbOBiaeDibBp15moAFxMgsmWh8VyAVKGFUJt1FIS1g8ea2/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('34', 'oyqTtw1jyQge4jL-hxW1fLc1WKnA', '', '釆菊东篱', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKNjqrlFxZibkQpfycicPszZAZ6DhL4meAtcdWTNffynUEqAwAXdPe2c7Q9wtuO1w6Pjq9uzWCfU5qiallNW3SADNz2/0', '2016-06-15', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('35', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', '', '张朝', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJvD49ksHEhxgAShTJialc7rdo20Kz8aIopjEibJDYfxVicGotN6SUnCLHj2pTQ8XM0iamt1icSFdbLUUA/0', '2016-06-16', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('36', 'oyqTtwzEjo8pzJngr0jPsVoKWedo', '', '冯永强', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxqyMtLduCycG9PYhSGKEy3HmVPm9M96PNWJnkLT4WcJ48FrMicibMrP3ahwYQDOtB1g9H1utwPcVv3/0', '2016-06-19', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('37', 'oyqTtw6su9NPDlAhgmGUYHukqQ7A', '', '细菌', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKO8iazWichBSGk6rEEL7DBk1ib8IloFA93JEAqwkxcIZnVx1yzDUeWttdz3cEqh2J9clSJ7wdjfLL7ibA/0', '2016-06-20', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('38', 'oyqTtw2vfPMrtQczREkZYaQmMqt0', '', '陆惠', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6CKGTXCuIoibODV9NdJzdyEb7SWxWXOxdD9KjiaIKyce8YiaMbOaUjxrkldBj7M2WNCBkdPu0V3ibQ0A/0', '2016-06-21', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('39', 'oyqTtw3-pP203p605MLi9iX1utyo', '', 'EOW', null, 'http://wx.qlogo.cn/mmopen/xLj91RZ6kpDMtE6INGZUODmKBp4OplXgw4iauSpag1VjhqYClI4tKiazeKxaNzBsRpH8ibCicuDr6xkpD4HXQ8Doa1ESZTPWVqGW/0', '2016-06-21', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('40', 'oyqTtw-1ntxGmb48Evmvc6r2VlyQ', '', '子夜 「果语官方省代」', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxnA3IJiarFlAqX14Eef3XrNCGHS7icYKRCvQUEiadru3Py7dtFoNOV7BMLKCS9KTszsvoz9s1ichrGpl/0', '2016-06-21', null, null, '1', '');
INSERT INTO `tb_user` VALUES ('41', 'oyqTtw_4KRONtzhkIWrZMeQVM2So', '', '炎炎', null, '', '2016-06-22', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('42', 'oyqTtwyAyUrpwNrPPx8F7q61p7RI', '', '有志者事竟成', null, 'http://wx.qlogo.cn/mmopen/MmXzf48yfIlugJ1Ric8ibQBCdiaK6MnPGf6kCJR6L4duBfF8TINAg5CsWuUAyabt4ibeuibex170SeKrsvyTsHl0kpgNYUYBWTXdD/0', '2016-06-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('43', 'oyqTtw1zOWY0M3qayRdDu_XnHsfM', '', '喜之郎', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrTxdZl8tZOXE2icZsmsiasdPKgQsbPXNCfjiaUrCBgMGMOW6ve2QI00zlRibS0WDCbiat3FboczqUic7wVPPnNys64I/0', '2016-06-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('44', 'oyqTtw7EM8Dfe5FtvSXZTP3JpSAI', '', 'Auyl', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7tYCkvHHWRH5l22e9eictuAlHCfibaMBDpicETrgofTHmqGqG23ERkk54aQRguvMbm6Wj9bpVhZWO6w/0', '2016-06-24', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('45', 'oyqTtww6p1kWXM4oWOWgnwxRG9G4', '', 'twang', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKPBMswfV6UguVHBovTDNLb9bCSHLpqqkdL4J6KkvaKxpQFztVJt94GUpRdjIruuCzJib1qNUd6xQnw/0', '2016-06-26', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('46', 'oyqTtw3FQoAM2glqBcgDYtW4iyUU', '', 'ice_冰块', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Gan5ZFWR65QoIO1oZ08ZHWlqRX2QGrm8Jj7veb4RicjfTmKOxu6ibXG7a0t5qQZnnJBGXN5aj9xVOG6TmGm7VzYc/0', '2016-06-26', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('47', 'oyqTtw6QkdoZjbSLlQbEsadb8Eu8', '', 'A^_^上海金蝶软件', null, 'http://wx.qlogo.cn/mmopen/8rt3KXLfQKMrkYDpIGuCxsrG2picGibW0RU8nM1gZoOlJnjJlFRWtm2MyDXOWsxRnvYptUqOJGBhXbofbXvoYRyOjl5Tp4G0Td/0', '2016-06-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('48', 'oyqTtwww94zQehm9KMlvSMsyku_Y', '', '旅馆大兵', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLERgcBibPRPxbzChxnm0qSMJM00nXLrKMkvUaU5Har6gYg0h4phnkREHibMMM7oBjyQQgHMUaX41Ml/0', '2016-06-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('49', 'oyqTtw4otwJOBj2s94ZL5Wt5KwGo', '', '磊', null, 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKvVNjsFMMMz6aQBGVwHgfsYMX0erLDnVj3JicaHZZuibO3zVd1YzllYLGMLeEjCkswOSOA64YeTIVA/0', '2016-06-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('50', 'oyqTtw4LxNUBlUOTt1ql0r-sKtv4', '', 'L', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6HH5ynLvIcia8yNzMiaHbC55Ldvm194gcBA4fNaMII26kPUWvveqdeicrRhNbYbeJrvpLb1iaIC5gicibXTfwUt62hkibM/0', '2016-06-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('51', 'oyqTtwzH1zzT1xZZWUovnkj6TxPg', '', 'hopeful', null, 'http://wx.qlogo.cn/mmopen/Fz6VicuJux6Fn70Vpcrc1c21HNpO6rJsvWSG0hDSxbk9TTnYexiaBooia3EvXP8fBU0AABM3ibEKSbrsZNvqiaqf4g7Q7ytK5EoFf/0', '2016-06-27', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('52', 'oyqTtw__0-vXm5HFx3D7IsKz3M7E', '', '蔡礼松', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLOsEr5cbBWy1lMVffysMG254NfmbyZwFNo3AczCqiaAfNLIr61ncMGOcSoJ6iaxkBo1gdxQU9Ke5Fx/0', '2016-06-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('53', 'oyqTtw4O0F2-mrFGbPGHcVXhhF6Q', '', 'HY', null, 'http://wx.qlogo.cn/mmopen/GEicHjw6yAoausj0bjjZeLAY7Fxj6QQKHeXDMQjNbTYddWyrt90Vw1aPk2RGK8W7R594ic1yxhYcLlFEFDwzusKTf7D1Eq7Oyu/0', '2016-06-28', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('54', 'o9ejSvlPRAOP-28RWvhZiO2gK7yw', '', 'wum', null, 'http://wx.qlogo.cn/mmopen/O1dAhMERUwULH3lA0fNsttW2HjjMzVNCq57WCKKPAbVySjIYUZiaCVvgcfQ7iczxsVRzUN3BuufLyE0rRSBJyZcfmLibZoGRV2U/0', '2016-06-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('55', 'o9ejSvmhpiO9JomdofbDizDQvHe8', '', '张庆', null, 'http://wx.qlogo.cn/mmopen/O1dAhMERUwULH3lA0fNstkVUkpUu5lsfTDUxDzsuPUrKK9LE56Uc60cCIlah25auG2Y3JV4CI0quUftRqMGxzXHjEN3PianWf/0', '2016-06-29', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('56', 'o9ejSviJrWFydDdDdyENatTqumLc', '', 'A^_^上海金蝶软件', null, 'http://wx.qlogo.cn/mmopen/ccicSyz9ElgQoxibaM4s5icP7R6Oo7VicKiafm8Lav7hFA4qiahIevdu0xN2mdD0TGvEX4MWiaLld8LfLXQomnqjdibsFzEoXlpIO6CO/0', '2016-06-29', null, null, '1', '');
INSERT INTO `tb_user` VALUES ('57', 'o9ejSvl3cTL_JBHWfXJQd_1_ZPFk', '', '健健', null, 'http://wx.qlogo.cn/mmopen/pzibRVuzqjkywbONf2E8snHWPWee4jAln6a6WCOzNWhrDlvWngP7DY3x23HWJjicC3iabgFvvMBC5ytqccfF0QknqhGaVufd1Bs/0', '2016-07-04', null, null, '1', '');
INSERT INTO `tb_user` VALUES ('58', 'o9ejSvps2jBQ9nNsiXSmy8oSwlKo', '', 'Zed', null, 'http://wx.qlogo.cn/mmopen/O1dAhMERUwVPXU8eNrCkOdvzhdMGHTR57hdBSkjNXicJPu3CZVbtCsl6Il972w9RO2bUBMkc4sUWRBqcx1f3ibiaA/0', '2016-07-09', null, null, '1', '');
INSERT INTO `tb_user` VALUES ('59', 'o9ejSvuIIrilYi8cwIxKTX_b_Ocw', '', '马学平', null, 'http://wx.qlogo.cn/mmopen/BZflicq4Eg2NC5ctAibWz29Exnext3pltecyRib6JiadjlMib6PFabASMcJYDibnq6wSZAtbozFtOvLDucVR2945tPPaViabIAXdUiaO/0', '2016-07-13', null, null, '1', '');
INSERT INTO `tb_user` VALUES ('60', 'o4m-hw9zFDVWLIBMlE8NhU30UKkQ', '', '贱飞', null, 'http://wx.qlogo.cn/mmopen/6msMGhGGRVVRzwWTNd4vrquZMeDBhWWicp7GMTkXxBIBwbGEic2QmKW7jJKsIRiaibACeMicu1rxsad6IoKJE80yfGUtBPlauoWHp/0', '2016-07-30', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('61', 'o4m-hw5EONotjHeiv60lOdle7f84', '', '老涂', null, 'http://wx.qlogo.cn/mmopen/kGvp2xKRuKJWtJf5iaRQWhcmwTeqRicFRNUKoOeUgNic6aicZ5MA0YxwvBelsicgYTaN32VpzRR8yj6ru4L5zQvIYAw/0', '2016-08-01', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('62', 'o4m-hw8Zmi_TtvegikFYmNSbclqM', '', '上海祝海鹰', null, 'http://wx.qlogo.cn/mmopen/252y3EDI6JkR9wbp3JBgHIUuWROT2d95bFL444KgiaSjKichWpI2BBFSLetiaSdGcy2NggXnItvrnZonhjhBDA4BOw5qcGzVvgib/0', '2016-08-01', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('63', 'o4m-hw0ngqxdP82zHbjhR7JPTx3c', '', '胡天华Edward', null, 'http://wx.qlogo.cn/mmopen/vO1zY1O9p8KjKDicbuso7mQq8llXHe5pLQSo93RHdBkcDKkdqundqk7leAqNyIL7zjTHMWBOQfTzMM046PoTFdxqic2hmH33vN/0', '2016-08-02', null, null, '1', '2016-08-03');
INSERT INTO `tb_user` VALUES ('64', 'o4m-hwxwWihifsZhV7eRYjC_4hWg', '', '二毛', null, 'http://wx.qlogo.cn/mmopen/252y3EDI6JlGUD0xtgibRHfcIyoWwLLC8J82uugCHkyycGMyltjJEg1WDgwnUIYMzO05M7IAzfnRMn18lp2H4U5uOzZAu6UG5/0', '2016-08-02', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('65', 'o4m-hw2m6_mCajwZ7mYjwhnIW5fE', '', '丫丫_追逐', null, 'http://wx.qlogo.cn/mmopen/xzvVYaqtSnzB4HsXByzSCGqCxYGY0fliaEJjcKrPtzcLcCbcYY4xmZq7pkk8c2ibUjYKUsm8pq37M9QW0FJVOS1HnvMNiaRjj79/0', '2016-08-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('66', 'o4m-hw8zFrtrQH08Vqv7pfOuplKI', '', '陈岩', null, 'http://wx.qlogo.cn/mmopen/xzvVYaqtSnwAMtLhan6JRhvtnZQUYTmg9lE1EUnS9o1x9FL7acZ8U4dQvzUJTcuZm5uiaqS8eQIOLG1ibGLuAp5g/0', '2016-08-03', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('67', 'o4m-hwzJkGTDiw2OCy-_RNWGEuu8', '', 'solo', null, 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6ZEicn6buG2xJ417kDPibUmMdoZsFbmjTjRUUqQzklqG4Su0AlgLL24g6DVJibmHR7XAUpxs1Y3me62akJ0Nm5Sj3uvkYicVlpw6o/0', '2016-08-04', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('68', 'o4m-hw-nh-vCdcw6qeC6sWTfw_04', '', 'Knowork', null, 'http://wx.qlogo.cn/mmopen/xzvVYaqtSnxLrwMBziay6lBnlryVWINBC2I6zv6NE2wj1h12Aq68TTZWrNv1GhSFicKpUPGoj8GFHhmv33MMvpqA/0', '2016-08-04', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('69', 'o4m-hwxK7lJfDzzDAKK26s4pvhlk', '', '梦之痕', null, 'http://wx.qlogo.cn/mmopen/6msMGhGGRVVRzwWTNd4vrjHhxsYfHoWeKRzLyByf1dpmsVicmXYFp6AOI0rPgX79orumsTYpD0dS7YdickTzSib2P4zuypgaAoK/0', '2016-08-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('70', 'o4m-hw29iEkv11S9JH2PGHeY9WTs', '', '顺顺', null, 'http://wx.qlogo.cn/mmopen/kGvp2xKRuKL4wPkho7KicsgY4r1dk8BIKpDsd42ibRjWaAgibIial17MWko3fbeZfW4M3UubZ0gqouyz0PWUlUicwR7cAe3yTLQsr/0', '2016-08-07', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('71', 'o4m-hw2HwELlIhXeeTSRrKOQMYc8', '', 'wum', null, 'http://wx.qlogo.cn/mmopen/xzvVYaqtSnxeRdgmBjD3kWmsguLVIJqzScYWBfwiaibNdXkF2yfVib0C163eLsgGeaG4M7E7tyvJtwAyvjickLUurQKYob96JVV6/0', '2016-08-12', null, null, '1', null);
INSERT INTO `tb_user` VALUES ('72', 'o4m-hw-A7gzIx-tF1BA2ALXSDk98', '', 'A奋斗', null, 'http://wx.qlogo.cn/mmopen/vO1zY1O9p8K4l0icg2uanCQp4BuMXXFkIL4GziaIqA8Z1UHchTwhPMNZ5pkmMZvhmMMv6N7UF42hJu6uJJOnqb72icUFaAdrwKC/0', '2016-08-12', null, null, '1', null);
