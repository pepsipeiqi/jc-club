/*
Navicat MySQL Data Transfer

Source Server         : 117.72.14.166
Source Server Version : 50743
Source Host           : 117.72.14.166:3306
Source Database       : jc-club

Target Server Type    : MYSQL
Target Server Version : 50743
File Encoding         : 65001

Date: 2023-10-02 22:06:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for subject_brief
-- ----------------------------
DROP TABLE IF EXISTS `subject_brief`;
CREATE TABLE `subject_brief` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `subject_answer` text COMMENT '题目答案',
  `subject_id` int(20) DEFAULT NULL COMMENT '题目id',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简答题';

-- ----------------------------
-- Table structure for subject_category
-- ----------------------------
DROP TABLE IF EXISTS `subject_category`;
CREATE TABLE `subject_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category_name` varchar(16) DEFAULT NULL COMMENT '分类名称',
  `category_type` tinyint(2) DEFAULT NULL COMMENT '分类类型',
  `image_url` varchar(64) DEFAULT NULL COMMENT '图标连接',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父级id',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题目分类';

-- ----------------------------
-- Table structure for subject_info
-- ----------------------------
DROP TABLE IF EXISTS `subject_info`;
CREATE TABLE `subject_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `subject_name` varchar(128) DEFAULT NULL COMMENT '题目名称',
  `subject_difficult` tinyint(4) DEFAULT NULL COMMENT '题目难度',
  `settle_name` varchar(32) DEFAULT NULL COMMENT '出题人名',
  `subject_type` tinyint(4) DEFAULT NULL COMMENT '题目类型 1单选 2多选 3判断 4简答',
  `subject_score` tinyint(4) DEFAULT NULL COMMENT '题目分数',
  `subject_parse` varchar(512) DEFAULT NULL COMMENT '题目解析',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题目信息表';

-- ----------------------------
-- Table structure for subject_judge
-- ----------------------------
DROP TABLE IF EXISTS `subject_judge`;
CREATE TABLE `subject_judge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `subject_id` tinyint(20) DEFAULT NULL COMMENT '题目id',
  `is_correct` tinyint(2) DEFAULT NULL COMMENT '是否正确',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='判断题';

-- ----------------------------
-- Table structure for subject_label
-- ----------------------------
DROP TABLE IF EXISTS `subject_label`;
CREATE TABLE `subject_label` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `label_name` varchar(32) DEFAULT NULL COMMENT '标签分类',
  `category_id` tinyint(20) DEFAULT NULL COMMENT '分类id',
  `sort_num` tinyint(11) DEFAULT NULL COMMENT '排序',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题目标签表';

-- ----------------------------
-- Table structure for subject_mapping
-- ----------------------------
DROP TABLE IF EXISTS `subject_mapping`;
CREATE TABLE `subject_mapping` (
  `id` bigint(20) DEFAULT NULL COMMENT '主键',
  `subject_id` tinyint(20) DEFAULT NULL COMMENT '题目id',
  `category_id` tinyint(20) DEFAULT NULL COMMENT '分类id',
  `label_id` tinyint(20) DEFAULT NULL COMMENT '标签id',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题目分类关系表';

-- ----------------------------
-- Table structure for subject_multiple
-- ----------------------------
DROP TABLE IF EXISTS `subject_multiple`;
CREATE TABLE `subject_multiple` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `subject_id` tinyint(20) DEFAULT NULL COMMENT '题目id',
  `option_type` tinyint(4) DEFAULT NULL COMMENT '选项类型',
  `option_content` varchar(64) DEFAULT NULL COMMENT '选项内容',
  `is_correct` tinyint(2) DEFAULT NULL COMMENT '是否正确',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='多选题信息表';

-- ----------------------------
-- Table structure for subject_radio
-- ----------------------------
DROP TABLE IF EXISTS `subject_radio`;
CREATE TABLE `subject_radio` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `subject_id` tinyint(20) DEFAULT NULL COMMENT '题目id',
  `option_type` tinyint(4) DEFAULT NULL COMMENT 'a,b,c,d',
  `option_content` varchar(128) DEFAULT NULL COMMENT '选项内容',
  `is_correct` tinyint(2) DEFAULT NULL COMMENT '是否正确',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单选题信息表';
