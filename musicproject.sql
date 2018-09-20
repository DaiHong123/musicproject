/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : musicproject

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-09-20 10:38:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_attention`
-- ----------------------------
DROP TABLE IF EXISTS `tb_attention`;
CREATE TABLE `tb_attention` (
  `uid` char(32) NOT NULL,
  `bid` char(32) NOT NULL,
  KEY `FK_Reference_1` (`uid`),
  KEY `FK_Reference_2` (`bid`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`uid`) REFERENCES `tb_user` (`uid`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`bid`) REFERENCES `tb_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_attention
-- ----------------------------
INSERT INTO `tb_attention` VALUES ('111111111111111111111111111', '0fc1df322d394a6c9853e8a31f1680c3');

-- ----------------------------
-- Table structure for `tb_city`
-- ----------------------------
DROP TABLE IF EXISTS `tb_city`;
CREATE TABLE `tb_city` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `fk_province` (`pid`),
  CONSTRAINT `fk_province` FOREIGN KEY (`pid`) REFERENCES `tb_province` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=438 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_city
-- ----------------------------
INSERT INTO `tb_city` VALUES ('1', '东城区', '1');
INSERT INTO `tb_city` VALUES ('2', '西城区', '1');
INSERT INTO `tb_city` VALUES ('3', '崇文区', '1');
INSERT INTO `tb_city` VALUES ('4', '宣武区', '1');
INSERT INTO `tb_city` VALUES ('5', '朝阳区', '1');
INSERT INTO `tb_city` VALUES ('6', '丰台区', '1');
INSERT INTO `tb_city` VALUES ('7', '石景山区', '1');
INSERT INTO `tb_city` VALUES ('8', '海淀区', '1');
INSERT INTO `tb_city` VALUES ('9', '门头沟区', '1');
INSERT INTO `tb_city` VALUES ('10', '房山区', '1');
INSERT INTO `tb_city` VALUES ('11', '通州区', '1');
INSERT INTO `tb_city` VALUES ('12', '顺义区', '1');
INSERT INTO `tb_city` VALUES ('13', '昌平区', '1');
INSERT INTO `tb_city` VALUES ('14', '大兴区', '1');
INSERT INTO `tb_city` VALUES ('15', '怀柔区', '1');
INSERT INTO `tb_city` VALUES ('16', '平谷区', '1');
INSERT INTO `tb_city` VALUES ('17', '密云县', '1');
INSERT INTO `tb_city` VALUES ('18', '延庆县', '1');
INSERT INTO `tb_city` VALUES ('19', '和平区', '2');
INSERT INTO `tb_city` VALUES ('20', '河东区', '2');
INSERT INTO `tb_city` VALUES ('21', '河西区', '2');
INSERT INTO `tb_city` VALUES ('22', '南开区', '2');
INSERT INTO `tb_city` VALUES ('23', '河北区', '2');
INSERT INTO `tb_city` VALUES ('24', '红桥区', '2');
INSERT INTO `tb_city` VALUES ('25', '塘沽区', '2');
INSERT INTO `tb_city` VALUES ('26', '汉沽区', '2');
INSERT INTO `tb_city` VALUES ('27', '大港区', '2');
INSERT INTO `tb_city` VALUES ('28', '东丽区', '2');
INSERT INTO `tb_city` VALUES ('29', '西青区', '2');
INSERT INTO `tb_city` VALUES ('30', '津南区', '2');
INSERT INTO `tb_city` VALUES ('31', '北辰区', '2');
INSERT INTO `tb_city` VALUES ('32', '武清区', '2');
INSERT INTO `tb_city` VALUES ('33', '宝坻区', '2');
INSERT INTO `tb_city` VALUES ('34', '宁河县', '2');
INSERT INTO `tb_city` VALUES ('35', '静海县', '2');
INSERT INTO `tb_city` VALUES ('36', '蓟县', '2');
INSERT INTO `tb_city` VALUES ('37', '石家庄', '3');
INSERT INTO `tb_city` VALUES ('38', '唐山', '3');
INSERT INTO `tb_city` VALUES ('39', '秦皇岛', '3');
INSERT INTO `tb_city` VALUES ('40', '邯郸', '3');
INSERT INTO `tb_city` VALUES ('41', '邢台', '3');
INSERT INTO `tb_city` VALUES ('42', '保定', '3');
INSERT INTO `tb_city` VALUES ('43', '张家口', '3');
INSERT INTO `tb_city` VALUES ('44', '承德', '3');
INSERT INTO `tb_city` VALUES ('45', '沧州', '3');
INSERT INTO `tb_city` VALUES ('46', '廊坊', '3');
INSERT INTO `tb_city` VALUES ('47', '衡水', '3');
INSERT INTO `tb_city` VALUES ('48', '太原', '4');
INSERT INTO `tb_city` VALUES ('49', '大同', '4');
INSERT INTO `tb_city` VALUES ('50', '阳泉', '4');
INSERT INTO `tb_city` VALUES ('51', '长治', '4');
INSERT INTO `tb_city` VALUES ('52', '晋城', '4');
INSERT INTO `tb_city` VALUES ('53', '朔州', '4');
INSERT INTO `tb_city` VALUES ('54', '晋中', '4');
INSERT INTO `tb_city` VALUES ('55', '运城', '4');
INSERT INTO `tb_city` VALUES ('56', '忻州', '4');
INSERT INTO `tb_city` VALUES ('57', '临汾', '4');
INSERT INTO `tb_city` VALUES ('58', '吕梁', '4');
INSERT INTO `tb_city` VALUES ('59', '呼和浩特', '5');
INSERT INTO `tb_city` VALUES ('60', '包头', '5');
INSERT INTO `tb_city` VALUES ('61', '乌海', '5');
INSERT INTO `tb_city` VALUES ('62', '赤峰', '5');
INSERT INTO `tb_city` VALUES ('63', '通辽', '5');
INSERT INTO `tb_city` VALUES ('64', '鄂尔多斯', '5');
INSERT INTO `tb_city` VALUES ('65', '呼伦贝尔', '5');
INSERT INTO `tb_city` VALUES ('66', '巴彦淖尔', '5');
INSERT INTO `tb_city` VALUES ('67', '乌兰察布', '5');
INSERT INTO `tb_city` VALUES ('68', '兴安盟', '5');
INSERT INTO `tb_city` VALUES ('69', '锡林郭勒盟', '5');
INSERT INTO `tb_city` VALUES ('70', '阿拉善盟', '5');
INSERT INTO `tb_city` VALUES ('71', '沈阳', '6');
INSERT INTO `tb_city` VALUES ('72', '大连', '6');
INSERT INTO `tb_city` VALUES ('73', '鞍山', '6');
INSERT INTO `tb_city` VALUES ('74', '抚顺', '6');
INSERT INTO `tb_city` VALUES ('75', '本溪', '6');
INSERT INTO `tb_city` VALUES ('76', '丹东', '6');
INSERT INTO `tb_city` VALUES ('77', '锦州', '6');
INSERT INTO `tb_city` VALUES ('78', '营口', '6');
INSERT INTO `tb_city` VALUES ('79', '阜新', '6');
INSERT INTO `tb_city` VALUES ('80', '辽阳', '6');
INSERT INTO `tb_city` VALUES ('81', '盘锦', '6');
INSERT INTO `tb_city` VALUES ('82', '铁岭', '6');
INSERT INTO `tb_city` VALUES ('83', '朝阳', '6');
INSERT INTO `tb_city` VALUES ('84', '葫芦岛', '6');
INSERT INTO `tb_city` VALUES ('85', '长春', '7');
INSERT INTO `tb_city` VALUES ('86', '吉林', '7');
INSERT INTO `tb_city` VALUES ('87', '四平', '7');
INSERT INTO `tb_city` VALUES ('88', '辽源', '7');
INSERT INTO `tb_city` VALUES ('89', '通化', '7');
INSERT INTO `tb_city` VALUES ('90', '白山', '7');
INSERT INTO `tb_city` VALUES ('91', '松原', '7');
INSERT INTO `tb_city` VALUES ('92', '白城', '7');
INSERT INTO `tb_city` VALUES ('93', '延边', '7');
INSERT INTO `tb_city` VALUES ('94', '哈尔滨', '8');
INSERT INTO `tb_city` VALUES ('95', '齐齐哈尔', '8');
INSERT INTO `tb_city` VALUES ('96', '鸡西', '8');
INSERT INTO `tb_city` VALUES ('97', '鹤岗', '8');
INSERT INTO `tb_city` VALUES ('98', '双鸭山', '8');
INSERT INTO `tb_city` VALUES ('99', '大庆', '8');
INSERT INTO `tb_city` VALUES ('100', '伊春', '8');
INSERT INTO `tb_city` VALUES ('101', '佳木斯', '8');
INSERT INTO `tb_city` VALUES ('102', '七台河', '8');
INSERT INTO `tb_city` VALUES ('103', '牡丹江', '8');
INSERT INTO `tb_city` VALUES ('104', '黑河', '8');
INSERT INTO `tb_city` VALUES ('105', '绥化', '8');
INSERT INTO `tb_city` VALUES ('106', '大兴安岭', '8');
INSERT INTO `tb_city` VALUES ('107', '黄浦区', '9');
INSERT INTO `tb_city` VALUES ('108', '卢湾区', '9');
INSERT INTO `tb_city` VALUES ('109', '徐汇区', '9');
INSERT INTO `tb_city` VALUES ('110', '长宁区', '9');
INSERT INTO `tb_city` VALUES ('111', '静安区', '9');
INSERT INTO `tb_city` VALUES ('112', '普陀区', '9');
INSERT INTO `tb_city` VALUES ('113', '闸北区', '9');
INSERT INTO `tb_city` VALUES ('114', '虹口区', '9');
INSERT INTO `tb_city` VALUES ('115', '杨浦区', '9');
INSERT INTO `tb_city` VALUES ('116', '闵行区', '9');
INSERT INTO `tb_city` VALUES ('117', '宝山区', '9');
INSERT INTO `tb_city` VALUES ('118', '嘉定区', '9');
INSERT INTO `tb_city` VALUES ('119', '浦东新区', '9');
INSERT INTO `tb_city` VALUES ('120', '金山区', '9');
INSERT INTO `tb_city` VALUES ('121', '松江区', '9');
INSERT INTO `tb_city` VALUES ('122', '青浦区', '9');
INSERT INTO `tb_city` VALUES ('123', '南汇区', '9');
INSERT INTO `tb_city` VALUES ('124', '奉贤区', '9');
INSERT INTO `tb_city` VALUES ('125', '崇明县', '9');
INSERT INTO `tb_city` VALUES ('126', '南京', '10');
INSERT INTO `tb_city` VALUES ('127', '无锡', '10');
INSERT INTO `tb_city` VALUES ('128', '徐州', '10');
INSERT INTO `tb_city` VALUES ('129', '常州', '10');
INSERT INTO `tb_city` VALUES ('130', '苏州', '10');
INSERT INTO `tb_city` VALUES ('131', '南通', '10');
INSERT INTO `tb_city` VALUES ('132', '连云港', '10');
INSERT INTO `tb_city` VALUES ('133', '淮安', '10');
INSERT INTO `tb_city` VALUES ('134', '盐城', '10');
INSERT INTO `tb_city` VALUES ('135', '扬州', '10');
INSERT INTO `tb_city` VALUES ('136', '镇江', '10');
INSERT INTO `tb_city` VALUES ('137', '泰州', '10');
INSERT INTO `tb_city` VALUES ('138', '宿迁', '10');
INSERT INTO `tb_city` VALUES ('139', '杭州', '11');
INSERT INTO `tb_city` VALUES ('140', '宁波', '11');
INSERT INTO `tb_city` VALUES ('141', '温州', '11');
INSERT INTO `tb_city` VALUES ('142', '嘉兴', '11');
INSERT INTO `tb_city` VALUES ('143', '湖州', '11');
INSERT INTO `tb_city` VALUES ('144', '绍兴', '11');
INSERT INTO `tb_city` VALUES ('145', '金华', '11');
INSERT INTO `tb_city` VALUES ('146', '衢州', '11');
INSERT INTO `tb_city` VALUES ('147', '舟山', '11');
INSERT INTO `tb_city` VALUES ('148', '台州', '11');
INSERT INTO `tb_city` VALUES ('149', '丽水', '11');
INSERT INTO `tb_city` VALUES ('150', '合肥', '12');
INSERT INTO `tb_city` VALUES ('151', '芜湖', '12');
INSERT INTO `tb_city` VALUES ('152', '蚌埠', '12');
INSERT INTO `tb_city` VALUES ('153', '淮南', '12');
INSERT INTO `tb_city` VALUES ('154', '马鞍山', '12');
INSERT INTO `tb_city` VALUES ('155', '淮北', '12');
INSERT INTO `tb_city` VALUES ('156', '铜陵', '12');
INSERT INTO `tb_city` VALUES ('157', '安庆', '12');
INSERT INTO `tb_city` VALUES ('158', '黄山', '12');
INSERT INTO `tb_city` VALUES ('159', '滁州', '12');
INSERT INTO `tb_city` VALUES ('160', '阜阳', '12');
INSERT INTO `tb_city` VALUES ('161', '宿州', '12');
INSERT INTO `tb_city` VALUES ('162', '巢湖', '12');
INSERT INTO `tb_city` VALUES ('163', '六安', '12');
INSERT INTO `tb_city` VALUES ('164', '亳州', '12');
INSERT INTO `tb_city` VALUES ('165', '池州', '12');
INSERT INTO `tb_city` VALUES ('166', '宣城', '12');
INSERT INTO `tb_city` VALUES ('167', '福州', '13');
INSERT INTO `tb_city` VALUES ('168', '厦门', '13');
INSERT INTO `tb_city` VALUES ('169', '莆田', '13');
INSERT INTO `tb_city` VALUES ('170', '三明', '13');
INSERT INTO `tb_city` VALUES ('171', '泉州', '13');
INSERT INTO `tb_city` VALUES ('172', '漳州', '13');
INSERT INTO `tb_city` VALUES ('173', '南平', '13');
INSERT INTO `tb_city` VALUES ('174', '龙岩', '13');
INSERT INTO `tb_city` VALUES ('175', '宁德', '13');
INSERT INTO `tb_city` VALUES ('176', '南昌', '14');
INSERT INTO `tb_city` VALUES ('177', '景德镇', '14');
INSERT INTO `tb_city` VALUES ('178', '萍乡', '14');
INSERT INTO `tb_city` VALUES ('179', '九江', '14');
INSERT INTO `tb_city` VALUES ('180', '新余', '14');
INSERT INTO `tb_city` VALUES ('181', '鹰潭', '14');
INSERT INTO `tb_city` VALUES ('182', '赣州', '14');
INSERT INTO `tb_city` VALUES ('183', '吉安', '14');
INSERT INTO `tb_city` VALUES ('184', '宜春', '14');
INSERT INTO `tb_city` VALUES ('185', '抚州', '14');
INSERT INTO `tb_city` VALUES ('186', '上饶', '14');
INSERT INTO `tb_city` VALUES ('187', '济南', '15');
INSERT INTO `tb_city` VALUES ('188', '青岛', '15');
INSERT INTO `tb_city` VALUES ('189', '淄博', '15');
INSERT INTO `tb_city` VALUES ('190', '枣庄', '15');
INSERT INTO `tb_city` VALUES ('191', '东营', '15');
INSERT INTO `tb_city` VALUES ('192', '烟台', '15');
INSERT INTO `tb_city` VALUES ('193', '潍坊', '15');
INSERT INTO `tb_city` VALUES ('194', '济宁', '15');
INSERT INTO `tb_city` VALUES ('195', '泰安', '15');
INSERT INTO `tb_city` VALUES ('196', '威海', '15');
INSERT INTO `tb_city` VALUES ('197', '日照', '15');
INSERT INTO `tb_city` VALUES ('198', '莱芜', '15');
INSERT INTO `tb_city` VALUES ('199', '临沂', '15');
INSERT INTO `tb_city` VALUES ('200', '德州', '15');
INSERT INTO `tb_city` VALUES ('201', '聊城', '15');
INSERT INTO `tb_city` VALUES ('202', '滨州', '15');
INSERT INTO `tb_city` VALUES ('203', '荷泽', '15');
INSERT INTO `tb_city` VALUES ('204', '郑州', '16');
INSERT INTO `tb_city` VALUES ('205', '开封', '16');
INSERT INTO `tb_city` VALUES ('206', '洛阳', '16');
INSERT INTO `tb_city` VALUES ('207', '平顶山', '16');
INSERT INTO `tb_city` VALUES ('208', '安阳', '16');
INSERT INTO `tb_city` VALUES ('209', '鹤壁', '16');
INSERT INTO `tb_city` VALUES ('210', '新乡', '16');
INSERT INTO `tb_city` VALUES ('211', '焦作', '16');
INSERT INTO `tb_city` VALUES ('212', '濮阳', '16');
INSERT INTO `tb_city` VALUES ('213', '许昌', '16');
INSERT INTO `tb_city` VALUES ('214', '漯河', '16');
INSERT INTO `tb_city` VALUES ('215', '三门峡', '16');
INSERT INTO `tb_city` VALUES ('216', '南阳', '16');
INSERT INTO `tb_city` VALUES ('217', '商丘', '16');
INSERT INTO `tb_city` VALUES ('218', '信阳', '16');
INSERT INTO `tb_city` VALUES ('219', '周口', '16');
INSERT INTO `tb_city` VALUES ('220', '驻马店', '16');
INSERT INTO `tb_city` VALUES ('221', '武汉', '17');
INSERT INTO `tb_city` VALUES ('222', '黄石', '17');
INSERT INTO `tb_city` VALUES ('223', '十堰', '17');
INSERT INTO `tb_city` VALUES ('224', '宜昌', '17');
INSERT INTO `tb_city` VALUES ('225', '襄樊', '17');
INSERT INTO `tb_city` VALUES ('226', '鄂州', '17');
INSERT INTO `tb_city` VALUES ('227', '荆门', '17');
INSERT INTO `tb_city` VALUES ('228', '孝感', '17');
INSERT INTO `tb_city` VALUES ('229', '荆州', '17');
INSERT INTO `tb_city` VALUES ('230', '黄冈', '17');
INSERT INTO `tb_city` VALUES ('231', '咸宁', '17');
INSERT INTO `tb_city` VALUES ('232', '随州', '17');
INSERT INTO `tb_city` VALUES ('233', '恩施', '17');
INSERT INTO `tb_city` VALUES ('234', '神农架', '17');
INSERT INTO `tb_city` VALUES ('235', '长沙', '18');
INSERT INTO `tb_city` VALUES ('236', '株洲', '18');
INSERT INTO `tb_city` VALUES ('237', '湘潭', '18');
INSERT INTO `tb_city` VALUES ('238', '衡阳', '18');
INSERT INTO `tb_city` VALUES ('239', '邵阳', '18');
INSERT INTO `tb_city` VALUES ('240', '岳阳', '18');
INSERT INTO `tb_city` VALUES ('241', '常德', '18');
INSERT INTO `tb_city` VALUES ('242', '张家界', '18');
INSERT INTO `tb_city` VALUES ('243', '益阳', '18');
INSERT INTO `tb_city` VALUES ('244', '郴州', '18');
INSERT INTO `tb_city` VALUES ('245', '永州', '18');
INSERT INTO `tb_city` VALUES ('246', '怀化', '18');
INSERT INTO `tb_city` VALUES ('247', '娄底', '18');
INSERT INTO `tb_city` VALUES ('248', '湘西', '18');
INSERT INTO `tb_city` VALUES ('249', '广州', '19');
INSERT INTO `tb_city` VALUES ('250', '韶关', '19');
INSERT INTO `tb_city` VALUES ('251', '深圳', '19');
INSERT INTO `tb_city` VALUES ('252', '珠海', '19');
INSERT INTO `tb_city` VALUES ('253', '汕头', '19');
INSERT INTO `tb_city` VALUES ('254', '佛山', '19');
INSERT INTO `tb_city` VALUES ('255', '江门', '19');
INSERT INTO `tb_city` VALUES ('256', '湛江', '19');
INSERT INTO `tb_city` VALUES ('257', '茂名', '19');
INSERT INTO `tb_city` VALUES ('258', '肇庆', '19');
INSERT INTO `tb_city` VALUES ('259', '惠州', '19');
INSERT INTO `tb_city` VALUES ('260', '梅州', '19');
INSERT INTO `tb_city` VALUES ('261', '汕尾', '19');
INSERT INTO `tb_city` VALUES ('262', '河源', '19');
INSERT INTO `tb_city` VALUES ('263', '阳江', '19');
INSERT INTO `tb_city` VALUES ('264', '清远', '19');
INSERT INTO `tb_city` VALUES ('265', '东莞', '19');
INSERT INTO `tb_city` VALUES ('266', '中山', '19');
INSERT INTO `tb_city` VALUES ('267', '潮州', '19');
INSERT INTO `tb_city` VALUES ('268', '揭阳', '19');
INSERT INTO `tb_city` VALUES ('269', '云浮', '19');
INSERT INTO `tb_city` VALUES ('270', '南宁', '20');
INSERT INTO `tb_city` VALUES ('271', '柳州', '20');
INSERT INTO `tb_city` VALUES ('272', '桂林', '20');
INSERT INTO `tb_city` VALUES ('273', '梧州', '20');
INSERT INTO `tb_city` VALUES ('274', '北海', '20');
INSERT INTO `tb_city` VALUES ('275', '防城港', '20');
INSERT INTO `tb_city` VALUES ('276', '钦州', '20');
INSERT INTO `tb_city` VALUES ('277', '贵港', '20');
INSERT INTO `tb_city` VALUES ('278', '玉林', '20');
INSERT INTO `tb_city` VALUES ('279', '百色', '20');
INSERT INTO `tb_city` VALUES ('280', '贺州', '20');
INSERT INTO `tb_city` VALUES ('281', '河池', '20');
INSERT INTO `tb_city` VALUES ('282', '来宾', '20');
INSERT INTO `tb_city` VALUES ('283', '崇左', '20');
INSERT INTO `tb_city` VALUES ('284', '海口', '21');
INSERT INTO `tb_city` VALUES ('285', '三亚', '21');
INSERT INTO `tb_city` VALUES ('286', '重庆', '22');
INSERT INTO `tb_city` VALUES ('287', '万州区', '22');
INSERT INTO `tb_city` VALUES ('288', '涪陵区', '22');
INSERT INTO `tb_city` VALUES ('289', '渝中区', '22');
INSERT INTO `tb_city` VALUES ('290', '大渡口区', '22');
INSERT INTO `tb_city` VALUES ('291', '江北区', '22');
INSERT INTO `tb_city` VALUES ('292', '沙坪坝区', '22');
INSERT INTO `tb_city` VALUES ('293', '九龙坡区', '22');
INSERT INTO `tb_city` VALUES ('294', '南岸区', '22');
INSERT INTO `tb_city` VALUES ('295', '北碚区', '22');
INSERT INTO `tb_city` VALUES ('296', '万盛区', '22');
INSERT INTO `tb_city` VALUES ('297', '双桥区', '22');
INSERT INTO `tb_city` VALUES ('298', '渝北区', '22');
INSERT INTO `tb_city` VALUES ('299', '巴南区', '22');
INSERT INTO `tb_city` VALUES ('300', '黔江区', '22');
INSERT INTO `tb_city` VALUES ('301', '长寿区', '22');
INSERT INTO `tb_city` VALUES ('302', '綦江县', '22');
INSERT INTO `tb_city` VALUES ('303', '潼南县', '22');
INSERT INTO `tb_city` VALUES ('304', '铜梁县', '22');
INSERT INTO `tb_city` VALUES ('305', '大足县', '22');
INSERT INTO `tb_city` VALUES ('306', '荣昌县', '22');
INSERT INTO `tb_city` VALUES ('307', '璧山县', '22');
INSERT INTO `tb_city` VALUES ('308', '梁平县', '22');
INSERT INTO `tb_city` VALUES ('309', '城口县', '22');
INSERT INTO `tb_city` VALUES ('310', '丰都县', '22');
INSERT INTO `tb_city` VALUES ('311', '垫江县', '22');
INSERT INTO `tb_city` VALUES ('312', '武隆县', '22');
INSERT INTO `tb_city` VALUES ('313', '忠县', '22');
INSERT INTO `tb_city` VALUES ('314', '开县', '22');
INSERT INTO `tb_city` VALUES ('315', '云阳县', '22');
INSERT INTO `tb_city` VALUES ('316', '奉节县', '22');
INSERT INTO `tb_city` VALUES ('317', '巫山县', '22');
INSERT INTO `tb_city` VALUES ('318', '巫溪县', '22');
INSERT INTO `tb_city` VALUES ('319', '石柱土家族自治县', '22');
INSERT INTO `tb_city` VALUES ('320', '秀山土家族苗族自治县', '22');
INSERT INTO `tb_city` VALUES ('321', '酉阳土家族苗族自治县', '22');
INSERT INTO `tb_city` VALUES ('322', '彭水苗族土家族自治县', '22');
INSERT INTO `tb_city` VALUES ('323', '江津', '22');
INSERT INTO `tb_city` VALUES ('324', '合川', '22');
INSERT INTO `tb_city` VALUES ('325', '永川', '22');
INSERT INTO `tb_city` VALUES ('326', '南川', '22');
INSERT INTO `tb_city` VALUES ('327', '成都', '23');
INSERT INTO `tb_city` VALUES ('328', '自贡', '23');
INSERT INTO `tb_city` VALUES ('329', '攀枝花', '23');
INSERT INTO `tb_city` VALUES ('330', '泸州', '23');
INSERT INTO `tb_city` VALUES ('331', '德阳', '23');
INSERT INTO `tb_city` VALUES ('332', '绵阳', '23');
INSERT INTO `tb_city` VALUES ('333', '广元', '23');
INSERT INTO `tb_city` VALUES ('334', '遂宁', '23');
INSERT INTO `tb_city` VALUES ('335', '内江', '23');
INSERT INTO `tb_city` VALUES ('336', '乐山', '23');
INSERT INTO `tb_city` VALUES ('337', '南充', '23');
INSERT INTO `tb_city` VALUES ('338', '眉山', '23');
INSERT INTO `tb_city` VALUES ('339', '宜宾', '23');
INSERT INTO `tb_city` VALUES ('340', '广安', '23');
INSERT INTO `tb_city` VALUES ('341', '达州', '23');
INSERT INTO `tb_city` VALUES ('342', '雅安', '23');
INSERT INTO `tb_city` VALUES ('343', '巴中', '23');
INSERT INTO `tb_city` VALUES ('344', '资阳', '23');
INSERT INTO `tb_city` VALUES ('345', '阿坝', '23');
INSERT INTO `tb_city` VALUES ('346', '甘孜', '23');
INSERT INTO `tb_city` VALUES ('347', '凉山', '23');
INSERT INTO `tb_city` VALUES ('348', '贵阳', '24');
INSERT INTO `tb_city` VALUES ('349', '六盘水', '24');
INSERT INTO `tb_city` VALUES ('350', '遵义', '24');
INSERT INTO `tb_city` VALUES ('351', '安顺', '24');
INSERT INTO `tb_city` VALUES ('352', '铜仁', '24');
INSERT INTO `tb_city` VALUES ('353', '黔西南', '24');
INSERT INTO `tb_city` VALUES ('354', '毕节', '24');
INSERT INTO `tb_city` VALUES ('355', '黔东南', '24');
INSERT INTO `tb_city` VALUES ('356', '黔南', '24');
INSERT INTO `tb_city` VALUES ('357', '昆明', '25');
INSERT INTO `tb_city` VALUES ('358', '曲靖', '25');
INSERT INTO `tb_city` VALUES ('359', '玉溪', '25');
INSERT INTO `tb_city` VALUES ('360', '保山', '25');
INSERT INTO `tb_city` VALUES ('361', '昭通', '25');
INSERT INTO `tb_city` VALUES ('362', '丽江', '25');
INSERT INTO `tb_city` VALUES ('363', '思茅', '25');
INSERT INTO `tb_city` VALUES ('364', '临沧', '25');
INSERT INTO `tb_city` VALUES ('365', '楚雄', '25');
INSERT INTO `tb_city` VALUES ('366', '红河', '25');
INSERT INTO `tb_city` VALUES ('367', '文山', '25');
INSERT INTO `tb_city` VALUES ('368', '西双版纳', '25');
INSERT INTO `tb_city` VALUES ('369', '大理', '25');
INSERT INTO `tb_city` VALUES ('370', '德宏', '25');
INSERT INTO `tb_city` VALUES ('371', '怒江', '25');
INSERT INTO `tb_city` VALUES ('372', '迪庆', '25');
INSERT INTO `tb_city` VALUES ('373', '拉萨', '26');
INSERT INTO `tb_city` VALUES ('374', '昌都', '26');
INSERT INTO `tb_city` VALUES ('375', '山南', '26');
INSERT INTO `tb_city` VALUES ('376', '日喀则', '26');
INSERT INTO `tb_city` VALUES ('377', '那曲', '26');
INSERT INTO `tb_city` VALUES ('378', '阿里', '26');
INSERT INTO `tb_city` VALUES ('379', '林芝', '26');
INSERT INTO `tb_city` VALUES ('380', '西安', '27');
INSERT INTO `tb_city` VALUES ('381', '铜川', '27');
INSERT INTO `tb_city` VALUES ('382', '宝鸡', '27');
INSERT INTO `tb_city` VALUES ('383', '咸阳', '27');
INSERT INTO `tb_city` VALUES ('384', '渭南', '27');
INSERT INTO `tb_city` VALUES ('385', '延安', '27');
INSERT INTO `tb_city` VALUES ('386', '汉中', '27');
INSERT INTO `tb_city` VALUES ('387', '榆林', '27');
INSERT INTO `tb_city` VALUES ('388', '安康', '27');
INSERT INTO `tb_city` VALUES ('389', '商洛', '27');
INSERT INTO `tb_city` VALUES ('390', '兰州', '28');
INSERT INTO `tb_city` VALUES ('391', '嘉峪关', '28');
INSERT INTO `tb_city` VALUES ('392', '金昌', '28');
INSERT INTO `tb_city` VALUES ('393', '白银', '28');
INSERT INTO `tb_city` VALUES ('394', '天水', '28');
INSERT INTO `tb_city` VALUES ('395', '武威', '28');
INSERT INTO `tb_city` VALUES ('396', '张掖', '28');
INSERT INTO `tb_city` VALUES ('397', '平凉', '28');
INSERT INTO `tb_city` VALUES ('398', '酒泉', '28');
INSERT INTO `tb_city` VALUES ('399', '庆阳', '28');
INSERT INTO `tb_city` VALUES ('400', '定西', '28');
INSERT INTO `tb_city` VALUES ('401', '陇南', '28');
INSERT INTO `tb_city` VALUES ('402', '临夏', '28');
INSERT INTO `tb_city` VALUES ('403', '甘南', '28');
INSERT INTO `tb_city` VALUES ('404', '西宁', '29');
INSERT INTO `tb_city` VALUES ('405', '海东', '29');
INSERT INTO `tb_city` VALUES ('406', '海北', '29');
INSERT INTO `tb_city` VALUES ('407', '黄南', '29');
INSERT INTO `tb_city` VALUES ('408', '海南', '29');
INSERT INTO `tb_city` VALUES ('409', '果洛', '29');
INSERT INTO `tb_city` VALUES ('410', '玉树', '29');
INSERT INTO `tb_city` VALUES ('411', '海西', '29');
INSERT INTO `tb_city` VALUES ('412', '银川', '30');
INSERT INTO `tb_city` VALUES ('413', '石嘴山', '30');
INSERT INTO `tb_city` VALUES ('414', '吴忠', '30');
INSERT INTO `tb_city` VALUES ('415', '固原', '30');
INSERT INTO `tb_city` VALUES ('416', '中卫', '30');
INSERT INTO `tb_city` VALUES ('417', '乌鲁木齐', '31');
INSERT INTO `tb_city` VALUES ('418', '克拉玛依', '31');
INSERT INTO `tb_city` VALUES ('419', '吐鲁番', '31');
INSERT INTO `tb_city` VALUES ('420', '哈密', '31');
INSERT INTO `tb_city` VALUES ('421', '昌吉', '31');
INSERT INTO `tb_city` VALUES ('422', '博尔塔拉', '31');
INSERT INTO `tb_city` VALUES ('423', '巴音郭楞', '31');
INSERT INTO `tb_city` VALUES ('424', '阿克苏', '31');
INSERT INTO `tb_city` VALUES ('425', '克孜勒苏', '31');
INSERT INTO `tb_city` VALUES ('426', '喀什', '31');
INSERT INTO `tb_city` VALUES ('427', '和田', '31');
INSERT INTO `tb_city` VALUES ('428', '伊犁', '31');
INSERT INTO `tb_city` VALUES ('429', '塔城', '31');
INSERT INTO `tb_city` VALUES ('430', '阿勒泰', '31');
INSERT INTO `tb_city` VALUES ('431', '石河子', '31');
INSERT INTO `tb_city` VALUES ('432', '阿拉尔', '31');
INSERT INTO `tb_city` VALUES ('433', '图木舒克', '31');
INSERT INTO `tb_city` VALUES ('434', '五家渠', '31');
INSERT INTO `tb_city` VALUES ('435', '香港', '32');
INSERT INTO `tb_city` VALUES ('436', '澳门', '33');
INSERT INTO `tb_city` VALUES ('437', '台湾', '34');

