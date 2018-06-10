/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost
 Source Database       : enginepractice

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : utf-8

 Date: 06/08/2018 16:49:07 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_number` varchar(100) NOT NULL,
  `login_credent` varchar(100) NOT NULL,
  `landing_type` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `S_T_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `account`
-- ----------------------------
BEGIN;
INSERT INTO `account` VALUES ('1', 'LearnGod', '123456', '0', '1', '1'), ('2', 'baba', '123456', '0', '2', '1');
COMMIT;

-- ----------------------------
--  Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_number` varchar(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `class_time` varchar(100) NOT NULL,
  `class_location` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `course`
-- ----------------------------
BEGIN;
INSERT INTO `course` VALUES ('1', '0803', '软件工程', '1', '周三上午9:00~11:00 1~18周', '东3-405'), ('2', '0804', '神经网络', '2', '周三下午7:00~9:00 1~18周', '东3-305');
COMMIT;

-- ----------------------------
--  Table structure for `namerecord`
-- ----------------------------
DROP TABLE IF EXISTS `namerecord`;
CREATE TABLE `namerecord` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_ID` int(11) NOT NULL,
  `student_ID` int(11) NOT NULL,
  `absence` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `namerecord`
-- ----------------------------
BEGIN;
INSERT INTO `namerecord` VALUES ('1', '1', '1', '2'), ('2', '2', '1', '2');
COMMIT;

-- ----------------------------
--  Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `permission`
-- ----------------------------
BEGIN;
INSERT INTO `permission` VALUES ('1', '老师页面', 'http://localhost/studentLogin.html'), ('2', '学生页面', 'http://localhost/teacherLogin.html');
COMMIT;

-- ----------------------------
--  Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `per_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `role`
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES ('1', '学生', '1'), ('2', '老师', '2');
COMMIT;

-- ----------------------------
--  Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `school` varchar(100) NOT NULL,
  `college` varchar(100) NOT NULL,
  `profession` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `student_ID` varchar(100) NOT NULL,
  `s_class` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `sex` int(11) NOT NULL,
  `Last_land_time` date NOT NULL,
  `reg_time` date NOT NULL,
  `online` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `student`
-- ----------------------------
BEGIN;
INSERT INTO `student` VALUES ('1', '福州大学', '软件学院', '软件工程', '大学一年级', '1703270993', '专硕2班', '韩磊', '15659430596', 'http://localhost/...', '1', '1983-11-23', '1983-11-23', '0'), ('2', '福州大学', '软件学院', '软件工程', '大学一年级', '1703270990', '专硕2班', '韩小磊', '15659430596', 'http://localhost/...', '1', '1983-11-23', '1983-11-23', '0'), ('3', '福州大学', '软件学院', '软件工程', '大学一年级', '170327081', '专硕2班', '韩大磊', '15839302384', 'ss', '1', '1983-03-03', '1983-03-04', '0'), ('4', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1833-02-02', '1983-01-02', '0'), ('5', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '1932-03-03', '1933-12-03', '0');
COMMIT;

-- ----------------------------
--  Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `school` varchar(100) NOT NULL,
  `college` varchar(100) NOT NULL,
  `teacher_ID` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `sex` int(11) NOT NULL,
  `Last_land_time` date NOT NULL,
  `reg_time` date NOT NULL,
  `online` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `teacher`
-- ----------------------------
BEGIN;
INSERT INTO `teacher` VALUES ('1', '福州大学', '软件学院', '1703270993', '韩磊', '15659430596', 'http://localhost/...', '1', '1983-11-23', '1983-11-23', '0'), ('2', '福州大学', '软件学院', '1703270990', '韩小磊', '15659430596', 'http://localhost/...', '1', '1983-11-23', '1983-11-23', '0');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
