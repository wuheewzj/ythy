/*
 Navicat Premium Data Transfer

 Source Server         : zsyl
 Source Server Type    : MySQL
 Source Server Version : 50648
 Source Host           : localhost:7611
 Source Schema         : zsyl

 Target Server Type    : MySQL
 Target Server Version : 50648
 File Encoding         : 65001

 Date: 07/09/2020 18:10:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `DoctorId` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '账号名',
  `NickName` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '医生名字',
  `Password` char(32) CHARACTER SET utf8 DEFAULT NULL,
  `CreateTime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `Token` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '用户唯一标识',
  `HospitalName` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '医院名称',
  `HospitalLevel` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '医院等级',
  `Region` int(11) NOT NULL DEFAULT '0' COMMENT '地区id',
  `RegionInfo` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '地区名称（省+市）',
  `DepartmentId` int(11) NOT NULL DEFAULT '0' COMMENT '科目ID',
  `ProfessionTitle` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '职衔',
  `Head` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '头像',
  `CertifiedSn` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '执业编号',
  `AuditStatus` tinyint(3) NOT NULL DEFAULT '1' COMMENT '-1账号锁定 0审核不通过(回收站)，1未完善 2 审核通过  3待审核',
  `Price` int(11) NOT NULL DEFAULT '0' COMMENT '问诊价格，存诸单位是分 -1 不接受特约 0免费 ',
  `IsOpenNQPush` tinyint(3) NOT NULL DEFAULT '1' COMMENT '是否开启新问题推送',
  `IsAcceptSpecial` tinyint(3) NOT NULL DEFAULT '1' COMMENT '是否接收特约提问',
  `TreatmentCount` int(11) NOT NULL DEFAULT '0' COMMENT '已接诊次数',
  `TrustValue` float(2,1) NOT NULL DEFAULT '0.0' COMMENT '信任平均值，',
  `DoctorLevel` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '0' COMMENT '医生等级 100-表示机构医生',
  `IsOneself` tinyint(3) NOT NULL DEFAULT '0' COMMENT '锁，1-不参与批量修改 0-可以被批量修改',
  `IsLogin` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否登录激活 1-登录 0-未登录',
  `ChannelId` varchar(80) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '渠道ID',
  `SecondDepartmentId` smallint(5) NOT NULL DEFAULT '0' COMMENT '二级科目ID',
  `HospitalId` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '医院id',
  `Encrypt` char(6) CHARACTER SET utf8 DEFAULT '',
  `Password2` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT ' ',
  `OrganiztionId` int(11) NOT NULL DEFAULT '0' COMMENT '机构ID 0-非机构',
  `UpdateTime` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间-登录时间',
  `OrderField` int(11) NOT NULL DEFAULT '0' COMMENT '排序字段',
  `OpenId` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ProjectId` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '1' COMMENT '医生所处项目ID －拼接',
  `Province` varchar(11) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '医生省份',
  `City` varchar(11) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '医生城市',
  `IsInfo` int(1) NOT NULL DEFAULT '0' COMMENT '信息完善状态（0：未完善；1：已完善；2：已上传认证资料）',
  `UnionId` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '微信唯一用户ID',
  `PerfectTime` int(13) NOT NULL DEFAULT '0' COMMENT '资料完善时间',
  `DistrictCode` int(10) NOT NULL DEFAULT '0' COMMENT '医生城市编码',
  `RecordLive` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '病历直播权限 0无 1有',
  `PicQuestion` tinyint(1) NOT NULL DEFAULT '0' COMMENT '图文问诊权限（0：无；1：有）',
  `PicQuestionStor` int(10) NOT NULL DEFAULT '0' COMMENT '图文问诊排序',
  `Startime` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '门诊开始时间',
  `Endtime` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '门诊结束时间',
  `QRcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '医生二维码',
  `doctor_level` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '医生等级',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Profile` text COLLATE utf8_unicode_ci COMMENT '描述',
  `Be_good_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '擅长',
  `Bank` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '银行',
  `Bank_card` int(50) NOT NULL DEFAULT '0' COMMENT '银行卡',
  `hx_identity` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT ' 环信',
  `hx_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '环信昵称',
  `idCode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`DoctorId`),
  KEY `UserName` (`UserName`),
  KEY `Password` (`Password`),
  KEY `Token` (`Token`),
  KEY `HospitalLevel` (`HospitalLevel`),
  KEY `DepartmentId` (`DepartmentId`),
  KEY `AuditStatus` (`AuditStatus`),
  KEY `IsOpenNQPush` (`IsOpenNQPush`),
  KEY `IsAcceptSpecial` (`IsAcceptSpecial`),
  KEY `DoctorLevel` (`DoctorLevel`),
  KEY `IsLogin` (`IsLogin`),
  KEY `ChannelId` (`ChannelId`),
  KEY `RegionInfo` (`RegionInfo`),
  KEY `HospitalId` (`HospitalId`),
  KEY `OrganiztionId` (`OrganiztionId`),
  KEY `OpenId` (`OpenId`) USING BTREE,
  KEY `UnionId` (`UnionId`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of doctor
-- ----------------------------
BEGIN;
INSERT INTO `doctor` VALUES (2, '13021750895', 'xiugai', '7b4c0e4931645508017f9a47d225eb0e', 1415699254, '', '首都医科大学附属北京妇产医院', '三级甲等', 1, '北京市', 3, '副主任医师额饿哦额饿哦额', '/doctorheads/2015/10/15/1ee43654aabbd3a258d656c1344e5201.jpg', '110510000009316', 2, 0, 1, 1, 543, 4.5, '5.5', 0, 1, '', 17, 8234, 'vvcm7n', '123456', 0, 1415699254, 0, '', '1', '北京市', '北京市', 2, '', 0, 110100, 0, 1, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (3, '13621115', '羊', '28e3a33d23965b1e1e72f036f6c98aee', 1486369004, '', '中国人民解放军北京军区总医院', '', 1, '北京', 1, '主任医师', '/doctorheads/2015/10/15/fb1637b8471a6a0f95b0c995ac9fc875.jpg', '110440800004255', 2, 0, 0, 0, 1515, 3.7, '5.5', 0, 1, '', 15, 27088, 't94MDg', '123456', 0, 1411888267, 6, '', '1', '', '', 2, '', 0, 0, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (4, '13366461860-1521531394', '张晓蕊', '0c1fd91c89c5ada6df1be91c4fcb9b94', 1413863274, '', '北京大学人民医院', '', 0, '110100', 132, '', '/doctorheads/2015/10/15/38ff4e235ca6234907354acac570a80b.jpg', '110110000026647', -1, 1, 1, 1, 17, 3.9, '5.5', 0, 1, '', 133, 8019, 'Bo6nxr', '123456', 0, 1519786003, 0, 'oFREIuJiPNHyqXPjPWPqfA13pamQ-1521531394', '1', '北京市', '北京市', 2, 'oQNwIuDI2NjvAfi3ArNYz4Jclf20', 0, 110100, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (5, '1336646100', '李洁', 'fb651c41a8152ef46168bd2936885d54', 1403483775, '', '北京大学人民医院', '三级甲等', 1, '北京', 3, '主治医师', '/doctorheads/2015/10/15/f80eb76b691aa5d658f90c47d55edd24.jpg', '110510000010846', 2, 0, 1, 1, 8, 5.0, '5.5', 0, 1, '', 17, 8019, 'vFEgdq', '123456', 0, 1403483775, 0, '', '1', '北京市', '北京市', 2, '', 0, 110100, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (6, '13858168189', '马俊娥', '156885efc7fe6f16c896d19f939798d1', 1415793964, '', '八一儿童医院', '三级甲等', 1, '北京', 3, '主治医师', '/doctorheads/2015/10/15/0f4c374a45ea9cbf67944f97d522574a.jpg', '110330100002143', 2, 0, 1, 1, 17, 4.4, '5.5', 0, 1, 'weixin', 17, 7918, 'ldPzEn', '123456', 0, 1415793964, 0, '', '1', '北京市', '北京市', 2, '', 0, 110100, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (8, '13331959500', 'asdfasdf阿斯', '9da2c68695b04e4b3dc3d7ccf7caf36b', 1406542955, '', '中国人民解放军北京军区总医院', '三级甲等', 1, '北京', 1, '主任医师', '/doctorheads/13331959500.png', '110310000005839', 2, 0, 0, 1, 7, 3.0, '5.5', 0, 1, '', 15, 27088, 'idywPO', '123456', 0, 1406542955, 0, '', '1', '', '', 2, '', 0, 0, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (9, '13556197080', '田艳丽', '27ed3c39e6be3e539a9dd85d4d3dda1d', 1415793944, '', '北京军区总医院', '三级甲等', 1, '北京', 1, '主治医师', '/doctorheads/2015/10/15/705687812db99319a9ad23ebdf09f957.jpg', '110440000024576', 2, 2, 1, 1, 31, 4.3, '5.5', 0, 1, '', 15, 7914, 'iJW8gW', '123456', 0, 1415793944, 0, '', '1', '北京市', '北京市', 2, '', 0, 110100, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (10, '18647974766', '王晓彦', '041eb19eddd595014d8c148d482b7940', 1415793915, '', '北京天坛医院', '三级甲等', 1, '北京', 4, '主任', '/doctorheads/18647974766.png', '110150100000608', 2, 0, 1, 1, 41, 5.0, '5.5', 0, 1, '', 0, 27090, 'MVwk63', '123456', 0, 1415793915, 0, '', '1', '北京市', '北京市', 2, '', 0, 110100, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (11, '13671328297', '黄文慧', '4e9ca739b81188a6c04448959a9b0c2a', 1415266015, '', '首都医科大学附属复兴医院 ', '三级甲等', 1, '北京市', 4, '医师', '/doctorheads/13671328297.png', '110110102000020', 2, 0, 0, 1, 24, 4.0, '5.5', 0, 1, '', 0, 8014, '9NVhq4', '123456', 0, 1415266015, 0, '', '1', '北京市', '北京市', 2, '', 0, 110100, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (12, '13601276506', '张涛', 'c41da75f4cd752a2a6f5b056e712824a', 1415354501, '', '北京协和医院', '三级甲等', 1, '北京市', 3, '医师', '/doctorheads/2014/11/28/7b1ac0ddf6f7b69bf05402782469b1b4.jpg', '110110000002133', 2, 0, 1, 1, 20, 2.3, '5.5', 0, 1, '', 0, 7917, 'yj0kvg', '123456', 0, 1415354501, 0, '', '1', '北京市', '北京市', 2, '', 0, 110100, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (13, '13804003841', '李远宏', '40cb0bc4348e3eb9d46ee3d0b7024cf0', 1403485030, '', '中国医大医院', '三级甲等', 0, '沈阳市', 1, '主任', '/doctorheads/13804003841.png', '110210000007280', 2, 0, 1, 1, 33, 0.0, '5.5', 0, 1, '', 0, 27091, 'jUnwpy', '123456', 0, 1403485030, 0, '', '1', '辽宁省', '沈阳市', 2, '', 0, 210100, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (14, '18710176857', '李建红', '1e627e671422630cd5c2eda0340b28d1', 1381057002, '', '东直门医院', '三级甲等', 1, '北京市', 1, '副主任', '/doctorheads/18710176857.png', '110110000030016', 2, 0, 1, 1, 8, 0.0, '5.5', 0, 1, '', 0, 27092, 'r4BktK', '123456', 0, 1381057002, 0, '', '1', '北京市', '北京市', 2, '', 0, 110100, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (15, '13164258209', '李海涛', '1b456f42a50a4580aee928087f16812c', 1411459897, '', '北京军区总医院 ', '三级甲等', 1, '北京市', 1, '副主任', '/doctorheads/13164258209.png', '2011128611006190', 2, 0, 1, 1, 13, 4.1, '5.5', 0, 1, '', 0, 7914, '69jCRc', '123456', 0, 1411459897, 0, '', '1', '北京市', '北京市', 2, '', 0, 110100, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (16, '15337107128', '冯爱平', 'd5b5124ffb6f2029a1a4ba0c9b4dd280', 1407313365, '', '武汉协和医院', '三级甲等', 0, '武汉市', 1, '主任', '/doctorheads/15337107128.png', '110420000001765', 2, 1, 1, 1, 10, 4.5, '5.5', 0, 1, '', 0, 11798, 'DSNBw2', '123456', 0, 1407313365, 0, '', '1', '湖北省', '武汉市', 2, '', 0, 420100, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (17, '13858039503', '潘卫利', 'd7168e7cede4f1df32829bbb9adf64e3', 1381057002, '', '浙江省人民医院', '三级甲等', 0, '杭州市', 1, '主任', '/doctorheads/13858039503.png', '110330000000250', 2, 0, 1, 1, 4, 1.0, '5.5', 0, 1, '', 0, 3649, 'kxZovd', '123456', 0, 1381057002, 0, '', '1', '浙江省', '杭州市', 2, '', 0, 330100, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (67, '15572728229', '朱云飞', '09e144e6c8d31031a742c9a4cd88b921', 1409641043, '', '三峡大学葛洲坝中心医院', '三级甲等', 0, '宜昌市', 1, '副主任', '/doctorheads/15572728229.png', '110420500001994', 2, 0, 1, 1, 5, 3.0, '5.5', 0, 1, '', 0, 27093, 'JEtDiE', '123456', 0, 1409641043, 0, '', '1', '湖北省', '宜昌市', 2, '', 0, 420500, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (68, '18665798981', '朱坤举', '9df40dcd4f4918ca377537c5a91871a0', 1381057002, '', '广东医学院附属医院', '三级甲等', 0, '湛江市', 1, '医师', '/doctorheads/18665798981.png', '110440800004690', 2, 0, 1, 1, 4, 0.0, '5.5', 0, 0, '', 0, 15961, 'jbCVyR', '123456', 0, 0, 0, '', '1', '广东省', '湛江市', 2, '', 0, 440800, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (69, '13685188239', '钟连生', '0af64b0a525c869177a358f72d971f4a', 1381057002, '', '徐州医学院附属医院', '三级甲等', 0, '徐州市', 1, '副主任', '/doctorheads/13685188239.png', '110320000014338', 2, 0, 1, 1, 6, 2.3, '5.5', 0, 1, '', 0, 3515, 'g13w6o', '123456', 0, 1381057002, 0, '', '1', '江苏省', '徐州市', 2, '', 0, 320300, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
INSERT INTO `doctor` VALUES (71, '13588706947', '叶俊', '0c1838ad6f4476f23c0dc82f0773df7d', 1411787474, '', '杭州邵逸夫医院', '三级甲等', 0, '杭州市', 1, '副主任', '/doctorheads/13588706947.png', '110330000003422', 2, 0, 1, 1, 54, 4.7, '5.5', 0, 1, '', 0, 27094, 'AGRRdi', '123456', 0, 1411787474, 0, '', '1', '浙江省', '杭州市', 2, '', 0, 330100, 0, 0, 0, '', '', '', '', '', NULL, '', '', 0, '', '', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;