-- ----------------------------
-- Table structure for `tb_comment`
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `cdid` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `cdate` datetime NOT NULL,
  `uid` char(32) NOT NULL,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `likesum` int(11) DEFAULT '0',
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`cdid`),
  KEY `FK_Reference_10` (`mid`),
  KEY `FK_Reference_7` (`uid`),
  KEY `FK_Reference_8` (`parentid`),
  CONSTRAINT `FK_Reference_10` FOREIGN KEY (`mid`) REFERENCES `tb_music` (`mid`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`uid`) REFERENCES `tb_user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES ('4', '好听好听', '2018-09-18 14:57:55', '0fc1df322d394a6c9853e8a31f1680c3', '0', '0', '1');
INSERT INTO `tb_comment` VALUES ('5', '顶', '2018-09-19 09:22:49', '9e935bea75f64e33a4f06f8b68628e91', '0', '10', '1');
INSERT INTO `tb_comment` VALUES ('7', '顶顶顶顶顶', '2018-09-19 09:23:13', '0fc1df322d394a6c9853e8a31f1680c3', '0', '100', '1');
INSERT INTO `tb_comment` VALUES ('10', '这是一个评论', '2018-09-19 09:23:49', '0fc1df322d394a6c9853e8a31f1680c3', '0', '9853', '1');
INSERT INTO `tb_comment` VALUES ('11', '这是一个评论这是一个评论这是一个评论这是一个评论这是一个评论', '2018-09-19 09:24:14', '0fc1df322d394a6c9853e8a31f1680c3', '0', '1221', '1');
INSERT INTO `tb_comment` VALUES ('12', '测试评论', '2018-09-19 09:27:35', '9e935bea75f64e33a4f06f8b68628e91', '0', '12', '1');
INSERT INTO `tb_comment` VALUES ('13', '测试评论', '2018-09-19 09:27:38', '0fc1df322d394a6c9853e8a31f1680c3', '0', '123', '1');
INSERT INTO `tb_comment` VALUES ('14', '测试评论', '2018-09-19 09:27:38', '9e935bea75f64e33a4f06f8b68628e91', '0', '321231', '1');
INSERT INTO `tb_comment` VALUES ('15', '测试评论', '2018-09-19 09:27:39', '0fc1df322d394a6c9853e8a31f1680c3', '0', '11', '1');
INSERT INTO `tb_comment` VALUES ('16', '测试评论', '2018-09-19 09:27:39', '0fc1df322d394a6c9853e8a31f1680c3', '0', '1231', '1');
INSERT INTO `tb_comment` VALUES ('17', '测试评论', '2018-09-19 09:27:39', '0fc1df322d394a6c9853e8a31f1680c3', '0', '1', '1');
INSERT INTO `tb_comment` VALUES ('18', '测试评论', '2018-09-19 09:27:39', '9e935bea75f64e33a4f06f8b68628e91', '0', '123', '1');
INSERT INTO `tb_comment` VALUES ('19', '测试评论', '2018-09-19 09:27:40', '0fc1df322d394a6c9853e8a31f1680c3', '0', '121', '1');
INSERT INTO `tb_comment` VALUES ('20', '测试评论', '2018-09-19 09:27:40', '9e935bea75f64e33a4f06f8b68628e91', '0', '21', '1');
INSERT INTO `tb_comment` VALUES ('21', '测试评论', '2018-09-19 09:27:41', '9e935bea75f64e33a4f06f8b68628e91', '0', '456', '1');
INSERT INTO `tb_comment` VALUES ('22', '测试评论', '2018-09-19 09:27:41', '0fc1df322d394a6c9853e8a31f1680c3', '0', '5', '1');
INSERT INTO `tb_comment` VALUES ('23', '测试评论', '2018-09-19 09:27:41', '0fc1df322d394a6c9853e8a31f1680c3', '0', '1', '1');
INSERT INTO `tb_comment` VALUES ('24', '测试评论', '2018-09-19 09:27:41', '9e935bea75f64e33a4f06f8b68628e91', '0', '89', '1');
INSERT INTO `tb_comment` VALUES ('25', '测试评论', '2018-09-19 09:27:42', '0fc1df322d394a6c9853e8a31f1680c3', '0', '1', '1');
INSERT INTO `tb_comment` VALUES ('26', '测试评论', '2018-09-19 09:27:42', '0fc1df322d394a6c9853e8a31f1680c3', '0', '87', '1');
INSERT INTO `tb_comment` VALUES ('27', '测试评论', '2018-09-19 09:27:43', '0fc1df322d394a6c9853e8a31f1680c3', '0', '1', '1');
INSERT INTO `tb_comment` VALUES ('28', '测试评论', '2018-09-19 09:27:43', '9e935bea75f64e33a4f06f8b68628e91', '0', '8789', '1');
INSERT INTO `tb_comment` VALUES ('29', '测试评论', '2018-09-19 09:27:43', '0fc1df322d394a6c9853e8a31f1680c3', '0', '97', '1');
INSERT INTO `tb_comment` VALUES ('30', '测试评论', '2018-09-19 09:27:44', '9e935bea75f64e33a4f06f8b68628e91', '0', '1', '1');
INSERT INTO `tb_comment` VALUES ('31', '测试评论', '2018-09-19 09:27:44', '0fc1df322d394a6c9853e8a31f1680c3', '0', '1', '1');
INSERT INTO `tb_comment` VALUES ('32', '测试评论', '2018-09-19 09:27:44', '0fc1df322d394a6c9853e8a31f1680c3', '0', '44', '1');
INSERT INTO `tb_comment` VALUES ('33', '测试评论', '2018-09-19 09:27:45', '9e935bea75f64e33a4f06f8b68628e91', '0', '4', '1');
INSERT INTO `tb_comment` VALUES ('36', '测试评论', '2018-09-19 09:27:46', '0fc1df322d394a6c9853e8a31f1680c3', '0', '487', '1');
INSERT INTO `tb_comment` VALUES ('37', '测试评论', '2018-09-19 09:27:46', '9e935bea75f64e33a4f06f8b68628e91', '0', '65', '1');
INSERT INTO `tb_comment` VALUES ('42', '测试评论', '2018-09-19 09:27:49', '9e935bea75f64e33a4f06f8b68628e91', '0', '4', '1');
INSERT INTO `tb_comment` VALUES ('43', '测试评论', '2018-09-19 09:27:50', '0fc1df322d394a6c9853e8a31f1680c3', '0', '798', '1');
INSERT INTO `tb_comment` VALUES ('47', '测试评论', '2018-09-19 09:27:52', '0fc1df322d394a6c9853e8a31f1680c3', '0', '6548', '1');
INSERT INTO `tb_comment` VALUES ('48', '测试评论', '2018-09-19 09:27:52', '9e935bea75f64e33a4f06f8b68628e91', '0', '6', '1');
INSERT INTO `tb_comment` VALUES ('51', '测试评论', '2018-09-19 09:27:54', '9e935bea75f64e33a4f06f8b68628e91', '0', '87', '1');
INSERT INTO `tb_comment` VALUES ('52', '测试评论', '2018-09-19 09:27:54', '9e935bea75f64e33a4f06f8b68628e91', '0', '23', '1');
INSERT INTO `tb_comment` VALUES ('53', '测试评论', '2018-09-19 09:27:55', '9e935bea75f64e33a4f06f8b68628e91', '0', '3', '1');
INSERT INTO `tb_comment` VALUES ('55', '测试评论', '2018-09-19 09:27:56', '9e935bea75f64e33a4f06f8b68628e91', '0', '5', '1');
INSERT INTO `tb_comment` VALUES ('57', '测试评论', '2018-09-19 09:27:57', '9e935bea75f64e33a4f06f8b68628e91', '0', '4', '1');
INSERT INTO `tb_comment` VALUES ('58', '测试评论', '2018-09-19 09:27:57', '0fc1df322d394a6c9853e8a31f1680c3', '0', '8', '1');
INSERT INTO `tb_comment` VALUES ('73', '回复lk1234:大萨达撒', '2018-09-19 17:43:27', '0fc1df322d394a6c9853e8a31f1680c3', '72', '1', '1');
INSERT INTO `tb_comment` VALUES ('74', '回复lkk123:回复一个最热的评论', '2018-09-19 19:52:44', '0fc1df322d394a6c9853e8a31f1680c3', '14', '1', '1');
INSERT INTO `tb_comment` VALUES ('76', '回复lk1234:盖楼盖楼~', '2018-09-19 20:20:15', '0fc1df322d394a6c9853e8a31f1680c3', '74', '1', '1');
INSERT INTO `tb_comment` VALUES ('77', '阿斯顿撒奥', '2018-09-20 09:24:16', '0fc1df322d394a6c9853e8a31f1680c3', '0', '1', '4');
INSERT INTO `tb_comment` VALUES ('78', '阿萨达', '2018-09-20 09:25:23', '0fc1df322d394a6c9853e8a31f1680c3', '0', '1', '4');

-- ----------------------------
-- Table structure for `tb_conmment_like`
-- ----------------------------
DROP TABLE IF EXISTS `tb_conmment_like`;
CREATE TABLE `tb_conmment_like` (
  `uid` char(32) NOT NULL,
  `cdid` int(11) NOT NULL,
  KEY `uid` (`uid`),
  KEY `cdid` (`cdid`),
  CONSTRAINT `tb_conmment_like_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `tb_user` (`uid`),
  CONSTRAINT `tb_conmment_like_ibfk_2` FOREIGN KEY (`cdid`) REFERENCES `tb_comment` (`cdid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_conmment_like
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_mcategory`
-- ----------------------------
DROP TABLE IF EXISTS `tb_mcategory`;
CREATE TABLE `tb_mcategory` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` char(32) NOT NULL,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_mcategory
-- ----------------------------
INSERT INTO `tb_mcategory` VALUES ('1', '语种', '0', '1');
INSERT INTO `tb_mcategory` VALUES ('2', '风格', '0', '1');
INSERT INTO `tb_mcategory` VALUES ('3', '场景', '0', '1');
INSERT INTO `tb_mcategory` VALUES ('4', '情感', '0', '1');
INSERT INTO `tb_mcategory` VALUES ('5', '华语', '1', '1');
INSERT INTO `tb_mcategory` VALUES ('6', '欧美', '1', '1');
INSERT INTO `tb_mcategory` VALUES ('7', '流行', '2', '1');
INSERT INTO `tb_mcategory` VALUES ('8', '摇滚', '2', '1');
INSERT INTO `tb_mcategory` VALUES ('9', '清晨', '3', '1');
INSERT INTO `tb_mcategory` VALUES ('10', '怀旧', '4', '1');

-- ----------------------------
-- Table structure for `tb_menu`
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(32) NOT NULL,
  `parentmid` int(11) NOT NULL DEFAULT '0',
  `ename` varchar(255) DEFAULT '404',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `isparent` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `FK_Reference_16` (`parentmid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES ('1', '音乐基地', '12', 'index', '1', '1');
INSERT INTO `tb_menu` VALUES ('2', '首页', '1', 'index', '1', '1');
INSERT INTO `tb_menu` VALUES ('3', '我的音乐', '12', 'mysong', '1', '1');
INSERT INTO `tb_menu` VALUES ('4', '排行榜', '1', 'rank', '1', '1');
INSERT INTO `tb_menu` VALUES ('5', '音乐分类', '1', 'musicClassify', '1', '0');
INSERT INTO `tb_menu` VALUES ('6', '个性推荐', '1', 'singer', '1', '0');
INSERT INTO `tb_menu` VALUES ('7', '话题', '1', 'huati', '1', '0');
INSERT INTO `tb_menu` VALUES ('9', '唱聊IM', '12', 'chat', '1', '0');
INSERT INTO `tb_menu` VALUES ('10', '音乐盒', '12', 'musicbox', '1', '0');
INSERT INTO `tb_menu` VALUES ('12', '爱唱菜单', '0', '404', '1', '1');
INSERT INTO `tb_menu` VALUES ('13', '新歌榜', '4', 'newsong', '1', '0');
INSERT INTO `tb_menu` VALUES ('14', '我的歌单', '3', 'mysong', '1', '0');
INSERT INTO `tb_menu` VALUES ('16', '热歌榜', '4', 'hot', '1', '0');
INSERT INTO `tb_menu` VALUES ('17', '歌手榜', '4', 'songer', '1', '0');
INSERT INTO `tb_menu` VALUES ('18', '滑动模块', '2', 'huadong', '1', '0');

-- ----------------------------
-- Table structure for `tb_menu_content`
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu_content`;
CREATE TABLE `tb_menu_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `musicid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `playsum` int(255) DEFAULT '0',
  `sname` varchar(255) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  CONSTRAINT `tb_menu_content_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `tb_menu` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_menu_content
-- ----------------------------
INSERT INTO `tb_menu_content` VALUES ('1', '4', '陈一发歌曲发布', 'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1873507058,2330256287&fm=58&bpow=586&bpoh=589', null, '陈一发儿', '18');
INSERT INTO `tb_menu_content` VALUES ('2', '5', '校长歌曲发布', 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1925606481,1745506206&fm=58&bpow=500&bpoh=500', null, '校长', '18');
INSERT INTO `tb_menu_content` VALUES ('3', '3', '小潘潘发布歌曲', 'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=2630394211,2583918484&fm=58&bpow=1500&bpoh=1500', null, '小潘潘/小峰峰', '18');
INSERT INTO `tb_menu_content` VALUES ('4', '6', '鞠文娴发布歌曲', 'https://ss0.baidu.com/73x1bjeh1BF3odCf/it/u=1092098143,3983624909&fm=85&s=BFCB72234E4067555C15108C0300E0A1', null, '鞠文娴', '18');
INSERT INTO `tb_menu_content` VALUES ('5', '1', '胡66发布歌曲', 'https://gss1.bdstatic.com/9vo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike80%2C5%2C5%2C80%2C26/sign=007ab7e043c2d562e605d8bf8678fb8a/72f082025aafa40ff2b9d75da764034f78f01936.jpg', null, '胡66', '18');
INSERT INTO `tb_menu_content` VALUES ('6', null, null, null, '6', '1', '17');
INSERT INTO `tb_menu_content` VALUES ('7', null, null, null, '5', '胡66', '17');
INSERT INTO `tb_menu_content` VALUES ('8', null, null, null, '3', '小潘潘/小峰峰', '17');
INSERT INTO `tb_menu_content` VALUES ('9', null, null, null, '2', '陈一发儿', '17');
INSERT INTO `tb_menu_content` VALUES ('10', null, null, null, '1', '校长', '17');
INSERT INTO `tb_menu_content` VALUES ('11', null, null, null, '0', '鞠文娴', '17');
INSERT INTO `tb_menu_content` VALUES ('12', '1', '浪人琵琶', 'https://gss1.bdstatic.com/9vo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike80%2C5%2C5%2C80%2C26/sign=007ab7e043c2d562e605d8bf8678fb8a/72f082025aafa40ff2b9d75da764034f78f01936.jpg', '1', '胡66', '16');
INSERT INTO `tb_menu_content` VALUES ('13', '3', '学猫叫', 'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=2630394211,2583918484&fm=58&bpow=1500&bpoh=1500', '1', '小潘潘/小峰峰', '16');
INSERT INTO `tb_menu_content` VALUES ('14', '4', '童话镇', 'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1873507058,2330256287&fm=58&bpow=586&bpoh=589', '1', '陈一发儿', '16');
INSERT INTO `tb_menu_content` VALUES ('15', '5', '带你去旅行', 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1925606481,1745506206&fm=58&bpow=500&bpoh=500', '1', '校长', '16');
INSERT INTO `tb_menu_content` VALUES ('16', '6', 'BINGBIAN病变 (女声版)', 'https://ss0.baidu.com/73x1bjeh1BF3odCf/it/u=1092098143,3983624909&fm=85&s=BFCB72234E4067555C15108C0300E0A1', '1', '鞠文娴', '16');
INSERT INTO `tb_menu_content` VALUES ('18', '1', '浪人琵琶', 'https://gss1.bdstatic.com/9vo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike80%2C5%2C5%2C80%2C26/sign=007ab7e043c2d562e605d8bf8678fb8a/72f082025aafa40ff2b9d75da764034f78f01936.jpg', '1', '胡66', '13');
INSERT INTO `tb_menu_content` VALUES ('19', '3', '学猫叫', 'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=2630394211,2583918484&fm=58&bpow=1500&bpoh=1500', '1', '小潘潘/小峰峰', '13');
INSERT INTO `tb_menu_content` VALUES ('20', '4', '童话镇', 'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1873507058,2330256287&fm=58&bpow=586&bpoh=589', '1', '陈一发儿', '13');
INSERT INTO `tb_menu_content` VALUES ('21', '5', '带你去旅行', 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1925606481,1745506206&fm=58&bpow=500&bpoh=500', '1', '校长', '13');
INSERT INTO `tb_menu_content` VALUES ('22', '6', 'BINGBIAN病变 (女声版)', 'https://ss0.baidu.com/73x1bjeh1BF3odCf/it/u=1092098143,3983624909&fm=85&s=BFCB72234E4067555C15108C0300E0A1', '1', '鞠文娴', '13');

-- ----------------------------
-- Table structure for `tb_music`
-- ----------------------------
DROP TABLE IF EXISTS `tb_music`;
CREATE TABLE `tb_music` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `mname` char(255) NOT NULL,
  `fileUrl` varchar(100) NOT NULL,
  `playsum` int(11) DEFAULT '0',
  `uploaddate` date NOT NULL,
  `sname` varchar(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `MVid` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `lyricsurl` varchar(255) DEFAULT NULL,
  `isdownload` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `FK_Reference_14` (`sname`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_music
-- ----------------------------
INSERT INTO `tb_music` VALUES ('1', '浪人琵琶', 'http://other.web.nf01.sycdn.kuwo.cn/resource/n3/84/59/1143440808.mp3', '5', '2018-09-11', '胡66', 'https://gss1.bdstatic.com/9vo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike80%2C5%2C5%2C80%2C26/sign=007ab7e043c2d562e605d8bf8678fb8a/72f082025aafa40ff2b9d75da764034f78f01936.jpg', '1', '1', 'http://192.168.25.175/group1/M00/00/01/wKgZr1uZFIqAB5RvAAAHkDeWoH0453.lrc', '1');
INSERT INTO `tb_music` VALUES ('2', '12童', '1', '7', '2018-09-17', '童', '1', '1', '1', null, '0');
INSERT INTO `tb_music` VALUES ('3', '学猫叫', 'http://other.web.nf01.sycdn.kuwo.cn/resource/n1/97/24/778796119.mp3', '3', '2018-09-12', '小潘潘/小峰峰', 'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=2630394211,2583918484&fm=58&bpow=1500&bpoh=1500', '3', '1', 'http://192.168.25.175/null', '0');
INSERT INTO `tb_music` VALUES ('4', '童话镇', 'http://mp32.9ku.com/upload/2017/08/03/863848.m4a', '3', '2018-09-15', '陈一发儿', 'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1873507058,2330256287&fm=58&bpow=586&bpoh=589', '4', '1', 'http://192.168.25.175/null', '0');
INSERT INTO `tb_music` VALUES ('5', '带你去旅行', 'http://mp32.9ku.com/upload/2017/08/14/864839.m4a', '1', '2018-09-13', '校长', 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1925606481,1745506206&fm=58&bpow=500&bpoh=500', null, '1', null, '0');
INSERT INTO `tb_music` VALUES ('6', 'BINGBIAN病变 (女声版)', 'http://win.web.nf01.sycdn.kuwo.cn/resource/n3/50/22/329575555.mp3', '0', '2018-09-13', '鞠文娴', 'https://ss0.baidu.com/73x1bjeh1BF3odCf/it/u=1092098143,3983624909&fm=85&s=BFCB72234E4067555C15108C0300E0A1', null, '1', null, '0');
INSERT INTO `tb_music` VALUES ('7', '2', '2', '0', '2018-09-19', '校长', '1', '1', '1', null, '0');

-- ----------------------------
-- Table structure for `tb_musiclist`
-- ----------------------------
DROP TABLE IF EXISTS `tb_musiclist`;
CREATE TABLE `tb_musiclist` (
  `mlid` int(11) NOT NULL AUTO_INCREMENT,
  `createdate` date NOT NULL,
  `playsum` int(11) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `musicsum` int(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `uid` varchar(32) NOT NULL,
  PRIMARY KEY (`mlid`),
  KEY `FK_Reference_6` (`uid`) USING BTREE,
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`uid`) REFERENCES `tb_user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_musiclist
-- ----------------------------
INSERT INTO `tb_musiclist` VALUES ('1', '2018-09-18', null, '测试1', null, '1', '0fc1df322d394a6c9853e8a31f1680c3');
INSERT INTO `tb_musiclist` VALUES ('2', '2018-09-18', null, '测试2', null, '1', '0fc1df322d394a6c9853e8a31f1680c3');

-- ----------------------------
-- Table structure for `tb_music_category`
-- ----------------------------
DROP TABLE IF EXISTS `tb_music_category`;
CREATE TABLE `tb_music_category` (
  `cid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  KEY `cid` (`cid`),
  KEY `mid` (`mid`),
  CONSTRAINT `tb_music_category_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `tb_mcategory` (`cid`),
  CONSTRAINT `tb_music_category_ibfk_2` FOREIGN KEY (`mid`) REFERENCES `tb_music` (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_music_category
-- ----------------------------
INSERT INTO `tb_music_category` VALUES ('5', '1');
INSERT INTO `tb_music_category` VALUES ('5', '3');
INSERT INTO `tb_music_category` VALUES ('5', '4');
INSERT INTO `tb_music_category` VALUES ('5', '5');
INSERT INTO `tb_music_category` VALUES ('5', '6');
INSERT INTO `tb_music_category` VALUES ('6', '1');
INSERT INTO `tb_music_category` VALUES ('7', '3');
INSERT INTO `tb_music_category` VALUES ('8', '4');
INSERT INTO `tb_music_category` VALUES ('9', '5');
INSERT INTO `tb_music_category` VALUES ('10', '6');

-- ----------------------------
-- Table structure for `tb_music_musiclist`
-- ----------------------------
DROP TABLE IF EXISTS `tb_music_musiclist`;
CREATE TABLE `tb_music_musiclist` (
  `mlid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  KEY `mlid` (`mlid`),
  KEY `mid` (`mid`),
  CONSTRAINT `tb_music_musiclist_ibfk_1` FOREIGN KEY (`mlid`) REFERENCES `tb_musiclist` (`mlid`),
  CONSTRAINT `tb_music_musiclist_ibfk_2` FOREIGN KEY (`mid`) REFERENCES `tb_music` (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_music_musiclist
-- ----------------------------
INSERT INTO `tb_music_musiclist` VALUES ('1', '2');

-- ----------------------------
-- Table structure for `tb_province`
-- ----------------------------
DROP TABLE IF EXISTS `tb_province`;
CREATE TABLE `tb_province` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_province
-- ----------------------------
INSERT INTO `tb_province` VALUES ('1', '北京');
INSERT INTO `tb_province` VALUES ('2', '天津');
INSERT INTO `tb_province` VALUES ('3', '河北');
INSERT INTO `tb_province` VALUES ('4', '山西');
INSERT INTO `tb_province` VALUES ('5', '内蒙古');
INSERT INTO `tb_province` VALUES ('6', '辽宁');
INSERT INTO `tb_province` VALUES ('7', '吉林');
INSERT INTO `tb_province` VALUES ('8', '黑龙江');
INSERT INTO `tb_province` VALUES ('9', '上海');
INSERT INTO `tb_province` VALUES ('10', '江苏');
INSERT INTO `tb_province` VALUES ('11', '浙江');
INSERT INTO `tb_province` VALUES ('12', '安徽');
INSERT INTO `tb_province` VALUES ('13', '福建');
INSERT INTO `tb_province` VALUES ('14', '江西');
INSERT INTO `tb_province` VALUES ('15', '山东');
INSERT INTO `tb_province` VALUES ('16', '河南');
INSERT INTO `tb_province` VALUES ('17', '湖北');
INSERT INTO `tb_province` VALUES ('18', '湖南');
INSERT INTO `tb_province` VALUES ('19', '广东');
INSERT INTO `tb_province` VALUES ('20', '广西');
INSERT INTO `tb_province` VALUES ('21', '海南');
INSERT INTO `tb_province` VALUES ('22', '重庆');
INSERT INTO `tb_province` VALUES ('23', '四川');
INSERT INTO `tb_province` VALUES ('24', '贵州');
INSERT INTO `tb_province` VALUES ('25', '云南');
INSERT INTO `tb_province` VALUES ('26', '西藏');
INSERT INTO `tb_province` VALUES ('27', '陕西');
INSERT INTO `tb_province` VALUES ('28', '甘肃');
INSERT INTO `tb_province` VALUES ('29', '青海');
INSERT INTO `tb_province` VALUES ('30', '宁夏');
INSERT INTO `tb_province` VALUES ('31', '新疆');
INSERT INTO `tb_province` VALUES ('32', '香港');
INSERT INTO `tb_province` VALUES ('33', '澳门');
INSERT INTO `tb_province` VALUES ('34', '台湾');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `uid` char(32) NOT NULL,
  `uname` char(255) NOT NULL,
  `password` char(32) NOT NULL,
  `email` char(32) NOT NULL,
  `phone` char(11) DEFAULT NULL,
  `sex` tinyint(4) NOT NULL DEFAULT '1',
  `VIP` tinyint(4) NOT NULL DEFAULT '0',
  `address` varchar(100) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('0fc1df322d394a6c9853e8a31f1680c3', 'lk1234', '57c17b6d5f197beae5a14a089b8931e5', '963087276@qq.com', '15116407203', '2', '0', '1', '/images/headPhoto/user.png', '1');
INSERT INTO `tb_user` VALUES ('111111111111111111111111111', '123', '123', '123', null, '1', '0', null, '/images/headPhoto/user.png', '1');
INSERT INTO `tb_user` VALUES ('9e935bea75f64e33a4f06f8b68628e91', 'lkk123', '6881ced4290b8ddb5c858e816827de23', '1768756198@qq.com', '15116475208', '2', '0', '235', '/images/headPhoto/user.png', '1');

-- ----------------------------
-- Procedure structure for `update_artist`
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_artist`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_artist`()
BEGIN
		#定义插入的字段
    DECLARE  playsum1  INT; -- 播放数
		DECLARE  sname1 VARCHAR(255); -- 歌手名
		#歌手榜的id
		DECLARE rid INT;
		#声明游标遍历结束标志
		DECLARE done INT DEFAULT FALSE;
		#声明游标
		DECLARE cur_music CURSOR FOR SELECT sname,sum(playsum) playsum FROM tb_music WHERE `status`=1 GROUP BY sname  ORDER BY sum(playsum) DESC LIMIT 0,10;
		#将结束绑定到游标
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
		#查询出热歌榜id
		SELECT mid INTO rid FROM tb_menu WHERE mname = '歌手榜';
		#删除该模块的内容数据
		DELETE FROM tb_menu_content WHERE mid = rid;
		#查询出新的数据
		#打开游标
		OPEN cur_music;
		#遍历游标
		read_loop: LOOP
					#取值
					FETCH NEXT FROM cur_music INTO sname1 , playsum1 ;
					#判断是否结束
					IF done THEN
						LEAVE read_loop;
					END IF;
					#将数据插入到内容表
					INSERT INTO tb_menu_content(sname,playsum,mid) VALUES(sname1,playsum1,rid);
		END LOOP;
		#关闭游标
		CLOSE cur_music;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `update_content`
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_content`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_content`()
BEGIN
			CALL update_artist();
			CALL update_hotmusic();
			CALL  update_newmusic();
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `update_hotmusic`
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_hotmusic`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_hotmusic`()
BEGIN
		#定义插入的字段
		DECLARE  id1 INT;   -- id
    DECLARE  title1  varchar(255); -- 标题
    DECLARE  playsum1  INT; -- 播放数
    DECLARE  image1 varchar(255);   -- 图片
		DECLARE  sname1 VARCHAR(255); -- 歌手名
		#热歌榜的id
		DECLARE rid INT;
		#声明游标遍历结束标志
		DECLARE done INT DEFAULT FALSE;
		#声明游标
		DECLARE cur_music CURSOR FOR SELECT mid , mname , playsum , image  , sname FROM tb_music WHERE `status` = 1 ORDER BY playsum DESC LIMIT 0,10;
		#将结束绑定到游标
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
		#查询出热歌榜id
		SELECT mid INTO rid FROM tb_menu WHERE mname = '热歌榜';
		#删除该模块的内容数据
		DELETE FROM tb_menu_content WHERE mid = rid;
		#查询出新的数据
		#打开游标
		OPEN cur_music;
		#遍历游标
		read_loop: LOOP
					#取值
					FETCH NEXT FROM cur_music INTO id1 , title1 , playsum1 , image1 , sname1;
					#判断是否结束
					IF done THEN
						LEAVE read_loop;
					END IF;
					#将数据插入到内容表
					INSERT INTO tb_menu_content(id,title,image,playsum,sname,mid) VALUES(id1,title1,image1,playsum1,sname1,rid); 
		END LOOP;
		#关闭游标
		CLOSE cur_music;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `update_newmusic`
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_newmusic`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_newmusic`()
BEGIN
		#定义插入的字段
		DECLARE  id1 INT;   -- id
    DECLARE  title1  varchar(255); -- 标题
    DECLARE  playsum1  INT; -- 播放数
    DECLARE  image1 varchar(255);   -- 图片
		DECLARE  sname1 VARCHAR(255); -- 歌手名
		#热歌榜的id
		DECLARE rid INT;
		#声明游标遍历结束标志
		DECLARE done INT DEFAULT FALSE;
		#声明游标
		DECLARE cur_music CURSOR FOR SELECT mid , mname , playsum , image  , sname FROM tb_music where `status`=1 AND datediff(NOW(),uploaddate)<=7 ORDER BY playsum DESC LIMIT 0,10;
		#将结束绑定到游标
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
		#查询出热歌榜id
		SELECT mid INTO rid FROM tb_menu WHERE mname = '新歌榜';
		#删除该模块的内容数据
		DELETE FROM tb_menu_content WHERE mid = rid;
		#查询出新的数据
		#打开游标
		OPEN cur_music;
		#遍历游标
		read_loop: LOOP
					#取值
					FETCH NEXT FROM cur_music INTO id1 , title1 , playsum1 , image1 , sname1;
					#判断是否结束
					IF done THEN
						LEAVE read_loop;
					END IF;
					#将数据插入到内容表
					INSERT INTO tb_menu_content(id,title,image,playsum,sname,mid) VALUES(id1,title1,image1,playsum1,sname1,rid); 
		END LOOP;
		#关闭游标
		CLOSE cur_music;
END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `e_content`
-- ----------------------------
DROP EVENT IF EXISTS `e_content`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `e_content` ON SCHEDULE EVERY 1 DAY STARTS '2018-09-15 00:00:00' ON COMPLETION PRESERVE ENABLE DO CALL update_content()
;;
DELIMITER ;
