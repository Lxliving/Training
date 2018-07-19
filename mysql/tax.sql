/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : tax

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-07-18 08:48:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `ID` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', '1234');

-- ----------------------------
-- Table structure for anslist
-- ----------------------------
DROP TABLE IF EXISTS `anslist`;
CREATE TABLE `anslist` (
  `userID` varchar(20) NOT NULL,
  `ansID` varchar(15) NOT NULL,
  `date` datetime NOT NULL,
  `goodNum` int(11) DEFAULT NULL,
  `keepNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of anslist
-- ----------------------------

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `ansID` varchar(20) NOT NULL,
  `txt` varchar(20000) NOT NULL,
  `date` datetime NOT NULL,
  `goodNum` int(11) DEFAULT NULL,
  `keepNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`ansID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cateID` int(15) NOT NULL,
  `consID` int(15) NOT NULL,
  `cateName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '1', '发票领购');
INSERT INTO `category` VALUES ('2', '1', '发票代开');
INSERT INTO `category` VALUES ('3', '1', '发票开据');

-- ----------------------------
-- Table structure for consans
-- ----------------------------
DROP TABLE IF EXISTS `consans`;
CREATE TABLE `consans` (
  `consID` varchar(20) NOT NULL,
  `ansID` varchar(20) NOT NULL,
  PRIMARY KEY (`consID`,`ansID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consans
-- ----------------------------

-- ----------------------------
-- Table structure for consult
-- ----------------------------
DROP TABLE IF EXISTS `consult`;
CREATE TABLE `consult` (
  `consID` int(20) NOT NULL,
  `consName` varchar(50) NOT NULL,
  `consDetil` varchar(1000) NOT NULL,
  `seenNum` int(11) DEFAULT NULL,
  `ansNum` int(11) DEFAULT NULL,
  `keptNum` int(11) DEFAULT NULL,
  `date` datetime(6) NOT NULL,
  `category` int(15) DEFAULT NULL,
  PRIMARY KEY (`consID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consult
-- ----------------------------

-- ----------------------------
-- Table structure for keeplist
-- ----------------------------
DROP TABLE IF EXISTS `keeplist`;
CREATE TABLE `keeplist` (
  `userID` varchar(20) NOT NULL,
  `ansID` varchar(20) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keeplist
-- ----------------------------

-- ----------------------------
-- Table structure for read
-- ----------------------------
DROP TABLE IF EXISTS `read`;
CREATE TABLE `read` (
  `readID` varchar(20) NOT NULL,
  `readName` varchar(20) NOT NULL,
  `seenNum` int(11) NOT NULL,
  `keepNum` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`readID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of read
-- ----------------------------
INSERT INTO `read` VALUES ('1', 'read1', '1', '0', '2018-07-11 10:49:34', 'This is a test ,never mind');

-- ----------------------------
-- Table structure for readlist
-- ----------------------------
DROP TABLE IF EXISTS `readlist`;
CREATE TABLE `readlist` (
  `userID` varchar(20) NOT NULL,
  `readID` varchar(20) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of readlist
-- ----------------------------

-- ----------------------------
-- Table structure for share
-- ----------------------------
DROP TABLE IF EXISTS `share`;
CREATE TABLE `share` (
  `shareID` varchar(20) NOT NULL,
  `shareName` varchar(255) NOT NULL,
  `seenNum` int(11) DEFAULT NULL,
  `keptNum` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `text` varchar(20000) DEFAULT NULL,
  PRIMARY KEY (`shareID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of share
-- ----------------------------
INSERT INTO `share` VALUES ('001', '分享车船税', '17', '2', '2017-12-17 00:00:00', '车船税的缴纳');
INSERT INTO `share` VALUES ('002', '税务分享', '2', '1', '2018-07-12 09:57:36', '税务信息分享');
INSERT INTO `share` VALUES ('003', '个人所得税', '3', '1', '2018-07-13 00:00:00', '个人所得税');

-- ----------------------------
-- Table structure for sharelist
-- ----------------------------
DROP TABLE IF EXISTS `sharelist`;
CREATE TABLE `sharelist` (
  `userID` varchar(20) NOT NULL,
  `shareID` varchar(20) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sharelist
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userID` varchar(20) NOT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `psword` varchar(15) NOT NULL,
  `unitName` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('user1', '总督察黄启发', '1234', '香港警司', '10010', '10000@qq.com');
