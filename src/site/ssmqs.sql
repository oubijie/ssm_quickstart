/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : ssmqs

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2019-07-22 00:13:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(64) NOT NULL,
  `icon_cls` varchar(64) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menuname_uni` (`menu_name`),
  KEY `parent_fk` (`parent_id`),
  CONSTRAINT `parent_fk` FOREIGN KEY (`parent_id`) REFERENCES `sys_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rolename_uni` (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_fk2` (`role_id`),
  KEY `menu_fk` (`menu_id`),
  CONSTRAINT `menu_fk` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`id`),
  CONSTRAINT `role_fk2` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(64) NOT NULL,
  `real_name` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `locked` tinyint(1) unsigned zerofill DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_uni` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_fk` (`user_id`),
  KEY `role_fk` (`role_id`),
  CONSTRAINT `role_fk` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
