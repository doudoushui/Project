/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : hs_shop

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2016-05-13 16:12:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hs_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `hs_admin_user`;
CREATE TABLE `hs_admin_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adminname` varchar(255) DEFAULT NULL,
  `pwd` char(32) NOT NULL,
  `tel` char(11) NOT NULL,
  `permission` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `adminname` (`adminname`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_admin_user
-- ----------------------------

-- ----------------------------
-- Table structure for hs_category
-- ----------------------------
DROP TABLE IF EXISTS `hs_category`;
CREATE TABLE `hs_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) NOT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '0,',
  `display` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cname` (`cname`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_category
-- ----------------------------

-- ----------------------------
-- Table structure for hs_fashion
-- ----------------------------
DROP TABLE IF EXISTS `hs_fashion`;
CREATE TABLE `hs_fashion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` int(10) unsigned NOT NULL,
  `fpic` varchar(255) DEFAULT NULL,
  `fmsg` varchar(255) DEFAULT NULL,
  `ftime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Records of hs_fashion
-- ----------------------------
DROP TABLE IF EXISTS `hs_joke`;
CREATE TABLE `hs_joke` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` int(10) unsigned NOT NULL,
  `joke_pic` varchar(255) DEFAULT NULL,
  `joke_msg` varchar(255) DEFAULT NULL,
  `joke_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Table structure for hs_goods
-- ----------------------------
DROP TABLE IF EXISTS `hs_goods`;
CREATE TABLE `hs_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gname` varchar(255) DEFAULT NULL,
  `cate_id` int(10) unsigned DEFAULT NULL,
  `price` decimal(7,2) NOT NULL DEFAULT '0.00',
  `stock` int(10) unsigned NOT NULL DEFAULT '1',
  `sale` int(10) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(4) NOT NULL DEFAULT '1',
  `is_hot` tinyint(4) NOT NULL DEFAULT '1',
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `zan` smallint(6) NOT NULL DEFAULT '1',
  `msg` varchar(600) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gname` (`gname`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_goods
-- ----------------------------

-- ----------------------------
-- Table structure for hs_goods_comment
-- ----------------------------
DROP TABLE IF EXISTS `hs_goods_comment`;
CREATE TABLE `hs_goods_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `commsg` varchar(255) DEFAULT NULL,
  `comtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_goods_comment
-- ----------------------------

-- ----------------------------
-- Table structure for hs_image
-- ----------------------------
DROP TABLE IF EXISTS `hs_image`;
CREATE TABLE `hs_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iname` varchar(255) DEFAULT NULL,
  `goods_id` int(10) unsigned NOT NULL,
  `cover` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `iname` (`iname`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_image
-- ----------------------------

-- ----------------------------
-- Table structure for hs_job
-- ----------------------------
DROP TABLE IF EXISTS `hs_job`;
CREATE TABLE `hs_job` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `personnum` int(10) unsigned DEFAULT '1',
  `work` varchar(255) DEFAULT NULL,
  `job_phone` char(11) NOT NULL,
  `job_email` varchar(255) DEFAULT NULL,
  `job_intro` varchar(255) DEFAULT NULL,
  `job_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_job
-- ----------------------------

-- ----------------------------
-- Table structure for hs_order
-- ----------------------------
DROP TABLE IF EXISTS `hs_order`;
CREATE TABLE `hs_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ordernum` varchar(255) NOT NULL,
  `oname` varchar(255) NOT NULL,
  `tel` char(11) NOT NULL,
  `allprice` decimal(7,2) NOT NULL DEFAULT '0.00',
  `ostate` tinyint(4) NOT NULL DEFAULT '0',
  `address` varchar(600) NOT NULL DEFAULT '',
  `ordertime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ordernum` (`ordernum`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_order
-- ----------------------------

-- ----------------------------
-- Table structure for hs_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `hs_order_goods`;
CREATE TABLE `hs_order_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) unsigned NOT NULL,
  `price` decimal(7,2) NOT NULL DEFAULT '0.00',
  `qty` int(10) unsigned NOT NULL DEFAULT '1',
  `iname` varchar(255) DEFAULT NULL,
  `gname` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for hs_recommend
-- ----------------------------
DROP TABLE IF EXISTS `hs_recommend`;
CREATE TABLE `hs_recommend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `r_title` int(10) unsigned NOT NULL,
  `r_pic` varchar(255) DEFAULT NULL,
  `r_msg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_recommend
-- ----------------------------

-- ----------------------------
-- Table structure for hs_resume
-- ----------------------------
DROP TABLE IF EXISTS `hs_resume`;
CREATE TABLE `hs_resume` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_name` varchar(255) DEFAULT NULL,
  `resume_sex` tinyint(4) NOT NULL DEFAULT '2',
  `resume_age` tinyint(4) NOT NULL DEFAULT '20',
  `resume_work` varchar(255) DEFAULT NULL,
  `resume_phone` char(11) NOT NULL,
  `resume_email` varchar(255) DEFAULT NULL,
  `resume_pic` varchar(255) DEFAULT NULL,
  `resume_intro` varchar(255) DEFAULT NULL,
  `resume_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resume_name` (`resume_name`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_resume
-- ----------------------------

-- ----------------------------
-- Table structure for hs_suggestion
-- ----------------------------
DROP TABLE IF EXISTS `hs_suggestion`;
CREATE TABLE `hs_suggestion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `smsg` varchar(255) DEFAULT NULL,
  `stime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_suggestion
-- ----------------------------

-- ----------------------------
-- Table structure for hs_user
-- ----------------------------
DROP TABLE IF EXISTS `hs_user`;
CREATE TABLE `hs_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `pwd` char(32) NOT NULL,
  `tel` char(11) NOT NULL,
  `sex` tinyint(4) NOT NULL DEFAULT '2',
  `email` varchar(255) NOT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_user
-- ----------------------------
