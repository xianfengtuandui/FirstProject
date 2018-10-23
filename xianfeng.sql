/*
Navicat MySQL Data Transfer

Source Server         : First
Source Server Version : 50641
Source Host           : localhost:3306
Source Database       : xianfeng

Target Server Type    : MYSQL
Target Server Version : 50641
File Encoding         : 65001

Date: 2018-10-19 16:56:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `A_ID` int(20) NOT NULL AUTO_INCREMENT,
  `A_No` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_Pw` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A_Name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`A_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', 'admin', '小金');

-- ----------------------------
-- Table structure for `t_bingli`
-- ----------------------------
DROP TABLE IF EXISTS `t_bingli`;
CREATE TABLE `t_bingli` (
  `B_ID` int(20) NOT NULL AUTO_INCREMENT,
  `C_No` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `D_No` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `B_Time` datetime DEFAULT NULL,
  `B_Result` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `B_Plan` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `B_Free` decimal(8,2) DEFAULT NULL,
  `B_Success` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `B_Reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`B_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_bingli
-- ----------------------------
INSERT INTO `t_bingli` VALUES ('1', 'a2018001', 'a001', '2018-08-01 00:00:00', '眼球发炎', '消炎眼药水', '15.50', '是', null);
INSERT INTO `t_bingli` VALUES ('2', 'a2018002', 'a002', '2018-08-01 00:00:00', '手被猫抓伤已过两小时', '狂犬病疫苗', '402.00', '是', null);
INSERT INTO `t_bingli` VALUES ('3', 'a2018003', 'a003', '2018-08-01 00:00:00', '感冒', '感冒药', '32.00', '是', null);
INSERT INTO `t_bingli` VALUES ('4', 'a2018004', 'a004', '2018-08-05 00:00:00', '头疼', '头疼药', '20.00', '是', null);
INSERT INTO `t_bingli` VALUES ('5', 'a2018001', 'a001', '2018-10-10 21:56:06', '感冒病加狂犬病', '感冒药x2，狂犬病疫苗x1', '466.00', '是', 'null');

-- ----------------------------
-- Table structure for `t_customer`
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `C_ID` int(20) NOT NULL AUTO_INCREMENT,
  `C_No` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `C_Name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `C_Age` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `C_Sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `C_Pcard` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `C_Tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `C_Both` date DEFAULT NULL,
  `C_Address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `C_RoomID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('1', 'a2018001', '小明', '20', '男', '441381199711123538', '18229000932', '1997-11-12', '中大新华', null);
INSERT INTO `t_customer` VALUES ('2', 'a2018002', '小康', '22', '男', '441381199611115696', '13669518922', '1997-11-11', '中大新华', null);
INSERT INTO `t_customer` VALUES ('3', 'a2018003', '小红', '21', '女', '441381199609026633', '15917769006', '1996-09-02', '中大新华', null);

-- ----------------------------
-- Table structure for `t_doctor`
-- ----------------------------
DROP TABLE IF EXISTS `t_doctor`;
CREATE TABLE `t_doctor` (
  `D_ID` int(20) NOT NULL AUTO_INCREMENT,
  `D_No` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `D_Name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `D_Age` int(3) DEFAULT NULL,
  `D_Sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `D_Tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `D_Pcard` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `S_Name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `D_Education` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `D_Introduce` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `D_hiredate` date DEFAULT NULL,
  PRIMARY KEY (`D_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_doctor
-- ----------------------------
INSERT INTO `t_doctor` VALUES ('1', 'a001', '小冰', '22', '女', '13250401688', '441381199709101122', '眼科', '博士', '仙女', '2018-07-31');
INSERT INTO `t_doctor` VALUES ('2', 'a002', '小东', '24', '男', '18029000325', '441381199505015451', '外科', '硕士', null, '2018-07-31');
INSERT INTO `t_doctor` VALUES ('3', 'a003', '小张', '24', '男', '18029890325', '44138119950301223X', '儿科', '本科', null, '2018-07-31');
INSERT INTO `t_doctor` VALUES ('4', 'a004', '小杨', '22', '男', '18200964181', '441381199710003833', '外科', '本科', '', '2018-09-10');

-- ----------------------------
-- Table structure for `t_login`
-- ----------------------------
DROP TABLE IF EXISTS `t_login`;
CREATE TABLE `t_login` (
  `L_ID` int(20) NOT NULL AUTO_INCREMENT,
  `L_No` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `L_Pw` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`L_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_login
-- ----------------------------
INSERT INTO `t_login` VALUES ('1', 'a001', '123');
INSERT INTO `t_login` VALUES ('2', 'a002', '123');
INSERT INTO `t_login` VALUES ('3', 'a003', '123');

-- ----------------------------
-- Table structure for `t_medicines`
-- ----------------------------
DROP TABLE IF EXISTS `t_medicines`;
CREATE TABLE `t_medicines` (
  `M_ID` int(20) NOT NULL AUTO_INCREMENT,
  `M_No` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `M_Name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `M_Type` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `M_FreeName` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `M_Guige` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `M_Stock` int(11) DEFAULT NULL,
  `M_Free` decimal(8,2) DEFAULT NULL,
  `M_Jixing` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `M_Way` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `M_Function` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`M_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_medicines
-- ----------------------------
INSERT INTO `t_medicines` VALUES ('1', 'm-001', '消炎眼药水', '西药', '西药费', '一日三次，每次两滴', '195', '15.50', '溶液剂', '外用', '眼球消炎');
INSERT INTO `t_medicines` VALUES ('2', 'm-002', '狂犬病疫苗', '西药', '西药费', '分五针打，一个半月打完', '500', '402.00', '注射液', '外用', '防范于狂犬病毒入侵');
INSERT INTO `t_medicines` VALUES ('3', 'm-003', '感冒药', '西药', '西药费', '一天三次，一次两片', '800', '32.00', '片剂', '口服', '治疗感冒');
INSERT INTO `t_medicines` VALUES ('4', 'm-004', '咳嗽药', '西药', '西药名', '一天三次', '200', '13.00', '片剂', '口服', '治疗咳嗽');
